PGDMP          2            	    w            daj37io495s1v     11.5 (Ubuntu 11.5-1.pgdg16.04+1)    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    12607392    daj37io495s1v    DATABASE        CREATE DATABASE daj37io495s1v WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE daj37io495s1v;
             apfibvxhraexsp    false                       0    0    DATABASE daj37io495s1v    ACL     @   REVOKE CONNECT,TEMPORARY ON DATABASE daj37io495s1v FROM PUBLIC;
                  apfibvxhraexsp    false    3856                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO apfibvxhraexsp;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  apfibvxhraexsp    false    3                       0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO apfibvxhraexsp;
                  postgres    false    606            �            1259    12837528    admin    TABLE     [   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name text NOT NULL
);
    DROP TABLE public.admin;
       public         apfibvxhraexsp    false            �            1259    12837534    event    TABLE     �   CREATE TABLE public.event (
    event_id integer NOT NULL,
    user_id integer,
    admin_id integer,
    request_id integer
);
    DROP TABLE public.event;
       public         apfibvxhraexsp    false            �            1259    12837537    request    TABLE     �   CREATE TABLE public.request (
    request_id integer NOT NULL,
    request_title text,
    request_type text,
    request_date date DEFAULT CURRENT_DATE NOT NULL,
    request_description text,
    request_status text NOT NULL
);
    DROP TABLE public.request;
       public         apfibvxhraexsp    false            �            1259    12837544    users    TABLE     }   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name integer NOT NULL,
    request_id integer NOT NULL
);
    DROP TABLE public.users;
       public         apfibvxhraexsp    false                      0    12837528    admin 
   TABLE DATA               5   COPY public.admin (admin_id, admin_name) FROM stdin;
    public       apfibvxhraexsp    false    196   �                 0    12837534    event 
   TABLE DATA               H   COPY public.event (event_id, user_id, admin_id, request_id) FROM stdin;
    public       apfibvxhraexsp    false    197   �       	          0    12837537    request 
   TABLE DATA               }   COPY public.request (request_id, request_title, request_type, request_date, request_description, request_status) FROM stdin;
    public       apfibvxhraexsp    false    198   
       
          0    12837544    users 
   TABLE DATA               ?   COPY public.users (user_id, user_name, request_id) FROM stdin;
    public       apfibvxhraexsp    false    199   '       �           2606    12837549    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public         apfibvxhraexsp    false    196            �           2606    12837551    event event_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public         apfibvxhraexsp    false    197            �           2606    12837553    request request_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (request_id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT request_pkey;
       public         apfibvxhraexsp    false    198            �           2606    12837555    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         apfibvxhraexsp    false    199            �           2606    12837556    event event_admin_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 C   ALTER TABLE ONLY public.event DROP CONSTRAINT event_admin_id_fkey;
       public       apfibvxhraexsp    false    197    3715    196            �           2606    12837561    event event_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.event DROP CONSTRAINT event_request_id_fkey;
       public       apfibvxhraexsp    false    198    197    3719            �           2606    12837566    event event_user_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 B   ALTER TABLE ONLY public.event DROP CONSTRAINT event_user_id_fkey;
       public       apfibvxhraexsp    false    3721    197    199            �           2606    12837571    users users_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_request_id_fkey;
       public       apfibvxhraexsp    false    199    3719    198                  x������ � �            x������ � �      	      x������ � �      
      x������ � �     