create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [Заказ](
[Номер] int not null,
[Дата] datetime not null,
[Наименование заказа] nvarchar(150) not null,
[Изделие] nvarchar(150) not null,
[Заказчик] nvarchar(150) not null,
[Ответственный менеджер] nvarchar(150) null,
[Стоимость] int null,
[Плановая дата завершения] datetime null,
[Примеры работ] image null
)

create table [Пользователь](
[Логин] nvarchar(100) not null,
[Пароль] nvarchar(100) not null,
[Роль] nvarchar(150) not null,
[ФИО] nvarchar(150) null,
[Фото] image null
)

create table [Изделие](
[Наименование] nvarchar(150) not null,
[Размеры] float not null
)

create table [Спецификация полуфабрикаты](
[Изделие] nvarchar(150) not null,
[Полуфабрикат]nvarchar(150) not null,
[Количество] int not null
)

create table [Тип оборудования](
[Наименование] nvarchar(150) not null
)

create table [Оборудование](
[Маркировка] int not null,
[Тип оборудования] nvarchar(150) not null,
[Характеристики] nvarchar(1000) null
)

create table [Спецификация операции](
[Изделие] nvarchar(150) not null,
[Операция] nvarchar(100) not null,
[Порядковый номер] int not null,
[Тип оборудования] nvarchar(150) null,
[Время на операцию] nvarchar(150) not null
)

create table [Спецификация украшения для торта](
[Изделие] nvarchar(150) not null,
[Урашение для торта] int not null,
[Количесвто] int not null
)

create table [Спецификация ингредиенты](
[Изделие] nvarchar(150) not null,
[Ингредиент] int not null,
[Количество] int not null
)

create table [Ингредиент](
[Артикул] int not null,
[Наименование] nvarchar(150) not null,
[Единица измерения] nvarchar(150) not null,
[Количество] int not null,
[Основной поставщик] nvarchar(150) null,
[Изображение] image null,
[Тип ингредиента] nvarchar(150) not null,
[Закупочная цена] int not null,
[ГОСТ] nvarchar(150) null,
[Фасовка] nvarchar(150) null,
[Характеристика] nvarchar(150) null
)

create table [Украшение для торта](
[Артикул] int not null,
[Наименование] nvarchar(150) not null,
[Единица измерения] nvarchar(150) not null,
[Количество] int not null,
[Основной поставщик] nvarchar(150) null,
[Изображение] image  null,
[Тип украшения для торта] nvarchar(150) not null,
[Закупочная цена] int not null,
[Вес] float not null
)

create table [Поставщик](
[Наименование] nvarchar(150) not null ,
[Адрес] nvarchar(150) null,
[Срок доставки] nvarchar(150) not null
)

drop table [Заказ],[Ингредиент],[Изделие],[Оборудование],[Пользователь],[Поставщик],[Спецификация ингредиенты],[Спецификация операции],[Спецификация полуфабрикаты],[Спецификация украшения для торта],[Тип оборудования],[Украшение для торта]
--alter table [Украшение для торта] WITH CHECK ADD FOREIGN KEY ([Основной поставщик]) REFERENCES [Поставщик] ([Наименование]);