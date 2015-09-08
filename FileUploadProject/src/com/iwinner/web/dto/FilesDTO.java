package com.iwinner.web.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "FILESLOCAS")
public class FilesDTO {

	@javax.persistence.Id
	@Column(name = "id")
	private Integer Id;
	@Column(name = "fileName")
	private String fileName;
	@Column(name = "fileResumeWorkLocation")
	private String fileResumeWorkLocation;
	@Column(name = "fileResumeWorkLocationType")
	private String fileResumeWorkLocationType;
	@Column(name = "fileResumeWorkLocationSize")
	private Integer fileResumeWorkLocationSize;
	@Column(name = "fileDriveAbstactLoction")
	private String fileDriveAbstactLoction;
	@Column(name = "fileDriveAbstactLoctionType")
	private String fileDriveAbstactLoctionType;
	@Column(name = "fileDriveAbstactLoctionSize")
	private Integer fileDriveAbstactLoctionSize;

	@Column(name = "fileCvrAbstaction")
	private String fileCvrAbstaction;
	@Column(name = "fileCvrAbstactionType")
	private String fileCvrAbstactionType;
	@Column(name = "fileCvrAbstactionSize")
	private Integer fileCvrAbstactionSize;

	@ManyToOne
	@JoinColumn(name = "customerEmailId")
	private CustomerDTO customer;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileResumeWorkLocation() {
		return fileResumeWorkLocation;
	}

	public void setFileResumeWorkLocation(String fileResumeWorkLocation) {
		this.fileResumeWorkLocation = fileResumeWorkLocation;
	}

	public String getFileResumeWorkLocationType() {
		return fileResumeWorkLocationType;
	}

	public void setFileResumeWorkLocationType(String fileResumeWorkLocationType) {
		this.fileResumeWorkLocationType = fileResumeWorkLocationType;
	}

	public Integer getFileResumeWorkLocationSize() {
		return fileResumeWorkLocationSize;
	}

	public void setFileResumeWorkLocationSize(Integer fileResumeWorkLocationSize) {
		this.fileResumeWorkLocationSize = fileResumeWorkLocationSize;
	}

	public String getFileDriveAbstactLoction() {
		return fileDriveAbstactLoction;
	}

	public void setFileDriveAbstactLoction(String fileDriveAbstactLoction) {
		this.fileDriveAbstactLoction = fileDriveAbstactLoction;
	}

	public String getFileDriveAbstactLoctionType() {
		return fileDriveAbstactLoctionType;
	}

	public void setFileDriveAbstactLoctionType(
			String fileDriveAbstactLoctionType) {
		this.fileDriveAbstactLoctionType = fileDriveAbstactLoctionType;
	}

	public Integer getFileDriveAbstactLoctionSize() {
		return fileDriveAbstactLoctionSize;
	}

	public void setFileDriveAbstactLoctionSize(
			Integer fileDriveAbstactLoctionSize) {
		this.fileDriveAbstactLoctionSize = fileDriveAbstactLoctionSize;
	}

	public String getFileCvrAbstaction() {
		return fileCvrAbstaction;
	}

	public void setFileCvrAbstaction(String fileCvrAbstaction) {
		this.fileCvrAbstaction = fileCvrAbstaction;
	}

	public String getFileCvrAbstactionType() {
		return fileCvrAbstactionType;
	}

	public void setFileCvrAbstactionType(String fileCvrAbstactionType) {
		this.fileCvrAbstactionType = fileCvrAbstactionType;
	}

	public Integer getFileCvrAbstactionSize() {
		return fileCvrAbstactionSize;
	}

	public void setFileCvrAbstactionSize(Integer fileCvrAbstactionSize) {
		this.fileCvrAbstactionSize = fileCvrAbstactionSize;
	}

	public CustomerDTO getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDTO customer) {
		this.customer = customer;
	}

}
