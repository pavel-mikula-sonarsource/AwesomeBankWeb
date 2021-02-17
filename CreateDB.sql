--CREATE DATABASE AwesomeBank
--CREATE LOGIN AwesomeBank WITH PASSWORD='TB2jk9D%mL{%CI#K'
USE AwesomeBank
--CREATE USER AwesomeBank
--EXEC sp_addrolemember 'db_owner', 'AwesomeBank'

CREATE TABLE Employee(
  ID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  Login NVARCHAR(100) NOT NULL DEFAULT '',
  Hash VARBINARY(2048) NULL
)

INSERT INTO Employee VALUES
  ('Admin', CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX)))
,  ('CEO', CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX)))
,  ('Consultant', CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX))+CAST(NEWID() AS VARBINARY(MAX)))

SELECT * FROM Employee

--DROP TABLE Customer
CREATE TABLE Customer(
	ID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	Login NVARCHAR(100) NOT NULL DEFAULT '',
	Password NVARCHAR(100) NOT NULL DEFAULT '',
	Reputation NVARCHAR(MAX) NOT NULL DEFAULT '',
	AccountBalance MONEY NOT NULL DEFAULT 0
)

INSERT INTO Customer VALUES
  ('Pavel',     'Secret!','He''s bad, do not lend him money!', -100)

, ('Alexander', '123456', 'Verified', 10000)
, ('Alicia',    'cat',    'Verified', 10000)
, ('Aline',     'dog',    'Verified', 10000)
, ('Amr',       '123456', 'Verified', 10000)
, ('Amy',       'cat',    'Verified', 10000)
, ('Andrea',    'dog',    'Verified', 10000)
, ('Carine',    '123456', 'Verified', 10000)
, ('Christel',  'cat',    'Verified', 10000)
, ('Christin',  'dog',    'Verified', 10000)
, ('Fabio',     '123456', 'Verified', 10000)
, ('Guillaume', 'cat',    'Verified', 10000)
, ('Kahn',      'dog',    'Verified', 10000)
, ('Lauren',    '123456', 'Verified', 10000)
, ('Laurent',   'cat',    'Verified', 10000)
, ('Michael',   'dog',    'Verified', 10000)
, ('Natalia',   '123456', 'Verified', 10000)
, ('Rakesh',    'cat',    'Verified', 10000)
, ('Reinis',    'dog',    'Verified', 10000)

, ('Austin',    '123456', 'Verified', 10000)
, ('Bertrand',  'cat',    'Verified', 10000)
, ('Devin',     'dog',    'Verified', 10000)
, ('Eli',       '123456', 'Verified', 10000)
, ('Elsa',      'cat',    'Verified', 10000)
, ('Gus',       'dog',    'Verified', 10000)
, ('Ichha',     '123456', 'Verified', 10000)
, ('Kim',       'cat',    'Verified', 10000)
, ('Lindsey',   'dog',    'Verified', 10000)
, ('Paige',     '123456', 'Verified', 10000)
, ('Raymond',   'cat',    'Verified', 10000)
, ('Tito',      'dog',    'Verified', 10000)
, ('Veronica',  '123456', 'Verified', 10000)


SELECT * FROM Customer

--DROP TABLE Article
CREATE TABLE Article(
	ID INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	Active BIT NOT NULL DEFAULT 0,
  Page NVARCHAR(100) NOT NULL DEFAULT '',
	Title NVARCHAR(100) NOT NULL DEFAULT '',
	Text NVARCHAR(MAX) NOT NULL DEFAULT '',
)

INSERT INTO Article VALUES
  (0, 'Test', 'Test', 'This is test article')
,	(1, '', 'Security is priority', 'We pay close attantion to <b>security</b> and protecting your investments!<br /><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum, nunc nec varius hendrerit, felis sem molestie orci, in fringilla lacus est quis augue. Vestibulum condimentum bibendum quam sed finibus. Vestibulum hendrerit, nisi non vulputate posuere, leo nunc lobortis sem, in porta est turpis non dui. Duis diam felis, molestie in tempor et, aliquet ut magna. Proin pharetra est non leo vestibulum, a lobortis lacus placerat. Vivamus sem velit, bibendum eu lorem quis, finibus porta eros. Etiam ex nisl, pharetra quis laoreet at, condimentum nec nibh. Praesent mattis metus orci, eu dignissim sapien commodo nec. Pellentesque non dui bibendum, elementum erat vitae, dignissim libero. Nulla ut lacinia augue, eget mattis ante. Cras condimentum tellus sit amet efficitur aliquet. Sed tincidunt dolor urna, eget rhoncus sem pharetra eget. Phasellus feugiat, lectus et sodales porttitor, quam libero ultrices est, id elementum quam enim id urna. Etiam semper neque a risus faucibus varius. Interdum et malesuada fames ac ante ipsum primis in faucibus.')
, (1, 'About', 'About us', 'We''re the <b>best</b> and most <b>secure</b> bank ever!<br /><br />Nunc aliquam euismod ante id porta. Donec eget iaculis metus. Vestibulum velit lorem, cursus iaculis lorem vitae, varius semper nulla. Mauris congue hendrerit ante sed lobortis. Proin eu varius sem, sed pellentesque nunc. Donec maximus diam vel mi condimentum euismod. Cras in sagittis lectus. Sed et condimentum mi. Nulla posuere ac purus eget pharetra. Aenean elementum vestibulum leo in tempor. Sed at orci efficitur, sodales urna eu, varius risus. Integer sagittis luctus mollis. Suspendisse rutrum enim at elit imperdiet accumsan.<br /><br />Cras posuere orci eu lorem bibendum faucibus. Aenean placerat libero et urna tempor, eu posuere augue lobortis. Duis vehicula dignissim libero, id consequat metus ultricies eu. Curabitur varius consectetur dui, ac commodo libero semper nec. Suspendisse felis felis, consequat sit amet orci a, consectetur vehicula dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi ornare libero auctor pharetra consequat. Aliquam sed turpis purus. Mauris convallis justo aliquam viverra eleifend. Donec vitae neque mauris.')

SELECT * FROM Article