package com.headcount.headcount.subject;

import javax.persistence.*;

@Entity
@Table
public class Subject {
    @Id
    @SequenceGenerator(
            name = "subject_sequence",
            sequenceName = "subject_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "subject_sequence"
    )

    private int subjectId;

    private String name,
                    code,
                    type,
                    level,
                    remarks;

    public Subject() {
    }

    public Subject(int subjectId, String name, String code, String type, String level, String remarks) {
        this.subjectId = subjectId;
        this.name = name;
        this.code = code;
        this.type = type;
        this.level = level;
        this.remarks = remarks;
    }

    public Subject(String name, String code, String type, String level, String remarks) {
        this.name = name;
        this.code = code;
        this.type = type;
        this.level = level;
        this.remarks = remarks;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    @Override
    public String toString() {
        return "Subject{" +
                "subjectId=" + subjectId +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", level='" + level + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
