CREATE TABLE public.event_type_table
(
    id integer NOT NULL DEFAULT ,
    event_type character varchar(500) NOT NULL,
    created_by character varchar(100) NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    CONSTRAINT event_type_table_pkey PRIMARY KEY (id),
    CONSTRAINT event_type_table_event_type_key UNIQUE (event_type)
,
    CONSTRAINT event_type_table_created_by_fkey FOREIGN KEY (created_by)
        REFERENCES public.admin_table (adminid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

INSERT INTO event_type_table(id, event_type, created_by) VALUES
(1, 'Appereance or Signing', 'default'),
(2, 'Attraction', 'default'),
(3, 'Camp, Trip or Retreat', 'default'),
(4, 'Class Training or Workshop', 'default'),
(5, 'Concert or Performance', 'default'),
(6, 'Conference', 'default'),
(7, 'Convention', 'default'),
(8, 'Dinner or Gala', 'default'),
(9, 'Festival or Fair', 'default'),
(10, 'Game or Competition', 'default'),
(11, 'Meeting or Networking event', 'default'),
(12, 'Other', 'default'),
(13, 'Party or Social gathering', 'default'),
(14, 'Race or Endurence event', 'default'),
(15, 'Rally', 'default'),
(16, 'Screening', 'default'),
(17, 'Seminar or Talk', 'default'),
(18, 'Tour', 'default'),
(19, 'Tournament', 'default'),
(20, 'Tradeshow, Consumer Show or Expo', 'default');