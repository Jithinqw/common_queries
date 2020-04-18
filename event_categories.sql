CREATE TABLE public.event_category
(
    id integer NOT NULL DEFAULT nextval('event_category_id_seq'::regclass),
    event_category character varchar(500) NOT NULL,
    created_by character varchar(100) NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    CONSTRAINT event_category_pkey PRIMARY KEY (id),
    CONSTRAINT event_category_event_category_key UNIQUE (event_category)
,
    CONSTRAINT event_category_created_by_fkey FOREIGN KEY (created_by)
        REFERENCES public.admin_table (adminid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

INSERT INTO event_category(id, event_category, created_by) VALUES
(1, 'Auto, Boat or Air', 'default'),
(2, 'Buisness & Professional', 'default'),
(3, 'Charity & Causes', 'default'),
(4, 'Community & Culture', 'default'),
(5, 'Family & Education', 'default'),
(6, 'Fashion & Beauty', 'default'),
(7, 'Film, Media & Entertainment', 'default'),
(8, 'Food & Drink', 'default'),
(9, 'Goverment & Politics', 'default'),
(10, 'Health & Wellness', 'default'),
(11, 'Hobbies & Special Intrests', 'default'),
(12, 'Home & Life Style', 'default'),
(13, 'Music', 'default'),
(14, 'Other', 'default'),
(15, 'Performance & Visual Arts', 'default'),
(16, 'Religion & Spirituality', 'default'),
(18, 'School Activities', 'default'),
(19, 'Science & Technology', 'default'),
(20, 'Seasonal & Holiday', 'default'),
(21, 'Sports & Fitness', 'default'),
(22, 'Travel & Outdoor', 'default');