package services;

import java.util.ArrayList;
import java.util.List;

import javax.xml.datatype.XMLGregorianCalendar;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Booking;
import entity.Room;
import entity.Users;
import soapservice.WebService;
import soapservice.WebServiceSoap;
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

	public Boolean bookRoomService(int idUser, int loaiPhong, XMLGregorianCalendar dtCheckIn,
			XMLGregorianCalendar dtCheckOut) {
		Session session = MySessionFactory.getSessionFactory().openSession();
		List<Users> lstUser = new ArrayList<>();
		String strLstUser = "from Users E where E.id = " + idUser;
		Query query2 = session.createQuery(strLstUser);
		lstUser = query2.list();

		WebService webService = new WebService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();
		serviceSoap.setInforCustomer(lstUser.get(0).getFullname(), lstUser.get(0).getEmail(), lstUser.get(0).getPhone(),
				"0000");
		Boolean result = serviceSoap.setBookRoom(lstUser.get(0).getEmail(), loaiPhong, dtCheckIn, dtCheckOut);
		return result;
	}

	public void saveBookRoom(int idUser, String dtCheckIn, String dtCheckOut, int room, int quanlity, String detail) {

		Session session = MySessionFactory.getSessionFactory().openSession();
		List<Room> lstRoom = new ArrayList<>();
		List<Users> lstUser = new ArrayList<>();

		String strLstRoom = "from Room E where E.id = " + room;
		Query query = session.createQuery(strLstRoom);
		lstRoom = query.list();

		String strLstUser = "from Users E where E.id = " + idUser;
		Query query2 = session.createQuery(strLstUser);
		lstUser = query2.list();

		Booking booking = new Booking();
		booking.setDatein(dtCheckIn);
		booking.setDateout(dtCheckOut);
		booking.setDetail(detail);
		booking.setQuanlity(quanlity);
		booking.setRoom(lstRoom.get(0));
		booking.setUsers(lstUser.get(0));

	}

}
