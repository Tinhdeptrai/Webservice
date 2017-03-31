package resource;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.ws.rs.GET;
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

import entity.Room;
import services.RoomService;

@Path("/")
@Produces(MediaType.APPLICATION_JSON)
public class RoomResource {

	private RoomService roomService = new RoomService();

	@GET
	public List<Room> getRoom(@PathParam("InforID") int inforID) {
		return roomService.searchRoom(inforID);
	}

	@GET
	@Path("bookroom")
	public String bookRoom(@QueryParam("email") String mail, @QueryParam("loaiphong") int loaiPhong,
			@QueryParam("checkin") String dtCheckIn, @QueryParam("checkout") String dtCheckOut,
			@QueryParam("phone") String sdt, @QueryParam("idcard") String iDcard, @QueryParam("name") String name)
			throws ParseException, DatatypeConfigurationException {
		Boolean bl = roomService.bookRoom(mail, loaiPhong, stringToXMLGregorianCalendar(dtCheckIn),
				stringToXMLGregorianCalendar(dtCheckOut), name, sdt, iDcard);
		
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

	@SuppressWarnings({ "static-access", "deprecation" })
	public XMLGregorianCalendar stringToXMLGregorianCalendar(String str)
			throws ParseException, DatatypeConfigurationException {
		Date dob = null;
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		dob = df.parse(str);
		GregorianCalendar cal = new GregorianCalendar();

		cal.setTime(dob);
		XMLGregorianCalendar xmlDate2 = DatatypeFactory.newInstance()
				.newXMLGregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH) + 1,
						cal.get(Calendar.DAY_OF_MONTH), dob.getHours(), dob.getMinutes(), dob.getSeconds(),
						DatatypeConstants.FIELD_UNDEFINED, cal.getTimeZone().LONG)
				.normalize();
System.out.println(xmlDate2);
		return xmlDate2;
	}

}
