package com.headcount.headcount.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(path = "api/v1/student")
public class StudentRestController {

    private final StudentRepository studentRepository;

    @Autowired
    public StudentRestController(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }


    @GetMapping
    public List<Student> getStudentList(){
        return studentRepository.findAll();
    }

    @PostMapping(path = "/checkExistence")
    public int checkExistence(@RequestBody Student student){

        Student studentObj = studentRepository.findByIc(student.getIc());

        if(studentObj != null){
            return 1;
        }else{
            return 0;
        }
    }

    @PostMapping
    public String saveStudent(@RequestBody Student student){
        studentRepository.save(student);

        return "Data pelajar berjaya disimpan";
    }


    @GetMapping("/{id}")
    public Student getStudent(@PathVariable("id")int id){
        Student student = studentRepository.findById(id);

        return student;
    }

    @PutMapping
    public String updateStudent(@RequestBody Student student){

        studentRepository.save(student);

        return "Data pelajar berjaya disunting";
    }

    @DeleteMapping(path = "/{id}")
    public String deleteStudent(@PathVariable("id") int id){

        studentRepository.deleteById(id);

        return "Data pelajar berjaya dipadam";
    }



}
