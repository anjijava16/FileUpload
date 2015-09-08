package com.iwinner.hb.service;

import com.iwinner.hb.dao.RegisterDaoImpl;
import com.iwinner.web.form.CusomerDetailsForm;

public class UserRegisterServiceImpl{

	public void registerService(CusomerDetailsForm customerDetails){
		RegisterDaoImpl.saveCustomerDetails(customerDetails);
	}
	
}
