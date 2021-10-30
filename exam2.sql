
-- SQL NUMBER 1
SELECT 
    CONCAT('T', '00000', tt.id) AS ID,
    tt.nickname AS Nickname, 
    CASE tt.status
        when 0 then 'Discontinued'
        when 1 then 'Active'
        when 2 then 'Deactivated'
    END AS Status,
    CASE ttr.role
        when 1 then 'Trainer'
        when 2 then 'Assessor'
        when 3 then 'Staff'
    END AS Roles 
FROM `trn_teacher` AS tt 
LEFT JOIN `trn_teacher_role` AS ttr 
ON ttr.teacher_id = tt.id
LIMIT 1

-- SQL NUMBER 2
SELECT 
    tt.id AS ID,
    tt.nickname AS Nickname,
    (SELECT SUM(if(ttt.status = '1', 1, 0)) AS open FROM trn_time_table AS ttt) AS Open,
    (SELECT SUM(if(ttt.status = '3', 1, 0)) AS reserved FROM trn_time_table AS ttt) AS Reserved,
    (SELECT SUM(if(te.result = '1', 1, 0)) AS taught FROM trn_evaluation AS te) AS Taught,
    (SELECT SUM(if(te.result = '2', 1, 0)) AS noshow FROM trn_evaluation AS te) AS NoShow
FROM `trn_teacher` AS tt 
LEFT JOIN `trn_teacher_role` AS ttr 
ON ttr.teacher_id = tt.id
WHERE tt.status = 1 || 2
AND ttr.role = 1 || 2
LIMIT 1