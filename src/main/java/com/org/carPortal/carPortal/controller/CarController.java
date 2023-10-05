package com.org.carPortal.carPortal.controller;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.org.carPortal.carPortal.entity.Car;
import com.org.carPortal.carPortal.entity.User;
import com.org.carPortal.carPortal.repo.CarRepo;
import com.org.carPortal.carPortal.repo.UserRepo;
import com.org.carPortal.carPortal.service.carServ;

@Controller
public class CarController {

	@Autowired
	CarRepo carRepo;
	
	@Autowired
	UserRepo userRepo;
	
	@Autowired
	carServ Carserv;
	
	@RequestMapping("index")
	public String viewHomePage(Model model,@Param("keyword") String keyword)
	{
		List<Car> listCar=Carserv.listAll(keyword);
		model.addAttribute("listCar",listCar);
		model.addAttribute("keyword",keyword);
		return "carDetails";
	}
	
	
	  @GetMapping("/search")
	    public String searchCars(
	        @RequestParam(name = "keyword", required = false) String keyword,
	        Model model
	    ) {
	        
	        List<Car> searchResults;
	        if (keyword != null && !keyword.isEmpty()) {
	            searchResults = carRepo.search("%" + keyword + "%");
	        } else {
	            
	            searchResults = carRepo.findAll();
	        }
	        model.addAttribute("cars", searchResults);

	        return "hh";
	    }
//	@GetMapping("/search")
//	public String searchCars(
//	    @RequestParam(name = "keyword", required = false) String keyword,
//	    Model model,
//	    HttpSession session
//	) {
//	    // Check if the user is logged in
//	    Integer userId = (Integer) session.getAttribute("userId");
//
//	    if (userId == null) {
//	        // Redirect to the login page or handle unauthorized access
//	        return "redirect:/login";
//	    }
//
//	    List<Car> searchResults;
//	    if (keyword != null && !keyword.isEmpty()) {
//	        // Search for cars based on the keyword and user ID
//	        searchResults = carRepo.searchByKeywordAndUserId("%" + keyword + "%", userId);
//	    } else {
//	        // Fetch all cars for the logged-in user
//	        searchResults = carRepo.findAllByUserId(userId);
//	    }
//	    
//	    model.addAttribute("cars", searchResults);
//
//	    return "hh";
//	}

	
	  
	  @GetMapping("/update/{id}")
	  public String showUpdateForm(@PathVariable("id") Integer id, Model model) {
	     
	      Optional<Car> car = carRepo.findById(id);

	      if (car.isPresent()) {
	        
	          model.addAttribute("car", car.get());
	          return "updateCar"; 
	      } else {
	          
	          return "error"; 
	      }
	  }
	  
	  @PostMapping("/update/{id}")
	  public String updateCar(@PathVariable("id") Integer id, @ModelAttribute("car") Car updatedCar,Model model) {
	      
	      Optional<Car> car = carRepo.findById(id);

	      if (car.isPresent()) {
	          
	          Car existingCar = car.get();
	          existingCar.setMake(updatedCar.getMake());
	          existingCar.setSpecification(updatedCar.getSpecification());
	          existingCar.setModel(updatedCar.getModel());
	          existingCar.setName(updatedCar.getName());
	          existingCar.setManufactureyear(updatedCar.getManufactureyear());
	          existingCar.setColor(updatedCar.getColor());

	          
	          carRepo.save(existingCar);
              
	          return "carDetails"; 
	      } else {
	         
	          return "error"; 
	      }
	  }
	@PostMapping("/car")
	public String saveCar(@ModelAttribute Car car,HttpSession session)
	{
		 
		Integer userId = (int) session.getAttribute("user_id"); // Fetch the user_id from the session
	    
	    if (userId != null) {
	        User user = userRepo.findById(userId).orElse(null);
	        
	        if (user != null) {
	            car.setUser(user);
	            carRepo.save(car);
	        }
	    }
		return "userView";
	}
	

    @GetMapping("/alls")
    public String carDetails(Model model) {
        
        List<Car> cars = carRepo.findAll();  
        model.addAttribute("cars", cars);
        return "carDetails"; 
    }
    
    @GetMapping("/all")
    public String carDetails(Model model, HttpSession session) {
        Integer userId = (int) session.getAttribute("user_id"); // Get the user_id from the session

        if (userId != null) {
            
            List<Car> cars = carRepo.findByUserId(userId);
            model.addAttribute("cars", cars);
        } else {
           
            return "loginPage"; 
        }

        return "carDetails";
    }
	
	
}
