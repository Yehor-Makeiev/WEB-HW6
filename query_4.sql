SELECT gr.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN groups gr ON gr.id = g.student_id
WHERE gr.id = 3;