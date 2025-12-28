import requests

from config import BACK4APP


class Back4AppClient:

    def __init__(self):
        self.headers = {
            "X-Parse-Application-Id": BACK4APP["app_id"],
            "X-Parse-REST-API-Key": BACK4APP["rest_key"],
            "Content-Type": "application/json"
        }

    def get_courses(self):
        r = requests.get(
            f"{BACK4APP['base_url']}/classes/Course",
            headers=self.headers
        )    
        
        return [(c["objectId"], c["title"]) for c in r.json()["results"]]

    def get_course_structure(self, course_id):
        params = {
            "where": {
                "course": {
                    "__type": "Pointer",
                    "className": "Course",
                    "objectId": course_id
                }
            },
            "include": "module"
        }

        modules = requests.get(
            f"{BACK4APP['base_url']}/classes/Module",
            headers=self.headers,
            json=params
        ).json()["results"]

        lessons = []
        for m in modules:
            l_params = {
                "where": {
                    "module": {
                        "__type": "Pointer",
                        "className": "Module",
                        "objectId": m["objectId"]
                    }
                }
            }
            l = requests.get(
                f"{BACK4APP['base_url']}/classes/Lesson",
                headers=self.headers,
                json=l_params
            ).json()["results"]

            for lesson in l:
                lessons.append((m["title"], lesson["title"]))

        return lessons

    def student_progress(self, student_id, course_id):
        return requests.post(
            f"{BACK4APP['base_url']}/functions/studentProgressByCourse",
            headers=self.headers,
            json={
                "studentId": student_id,
                "courseId": course_id
            }
        ).json()["result"]

    def students_with_many_failed_hw(self, course_id):
        return requests.post(
            f"{BACK4APP['base_url']}/functions/studentsWithManyFailedHW",
            headers=self.headers,
            json={"courseId": course_id}
        ).json()["result"]
