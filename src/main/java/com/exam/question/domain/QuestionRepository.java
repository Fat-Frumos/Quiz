//package com.exam.question;
//
//import com.exam.question.domain.Question;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.stereotype.Repository;
//
//import java.util.Optional;
//
//@Repository
//public interface QuestionRepository extends JpaRepository<Question, Long> {
//    @Query(value = "SELECT * FROM quiz ORDER BY RANDOM() LIMIT 1", nativeQuery = true)
//    Optional<Question> getRandom();
//}
