SELECT 
    *
FROM
    shipengineeringproject.department;
INSERT INTO department(dep_name,dep_manager)
VALUES("Engineering","Xyz");
INSERT INTO department(dep_name,dep_manager)
VALUES("Finance","Pqr");
INSERT INTO department(dep_name,dep_manager)
VALUES("Supplies","Jkl");
INSERT INTO department(dep_name,dep_manager)
VALUES("Quality inspection","Qwe");


SELECT 
    *
FROM
    shipengineeringproject.employee;
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Abc",123456789,"abc@gmail.com","Mumbai,India","2020-05-24",80000,2);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Xyz",945837213,"xyz@gmail.com","Navi Mumbai,India","2020-03-12",85000,1);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Tyu",173559789,"tyu@gmail.com","Mumbai,India","2019-02-10",70000,2);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Pqr",123278237,"pqr@gmail.com","Mumbai,India","2020-05-24",80000,2);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Fgh",193498489,"fgh@gmail.com","Navi Mumbai,India","2020-02-14",80000,1);
UPDATE employee 
SET 
    dep_id = 4
WHERE
    em_id = 3;
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Rdf",127563789,"rdf@gmail.com","Mumbai,India","2020-02-13",80000,3);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Qwe",952866789,"qwe@gmail.com","Mumbai,India","2020-05-24",80000,4);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Jkl",123492736,"jkl@gmail.com","Mumbai,India","2020-03-19",85000,3);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Uit",1856456789,"uit@gmail.com","Navi Mumbai,India","2020-01-24",70000,4);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Vrt",936526789,"vrt@gmail.com","Mumbai,India","2019-05-24",80000,1);
INSERT INTO employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
VALUES("Yer",957625789,"yer@gmail.com","Mumbai,India","2020-11-24",70000,2);

SELECT 
    *
FROM
    shipengineeringproject.contract;
INSERT INTO contract
VALUES(1,"A","B",7000000,"2021-03-10","2022-06-01",NULL,"build something","3/4th before completion and 1/4th after",NULL);
INSERT INTO contract
VALUES(2,"A","C",6000000,"2021-01-20","2021-12-30",NULL,"build something","whole before completion","Use resources from company W");

SELECT 
    *
FROM
    shipengineeringproject.project;
INSERT INTO project
VALUES(1,"C1","designing and bulding","2021-03-30",NULL,4700000,NULL,2);
INSERT INTO project
VALUES(2,"C2","Inspection and quality check","2021-04-30",NULL,700000,NULL,2);
INSERT INTO project
VALUES(3,"B","making something","2021-04-30",NULL,4300000,NULL,1);

SELECT 
    *
FROM
    shipengineeringproject.projectteam;
INSERT INTO projectteam
VALUES(1,"Xyz",3);
INSERT INTO projectteam
VALUES(2,"Qwe",2);
INSERT INTO projectteam
VALUES(3,"Fgh",1);

SELECT 
    *
FROM
    shipengineeringproject.task;
INSERT INTO task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
VALUES("Do.....",2000000,"2021-03-30","2021-05-30",NULL);
INSERT INTO task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
VALUES("Do.....",2000000,"2021-03-30","2021-05-30",NULL);
INSERT INTO task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
VALUES("Do.....",1000000,"2021-04-30","2021-10-30",NULL);
INSERT INTO task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
VALUES("Do.....",1000000,"2021-03-30","2021-11-30",NULL);
INSERT INTO task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
VALUES("Do.....",5000000,"2021-11-30","2022-05-30",NULL);

SELECT 
    *
FROM
    shipengineeringproject.users;
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Abc_!",MD5("abc123"),"Audit",1,1);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Xyz_1",MD5("xyz123"),"ship design",1,1);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Tyu_1",MD5("tyu123"),"inspect",1,1);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Pqr",MD5("pqr123"),"Audit",1,2);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Fgh",MD5("fgh123"),"ship building",3,2);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Rdf_1",MD5("rdf123"),"Resources management",1,2);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Qwe",MD5("qwe123"),"Audit",2,3);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Jld",MD5("jld123"),"ship building",2,3);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Rdf_2",MD5("rdf123"),"Resources management",2,3);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Uit",MD5("uit123"),"quality check",2,4);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Vrt",MD5("vrt123"),"ship design and building",2,4);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Yer",MD5("yer123"),"Remittance",2,4);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Abc_3",MD5("abc123"),"Audit",3,5);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Xyz_3",MD5("xyz123"),"ship design",3,5);
INSERT INTO users(username,u_password,u_role,tm_id,tsk_id)
VALUES("Tyu_3",MD5("tyu123"),"inspect",3,5);

