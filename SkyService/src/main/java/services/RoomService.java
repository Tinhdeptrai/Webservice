package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Room;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class RoomService {

	public List<Room> searchRoom(int inforID) {
		List<Room> lst = new ArrayList<>();
		try {
			String str = "from Room E where E.information = " + inforID;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}
}
