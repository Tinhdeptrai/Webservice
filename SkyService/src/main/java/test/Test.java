package test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.ws.rs.Path;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.json.JSONArray;
import org.json.JSONException;

import soapservice.WebService;
import soapservice.WebServiceSoap;

@Path("/test")
public class Test {

	static ArrayList<String> jsonStringToArray(String jsonString) throws JSONException {

		ArrayList<String> stringArray = new ArrayList<String>();

		JSONArray jsonArray = new JSONArray(jsonString);

		for (int i = 0; i < jsonArray.length(); i++) {
			stringArray.add(jsonArray.getString(i));
		}

		return stringArray;
	}

	/*private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}*/
	@SuppressWarnings({ "static-access", "deprecation" })
	public static XMLGregorianCalendar stringToXMLGregorianCalendar(String str)
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
		System.out.println(xmlDate2);
		return xmlDate2;
	}


	public static void main(String[] args) throws ParseException, DatatypeConfigurationException {
		// TODO Auto-generated method stub
		/*
		 * 
		 * SessionFactory factory = MySessionFactory.getSessionFactory();
		 * Session session = factory.getCurrentSession(); List<Information> lst
		 * = new ArrayList<>();
		 * 
		 * try { session.getTransaction().begin();
		 * 
		 * System.out.println(session + "o test");
		 * 
		 * Inforservice inforservice = new Inforservice(); // lst =
		 * inforservice.searchProvince("HCM"); for (Information information :
		 * lst) { System.out.println(information.getName());
		 * 
		 * } System.out.println("tim theo tinh "+ lst.get(0).getName());
		 * 
		 * session.getTransaction().commit(); } catch (Exception e) {
		 * session.getTransaction().rollback(); }
		 * 
		 * 
		 * Inforservice inforservice = new Inforservice(); // lst =
		 * inforservice.lstInfor(1);
		 * 
		 * // // System.out.println(" danh sach ne " + lst.get(0).getName()); //
		 * try { // inforservice.getPartnerService(); // System.out.println(
		 * "thanh cong"); // } catch (ParseException e) { // // TODO
		 * Auto-generated catch block // e.printStackTrace(); // }
		 */
		/*
		 * InputStream is = null; try { is = new
		 * URL("http://localhost:8080/SkyService/rest/infor/type").openStream();
		 * } catch (IOException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } try { BufferedReader rd = new
		 * BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
		 * String jsonText = readAll(rd); List<String> lst = new ArrayList<>();
		 * 
		 * lst = jsonStringToArray(jsonText); for (String string : lst) {
		 * System.out.println("123456" + string); }
		 * 
		 * } catch (Exception ex) { }
		 */

		/*
		 * Users user = new Users(); user.setEmail("nguyenvantinh@gmail.com");
		 * user.setFullname("nguyen van tinh"); user.setPassword("123");
		 * user.setPhone("01654116641"); user.setPoint(1); LoginService
		 * loginService = new LoginService(); loginService.addUser(user);
		 */
		WebService webService = new WebService();
		// RoomService roomService = new RoomService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();

		//Boolean res = serviceSoap.setInforCustomer("Nguyen Van Tinh", "Nguyentinh123@gmail.com", "0123456", "0122321000");
		
		Boolean result = serviceSoap.setBookRoom("Nguyentinh@gmail.com", "Phòng Đơn", stringToXMLGregorianCalendar("04-05-2017"),stringToXMLGregorianCalendar("05-05-2017"),1);
		
		System.out.println("thanh cong "+ result);
		/*
		 * Boolean bl = roomService.bookRoomService(booking.getUsers(),
		 * booking.getDetail(),
		 * stringToXMLGregorianCalendar(booking.getDatein()),
		 * stringToXMLGregorianCalendar(booking.getDateout()));
		 */

	}
	

}
