package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.categorydao;
import com.dao.productdao;
import com.model.Category;
import com.model.Product;

@MultipartConfig
public class catprodoperationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public catprodoperationservlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
				String op=request.getParameter("operation");
					
				if(op.trim().equals("addcategory"))
				{
//					add category
					
					 //featching category data
					String Ctitle=request.getParameter("cattitle");
					String Cdescription=request.getParameter("catdescription");
						
					Category ct=new Category();
					ct.setCategoryName(Ctitle);
					ct.setCategoryDescription(Cdescription);
					
					//save category to database
				int catid=categorydao.addcategory(ct);
							
					
				}else if(op.trim().equals("addproduct"))
				{
//					add product
					String title=request.getParameter("ptitle");
					String description=request.getParameter("pdescription");
					int price=Integer.parseInt(request.getParameter("pprice"));
					int discount=Integer.parseInt(request.getParameter("pdiscount"));
					int quantity=Integer.parseInt(request.getParameter("pquantity"));
					int catid=Integer.parseInt(request.getParameter("catid"));
					
					Part part=request.getPart("ppic");
					
					
					Product p=new Product();
					p.setpName(title);
					p.setpDesc(description);
					p.setpPrice(price);
					p.setpDiscount(discount);
					p.setpQuantity(quantity);
					p.setpPhoto(part.getSubmittedFileName());
					
//					get category by -id
				Category cat=categorydao.categorybyid(catid);
					
					p.setCategory(cat);
					
//					prduct save
					int id=productdao.saveproduct(p);
					
		
					
				}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
