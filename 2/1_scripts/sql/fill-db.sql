INSERT INTO students (full_name, email)
VALUES ('Иван Иванов', 'ivan@test.ru'),
('Мария Петрова', 'maria@test.ru');

INSERT INTO teachers (full_name, email)
VALUES ('Алексей Смирнов', 'smirnov@test.ru');

INSERT INTO courses (title, description)
VALUES ('SQL для начинающих', 'Основы SQL и реляционных БД');

INSERT INTO modules (course_id, title, position)
VALUES (1, 'Введение', 1);

INSERT INTO lessons (id, module_id, title, lesson_type, position)
VALUES
(1, 1, 'Урок 1', 'video', 1),
(2, 1, 'Урок 2', 'text', 2),
(3, 1, 'Урок 3', 'test', 3)
ON CONFLICT DO NOTHING;

INSERT INTO homeworks (id, lesson_id, description)
VALUES
(1, 1, 'ДЗ 1'),
(2, 2, 'ДЗ 2'),
(3, 3, 'ДЗ 3')
ON CONFLICT DO NOTHING;

INSERT INTO homework_submissions (
    homework_id,
    student_id,
    status,
    submitted_at
)
VALUES
(1, 1, 'returned', now()),
(2, 1, 'returned', now()),
(3, 1, 'returned', now());

