CREATE TABLE public.cuisine
(
    id integer NOT NULL DEFAULT,
    cruisine character varchar(500) NOT NULL,
    created_by character varchar(100),
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    CONSTRAINT cuisine_pkey PRIMARY KEY (id),
    CONSTRAINT cuisine_cruisine_key UNIQUE (cruisine)
);

INSERT INTO cuisine (id, cruisine, created_by) VALUES
(1,'American','default'),
(2,'British','default'),
(3,'Caribbean','default'),
(4,'Chinese','default'),
(5,'French','default'),
(6,'Greek','default'),
(7,'Indian','default'),
(8,'Italian','default'),
(9,'Japanese','default'),
(10,'Mediterranean','default'),
(11,'Mexican','default'),
(12,'Moroccan','default'),
(13,'Spanish','default'),
(14,'Thai','default'),
(15,'Turkish','default'),
(16,'Vietnamese','default');