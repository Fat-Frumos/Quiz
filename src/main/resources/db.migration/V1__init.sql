drop table if exists answer;
drop table if exists quiz;

CREATE TABLE quiz
(
    id          SERIAL PRIMARY KEY,
    title       VARCHAR(255),
    description TEXT
);

CREATE TABLE answer
(
    id          SERIAL PRIMARY KEY,
    text        TEXT,
    correct     INTEGER,
    question_id INTEGER,
    FOREIGN KEY (question_id) REFERENCES quiz (id)
);
