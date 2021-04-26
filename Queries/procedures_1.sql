create procedure calcEstimatedProfit()
SELECT 
    contract_project.con_money - SUM(contract_project.pro_estimatedCost) AS estimated_profit,
    con_name
FROM
    contract_project
GROUP BY con_name;


create procedure calcActualProfit()
SELECT 
    contract_project.con_money - SUM(contract_project.pro_actualCost) AS actual_profit,
    con_name
FROM
    contract_project
GROUP BY con_name;


create procedure getTeamDetails()
SELECT 
    username,
    u_role,
    tsk_description,
    tsk_estimatedEndDate,
    tsk_remarks
FROM
    user_team_task
WHERE
    tm_id = (SELECT 
            tm_id
        FROM
            contract_project_team
        WHERE
            tm_leader = 'Fgh');

create procedure departmentStats()
SELECT 
    dep_name,
    MAX(em_salary) AS maxSalary,
    MIN(em_salary) AS minSalary,
    COUNT(em_name) AS totalEmployees
FROM
    employee_department
GROUP BY (dep_name);