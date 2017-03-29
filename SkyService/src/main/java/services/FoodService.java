package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Food;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class FoodService {

	public List<Food> searchFood(int inforID) {
		List<Food> lst = new ArrayList<>();
		try {
			String str = "from Food E where E.information = " + inforID;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}
}
