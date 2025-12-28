import psycopg2

from config import PG_CONFIG


class SQLClient:

    def __init__(self):
        self.conn = psycopg2.connect(**PG_CONFIG)

    def get_courses(self):
        with self.conn.cursor() as cur:
            cur.execute("SELECT id, title FROM courses;")
            return cur.fetchall()

    def get_course_structure(self, course_id):
        query = """
        SELECT m.title, l.title
        FROM modules m
        JOIN lessons l ON l.module_id = m.id
        WHERE m.course_id = %s
        ORDER BY m.position, l.position;
        """
        with self.conn.cursor() as cur:
            cur.execute(query, (course_id,))
            return cur.fetchall()

    def student_progress(self, student_id, course_id):
        query = """
        SELECT l.title, sp.completed
        FROM student_progress sp
        JOIN lessons l ON l.id = sp.lesson_id
        JOIN modules m ON m.id = l.module_id
        WHERE sp.student_id = %s AND m.course_id = %s;
        """
        with self.conn.cursor() as cur:
            cur.execute(query, (student_id, course_id))
            return cur.fetchall()

    def students_with_many_failed_hw(self, course_id):
        query = """
        SELECT s.full_name, COUNT(*) AS failed
        FROM students s
        JOIN homework_submissions hs ON hs.student_id = s.id
        JOIN homeworks h ON h.id = hs.homework_id
        JOIN lessons l ON l.id = h.lesson_id
        JOIN modules m ON m.id = l.module_id
        WHERE m.course_id = %s AND hs.status = 'returned'
        GROUP BY s.full_name
        HAVING COUNT(*) > 2;
        """
        with self.conn.cursor() as cur:
            cur.execute(query, (course_id,))
            return cur.fetchall()
