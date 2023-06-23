package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration // 정의 => IOC 컨테이너에 들어갈 수 있음!!!
public class ImageConfig implements WebMvcConfigurer{
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {// url 체크하는 handler에 추가
		registry.addResourceHandler("images/**")// 이렇게 들어오는 모든 내용
		.addResourceLocations("file:///c:/upload/");// 여기서 찾게
		
	}

}
