create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [�����](
[�����] int not null,
[����] datetime not null,
[������������ ������] nvarchar(250) not null,
[�������] nvarchar(250) not null,
[��������] nvarchar(250) not null,
[������������� ��������] nvarchar(250) null,
[���������] int null,
[�������� ���� ����������] datetime null,
[������� �����] image null
)

create table [������������](
[�����] nvarchar(100) not null,
[������] nvarchar(100) not null,
[����] nvarchar(250) not null,
[���] nvarchar(250) null,
[����] image null
)

create table [�������](
[������������] nvarchar(250) not null,
[�������] float not null
)

create table [������������ �������������](
[�������] nvarchar(250) not null,
[������������]nvarchar(250) not null,
[����������] int not null
)

create table [��� ������������](
[������������] nvarchar(250) not null
)

create table [������������](
[����������] int not null,
[��� ������������] nvarchar(250) not null,
[��������������] nvarchar(1000) null
)

create table [������������ ��������](
[�������] nvarchar(250) not null,
[��������] nvarchar(100) not null,
[���������� �����] int not null,
[��� ������������] nvarchar(250) null,
[����� �� ��������] nvarchar(250) not null
)

create table [������������ ��������� ��� �����](
[�������] nvarchar(250) not null,
[�������� ��� �����] int not null,
[����������] int not null
)

create table [������������ �����������](
[�������] nvarchar(250) not null,
[����������] int not null,
[����������] int not null
)

create table [����������](
[�������] int not null,
[������������] nvarchar(250) not null,
[������� ���������] nvarchar(250) not null,
[����������] int not null,
[�������� ���������] nvarchar(250) null,
[�����������] image null,
[��� �����������] nvarchar(250) not null,
[���������� ����] int not null,
[����] nvarchar(250) null,
[�������] nvarchar(250) null,
[��������������] nvarchar(250) null
)

create table [��������� ��� �����](
[�������] int not null,
[������������] nvarchar(250) not null,
[������� ���������] nvarchar(250) not null,
[����������] int not null,
[�������� ���������] nvarchar(250) null,
[�����������] image  null,
[��� ��������� ��� �����] nvarchar(250) not null,
[���������� ����] int not null,
[���] float not null
)

create table [���������](
[������������] nvarchar(250) not null ,
[�����] nvarchar(250) null,
[���� ��������] nvarchar(250) not null
)

drop table [�����],[����������],[�������],[������������],[������������],[���������],[������������ �����������],[������������ ��������],[������������ �������������],[������������ ��������� ��� �����],[��� ������������],[��������� ��� �����]
--alter table [��������� ��� �����] WITH CHECK ADD FOREIGN KEY ([�������� ���������]) REFERENCES [���������] ([������������]);