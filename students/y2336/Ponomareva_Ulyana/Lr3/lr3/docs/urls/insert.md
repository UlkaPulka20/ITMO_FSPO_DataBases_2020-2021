## Insert
#### Добавление записей в таблицу "Клиент":
```
INSERT into klient (passport, "name", "arrival_city") values(2316542378, 'Matvei Golunov', 'Moscow');
INSERT into klient (passport, "name", "arrival_city") values('7741729012', 'George Cown', 'London');
```
#### Добавление записей в таблицу "Заселение":
```
INSERT into chek_in (date, time, hotel_number_id, klient_id, administrator_id) values(2021-01-12, 07:30, 1, 2, 1);
INSERT into chek_in ("date_time", hotel_number_id, klient_id, administrator_id) values(2021-02-21, 16:15, 2, 1, 2);
```
#### Добавление записей в таблицу "Номер отеля":
```
INSERT into hotel_number (type, floor, cost, status) values(2, 1, 1200, 0);
INSERT into hotel_number (type, floor, cost, status) values(1, 3, 1000, 1);
```
#### Добавление записей в таблицу "Администратор":
```
INSERT into administrator ("name") values('Mike Golden');
INSERT into administrator ("name") values('Mikel Rose');
```
#### Добавление записей в таблицу "Уборка":
```
INSERT into clean (date, time, hotel_number_id, cleaner_id, administrator_id) values(2021-03-04, 19:30, 1, 2, 2);
INSERT into clean (date, time, hotel_number_id, cleaner_id, administrator_id) values(2021-01-05, 14:10, 3, 1, 1);
```
#### Добавление записей в таблицу "Убощик":
```
INSERT into cleaner ("name", administrator_id) values('Anton Genov', 1);
INSERT into cleaner ("name", administrator_id) values('Ilya Kokotkin', 2);
```