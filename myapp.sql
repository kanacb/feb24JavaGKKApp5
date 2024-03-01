-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 07:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `region_id`) VALUES
(1, 'ordinary', NULL),
(2, 'wearily slimy', NULL),
(3, 'people about beyond', NULL),
(4, 'draught room', NULL),
(5, 'freestyle', NULL),
(6, 'qua political gracefully', NULL),
(7, 'blight', NULL),
(8, 'element', NULL),
(9, 'stark around', NULL),
(10, 'easily', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', '2024-03-01 12:16:25', 1, 'EXECUTED', '9:f42d2680324529df080a1370434956e7', 'createTable tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableName=jhi_user_authority; addForeignKeyConstraint baseTableName=jhi_user_authority, constraintName=fk_authority_name, ...', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035147-1', 'jhipster', 'config/liquibase/changelog/20240301035147_added_entity_Region.xml', '2024-03-01 12:16:25', 2, 'EXECUTED', '9:c7b7710e4a2f8b05ac5d5a41c3f2e97f', 'createTable tableName=region', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035147-1-data', 'jhipster', 'config/liquibase/changelog/20240301035147_added_entity_Region.xml', '2024-03-01 12:16:25', 3, 'EXECUTED', '9:61212f15c2d52cdb0c9a014f82c65777', 'loadData tableName=region', '', NULL, '4.24.0', 'faker', NULL, '9266582028'),
('20240301035247-1', 'jhipster', 'config/liquibase/changelog/20240301035247_added_entity_Country.xml', '2024-03-01 12:16:25', 4, 'EXECUTED', '9:677bab355cd612f8117ca4b677a71774', 'createTable tableName=country', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035247-1-data', 'jhipster', 'config/liquibase/changelog/20240301035247_added_entity_Country.xml', '2024-03-01 12:16:25', 5, 'EXECUTED', '9:75f78147efd038f9e5b165950a253195', 'loadData tableName=country', '', NULL, '4.24.0', 'faker', NULL, '9266582028'),
('20240301035347-1', 'jhipster', 'config/liquibase/changelog/20240301035347_added_entity_Location.xml', '2024-03-01 12:16:25', 6, 'EXECUTED', '9:82ea764c5362b98773f1ca1303ef5658', 'createTable tableName=location', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035347-1-data', 'jhipster', 'config/liquibase/changelog/20240301035347_added_entity_Location.xml', '2024-03-01 12:16:25', 7, 'EXECUTED', '9:9eaf8983f466166f7bbb98a24bd44aa1', 'loadData tableName=location', '', NULL, '4.24.0', 'faker', NULL, '9266582028'),
('20240301035447-1', 'jhipster', 'config/liquibase/changelog/20240301035447_added_entity_Department.xml', '2024-03-01 12:16:25', 8, 'EXECUTED', '9:b381b28c93f9faea4fb309f1fa1574da', 'createTable tableName=department', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035447-1-data', 'jhipster', 'config/liquibase/changelog/20240301035447_added_entity_Department.xml', '2024-03-01 12:16:25', 9, 'EXECUTED', '9:04c78dc8ef59d83de7cb72588bb8b615', 'loadData tableName=department', '', NULL, '4.24.0', 'faker', NULL, '9266582028'),
('20240301035547-1', 'jhipster', 'config/liquibase/changelog/20240301035547_added_entity_Task.xml', '2024-03-01 12:16:25', 10, 'EXECUTED', '9:369bae343a4720f9f7e6dfdf09741bff', 'createTable tableName=task', '', NULL, '4.24.0', NULL, NULL, '9266582028'),
('20240301035547-1-data', 'jhipster', 'config/liquibase/changelog/20240301035547_added_entity_Task.xml', '2024-03-01 12:16:25', 11, 'EXECUTED', '9:4abdb7a5823ec56e0abb07a148918327', 'loadData tableName=task', '', NULL, '4.24.0', 'faker', NULL, '9266582028');

-- --------------------------------------------------------

--
-- Table structure for table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `location_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `location_id`) VALUES
(1, 'despite ha', 1),
(2, 'across searchingly till', 3),
(3, 'courageous now freelance', 4),
(4, 'flippant separately trample', 5),
(5, 'besides', 6),
(6, 'shiver including incidentally', 7),
(7, 'sensationalize among pusher', 8),
(8, 'yuck so', 9),
(9, 'public mutt', 10),
(10, 'gosh feast', 11),
(1500, 'Hr', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(20) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `department_id` int(20) DEFAULT NULL,
  `manager_id` int(20) DEFAULT NULL,
  `salary` bigint(20) NOT NULL,
  `commission_pct` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `department_id`, `manager_id`, `salary`, `commission_pct`) VALUES
(1, '3', 'Square', 'najiah@bac.edu.my', '012-2803 3282', '2024-03-01', 1500, NULL, 123456765432, 23456765432);

-- --------------------------------------------------------

--
-- Table structure for table `jhi_authority`
--

CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jhi_authority`
--

INSERT INTO `jhi_authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user`
--

CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `lang_key` varchar(10) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jhi_user`
--

INSERT INTO `jhi_user` (`id`, `login`, `password_hash`, `first_name`, `last_name`, `email`, `image_url`, `activated`, `lang_key`, `activation_key`, `reset_key`, `created_by`, `created_date`, `reset_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', '', 1, 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(2, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', 1, 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user_authority`
--

CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jhi_user_authority`
--

INSERT INTO `jhi_user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(20) NOT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `min_salary` int(20) DEFAULT NULL,
  `max_salary` int(20) DEFAULT NULL,
  `employee_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job_title`, `min_salary`, `max_salary`, `employee_id`) VALUES
(1, 'afsghjkj', 3456789, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `id` int(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `language` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`id`, `department_id`, `employee_id`, `job_id`, `start_date`, `end_date`, `language`) VALUES
(1, 1500, 1, 1, '2024-03-01', '2024-03-01', 'FRENCH');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) NOT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='not an ignored comment';

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
(1, 'while potentially', 'therapy scarce', 'Murazikboro', 'cautiously since', NULL),
(2, 'rough', 'what', 'South Khalil', 'spiderling', NULL),
(3, 'foretell yum while', 'bootleg shock', 'Jerodboro', 'frightened lest and', NULL),
(4, 'downgrade', 'till onto', 'Troy', 'extraneous dawdle refine', NULL),
(5, 'below storm vandalise', 'only throughout than', 'Franciscashire', 'wall', NULL),
(6, 'abaft supposing hm', 'so', 'Elnaberg', 'inside recklessly', NULL),
(7, 'land psst boohoo', 'save regarding around', 'Philipstead', 'gadzooks ew', NULL),
(8, 'carry ew', 'offbeat validity', 'Torpshire', 'excluding', NULL),
(9, 'astride a', 'provided meanwhile and', 'Joaniefield', 'ignite dowse', NULL),
(10, 'hmph after', 'hop outside', 'Fort Reannaside', 'disillusion hm thankfully', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` bigint(20) NOT NULL,
  `region_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region_name`) VALUES
(1, 'havoc ick'),
(2, 'overconfidently or'),
(3, 'ugh'),
(4, 'potentially rehospitalization'),
(5, 'completion meh combination'),
(6, 'never rapidly immediate'),
(7, 'cascade formalize imperfect'),
(8, 'even hard-to-find brick'),
(9, 'creative in seldom'),
(10, 'between phew through');

-- --------------------------------------------------------

--
-- Table structure for table `rel_job__task`
--

CREATE TABLE `rel_job__task` (
  `id` int(20) NOT NULL,
  `job_id` int(20) NOT NULL,
  `task_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_job__task`
--

INSERT INTO `rel_job__task` (`id`, `job_id`, `task_id`) VALUES
(1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Task entity.\\n@author The JHipster team.';

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`) VALUES
(1, 'for', 'huzzah'),
(2, 'that if envious', 'enormously'),
(3, 'uh-huh', 'fantastic oof messy'),
(4, 'normal fairy', 'disarrange'),
(5, 'boo if expensive', 'flashy impale'),
(6, 'naturally', 'canvass intent alibi'),
(7, 'powerfully', 'atop though fumbling'),
(8, 'always run', 'proper rhythm follow'),
(9, 'fearless', 'gadzooks'),
(10, 'questionably knuckle', 'finagle incidentally carefully');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_country__region_id` (`region_id`);

--
-- Indexes for table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_department__location_id` (`location_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jhi_authority`
--
ALTER TABLE `jhi_authority`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jhi_user`
--
ALTER TABLE `jhi_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_login` (`login`),
  ADD UNIQUE KEY `ux_user_email` (`email`);

--
-- Indexes for table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_name`),
  ADD KEY `fk_authority_name` (`authority_name`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_location__country_id` (`country_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_job__task`
--
ALTER TABLE `rel_job__task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1500;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jhi_user`
--
ALTER TABLE `jhi_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1050;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_history`
--
ALTER TABLE `job_history`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1500;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1500;

--
-- AUTO_INCREMENT for table `rel_job__task`
--
ALTER TABLE `rel_job__task`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1500;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
