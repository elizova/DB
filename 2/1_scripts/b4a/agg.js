Parse.Cloud.define("studentsWithManyFailedHW", async (request) => {
  const courseId = request.params.courseId;

  const Course = Parse.Object.extend("Course");
  const course = await new Parse.Query(Course).get(courseId);

  const moduleQuery = new Parse.Query("Module");
  moduleQuery.equalTo("course", course);

  const lessonQuery = new Parse.Query("Lesson");
  lessonQuery.matchesQuery("module", moduleQuery);

  const hwQuery = new Parse.Query("Homework");
  hwQuery.matchesQuery("lesson", lessonQuery);

  const submissionQuery = new Parse.Query("HomeworkSubmission");
  submissionQuery.equalTo("status", "returned");
  submissionQuery.matchesQuery("homework", hwQuery);
  submissionQuery.include("student");

  const submissions = await submissionQuery.find({ useMasterKey: true });

  const counter = {};

  submissions.forEach(s => {
    const id = s.get("student").id;
    counter[id] = (counter[id] || 0) + 1;
  });

  return Object.entries(counter)
    .filter(([_, count]) => count > 2);
});

Parse.Cloud.define("studentProgressByCourse", async (request) => {
  const { studentId, courseId } = request.params;

  const course = await new Parse.Query("Course").get(courseId);
  const student = await new Parse.Query("Student").get(studentId);

  const moduleQuery = new Parse.Query("Module");
  moduleQuery.equalTo("course", course);

  const lessonQuery = new Parse.Query("Lesson");
  lessonQuery.matchesQuery("module", moduleQuery);

  const progressQuery = new Parse.Query("StudentProgress");
  progressQuery.equalTo("student", student);
  progressQuery.matchesQuery("lesson", lessonQuery);
  progressQuery.include("lesson");

  return await progressQuery.find({ useMasterKey: true });
});
