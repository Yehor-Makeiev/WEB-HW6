SELECT gr.name, s.fullname, sbj.name, g.grade as g_students
FROM grades g
JOIN groups gr ON gr.id = s.group_id
JOIN students s ON s.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id
WHERE gr.id = 2 AND sbj.id = 4;