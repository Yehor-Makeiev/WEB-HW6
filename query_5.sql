SELECT t.fullname, sbj.name as sbj_teacher
FROM subjects sbj
JOIN teachers t ON t.id = sbj.teacher_id
WHERE t.id = 4;