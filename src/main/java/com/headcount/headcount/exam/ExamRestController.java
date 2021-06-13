package com.headcount.headcount.exam;

import com.headcount.headcount.exam.Exam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping(path = "api/v1/exam")
public class ExamRestController {

    private final ExamRepository examRepository;

    @Autowired
    public ExamRestController(ExamRepository examRepository) {
        this.examRepository = examRepository;
    }


    @GetMapping
    public List<Exam> getExamList(){
        return examRepository.findAll();
    }

    @PostMapping(path = "/checkExistence")
    public int checkExistence(@RequestBody Exam exam){

        Exam examObj = examRepository.findMatch(exam.getName());

        if(examObj != null){
            return 1;
        }else{
            return 0;
        }
    }

    @PostMapping
    public String saveExam(@RequestBody Exam exam){
        examRepository.save(exam);

        return "Data peperiksaan berjaya disimpan";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/{id}")
    public Exam getExam(@PathVariable("id")int id){
        Exam exam = examRepository.findById(id);

        return exam;
    }

    @PutMapping
    public String updateExam(@RequestBody Exam exam){

        examRepository.save(exam);

        return "Data peperiksaan berjaya disunting";
    }

    @DeleteMapping(path = "/{id}")
    public String deleteExam(@PathVariable("id") int id){

        examRepository.deleteById(id);

        return "Data peperiksaan berjaya dipadam";
    }



}
