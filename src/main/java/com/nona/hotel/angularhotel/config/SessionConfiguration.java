package com.nona.hotel.angularhotel.config;

import com.nona.hotel.angularhotel.interceptor.SessionInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @email eumji025@gmail.com
 * @author: EumJi
 * @date: 18-1-21
 * @time: 下午10:10
 */
@Configuration
public class SessionConfiguration extends WebMvcConfigurerAdapter{

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SessionInterceptor()).addPathPatterns("/**");
    }
}
