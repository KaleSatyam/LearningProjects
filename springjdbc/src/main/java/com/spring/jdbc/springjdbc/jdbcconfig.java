package com.spring.jdbc.springjdbc;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.spring.jdbc.dao.studentdao;
import com.spring.jdbc.dao.studentdaoimpl;


@Configuration
@ComponentScan(basePackages = {"com.spring.jdbc.dao"})
public class jdbcconfig {
	
	@Bean("ds")
	public DataSource getdatasource()
	{
		DriverManagerDataSource ds=new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/springjdbc");
		ds.setUsername("root");
		ds.setPassword("");
		
		return ds;
		
	}
	
	@Bean("jdbctemplate")
	public JdbcTemplate getjdbctemplate()
	{
		JdbcTemplate template=new JdbcTemplate();
		template.setDataSource(getdatasource());
		
		return template;
	}
//	
//	@Bean("studentdao")
//	public studentdao getstudentdao()
//	{
//		studentdaoimpl studentdao = new studentdaoimpl();
//		studentdao.setTemplate(getjdbctemplate());
//		return studentdao;
//	}

}
