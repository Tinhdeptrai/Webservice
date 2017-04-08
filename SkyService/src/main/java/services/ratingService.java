package services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.DetailInfor;
import entity.Information;
import entity.Rating;
import utils.MySessionFactory;

public class ratingService {

	@SuppressWarnings("unchecked")
	public int checkRating(int idInfro, int idUser) {
		List<Rating> lst = new ArrayList<>();
		Session session = MySessionFactory.getSessionFactory().openSession();
		String str = "from Rating E where E.users =" + idUser;
		lst = session.createQuery(str).list();
		for (Rating rating : lst) {
			if (lst != null && rating.getInformation().getId() == idInfro)
				return 1;
		}
		return 0;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<DetailInfor> detailInfor(int partner, int id, int idUser) {
		int status = -1;
		if (idUser != 0) {
			status = checkRating(id, idUser);
		}

		List<DetailInfor> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and e.id = " + id;
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);

			List<Object> result = query.list();

			result = query.list();
			Iterator itr = result.iterator();
			while (itr.hasNext()) {
				Object[] obj = (Object[]) itr.next();
				Information infor = (Information) obj[0];
				Long rating = 0L;
				Long price = 0L;
				try {
					rating = (Long) obj[1];
					price = Long.parseLong(String.valueOf(obj[2]));

				} catch (Exception e) {
				}
				list.add(new DetailInfor(infor, rating, price, status));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "");
		}

		return list;
	}

}
