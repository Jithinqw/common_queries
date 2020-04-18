CREATE TABLE public.stall_type_table
(
    id integer NOT NULL DEFAULT,
    stall_type character varchar(500) NOT NULL,
    created_by character varchar(100) NOT NULL,
    created_on timestamp without time zone,
    CONSTRAINT stall_type_table_pkey PRIMARY KEY (id),
    CONSTRAINT stall_type_table_stall_type_key UNIQUE (stall_type)
,
    CONSTRAINT stall_type_table_created_by_fkey FOREIGN KEY (created_by)
        REFERENCES public.admin_table (adminid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

INSERT INTO stall_type_table (id, stall_type, created_by) VALUES
(1, 'Food & Eateries', 'default'),
(2, 'Fitness & Health', 'default'),
(3, 'Software & Data', 'default'),
(5, 'Hardware & IoT', 'default'),
(6, 'Handmade & Crafts', 'default'),
(7, 'Charity & Donation', 'default'),
(8, 'Book Launch & Signing', 'default');