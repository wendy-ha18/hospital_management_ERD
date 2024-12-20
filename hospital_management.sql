use hospital_management;


create table hospital (
	id int not null,
	name varchar(100) not null,
	address varchar(200) not null,
	website varchar(100) not null,
	phone int not null,
	primary key (id)
);

create table department (
	id int not null,
	name varchar(100) not null,
	quantity_staff int not null,
    hospital_id int not null,
    primary key (id),
    foreign key (hospital_id) references hospital(id)
);

create table staff (
	id int not null,
	frist_name varchar(100) not null,
	last_name varchar(100) not null,
    title varchar(200) not null,
	dob date not null,
	phone int not null,
	email varchar(100) not null,
	address varchar(500) not null,
    department_id int not null,
    primary key (id),
    foreign key (department_id) references department(id)
);

create table patient (
	id int not null,
	frist_name varchar(100) not null,
	last_name varchar(100) not null,
	dob date not null,
	phone int not null,
	email varchar(100) not null,
	address varchar(500) not null,
    staff_id int not null,
    primary key (id),
    foreign key (staff_id) references staff(id)
);

create table medical_record (
	id int not null,
    patient_id int not null,
    staff_id int not null,
    record_date date not null, 
    symptom varchar(500) not null,
    diagnoses varchar(500) not null,
    equipment_id int not null,
    treatment_id int not null,
    medicine_id int not null,
    primary key (id),
    foreign key (staff_id) references staff(id),
    foreign key (patient_id) references patient(id),
    foreign key (equipment_id) references equipment(id),
    foreign key (treatment_id) references treatment(id),
	foreign key (medicine_id) references medicine(id)
);

create table treatment (
	id int not null,
    treatment_type varchar(200) not null,
    primary key (id)
);

create table medicine (
	id int not null,
    name varchar(200) not null,
    quantity int not null,
    available_quantity int not null,
    description varchar(200) not null,
    expire_date date not null,
    primary key (id)
);

create table equipment (
	id int not null,
    name varchar(100) not null,
    staff_id int not null,
    request_date date not null,
    return_date date not null,
    primary key (id),
    foreign key (staff_id) references staff(id)
);

create table MRI_scan_result (
	id int not null,
    equipment_id int not null,
    patient_id int not null,
    result varchar(200) not null, /*results of MRI scan are pictures --> store picture links */
    result_date int not null,
    primary key (id),
    foreign key (patient_id) references patient(id),
    foreign key (equipment_id) references equipment(id)
);

create table heart_monitoring_result (
	id int not null,
    equipment_id int not null,
    patient_id int not null,
    result int not null, /*results of Heart Monitooring are numbers --> store numbers */
    result_date int not null,
    primary key (id),
    foreign key (patient_id) references patient(id),
    foreign key (equipment_id) references equipment(id)
);

create table blood_monitoring_result (
	id int not null,
    equipment_id int not null,
    patient_id int not null,
    result int not null, /*results of Blood Pressure Monitooring are numbers --> store numbers */
    result_date int not null,
    primary key (id),
    foreign key (patient_id) references patient(id),
    foreign key (equipment_id) references equipment(id)
);







