package test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Path;

import org.json.JSONArray;
import org.json.JSONException;

import entity.Users;
import services.LoginService;

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

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static void main(String[] args) {
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
		
		Users user = new Users();
		user.setEmail("nguyenvantinh@gmail.com");
		user.setFullname("nguyen van tinh");
		user.setPassword("123");
		user.setPhone("01654116641");
		user.setPoint(1);
		LoginService loginService = new LoginService();
		loginService.addUser(user);
		
		
	}

}
