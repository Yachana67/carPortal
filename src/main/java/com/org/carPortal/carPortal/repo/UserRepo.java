package com.org.carPortal.carPortal.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.org.carPortal.carPortal.entity.User;

public interface UserRepo  extends JpaRepository<User, Integer>{

	User findByEmail(String email);

	Optional<User> findById(Long userId);


	User findByUsername(String username);
	
	

}
