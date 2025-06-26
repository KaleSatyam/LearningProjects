package com.spring.orm.springorm;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.orm.dao.studentdao;
import com.spring.orm.entities.Student;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
      ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
      studentdao studentdao= context.getBean("studentDao",studentdao.class);
      
      BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
      
      boolean go=true;
      while(go)
      {
    
      System.out.println("press 1 for add student");
      System.out.println("press 2 for display student");
      System.out.println("press 3for display student by id");
      System.out.println("press 4 for delete student");
      System.out.println("press 5 for update student");
      System.out.println("press 6 for exit");
      
      try
      {
    	  int input=Integer.parseInt(br.readLine());
    	  switch(input)
    	  {
    	  case 1:System.out.println("__________add student___________");
    	  		
    	  		System.out.println("Enter student id");
    	  		int id=Integer.parseInt(br.readLine());
    	  		
    	  		System.out.println("Enter student name");
    	  		String name=br.readLine();
    	  
    	  		System.out.println("Enter student city");
    	  		String city=br.readLine();
    	  		
    	  		Student student=new Student(id, name, city);
    	  		studentdao.insert(student);
    		  break;
    	  
    	  case 2:System.out.println("___________display student____________");
    	  				List<Student> getall = studentdao.getallstudent();
    	  				for (Student student2 : getall) {
							System.out.println("Student id : "+student2.getStudentId()+"   Student name : "+student2.getStudentName()+"   Student city : "+student2.getStudentCity());
						}
    		  break;
    		  
    	  case 3:System.out.println("____________display student by id_______________");
    	  		System.out.println("Enter student id to get details");
    	  			int id1=Integer.parseInt(br.readLine());
    	  				Student getstudent = studentdao.getstudent(id1);
    	  				System.out.println("Student id : "+getstudent.getStudentId()+"   Student name : "+getstudent.getStudentName()+"   Student city : "+getstudent.getStudentCity());
    	  break;
    	  
    	  case 4:System.out.println("_____________delete student______________");
    	  			System.out.println("Enter student id to detele data");	
    	  			int id2=Integer.parseInt(br.readLine());
    	  			studentdao.deletestudent(id2);
    	  			System.out.println("Student data deleted id== "+id2);
    	  	
    	  break;
    	  
    	  case 5: System.out.println("_____________update student details_______________");
    	  System.out.println("Enter id of student that you update details");
    	  int id3=Integer.parseInt(br.readLine());
    	  System.out.println("Enter student name to do update");
    		String name2=br.readLine();
    	  System.out.println("Enter student city to do update");
    		String city2=br.readLine();
    		
    		Student stud=new Student(id3, name2, city2);
    		studentdao.updatestud(stud);
    		
    		Student getstudent1 = studentdao.getstudent(id3);
    		System.out.println("Student updated");
				System.out.println(" Student id : "+getstudent1.getStudentId()+"   Student name : "+getstudent1.getStudentName()+"   Student city : "+getstudent1.getStudentCity());
    	
    	  break;
    	  
    	  case 6:
    		  
    		  go=false;
    		  break;
    	  
    	  
    	  }
    	  
    	  
      }catch (Exception e) 
      {
		System.out.println("you will have problem with try");
		System.out.println(e.getMessage());
      }
      }
      System.out.println("thank you for using my application ");
      System.out.println("see you soon......");
      
      
      
      
      
//      Student stud=new Student(25656, "satyam kale","pune");
//       int i=(int)studentdao.insert(stud);
//      System.out.println("Student inserted "+i);
//      Student s=studentdao.getstudent(25656);
//      System.out.println(s);
//      
//      List<Student> st=studentdao.getallstudent();
//      for (Student student : st) 
//      {
//		System.out.println(student);
//      }
//      
//      studentdao.deletestudent(25);
//      System.out.println("after delete operation");
//      
//      List<Student> st2=studentdao.getallstudent();
//      for (Student student : st2) 
//      {
//		System.out.println(student);
//      }
//      
//      Student stud=new Student(25656, "pratibha","chakur");
//      studentdao.updatestud(stud);  
//      List<Student> st3=studentdao.getallstudent();
//      for (Student student : st3) 
//      {
//		System.out.println(student);
//      }
    }
}
