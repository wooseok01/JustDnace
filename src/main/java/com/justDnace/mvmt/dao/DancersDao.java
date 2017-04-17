package com.justDnace.mvmt.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.justDance.mvmt.mapper.interfaces.DancersInterface;
import com.justDance.mvmt.model.Dancers;

@Repository
public class DancersDao {
	@Autowired
	private JdbcTemplate template;
	@Autowired
	private SqlSession sqlSession;
	
	public JdbcTemplate getTemplate() {return template;}
	public void setTemplate(JdbcTemplate template) {this.template = template;}
	
	public SqlSession getSqlSession() {return sqlSession;}
	public void setSqlSession(SqlSession sqlSession) {this.sqlSession = sqlSession;}
	
	public ArrayList<Dancers> getAllDancersInfo() {
		
		return sqlSession.getMapper(DancersInterface.class).getAllDancersInfo();
	}
	
	
	
	
}
