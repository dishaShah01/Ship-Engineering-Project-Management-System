CREATE OR REPLACE VIEW employee_department AS
    SELECT 
        employee.em_name,
        employee.em_emailID,
        department.dep_name,
        employee.em_salary
    FROM
        employee
            INNER JOIN
        department ON employee.dep_id = department.dep_id;

CREATE OR REPLACE VIEW contract_project AS
    SELECT 
        project.pro_name,
        contract.con_description,
        contract.con_partyA,
        contract.con_partyB AS con_name,
        contract.con_remarks,
        project.pro_id,
        contract.con_money,
        project.pro_estimatedCost,
        project.pro_actualCost
    FROM
        contract
            INNER JOIN
        project ON contract.con_id = project.con_id;

CREATE OR REPLACE VIEW contract_project_team AS
    SELECT 
        projectteam.tm_id, projectteam.tm_leader, contract_project.*
    FROM
        contract_project
            INNER JOIN
        projectteam ON contract_project.pro_id = projectteam.pro_id;

CREATE OR REPLACE VIEW user_team AS
    SELECT 
        contract_project_team.tm_id,
        contract_project_team.pro_name,
        contract_project_team.con_description,
        contract_project_team.con_remarks,
        users.username,
        users.tsk_id,
        users.u_role
    FROM
        users
            INNER JOIN
        contract_project_team ON contract_project_team.tm_id = users.tm_id;

CREATE OR REPLACE VIEW user_team_task AS
    SELECT 
        user_team.tm_id,
        user_team.pro_name,
        user_team.con_description,
        user_team.con_remarks,
        user_team.username,
        user_team.u_role,
        task.*
    FROM
        user_team
            JOIN
        task ON user_team.tsk_id = task.tsk_id;

