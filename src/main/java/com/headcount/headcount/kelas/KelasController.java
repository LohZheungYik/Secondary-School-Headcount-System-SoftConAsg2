package com.headcount.headcount.kelas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class KelasController {
    @GetMapping({"/kelas/index"})
    public String index(HttpServletRequest request){

        Kelas kelas = (Kelas)request.getSession().getAttribute("user");

        if(kelas != null){
            return "kelas/index";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/kelas/create"})
    public String create(HttpServletRequest request){

        Kelas kelas = (Kelas)request.getSession().getAttribute("user");

        if(kelas != null){
            return "kelas/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/kelas/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Kelas kelas = (Kelas)request.getSession().getAttribute("user");

        if(kelas != null){
            model.put("message", id);
            return "kelas/update";
        }else{
            return "redirect:/";
        }
    }
}
