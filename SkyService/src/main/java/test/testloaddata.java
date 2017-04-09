package test;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.Inforservice;

/**
 * Servlet implementation class testloaddata
 */
@WebServlet("/testloaddata")
public class testloaddata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public testloaddata() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//List<Information> lst = new ArrayList<>();
		Inforservice inforservice = new Inforservice();
		//lst =	inforservice.lstInfor(1);
		
		//System.out.println(" danh sach ne " + lst.get(0).getName());
		try {
			inforservice.getPartnerService();
			System.out.println("thanh cong");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//response.getWriter().write(inforservice.rating().size());
		//System.out.println(" danh sach ne " + inforservice.rating().get(1).getId());
//		try {
//			
//			
////			System.out.println(" danh sach ne " + inforservice.rating().size());
//		} catch (Exception ex) {
//			ex.printStackTrace();
//			System.out.println("vao loi nha !");
//		}
		//inforservice.getService();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
