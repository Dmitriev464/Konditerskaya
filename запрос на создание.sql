create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [�����](
[�����] int not null,
[����] datetime not null,
[������������ ������] varchar(max) not null,
[�������] varchar(max) not null,
[��������] varchar(max) not null,
[������������� ��������] varchar(max) null,
[���������] int null,
[�������� ���� ����������] datetime null,
[������� �����] image null
)

create table [������������](
[�����] varchar(max) not null,
[������] varchar(max) not null,
[����] varchar(max) not null,
[���] varchar(max) null,
[����] image null
)

create table [�������](
[������������] varchar(max) not null Primary key,
[�������] float not null
)

create table [������������ �������������](
[�������] varchar(max) not null,
[������������] varchar(max) not null,
[����������] int not null
)

create table [��� ������������](
[������������] varchar(max) not null Primary key
)

create table [������������](
[����������] int not null,
[��� ������������] varchar(max) not null,
[��������������] varchar(max) null
)

create table [������������ ��������](
[�������] varchar(max) not null,
[��������] varchar(max) not null,
[���������� �����] int not null,
[��� ������������] varchar(max) null,
[����� �� ��������] nvarchar(max) not null
)

create table [������������ ��������� ��� �����](
[�������] varchar(max) not null,
[�������� ��� �����] varchar(max) not null,
[����������] int not null
)

create table [������������ �����������](
[�������] varchar(max) not null,
[����������] varchar(max) not null,
[����������] int not null
)

create table [����������](
[�������] int not null,
[������������] varchar(max) not null,
[������� ���������] varchar(max) not null,
[����������] int not null,
[�������� ���������] varchar(max) null,
[�����������] image null,
[��� �����������] varchar(max) not null,
[���������� ����] int not null,
[����] varchar(max) null,
[�������] varchar(max) null,
[��������������] varchar(max) null
)

create table [��������� ��� �����](
[�������] int not null,
[������������] varchar(max) not null,
[������� ���������] varchar(max) not null,
[����������] int not null,
[�������� ���������] varchar(max) null,
[�����������] image  null,
[��� ��������� ��� �����] varchar(max) not null,
[���������� ����] int not null,
[���] float not null
)

create table [���������](
[������������] varchar(max) not null Primary key,
[�����] varchar(max) null,
[���� ��������] nvarchar(max) not null
)

alter table [��������� ��� �����] WITH CHECK ADD FOREIGN KEY ([�������� ���������]) REFERENCES [���������] ([������������]);