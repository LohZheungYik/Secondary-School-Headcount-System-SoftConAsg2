package com.headcount.headcount.exam;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class ExamController {
    @GetMapping({"/exam/index"})
    public String index(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "exam/index";
        }else{
            return "redirect:/";
        }

    }

    @GetMapping({"/exam/create"})
    public String create(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "exam/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/exam/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            model.put("message", id);
            return "exam/update";
        }else{
            return "redirect:/";
        }
    }
}
