-- Active: 1766885942615@@127.0.0.1@8054@postgres
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE course_teachers (
    course_id INT REFERENCES courses(id) ON DELETE CASCADE,
    teacher_id INT REFERENCES teachers(id) ON DELETE CASCADE,
    PRIMARY KEY (course_id, teacher_id)
);

CREATE TABLE modules (
    id SERIAL PRIMARY KEY,
    course_id INT REFERENCES courses(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    position INT NOT NULL
);

CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    module_id INT REFERENCES modules(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    lesson_type TEXT CHECK (lesson_type IN ('video', 'text', 'test')),
    position INT NOT NULL
);

CREATE TABLE homeworks (
    id SERIAL PRIMARY KEY,
    lesson_id INT REFERENCES lessons(id) ON DELETE CASCADE,
    description TEXT NOT NULL,
    deadline TIMESTAMP
);

CREATE TABLE homework_submissions (
    id SERIAL PRIMARY KEY,
    homework_id INT REFERENCES homeworks(id) ON DELETE CASCADE,
    student_id INT REFERENCES students(id) ON DELETE CASCADE,
    submitted_at TIMESTAMP DEFAULT now(),
    status TEXT CHECK (status IN ('submitted', 'returned', 'accepted'))
);

CREATE TABLE homework_reviews (
    id SERIAL PRIMARY KEY,
    submission_id INT REFERENCES homework_submissions(id) ON DELETE CASCADE,
    teacher_id INT REFERENCES teachers(id),
    comment TEXT,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE student_progress (
    student_id INT REFERENCES students(id) ON DELETE CASCADE,
    lesson_id INT REFERENCES lessons(id) ON DELETE CASCADE,
    completed BOOLEAN DEFAULT false,
    completed_at TIMESTAMP,
    PRIMARY KEY (student_id, lesson_id)
);
