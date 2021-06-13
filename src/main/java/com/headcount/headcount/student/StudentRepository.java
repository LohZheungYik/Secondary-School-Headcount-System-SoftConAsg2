package com.headcount.headcount.student;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

    @Query("SELECT s FROM Student s WHERE s.ic = ?1")
    Student findByIc(String ic);

    @Query("SELECT s FROM Student s WHERE s.id = ?1")
    Student findById(int id);
}
