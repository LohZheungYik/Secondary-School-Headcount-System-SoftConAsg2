package com.headcount.headcount.kelas;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class KelasController {
    @GetMapping({"/kelas/index"})
    public String index(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "kelas/index";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/kelas/create"})
    public String create(HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            return "kelas/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/kelas/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Admin admin = (Admin)request.getSession().getAttribute("user");

        if(admin != null){
            model.put("message", id);
            return "kelas/update";
        }else{
            return "redirect:/";
        }
    }
}
