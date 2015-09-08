package com.iwinner.web.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "EXPERIENCE")
public class ExperienceDTO {

	@Id
	private Integer id;

	@Column(name = "expDesc")
	private String expDesc;

	@Column(name = "expDocSize")
	private Integer expDocSize;

	@ManyToOne
	@JoinColumn(name = "customerEmailId")
	private CustomerDTO customer;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getExpDesc() {
		return expDesc;
	}

	public void setExpDesc(String expDesc) {
		this.expDesc = expDesc;
	}

	public Integer getExpDocSize() {
		return expDocSize;
	}

	public void setExpDocSize(Integer expDocSize) {
		this.expDocSize = expDocSize;
	}

	public CustomerDTO getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDTO customer) {
		this.customer = customer;
	}

}
