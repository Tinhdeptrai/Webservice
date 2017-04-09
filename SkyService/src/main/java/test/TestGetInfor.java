package test;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.hibernate.Session;

import entity.Users;
import utils.MySessionFactory;
 
@Path("/hello")
public class TestGetInfor {
 
@SuppressWarnings("unchecked")
@Path("/lstInfor")
@GET
@Produces(MediaType.APPLICATION_JSON)
public List<Users> getAll(){
	List<Users> lst = new ArrayList<>();

	try {
		Session sess = MySessionFactory.getSessionFactory().openSession();
	
		System.out.println("bat dau lay danh sach !");
		lst = sess.createCriteria(Users.class).list();
		System.out.println(" danh sach ne " + lst.get(0).getEmail());
	} catch (Exception ex) {
		ex.printStackTrace();
		System.out.println("vao loi nha !");
	}
	return lst;
	
}
}