//package com.exam.question.service;
//
//import com.exam.question.QuestionRepository;
//import com.exam.question.domain.Question;
//import com.exam.question.exception.QuestionNotFoundException;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//@Service
//@RequiredArgsConstructor
//public class QuestionService implements BaseService<Question> {
//
//    private final QuestionRepository repository;
//
//    @Override
//    public Question save(Question question) {
//        return repository.save(question);
//    }
//
//    @Override
//    public Question update(Long id, Question question) {
//        return null;
//    }
//
//    public Question getRandom() {
//        return repository.getRandom().orElseThrow(() ->
//                new QuestionNotFoundException(
//                        "Question not found"));
//    }
//
//    @Override
//    public void delete(Question question) {
//        repository.delete(question);
//    }
//}
