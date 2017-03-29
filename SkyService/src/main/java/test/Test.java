package test;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Path;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import entity.Information;
import services.Inforservice;
import utils.MySessionFactory;

@Path("/test")
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		SessionFactory factory = MySessionFactory.getSessionFactory();
		Session session = factory.getCurrentSession();
		List<Information> lst = new ArrayList<>();
		
		try {
			session.getTransaction().begin();
			
			System.out.println(session + "o test");

			Inforservice inforservice = new Inforservice();
			// lst = inforservice.searchProvince("HCM");
			 for (Information information : lst) {
				 System.out.println(information.getName());
				
			}
			 System.out.println("tim theo tinh "+ lst.get(0).getName());
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		}
		
	}

}
