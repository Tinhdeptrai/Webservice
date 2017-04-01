package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Users;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class LoginService {

	public Users login(String email, String password) {

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
		if (lst != null)
			if (lst.get(0).getPassword().equals(password))
				return lst.get(0);
			else
				return null;
		else
			return null;

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

}
