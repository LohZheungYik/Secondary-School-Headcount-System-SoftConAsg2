package com.headcount.headcount.student;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @GetMapping({"/student/index"})
    public String index(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "student/index";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/student/create"})
    public String create(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "student/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/student/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            model.put("message", id);
            return "student/update";
        }else{
            return "redirect:/";
        }
    }
}
