package com.headcount.headcount.subject;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class SubjectController {
    @GetMapping({"/subject/index"})
    public String index(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "subject/index";
        }else{
            return "redirect:/";
        }

    }

    @GetMapping({"/subject/create"})
    public String create(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "subject/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/subject/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            model.put("message", id);
            return "subject/update";
        }else{
            return "redirect:/";
        }
    }
}
