SELECT s.fullname , ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id
GROUP by s.id
ORDER BY avg_grade DESC
LIMIT 5;

SELECT sbj.name, s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE sbj.id = 4
GROUP by s.id
ORDER BY avg_grade DESC
LIMIT 1;

SELECT gr.name, sbj.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN groups gr ON gr.id = g.student_id 
JOIN subjects sbj ON sbj.id = g.subject_id
WHERE sbj.id = 3
GROUP BY gr.id
LIMIT 6;

SELECT gr.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN groups gr ON gr.id = g.student_id
WHERE gr.id = 3;

SELECT t.fullname, sbj.name as sbj_teacher
FROM subjects sbj
JOIN teachers t ON t.id = sbj.teacher_id
WHERE t.id = 4;

SELECT gr.name, s.fullname as gr_student
FROM students s 
JOIN groups gr ON gr.id = s.group_id 
WHERE gr.id = 2;

SELECT gr.name, s.fullname, sbj.name, g.grade as g_students
FROM grades g
JOIN groups gr ON gr.id = s.group_id
JOIN students s ON s.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id 
WHERE gr.id = 2 AND sbj.id = 4;

SELECT t.fullname, sbj.name, ROUND(AVG(g.grade)) as avg_grade
FROM grades g
JOIN teachers t ON t.id = sbj.teacher_id 
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE t.id = 2
GROUP BY sbj.id;

SELECT s.fullname, sbj.name as sbj_name
FROM subjects sbj
LEFT JOIN students s ON s.id = grades.student_id 
LEFT JOIN grades ON sbj.id = grades.subject_id 
WHERE s.id = 10;

SELECT s.fullname, t.fullname, sbj.name
FROM subjects sbj
LEFT JOIN grades g ON sbj.id = g.subject_id
LEFT JOIN teachers t ON t.id = sbj.teacher_id 
LEFT JOIN students s ON s.id = g.student_id
WHERE s.id = 25 and t.id = 3
GROUP BY sbj.id;