package com.org.carPortal.carPortal.controller;

import java.util.List;

import javax.mail.Session;
import javax.print.DocFlavor.STRING;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.org.carPortal.carPortal.entity.Car;
import com.org.carPortal.carPortal.entity.OTPGenerator;
import com.org.carPortal.carPortal.entity.User;
import com.org.carPortal.carPortal.repo.CarRepo;
import com.org.carPortal.carPortal.repo.UserRepo;
import com.org.carPortal.carPortal.service.EmailSenderService;

@Controller
public class UserController {

	@Autowired
	UserRepo userRepo;
	
	@Autowired
	CarRepo carRepo;
	
	@Autowired
	EmailSenderService emailSenderService;
    @GetMapping("/")
	public String homePage()
	{
		return "mainh";
	}
    @GetMapping("/forgot")
    public String forgot()
    {
    	return "forgot";
    }
    
    @GetMapping("/addcars")
    public String add()
    {
    	return "add";
    }
 
    @GetMapping("/viewOneCar/{carId}")
    public String viewOneCar(@PathVariable int carId, Model model) {
        
        Car car = carRepo.findById(carId).orElse(null);

        if (car == null) {
           
            return "redirect:/carNotFound"; 
        }

        
        model.addAttribute("car", car);

        return "viewOneCarPage"; 
    }
    
    

    @PostMapping("/sendEmail")
    public String sendMail(@RequestParam String emaill,Model model,HttpSession session)
    {
    	User storedUser = userRepo.findByEmail(emaill);
    
        session.setAttribute("emaill", emaill);

    	 if(storedUser==null)
     	{
     		return "Enter registered email";
     	}
    	//System.out.println(storedUser);
    	 else if (!emaill.equals(storedUser.getEmail())) {
         System.out.println("email id not registered");
                return "please enter registered email";
    	 }
    	String generatedOTP = OTPGenerator.generateOTP(6); //tking len 6
        System.out.println(generatedOTP);
        session.setAttribute("generatedOTP", generatedOTP);
    	   //via otp
    	    String emailSubject = "Your OTP";
    	    String emailMessage = "Your OTP is: " + generatedOTP;
    	  //String existingPassword = storedUser.getPassword();
    	  
    	    
     emailSenderService.sendMail("yachana1412@gmail.com", storedUser.getEmail(),emailSubject,emailMessage);
     return "otp";
    }
    
    @PostMapping("/validateOTP")
    public String checkOtp(@RequestParam int otpp,HttpSession session) {
    	 // fetching   OTP from  session
        String generatedOTP = (String) session.getAttribute("generatedOTP");

        if (generatedOTP != null && otpp == Integer.parseInt(generatedOTP)) {
          
        	 session.removeAttribute("generatedOTP");

            return "password"; //  success message 
        } else {
            
            return "otpMismatch"; 
        }
    }
    
    @PostMapping("/resetPassword")
    public String resetPassword(
            @RequestParam("newPassword") String newPassword,
            @RequestParam("confirmPassword") String confirmPassword,
            HttpSession session,
            Model model) {

       
        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match");
            return "navbar"; 
        }

       
        String userEmail = (String) session.getAttribute("emaill");

        if (userEmail != null) {
         
            User storedUser = userRepo.findByEmail(userEmail);

            if (storedUser != null) {
                 //Update the user's password
                //BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
                //String encodedPassword = bcrypt.encode(newPassword);
                storedUser.setPassword(newPassword);
                userRepo.save(storedUser);

             
                return "hh";
            }
        }

      
        model.addAttribute("error", "Password reset failed");
        return "resetPassword"; 
    }



//    @PostMapping("/validateOTP")
//    public String checkOtp(@RequestParam int otpp)
//    {
//    	
//    	return "password";
//    }
    
    @GetMapping("/homepage")
  	public String homePagee()
  	{
  		return "homepage";
  	}
    
    @GetMapping("/rpage")
  	public String rpage()
  	{
  		return "register";
  	}
    @PostMapping("/register")
	public String login(@ModelAttribute User user)
	{
//    	BCryptPasswordEncoder bcrypt=new BCryptPasswordEncoder();
//    	String encodedPassword = bcrypt.encode(user.getPassword());
//        user.setPassword(encodedPassword);
        
    	userRepo.save(user);
		return "login";
	}
    
    @GetMapping("lpage")
    public String loginn()
    {
    	return "login";
    }

//    @PostMapping("/changePassword")
//    public String changePassword(
//            @RequestParam("newPassword") String newPassword,
//            @RequestParam("confirmPassword") String confirmPassword,
//            Model model) {
//
//        if (!newPassword.equals(confirmPassword)) {
//            model.addAttribute("error", "Passwords do not match");
//            return "password"; 
//        }
//
//       
//        return "passwordChangeSuccess";
//    }
    
    @GetMapping("/viewProfile")
   	public String profile(HttpSession session,Model model)
   	{
    	session.getAttribute("email");
        
        String userEmail = (String) session.getAttribute("email");

        if (userEmail != null) {
            
            User storedUser = userRepo.findByEmail(userEmail);
 session.setAttribute("user", storedUser);
 Integer userId = (int) session.getAttribute("user_id"); // Get the user_id from the session
 List<Car> cars = carRepo.findByUserId(userId);
 model.addAttribute("cars", cars);
            if (storedUser != null) {
                 //Update the user's password
                //BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
                //String encodedPassword = bcrypt.encode(newPassword);
                userRepo.findAll();
               
            }
        }
        return "view";
        
   	}
 
    @PostMapping("/login")
    public String login(@RequestParam String email,@RequestParam String password, RedirectAttributes redirectAttributes,HttpSession session,Model model) {
        // finding user by email 
        User storedUser = userRepo.findByEmail(email);
        session.setAttribute("email", email);
        
        
        
     
            session.setAttribute("user_id", storedUser.getId()); // Set the user_id in the session
            session.setAttribute("user_name", storedUser.getFname()); // Set the user_id in the session
            Integer userId = (int) session.getAttribute("user_id"); // Get the user_id from the session
            List<Car> cars = carRepo.findByUserId(userId);
            model.addAttribute("cars", cars);
      
        if (storedUser != null) {
            BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
            
            //  if the entered password matches the stored password in db
            if (bcrypt.matches(password, storedUser.getPassword())) {
                
                return "hh";
            }
        }
        redirectAttributes.addFlashAttribute("error", "Invalid email or password");
        return "redirect:/index";
    }
    @GetMapping("/userhomepage")
   	public String welcome()
   	{
   		return "homepage";
   	}
    
}


