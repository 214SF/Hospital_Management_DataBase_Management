CREATE DATABASE hms;
USE hms;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE 'admin' (
'id' int(11) NOT NULL,
'username' varchar(255) NOT NULL,
'password' varchar(255) NOT NULL,
'updationDate' varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'saurav', 'admin123', '11-26-2023 11:42:05 AM');
INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(2, 'ankur', 'admin123', '11-23-2023 01:37:05 PM');
INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(3, 'rahul', 'admin123', '10-09-2023 11:42:05 PM');


CREATE TABLE `appointment` (
`id` int(11) NOT NULL,
`doctorSpecialization` varchar(255) DEFAULT NULL,
`doctorId` int(11) DEFAULT NULL,
`userId` int(11) DEFAULT NULL,
`consultancyFees` int(11) DEFAULT NULL,
`appointmentDate` varchar(255) DEFAULT NULL,
`appointmentTime` varchar(255) DEFAULT NULL,
`postingDate` timestamp NULL DEFAULT current_timestamp(),
`userStatus` int(11) DEFAULT NULL,
`doctorStatus` int(11) DEFAULT NULL,
`updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`,
`consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`,
`doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2023-11-10', '12:45 PM', '2023-11-06 12:21:48', 1, 0, '2023-11-06
12:23:35'),
(2, 'Orthopedics', 2, 2, 700, '2023-11-17', '7:00 PM', '2023-11-06 13:16:18', 1, 1, NULL),
(3, 'Dental Care', 3, 1, 1000, '2023-01-18', '7:00 PM', '2023-02-06 13:16:18', 1, 1, NULL),
(4, 'ENT', 1, 3, 500, '2023-06-17', '7:00 PM', '2023-07-06 13:16:18', 1, 0, NULL),
(5, 'Dermatology', 4, 2, 400, '2023-11-10', '12:45 PM', '2023-11-06 12:21:48', 1, 0,
'2023-11-06 12:23:35'),
(6, 'Neurologist', 5, 4, 1300, '2023-09-10', '12:45 PM', '2023-10-11 12:21:48', 1, 0,
'2023-11-06 12:23:35'),
(7, 'Orthopedic', 2, 5, 700, '2023-02-10', '12:45 PM', '2023-03-11 12:21:48', 1, 0,
'2023-11-06 12:23:35'),
(8, 'Dental Care', 3, 3, 1000, '2023-02-10', '12:45 PM', '2023-03-11 12:21:48', 1, 0,
'2023-11-06 12:23:35'),
(9, 'ENT', 1, 4, 500, '2023-02-10', '12:45 PM', '2023-03-11 12:21:48', 1, 0, '2023-11-06
12:23:35'),
(10, 'ENT', 1, 4, 500, '2023-02-10', '12:45 PM', '2023-03-11 12:21:48', 1, 0, '2023-11-06
12:23:35'),
(11, 'Pediatrics', 6, 2, 1700, '2023-04-27', '12:45 PM', '2023-04-28 12:21:48', 1, 0,
'2023-11-06 12:23:35');


CREATE TABLE `doctors` (
`id` int(11) NOT NULL,
`specilization` varchar(255) DEFAULT NULL,
`doctorName` varchar(255) DEFAULT NULL,
`address` longtext DEFAULT NULL,
`docFees` varchar(255) DEFAULT NULL,
`contactno` bigint(11) DEFAULT NULL,
`docEmail` varchar(255) DEFAULT NULL,
`password` varchar(255) DEFAULT NULL,
`creationDate` timestamp NULL DEFAULT current_timestamp(),
`updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`,
`contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Anuj Kumar', 'A 123 XYZ Houston', '500', 142536250, 'anuj@test.com',
'anuj123', '2023-10-30 18:16:52', '2023-11-06 13:20:17'),
(2, 'Orthopedics', 'Vishwajeet Kadam', '1625 Main XYZ Houston', '700', 142587251,
'vishwajeet@test.com', 'vishwajeet123', '2023-10-30 18:16:52', '2023-11-06 13:20:17'),
(3, 'Dental Care', 'Harish Parmar', '123 Hillcrest Austin', '1000', 281537450,
'harish@test.com', 'harish123', '2023-10-30 18:16:52', '2023-11-06 13:20:17'),
(4, 'Dermatology', 'Sushma Pandit', '8181 Hillcroft Houston', '400', 281888450,
'sushma@test.com', 'sushma123', '2023-10-30 18:16:52', '2023-11-06 13:20:17'),
(5, 'Neurologist', 'James Webb', '6969 Staten St Dallas', '1300', 286277450,
'james@test.com', 'james123', '2023-10-30 18:16:52', '2023-11-06 13:20:17'),
(6, 'Pediatrics', 'Robert English', '1313 Emancipation Dr Galveston', '1700', 782277450,
'robert@test.com', 'robert123', '2023-10-30 18:16:52', '2023-11-06 13:20:17');

CREATE TABLE `doctorslog` (
`id` int(11) NOT NULL,
`uid` int(11) DEFAULT NULL,
`username` varchar(255) DEFAULT NULL,
`userip` binary(16) DEFAULT NULL,
`loginTime` timestamp NULL DEFAULT current_timestamp(),
`logout` varchar(255) DEFAULT NULL,
`status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`)
VALUES
(20, NULL, 'anuj@test.com', 0x3a3a3100000000000000000000000000, '2022-11-04
01:02:16', NULL, 0),
(21, 2, 'vishwajeet@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'harish@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'sushma@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'james@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'robert@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anuj@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
13:17:33', '06-11-2022 06:50:28 PM', 1);


CREATE TABLE `doctorspecilization` (
`id` int(11) NOT NULL,
`specilization` varchar(255) DEFAULT NULL,
`creationDate` timestamp NULL DEFAULT current_timestamp(),
`updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`)
VALUES
(1, 'ENT', '2023-10-30 18:11:30', NULL),
(2, 'Orthopedics', '2023-10-30 18:09:46', NULL),
(3, 'Dental Care', '2023-10-30 18:11:39', NULL),
(4, 'Dermatology', '2023-10-30 18:10:28', NULL),
(5, 'Neurologists', '2023-10-30 18:12:30', NULL),
(6, 'Pediatrics', '2023-10-30 18:10:37', NULL);


CREATE TABLE `tblcontactus` (
`id` int(11) NOT NULL,
`fullname` varchar(255) DEFAULT NULL,
`email` varchar(255) DEFAULT NULL,
`contactno` bigint(12) DEFAULT NULL,
`message` mediumtext DEFAULT NULL,
`PostingDate` timestamp NULL DEFAULT current_timestamp(),
`AdminRemark` mediumtext DEFAULT NULL,
`LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
`IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`,
`PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Manju Nath', 'manju@test.com', 1425362514, 'This is for testing purposes. This is
for testing purposes.This is for testing purposes.This is for testing purposes.This is for
testing purposes.This is for testing purposes.This is for testing purposes.This is for testing
purposes.This is for testing purposes.', '2022-10-30 16:52:03', NULL, NULL, NULL),
(2, 'Priya Bapat', 'priya@gmail.com', 1111122233, 'This is for testing', '2022-11-06
13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);


CREATE TABLE `tblmedicalhistory` (
`ID` int(10) NOT NULL,
`PatientID` int(10) DEFAULT NULL,
`BloodPressure` varchar(200) DEFAULT NULL,
`BloodSugar` varchar(200) NOT NULL,
`Weight` varchar(100) DEFAULT NULL,
`Temperature` varchar(200) DEFAULT NULL,
`MedicalPres` mediumtext DEFAULT NULL,
`CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE
current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`,
`Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2023-11-06 13:19:41'),
(2, 2, '79/118', '60', '72', '98', 'Test', '2023-11-06 13:19:41'),
(3, 3, '65/115', '75', '54', '100', 'Test', '2023-11-06 13:19:41'),
(4, 4, '56/100', '83', '63', '101', 'Test', '2023-11-06 13:19:41'),
(5, 5, '97/140', '136', '99', '100', 'Test', '2023-11-06 13:19:41');


CREATE TABLE `tblpage` (
`ID` int(10) NOT NULL,
`PageType` varchar(200) DEFAULT NULL,
`PageTitle` varchar(200) DEFAULT NULL,
`PageDescription` mediumtext DEFAULT NULL,
`Email` varchar(120) DEFAULT NULL,
`MobileNumber` bigint(10) DEFAULT NULL,
`UpdationDate` timestamp NULL DEFAULT current_timestamp(),
`OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`,
`MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom:
1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\"
14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\"
246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital
Management System (HMS) is designed for Any Hospital to replace their existing
manual, paper based system. The new system is to control the following information;
patient information, room availability, staff and operating room schedules, and patient
invoices. These services are to be provided in an efficient, cost effective manner, with
the goal of reducing the time and resources currently required for such
tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant
part of the operation of any hospital involves the acquisition, management and timely
retrieval of great volumes of information. This information typically involves; patient
personal information and medical history, staff information, room and ward scheduling,
staff scheduling, operating theater scheduling and various facilities waiting lists. All of
this information must be managed in an efficient and cost wise fashion so that an
institution\'s resources may be effectively utilized HMS will automate the management
of the hospital making it more efficient and error free. It aims at standardizing data,
consolidating data ensuring data integrity and reducing
inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'D-204, Hole Town South West, Houston',
'info@gmail.com', 1122334455, '2020-05-20 07:24:07', '9 AM To 8 PM');


CREATE TABLE `tblpatient` (
`ID` int(10) NOT NULL,
`Docid` int(10) DEFAULT NULL,
`PatientName` varchar(200) DEFAULT NULL,
`PatientContno` bigint(10) DEFAULT NULL,
`PatientEmail` varchar(200) DEFAULT NULL,
`PatientGender` varchar(50) DEFAULT NULL,
`PatientAdd` mediumtext DEFAULT NULL,
`PatientAge` int(10) DEFAULT NULL,
`PatientMedhis` mediumtext DEFAULT NULL,
`CreationDate` timestamp NULL DEFAULT current_timestamp(),
`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`,
`PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`,
`UpdationDate`) VALUES
(1, 1, 'John Doe', 1231231230, 'john@test.com', 'Male', 'Houston', 35, 'NA', '2022-11-06
13:18:31', NULL),
(2, 2, 'Michael Kors', 1231231230, 'michael@test.com', 'Male', 'Los Angeles', 62, 'NA',
'2022-11-06 13:18:31', NULL),
(3, 3, 'Calvin Klein', 1231231230, 'calvin@test.com', 'Male', 'Las Vegas', 72, 'NA',
'2022-11-06 13:18:31', NULL),
(4, 2, 'MD Anderson', 1231231230, 'anderson@test.com', 'Male', 'New Delhi', 99, 'NA',
'2022-11-06 13:18:31', NULL),
(5, 5, 'Anushka Sharma', 1231231230, 'anushka@test.com', 'Female', 'New York', 24,
'NA', '2022-11-06 13:18:31', NULL),
(6, 6, 'Deepika Padukone', 1231231230, 'deepika@test.com', 'Female', 'Seattle', 18, 'NA',
'2022-11-06 13:18:31', NULL);


CREATE TABLE `userlog` (
`id` int(11) NOT NULL,
`uid` int(11) DEFAULT NULL,
`username` varchar(255) DEFAULT NULL,
`userip` binary(16) DEFAULT NULL,
`loginTime` timestamp NULL DEFAULT current_timestamp(),
`logout` varchar(255) DEFAULT NULL,
`status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`)
VALUES
(1, 1, 'john@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
12:14:11', NULL, 1),
(2, 1, 'michael@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'calvin@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
13:15:43', NULL, 0),
(4, 2, 'anushka@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06
13:15:58', '06-11-2022 06:50:46 PM', 1);


CREATE TABLE `users` (
`id` int(11) NOT NULL,
`fullName` varchar(255) DEFAULT NULL,
`address` longtext DEFAULT NULL,
`city` varchar(255) DEFAULT NULL,
`gender` varchar(255) DEFAULT NULL,
`email` varchar(255) DEFAULT NULL,
`password` varchar(255) DEFAULT NULL,
`regDate` timestamp NULL DEFAULT current_timestamp(),
`updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`,
`regDate`, `updationDate`) VALUES
(1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male',
'johndoe@test.com', 'john123', '2022-11-06 12:13:56', NULL),
(2, 'Michael Kors', 'New Delhi', 'New Delhi', 'male', 'michael@gmail.com', 'michael123',
'2022-11-06 13:15:32', NULL),
(3, 'Calvin Klein', 'B 456 XYZ Street Apt 22', 'New York', 'female', 'calvin@test.com',
'calvin123', '2022-11-07 09:45:21', NULL),
(4, 'MD Anderson', 'C 789 PQR Road Suite 5', 'Los Angeles', 'male', 'md@test.com',
'anderson123', '2022-11-07 10:30:15', NULL),
(5, 'Anushka Sharma', 'D 101 LMN Tower, 45th Floor', 'Chicago', 'female',
'anushka@test.com', 'anushka123', '2022-11-08 14:20:47', NULL),
(6, 'Deepika Padukone', 'E 222 NOP Avenue Apt 8', 'San Francisco', 'male',
'deepika@test.com', 'deepika123', '2022-11-08 15:18:03', NULL);

ALTER TABLE `admin`
ADD PRIMARY KEY (`id`);

ALTER TABLE `appointment`
ADD PRIMARY KEY (`id`);

ALTER TABLE `doctors`
ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorslog`
ADD PRIMARY KEY (`id`);

ALTER TABLE `doctorspecilization`
ADD PRIMARY KEY (`id`);

ALTER TABLE `tblcontactus`
ADD PRIMARY KEY (`id`);

ALTER TABLE `tblmedicalhistory`
ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpatient`
ADD PRIMARY KEY (`ID`);

ALTER TABLE `userlog`
ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
ADD PRIMARY KEY (`id`),

ADD KEY `email` (`email`);
ALTER TABLE `admin`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `appointment`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `doctors`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `doctorslog`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
ALTER TABLE `doctorspecilization`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
ALTER TABLE `tblcontactus`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `tblmedicalhistory`

MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `tblpage`

MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `tblpatient`

MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `userlog`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `users`

MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
