package com.iwinner.hb.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.iwinner.hb.utils.HibernateUtils;
import com.iwinner.web.dto.FilesDTO;

public class UserOperationDaoImpl {

	public static Integer fileMaxisId(String userId) {

		SessionFactory sessionFactory=HibernateUtils.sessionFactoryUtil();
		Session session = sessionFactory.openSession();
		// Query
		// query=session.createQuery("select fDTO.Id from  FilesDTO as fDTO where fDTO.customer=:userName");
		Query query = session
				.createQuery("select max(fDTO.Id) from  FilesDTO as fDTO ");
		// query.setString("userName",userId);
		List listOf = query.list();
		System.out.println(listOf.size());
		Iterator it = listOf.iterator();
		Integer id = null;
		while (it.hasNext()) {
			id = (Integer) it.next();

		}
		return id;
	}

	public static Integer expMaxisID(String userId) {
		SessionFactory sessionFactory=HibernateUtils.sessionFactoryUtil();

		Session session = sessionFactory.openSession();
		// Query
		// query=session.createQuery("select fDTO.Id from  FilesDTO as fDTO where fDTO.customer=:userName");
		Query query = session
				.createQuery("select max(fDTO.id) from  ExperienceDTO as fDTO ");
		// query.setString("userName",userId);
		List listOf = query.list();
		System.out.println(listOf.size());
		Iterator it = listOf.iterator();
		Integer id = null;
		while (it.hasNext()) {
			id = (Integer) it.next();

		}
		return id;
	}

	public static Integer photoMaxisId(String userId) {
		SessionFactory sessionFactory=HibernateUtils.sessionFactoryUtil();

		Session session = sessionFactory.openSession();
		// Query
		// query=session.createQuery("select fDTO.Id from  FilesDTO as fDTO where fDTO.customer=:userName");
		Query query = session
				.createQuery("select max(fDTO.photoId) from  PhotoDTO as fDTO ");
		// query.setString("userName",userId);
		List listOf = query.list();
		System.out.println(listOf.size());
		Iterator it = listOf.iterator();
		Integer id = null;
		while (it.hasNext()) {
			id = (Integer) it.next();

		}
		return id;
	}

	public static Integer questionMaxisId(String userId) {

		SessionFactory sessionFactory=HibernateUtils.sessionFactoryUtil();

		Session session = sessionFactory.openSession();
		// Query
		// query=session.createQuery("select fDTO.Id from  FilesDTO as fDTO where fDTO.customer=:userName");
		Query query = session
				.createQuery("select max(fDTO.Id) from  QuestionsDTO as fDTO ");
		// query.setString("userName",userId);
		List listOf = query.list();
		System.out.println(listOf.size());
		Iterator it = listOf.iterator();
		Integer id = null;
		while (it.hasNext()) {
			id = (Integer) it.next();

		}
		return id;
	}

	public static void main(String[] args) {
		fileMaxisId("anji@gmail.com");
		questionMaxisId("anji@gmail.com");
		photoMaxisId("anji@gmail.com");
		expMaxisID("anji@gmail.com");
	}
}
