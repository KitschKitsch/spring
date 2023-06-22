package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration // IOC컨테이너에 넣어놓기
public class ImageConfig implements WebMvcConfigurer {
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {// url 집중된 곳에서 찾아서 내보냄(없으면 Controller로)
		registry.addResourceHandler("/images/**")// static 아래서 말고
		.addResourceLocations("file:///c:/upload/");// 여기 upload 폴더에서 찾아!
	}

}
