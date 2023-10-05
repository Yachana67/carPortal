package com.org.carPortal.carPortal.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.org.carPortal.carPortal.entity.Car;
import com.org.carPortal.carPortal.repo.CarRepo;
import com.org.carPortal.carPortal.repo.UserRepo;

@Service
public class carServ {

	private CarRepo carRepo;
	
	
	public List<Car> listAll(String keyword)
	{
		if(keyword!=null)
		{
			return carRepo.search(keyword);
		}
		return (List<Car>) carRepo.findAll();
	}
}
