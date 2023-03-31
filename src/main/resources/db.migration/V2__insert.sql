INSERT INTO quiz (title, description)
VALUES ('Java Basics', 'A quiz about Java fundamentals'),
       ('Java OOP', 'A quiz about Java object-oriented programming'),
       ('Java Collections', 'A quiz about Java collections framework'),
       ('Java Threads', 'A quiz about Java concurrency and multithreading'),
       ('Java Exceptions', 'A quiz about Java exception handling'),
       ('Java IO', 'A quiz about Java input/output operations'),
       ('Java Networking', 'A quiz about Java networking'),
       ('Java Servlets', 'A quiz about Java servlets and web applications'),
       ('Java Spring', 'A quiz about Java Spring framework'),
       ('Java Hibernate', 'A quiz about Java Hibernate ORM framework');

-- Questions for quiz 1: Java Basics
INSERT INTO answer (text, correct, question_id)
VALUES ('What is the latest version of Java?', 1, 1),
       ('What is the main difference between JDK and JRE?', 0, 1),
       ('What is the output of the following code: System.out.println(1 + "2" + 3 + 4);', 1234, 1),
       ('What is a JVM?', 1, 1);

-- Questions for quiz 2: Java OOP
INSERT INTO answer (text, correct, question_id)
VALUES ('What is inheritance?', 1, 2),
       ('What is a constructor?', 1, 2),
       ('What is a static method?', 0, 2),
       ('What is polymorphism?', 1, 2);

-- Questions for quiz 3: Java Collections
INSERT INTO answer (text, correct, question_id)
VALUES ('What is a List?', 1, 3),
       ('What is a Map?', 1, 3),
       ('What is a Set?', 1, 3),
       ('What is the difference between List and Set?', 0, 3);

-- Questions for quiz 4: Java Threads
INSERT INTO answer (text, correct, question_id)
VALUES ('What is a thread?', 1, 4),
       ('What is thread synchronization?', 1, 4),
       ('What is a race condition?', 1, 4),
       ('What is a deadlock?', 1, 4);

-- Questions for quiz 5: Java Exceptions
INSERT INTO answer (text, correct, question_id)
VALUES ('What is an exception?', 1, 5),
       ('What is a try-catch block?', 1, 5),
       ('What is a checked exception?', 1, 5),
       ('What is an unchecked exception?', 1, 5);

-- Questions for quiz 6: Java IO
INSERT INTO answer (text, correct, question_id)
VALUES ('What is a file?', 1, 6),
       ('What is a FileInputStream?', 1, 6),
       ('What is a BufferedReader?', 1, 6),
       ('What is a PrintWriter?', 1, 6);

-- Create answers for question 1
INSERT INTO answer (text, correct, question_id)
VALUES ('A collection of elements with a defined order and allows duplicates.', 1, 1),
       ('A collection of key-value pairs where each key is unique.', 0, 1),
       ('A collection of unordered elements that allows duplicates.', 0, 1),
       ('A collection of unique elements with no defined order.', 0, 1);

INSERT INTO quiz (title, description) VALUES ('Java Threads', 'Test your knowledge of Java Threads');

INSERT INTO answer (text, correct, question_id)
VALUES ('What is a thread?', 1, 4),
       ('What is a race condition?', 0, 4),
       ('What is a synchronized block?', 1, 4),
       ('What is a deadlock?', 1, 4);

INSERT INTO answer (text, correct, question_id)
VALUES ('What is a Thread Pool?', 1, 4),
       ('What is the difference between a thread and a process?', 1, 4),
       ('What is a ThreadLocal?', 1, 4),
       ('What is the wait-notify mechanism?', 1, 4);

INSERT INTO answer (text, correct, question_id)
VALUES ('What is the purpose of the join() method?', 1, 4),
       ('What is the yield() method?', 0, 4),
       ('What is the purpose of the interrupt() method?', 1, 4),
       ('What is the purpose of the sleep() method?', 1, 4);

-- Create answers for question 2
INSERT INTO answer (text, correct, question_id)
VALUES ('A collection of key-value pairs where each key is unique.', 1, 2),
       ('A collection of elements with a defined order and allows duplicates.', 0, 2),
       ('A collection of unique elements with no defined order.', 0, 2),
       ('A collection of unordered elements that allows duplicates.', 0, 2);

-- Create answers for question 3
INSERT INTO answer (text, correct, question_id)
VALUES ('A collection of unique elements with no defined order.', 1, 3),
       ('A collection of elements with a defined order and allows duplicates.', 0, 3),
       ('A collection of key-value pairs where each key is unique.', 0, 3),
       ('A collection of unordered elements that allows duplicates.', 0, 3);

-- Create answers for question 4
INSERT INTO answer (text, correct, question_id)
VALUES ('A List allows duplicates, while a Set does not.', 1, 4),
       ('A Set allows duplicates, while a List does not.', 0, 4),
       ('A List and a Set are the same thing.', 0, 4),
       ('A List and a Set are completely different.', 0, 4);

