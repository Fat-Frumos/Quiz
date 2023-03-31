package com.exam.question.domain;

import org.springframework.stereotype.Component;

@Component
public class QuizMapper implements EntityMapper<Quiz, QuizDto> {

    private QuizMapper() {
    }

    @Override
    public QuizDto toDto(final Quiz quiz) {
        if (quiz == null) {
            throw new NullPointerException("Quiz must not be null");
        }
        return QuizDto.builder()
                .id(quiz.getId())
                .title(quiz.getTitle())
                .description(quiz.getDescription())
                .build();
    }

    @Override
    public Quiz toEntity(final QuizDto quizDto) {
        if (quizDto == null) {
            throw new NullPointerException("Certificate Dto must not be null");
        }
        return Quiz.builder()
                .id(quizDto.getId())
                .title(quizDto.getTitle())
                .description(quizDto.getDescription())
                .build();
    }
}
