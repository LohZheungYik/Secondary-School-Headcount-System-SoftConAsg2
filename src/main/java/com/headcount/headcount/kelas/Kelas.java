package com.headcount.headcount.kelas;

import javax.persistence.*;

@Entity
@Table
public class Kelas {
    @Id
    @SequenceGenerator(
            name = "kelas_sequence",
            sequenceName = "kelas_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "kelas_sequence"
    )
    private int classId;

    private String name,
                type,
                form,
                remarks;

    public Kelas() {
    }

    public Kelas(int classId, String name, String type, String form, String remarks) {
        this.classId = classId;
        this.name = name;
        this.type = type;
        this.form = form;
        this.remarks = remarks;
    }

    public Kelas(String name, String type, String form, String remarks) {
        this.name = name;
        this.type = type;
        this.form = form;
        this.remarks = remarks;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "Kelas{" +
                "classId=" + classId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", form='" + form + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
