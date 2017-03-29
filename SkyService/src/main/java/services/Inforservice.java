package services;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.hibernate.Query;
import org.hibernate.Session;

import entity.Information;
import entity.Partner;
import entity.RatingCount;
import entity.Room;
import entity.Service;
import soapservice.ArrayOfGROUPROOM;
import soapservice.ArrayOfHOTELSERVICE;
import soapservice.GROUPROOM;
import soapservice.HOTELSERVICE;
import soapservice.InforHotel;
import soapservice.WebService;
import soapservice.WebServiceSoap;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class Inforservice {

	public List<Information> search(String column, String value) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E." + column + " like " + "'%" + value + "%'";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Room> searchMoney(int moneyStart, int moneyEnd) {
		List<Room> lst = new ArrayList<>();
		try {
			String str = "from Room E where E.price between " + moneyStart + " and " + moneyEnd + "order by E.price";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchProvince(int partner, String province) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province like " + "'%" + province + "%'" + " and E.partner = "
					+ partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvince(int partner, String province, String distric) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'%" + province + "%'" + "and E.district = " + "'%"
					+ distric + "%'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchTypeAndProvince(int partner, String province, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'%" + province + "%'" + "and E.type = " + "'%"
					+ type + "%'" + " and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvinceAndType(int partner, String province, String distric,
			String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'%" + province + "%'" + "and E.district = " + "'%"
					+ distric + "%'" + "and E.type = " + "'%" + type + "%'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public List<Information> searchType(int partner, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.type = " + "'%" + type + "%'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> rating(String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E order by E.";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public List<Information> listAllInfor() {
		List<Information> lst = new ArrayList<>();
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			lst = session.createCriteria(Information.class).list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public String listType() {
		ArrayList<String> lst = new ArrayList<>();
		List<Information> lstInfor = new ArrayList<>();
		lstInfor = listAllInfor();
		String result = null;
		try {
			for (Information information : lstInfor) {
				lst.add(information.getType());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		removeDuplicate(lst);

		try {
			ObjectMapper mapper = new ObjectMapper();

			result = mapper.writeValueAsString(lst);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	public static ArrayList<String> removeDuplicate(ArrayList<String> arrList) {
		HashSet<String> h = new HashSet<String>(arrList);
		arrList.clear();
		arrList.addAll(h);
		return arrList;

	}

	/*
	 * @SuppressWarnings({ "rawtypes", "unused" }) public String rating1() {
	 * Map<Integer, Integer> map = new HashMap(); String result = null; //
	 * List<Rating> lst = new ArrayList<>(); try { String str =
	 * " select E.information.id  , count(E.information.id) as ratingNo from Rating E Group By E.information.id order by ratingNo DESC"
	 * ; Session session = MySessionFactory.getSessionFactory().openSession();
	 * Query query = (Query) session.createQuery(str); // map = (Map<Integer,
	 * Integer>) query.list();
	 * 
	 * try { ObjectMapper mapper = new ObjectMapper(); result =
	 * mapper.writeValueAsString(map); } catch (IOException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); }
	 * 
	 * } catch (Exception ex) { ex.printStackTrace(); } return result;
	 * 
	 * }
	 */

	@SuppressWarnings("rawtypes")
	public List<RatingCount> rating() {
		List<RatingCount> lst = new ArrayList<>();

		try {
			String str = " select E.information.id as id  , count(E.information.id) as ratingNo from Rating E Group By E.information.id order by ratingNo DESC";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);

			List<Object> result = (List<Object>) query.list();

			Iterator itr = result.iterator();
			while (itr.hasNext()) {
				Object[] obj = (Object[]) itr.next();
				// now you have one array of Object for each row
				Integer infor = Integer.parseInt(String.valueOf(obj[0])); // don't
																			// know
																			// the
																			// type
																			// of
																			// column
																			// CLIENT
																			// assuming
																			// String
				Long ratingNo = Long.parseLong(String.valueOf(obj[1])); // SERVICE
																		// assumed
																		// as
																		// int
				lst.add(new RatingCount(infor, ratingNo));

				// same way for all obj[2], obj[3], obj[4]
			}

			System.out.println("lst rating cout" + lst.get(1).getId());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public void getService() {

		WebService webService = new WebService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();

		ArrayOfHOTELSERVICE arrayOfHOTELSERVICE = serviceSoap.lstService();
		List<HOTELSERVICE> lst = new ArrayList<>();
		lst = arrayOfHOTELSERVICE.getHOTELSERVICE();
		System.out.println(lst.get(1).getNAMESERVICE());

		Session session = MySessionFactory.getSessionFactory().openSession();

		session.getTransaction().begin();

		for (HOTELSERVICE hotelservice : lst) {

			Service service = new Service();
			service.setName(hotelservice.getNAMESERVICE());
			session.saveOrUpdate(service);
			System.out.println(hotelservice.getNAMESERVICE());
			session.evict(service);
		}
		session.getTransaction().commit();
		System.out.println("them thanh cong");
	}

	public Date stringToDate(String str) throws ParseException {

		SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
		Date date = formatter.parse(str);
		return date;
	}

	public void getPartnerService() throws ParseException {

		WebService webService = new WebService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();
		ArrayOfGROUPROOM arrayOfGROUPROOM = serviceSoap.getListRoom();
		List<GROUPROOM> lst = new ArrayList<>();
		lst = arrayOfGROUPROOM.getGROUPROOM();
		// System.out.println(lst.get(1).getNAMESERVICE());
		Information information = new Information();
		InforHotel hotel = serviceSoap.myName();
		information.setHotline(hotel.getHotline());
		information.setName(hotel.getName());

		information.setTimeopen(stringToDate(hotel.getTimeopen()));
		information.setTimeclose(stringToDate(hotel.getTimeclose()));
		information.setType(hotel.getType());
		information.setIntro(hotel.getIntro());
		information.setNumber(hotel.getNumber());
		information.setWard(hotel.getWard());
		information.setStreet(hotel.getStret());
		information.setDistrict(hotel.getDistrict());
		information.setProvince(hotel.getProvince());
		information.setUrlpartner(hotel.getUrlpartner());
		Partner partne = new Partner();
		partne.setId(1);
		information.setPartner(partne);

		Session session = MySessionFactory.getSessionFactory().openSession();

		session.getTransaction().begin();
		session.saveOrUpdate(information);
		session.getTransaction().commit();

		for (GROUPROOM grouproom : lst) {
			Room room = new Room();
			room.setType(grouproom.getTYPEROOM());
			room.setPrice(grouproom.getPRICE());
			room.setQuanlity(grouproom.getQUANTITY());
			room.setImage(grouproom.getIMAGE());
			room.setInformation(information);
			room.setMaxpeople(5);
			room.setDetail(" ");
			session.saveOrUpdate(room);
		}
		

	}

	public List<Information> lstInfor(int partner) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

}
