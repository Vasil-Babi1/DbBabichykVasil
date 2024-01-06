Бабійчук Василь Іванович, ІПЗ-21,  Облік мережевого і комп'ютерного устаткування, Діаграма:


![ER-DIAGRAM](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/675503df-d59b-4556-9484-4df10ca03bdf)

### Таблиця `offices`

| Назва поля  | Тип даних | Пояснення                |
|-------------|-----------|--------------------------|
| OfficeId    | INT       | Первинний ключ           |
| OfficeName  | VARCHAR   | Назва офісу              |
| ManagerID   | INT       | Ідентифікатор менеджера  |

### Таблиця `OfficeManagers`

| Назва поля | Тип даних | Пояснення                 |
|------------|-----------|---------------------------|
| ManagerID  | INT       | Первинний ключ           |
| ManagerName| VARCHAR   | Ім'я менеджера           |
| ContactInfo| VARCHAR   | Контактна інформація менеджера |

### Таблиця `ServiceHistory`

| Назва поля  | Тип даних | Пояснення                |
|-------------|-----------|--------------------------|
| ServiceID   | INT       | Первинний ключ           |
| ServiceDate | DATE      | Дата обслуговування      |
| ServiceDetails | TEXT | Деталі обслуговування    |

### Таблиця `NetworkEquipment`

| Назва поля  | Тип даних | Пояснення                     |
|-------------|-----------|-------------------------------|
| EquipmentID | INT       | Первинний ключ                |
| EquipmentType | VARCHAR | Тип мережевого обладнання     |
| Model       | VARCHAR   | Модель обладнання             |
| OfficeID    | INT       | Ідентифікатор офісу, зовнішній ключ до таблиці `offices` |
| ServiceID   | INT       | Ідентифікатор обслуговування, зовнішній ключ до таблиці `ServiceHistory` |

### Таблиця `ComputerEquipment`

| Назва поля  | Тип даних | Пояснення                     |
|-------------|-----------|-------------------------------|
| EquipmentID | INT       | Первинний ключ                |
| EquipmentType | VARCHAR | Тип комп'ютерного обладнання  |
| Model       | VARCHAR   | Модель обладнання             |
| OfficeID    | INT       | Ідентифікатор офісу, зовнішній ключ до таблиці `offices` |
| ServiceID   | INT       | Ідентифікатор обслуговування, зовнішній ключ до таблиці `ServiceHistory` |

### 5 Запитів до Бази Даних:
### Запит 1: З'єднання таблиць ServiceHistory та NetworkEquipment для отримання
### інформації про всі ремонти мережевого обладнання:
 

```sql
SELECT sh.*, ne.*
FROM ServiceHistory sh
JOIN NetworkEquipment ne ON sh.service_id = ne.service_id;
```
Результат
![Виконання першого запиту 215517](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/35f29edd-6a73-48ee-8fca-804c509db5ca)

### Запит 2. Вибірка інформації про мережеве обладнання, яке ще не отримувало 
### сервіс:

```sql
SELECT * FROM NetworkEquipment WHERE service_id IS NULL;
```
Результат
![Виконання другого запиту](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/f373f24e-88c6-463c-89a4-2680256818b2)

### Запит 3. Вибірка інформації про всі комп'ютерне обладнання у вказаному офісі:

```sql
SELECT * FROM ComputerEquipment WHERE office_id = 213;
```
Результат
![Результат третього запиту](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/d96a944a-493d-4cfa-9a98-0066591823eb)

### Запит 4. Отримання інформації про офіси та їхніх менеджерів:

```sql
SELECT o.office_id, o.office_name, o.manager_id, 
m.manager_name, m.contact_info
FROM Offices o
JOIN OfficeManagers m ON o.manager_id = m.manager_id;
```
Результат
![Результат четвертого запиту](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/584b4d73-7dd9-41b5-8efa-051e6bfad945)

### Запит 5. Знаходження офісу з найбільшою кількістю загалом обладнанняя в 
### сервісі:

```sql
SELECT office_id, COUNT(*) AS total_equipment_on_service
FROM (
SELECT office_id FROM ComputerEquipment WHERE service_id IS NOT 
NULL
 UNION ALL
SELECT office_id FROM NetworkEquipment WHERE service_id IS NOT 
NULL
) AS equipment_on_service
GROUP BY office_id
ORDER BY total_equipment_on_service DESC
LIMIT 1;
```
Результат
![Результат виконання п'ятого запиту](https://github.com/Vasil-Babi1/DbBabichykVasil/assets/150590016/60ce4235-a735-4cc3-b84d-d61080db13b1)







