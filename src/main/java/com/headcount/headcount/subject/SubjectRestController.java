package com.headcount.headcount.subject;

import com.headcount.headcount.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "api/v1/subject")
public class SubjectRestController {

    private final SubjectRepository subjectRepository;

    @Autowired
    public SubjectRestController(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }


    @GetMapping
    public List<Subject> getSubjectList(){
        return subjectRepository.findAll();
    }

    @PostMapping(path = "/checkExistence")
    public int checkExistence(@RequestBody Subject subject){

        Subject subjectObj = subjectRepository.findMatch(subject.getName(), subject.getCode());

        if(subjectObj != null){
            return 1;
        }else{
            return 0;
        }
    }

    @PostMapping
    public String saveSubject(@RequestBody Subject subject){
        subjectRepository.save(subject);

        return "Data mata pelajaran berjaya disimpan";
    }


    @RequestMapping("/{id}")
    public Subject getSubject(@PathVariable("id")int id){
        Subject subject = subjectRepository.findById(id);

        return subject;
    }

    @PutMapping
    public String updateSubject(@RequestBody Subject subject){

        subjectRepository.save(subject);

        return "Data mata pelajaran berjaya disunting";
    }

    @DeleteMapping(path = "/{id}")
    public String deleteSubject(@PathVariable("id") int id){

        subjectRepository.deleteById(id);

        return "Data mata pelajaran berjaya dipadam";
    }



}
