package com.headcount.headcount.exam;

import com.headcount.headcount.exam.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ExamRepository extends JpaRepository<Exam, Integer> {

    @Query("SELECT a FROM Exam a where a.name = ?1")
    Exam findMatch(String name);

    @Query("SELECT a FROM Exam a WHERE a.id = ?1")
    Exam findById(int id);
}
