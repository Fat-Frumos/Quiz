package com.exam.question.service;

import com.exam.question.domain.Quiz;
import com.exam.question.domain.QuizDto;

import java.util.List;

public interface QuizService extends BaseService<QuizDto> {
    List<QuizDto> getAllQuizzes();

    QuizDto getQuizById(Long id);

    QuizDto getRandom();

    QuizDto update(Long id, Quiz quiz);
}
