CREATE TABLE stall_diet
(
    id integer NOT NULL DEFAULT,
    diet_type character varchar(500) NOT NULL,
    created_by character varchar(100) NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    CONSTRAINT stall_diet_pkey PRIMARY KEY (id),
    CONSTRAINT stall_diet_diet_type_key UNIQUE (diet_type)
,
    CONSTRAINT stall_diet_created_by_fkey FOREIGN KEY (created_by)
        REFERENCES public.admin_table (adminid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

INSERT INTO stall_diet (id, diet_type, created_by) VALUES
(1, 'Vegetarian', 'default'),
(2, 'Non-Vegetarian', 'default'),
(3, 'Vegen', 'default');
