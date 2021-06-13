package com.headcount.headcount.kelas;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface KelasRepository extends JpaRepository<Kelas, Integer> {

    @Query("SELECT a FROM Kelas a where a.name = ?1")
    Kelas findMatch(String name);

    @Query("SELECT a FROM Kelas a WHERE a.id = ?1")
    Kelas findById(int id);
}
