package com.exam.question.domain;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface EntityMapper<E, D> {

    D toDto(E e);

    E toEntity(D d);
}