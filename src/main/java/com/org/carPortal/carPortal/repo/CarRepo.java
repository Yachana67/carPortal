package com.org.carPortal.carPortal.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.org.carPortal.carPortal.entity.Car;

public interface CarRepo extends JpaRepository<Car, Integer> {

	List<Car> findByUserId(Integer userId);
	
	
	  // Define a search method that accepts a keyword parameter
    @Query("SELECT car FROM Car car WHERE CONCAT(car.make, '', car.name, '', car.manufactureyear) LIKE %:keyword%")
    List<Car> search(@Param("keyword") String keyword);

    Car findByMake(String make);


	List<Car> findAllByUserId(Integer userId);
}
