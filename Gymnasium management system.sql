-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 05:06 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Gymnasium Management System`
--
CREATE DATABASE Gym;
-- --------------------------------------------------------
USE Gym;
--
-- Table structure for table `user`
--
CREATE TABLE [user] (
  [user_id] VARCHAR(20) NOT NULL,
  [name] VARCHAR(30) NOT NULL,
  [gender] VARCHAR(30) NOT NULL,
  [phone_number] varchar(10) NOT NULL,
  [address] VARCHAR(30) NOT NULL,
  [username] VARCHAR(20) NOT NULL,
  [password] VARCHAR(20) NOT NULL,
);


--
-- Dumping data for table `user`
--

INSERT INTO [user] ([user_id], [name], [gender], [phone_number], [address],[username],[password]) VALUES
('A001', 'Aditya','Male','7142021234','23 Roxbury St','aditya001','asdfghjk99'),
('A002', 'Doherty','Male','8765098667','3 Robin St','doh99','123asdfghjk'),
('A003', 'Adam','Male','2329854098','29 Roxbury St','adam001','adama1244'),
('A004', 'Roger','Male','8785598667','3 New St','rog01','asasdddfghjk'),
('A005', 'North','Male','7134021234','11 Sandy St','north00','south879473'),
('A006', 'Craig','Male','6662021234','43 Green St','craig99','877dsfsdf'),
('A007', 'Phil','Male','7189021234','34 Tobey St','phil001','8f9sdfdfd'),
('A008', 'Phoebe','Female','7145521234','33 Roxbury St','ph001','fdsdf8394'),
('A009', 'Rachel','Female','1242021234','99 Raine St','rach89435','jfksdjf874'),
('A010', 'Smith','Male','7765098667','13 Forsyth St','smith001','98sfdsdf35'),
('A011', 'Foram','Female','7142531234','3 Heath St','foram4334','8947jgfdd'),
('A012', 'Natalie','Female','8790098667','22 Green St','nat744','dfdf888f'),
('A013', 'Kelsey','Female','7832098667','31 Robin St','kel78','8ffasdfghjk'),
('A014', 'Corey','Male','7142553234','2 Greg St','cor44','89fsdasdfghjk'),
('A015', 'Heather','Female','3332098667','13 Green St','h333','89sdfig87fgd'),
('A016', 'Samantha','Female','3212021234','22 Green St','sam88','89gfffasdfghjk');

-- --------------------------------------------------------
select * from [User];
--
-- Table structure for table `member`
--

CREATE TABLE [member] (
  [member_id] varchar(10) NOT NULL,
  [name] varchar(30) DEFAULT NULL,
  [join_date] date DEFAULT NULL,
  [membership_end_date] date DEFAULT NULL,
  [user_id] varchar(10) DEFAULT NULL,
  [age] int DEFAULT NULL,
  [email] varchar(20) DEFAULT NULL,
  [gender] varchar(10) DEFAULT NULL,
  [phone_number] varchar(10) DEFAULT NULL,
  [address] varchar(30) DEFAULT NULL
);

--
-- Dumping data for table `member`
--

INSERT INTO [member] ([member_id], [name], [join_date],[membership_end_date], [user_id],[age],[email], [gender],[phone_number], [address]) VALUES
('M1', 'Aditya','02-22-2022','02-22-2023','A001','26','a2323@gmail.com','Male','7142021234','23 Roxbury St'),
('M2', 'Adam','02-22-2022','03-22-2022','A003','21','ad323@gmail.com','Male','2329854098','29 Roxbury St'),
('M3', 'North','02-22-2022','05-22-2022','A005','26','n113@gmail.com','Male','7134021234','11 Sandy St'),
('M4', 'Craig','02-25-2022','05-25-2022','A006','24','cr233@gmail.com','Male','6662021234','43 Green St'),
('M5', 'Phil','02-25-2022','02-25-2023','A007','23','ph003@gmail.com','Male','7189021234','34 Tobey St'),
('M6', 'Phoebe','02-28-2022','08-28-2022','A008','19','ph01@gmail.com','Female','7145521234','33 Roxbury St'),
('M7', 'Rachel','02-28-2022','02-28-2023','A009','20','rach013@gmail.com','Female','1242021234','99 Raine St'),
('M8', 'Foram','03-01-2022','06-01-2022','A011','21','f4m@gmail.com','Female','7142531234','3 Heath St'),
('M9', 'Corey','03-01-2022','04-01-2022','A014','32','cr12@gmail.com','Male','7142553234','2 Greg St'),
('M10', 'Samantha','03-01-2022','04-01-2022','A016','30','sammy3@gmail.com','Female','3212021234','22 Green St');
-- --------------------------------------------------------
--
-- Table structure for table `membership plan`
--

CREATE TABLE [membership_plan] (
  [plan_id] varchar(10) NOT NULL,
  [user_id] varchar(10) NULL,
  [signup_fee] int NOT NULL,
  [validity_monthwise] int NOT NULL,
  [fees] int NOT NULL,
  [name] varchar(30) NOT NULL
);

--
-- Dumping data for table `membership_plan`
--

INSERT INTO [membership_plan] ([plan_id], [user_id], [signup_fee], [validity_monthwise], [fees],[name]) VALUES
('P1', 'A003','100','1','500','Monthly'),
--('P1', 'A014','100','1','500','Monthly'),
--('P1', 'A016','100','1','500','Monthly'),#
('P2', 'A005','100','3','1500','Quaterly'),
--('P2', 'A006','100','3','1500','Quaterly'),#
--('P2', 'A011','100','3','1500','Quaterly'),#
('P3', 'A008','100','6','3000','Half Yearly'),
('P4', 'A001','100','12','6000','Yearly'),
--('P4', 'A007','100','12','6000','Yearly'),#
--('P4', 'A009','100','12','6000','Yearly'),#
('P5', NULL,'100','60','30000','Lifetime'),
('P6', 'A003;A005','100','1','500','Monthly');


select * from [membership_plan];
--
-- Table structure for table `payments`
--

CREATE TABLE [payments] (
  [payment_id] varchar(20) NOT NULL,
  [date] date NOT NULL,
  [amount($)] int DEFAULT NULL,
  [user_id] varchar(10) DEFAULT NULL,
  [member_id] varchar(10) DEFAULT NULL
) 

ALTER TABLE [payments]
ADD [type] varchar(12) DEFAULT NULL
-- Dumping data for table `payments`
--


INSERT INTO [payments] ([payment_id], [date],[amount($)], [user_id],[member_id],[type]) VALUES
('Payment1', '02-22-2022','6100','A001','M1','Cash'),
('Payment2', '02-22-2022','600','A003','M2','Cash'),
('Payment3', '02-22-2022','1600','A005','M3','Credit Card'),
('Payment4', '02-25-2022','1600','A006','M4','Debit Card'),
('Payment5', '02-25-2022','6100','A007','M5','Cash'),
('Payment6', '02-28-2022','3100','A008','M6','Credit Card'),
('Payment7', '02-28-2022','6100','A009','M7','Debit Card'),
('Payment8', '03-01-2022','1600','A011','M8','Debit Card'),
('Payment9', '03-01-2022','600','A014','M9','Credit Card'),
('Payment10', '03-01-2022','600','A016','M10','Cash');


select * from payments;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE [instructor] (
  [instructor_id] varchar(10) NOT NULL,
  [name] varchar(30) DEFAULT NULL,
  [phone_number] varchar(10) DEFAULT NULL,
  [user_id] varchar(10) DEFAULT NULL,
  [email] varchar(20) DEFAULT NULL,
  [gender] varchar(10) DEFAULT NULL,
  [address] varchar(30) DEFAULT NULL,
  [expertise] varchar(30) DEFAULT NULL
);

--
-- Dumping data for table `instructor`
--

INSERT INTO [instructor] ([instructor_id],[name], [phone_number], [user_id], [email],[gender],[address],[expertise]) VALUES
('I1', 'Doherty','8765098667','A002','doh1@gmail.com','Male','3 Robin St','Legs'),
('I2', 'Roger','8785598667','A004','droger1@gmail.com','Male','3 New St','Upper body'),
('I3', 'Smith','7765098667','A0010','smit1@gmail.com','Male','13 Forsyth St','Cardio'),
('I4', 'Natalie','8790098667','A0012','nat@gmail.com','Female','22 Green St','Cardio'),
('I5', 'Kelsey','7832098667','A0013','kels@gmail.com','Female','31 Robin St','Upper body'),
('I6', 'Heather','3332098667','A0015','heat@gmail.com','Female','13 Green St','Legs');

-- --------------------------------------------------------

--
-- Table structure for table `physique`
--

CREATE TABLE [physique] (
  [bmi] int NOT NULL,
  [height(cm)] int DEFAULT NULL,
  [weight(lbs)] int DEFAULT NULL,
  [member_id] varchar(10) DEFAULT NULL,
  [body_fat] int DEFAULT NULL
  );
  
--
-- Dumping data for table `physique`
--
  
  INSERT INTO [physique] ([bmi], [height(cm)],[weight(lbs)], [member_id], [body_fat]) VALUES 
  ('17','165','105','M1','15'),
  ('23','167','145','M2','20'),
  ('28','175','190','M3','26'),
  ('25','152','130','M4','24'),
  ('35','165','105','M5','30'),
  ('30','162','205','M6','28'),
  ('19','170','130','M7','20'),
  ('20','155','110','M8','21'),
  ('22','170','165','M9','25'),
  ('30','160','170','M10','29');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--
  
  

CREATE TABLE [workout] (
  [workout_id] varchar(10) NOT NULL,
  [name] varchar(20) DEFAULT NULL,
  [description] varchar(50) DEFAULT NULL
   );
   
--
-- Dumping data for table `workout`
--

   
 INSERT INTO [workout] ([workout_id], [name],[description]) VALUES
 ('W1', 'Endurance','Increases breathing and heart rates'),
 ('W2', 'Strength','Muscle building'),
 ('W3', 'Balance','Good for meditation'),
 ('W4', 'Flexibility','Improves athletic performance');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE [workout_plan] (
  [workout_plan_id] varchar(10) NOT NULL,
  [member_id] varchar(10) NOT NULL,
  [workout_id] varchar(10) NOT NULL,
  [weekly_workout_days] int NOT NULL,
  [weekly_workout_hours] int NOT NULL,
  [instructor_id] varchar(10) DEFAULT NULL
  );
  
--
-- Dumping data for table `workout plan`
--

INSERT INTO [workout_plan] ([workout_plan_id], [member_id],[workout_id], [weekly_workout_days], [weekly_workout_hours], [instructor_id]) VALUES
('WP1', 'M1','W1','20','20','I1'),
('WP2', 'M2','W1','20','30','I1'),
('WP3', 'M3','W2','15','20','I2'),
('WP4', 'M5','W4','18','18','I5'),
('WP5', 'M6','W3','18','25','I4'),
('WP6', 'M7','W2','20','40','I2'),
('WP7', 'M8','W1','20','25','I4'),
('WP8', 'M9','W3','25','25','I3');


-- Indexes for table `User`
CREATE UNIQUE INDEX IX_User_UserID ON [user] ([user_id]);

-- Indexes for table `member`
CREATE UNIQUE INDEX IX_Member_MemberID ON [member] ([member_id]);
CREATE INDEX IX_Member_UserID ON [member] ([user_id]);

-- Indexes for table `membership_plan`
CREATE UNIQUE INDEX IX_MembershipPlan_PlanID ON [membership_plan] ([plan_id]);
CREATE INDEX IX_MembershipPlan_UserID ON [membership_plan] ([user_id]);

-- Indexes for table `instructor`
CREATE UNIQUE INDEX IX_Instructor_InstructorID ON [instructor] ([instructor_id]);
CREATE INDEX IX_Instructor_UserID ON [instructor] ([user_id]);

-- Indexes for table `workout`
CREATE UNIQUE INDEX IX_Workout_WorkoutID ON [workout] ([workout_id]);

-- Indexes for table `workout_plan`
CREATE UNIQUE INDEX IX_WorkoutPlan_WorkoutPlanID ON [workout_plan] ([workout_plan_id]);
CREATE INDEX IX_WorkoutPlan_MemberID ON [workout_plan] ([member_id]);
CREATE INDEX IX_WorkoutPlan_WorkoutID ON [workout_plan] ([workout_id]);
CREATE INDEX IX_WorkoutPlan_InstructorID ON [workout_plan] ([instructor_id]);

-- Indexes for table `payments`
CREATE UNIQUE INDEX IX_Payments_PaymentID ON [payments] ([payment_id]);
CREATE INDEX IX_Payments_MemberID ON [payments] ([member_id]);

-- Indexes for table `physique`
CREATE INDEX IX_Physique_MemberID ON [physique] ([member_id]);


-- Constraints for table `User`

ALTER TABLE [user]
  ADD CONSTRAINT PK_user PRIMARY KEY ([user_id]);

-- Constraints for table `member`
ALTER TABLE [member]
  ADD CONSTRAINT PK_member PRIMARY KEY ([member_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_member_user FOREIGN KEY ([user_id]) REFERENCES [user]([user_id]);

-- Constraints for table `membership_plan`
ALTER TABLE [membership_plan]
  ADD CONSTRAINT PK_membership_plan PRIMARY KEY ([plan_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_membership_plan_user FOREIGN KEY ([user_id]) REFERENCES [user]([user_id]);

-- Constraints for table `instructor`
ALTER TABLE [instructor]
  ADD CONSTRAINT PK_instructor PRIMARY KEY ([instructor_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_instructor_user FOREIGN KEY ([user_id]) REFERENCES [user]([user_id]);

-- Constraints for table `workout`
ALTER TABLE [workout]
  ADD CONSTRAINT PK_workout PRIMARY KEY ([workout_id]);

-- Constraints for table `workout_plan`
ALTER TABLE [workout_plan]
  ADD CONSTRAINT PK_workout_plan PRIMARY KEY ([workout_plan_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_workout_plan_member FOREIGN KEY ([member_id]) REFERENCES [member]([member_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_workout_plan_workout FOREIGN KEY ([workout_id]) REFERENCES [workout]([workout_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_workout_plan_instructor FOREIGN KEY ([instructor_id]) REFERENCES [instructor]([instructor_id]);

-- Constraints for table `payments`
ALTER TABLE [payments]
  ADD CONSTRAINT PK_payments PRIMARY KEY ([payment_id])

ALTER TABLE [member]
  ADD CONSTRAINT FK_payments_member FOREIGN KEY ([member_id]) REFERENCES [member]([member_id]);

-- Constraints for table `physique`
ALTER TABLE [physique]
  ADD CONSTRAINT FK_physique_member FOREIGN KEY ([member_id]) REFERENCES [member]([member_id]);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--Queries



-- Select Member's name, user's id, member's age and Membership plan of the member-done
SELECT m.name,m.[user_id],m.age,mp.name
FROM dbo.member m
INNER JOIN dbo.membership_plan mp ON m.[user_id] = mp.[user_id]
GROUP BY m.name, m.[user_id],m.age,mp.name
order by m.name;


-- Selecting instructor name with skillset - done
SELECT i.name, i.expertise
FROM instructor AS i
GROUP BY i.name, i.expertise
ORDER BY i.name ASC


-- Calculating total active and expired members 
with cte1 as (
SELECT count(u.name) as expired_ct
FROM [user] u 
left JOIN member m on m.name = u.name
where m.name is null 
),
cte2 as (SELECT count(u.name) as active_ct
FROM [user] u 
left JOIN member m on m.name = u.name
where m.name is not null 
)
SELECT cte1.expired_ct, cte2.active_ct
FROM cte1, cte2;



--Calculting payments of members
SELECT m.name,p.[amount($)]
FROM member m
join payments p ON
m.[member_id] = p.[member_id] 
group by m.name,p.[amount($)];


--Selecting members having age more than the average age -done
WITH temporarytable(averagevalue) as 
(
	select avg(m.age) 
    from member m) 
	select m.[member_id],m.name,m.age
    from member m, temporarytable
    where m.age > temporarytable.averagevalue;





-- selecting all trainer names who are offering training in Cardio program
SELECT DISTINCT i.name,i.expertise
FROM instructor i
WHERE Expertise LIKE '%CARDIO%';



-- Selecting members having BMI above or below average-done
select m.name,m.age,ph.bmi,ph.[body_fat]
from member m
inner join physique ph ON 
m.[member_id] = ph.[member_id]
where bmi > '25' or bmi < '18'
group by m.name,m.age,ph.bmi,ph.[body_fat]
order by ph.bmi desc;



-- Selecting the instructors working on Flexibility and Endurance workout plans - done
(
	select i.name,i.[instructor_id],wp.[workout_plan_id],w.name
	from instructor i
	inner join workout_plan wp ON 
	i.[instructor_id] = wp.[instructor_id]
	inner join workout w ON 
	wp.[workout_id] = w.[workout_id]
    where w.name = 'Flexibility'
)
UNION
(
	select i.name,i.[instructor_id],wp.[workout_plan_id],w.name
	from instructor i
	inner join workout_plan wp ON 
	i.[instructor_id] = wp.[instructor_id]
	inner join workout w ON 
	wp.[workout_id] = w.[workout_id]
    where w.name = 'Endurance'
);

-- Selecting male members in the gym - done
SELECT u1.[user_id],u1.name,u1.gender
  FROM [user] AS u1
  WHERE NOT EXISTS
  ( SELECT * FROM [user] AS u2 
		    WHERE u1.[user_id] = u2.[user_id] 
			 AND u1.gender = 'Female'
	);








        
