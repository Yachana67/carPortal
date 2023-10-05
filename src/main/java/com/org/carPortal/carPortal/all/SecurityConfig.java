package com.org.carPortal.carPortal.all;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

	//for encoding the password purpose
	@Bean
	public PasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}
	
	//creating for fetching userdetails from database
	@Bean
	public UserDetailsService userDetailsService()
	{
		return new CustomUserDetailsService();
	}
	
	//created a bean for disabling all the urls except Homepage.
	 @Bean
	    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception 
	    {
	        httpSecurity.csrf().disable()
	            .authorizeRequests()
	                .antMatchers("/homep") 
	                .permitAll()
	                .anyRequest()
	                .authenticated()
	                .and()
	                
	            .formLogin()
	            .defaultSuccessUrl("/homepage", true)
	            .permitAll()
	        .and()
	        .logout().logoutUrl("/logout") 
	          
	            .permitAll();
	        return httpSecurity.build();
	    }
}
