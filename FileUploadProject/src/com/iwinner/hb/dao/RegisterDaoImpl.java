package com.iwinner.hb.dao;

import java.sql.Timestamp;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.iwinner.hb.utils.HibernateUtils;
import com.iwinner.web.dto.CustomerDTO;
import com.iwinner.web.dto.ExperienceDTO;
import com.iwinner.web.dto.FilesDTO;
import com.iwinner.web.dto.PhotoDTO;
import com.iwinner.web.dto.QuestionsDTO;
import com.iwinner.web.form.CusomerDetailsForm;

public class RegisterDaoImpl {

	public static void saveCustomerDetails(CusomerDetailsForm customerDetails) {
		SessionFactory sessionFactory=HibernateUtils.sessionFactoryUtil();

		Transaction tx = null;
		try {
			CustomerDTO customerDTO = new CustomerDTO();
			customerDTO.setFirstName(customerDetails.getFirstName());
			customerDTO.setLastName(customerDetails.getLastName());
			customerDTO.setEmailId(customerDetails.getEmailId());
			customerDTO.setPassword(customerDetails.getPassword());
			customerDTO.setCellNumber(customerDetails.getCellNumber());
			customerDTO.setHomeNumber(customerDetails.getHomeNumber());
			customerDTO.setRegDate(new Date());
			customerDTO.setRegTime(new Timestamp(new Date().getTime()));

			ExperienceDTO exp = new ExperienceDTO();
			exp.setCustomer(customerDTO);
			exp.setExpDesc(customerDetails.getExpDesc());
			exp.setExpDocSize(customerDetails.getExpDocSize());
			exp.setId(UserOperationDaoImpl.expMaxisID(customerDTO.getEmailId()) + 1);

			PhotoDTO photo = new PhotoDTO();
			photo.setCustomer(customerDTO);
			photo.setPhotoId(UserOperationDaoImpl.photoMaxisId(customerDTO
					.getEmailId()) + 1);

			photo.setPhotoLocation(customerDetails.getPhotoLocation());
			photo.setPhotoSize(customerDetails.getPhotoSize());
			photo.setPhotoTimestamp(new Timestamp(new Date().getTime()));
			photo.setPhotoType(customerDetails.getPhotoType());
			photo.setPhotoUpdate(new Date());

			QuestionsDTO ques = new QuestionsDTO();
			ques.setDriviningExp(customerDetails.getDriviningExp());
			ques.setEmpType(customerDetails.getEmpType());
			ques.setHasAccidents(customerDetails.isHasAccidents());
			if(customerDetails.isHasAccidents()){
				ques.setHasAccidentsDescrption(customerDetails.getHasAccidentsDescrption());
				
			}
			ques.setHasTraffic(customerDetails.isHasTraffic());
			if(customerDetails.isHasTraffic()){
				ques.setHasTrafficeDescrption(customerDetails.getHasTrafficeDescrption());	
			}
			ques.setId(UserOperationDaoImpl.questionMaxisId(customerDTO
					.getEmailId()) + 1);
			ques.setCustomer(customerDTO);

			FilesDTO fDTO = new FilesDTO();
			fDTO.setCustomer(customerDTO);
			fDTO.setFileCvrAbstaction(customerDetails.getFileCvrAbstaction());
			fDTO.setFileCvrAbstactionSize(customerDetails.getFileCvrAbstactionSize());
			fDTO.setFileCvrAbstactionType(customerDetails.getFileCvrAbstactionType());
			fDTO.setFileDriveAbstactLoction(customerDetails.getFileDriveAbstactLoction());
			fDTO.setFileDriveAbstactLoctionSize(customerDetails.getFileDriveAbstactLoctionSize());
			fDTO.setFileDriveAbstactLoctionType(customerDetails.getFileDriveAbstactLoctionType());
			fDTO.setFileName(customerDetails.getFileName());
			fDTO.setFileResumeWorkLocation(customerDetails.getFileResumeWorkLocation());
			fDTO.setFileResumeWorkLocationSize(customerDetails.getFileResumeWorkLocationSize());
			fDTO.setFileResumeWorkLocationType(customerDetails.getFileResumeWorkLocationType());
			fDTO.setId(UserOperationDaoImpl.fileMaxisId(customerDTO.getEmailId()) + 1);

			Session session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(customerDTO);
			session.save(exp);
			session.save(ques);
			session.save(fDTO);
			session.save(photo);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
	//	saveCustomerDetails();
	}
}
