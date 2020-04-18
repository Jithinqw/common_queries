CREATE TABLE admin_table
(
    adminid character varchar(41)  NOT NULL,
    firstname character varchar(500) NOT NULL,
    lastname character varchar(500) NOT NULL,
    password character varchar(500) NOT NULL,
    email character varchar(500) NOT NULL,
    lastupdatedon timestamp without time zone NOT NULL,
    created_on timestamp without time zone NOT NULL,
    CONSTRAINT admin_table_pkey PRIMARY KEY (adminid),
    CONSTRAINT admin_table_email_key UNIQUE (email),
    CONSTRAINT admin_table_password_key UNIQUE (password)
);

INSERT INTO admin_table(adminid, firstname, lastname, password, email) VALUES 
("default", "default", "default", "default", "default@gmail.com");