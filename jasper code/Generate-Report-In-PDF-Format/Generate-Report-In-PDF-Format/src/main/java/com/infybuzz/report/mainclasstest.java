package com.infybuzz.report;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;


public class mainclasstest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//			String formatedStartDate=new String("12-1-2022");
//		
//            Date openDate = Date.valueOf(formatedStartDate);
//            System.out.println(openDate);
//            LocalDate openEndedDate = openDate.toLocalDate();
//            System.out.println(openEndedDate.plusDays(365));
//        LocalDate enddate2=enddate1.toLocalDate();
       BigDecimal dc=new BigDecimal(676577).setScale(0, BigDecimal.ROUND_HALF_UP);;
       System.out.println(dc);
       

	}

}
