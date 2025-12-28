-- Студенты, не сдавшие более 2 ДЗ на курсе Z

SELECT s.full_name, COUNT(hs.id) AS failed_count
FROM students s
JOIN homework_submissions hs ON hs.student_id = s.id
JOIN homeworks h ON h.id = hs.homework_id
JOIN lessons l ON l.id = h.lesson_id
JOIN modules m ON m.id = l.module_id
JOIN courses c ON c.id = m.course_id
WHERE c.title = 'SQL для начинающих'
  AND hs.status = 'returned'
GROUP BY s.full_name
HAVING COUNT(hs.id) > 2;

-- Прогресс студента по курсу

SELECT l.title, sp.completed
FROM student_progress sp
JOIN lessons l ON l.id = sp.lesson_id
JOIN modules m ON m.id = l.module_id
JOIN courses c ON c.id = m.course_id
WHERE sp.student_id = 1
  AND c.id = 1;

-- Все ДЗ, ожидающие проверки преподавателем

SELECT hs.id, s.full_name, h.description
FROM homework_submissions hs
JOIN students s ON s.id = hs.student_id
JOIN homeworks h ON h.id = hs.homework_id
WHERE hs.status = 'submitted';

