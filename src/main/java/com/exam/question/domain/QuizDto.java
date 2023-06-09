package com.exam.question.domain;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class QuizDto {
    private Long id;
    private String title;
    private String description;
}