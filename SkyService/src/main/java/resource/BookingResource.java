package resource;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.json.JSONObject;

import entity.BookingService;
import services.RoomService;

@Path("/bookroom")
@Produces(MediaType.APPLICATION_JSON)
@Consumes("application/json")
public class BookingResource {

	private RoomService roomService = new RoomService();
	public String formatDay(String day) {
		
		String[] parts = day.split("-");
		String part1 = parts[0];
		String part2 = parts[1];
		String part3 = parts[2];
		return part2+part1+part3;
	}

	@POST
	@Path("{idinfor}")
	public String bookRoom(BookingService booking, @PathParam("idinfor") String idInfor)
			throws ParseException, DatatypeConfigurationException {

		System.out.println(idInfor + " infor");

		roomService.saveBookRoom(booking.getUsers(), formatDay(booking.getDatein()), (booking.getDateout()), booking.getRoom(),
				booking.getQuanlity(), booking.getDetail());

		int id = Integer.parseInt(idInfor);
		JSONObject object = new JSONObject();
		if (id == 97) {
			Boolean bl = roomService.bookRoomService(booking.getUsers(), booking.getRoom(),
					stringToXMLGregorianCalendar(booking.getDatein()),
					stringToXMLGregorianCalendar(booking.getDateout()), booking.getQuanlity());

			object.put("result", String.valueOf(bl));
		} else
			object.put("result", true);
		return object.toString();
	}

	@SuppressWarnings({ "static-access", "deprecation" })
	public XMLGregorianCalendar stringToXMLGregorianCalendar(String str)
			throws ParseException, DatatypeConfigurationException {
		Date dob = null;
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		df.setTimeZone(TimeZone.getTimeZone("UTC+7:00"));
		dob = df.parse(str);
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(dob);
		XMLGregorianCalendar xmlDate2 = DatatypeFactory.newInstance()
				.newXMLGregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH) + 1,
						cal.get(Calendar.DAY_OF_MONTH), dob.getHours(), dob.getMinutes(), dob.getSeconds(),
						DatatypeConstants.FIELD_UNDEFINED, cal.getTimeZone().LONG)
				.normalize();
		System.out.println("ngay " + xmlDate2);
		return xmlDate2;
	}

}
