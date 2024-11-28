package com.desidiaries.sdp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.desidiaries.sdp.model.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {

	
	@GetMapping("/dashboard")
	public ModelAndView dashboard(HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    User user = (User) session.getAttribute("user");
	    if (user != null) {
	        mv.addObject("username", user.getName());
	        mv.setViewName("dashboard");
	    } else {
	        mv.setViewName("redirect:/userlogin"); // Redirect to login if no user is in session
	    }
	    return mv;
	}
	@GetMapping("/monuments")
    public String showMonuments() {
        return "monuments"; // This looks for gallery.jsp in the /WEB-INF/views folder
    }
	@GetMapping("/festivals")
    public String showFestivals() {
        return "festivals"; // This looks for gallery.jsp in the /WEB-INF/views folder
    }
	@GetMapping("/usergallery")
    public String showUserGallery() {
        return "usergallery"; // This looks for gallery.jsp in the /WEB-INF/views folder
    }
	@GetMapping("/cuisines")
    public String showCuisines() {
        return "cuisines"; // This looks for gallery.jsp in the /WEB-INF/views folder
    }
	@GetMapping("/useraboutus")
    public String showUserAboutUs() {
        return "useraboutus"; // This looks for gallery.jsp in the /WEB-INF/views folder
    }
}
