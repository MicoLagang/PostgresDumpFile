PGDMP     '                	    w         	   defaultdb    11.5    11.5     V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Y           1262    16394 	   defaultdb    DATABASE     {   CREATE DATABASE defaultdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE defaultdb;
             doadmin    false            �            1259    16395    admin    TABLE     [   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name text NOT NULL
);
    DROP TABLE public.admin;
       public         doadmin    false            �            1259    16401    event    TABLE     �   CREATE TABLE public.event (
    event_id integer NOT NULL,
    user_id integer,
    admin_id integer,
    request_id integer
);
    DROP TABLE public.event;
       public         doadmin    false            �            1259    16404    request    TABLE     �   CREATE TABLE public.request (
    request_id integer NOT NULL,
    request_title text,
    request_type text,
    request_date date DEFAULT CURRENT_DATE NOT NULL,
    request_description text,
    request_status text NOT NULL
);
    DROP TABLE public.request;
       public         doadmin    false            �            1259    16411    users    TABLE     }   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name integer NOT NULL,
    request_id integer NOT NULL
);
    DROP TABLE public.users;
       public         doadmin    false            P          0    16395    admin 
   TABLE DATA               5   COPY public.admin (admin_id, admin_name) FROM stdin;
    public       doadmin    false    196   Y       Q          0    16401    event 
   TABLE DATA               H   COPY public.event (event_id, user_id, admin_id, request_id) FROM stdin;
    public       doadmin    false    197   v       R          0    16404    request 
   TABLE DATA               }   COPY public.request (request_id, request_title, request_type, request_date, request_description, request_status) FROM stdin;
    public       doadmin    false    198   �       S          0    16411    users 
   TABLE DATA               ?   COPY public.users (user_id, user_name, request_id) FROM stdin;
    public       doadmin    false    199   �       �           2606    16415    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public         doadmin    false    196            �           2606    16417    event event_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public         doadmin    false    197            �           2606    16419    request request_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (request_id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT request_pkey;
       public         doadmin    false    198            �           2606    16421    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         doadmin    false    199            �           2606    16422    event event_admin_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 C   ALTER TABLE ONLY public.event DROP CONSTRAINT event_admin_id_fkey;
       public       doadmin    false    197    3788    196            �           2606    16427    event event_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.event DROP CONSTRAINT event_request_id_fkey;
       public       doadmin    false    198    197    3792            �           2606    16432    event event_user_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 B   ALTER TABLE ONLY public.event DROP CONSTRAINT event_user_id_fkey;
       public       doadmin    false    3794    197    199            �           2606    16437    users users_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_request_id_fkey;
       public       doadmin    false    199    3792    198            P      x������ � �      Q      x������ � �      R      x������ � �      S      x������ � �     