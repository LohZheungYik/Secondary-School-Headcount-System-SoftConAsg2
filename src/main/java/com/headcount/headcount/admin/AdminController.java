package com.headcount.headcount.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class AdminController {
    @GetMapping({"/admin/index"})
    public String index(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "admin/index";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/admin/create"})
    public String create(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "admin/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/admin/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            model.put("message", id);
            return "admin/update";
        }else{
            return "redirect:/";
        }
    }
}
