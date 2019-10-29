create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [Заказ](
[Номер] int not null,
[Дата] datetime not null,
[Наименование заказа] varchar(max) not null,
[Изделие] varchar(50) not null,
[Заказчик] varchar(max) not null,
[Ответственный менеджер] varchar(max) null,
[Стоимость] smallint null,
[Плановая дата завершения] datetime null,
[Примеры работ] image null
)

create table [Пользователь](
[Логин] int not null,
[Пароль] datetime not null,
[Роль] varchar(max) not null,
[ФИО] varchar(50) null,
[Фото] varchar(max) null
)

create table [Изделие](
[Наименование] int not null Primary key,
[Размеры] datetime not null
)

create table [Спецификация полуфабрикаты](
[Изделие] int not null,
[Полуфабрикат] datetime not null,
[Количество] varchar(max) not null
)

create table [Тип оборудования](
[Наименование] int not null Primary key
)

create table [Оборудование](
[Маркировка] int not null,
[Тип оборудования] datetime not null,
[Характеристики] varchar(max) null
)

create table [Спецификация операции](
[Изделие] int not null,
[Операция] datetime not null,
[Порядковый номер] varchar(max) not null,
[Тип оборудования] varchar(50) null,
[Время на операцию] varchar(max) not null
)

create table [Спецификация украшения для торта](
[Изделие] int not null,
[Урашение для торта] datetime not null,
[Количесвто] varchar(max) not null
)

create table [Спецификация ингредиенты](
[Изделие] int not null,
[Ингредиент] datetime not null,
[Количество] varchar(max) not null
)

create table [Ингредиент](
[Артикул] int not null,
[Наименование] datetime not null,
[Единица измерения] varchar(max) not null,
[Количество] varchar(50) not null,
[Основной поставщик] varchar(max) null,
[Изображение] varchar(max) null,
[Тип ингредиента] varchar(max) not null,
[Закупочная цена] varchar(max) not null,
[ГОСТ] varchar(max) null,
[Фасовка] varchar(max) null,
[Характеристика] varchar(max) null
)

create table [Украшение для торта](
[Артикул] int not null,
[Наименование] datetime not null,
[Единица измерения] varchar(max) not null,
[Количество] varchar(50) not null,
[Основной поставщик] varchar(max) null,
[Изображение] varchar(max)  null,
[Тип украшения для торта] varchar(max) not null,
[Закупочная цена] varchar(max) not null,
[Вес] varchar(max) not null
)

create table [Поставщик](
[Наименование] int not null Primary key,
[Адрес] datetime null,
[Срок доставки] int not null
)

alter table [Украшение для торта] WITH CHECK ADD FOREIGN KEY ([Основной поставщик]) REFERENCES [Поставщик] ([Наименование]);