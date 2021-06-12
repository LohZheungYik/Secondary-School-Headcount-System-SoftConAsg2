package com.headcount.headcount.login;

import com.headcount.headcount.admin.Admin;
import com.headcount.headcount.kelas.Kelas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping(path = "api/v1/login/")
public class LoginRestController {

    private final LoginRepository loginRepository;

    @Autowired
    public LoginRestController(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    @PostMapping(path = "validate")
    public int validate(@RequestBody Admin admin){

        Admin adminObj = loginRepository.validate(admin.getUsername(), admin.getPassword());

        if(adminObj != null){
            return 1;
        }else{
            return 0;
        }

    }

    @PostMapping(path = "startSession")
    public void startSession(HttpServletRequest request, @RequestBody Admin admin){

        request.getSession().setAttribute("user", admin);

    }



}
