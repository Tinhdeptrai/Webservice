package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Booking;
import entity.Users;
import utils.EncryptPassword;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class LoginService {

	public Users login(String email, String password) {
		// System.out.println(password);
		List<Users> lst = new ArrayList<>();
		try {
			String str = "from Users E where E.email = " + "'" + email + "'";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
		try {
			if (lst != null) {
				//String passwordEncry = EncryptPassword.encryptMD5(password);
				if (lst.get(0).getPassword().equals(password)) {
					for (Booking booking : lst.get(0).getBookings()) {
						booking.getRoom().setName(booking.getRoom().getInformation().getName());
						booking.getRoom().setHotline(booking.getRoom().getInformation().getHotline());
						booking.getRoom().setNumber(booking.getRoom().getInformation().getNumber());
						booking.getRoom().setWard(booking.getRoom().getInformation().getWard());
						booking.getRoom().setStreet(booking.getRoom().getInformation().getStreet());
						booking.getRoom().setDistrict(booking.getRoom().getInformation().getDistrict());
						booking.getRoom().setProvince(booking.getRoom().getInformation().getProvince());
					}
					return lst.get(0);
				} else
					return null;
			} else
				return null;
		} catch (Exception e) {
			return null;
		}

	}

	public Boolean checkEmail(String email) {
		List<Users> lst = null;

		Session session = null;
		try {
			String str = "from Users E where E.email = :email";
			session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("email", email);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		if (lst.size() == 0)
			return true;
		else {
			return false;
		}

	}

	public Boolean addUser(Users users) {
		Session session = null;
		try {
			Users user = new Users();
			user.setEmail(users.getEmail());
			user.setFullname(users.getFullname());
			//String passwordEncry = EncryptPassword.encryptMD5(users.getPassword());
			user.setPassword(users.getPassword());
			user.setPhone(users.getPhone());
			user.setPoint(users.getPoint());
			session = MySessionFactory.getSessionFactory().openSession();
			session.getTransaction().begin();
			session.save(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception ex) {
			session.getTransaction().rollback();
			return false;
		}
	}

	public List<Users> getListUser() {

		List<Users> lstUser = new ArrayList<>();

		String str = "from Users";
		Session session = MySessionFactory.getSessionFactory().openSession();
		Query query = session.createQuery(str);
		lstUser = query.list();
		return lstUser;
	}

	public Boolean updataUser(Users user) {

		Session session = MySessionFactory.getSessionFactory().openSession();
		try {
			session.beginTransaction().begin();
			session.saveOrUpdate(user);
			session.beginTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.beginTransaction().rollback();
			return false;
		}

	}

}
