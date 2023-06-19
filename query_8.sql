SELECT t.fullname, sbj.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN teachers t ON t.id = sbj.teacher_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE t.id = 2
GROUP BY sbj.id;