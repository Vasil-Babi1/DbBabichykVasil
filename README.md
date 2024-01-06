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
