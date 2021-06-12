package com.headcount.headcount.admin;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {

    @Query("SELECT a FROM Admin a where a.username = ?1")
    Admin findMatch(String username);

    @Query("SELECT a FROM Admin a WHERE a.id = ?1")
    Admin findById(int id);
}
