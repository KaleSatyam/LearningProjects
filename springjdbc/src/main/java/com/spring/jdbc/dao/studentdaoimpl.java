package com.spring.jdbc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.spring.jdbc.entities.Student;

@Component("studentdao")
public class studentdaoimpl implements studentdao {
	@Autowired 
	private JdbcTemplate template;
	
	public int insert(Student student) {
		 String query="insert into student(id,name,city) values(?,?,?)";
		 
		 
		 int r = this.template.update(query,student.getId(),student.getName(),student.getCity());
		 
		 return r;
	}

	
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	public int change(Student student) {
		String query="update student set name=? ,city=? where id=?";
		int res = template.update(query,student.getName(),student.getCity(),student.getId());
		return res;
	}
	
	public int delete(Student student) {
		String query="delete from student where id=?";
		template.update(query,student.getId());
		return 0;
	}
	
	public Student getstudent(int studentid)
	{
		String query="select * from student where id=?";
				RowMapper<Student> rowMapper= new	rowMapperimpl();     
		Student student = this.template.queryForObject(query,rowMapper,studentid);
		return student;
		
	}
	
	public List<Student> getallstudent()
	{
		String query="select * from student";
		List<Student> student = this.template.query(query, new rowMapperimpl());
		return student;
	}
	
	
	
}
