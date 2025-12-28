from back4app_client import Back4AppClient
from sql_client import SQLClient


def run_sql():
    db = SQLClient()
    print("SQL COURSES:", db.get_courses())
    print("FAILED:", db.students_with_many_failed_hw(1))


def run_back4app():
    api = Back4AppClient()
    print("BaaS COURSES:", api.get_courses())
    print("FAILED:", api.students_with_many_failed_hw("qtgATrwEYq"))


if __name__ == "__main__":
    print("=== SQL ===")
    run_sql()

    print("\n=== BACK4APP ===")
    run_back4app()
