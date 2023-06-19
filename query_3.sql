SELECT gr.name, sbj.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN groups gr ON gr.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id
WHERE sbj.id = 3
GROUP BY gr.id
LIMIT 6;