PGDMP     .                    w            notip %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)     x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            {           1262    57591    notip    DATABASE     w   CREATE DATABASE notip WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_PH.UTF-8' LC_CTYPE = 'en_PH.UTF-8';
    DROP DATABASE notip;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            |           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13039    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            }           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    57611    admin    TABLE     [   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name text NOT NULL
);
    DROP TABLE public.admin;
       public         postgres    false    3            �            1259    57619    event    TABLE     �   CREATE TABLE public.event (
    event_id integer NOT NULL,
    user_id integer,
    admin_id integer,
    request_id integer
);
    DROP TABLE public.event;
       public         postgres    false    3            �            1259    57592    request    TABLE     �   CREATE TABLE public.request (
    request_id integer NOT NULL,
    request_title text,
    request_type text,
    request_date date DEFAULT CURRENT_DATE NOT NULL,
    request_description text,
    request_status text NOT NULL
);
    DROP TABLE public.request;
       public         postgres    false    3            �            1259    57601    users    TABLE     }   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name integer NOT NULL,
    request_id integer NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false    3            t          0    57611    admin 
   TABLE DATA               5   COPY public.admin (admin_id, admin_name) FROM stdin;
    public       postgres    false    198   �       u          0    57619    event 
   TABLE DATA               H   COPY public.event (event_id, user_id, admin_id, request_id) FROM stdin;
    public       postgres    false    199   �       r          0    57592    request 
   TABLE DATA               }   COPY public.request (request_id, request_title, request_type, request_date, request_description, request_status) FROM stdin;
    public       postgres    false    196   �       s          0    57601    users 
   TABLE DATA               ?   COPY public.users (user_id, user_name, request_id) FROM stdin;
    public       postgres    false    197   �       �
           2606    57618    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public         postgres    false    198            �
           2606    57623    event event_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public         postgres    false    199            �
           2606    57600    request request_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (request_id);
 >   ALTER TABLE ONLY public.request DROP CONSTRAINT request_pkey;
       public         postgres    false    196            �
           2606    57605    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    197            �
           2606    57629    event event_admin_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 C   ALTER TABLE ONLY public.event DROP CONSTRAINT event_admin_id_fkey;
       public       postgres    false    2802    198    199            �
           2606    57634    event event_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.event DROP CONSTRAINT event_request_id_fkey;
       public       postgres    false    196    2798    199            �
           2606    57624    event event_user_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 B   ALTER TABLE ONLY public.event DROP CONSTRAINT event_user_id_fkey;
       public       postgres    false    197    199    2800            �
           2606    57606    users users_request_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_request_id_fkey;
       public       postgres    false    197    196    2798            t      x������ � �      u      x������ � �      r      x������ � �      s      x������ � �     