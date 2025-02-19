PGDMP          :                x            Studing    13.1    13.1 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Studing    DATABASE     f   CREATE DATABASE "Studing" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Studing";
                postgres    false                        2615    16396    OnlineMarket    SCHEMA        CREATE SCHEMA "OnlineMarket";
    DROP SCHEMA "OnlineMarket";
                postgres    false            �            1259    16405    Carriers    TABLE     s   CREATE TABLE "OnlineMarket"."Carriers" (
    id integer NOT NULL,
    "Full name" text,
    "Phone number" text
);
 &   DROP TABLE "OnlineMarket"."Carriers";
       OnlineMarket         heap    postgres    false    6            �            1259    16397    Clients    TABLE     �   CREATE TABLE "OnlineMarket"."Clients" (
    id integer NOT NULL,
    "Full name" text,
    "Address" text,
    "Phone number" text,
    "Email" text
);
 %   DROP TABLE "OnlineMarket"."Clients";
       OnlineMarket         heap    postgres    false    6            �            1259    16509    OrderDeliveries    TABLE     �   CREATE TABLE "OnlineMarket"."OrderDeliveries" (
    order_id integer NOT NULL,
    carrier_id integer NOT NULL,
    delivery_date date
);
 -   DROP TABLE "OnlineMarket"."OrderDeliveries";
       OnlineMarket         heap    postgres    false    6            �            1259    16471    Orders    TABLE     �   CREATE TABLE "OnlineMarket"."Orders" (
    id integer NOT NULL,
    client_id integer NOT NULL,
    status text,
    date date
);
 $   DROP TABLE "OnlineMarket"."Orders";
       OnlineMarket         heap    postgres    false    6            �            1259    16413    Products    TABLE     �   CREATE TABLE "OnlineMarket"."Products" (
    id integer NOT NULL,
    "Name" text NOT NULL,
    "Price" double precision NOT NULL,
    "Weight" double precision,
    "Sizes" double precision[],
    "Stock" integer NOT NULL
);
 &   DROP TABLE "OnlineMarket"."Products";
       OnlineMarket         heap    postgres    false    6            �            1259    16494    ProductsInOrders    TABLE     s   CREATE TABLE "OnlineMarket"."ProductsInOrders" (
    order_id integer NOT NULL,
    product_id integer NOT NULL
);
 .   DROP TABLE "OnlineMarket"."ProductsInOrders";
       OnlineMarket         heap    postgres    false    6            �            1259    16456    ProductsInWarehouses    TABLE     {   CREATE TABLE "OnlineMarket"."ProductsInWarehouses" (
    warehouse_id integer NOT NULL,
    product_id integer NOT NULL
);
 2   DROP TABLE "OnlineMarket"."ProductsInWarehouses";
       OnlineMarket         heap    postgres    false    6            �            1259    16433 
   Warehouses    TABLE     c   CREATE TABLE "OnlineMarket"."Warehouses" (
    id integer NOT NULL,
    "Address" text NOT NULL
);
 (   DROP TABLE "OnlineMarket"."Warehouses";
       OnlineMarket         heap    postgres    false    6            �          0    16405    Carriers 
   TABLE DATA           M   COPY "OnlineMarket"."Carriers" (id, "Full name", "Phone number") FROM stdin;
    OnlineMarket          postgres    false    202   .       �          0    16397    Clients 
   TABLE DATA           `   COPY "OnlineMarket"."Clients" (id, "Full name", "Address", "Phone number", "Email") FROM stdin;
    OnlineMarket          postgres    false    201   C.       �          0    16509    OrderDeliveries 
   TABLE DATA           X   COPY "OnlineMarket"."OrderDeliveries" (order_id, carrier_id, delivery_date) FROM stdin;
    OnlineMarket          postgres    false    208   �.       �          0    16471    Orders 
   TABLE DATA           G   COPY "OnlineMarket"."Orders" (id, client_id, status, date) FROM stdin;
    OnlineMarket          postgres    false    206   �.       �          0    16413    Products 
   TABLE DATA           ]   COPY "OnlineMarket"."Products" (id, "Name", "Price", "Weight", "Sizes", "Stock") FROM stdin;
    OnlineMarket          postgres    false    203   /       �          0    16494    ProductsInOrders 
   TABLE DATA           J   COPY "OnlineMarket"."ProductsInOrders" (order_id, product_id) FROM stdin;
    OnlineMarket          postgres    false    207   g/       �          0    16456    ProductsInWarehouses 
   TABLE DATA           R   COPY "OnlineMarket"."ProductsInWarehouses" (warehouse_id, product_id) FROM stdin;
    OnlineMarket          postgres    false    205   �/       �          0    16433 
   Warehouses 
   TABLE DATA           =   COPY "OnlineMarket"."Warehouses" (id, "Address") FROM stdin;
    OnlineMarket          postgres    false    204   �/       E           2606    16412    Carriers Carriers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "OnlineMarket"."Carriers"
    ADD CONSTRAINT "Carriers_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "OnlineMarket"."Carriers" DROP CONSTRAINT "Carriers_pkey";
       OnlineMarket            postgres    false    202            C           2606    16404    Clients Clients_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "OnlineMarket"."Clients"
    ADD CONSTRAINT "Clients_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY "OnlineMarket"."Clients" DROP CONSTRAINT "Clients_pkey";
       OnlineMarket            postgres    false    201            Q           2606    16513 $   OrderDeliveries OrderDeliveries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries"
    ADD CONSTRAINT "OrderDeliveries_pkey" PRIMARY KEY (order_id, carrier_id);
 Z   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries" DROP CONSTRAINT "OrderDeliveries_pkey";
       OnlineMarket            postgres    false    208    208            M           2606    16478    Orders Orders_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "OnlineMarket"."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY "OnlineMarket"."Orders" DROP CONSTRAINT "Orders_pkey";
       OnlineMarket            postgres    false    206            K           2606    16460 0   ProductsInWarehouses Products in warehouses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses"
    ADD CONSTRAINT "Products in warehouses_pkey" PRIMARY KEY (warehouse_id, product_id);
 f   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses" DROP CONSTRAINT "Products in warehouses_pkey";
       OnlineMarket            postgres    false    205    205            O           2606    16498 &   ProductsInOrders ProductsInOrders_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders"
    ADD CONSTRAINT "ProductsInOrders_pkey" PRIMARY KEY (order_id, product_id);
 \   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders" DROP CONSTRAINT "ProductsInOrders_pkey";
       OnlineMarket            postgres    false    207    207            I           2606    16455    Warehouses Warehouses_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "OnlineMarket"."Warehouses"
    ADD CONSTRAINT "Warehouses_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY "OnlineMarket"."Warehouses" DROP CONSTRAINT "Warehouses_pkey";
       OnlineMarket            postgres    false    204            G           2606    16420    Products Товары_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "OnlineMarket"."Products"
    ADD CONSTRAINT "Товары_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY "OnlineMarket"."Products" DROP CONSTRAINT "Товары_pkey";
       OnlineMarket            postgres    false    203            X           2606    16519 /   OrderDeliveries OrderDeliveries_carrier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries"
    ADD CONSTRAINT "OrderDeliveries_carrier_id_fkey" FOREIGN KEY (carrier_id) REFERENCES "OnlineMarket"."Carriers"(id);
 e   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries" DROP CONSTRAINT "OrderDeliveries_carrier_id_fkey";
       OnlineMarket          postgres    false    2885    208    202            W           2606    16514 -   OrderDeliveries OrderDeliveries_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries"
    ADD CONSTRAINT "OrderDeliveries_order_id_fkey" FOREIGN KEY (order_id) REFERENCES "OnlineMarket"."Orders"(id);
 c   ALTER TABLE ONLY "OnlineMarket"."OrderDeliveries" DROP CONSTRAINT "OrderDeliveries_order_id_fkey";
       OnlineMarket          postgres    false    206    2893    208            T           2606    16479    Orders Orders_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."Orders"
    ADD CONSTRAINT "Orders_client_id_fkey" FOREIGN KEY (client_id) REFERENCES "OnlineMarket"."Clients"(id);
 R   ALTER TABLE ONLY "OnlineMarket"."Orders" DROP CONSTRAINT "Orders_client_id_fkey";
       OnlineMarket          postgres    false    201    206    2883            S           2606    16466 ;   ProductsInWarehouses Products in warehouses_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses"
    ADD CONSTRAINT "Products in warehouses_product_id_fkey" FOREIGN KEY (product_id) REFERENCES "OnlineMarket"."Products"(id);
 q   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses" DROP CONSTRAINT "Products in warehouses_product_id_fkey";
       OnlineMarket          postgres    false    2887    205    203            R           2606    16461 =   ProductsInWarehouses Products in warehouses_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses"
    ADD CONSTRAINT "Products in warehouses_warehouse_id_fkey" FOREIGN KEY (warehouse_id) REFERENCES "OnlineMarket"."Warehouses"(id);
 s   ALTER TABLE ONLY "OnlineMarket"."ProductsInWarehouses" DROP CONSTRAINT "Products in warehouses_warehouse_id_fkey";
       OnlineMarket          postgres    false    2889    204    205            U           2606    16499 /   ProductsInOrders ProductsInOrders_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders"
    ADD CONSTRAINT "ProductsInOrders_order_id_fkey" FOREIGN KEY (order_id) REFERENCES "OnlineMarket"."Orders"(id) NOT VALID;
 e   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders" DROP CONSTRAINT "ProductsInOrders_order_id_fkey";
       OnlineMarket          postgres    false    207    206    2893            V           2606    16504 1   ProductsInOrders ProductsInOrders_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders"
    ADD CONSTRAINT "ProductsInOrders_product_id_fkey" FOREIGN KEY (product_id) REFERENCES "OnlineMarket"."Products"(id) NOT VALID;
 g   ALTER TABLE ONLY "OnlineMarket"."ProductsInOrders" DROP CONSTRAINT "ProductsInOrders_product_id_fkey";
       OnlineMarket          postgres    false    207    203    2887            �   1   x�3�I-.QpN,*�L-R00��6װ���b]0�2DSb��$F��� ��      �   P   x�3�I-.Qp��L�+Q00�tLI)J-.��6װ��д���#��:�2C������R.CT�F��[ k7�k����� �p%�      �      x�3�4�4202�54�5������ !{      �   3   x�3�4����4202�54�50�2�4���SHI��,K-��Kp��qqq 	$
p      �   E   x�3�I-.Q(�O)M.Q00�440�4�3�64�"#�Z���!�J#�0'XHU�p��qqq �:=      �      x�3�4�2�4����� ��      �      x�3�4�2�4�2�=... �      �   O   x�3�I-.QO,J��/-NUpLI)J-.V00�2B�30�2�3�2�-HI,IM�k�OS(��(�,�P�LQ0����� J3$1     