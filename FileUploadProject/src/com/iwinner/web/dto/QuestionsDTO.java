package com.iwinner.web.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Question")
public class QuestionsDTO {
	@Id
	@Column(name = "questionId")
	private Integer Id;
	@Column(name = "empType")
	private String empType;
	@Column(name = "driviningExp")
	private String driviningExp;
	@Column(name = "hasAccidents")
	private boolean hasAccidents;
	@Column(name = "hasTraffic")
	private boolean hasTraffic;
	@Column(name = "hasAccidentsDescrption")
	private String hasAccidentsDescrption;
	@Column(name = "hasTrafficeDescrption")
	private String hasTrafficeDescrption;

	@ManyToOne
	@JoinColumn(name = "customerEmailId")
	private CustomerDTO customer;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getEmpType() {
		return empType;
	}

	public void setEmpType(String empType) {
		this.empType = empType;
	}

	public String getDriviningExp() {
		return driviningExp;
	}

	public void setDriviningExp(String driviningExp) {
		this.driviningExp = driviningExp;
	}

	public boolean isHasAccidents() {
		return hasAccidents;
	}

	public void setHasAccidents(boolean hasAccidents) {
		this.hasAccidents = hasAccidents;
	}

	public boolean isHasTraffic() {
		return hasTraffic;
	}

	public void setHasTraffic(boolean hasTraffic) {
		this.hasTraffic = hasTraffic;
	}

	public String getHasAccidentsDescrption() {
		return hasAccidentsDescrption;
	}

	public void setHasAccidentsDescrption(String hasAccidentsDescrption) {
		this.hasAccidentsDescrption = hasAccidentsDescrption;
	}

	public String getHasTrafficeDescrption() {
		return hasTrafficeDescrption;
	}

	public void setHasTrafficeDescrption(String hasTrafficeDescrption) {
		this.hasTrafficeDescrption = hasTrafficeDescrption;
	}

	public CustomerDTO getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDTO customer) {
		this.customer = customer;
	}

}
