package com.holdmypuppy.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.holdmypuppy.common.FileManagerService;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
	
	
	@Autowired
	private PermissionInterceptor interceptor;
	
	
	// 특정 경로의 파일을 외부에서 접근 가능하도록 그 파일의 접근 경로를 잡아주기
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
			
		registry.addResourceHandler("/images/**")
		.addResourceLocations("file:///" + FileManagerService.FILE_UPLOAD_PATH);
	}
	
	
	
	// 인터셉터 등록
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
			
		registry.addInterceptor(interceptor)
			
		.addPathPatterns("/**") 	
		.excludePathPatterns("static/**", "/images/**", "/member/signout", "/admin/signout", "/admin/signin"); 	// 인터셉터 제외할 주소 패턴  
	}

}
