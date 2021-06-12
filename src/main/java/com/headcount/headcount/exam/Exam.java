package com.headcount.headcount.exam;

import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Generated;
import javax.persistence.*;

@Entity
@Table
public class Exam {
    @Id
    @SequenceGenerator(
            name = "exam_sequence",
            sequenceName = "exam_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "exam_sequence"
    )
    private int id;

    private String name,
            startDate,
            endDate,
            level,
            remarks,
            year,
            markType;

    public Exam() {
    }

    public Exam(int id, String name, String startDate, String endDate, String level, String remarks, String year, String markType) {
        this.id = id;
        this.name = name;
        this.startDate = startDate;
        this.endDate = endDate;
        this.level = level;
        this.remarks = remarks;
        this.year = year;
        this.markType = markType;
    }

    public Exam(String name, String startDate, String endDate, String level, String remarks, String year, String markType) {
        this.name = name;
        this.startDate = startDate;
        this.endDate = endDate;
        this.level = level;
        this.remarks = remarks;
        this.year = year;
        this.markType = markType;
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

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMarkType() {
        return markType;
    }

    public void setMarkType(String markType) {
        this.markType = markType;
    }

    @Override
    public String toString() {
        return "Exam{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", level='" + level + '\'' +
                ", remarks='" + remarks + '\'' +
                ", year='" + year + '\'' +
                ", markType='" + markType + '\'' +
                '}';
    }
}
