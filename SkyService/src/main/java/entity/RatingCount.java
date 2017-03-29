package entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "RatingCount")
@XmlAccessorType(XmlAccessType.NONE)

public class RatingCount {

	@XmlElement(name = "id")
	private Integer id;

	@XmlElement(name = "rating")
	private Long ratingNo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getRatingNo() {
		return ratingNo;
	}

	public void setRatingNo(Long ratingNo) {
		this.ratingNo = ratingNo;
	}

	public RatingCount(Integer id, Long ratingNo) {
		super();
		this.id = id;
		this.ratingNo = ratingNo;
	}

	public RatingCount() {
		super();
	}




}
