package com.spring.jdbc.springjdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.jdbc.dao.studentdao;
import com.spring.jdbc.dao.studentdaoimpl;
import com.spring.jdbc.entities.Student;


public class App 
{
    public static void main( String[] args )
    {
    	System.out.println("my program started.....");
       ApplicationContext apcon=new AnnotationConfigApplicationContext(jdbcconfig.class);
    studentdao  stud = apcon.getBean("studentdao",studentdao.class);
       
    
//    Student student=new Student();
//    student.setId(106);
  //	 get all student
    		List<Student> students = stud.getallstudent();
    		for (Student student1 : students) {
				System.out.println(student1);
			}
    
//   int result = stud.delete(student);
//    		System.out.println("no of record deleted  "+result);
    
    		//get student
//    		Student student1=stud.getstudent(102);
//    		System.out.println(student1);
	
    
      /* Student student=new Student();
       student.setId(102);
       student.setName("satyam");
       student.setCity("pune");
       
      int result = stud.insert(student);
       		System.out.println("no of record inserted  "+result);
       	**/	
    /*
     Student student=new Student();
       student.setId(102);
       student.setName("satyam");
       student.setCity("pune");
       
      int result = stud.change(student);
       		System.out.println("no of record updated  "+result);
     */
       		
       
       /*  JdbcTemplate template = apcon.getBean("jdbctemplate",JdbcTemplate.class);

       //       insert query
       
       String query="insert into student values(104,'akashay','pune')";
       
//       fire the query
       int result = template.update(query);
       System.out.println("no of record inserted: "+result);
       **/
    }
}
