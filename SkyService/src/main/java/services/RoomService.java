package services;

import java.util.ArrayList;
import java.util.List;

import javax.xml.datatype.XMLGregorianCalendar;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Room;
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

	public Boolean bookRoomService(String mail, int loaiPhong, XMLGregorianCalendar dtCheckIn, XMLGregorianCalendar dtCheckOut,String name, String sdt, String iDcard) {

		WebService webService = new WebService();
		WebServiceSoap serviceSoap = webService.getWebServiceSoap();
		serviceSoap.setInforCustomer(name, mail, sdt, iDcard);
		Boolean result = serviceSoap.setBookRoom(mail, loaiPhong, dtCheckIn, dtCheckOut);
		return result;
	}

}
