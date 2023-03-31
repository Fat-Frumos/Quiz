package com.exam.question.web;

import com.exam.question.domain.QuizDto;
import com.exam.question.service.QuizService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class QuizController {

    private final QuizService quizService;

    @GetMapping("/questions")
    public ResponseEntity<List<QuizDto>> getAllQuestions() {
        List<QuizDto> quizzes = quizService.getAllQuizzes();
        return new ResponseEntity<>(quizzes, HttpStatus.OK);
    }

    @GetMapping("/questions/{id}")
    public ResponseEntity<QuizDto> getQuestionById(
            @PathVariable("id") Long id) {
        QuizDto quiz = quizService.getQuizById(id);
        return new ResponseEntity<>(quiz, HttpStatus.OK);
    }
}
