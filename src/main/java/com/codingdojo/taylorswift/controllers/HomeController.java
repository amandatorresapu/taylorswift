package com.codingdojo.taylorswift.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.taylorswift.models.LoginUser;
import com.codingdojo.taylorswift.models.Song;
import com.codingdojo.taylorswift.models.User;
import com.codingdojo.taylorswift.services.SongService;
import com.codingdojo.taylorswift.services.UserService;



@Controller
public class HomeController {
	
	private final UserService userService;
	private final SongService songService;
	
	public HomeController(UserService userService, SongService songService) {
		this.userService = userService;
		this.songService = songService;
	}


//	Login and Registration --------------------- c/p 
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "index.jsp";
	}
	
	
//	-----New Post route to register************ c/p
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		userService.register(newUser, result);
		 
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
		}
		
		session.setAttribute("user_id", newUser.getId());
		return "redirect:/dashboard";
	}
	
	
//	-----New Post route to Login***************c/p
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin")LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "index.jsp";
		}
		
		session.setAttribute("user_id", user.getId());
		return "redirect:/dashboard";
	}	
	
	
	//All songs page
	@GetMapping("/allSongs")
	public String allSongs(HttpSession session, Model model) {
		if(session.getAttribute("user_id") !=null) {
			
			model.addAttribute("allSongs", songService.allSongs());
			
			model.addAttribute("user", userService.oneUser((Long)session.getAttribute("user_id")));
			
			return "allSongs.jsp"; 
		}else {
			return "allSongs.jsp";
		}
	}
	
	
	
	
	
//	Dashboard ---------------------------------- c/p
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		if(session.getAttribute("user_id") !=null) {
			
			
			model.addAttribute("user", userService.oneUser((Long)session.getAttribute("user_id")));
			
			return "dashboard.jsp";
		}else {
			return "redirect:/";
		}
	}
	
	
	
	
//	Logout ------------------------------------- just uncomment out! all done	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
	
//	Creating a plant ---------------------------	
	
	@GetMapping("/createOne")
	public String createOnePL(@ModelAttribute("song")Song song, Model model, HttpSession session) {
		model.addAttribute("user", userService.oneUser((Long)session.getAttribute("user_id")));
		
		return "createOne.jsp";
	}
	
	
	
	
	
//	-----New Post route to create a new plant***	
	

	
//	Viewing one plant --------------------------
	@GetMapping("/viewOne/{category}")
	public String viewOneCat(@PathVariable("category")String category, Model model,HttpSession session ) {
		
		model.addAttribute("songs", songService.findCategory(category));
		return "viewOne.jsp";
	}

	
	
//	Delete a plant -----------------------------
//	*** dont forget to add the /{id} at the end of route below!!!
	@GetMapping("/delete")
	public String delete() {
		
		return "redirect:/dashboard";
	}
	
//	Edit a plant -------------------------------
//	***Need to add ID's /<id...
	@GetMapping("/editOne")
	public String editOne() {
		
		return "redirect:/dashboard";
	}

//	-----New Post route to edit plant*********
//	***Need to add ID's /<id...

}

