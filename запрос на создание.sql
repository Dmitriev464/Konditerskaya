create database Dmitriev_464_kondit
use Dmitriev_464_kondit

create table [�����](
[�����] int not null,
[����] datetime not null,
[������������ ������] varchar(max) not null,
[�������] varchar(50) not null,
[��������] varchar(max) not null,
[������������� ��������] varchar(max) null,
[���������] smallint null,
[�������� ���� ����������] datetime null,
[������� �����] image null
)

create table [������������](
[�����] int not null,
[������] datetime not null,
[����] varchar(max) not null,
[���] varchar(50) null,
[����] varchar(max) null
)

create table [�������](
[������������] int not null,
[�������] datetime not null
)

create table [������������ �������������](
[�������] int not null,
[������������] datetime not null,
[����������] varchar(max) not null
)

create table [��� ������������](
[������������] int not null
)

create table [������������](
[����������] int not null,
[��� ������������] datetime not null,
[��������������] varchar(max) null
)

create table [������������ ��������](
[�������] int not null,
[��������] datetime not null,
[���������� �����] varchar(max) not null,
[��� ������������] varchar(50) null,
[����� �� ��������] varchar(max) not null
)

create table [������������ ��������� ��� �����](
[�������] int not null,
[�������� ��� �����] datetime not null,
[����������] varchar(max) not null
)

create table [������������ �����������](
[�������] int not null,
[����������] datetime not null,
[����������] varchar(max) not null
)

create table [����������](
[�������] int not null,
[������������] datetime not null,
[������� ���������] varchar(max) not null,
[����������] varchar(50) not null,
[�������� ���������] varchar(max) null,
[�����������] varchar(max) null,
[��� �����������] varchar(max) not null,
[���������� ����] varchar(max) not null,
[����] varchar(max) null,
[�������] varchar(max) null,
[��������������] varchar(max) null
)

create table [��������� ��� �����](
[�������] int not null,
[������������] datetime not null,
[������� ���������] varchar(max) not null,
[����������] varchar(50) not null,
[�������� ���������] varchar(max) null,
[�����������] varchar(max)  null,
[��� ��������� ��� �����] varchar(max) not null,
[���������� ����] varchar(max) not null,
[���] varchar(max) not null
)

create table [���������](
[������������] int not null,
[�����] datetime null,
[���� ��������] int not null
)