PGDMP                         y            LR_3.2    13.1    13.1 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    LR_3.2    DATABASE     e   CREATE DATABASE "LR_3.2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "LR_3.2";
                postgres    false                        2615    16395 
   testSchema    SCHEMA        CREATE SCHEMA "testSchema";
    DROP SCHEMA "testSchema";
                postgres    false            �            1259    16403    Material    TABLE     �   CREATE TABLE "testSchema"."Material" (
    id_material integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Character" character varying(150) NOT NULL,
    "Cost" integer NOT NULL
);
 $   DROP TABLE "testSchema"."Material";
    
   testSchema         heap    postgres    false    6            �            1259    16419    Order    TABLE     �   CREATE TABLE "testSchema"."Order" (
    id_order integer NOT NULL,
    "Amount" integer NOT NULL,
    "Terms" character varying(250) NOT NULL,
    "Project" integer NOT NULL,
    "Tailor" integer NOT NULL
);
 !   DROP TABLE "testSchema"."Order";
    
   testSchema         heap    postgres    false    6            �            1259    16449    Order_id_order_seq    SEQUENCE     �   ALTER TABLE "testSchema"."Order" ALTER COLUMN id_order ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "testSchema"."Order_id_order_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
         
   testSchema          postgres    false    207    6            �            1259    16396    Project    TABLE     �   CREATE TABLE "testSchema"."Project" (
    id_proj integer NOT NULL,
    "Designer_name" character varying(50) NOT NULL,
    "Approval_date" date NOT NULL,
    "Cost" integer NOT NULL
);
 #   DROP TABLE "testSchema"."Project";
    
   testSchema         heap    postgres    false    6            �            1259    16417    Project_id_proj_seq    SEQUENCE     �   ALTER TABLE "testSchema"."Project" ALTER COLUMN id_proj ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "testSchema"."Project_id_proj_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
         
   testSchema          postgres    false    201    6            �            1259    16434 	   Provision    TABLE     �   CREATE TABLE "testSchema"."Provision" (
    id_prov integer NOT NULL,
    "Size" integer NOT NULL,
    "Cost" integer NOT NULL,
    "Project" integer NOT NULL,
    "Material" integer NOT NULL
);
 %   DROP TABLE "testSchema"."Provision";
    
   testSchema         heap    postgres    false    6            �            1259    16451    Provision_id_prov_seq    SEQUENCE     �   ALTER TABLE "testSchema"."Provision" ALTER COLUMN id_prov ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "testSchema"."Provision_id_prov_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
         
   testSchema          postgres    false    208    6            �            1259    16410    Tailor    TABLE     �   CREATE TABLE "testSchema"."Tailor" (
    id_tailor integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Exp" integer
);
 "   DROP TABLE "testSchema"."Tailor";
    
   testSchema         heap    postgres    false    6            �            1259    16408    Tailor_id_tailor_seq    SEQUENCE     �   ALTER TABLE "testSchema"."Tailor" ALTER COLUMN id_tailor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "testSchema"."Tailor_id_tailor_seq"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
         
   testSchema          postgres    false    6    205            �            1259    16401    material_id_material_seq    SEQUENCE     �   ALTER TABLE "testSchema"."Material" ALTER COLUMN id_material ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "testSchema".material_id_material_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 1000000
    CACHE 1
);
         
   testSchema          postgres    false    203    6            �          0    16403    Material 
   TABLE DATA           T   COPY "testSchema"."Material" (id_material, "Name", "Character", "Cost") FROM stdin;
 
   testSchema          postgres    false    203   �(       �          0    16419    Order 
   TABLE DATA           Y   COPY "testSchema"."Order" (id_order, "Amount", "Terms", "Project", "Tailor") FROM stdin;
 
   testSchema          postgres    false    207   �(       �          0    16396    Project 
   TABLE DATA           \   COPY "testSchema"."Project" (id_proj, "Designer_name", "Approval_date", "Cost") FROM stdin;
 
   testSchema          postgres    false    201   )       �          0    16434 	   Provision 
   TABLE DATA           [   COPY "testSchema"."Provision" (id_prov, "Size", "Cost", "Project", "Material") FROM stdin;
 
   testSchema          postgres    false    208   �)       �          0    16410    Tailor 
   TABLE DATA           B   COPY "testSchema"."Tailor" (id_tailor, "Name", "Exp") FROM stdin;
 
   testSchema          postgres    false    205   �)       �           0    0    Order_id_order_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"testSchema"."Order_id_order_seq"', 1, true);
       
   testSchema          postgres    false    209            �           0    0    Project_id_proj_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"testSchema"."Project_id_proj_seq"', 4, true);
       
   testSchema          postgres    false    206            �           0    0    Provision_id_prov_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"testSchema"."Provision_id_prov_seq"', 0, true);
       
   testSchema          postgres    false    210            �           0    0    Tailor_id_tailor_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"testSchema"."Tailor_id_tailor_seq"', 2, true);
       
   testSchema          postgres    false    204            �           0    0    material_id_material_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"testSchema".material_id_material_seq', 3, true);
       
   testSchema          postgres    false    202            B           2606    16423    Order Order_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "testSchema"."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id_order);
 D   ALTER TABLE ONLY "testSchema"."Order" DROP CONSTRAINT "Order_pkey";
    
   testSchema            postgres    false    207            <           2606    16416    Project Project_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "testSchema"."Project"
    ADD CONSTRAINT "Project_pkey" PRIMARY KEY (id_proj);
 H   ALTER TABLE ONLY "testSchema"."Project" DROP CONSTRAINT "Project_pkey";
    
   testSchema            postgres    false    201            D           2606    16438    Provision Provision_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "testSchema"."Provision"
    ADD CONSTRAINT "Provision_pkey" PRIMARY KEY (id_prov);
 L   ALTER TABLE ONLY "testSchema"."Provision" DROP CONSTRAINT "Provision_pkey";
    
   testSchema            postgres    false    208            @           2606    16414    Tailor Tailor_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "testSchema"."Tailor"
    ADD CONSTRAINT "Tailor_pkey" PRIMARY KEY (id_tailor);
 F   ALTER TABLE ONLY "testSchema"."Tailor" DROP CONSTRAINT "Tailor_pkey";
    
   testSchema            postgres    false    205            >           2606    16407    Material material_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "testSchema"."Material"
    ADD CONSTRAINT material_pkey PRIMARY KEY (id_material);
 H   ALTER TABLE ONLY "testSchema"."Material" DROP CONSTRAINT material_pkey;
    
   testSchema            postgres    false    203            F           2606    16429    Order Order_id_proj_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "testSchema"."Order"
    ADD CONSTRAINT "Order_id_proj_fkey" FOREIGN KEY ("Project") REFERENCES "testSchema"."Project"(id_proj);
 L   ALTER TABLE ONLY "testSchema"."Order" DROP CONSTRAINT "Order_id_proj_fkey";
    
   testSchema          postgres    false    201    2876    207            E           2606    16424    Order Order_id_tailor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "testSchema"."Order"
    ADD CONSTRAINT "Order_id_tailor_fkey" FOREIGN KEY ("Tailor") REFERENCES "testSchema"."Tailor"(id_tailor);
 N   ALTER TABLE ONLY "testSchema"."Order" DROP CONSTRAINT "Order_id_tailor_fkey";
    
   testSchema          postgres    false    2880    207    205            H           2606    16444 !   Provision Provision_Material_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "testSchema"."Provision"
    ADD CONSTRAINT "Provision_Material_fkey" FOREIGN KEY ("Material") REFERENCES "testSchema"."Material"(id_material);
 U   ALTER TABLE ONLY "testSchema"."Provision" DROP CONSTRAINT "Provision_Material_fkey";
    
   testSchema          postgres    false    208    203    2878            G           2606    16439     Provision Provision_Project_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "testSchema"."Provision"
    ADD CONSTRAINT "Provision_Project_fkey" FOREIGN KEY ("Project") REFERENCES "testSchema"."Project"(id_proj);
 T   ALTER TABLE ONLY "testSchema"."Provision" DROP CONSTRAINT "Provision_Project_fkey";
    
   testSchema          postgres    false    208    2876    201            �   =   x�3�������MUHI-NV0�450�2����A6�4
s:��d �9���1z\\\ �4      �   ,   x�3�42���MU(I-�-�4�4�2�41@S0�B�=... ]      �   Z   x�u�;�0�ٹK�ӏ2����� Cۙۓ Ƀ�d�8Fk/I�EP���x�6�l��F�䌵_s���a{)؟6O\Y��r�s�*JL      �      x�3�44�450�4�4����� !`      �   (   x�3�t����4�2�t)J-�44�2�tr��4����� s�F     