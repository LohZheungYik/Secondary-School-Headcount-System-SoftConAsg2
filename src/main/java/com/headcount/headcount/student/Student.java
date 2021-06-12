package com.headcount.headcount.student;

import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Generated;
import javax.persistence.*;

@Entity
@Table
public class Student {
    @Id
    @SequenceGenerator(
            name = "student_sequence",
            sequenceName = "student_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "student_sequence"
    )
    private int id;
    private String name;
    private String ic;

    public Student() {
    }

    public Student(int id, String name, String ic) {
        this.id = id;
        this.name = name;
        this.ic = ic;
    }

    public Student(String name, String ic) {
        this.name = name;
        this.ic = ic;
    }

    public Student(int id) {
        this.id = id;
    }

    public Student(String ic) {
        this.ic = ic;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIc() {
        return ic;
    }

    public void setIc(String ic) {
        this.ic = ic;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", ic='" + ic + '\'' +
                '}';
    }
}
