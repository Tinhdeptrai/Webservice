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

	/*
	 * public List<Information> searchAll(String keyword) { Session session =
	 * (Session) MySessionFactory.getSessionFactory();
	 * 
	 * FullTextSession fullTextSession = Search.getFullTextSession(session);
	 * 
	 * QueryBuilder qb = fullTextSession.getSearchFactory()
	 * .buildQueryBuilder().forEntity(Information.class).get();
	 * org.apache.lucene.search.Query query = qb .keyword().onFields("name",
	 * "district", "type","province") // Chỉ định tìm theo cột nào
	 * .matching(keyword) .createQuery();
	 * 
	 * org.hibernate.Query hibQuery = fullTextSession.createFullTextQuery(query,
	 * Information.class);
	 * 
	 * List<Information> results = hibQuery.list(); return results; }
	 */

	/*
	 * public List<InformationRating> search(String column, String value, int
	 * partner) { List<InformationRating> lst = new ArrayList<>(); try { String
	 * str = "from Information E where E." + column + " like :value" +
	 * " and E.partner = " + partner; Session session =
	 * MySessionFactory.getSessionFactory().openSession(); Query query = (Query)
	 * session.createQuery(str); query.setParameter("value", "%" + value + "%");
	 * // System.out.println("abc"); lst = query.list(); } catch (Exception ex)
	 * { ex.printStackTrace(); } return lst; }
	 */
	/*
	 * public List<Room> searchMoney(int moneyStart, int moneyEnd) { List<Room>
	 * lst = new ArrayList<>(); try { String str =
	 * "from Room E where E.price between " + moneyStart + " and " + moneyEnd +
	 * "order by E.price";
	 * 
	 * Session session = MySessionFactory.getSessionFactory().openSession();
	 * Query query = (Query) session.createQuery(str); lst = query.list(); }
	 * catch (Exception ex) { ex.printStackTrace(); } return lst; }
	 */
	
	
	/*@SuppressWarnings("rawtypes")
	public List<InformationRating> searchMoney(int partner ,int moneyStart, int moneyEnd) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and ( price " + moneyStart + " and " + moneyEnd+ ")" ;
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			//query.setParameter("name", "%" + name + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "");
		}

		return list;
	}
	*/
	
	
	

	/*
	 * public List<Information> searchProvince(int partner, String province) {
	 * List<Information> lst = new ArrayList<>(); try { String str =
	 * "from Information E where E.province like :province" +
	 * " and E.partner = " + partner;
	 * 
	 * Session session = MySessionFactory.getSessionFactory().openSession();
	 * Query query = (Query) session.createQuery(str);
	 * query.setParameter("province","%"+province+"%"); lst = query.list(); }
	 * catch (Exception ex) { ex.printStackTrace(); } return lst; }
	 */

	/*
	 * public List<Information> searchDistrictAndProvince(int partner, String
	 * province, String distric) { List<Information> lst = new ArrayList<>();
	 * try { String str = "from Information E where E.province like :province" +
	 * " and (E.district like :distric)" + " and E.partner like " + partner;
	 * Session session = MySessionFactory.getSessionFactory().openSession();
	 * Query query = (Query) session.createQuery(str);
	 * query.setParameter("province","%"+province+"%");
	 * query.setParameter("distric","%"+distric+"%"); lst = query.list(); }
	 * catch (Exception ex) { ex.printStackTrace(); } return lst; }
	 */

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchDistrictAndProvince(int partner, String province, String distric) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and e.province like :province"
					+ " and (e.district like :distric)";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("province", "%" + province + "%");
			query.setParameter("distric", "%" + distric + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "a");
		}

		return list;
	}

	/*
	 * public List<Information> searchTypeAndProvince(int partner, String
	 * province, String type) { List<Information> lst = new ArrayList<>(); try {
	 * String str = "from Information E where E.province like :province" +
	 * " and (E.type like :type)" + " and E.partner = " + partner; Session
	 * session = MySessionFactory.getSessionFactory().openSession(); Query query
	 * = (Query) session.createQuery(str); query.setParameter("province", "%" +
	 * province + "%"); query.setParameter("type", "%" + type + "%"); lst =
	 * query.list(); } catch (Exception ex) { ex.printStackTrace(); } return
	 * lst; }
	 */

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchTypeAndProvince(int partner, String province, String type) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner
					+ " and (e.province like :province) and (e.type like :type)";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("province", "%" + province + "%");
			query.setParameter("type", "%" + type + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "a");
		}

		return list;
	}

	/*
	 * public List<Information> searchDistrictAndProvinceAndType(int partner,
	 * String province, String district, String type) { List<Information> lst =
	 * new ArrayList<>(); try { String str =
	 * "from Information E where E.province like :province" +
	 * " and ((E.district like :district)" + " and (E.type like :type))" +
	 * "and E.partner = " + partner; Session session =
	 * MySessionFactory.getSessionFactory().openSession(); Query query = (Query)
	 * session.createQuery(str); query.setParameter("province", "%" + province +
	 * "%"); query.setParameter("district", "%" + district + "%");
	 * query.setParameter("type", "%" + type + "%"); lst = query.list(); } catch
	 * (Exception ex) { ex.printStackTrace(); } return lst;
	 * 
	 * }
	 */

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchDistrictAndProvinceAndType(int partner, String province, String district,
			String type) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner
					+ " and (e.province like :province) and (e.type like :type) and (e.district like :district)";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("province", "%" + province + "%");
			query.setParameter("district", "%" + district + "%");
			query.setParameter("type", "%" + type + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "a");
		}

		return list;
	}

	/*
	 * public List<Information> searchType(int partner, String type) {
	 * List<Information> lst = new ArrayList<>(); try { String str =
	 * "from Information E where E.type like :type" + " and E.partner = " +
	 * partner; Session session =
	 * MySessionFactory.getSessionFactory().openSession(); Query query = (Query)
	 * session.createQuery(str); query.setParameter("type", "%" + type + "%");
	 * lst = query.list(); } catch (Exception ex) { ex.printStackTrace(); }
	 * return lst; }
	 */

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchType(int partner, String type) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and e.type like :type";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("type", "%" + type + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "");
		}

		return list;
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

		// information.setTimeopen(stringToDate(hotel.getTimeopen()));
		System.out.println(stringToDate(hotel.getTimeclose()));
		// information.setTimeclose(stringToDate(hotel.getTimeclose()));
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
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + "ORDER BY rating DESC";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
			System.out.println(ex + "a");
		}
		return lst;
	}

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchProvinces(int partner, String name) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and e.province like :name";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("name", "%" + name + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "");
		}

		return list;
	}

	@SuppressWarnings("rawtypes")
	public List<InformationRating> searchName(int partner, String name) {
		List<InformationRating> list = new ArrayList<>();
		String temp = "";
		if (partner == 1) {
			temp = "(select MIN(room.price) from Room room where room.information.id = e.id)";
		} else {
			temp = "(select MIN(room.price) from Food  room where room.information.id = e.id)";
		}
		try {
			String str = "select e,(select COUNT(*) from Rating r where r.information.id = e.id)as rating," + temp
					+ "as price " + "from Information e where e.partner = " + partner + " and e.name like :name";
			// String str = "select COUNT(*) from Rating r where
			// r.information.id = 5";
			Session session = MySessionFactory.getSessionFactory().openSession();

			Query query = (Query) session.createQuery(str);
			query.setParameter("name", "%" + name + "%");
			// query.setFirstResult(0);
			// query.setMaxResults(10);
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
				list.add(new InformationRating(infor, rating, price));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex + "");
		}

		return list;
	}

	public List<Serviceinfor> getListInforRoom(int id) {
		List<Serviceinfor> listService = null;
		try {
			String str = "from Serviceinfor s where s.information.id = " + id;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = session.createQuery(str);
			listService = query.list();
			// System.out.println(listService.size());

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
