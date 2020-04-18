CREATE TABLE public.event_access_type_table
(
    id integer NOT NULL DEFAULT,
    access_type character varying(500) NOT NULL,
    created_by character varying(100) NOT NULL,
    created_on timestamp without time zone,
    CONSTRAINT event_access_type_table_pkey PRIMARY KEY (id),
    CONSTRAINT event_access_type_table_created_by_fkey FOREIGN KEY (created_by)
        REFERENCES public.admin_table (adminid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

INSERT INTO event_access_type_table (id, access_type, created_by) VALUES 
(1, 'public', 'default'),
(2, 'private', 'default'),
(3, 'invite-Only', 'default'),
(4, 'ticketed', 'default');