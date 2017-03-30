package entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "RatingCount")
@XmlAccessorType(XmlAccessType.NONE)

public class RatingCount {

	private int id;

	@XmlElement(name = "rating")
	private long ratingNo;
	@XmlElement(name = "infor")
	private Information information;
	@XmlElement(name = "price")
	private int price;
	
	
	public RatingCount(int id, long ratingNo, Information information, int price) {
		super();
		this.id = id;
		this.ratingNo = ratingNo;
		this.information = information;
		this.price = price;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public RatingCount(int id, long ratingNo, Information information) {
		super();
		this.id = id;
		this.ratingNo = ratingNo;
		this.information = information;
	}

	public Information getInformation() {
		return information;
	}

	public void setInformation(Information information) {
		this.information = information;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public long getRatingNo() {
		
		return ratingNo;
	}

	public void setRatingNo(long ratingNo) {
		this.ratingNo = ratingNo;
	}

	public RatingCount(int id, long ratingNo) {
		super();
		this.id = id;
		this.ratingNo = ratingNo;
	}

	public RatingCount() {
		super();
	}

}
