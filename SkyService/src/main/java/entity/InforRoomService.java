package entity;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name = "InforRoomService")
@XmlAccessorType(XmlAccessType.NONE)
public class InforRoomService {
	@XmlElement(name = "info")
	private int info;
	@XmlElement(name = "services")
	private List<Service> services;
	@XmlElement(name = "room")
	private List<Room> room;
	public InforRoomService() {
		// TODO Auto-generated constructor stub
	}
	public int getInfo() {
		return info;
	}
	public void setInfo(int info) {
		this.info = info;
	}
	public List<Service> getServices() {
		return services;
	}
	public void setServices(List<Service> services) {
		this.services = services;
	}
	public List<Room> getRoom() {
		return room;
	}
	public void setRoom(List<Room> room) {
		this.room = room;
	}
	public InforRoomService(int info, List<Service> services, List<Room> room) {
		super();
		this.info = info;
		this.services = services;
		this.room = room;
	}
	
}
