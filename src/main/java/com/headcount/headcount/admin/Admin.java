package com.headcount.headcount.admin;

import javax.persistence.*;

@Entity
@Table
public class Admin {

    @Id
    @SequenceGenerator(
            name = "admin_sequence",
            sequenceName = "admin_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "admin_sequence"
    )

    private int adminId;

    private String name,
            homeTel,
            officeTel,
            hp,
            address,
            email,
            remarks,
            username,
            password;

    public Admin() {
    }

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Admin(int adminId, String name, String homeTel, String officeTel, String hp, String address, String email, String remarks, String username, String password) {
        this.adminId = adminId;
        this.name = name;
        this.homeTel = homeTel;
        this.officeTel = officeTel;
        this.hp = hp;
        this.address = address;
        this.email = email;
        this.remarks = remarks;
        this.username = username;
        this.password = password;
    }

    public Admin(String name, String homeTel, String officeTel, String hp, String address, String email, String remarks, String username, String password) {
        this.name = name;
        this.homeTel = homeTel;
        this.officeTel = officeTel;
        this.hp = hp;
        this.address = address;
        this.email = email;
        this.remarks = remarks;
        this.username = username;
        this.password = password;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHomeTel() {
        return homeTel;
    }

    public void setHomeTel(String homeTel) {
        this.homeTel = homeTel;
    }

    public String getOfficeTel() {
        return officeTel;
    }

    public void setOfficeTel(String officeTel) {
        this.officeTel = officeTel;
    }

    public String getHp() {
        return hp;
    }

    public void setHp(String hp) {
        this.hp = hp;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", name='" + name + '\'' +
                ", homeTel='" + homeTel + '\'' +
                ", officeTel='" + officeTel + '\'' +
                ", hp='" + hp + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", remarks='" + remarks + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
