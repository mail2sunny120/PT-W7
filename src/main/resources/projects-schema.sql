DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;
 
CREATE TABLE project (
    project_id int AUTO_INCREMENT NOT NULL,
    project_name varchar(128) NOT NULL,
    estimated_hours decimal(7,2),
    actual_hours decimal(7,2),
    difficulty int,
	notes text,
	PRIMARY KEY (project_id)
);

CREATE TABLE material (
    material_id int AUTO_INCREMENT NOT NULL,
	project_id int NOT NULL,
    material_name varchar(128) NOT NULL,
    num_required int,
    step_order int,
	PRIMARY KEY (material_id),
	foreign key(project_id) references project(project_id) ON DELETE CASCADE
);

CREATE TABLE step (
    step_id int AUTO_INCREMENT NOT NULL,
	project_id int NOT NULL,
    step_text text NOT NULL,
    step_order int NOT NULL,
	PRIMARY KEY (step_id),
	foreign key(project_id)references project(project_id) ON DELETE CASCADE
);

create table category (
	category_id int AUTO_INCREMENT NOT NULL,
	category_name varchar(128) NOT NULL,
	PRIMARY KEY (category_id) );
	
create table project_category (
	project_id int NOT NULL,
	category_id int NOT NULL, 
	foreign key(category_id)references category(category_id) ON DELETE CASCADE,
	foreign key(project_id)references project(project_id) ON DELETE CASCADE,
	UNIQUE KEY (project_id, category_id)
	);

	
	
	

	
