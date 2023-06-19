SELECT s.fullname, t.fullname, sbj.name
FROM subjects sbj
LEFT JOIN grades g ON sbj.id = g.subject_id
LEFT JOIN teachers t ON t.id = sbj.teacher_id
LEFT JOIN students s ON s.id = g.student_id
WHERE s.id = 25 and t.id = 3
GROUP BY sbj.id;