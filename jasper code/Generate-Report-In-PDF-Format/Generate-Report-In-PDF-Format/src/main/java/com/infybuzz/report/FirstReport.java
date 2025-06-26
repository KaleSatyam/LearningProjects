package com.infybuzz.report;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

public class FirstReport {

	public static void main(String[] args) {
		
		try {


			String filePath =	"C:\\Users\\satya\\eclipse-workspace\\jasper code\\Generate-Report-In-PDF-Format\\G" +
					"enerate-Report-In-PDF-Format\\src\\main\\resources\\FirstReport.jrxml";
			
			Map<String, Object> parameters = new HashMap<String, Object>();
			parameters.put("studentName", "John");
			
			Student student1 = new Student(1L, "Raj", "Joshi", "Happy Street",
					"Delhi");
			
			Student student2 = new Student(2L, "Peter", "Smith", "Any Street",
					"Mumbai");
			
			List<Student> list = new ArrayList<Student>();
			list.add(student1);
			list.add(student2);
			
			JRBeanCollectionDataSource dataSource = 
					new JRBeanCollectionDataSource(list);
			
			JasperReport report = JasperCompileManager.compileReport(filePath);
			
			JasperPrint print = 
					JasperFillManager.fillReport(report, parameters, dataSource);
			
			JasperExportManager.exportReportToPdfFile(print, "C:\\Users\\satya\\eclipse-workspace\\jasper code\\Generate-Report-In-PDF-Format\\G" +
					"enerate-Report-In-PDF-Format\\src\\main\\resources\\FirstReport.pdf");
			
			System.out.println("Report Created...");
			
		} catch(Exception e) {
			System.out.println("Exception while creating report");
		}
	}

}
