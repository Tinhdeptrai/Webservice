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
		}
		if (lst != null)
			if (lst.get(0).getPassword().equals(password))
				return lst.get(0);
			else
				return null;
		else
			return null;

	}

}
