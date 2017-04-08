package entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "InformationRating")
@XmlAccessorType(XmlAccessType.NONE)
public class DetailInfor {
	@XmlElement(name = "infor")
	private Information information;
	@XmlElement(name = "rating")
	private Long rating;
	@XmlElement(name = "price")
	private Long pricte;
	@XmlElement(name = "status")
	private int status;

	public DetailInfor() {
		super();
	}

	public DetailInfor(Information information, Long rating, Long pricte, int status) {
		super();
		this.information = information;
		this.rating = rating;
		this.pricte = pricte;
		this.status = status;
	}

	public Information getInformation() {
		return information;
	}

	public void setInformation(Information information) {
		this.information = information;
	}

	public Long getRating() {
		return rating;
	}

	public void setRating(Long rating) {
		this.rating = rating;
	}

	public Long getPricte() {
		return pricte;
	}

	public void setPricte(Long pricte) {
		this.pricte = pricte;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	};

}
