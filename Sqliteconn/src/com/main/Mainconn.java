package com.main;

import java.util.Scanner;

import com.connection.myconnection;

public class Mainconn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
myconnection conn=new myconnection();

conn.getconn();
Scanner sc=new Scanner(System.in);

System.err.println("Student crud app");
		System.out.println();
		System.out.println();
		int r=0;
		do {
		System.out.println("select 1: create database(do not select if you have already created) \n  2: create table \n 3:insert record \n 4: view data \n");
		int n=sc.nextInt();
	
		switch(n)
		{
		case 1:
			conn.create_database();
			break;
			
		case 2:
			conn.create_table();
			break;
			
		case 3:
			System.out.println("enter name");
			String name=sc.next();
			
			System.out.println("enter roll number");
			int rollno=sc.nextInt();
			
			System.out.println("enter email");
			String email=sc.next();
			
			conn.insert_values(name, rollno, email);
			break;
			
		case 4:
			conn.getall();
			break;
			
			default : System.out.println("no data entered");
		}
		
		System.out.println("want options again exit press 0");
		 r=sc.nextInt();
		}
		while(r>=1);

	}

}
