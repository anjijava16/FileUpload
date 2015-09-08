package com.iwinner.web.dto;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMER")
public class CustomerDTO {

	@Id
	@Column(name = "customerEmailId")
	private String emailId;
	@Column(name = "firstName")
	private String firstName;
	@Column(name = "lastName")
	private String lastName;
	@Column(name = "password")
	private String password;
	@Column(name = "homeNumber")
	private Integer homeNumber;
	@Column(name = "cellNumber")
	private Integer cellNumber;
	@Column(name = "regDate")
	private Date regDate;
	@Column(name = "regTime")
	private Timestamp regTime;

	@OneToMany(mappedBy = "customer", cascade = { CascadeType.ALL })
	private Set<ExperienceDTO> custoemrExp;

	@OneToMany(mappedBy = "customer", cascade = { CascadeType.ALL })
	private Set<PhotoDTO> expDTO;

	@OneToMany(mappedBy = "customer", cascade = { CascadeType.ALL })
	private Set<FilesDTO> fileDTO;

	@OneToMany(mappedBy = "customer", cascade = { CascadeType.ALL })
	private Set<QuestionsDTO> questionDTO;

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getHomeNumber() {
		return homeNumber;
	}

	public void setHomeNumber(Integer homeNumber) {
		this.homeNumber = homeNumber;
	}

	public Integer getCellNumber() {
		return cellNumber;
	}

	public void setCellNumber(Integer cellNumber) {
		this.cellNumber = cellNumber;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Timestamp getRegTime() {
		return regTime;
	}

	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}

	public Set<ExperienceDTO> getCustoemrExp() {
		return custoemrExp;
	}

	public void setCustoemrExp(Set<ExperienceDTO> custoemrExp) {
		this.custoemrExp = custoemrExp;
	}

	public Set<PhotoDTO> getExpDTO() {
		return expDTO;
	}

	public void setExpDTO(Set<PhotoDTO> expDTO) {
		this.expDTO = expDTO;
	}

	public Set<FilesDTO> getFileDTO() {
		return fileDTO;
	}

	public void setFileDTO(Set<FilesDTO> fileDTO) {
		this.fileDTO = fileDTO;
	}

	public Set<QuestionsDTO> getQuestionDTO() {
		return questionDTO;
	}

	public void setQuestionDTO(Set<QuestionsDTO> questionDTO) {
		this.questionDTO = questionDTO;
	}

}
