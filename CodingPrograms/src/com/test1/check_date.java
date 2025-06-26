package com.test1;

import java.time.LocalDate;

public class check_date {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String strDate="2025-04-21";
		
		LocalDate cotermDate=LocalDate.parse(strDate);
		System.out.println(cotermDate);
		
		LocalDate tommorowDay = LocalDate.now().plusDays(1).plusYears(1);
		System.out.println(tommorowDay);
		LocalDate threeYearAfter = LocalDate.now().plusDays(1).plusYears(3);
		System.out.println(threeYearAfter);
		
		if(cotermDate.isBefore(tommorowDay) || cotermDate.isAfter(threeYearAfter))
		{
			System.out.println("invalid date for extended terms");
		}
		
		
	}

}
