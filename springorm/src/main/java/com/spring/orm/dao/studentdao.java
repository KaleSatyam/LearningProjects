package com.spring.orm.dao;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.spring.orm.entities.Student;

@org.springframework.transaction.annotation.Transactional
public class studentdao {
	
	private HibernateTemplate hbtemplate;
	
	
	public HibernateTemplate getHbtemplate() {
		return hbtemplate;
	}


	public void setHbtemplate(HibernateTemplate hbtemplate) {
		this.hbtemplate = hbtemplate;
	}

	
	//create 
	@Transactional
	public int insert(Student student)
	{
		Integer i =(Integer) hbtemplate.save(student);
		return i;
	}
	
	
	//read one data object 
	public Student getstudent(int id)
	{
		Student i = this.hbtemplate.get(Student.class,id);
		return i;
	}
	
	//read all data 
	public List<Student> getallstudent()
	{
		List<Student> stud = this.hbtemplate.loadAll(Student.class);
		return stud;
	
	}
	
	
	//delete data
	public void deletestudent(int id)
	{
		Student student = this.hbtemplate.get(Student.class, id);
		this.hbtemplate.delete(student);
		
	}
	
	//udating data
	@Transactional
	public void updatestud(Student student) {
		this.hbtemplate.update(student);		
	}
	
	
	
}
