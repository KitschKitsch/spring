package com.java.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class AppConfig {
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception { 
		// 객체선언
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();// MyBatis 접근해서 객체 가져옴
		sessionFactory.setDataSource(dataSource);// 명령어를 DB와 연결해서 가져옴
		
		// Mapper 설정
		Resource[] res = new PathMatchingResourcePatternResolver()
						 .getResources("classpath:/mapper/**/*.xml");// 실행해야하는 xml 구문들 모두
		sessionFactory.setMapperLocations(res);// sessionFactory에 담아서
		
		return sessionFactory.getObject();// sessionFactory를 IOC에 등록(Bean)
	}
	
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);// IOC에서 빼와서 실행
	}
	
}
