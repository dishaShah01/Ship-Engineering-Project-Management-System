CREATE TABLE department (
    dep_id INT PRIMARY KEY AUTO_INCREMENT,
    dep_name VARCHAR(20) NOT NULL,
    dep_manager VARCHAR(20) NOT NULL
);
CREATE TABLE employee (
    em_id INT PRIMARY KEY AUTO_INCREMENT,
    em_name VARCHAR(20) NOT NULL,
    em_phoneNo LONG NOT NULL,
    em_emailId VARCHAR(20) NOT NULL UNIQUE,
    em_address VARCHAR(60) NOT NULL,
    em_joinDate DATE NOT NULL,
    em_salary FLOAT NOT NULL,
    dep_id INT,
    em_leavingDate DATE DEFAULT NULL,
    FOREIGN KEY (dep_id)
        REFERENCES department (dep_id)
);

CREATE TABLE task (
    tsk_id INT PRIMARY KEY AUTO_INCREMENT,
    tsk_description VARCHAR(100) NOT NULL,
    tsk_estimatedCost FLOAT NOT NULL,
    tsk_actualCost FLOAT DEFAULT NULL,
    tsk_StartDate DATE NOT NULL,
    tsk_estimatedEndDate DATE NOT NULL,
    tsk_actualEndDate DATE DEFAULT NULL,
    tsk_remarks VARCHAR(70) DEFAULT NULL
);



CREATE TABLE contract (
    con_id INT PRIMARY KEY AUTO_INCREMENT,
    con_partyA VARCHAR(50) NOT NULL,
    con_partyB VARCHAR(50) NOT NULL,
    con_money FLOAT NOT NULL,
    con_signDate DATE NOT NULL,
    con_dueDate DATE,
    con_completionDate DATE DEFAULT NULL,
    con_description VARCHAR(150) NOT NULL,
    con_paymentTerms VARCHAR(100),
    con_remarks VARCHAR(70) DEFAULT NULL
);

CREATE TABLE project (
    pro_id INT PRIMARY KEY AUTO_INCREMENT,
    pro_name VARCHAR(20) NOT NULL,
    pro_description VARCHAR(200) NOT NULL,
    pro_StartDate DATE NOT NULL,
    pro_EndDate DATE DEFAULT NULL,
    pro_estimatedCost FLOAT NOT NULL,
    pro_actualCost FLOAT DEFAULT NULL,
    con_id INT,
    FOREIGN KEY (con_id)
        REFERENCES contract (con_id)
);

CREATE TABLE projectTeam (
    tm_id INT PRIMARY KEY AUTO_INCREMENT,
    tm_leader VARCHAR(20) NOT NULL,
    pro_id INT,
    FOREIGN KEY (pro_id)
        REFERENCES project (pro_id)
);

CREATE TABLE users (
    u_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL UNIQUE,
    u_password VARCHAR(15) NOT NULL,
    u_role VARCHAR(30) NOT NULL,
    tm_id INT,
    tsk_id INT,
    FOREIGN KEY (tm_id)
        REFERENCES projectTeam (tm_id),
    FOREIGN KEY (tsk_id)
        REFERENCES task (tsk_id)
);