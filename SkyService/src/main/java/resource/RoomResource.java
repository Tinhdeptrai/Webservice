package resource;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.json.JSONObject;

import entity.BookingService;
import entity.Room;
import services.RoomService;
import soapservice.InforReRoom;

@Path("/room")
@Produces(MediaType.APPLICATION_JSON)
@Consumes("application/json")
public class RoomResource {

	private RoomService roomService = new RoomService();

	@GET
	public List<Room> getRoom(@PathParam("InforID") int inforID) {
		return roomService.searchRoom(inforID);
	}

	@SuppressWarnings({ "static-access", "deprecation" })
	public XMLGregorianCalendar stringToXMLGregorianCalendar(String str)
			throws ParseException, DatatypeConfigurationException {
		Date dob = null;
		DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
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

	@Path("/checkroom")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Room> findDistricAndProvinceAndType(@QueryParam("datein") String dateIn,
			@QueryParam("dateout") String dateOut, @QueryParam("idinfor") String idInfor)
			throws ParseException, DatatypeConfigurationException {
		RoomService roomService = new RoomService();
		List<InforReRoom> list = roomService.checkRoom(stringToXMLGregorianCalendar(dateIn),
				stringToXMLGregorianCalendar(dateOut));

		int id = Integer.parseInt(idInfor);
		List<Room> lst = roomService.searchRoom(id);
		if (id == 97) {
			for (Room room : lst) {
				for (InforReRoom inforReRoom : list) {
					if (room.getType().equals(inforReRoom.getTyperoom())) {
						room.setQuanlity(inforReRoom.getQty());
					}
				}

			}
		}

		return lst;
	}

	public String formatDay(String day) {

		String[] parts = day.split("-");
		String part1 = parts[0];
		String part2 = parts[1];
		String part3 = parts[2];
		return part2 + part1 + part3;
	}

	@POST
	@Path("bookroom")
	public String bookRoom(BookingService booking, @PathParam("InforID") String idInfor)
			throws ParseException, DatatypeConfigurationException {

		System.out.println(idInfor + " infor");

		roomService.saveBookRoom(booking.getUsers(), formatDay(booking.getDatein()), (booking.getDateout()),
				booking.getRoom(), booking.getQuanlity(), booking.getDetail());

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

}
