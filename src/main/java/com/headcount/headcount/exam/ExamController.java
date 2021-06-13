package com.headcount.headcount.exam;

import com.headcount.headcount.exam.Exam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class ExamController {
    @GetMapping({"/exam/index"})
    public String index(HttpServletRequest request){

        Exam exam = (Exam)request.getSession().getAttribute("exam");

        if(exam != null){
            return "exam/index";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/exam/create"})
    public String create(HttpServletRequest request){

        Exam exam = (Exam)request.getSession().getAttribute("user");

        if(exam != null){
            return "exam/create";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping({"/exam/update/{id}"})
    public String update(@PathVariable("id")int id, Map<String, Object> model, HttpServletRequest request){

        Exam exam = (Exam)request.getSession().getAttribute("user");

        if(exam != null){
            model.put("message", id);
            return "exam/update";
        }else{
            return "redirect:/";
        }
    }
}
