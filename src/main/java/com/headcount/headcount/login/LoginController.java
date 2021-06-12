package com.headcount.headcount.login;

import com.headcount.headcount.admin.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @GetMapping({"/"})
    public String loginScreen(){

        return "login/login";

    }

    @GetMapping(path = "destroySession")
    public String destroySession(HttpServletRequest request){

        request.getSession().invalidate();

        return "redirect:/";
    }


}
