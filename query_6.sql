SELECT gr.name, s.fullname as gr_student
FROM students s
JOIN groups gr ON gr.id = s.group_id
WHERE gr.id = 2;