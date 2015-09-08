package com.iwinner.web.dto;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PHOTO")
public class PhotoDTO {

	@Id
	@Column(name = "photoId")
	private Integer photoId;
	@Column(name = "photoLocation")
	private String photoLocation;
	@Column(name = "photoType")
	private String photoType;
	@Column(name = "photoSize")
	private Integer photoSize;
	@Column(name = "photoUpdate")
	private Date photoUpdate;
	@Column(name = "photoTimestamp")
	private Timestamp photoTimestamp;

	@ManyToOne
	@JoinColumn(name = "customerEmailId")
	private CustomerDTO customer;

	public Integer getPhotoId() {
		return photoId;
	}

	public void setPhotoId(Integer photoId) {
		this.photoId = photoId;
	}

	public String getPhotoLocation() {
		return photoLocation;
	}

	public void setPhotoLocation(String photoLocation) {
		this.photoLocation = photoLocation;
	}

	public String getPhotoType() {
		return photoType;
	}

	public void setPhotoType(String photoType) {
		this.photoType = photoType;
	}

	public Integer getPhotoSize() {
		return photoSize;
	}

	public void setPhotoSize(Integer photoSize) {
		this.photoSize = photoSize;
	}

	public Date getPhotoUpdate() {
		return photoUpdate;
	}

	public void setPhotoUpdate(Date photoUpdate) {
		this.photoUpdate = photoUpdate;
	}

	public Timestamp getPhotoTimestamp() {
		return photoTimestamp;
	}

	public void setPhotoTimestamp(Timestamp photoTimestamp) {
		this.photoTimestamp = photoTimestamp;
	}

	public CustomerDTO getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDTO customer) {
		this.customer = customer;
	}

}
