package com.iwinner.web.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.iwinner.hb.service.UserRegisterServiceImpl;
import com.iwinner.web.form.CusomerDetailsForm;
import com.iwinner.web.helper.AZUtils;

/**
 * Servlet implementation class RegisterUserServlet
 */
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = -2045199313944348406L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	execute(request,response);
	}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	execute(request,response);
	}

    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uploadDirectory="D:/anji/";
    	
    	CusomerDetailsForm customerForm=new CusomerDetailsForm();
    	
    	String expDesc=request.getParameter("experience");
    	String ownerType=request.getParameter("ownerOperator");
    	
    	String drivingExp=request.getParameter("years_driving");
    	  try {
              List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
             
              for(FileItem item : multiparts){
          //  	  String fieldValue = item.getString();
              	if(item.isFormField()){
              		 //String fieldName = item.getFieldName();
                     
                       if(item.getFieldName().equalsIgnoreCase("firstname")){
                    	   customerForm.setFirstName(item.getString());
                       }
                       
                       if(item.getFieldName().equalsIgnoreCase("lastname")){
                    	   customerForm.setLastName(item.getString());
                         }
                       if(item.getFieldName().equalsIgnoreCase("email")){
                    	   customerForm.setEmailId(item.getString());
                         }
                       if(item.getFieldName().equalsIgnoreCase("password")){
                    	   customerForm.setPassword(item.getString());
                         }
                       if(item.getFieldName().equalsIgnoreCase("number")){
                    	   customerForm.setHomeNumber(Integer.parseInt(item.getString()));
                    	   customerForm.setRegDate(new Date());
                    	   customerForm.setRegTime(new Timestamp(new Date().getTime()));
                       }
                       if(item.getFieldName().equalsIgnoreCase("cell_number")){
                    	   customerForm.setCellNumber(Integer.parseInt(item.getString()));
                         }
                       if(item.getFieldName().equalsIgnoreCase("number")){
                    	   customerForm.setHomeNumber(Integer.parseInt(item.getString()));
                         }  //experience
                        if(item.getFieldName().equalsIgnoreCase("experience")){
                    	   customerForm.setExpDesc(item.getString());
                    	   customerForm.setExpDocSize(AZUtils.commentFileSize(item.getString()));
                         }//years_driving
                        if(item.getFieldName().equalsIgnoreCase("years_driving")){
                     	   customerForm.setDriviningExp(item.getString());
                          }//ownerOperator
                        if(item.getFieldName().equalsIgnoreCase("ownerOperator")){
                      	   customerForm.setEmpType(item.getString());
                           }//accidents
                        if(item.getFieldName().equalsIgnoreCase("accidents")){
                       	   customerForm.setHasAccidents(Boolean.parseBoolean(item.getString()));
                            }//accident_comment
                        if(item.getFieldName().equalsIgnoreCase("accident_comment")){
                        	   customerForm.setHasAccidentsDescrption(item.getString());
                             }//convictions
                        if(item.getFieldName().equalsIgnoreCase("convictions")){
                     	   customerForm.setHasTraffic(Boolean.parseBoolean(item.getString()));
                          }//convictions_comment
                        if(item.getFieldName().equalsIgnoreCase("convictions_comment")){
                      	   customerForm.setHasTrafficeDescrption(item.getString());
                           }
              	}
                  if(!item.isFormField()){
                	  if(item.getFieldName().equalsIgnoreCase("photoAttach")){
                		  customerForm.setPhotoLocation(uploadDirectory+item.getName());
                		  customerForm.setPhotoTimestamp(new Timestamp(new Date().getTime()));
                		  customerForm.setPhotoUpdate(new Date());
                		  customerForm.setPhotoType(AZUtils.getName(uploadDirectory+item.getName()));
                		  customerForm.setPhotoSize(AZUtils.fileSize(uploadDirectory+item.getName()));
                		  
                	  }
                	  if(item.getFieldName().equalsIgnoreCase("attachment1")){
                		  
                		  // get DOC
                		  customerForm.setFileResumeWorkLocation(uploadDirectory+item.getName());
                		  customerForm.setFileName(uploadDirectory+item.getName());
                		  customerForm.setFileResumeWorkLocationType(AZUtils.getName(uploadDirectory+item.getName()));
                		  customerForm.setFileResumeWorkLocationSize(AZUtils.fileSize(uploadDirectory+item.getName()));
                	  }
                	  if(item.getFieldName().equalsIgnoreCase("attachment3")){
                		  // get Image1
                		  customerForm.setFileDriveAbstactLoction(uploadDirectory+item.getName());
                		  customerForm.setFileDriveAbstactLoctionType((AZUtils.getName(uploadDirectory+item.getName())));
                		  customerForm.setFileDriveAbstactLoctionSize(AZUtils.fileSize(uploadDirectory+item.getName()));
                	  }

                	  if(item.getFieldName().equalsIgnoreCase("attachment4")){
                		  // get Image2
                		  customerForm.setFileCvrAbstaction(uploadDirectory+item.getName());
                		  customerForm.setFileCvrAbstactionType((AZUtils.getName(uploadDirectory+item.getName())));
                		  customerForm.setFileCvrAbstactionSize(AZUtils.fileSize(uploadDirectory+item.getName()));
                	  }
                	  
                  }
              }
              UserRegisterServiceImpl userRegisterImpl=new UserRegisterServiceImpl();
              userRegisterImpl.registerService(customerForm);
              System.out.println("CustoemrForm Deetails ::::===>>>"+customerForm.toString());
             //File uploaded successfully
             request.setAttribute("message", "File Uploaded Successfully");
          } catch (Exception ex) {
             request.setAttribute("message", "File Upload Failed due to " + ex);
          }          
       	
    
    }
    
   
    }

