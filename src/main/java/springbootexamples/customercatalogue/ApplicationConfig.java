package springbootexamples.customercatalogue;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import org.springframework.web.servlet.view.JstlView;

@Configuration
@ComponentScan(basePackages="springbootexamples.customercatalogue")
public class ApplicationConfig {
	
	
	protected void addResourceHandler(ResourceHandlerRegistry resourceHandlerRegistry) {
		resourceHandlerRegistry.addResourceHandler("css/**","images/**","js/**")
								.addResourceLocations("/static/css/","/static/images/","/static/js");

	}
	
	@Bean
	public InternalResourceViewResolver jspViewResolver(){
		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		internalResourceViewResolver.setPrefix("/WEB-INF/jsp/");
		internalResourceViewResolver.setSuffix(".jsp");
		internalResourceViewResolver.setViewClass(JstlView.class);
		return internalResourceViewResolver;
	}
	
//	@Bean
//	public InternalResourceViewResolver internalResourceViewResolver() {
//	    InternalResourceViewResolver bean = new InternalResourceViewResolver();
//	    bean.setViewClass(JstlView.class);
//	    bean.setPrefix("/WEB-INF/jsp/");
//	    bean.setSuffix(".jsp");
//	    return bean;
//	}
}
