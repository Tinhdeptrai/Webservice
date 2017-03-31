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


import entity.Image;
import entity.ImageId;
import entity.Information;
import entity.InformationRating;
import entity.Partner;
import entity.Room;
import entity.Service;
import entity.Serviceinfor;
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

	
	/*public List<Information> searchAll(String keyword) {
		Session session = (Session) MySessionFactory.getSessionFactory();

		FullTextSession fullTextSession = Search.getFullTextSession(session);

		QueryBuilder qb = fullTextSession.getSearchFactory()
					.buildQueryBuilder().forEntity(Information.class).get();
		org.apache.lucene.search.Query query = qb
					.keyword().onFields("name", "district", "type","province") // Chỉ định tìm theo cột nào
					.matching(keyword)
					.createQuery();

		org.hibernate.Query hibQuery =
					fullTextSession.createFullTextQuery(query, Information.class);

		List<Information> results = hibQuery.list();
		return results;
	}*/
	
	
	

	
	
	
	public List<Information> search(String column, String value) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E." + column + " like :value";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("value","%"+value+"%");
			//System.out.println("abc");
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
			String str = "from Information E where E.province like :province" + " and E.partner = "
					+ partner;
			
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("province","%"+province+"%");
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvince(int partner, String province, String distric) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province like :province" + " and (E.district like :distric)" + " and E.partner like " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("province","%"+province+"%");
			query.setParameter("distric","%"+distric+"%");
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchTypeAndProvince(int partner, String province, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province like :province" + " and (E.type like :type)"  + " and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("province","%"+province+"%");
			query.setParameter("type","%"+type+"%");
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvinceAndType(int partner, String province, String district,
			String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province like :province" + " and ((E.district like :district)" + " and (E.type like :type))"  + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("province","%"+province+"%");
			query.setParameter("district","%"+district+"%"); 
			query.setParameter("type","%"+type+"%"); 
			lst = query.list(); 
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public List<Information> searchType(int partner, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.type like :type" + " and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			query.setParameter("type","%"+type+"%");
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	/*
	 * public List<Information> rating(String type) { List<Information> lst =
	 * new ArrayList<>(); try { String str = "from Information E order by E.";
	 * Session session = MySessionFactory.getSessionFactory().openSession();
	 * Query query = (Query) session.createQuery(str); lst = query.list(); }
	 * catch (Exception ex) { ex.printStackTrace(); } return lst;
	 * 
	 * }
	 */

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
/*
	@SuppressWarnings("rawtypes")
	public List<RatingCount> rating() {
		List<RatingCount> lst = new ArrayList<>();

		try {
			String str = " select E.information.id as id  , count(E.information.id) as ratingNo from Rating E Group By E.information.id order by ratingNo DESC";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = session.createQuery(str);

			List<Object> result = (List<Object>) query.list();

			Iterator itr = result.iterator();
			while (itr.hasNext()) {
				Object[] obj = (Object[]) itr.next();
				// now you have one array of Object for each row
				int infor = Integer.parseInt(String.valueOf(obj[0]));
				Long ratingNo = Long.parseLong(String.valueOf(obj[1]));

				List<Information> lstPartner = new ArrayList<>();
				lstPartner = session.createQuery("from Information E where E.id = " + infor).list();

				System.out.println(infor);
				query = session.createQuery("select MIN(E.price) from Room E where E.information.id = 15");
				System.out.println(infor);
				// int price = query.();

				// lst.add(new RatingCount(infor, ratingNo, lstPartner.get(0),
				// price));

			}

			// System.out.println("lst rating cout" + lst.get(1).getId());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}*/

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

		Session session = MySessionFactory.getSessionFactory().openSession();
		WebService webService = new WebService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();
		ArrayOfGROUPROOM arrayOfGROUPROOM = serviceSoap.getListRoom();
		List<GROUPROOM> lst = new ArrayList<>();
		lst = arrayOfGROUPROOM.getGROUPROOM();

		Information information = new Information();
		InforHotel hotel = serviceSoap.myName();
		// information.setHotline(hotel.getHotline());
		information.setHotline("01654116641");
		System.out.println("sdt " + hotel.getHotline());
		information.setName(hotel.getName());

		//information.setTimeopen(stringToDate(hotel.getTimeopen()));
		System.out.println(stringToDate(hotel.getTimeclose()));
		//information.setTimeclose(stringToDate(hotel.getTimeclose()));
		information.setType(hotel.getType());
		information.setIntro(hotel.getIntro());
		information.setNumber(hotel.getNumber());
		information.setWard(hotel.getWard());
		information.setStreet(hotel.getStret());
		information.setDistrict(hotel.getDistrict());
		information.setProvince(hotel.getProvince());
		information.setUrlpartner(hotel.getUrlpartner());

		List<Partner> lstPartner = new ArrayList<>();
		lstPartner = session.createQuery("from Partner").list();
		information.setPartner(lstPartner.get(0));
		lstPartner.get(0).getInformations().add(information);

		// String str = "insert into NHAHANGKHACHSAN.dbo.INFORMATION (district,
		// hotline, intro, name, number, partner, province, street, timeclose,
		// timeopen, type, urlpartner, ward) values (?, ?, ?, ?, ?, ?, ?, ?, ?,
		// ?, ?, ?, ?)";

		session.getTransaction().begin();
		session.saveOrUpdate(information);

		Image images = new Image();
		ImageId idImage = new ImageId();
		images.setInformation(information);
		idImage.setImageurl("/image/70132d2ff0fda841abb5f0dde83efe5f.jpg");
		idImage.setInfor(information.getId());
		images.setId(idImage);
		information.getImages().add(images);

		// information.setImages(images);

		for (GROUPROOM grouproom : lst) {
			Room room = new Room();
			room.setType(grouproom.getTYPEROOM());
			room.setPrice(grouproom.getPRICE());
			room.setQuanlity(grouproom.getQUANTITY());
			// room.setImage(grouproom.getIMAGE()+);
			room.setImage("/image/70132d2ff0fda841abb5f0dde83efe5f.jpg");

			room.setInformation(information);
			information.getRooms().add(room);

			room.setMaxpeople(5);
			room.setDetail(" ");
			session.saveOrUpdate(room);
		}
		session.getTransaction().commit();
	}

	@SuppressWarnings("rawtypes")
	public List<InformationRating> lstInfor1(int partner) {
		List<InformationRating> lst = new ArrayList<>();
		String temp ="";
		if(partner == 1){
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		}else{
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating,"
					+ temp+"as price "
					+ "from Information e where e.partner = " + partner +"ORDER BY rating DESC";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
	//			query.setFirstResult(0);
	//			query.setMaxResults(10);
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
					// TODO: handle exception
				}
				lst.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "ddddddddddddddddddddddddddddddddddddddddd");
		}
		return lst;
	}
	
	public List<Serviceinfor> getListInforRoom(int id){
		List<Serviceinfor> listService = null;
		try {
			String str = "from Serviceinfor s where s.information.id = " + id;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = session.createQuery(str);
			listService = query.list();
			//System.out.println(listService.size());
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return listService;
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
