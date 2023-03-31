package com.exam.question.service;

public interface BaseService<T> {
    T save(T t);

    T update(Long id, T t);

    void delete(T t);
}
