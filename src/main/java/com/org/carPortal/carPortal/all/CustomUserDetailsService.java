package com.org.carPortal.carPortal.all;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.org.carPortal.carPortal.entity.User;
import com.org.carPortal.carPortal.repo.UserRepo;

public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	UserRepo userRepo;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user=userRepo.findByUsername(username);
		if(user==null)
		{
			throw new UsernameNotFoundException("user 404");
		}
		return new UserPrincipal(user);
	}

	}


