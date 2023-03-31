package com.exam.question.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface QuizRepository extends JpaRepository<Quiz, Long> {

    @Query(value = "SELECT * FROM quiz ORDER BY RANDOM() LIMIT 1", nativeQuery = true)
    Optional<Quiz> getRandom();
}

