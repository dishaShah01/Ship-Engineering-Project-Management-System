SELECT * FROM shipengineeringproject.department;
insert into department(dep_name,dep_manager)
values("Engineering","Xyz");
insert into department(dep_name,dep_manager)
values("Finance","Pqr");
insert into department(dep_name,dep_manager)
values("Supplies","Jkl");
insert into department(dep_name,dep_manager)
values("Quality inspection","Qwe");


SELECT * FROM shipengineeringproject.employee;
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Abc",123456789,"abc@gmail.com","Mumbai,India","2020-05-24",80000,2);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Xyz",945837213,"xyz@gmail.com","Navi Mumbai,India","2020-03-12",85000,1);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Tyu",173559789,"tyu@gmail.com","Mumbai,India","2019-02-10",70000,2);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Pqr",123278237,"pqr@gmail.com","Mumbai,India","2020-05-24",80000,2);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Fgh",193498489,"fgh@gmail.com","Navi Mumbai,India","2020-02-14",80000,1);
update employee
set dep_id=4
where em_id=3;
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Rdf",127563789,"rdf@gmail.com","Mumbai,India","2020-02-13",80000,3);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Qwe",952866789,"qwe@gmail.com","Mumbai,India","2020-05-24",80000,4);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Jkl",123492736,"jkl@gmail.com","Mumbai,India","2020-03-19",85000,3);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Uit",1856456789,"uit@gmail.com","Navi Mumbai,India","2020-01-24",70000,4);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Vrt",936526789,"vrt@gmail.com","Mumbai,India","2019-05-24",80000,1);
insert into employee(em_name,em_phoneNo,em_emailId,em_address,em_joinDate,em_salary,dep_id)
values("Yer",957625789,"yer@gmail.com","Mumbai,India","2020-11-24",70000,2);

SELECT * FROM shipengineeringproject.contract;
insert into contract
values(1,"A","B",7000000,"2021-03-10","2022-06-01",null,"build something","3/4th before completion and 1/4th after",null);
insert into contract
values(2,"A","C",6000000,"2021-01-20","2021-12-30",null,"build something","whole before completion","Use resources from company W");

SELECT * FROM shipengineeringproject.project;
insert into project
values(1,"C1","designing and bulding","2021-03-30",null,4700000,null,2);
insert into project
values(2,"C2","Inspection and quality check","2021-04-30",null,700000,null,2);
insert into project
values(3,"B","making something","2021-04-30",null,4300000,null,1);

SELECT * FROM shipengineeringproject.projectteam;
insert into projectteam
values(1,"Xyz",3);
insert into projectteam
values(2,"Qwe",2);
insert into projectteam
values(3,"Fgh",1);

SELECT * FROM shipengineeringproject.task;
insert into task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
values("Do.....",2000000,"2021-03-30","2021-05-30",null);
insert into task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
values("Do.....",2000000,"2021-03-30","2021-05-30",null);
insert into task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
values("Do.....",1000000,"2021-04-30","2021-10-30",null);
insert into task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
values("Do.....",1000000,"2021-03-30","2021-11-30",null);
insert into task(tsk_description,tsk_estimatedCost,tsk_startDate,tsk_estimatedEndDate,tsk_remarks)
values("Do.....",5000000,"2021-11-30","2022-05-30",null);

SELECT * FROM shipengineeringproject.users;
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Abc_!",md5("abc123"),"Audit",1,1);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Xyz_1",md5("xyz123"),"ship design",1,1);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Tyu_1",md5("tyu123"),"inspect",1,1);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Pqr",md5("pqr123"),"Audit",1,2);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Fgh",md5("fgh123"),"ship building",3,2);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Rdf_1",md5("rdf123"),"Resources management",1,2);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Qwe",md5("qwe123"),"Audit",2,3);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Jld",md5("jld123"),"ship building",2,3);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Rdf_2",md5("rdf123"),"Resources management",2,3);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Uit",md5("uit123"),"quality check",2,4);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Vrt",md5("vrt123"),"ship design and building",2,4);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Yer",md5("yer123"),"Remittance",2,4);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Abc_3",md5("abc123"),"Audit",3,5);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Xyz_3",md5("xyz123"),"ship design",3,5);
insert into users(username,u_password,u_role,tm_id,tsk_id)
values("Tyu_3",md5("tyu123"),"inspect",3,5);

