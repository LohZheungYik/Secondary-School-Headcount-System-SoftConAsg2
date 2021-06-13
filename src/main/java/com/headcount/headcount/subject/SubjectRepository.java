package com.headcount.headcount.subject;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SubjectRepository extends JpaRepository<Subject, Integer> {

    @Query("SELECT s FROM Subject s WHERE s.name = ?1 AND s.code = ?2")
    Subject findMatch(String name, String code);

    @Query("SELECT s FROM Subject s WHERE s.id = ?1")
    Subject findById(int id);
}
