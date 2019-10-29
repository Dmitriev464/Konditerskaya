create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [Заказ](
[Номер] int not null,
[Дата] datetime not null,
[Наименование заказа] varchar(max) not null,
[Изделие] varchar(max) not null,
[Заказчик] varchar(max) not null,
[Ответственный менеджер] varchar(max) null,
[Стоимость] int null,
[Плановая дата завершения] datetime null,
[Примеры работ] image null
)

create table [Пользователь](
[Логин] varchar(max) not null,
[Пароль] varchar(max) not null,
[Роль] varchar(max) not null,
[ФИО] varchar(max) null,
[Фото] image null
)

create table [Изделие](
[Наименование] varchar(max) not null Primary key,
[Размеры] float not null
)

create table [Спецификация полуфабрикаты](
[Изделие] varchar(max) not null,
[Полуфабрикат] varchar(max) not null,
[Количество] int not null
)

create table [Тип оборудования](
[Наименование] varchar(max) not null Primary key
)

create table [Оборудование](
[Маркировка] int not null,
[Тип оборудования] varchar(max) not null,
[Характеристики] varchar(max) null
)

create table [Спецификация операции](
[Изделие] varchar(max) not null,
[Операция] varchar(max) not null,
[Порядковый номер] int not null,
[Тип оборудования] varchar(max) null,
[Время на операцию] nvarchar(max) not null
)

create table [Спецификация украшения для торта](
[Изделие] varchar(max) not null,
[Урашение для торта] varchar(max) not null,
[Количесвто] int not null
)

create table [Спецификация ингредиенты](
[Изделие] varchar(max) not null,
[Ингредиент] varchar(max) not null,
[Количество] int not null
)

create table [Ингредиент](
[Артикул] int not null,
[Наименование] varchar(max) not null,
[Единица измерения] varchar(max) not null,
[Количество] int not null,
[Основной поставщик] varchar(max) null,
[Изображение] image null,
[Тип ингредиента] varchar(max) not null,
[Закупочная цена] int not null,
[ГОСТ] varchar(max) null,
[Фасовка] varchar(max) null,
[Характеристика] varchar(max) null
)

create table [Украшение для торта](
[Артикул] int not null,
[Наименование] varchar(max) not null,
[Единица измерения] varchar(max) not null,
[Количество] int not null,
[Основной поставщик] varchar(max) null,
[Изображение] image  null,
[Тип украшения для торта] varchar(max) not null,
[Закупочная цена] int not null,
[Вес] float not null
)

create table [Поставщик](
[Наименование] varchar(max) not null Primary key,
[Адрес] varchar(max) null,
[Срок доставки] nvarchar(max) not null
)

alter table [Украшение для торта] WITH CHECK ADD FOREIGN KEY ([Основной поставщик]) REFERENCES [Поставщик] ([Наименование]);