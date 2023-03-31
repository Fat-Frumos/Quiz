package com.exam.question.service;

import com.exam.question.domain.Quiz;
import com.exam.question.domain.QuizDto;
import com.exam.question.domain.QuizMapper;
import com.exam.question.domain.QuizRepository;
import com.exam.question.exception.QuizNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class DefaultQuizService implements QuizService {
    private final QuizRepository quizRepository;
    private final QuizMapper mapper;

    @Override
    public QuizDto save(QuizDto quizDto) {
        return null;
    }

    @Override
    public QuizDto update(Long id, QuizDto quizDto) {
        return null;
    }

    @Override
    public void delete(QuizDto quizDto) {

    }

    @Override
    public List<QuizDto> getAllQuizzes() {
        return quizRepository.findAll()
                .stream().map(mapper::toDto)
                .collect(Collectors.toList());

    }

    @Override
    public QuizDto getQuizById(Long id) {
        return mapper.toDto(
                quizRepository.findById(id)
                        .orElseThrow(() ->
                                new QuizNotFoundException(
                                        "Quiz not found with id " + id)));
    }

    @Override
    public QuizDto getRandom() {
        return mapper.toDto(
                quizRepository.getRandom()
                        .orElseThrow(() ->
                                new QuizNotFoundException(
                                        "Quiz not found")));
    }

    @Override
    public QuizDto update(Long id, Quiz quiz) {
        QuizDto existingQuiz = getQuizById(id);
        existingQuiz.setTitle(quiz.getTitle());
        existingQuiz.setDescription(quiz.getDescription());
//        existingQuiz.setAnswers(quiz.getAnswers());
        return mapper.toDto(
                quizRepository.save(
                        mapper.toEntity(
                                existingQuiz)));
    }
}
