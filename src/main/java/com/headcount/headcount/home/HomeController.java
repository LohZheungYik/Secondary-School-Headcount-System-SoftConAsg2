package com.headcount.headcount.home;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {
    @GetMapping({"/home"})
    public String HomeScreen(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "home/home";
        }else{
            return "redirect:/";
        }
    }
}
