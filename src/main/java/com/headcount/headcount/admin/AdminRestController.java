package com.headcount.headcount.admin;

import com.headcount.headcount.admin.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "api/v1/admin")
public class AdminRestController {

    private final AdminRepository adminRepository;

    @Autowired
    public AdminRestController(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    @GetMapping
    public List<Admin> getAdminList(){
        return adminRepository.findAll();
    }

    @PostMapping(path = "/checkExistence")
    public int checkExistence(@RequestBody Admin admin){

        Admin adminObj = adminRepository.findMatch(admin.getUsername());

        if(adminObj != null){
            return 1;
        }else{
            return 0;
        }
    }

    @PostMapping
    public String saveAdmin(@RequestBody Admin admin){
        adminRepository.save(admin);

        return "Data penyelia berjaya disimpan";
    }

    @GetMapping("/{id}")
    public Admin getAdmin(@PathVariable("id")int id){
        Admin admin = adminRepository.findById(id);

        return admin;
    }

    @PutMapping
    public String updateAdmin(@RequestBody Admin admin){

        adminRepository.save(admin);

        return "Data penyelia berjaya disunting";
    }

    @DeleteMapping(path = "/{id}")
    public String deleteAdmin(@PathVariable("id") int id){

        adminRepository.deleteById(id);

        return "Data penyelia berjaya dipadam";
    }



}
