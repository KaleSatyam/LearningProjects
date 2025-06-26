package com.spring.jdbc.dao;

import java.util.List;

import com.spring.jdbc.entities.Student;

public interface studentdao {
 public int insert(Student student);
 public int change(Student student);
 public int delete(Student student);
 public Student getstudent(int studentid);
public List<Student> getallstudent();
}
