-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 04:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signupforms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill entry`
--

CREATE TABLE `bill entry` (
  `sr` int(10) NOT NULL,
  `MPECS` varchar(25) NOT NULL,
  `Course_Level` varchar(25) NOT NULL,
  `Project_Internship` varchar(25) NOT NULL,
  `Practical_Oral` varchar(25) NOT NULL,
  `Rate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill entry`
--

INSERT INTO `bill entry` (`sr`, `MPECS`, `Course_Level`, `Project_Internship`, `Practical_Oral`, `Rate`) VALUES
(7, '23', '1/2/3', 'no', 'yes', 7),
(10, '20', '4/5', 'yes', 'no', 25),
(11, '20', '4/5', 'no', 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `bill generate`
--

CREATE TABLE `bill generate` (
  `sr` int(10) NOT NULL,
  `subject_code` varchar(25) NOT NULL,
  `subject_name` varchar(25) NOT NULL,
  `internal_name` varchar(25) NOT NULL,
  `external_name` varchar(25) NOT NULL,
  `course_level` varchar(25) NOT NULL,
  `exam_type` varchar(25) NOT NULL,
  `student_count` varchar(25) NOT NULL,
  `rate` varchar(25) NOT NULL,
  `total` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill generate`
--

INSERT INTO `bill generate` (`sr`, `subject_code`, `subject_name`, `internal_name`, `external_name`, `course_level`, `exam_type`, `student_count`, `rate`, `total`) VALUES
(1, 'itg501', 'xyz', 'AAFRIN AKIL KHAN', '', '1/2/3', 'practical', '60', '7', '420'),
(5, 'ITG406', 'MAD', 'AAFRIN AKIL KHAN', 'M.K.JADHAV', '4/5', 'project', '70', '25', '490'),
(6, 'ITG406', 'MAD', 'AAFRIN AKIL KHAN', 'M.K.JADHAV', '4/5', 'project', '70', '25', '490'),
(8, 'ITG406', 'MAD', 'AAFRIN AKIL KHAN', 'M.K.JADHAV', '4/5', 'practical', '75', '7', '525'),
(9, 'ITG510', 'LIA', 'KAPIL CHAVAN', 'S.B.PATIL', '4/5', 'oral', '78', '7', '546');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category`) VALUES
(1, 0, 'YES'),
(2, 0, 'NO'),
(3, 1, '5'),
(4, 1, '6'),
(5, 2, '1'),
(6, 2, '2'),
(7, 2, '3'),
(8, 2, '4');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `sr no` int(100) NOT NULL,
  `programcode` int(100) NOT NULL,
  `ccode` varchar(5000) NOT NULL,
  `cname` varchar(5000) NOT NULL,
  `Level` int(10) NOT NULL,
  `type_of_exam` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`sr no`, `programcode`, `ccode`, `cname`, `Level`, `type_of_exam`) VALUES
(1, 0, 'CCG108', 'ENGINERING DRAWING-II', 0, ''),
(2, 0, 'CCG203', 'COMMOUNICATION SKILLS IN ENGLISH', 0, ''),
(3, 0, 'CCG105', 'BASIC MATHS', 0, ''),
(4, 0, 'CCG107', 'ENGG. DRAWING -I', 0, ''),
(5, 0, 'CCG110', 'APPLIED MECHANICS', 0, ''),
(6, 1, 'CEG401', 'ANALYSIS OF STRUCTURE', 0, ''),
(7, 1, 'CEG403', 'DESIGN  & DRAFTING OF STEEL STRUCTURE', 0, ''),
(8, 1, 'CEG505', 'ENVIRONMENTAL ENGINEERING', 0, ''),
(9, 1, 'CEG406', 'BUILDING SERVICES', 0, ''),
(10, 1, 'CEG407', 'PLUMBING SERVICES', 0, ''),
(11, 1, 'CEG408', 'QUALITY CONTROL', 0, ''),
(12, 1, 'CEG409', 'TOWN & COUNTRY PLANNING', 0, ''),
(13, 1, 'CEG402', 'DESIGN & DRAFTING OF RCC STRUCTURE', 0, ''),
(14, 1, 'CEG404', 'ESTIMATING AND COSTING', 0, ''),
(15, 1, 'CEG504', 'CONTRACTS AND ACCOUNTS', 0, ''),
(16, 1, 'CEG506', 'IRRIGATION ENGINEERING', 0, ''),
(17, 1, 'CEG507', 'EARTHQUAKE ENGINEERING', 0, ''),
(18, 1, 'CEG508', 'INDUSTRIAL WASTE MANAGEMENT', 0, ''),
(19, 1, 'CEG509', 'SOLID WASTE MANAGEMENT', 0, ''),
(20, 1, 'CEG510', 'WATERSHED MANAGEMENT', 0, ''),
(21, 1, 'CEG302', 'BUILDING CONSTRUCTION', 0, ''),
(22, 1, 'CEG303', 'BUILDING DRAWING', 0, ''),
(23, 1, 'CEG305', 'SOIL MECHANICS & FOUNDATION ENGINEERINGC', 0, ''),
(24, 1, 'CEG307', 'MECHANICS OF STRUCTURES', 0, ''),
(25, 1, 'CEG308', 'SURVEYING-I', 0, ''),
(26, 1, 'CEG309', 'SURVEYING-II', 0, ''),
(27, 1, 'CEG310', 'TRANSPORATION ENGINEERING', 0, ''),
(28, 1, 'CEG306', 'HYDRAULICS', 0, ''),
(29, 1, 'CEG405', 'CONCTETE TECHNOLOGY', 0, ''),
(30, 1, 'CEG311', 'ADVANCED CONSTRUCTION TECH & EQUIPMENTS', 0, ''),
(31, 1, 'CEG312', 'ADV. CONSTRUCTION MATERIALS', 0, ''),
(32, 1, 'CEG313', 'HIGHER MATHEMATICS', 0, ''),
(33, 1, 'CEG314', 'MAINTENANCE & REHABILITATION OF STRUCTUR', 0, ''),
(34, 1, 'CEG315', 'ENERGY CONSERVATION & AUDIT', 0, ''),
(35, 1, 'CEG503', 'CONSTRUCTION MANAGEMENT', 0, ''),
(36, 2, 'MEG303', 'MACHINE DRAWING', 0, ''),
(37, 2, 'MEG304', 'MANUFACTURING PROCESSES', 0, ''),
(38, 2, 'MEG305', 'STRENGTH OF MATERIALS', 0, ''),
(39, 2, 'MEG309', 'BASIC ELECT. & ELECTRONICS ENGINEERING', 0, ''),
(40, 2, 'MEG302', 'THERMAL ENGINEERING', 0, ''),
(41, 2, 'MEG306', 'MACHINE TOOLS', 0, ''),
(42, 2, 'MEG308', 'THEORY OF MACHINES', 0, ''),
(43, 2, 'MEG310', 'ENGG. METALLURGY AND MATERIALS', 0, ''),
(44, 2, 'MEG314', 'ENGINEERING METROLOGY', 0, ''),
(45, 2, 'MEG316', 'MECHANICAL ENGINEERING MEASUREMENTS', 0, ''),
(46, 2, 'MEG401', 'POWER ENGINEERING', 0, ''),
(47, 2, 'MEG402', 'MACHINE DESIGN', 0, ''),
(48, 2, 'MEG403', 'ADVANCED MACHINING PROCESSES', 0, ''),
(49, 2, 'MEG406', 'FLUID MECHANICS & MACHINERY', 0, ''),
(50, 2, 'MEG417', 'EMERGING TRENDS IN MECHANICAL ENGINEE.', 0, ''),
(51, 2, 'MEG416', 'MARKETING MANAGEMENT', 0, ''),
(52, 2, 'MEG418', 'TOTAL QUALITY MANAGEMENT', 0, ''),
(53, 2, 'MEG503', 'INDUSTRIAL ENGINEERING', 0, ''),
(54, 2, 'MEG501', 'INDUSTRIAL ORG. & MANAGEMENT', 0, ''),
(55, 2, 'MEG504', 'FOUNDRY TECHNOLOGY', 0, ''),
(56, 2, 'MEG505', 'REFRIGERATION AND AIR CONDITIONING', 0, ''),
(57, 2, 'MEG506', 'AUTOMOBILE ENGINEERING', 0, ''),
(58, 2, 'MEG507', 'INDUSTRIAL HYDRAULICS & PNEUMATICS', 0, ''),
(59, 2, 'MEG508', 'TOOL ENGINEERING', 0, ''),
(60, 2, 'MEG509', 'WELDING TECHNOLOGY', 0, ''),
(61, 3, 'EEG303', 'ELECTRICAL CIRCUITS', 0, ''),
(62, 3, 'EEG102', 'BASIC ELECTRONICS', 0, ''),
(63, 3, 'EEG305', 'ELECTR. ENGINEERING MATERIAL', 0, ''),
(64, 3, 'EEG306', 'ELECTRICAL POWER GENERATION', 0, ''),
(65, 3, 'EEG307', 'DC MACHINES & TRANSFORMERS', 0, ''),
(66, 3, 'EEG309', 'APPLIED ELECTRONICS', 0, ''),
(67, 3, 'EEG310', 'TRANMISSION & DISTRIBUTION OF ELE. POWER', 0, ''),
(68, 3, 'EEG311', 'ELECTRICAL ESTIMATION & CONTRACTING', 0, ''),
(69, 3, 'EEG509', 'INSTRUMENTATION & CONDITIONING', 0, ''),
(70, 3, 'EEG516', 'MARKETING MANAGEMENT', 0, ''),
(71, 3, 'EEG517', 'PROJECT MANAGEMENT', 0, ''),
(72, 3, 'EEG402', 'SWITCHGEAR & PROTECTION', 0, ''),
(73, 3, 'EEG403', 'ELECTRIC POWER UTILIZATION & TRACTION', 0, ''),
(74, 3, 'EEG404', 'ENERGY CONSERVATION & AUDIT', 0, ''),
(75, 3, 'EEG405', 'POWER ELECTRONICS', 0, ''),
(76, 3, 'EEG501', 'ELECTRICAL TESTING & COMMISSIONING', 0, ''),
(77, 3, 'EEG502', 'INDUSTRIAL  AUTOMOTION & CONTROL', 0, ''),
(78, 3, 'EEG505', 'ELECTRICAL  DRIVES', 0, ''),
(79, 3, 'EEG506', 'PROGRAMABLE LOGIC CONTROLLER & SCADE', 0, ''),
(80, 3, 'EEG507', 'ELEMENTS OF INDUSTRIAL AUTOMOTION', 0, ''),
(81, 3, 'EEG510', 'NON CONVENTIONAL POWER GENERATION', 0, ''),
(82, 3, 'EEG511', 'SUBSTATION PRACTICES & MAINTENANCE', 0, ''),
(83, 3, 'EEG512', 'ADVANCED  SOLAR & WIND POWER TECHNO.', 0, ''),
(84, 3, 'EEG513', 'ELECTRICAL DESIGN FUNDAMENTALS', 0, ''),
(85, 3, 'EEG301', 'BASIC MECHANICAL & CIVIL ENGINEERING', 0, ''),
(86, 3, 'EEG304', 'ELECTRICAL & ELECTRONICS MEASUREMENT', 0, ''),
(87, 3, 'EEG401', 'INDUSTRIAL MACHINES', 0, ''),
(88, 3, 'EEG101', 'FUNDAMENTALS OF ELECTRICITY &  MAGNETISM', 0, ''),
(89, 3, 'EEG508', 'ELECTRICAL VEHICLE', 0, ''),
(90, 3, 'EEG515', 'INDUSTRIAL ORGANIZATION & MANAGEMENT', 0, ''),
(91, 3, 'EEG504', 'MICRO-CONTROLLER APPLICATION', 0, ''),
(92, 3, 'EEG514', 'ILLUMINATION ENGINEERING', 0, ''),
(93, 4, 'IEG306', 'DIGITAL TECHNIQUES & APPLICATION', 0, ''),
(94, 4, 'IEG310', 'ELECTRIC MACHINES', 0, ''),
(95, 4, 'IEG407', 'OPTOELECTRONICS', 0, ''),
(96, 4, 'IEG408', 'ROBOTIES', 0, ''),
(97, 4, 'IEG405', 'POWER ELECTRONICS - I', 0, ''),
(98, 4, 'IEG505', 'PLC', 0, ''),
(99, 4, 'IEG504', 'POWER ELECTRONICS - II', 0, ''),
(100, 6, 'ITG105', 'COMPUTER PERIPHERAL & HARDWARE MAINTENAN', 0, ''),
(101, 6, 'ITG508', 'CLOUD COMPUTING', 0, ''),
(102, 6, 'ITG509', 'ADVANCE DETABASE MANAGEMENT SYSTEM', 0, ''),
(103, 6, 'ITG510', 'LUNIX ADMINISTRATION', 0, ''),
(104, 6, 'ITG101', 'C PROGRAMMING', 0, ''),
(105, 6, 'ITG102', 'WEB PAGE DESIGNING', 0, ''),
(106, 6, 'ITG301', 'APPLIED METHEMATICS', 0, ''),
(107, 6, 'ITG305', 'DATA BASE MANAGEMENT SYSTEM', 0, ''),
(108, 6, 'ITG306', 'COMPUTER NETWORK', 0, ''),
(109, 6, 'ITG307', 'OPERATING SYSTEM', 0, ''),
(110, 6, 'ITG311', 'JAVA PROGRAMMING', 0, ''),
(111, 6, 'ITG308', 'SOFTWARE ENGINEERING', 0, ''),
(112, 6, 'ITG401', 'NETWORK ADMINISTRATION', 0, ''),
(113, 6, 'ITG402', 'SOFTWARE TESTING', 0, ''),
(114, 6, 'ITG404', 'PYTHON PROGRAMMING', 0, ''),
(115, 6, 'ITG408', 'WEB DEVELOPMENT USING PHP', 0, ''),
(116, 6, 'ITG406', 'MOBILE APPLICATION DEVELOPMNET', 0, ''),
(117, 6, 'ITG407', 'ETHICAL HACKING & DIGITAL FORENSICS', 0, ''),
(118, 6, 'ITG505', 'CYBER LAW', 0, ''),
(119, 6, 'ITG506', 'EMERGING TRENDS IN IT', 0, ''),
(120, 6, 'ITG403', 'INFORMATION SECURITY', 0, ''),
(121, 6, 'ITG303', 'DATA COMMUNICATION', 0, ''),
(122, 6, 'ITG409', 'OBJECT ORIENTED MODELING & DESIGN', 0, ''),
(123, 6, 'ITG310', 'DATA STRUCTURE', 0, ''),
(124, 6, 'ITG507', 'MOBILE COMMUNICATION', 0, ''),
(125, 6, 'ITG302', 'DIGITAL ELECTRONICS & MICROPROCESSOR', 0, ''),
(126, 6, 'ITG304', 'OOP USING C++', 0, ''),
(127, 6, 'ITG104', 'BASIC ELECTRONICS', 0, ''),
(128, 7, 'MTG312', 'EXTRACTION OF NON  FERROUS METALS', 0, ''),
(129, 7, 'MTG504', 'CHARACTERIZATION OF METALS', 0, ''),
(130, 7, 'MTG301', 'METALLURGICAL  THERMODYNAMICS', 0, ''),
(131, 7, 'MTG302', 'MATERIAL TESTING', 0, ''),
(132, 7, 'MTG303', 'METALLURGICAL ANALYSIS', 0, ''),
(133, 7, 'MTG304', 'IRON & STEEL MAKING', 0, ''),
(134, 7, 'MTG305', 'FOUNDRY TECHNOLOGY - I', 0, ''),
(135, 7, 'MTG306', 'ELECTRICAL  ENGG.ELECTRONICS', 0, ''),
(136, 7, 'MTG307', 'PHYSICAL METALLURGY-I', 0, ''),
(137, 7, 'MTG308', 'MECHANICAL ENGINEERING', 0, ''),
(138, 7, 'MTG309', 'FURNACES REFRACTORIES & PYROMETRY', 0, ''),
(139, 7, 'MTG310', 'METAL WORKING PROCESSES', 0, ''),
(140, 7, 'MTG401', 'PHYSICAL METALLURGY-II', 0, ''),
(141, 7, 'MTG402', 'FOUNDRY TECHNOLOGY-II', 0, ''),
(142, 7, 'MTG403', 'FAILURE ANALYSIS & SELECTION OF MATERIAL', 0, ''),
(143, 7, 'MTG404', 'POWDER METALLURGY', 0, ''),
(144, 7, 'MTG406', 'METAL JOINING  & SPECIAL FORMING PROCESS', 0, ''),
(145, 7, 'MTG502', 'ENVIR. PROTECTION IN META. INDUSTRIES', 0, ''),
(146, 7, 'MTG503', 'NON METALLIC MATERIALS', 0, ''),
(147, 7, 'MTG505', 'INDUSTRIAL MANAGEMENT', 0, ''),
(148, 7, 'MTG506', 'QUALITY MANAGEMENT', 0, ''),
(149, 7, 'MTG508', 'IND. ORGANIZATION & MANAGEMENT', 0, ''),
(150, 8, 'ETG514', 'INTRODUCTION TO IOT', 0, ''),
(151, 8, 'ETG306', 'DIGITAL TECHNIQUES & APPLICATION', 0, ''),
(152, 8, 'ETG311', 'BASIC OF POWER ELECTRONICS', 0, ''),
(153, 8, 'ETG511', 'PROGRAMMABLE LOGIC CONTROLLER', 0, ''),
(154, 8, 'ETG310', 'DIGITL COMMUNICATION', 0, ''),
(155, 8, 'ETG504', 'OPTICAL FIBER COMMUN', 0, ''),
(156, 8, 'ETG407', 'SIGNALS & SYSTEMS', 0, ''),
(157, 8, 'ETG505', 'MOBILE  & WIRELESS COMMUNICATION', 0, ''),
(158, 8, 'ETG405', 'DATA COMMUNICATION & NETWORKS', 0, ''),
(159, 8, 'ETG408', 'SATELLITE COMMUNICATION', 0, ''),
(160, 9, 'EIG302', 'APPLIED ELECTRONICS', 0, ''),
(161, 9, 'EIG303', 'ELECTRONICS MEASUING INSTRUMENTS', 0, ''),
(162, 9, 'EIG103', 'BASIC ELECTRONICS', 0, ''),
(163, 9, 'EIG107', 'BASIC ELECTRICAL ENGINEERING', 0, ''),
(164, 9, 'EIG305', 'ANALOG COMMUNICATION', 0, ''),
(165, 9, 'EIG512', 'ADVANCE  MICROCONTROLLER', 0, ''),
(166, 9, 'EIG513', 'AUTOMOTIVE ELECTRONICS', 0, ''),
(167, 9, 'EIG307', 'LINEAR INTEGRATED CIRCUITS', 0, ''),
(168, 9, 'EIG308', 'CIRCUIT AND NETWORK', 0, ''),
(169, 9, 'EIG309', 'MICROCONTROLLER', 0, ''),
(170, 9, 'EIG401', 'SIMULATION SOFTWARE', 0, ''),
(171, 9, 'EIG402', 'EMBEDDED SYSTEMS', 0, ''),
(172, 9, 'EIG508', 'INSTRUMENTATION', 0, ''),
(173, 9, 'EIG507', 'CONSUMER ELECTRONICS', 0, ''),
(174, 9, 'EIG403', 'ELECTRONICS CIRCUIT DESIGN', 0, ''),
(175, 9, 'EIG406', 'PRINCIPLES OF CONTROL SYSTEM', 0, ''),
(176, 9, 'EIG509', 'INDUSTRIAL ORGANIZATION MANAGEMENT', 0, ''),
(177, 9, 'EIG510', 'MARKETING MANAGEMENT', 0, ''),
(178, 9, 'EIG301', 'APPLIED MATHEMATICS', 0, ''),
(179, 9, 'EIG101', 'ELECTRONICS COMPONENTS AND APPLICATION', 0, ''),
(180, 12, 'EEG302', 'APPLIED METHEMATICS', 0, ''),
(181, 12, 'CEG301', 'APPLIED METHEMATICS', 0, ''),
(182, 12, 'CCG101', 'ENGINEERING PHYSICS', 0, ''),
(183, 12, 'CCG103', 'ENGINEERING CHEMISTRY', 0, ''),
(184, 12, 'CCG106', 'ENGINEERING MATHEMATICS', 0, ''),
(185, 13, 'CCG118', 'ENGINEERING MATHS', 0, ''),
(186, 13, 'CCG104', 'ENGINEERING CHEMISTRY', 0, ''),
(187, 13, 'CCG102', 'ENGINEERING PHYSICS', 0, ''),
(188, 0, 'CCF106', 'ENGINEERING MATHS', 0, ''),
(189, 0, 'CCF108', 'ENGINERING DRAWING-II', 0, ''),
(190, 0, 'CCF202', 'COMMOUNICATION SKILLS', 0, ''),
(191, 0, 'CCF105', 'BASIC MATHS', 0, ''),
(192, 0, 'CCF107', 'ENGG. DRAWING -I', 0, ''),
(193, 0, 'CCF110', 'APPLIED MECHANICS', 0, ''),
(194, 1, 'CEF401', 'ANALYSIS OF STRUCTURE', 0, ''),
(195, 1, 'CEF403', 'DESIGN  & DRAFTING OF STEEL STRUCTURE', 0, ''),
(196, 1, 'CEF505', 'INDUSTRIAL ORGANIZATION & MANAGEMENT', 0, ''),
(197, 1, 'CEF506', 'ENVIRONMENTAL ENGINEERING', 0, ''),
(198, 1, 'CEF407', 'BUILDING SERVICES', 0, ''),
(199, 1, 'CEF408', 'PLUMBING SERVICES', 0, ''),
(200, 1, 'CEF409', 'QUALITY CONTROL', 0, ''),
(201, 1, 'CEF410', 'TOWN & COUNTRY PLANNING', 0, ''),
(202, 1, 'CEF402', 'DESIGN & DRAFTING OF RCC STRUCTURE', 0, ''),
(203, 1, 'CEF404', 'ESTIMATING AND COSTING', 0, ''),
(204, 1, 'CEF504', 'CONTRACTS AND ACCOUNTS', 0, ''),
(205, 1, 'CEF507', 'IRRIGATION ENGINEERING', 0, ''),
(206, 1, 'CEF508', 'EARTHQUAKE ENGINEERING', 0, ''),
(207, 1, 'CEF509', 'INDUSTRIAL WASTE MANAGEMENT', 0, ''),
(208, 1, 'CEF510', 'SOLID WASTE MANAGEMENT', 0, ''),
(209, 1, 'CEF511', 'WATERSHED MANAGEMENT', 0, ''),
(210, 1, 'CEF302', 'BUILDING CONSTRUCTION', 0, ''),
(211, 1, 'CEF303', 'BUILDING DRAWING', 0, ''),
(212, 1, 'CEF305', 'SOIL MECHANICS & FOUNDATION ENGINEERINGC', 0, ''),
(213, 1, 'CEF307', 'MECHANICS OF STRUCTURES', 0, ''),
(214, 1, 'CEF308', 'SURVEYING-I', 0, ''),
(215, 1, 'CCF204', 'ENVIRONMENTAL STUIDES', 0, ''),
(216, 1, 'CEF309', 'SURVEYING-II', 0, ''),
(217, 1, 'CEF310', 'TRANSPORATION ENGINEERING', 0, ''),
(218, 1, 'CEF306', 'HYDRAULICS', 0, ''),
(219, 1, 'CEF406', 'CONCTETE TECHNOLOGY', 0, ''),
(220, 1, 'CEF311', 'ADVANCED CONSTRUCTION TECH & EQUIPMENTS', 0, ''),
(221, 1, 'CEF312', 'ADV. CONSTRUCTION MATERIALS', 0, ''),
(222, 1, 'CEF313', 'HIGHER MATHEMATICS', 0, ''),
(223, 1, 'CEF314', 'MAINTENANCE & REHABILITATION OF STRUCTUR', 0, ''),
(224, 2, 'MEF303', 'MACHINE DRAWING', 0, ''),
(225, 2, 'MEF304', 'MANUFACTURING PROCESSES', 0, ''),
(226, 2, 'MEF305', 'THEORY OF ENGG. DESIGN', 0, ''),
(227, 2, 'MEF309', 'ELECTRICAL TECHNOLOGY', 0, ''),
(228, 2, 'MEF302', 'THERMAL ENGINEERING', 0, ''),
(229, 2, 'MEF306', 'MACHINE TOOLS', 0, ''),
(230, 2, 'MEF307', 'APPLIED ELECTRONICS', 0, ''),
(231, 2, 'MEF308', 'THEORY OF MACHINES & MECHANISMS', 0, ''),
(232, 2, 'MEF310', 'ENGG. METALLURGY AND MATERIALS', 0, ''),
(233, 2, 'MEF311', 'POLLUTION CONTROL', 0, ''),
(234, 2, 'MEF312', 'NON CONVENTIONAL ENERGY SOURCES', 0, ''),
(235, 2, 'MEF313', 'HIGHER MATHEMATICS', 0, ''),
(236, 2, 'MEF401', 'POWER ENGINEERING', 0, ''),
(237, 2, 'MEF402', 'MACHINE DESIGN', 0, ''),
(238, 2, 'MEF403', 'ADVANCED MACHINING PROCESSES', 0, ''),
(239, 2, 'MEF406', 'HYDRAULIC MACHINERY', 0, ''),
(240, 2, 'MEF410', 'MECH. MEASUREMENT AND MECHATRONICS', 0, ''),
(241, 2, 'MEF411', 'MARKETING MANAGEMENT', 0, ''),
(242, 2, 'MEF412', 'QUALITY SYSTEMS', 0, ''),
(243, 2, 'MEF503', 'INDUSTRIAL ENGINEERING', 0, ''),
(244, 2, 'MEE505', 'COMPUTER INTEGRATED MANUFACTURING', 0, ''),
(245, 2, 'MEE506', 'MATERIAL HANDLING SYSTEM', 0, ''),
(246, 2, 'MEF407', 'METROLOGY', 0, ''),
(247, 2, 'CCF502', 'INDUSTRIAL ORG. & MANAGEMENT', 0, ''),
(248, 2, 'MEF502', 'QUALITY MANAGEMENT', 0, ''),
(249, 2, 'MEF505', 'REFRIGERATION AND AIR CONDITIONING', 0, ''),
(250, 2, 'MEF506', 'AUTOMOBILE ENGINEERING', 0, ''),
(251, 2, 'MEF507', 'INDUSTRIAL HYDRAULICS & PNEUMATICS', 0, ''),
(252, 2, 'MEF511', 'TOOL ENGINEERING', 0, ''),
(253, 2, 'MEF512', 'WELDING TECHNOLOGY', 0, ''),
(254, 3, 'EEF302', 'ELECTRICAL CIRCUITS', 0, ''),
(255, 3, 'EEF303', 'BASIC ELECTRONICS', 0, ''),
(256, 3, 'EEF304', 'ELECTRICAL MEASUREMENT & INSTRUMENT', 0, ''),
(257, 3, 'EEF305', 'ELECTR. MATERIALS  WIRING & ILLUMINATION', 0, ''),
(258, 3, 'EEF306', 'ELECTRICAL POWER GENERATION', 0, ''),
(259, 3, 'EEF307', 'DC MACHINE & TRANSFORMERS', 0, ''),
(260, 3, 'EEF309', 'APPLIED ELECTRONICS', 0, ''),
(261, 3, 'EEF310', 'TRANMISSION & DISTRIBUTION OF ELE. POWER', 0, ''),
(262, 3, 'EEF401', 'ELECTRICAL ESTIMATION & CONTRACTING', 0, ''),
(263, 3, 'EEF204', 'HUMMAN RESOURCES MANAGEMENT', 0, ''),
(264, 3, 'EEF205', 'MARKETING MANAGEMENT', 0, ''),
(265, 3, 'EEF206', 'PROJECT MANAGEMENT', 0, ''),
(266, 3, 'EEF402', 'AC ROTATING MACHINES', 0, ''),
(267, 3, 'EEF403', 'SWITCHGEAR & PROTECTION', 0, ''),
(268, 3, 'EEF404', 'ELECTRIC POWER UTILIZATION & TRACTION', 0, ''),
(269, 3, 'EEF405', 'ENERGY CONSERVATION & AUDIT', 0, ''),
(270, 3, 'EEF406', 'POWER ELECTRONICS', 0, ''),
(271, 3, 'EEF501', 'TESTING & MAINTENANCE OF ELECT. EQUIPMEN', 0, ''),
(272, 3, 'EEF502', 'ELECTRICAL MACHINE CONTROL& AUTOMOTION', 0, ''),
(273, 3, 'EEF505', 'ELECTRICAL  DRIVES', 0, ''),
(274, 3, 'EEF506', 'PROGRAMABLE LOGIC CONTROLLER & SCADE', 0, ''),
(275, 3, 'EEF507', 'ELEMENTS OF INDUSTRIAL AUTOMOTION', 0, ''),
(276, 3, 'EEF508', 'NON CONVENTIONAL POWER GENERATION', 0, ''),
(277, 3, 'EEF509', 'SUBSTATION PRACTICES & MAINTENANCE', 0, ''),
(278, 3, 'EEF510', 'ADVANCED  SOLAR & WIND POWER TECHNO.', 0, ''),
(279, 3, 'EEF511', 'ELECTRICAL DESIGN FUNDAMENTALS', 0, ''),
(280, 3, 'EEF312', 'BASIC MECHANICAL & CIVIL ENGINEERING', 0, ''),
(281, 3, 'EEF102', 'FUNDAMENTALS OF ELECTRICITY AND MAGNETIS', 0, ''),
(282, 3, 'EEF101', 'FUND. OF COMPUTER HARDWARE & SOFTWARE', 0, ''),
(283, 3, 'EEF504', 'MICROCONTROLLER', 0, ''),
(284, 3, 'EEF512', 'ILLUMINATION ENGINEERING', 0, ''),
(285, 4, 'EIF310', 'ELECTRICAL MACHINE', 0, ''),
(286, 4, 'IEF310', 'ELECTRIC MACHINES', 0, ''),
(287, 4, 'IEF505', 'OPTOELECTRONICS', 0, ''),
(288, 4, 'IEF506', 'ROBOTIES', 0, ''),
(289, 4, 'IEF501', 'POWER ELECTRONICS - II', 0, ''),
(290, 4, 'IEF502', 'PLC', 0, ''),
(291, 4, 'IEF511', 'AUTOMOTIVE ELECTRONICS', 0, ''),
(292, 5, 'SMF304', 'INTRODUCTION TO SUGAR MANUFACTURING', 0, ''),
(293, 5, 'SMF301', 'Sugar factory Practices', 0, ''),
(294, 5, 'SMF302', 'Basic Sugar Engineering', 0, ''),
(295, 5, 'SMF303', 'Basic Sugar Manufacturing', 0, ''),
(296, 5, 'SMF305', 'Sugar Factory Equip.', 0, ''),
(297, 5, 'SMF306', 'Mechanical Fluid Flow Operations', 0, ''),
(298, 5, 'SMF307', 'Mass and Heat Transfer Operations', 0, ''),
(299, 5, 'SMF308', 'Chemical process Technology', 0, ''),
(300, 5, 'SMF309', 'Basic Electrical Engg', 0, ''),
(301, 5, 'SMF310', 'Applied Mathematics', 0, ''),
(302, 5, 'SMF311', 'Basic  Civil Engg', 0, ''),
(303, 5, 'SMF401', 'Sugar Engineering', 0, ''),
(304, 5, 'SMF402', 'Sugar Manufacturing-I', 0, ''),
(305, 5, 'SMF403', 'Sugar Manufacturing-II', 0, ''),
(306, 5, 'SMF404', 'By products of Sugar Industry', 0, ''),
(307, 5, 'SMF405', 'Sugar Chemical Control', 0, ''),
(308, 5, 'SMF406', 'Capacity Design & Calculation', 0, ''),
(309, 5, 'SMF407', 'Computer Application', 0, ''),
(310, 5, 'SMF408', 'Sugar Factory Maintenance', 0, ''),
(311, 5, 'SMF409', 'Industrial Engineering', 0, ''),
(312, 5, 'SMF410', 'Plant Maintenance Engineering', 0, ''),
(313, 5, 'SMF501', 'Seminar', 0, ''),
(314, 5, 'SMF502', 'Sugar Industry In-plant Training', 0, ''),
(315, 5, 'SMF503', 'Sugar Industrial Management', 0, ''),
(316, 5, 'SMF504', 'Cogeneration Technology', 0, ''),
(317, 5, 'SMF507', 'ALCOHOL TECHNOLOGY', 0, ''),
(318, 5, 'SMF508', 'ENERGY CONSERVATION & AUDIT', 0, ''),
(319, 6, 'ITF102', 'C PROGRAMMING', 0, ''),
(320, 6, 'ITF105', 'ELEMENTS OF PRACT ELECRICITY', 0, ''),
(321, 6, 'ITE101', 'COMPUTER FUNDAMENTALS', 0, ''),
(322, 6, 'ITF305', 'DATA BASE MANAGEMENT SYSTEM', 0, ''),
(323, 6, 'ITF306', 'COMPUTER NETWORK', 0, ''),
(324, 6, 'ITF307', 'OPERATING SYSTEM', 0, ''),
(325, 6, 'ITF311', 'MICROPROCESSOR', 0, ''),
(326, 6, 'ITF313', 'SYSTEM PROGRAMMING', 0, ''),
(327, 6, 'ITF308', 'COMPUTER ARCHITECTURE & MAINTENANCE', 0, ''),
(328, 6, 'ITF312', 'COMPUTER GRAPHICS', 0, ''),
(329, 6, 'ITF401', 'NETWORK ADMINISTRATION', 0, ''),
(330, 6, 'ITF402', 'SOFTWARE ENGINEERING', 0, ''),
(331, 6, 'ITF404', 'WEB  TECHNOLOGY', 0, ''),
(332, 6, 'ITF408', 'SOFTWARE TESTING', 0, ''),
(333, 6, 'ITF406', 'JAVA PROGRAMMING', 0, ''),
(334, 6, 'ITF407', 'ADVANCED JAVA PROGRAMMING', 0, ''),
(335, 6, 'ITF405', 'LINUX', 0, ''),
(336, 6, 'ITF504', 'MOBILE COMMUNICATION', 0, ''),
(337, 6, 'ITF505', 'DISTRIBUTED  SYSTEM', 0, ''),
(338, 6, 'ITF410', 'MULTIMEDIA TECHNIQUES', 0, ''),
(339, 6, 'ITF403', 'INFORMATION SECURITY', 0, ''),
(340, 6, 'ITF508', 'OBJECT ORIENTED MODELING & DESIGN', 0, ''),
(341, 6, 'ITF303', 'DATA COMMUNICATION', 0, ''),
(342, 6, 'ITF309', 'PROGRAMING USING .NET', 0, ''),
(343, 6, 'ITF409', 'PHP', 0, ''),
(344, 6, 'ITF310', 'DATA STRUCTURE', 0, ''),
(345, 6, 'ITF506', 'CLOUD COMPUTING', 0, ''),
(346, 6, 'ITF509', 'MOBILE APPLICATION DEVELOPMENT', 0, ''),
(347, 6, 'ITF302', 'Digital Electronics', 0, ''),
(348, 6, 'ITF304', 'OOP USING C++', 0, ''),
(349, 6, 'ITF104', 'BASIC ELECTRONICS', 0, ''),
(350, 7, 'MTF301', 'METALLURGICAL  THERMODYNAMICS', 0, ''),
(351, 7, 'MTF302', 'MATERIAL TESTING', 0, ''),
(352, 7, 'MTF303', 'METALLURGICAL ANALYSIS', 0, ''),
(353, 7, 'MTF304', 'EXTRACTIVE METALLURGY', 0, ''),
(354, 7, 'MTF305', 'FOUNDRY TECHNOLOGY - I', 0, ''),
(355, 7, 'MTF306', 'ELECTRICAL & ELECTRONICS FOR MET. ENGG.', 0, ''),
(356, 7, 'MTF307', 'PHYSICAL METALLURGY-I', 0, ''),
(357, 7, 'MTF308', 'MECHANICAL ENGINEERING', 0, ''),
(358, 7, 'MTF309', 'FURNACES REFRACTORIES & PYROMETRY', 0, ''),
(359, 7, 'MTF310', 'METAL WORKING PROCESSES', 0, ''),
(360, 7, 'MTF401', 'PHYSICAL METALLURGY-II', 0, ''),
(361, 7, 'MTF402', 'FOUNDRY TECHNOLOGY-II', 0, ''),
(362, 7, 'MTF403', 'FAILURE ANALYSIS & SELECTION OF MATERIAL', 0, ''),
(363, 7, 'MTF404', 'POWDER METALLURGY', 0, ''),
(364, 7, 'MTF406', 'METAL JOINING PROCESSES & MODERN FORMING', 0, ''),
(365, 7, 'MTF407', 'IN PLANT TRANING', 0, ''),
(366, 7, 'MTF408', 'NON-CONVENTIONAL ENERGY SOURCES', 0, ''),
(367, 7, 'MTF410', 'CORROSION & SURFACE PROTECTION', 0, ''),
(368, 7, 'MTF501', '3-D MODELING & CASTING SIMULATION', 0, ''),
(369, 7, 'MTF502', 'ENVIR. PROTECTION IN META. INDUSTRIES', 0, ''),
(370, 7, 'MTF503', 'NON METALLIC MATERIALS', 0, ''),
(371, 7, 'MTF505', 'INDUSTRIAL MANAGEMENT', 0, ''),
(372, 7, 'MTF506', 'INDUSTRIAL ENGINEERING', 0, ''),
(373, 7, 'MTF507', 'IND. ORGANIZATION & MANAGEMENT', 0, ''),
(374, 8, 'ETF310', 'DIGITL COMMUNICATION', 0, ''),
(375, 8, 'ETF502', 'OPTICAL FIBER COMMUN', 0, ''),
(376, 8, 'ETF407', 'SIGNALS & SYSTEMS', 0, ''),
(377, 8, 'ETF501', 'MOBILE COMMUNICATION', 0, ''),
(378, 8, 'ETF403', 'DATA COMMUNICATION & NETWORKS', 0, ''),
(379, 8, 'ETF506', 'AUDIO VIDEO ENGINEERING', 0, ''),
(380, 8, 'ETF505', 'RADAR & NAVIGATION', 0, ''),
(381, 8, 'ETF408', 'SATELLITE COMMUNICATION', 0, ''),
(382, 9, 'EIF302', 'APPLIED ELECTRONICS', 0, ''),
(383, 9, 'EIF303', 'ELECTRONICS MEASUING INSTRUMENTS', 0, ''),
(384, 9, 'EIF103', 'BASIC ELECTRONICS', 0, ''),
(385, 9, 'EIF107', 'BASIC ELECTRICAL ENGINEERING', 0, ''),
(386, 9, 'EIF305', 'ANALOG COMMUNICATION', 0, ''),
(387, 9, 'EIF512', 'PIC MICROCONTROLLER', 0, ''),
(388, 9, 'EIF513', 'VLSI', 0, ''),
(389, 9, 'EIF306', 'DIGITAL TECHNIQUES & APPLICATION', 0, ''),
(390, 9, 'EIF307', 'LINEAR INTEGRATED CIRCUITS', 0, ''),
(391, 9, 'EIF308', 'CIRCUIT AND NETWORK', 0, ''),
(392, 9, 'EIF309', '8051 MICROCONTROLLER', 0, ''),
(393, 9, 'EIF405', 'SIMULATION SOFTWARE', 0, ''),
(394, 9, 'EIF311', 'NON CONVENTIONAL ENERGY SOURCES', 0, ''),
(395, 9, 'EIF401', 'POWER ELECTRONICS-I', 0, ''),
(396, 9, 'EIF402', 'EMBEDDED SYSTEMS', 0, ''),
(397, 9, 'IEF403', 'INSTRUMENTATION', 0, ''),
(398, 9, 'EIF507', 'ENERGY CONSERVATION', 0, ''),
(399, 9, 'EIF406', 'ELECTRONICS CIRCUIT DESIGN', 0, ''),
(400, 9, 'IEF407', 'DIGITAL SYSTEM DESIGN', 0, ''),
(401, 9, 'IEF408', 'DATA COMMUNICATION SYSTEM', 0, ''),
(402, 9, 'EIF404', 'PRINCIPLES OF CONTROL SYSTEM', 0, ''),
(403, 9, 'ETF511', 'PLC AND DRIVES', 0, ''),
(404, 9, 'CCF501', 'INDUSTRIAL ORGANIZATION MANAGEMENT', 0, ''),
(405, 9, 'EIF509', 'MARKETING MANAGEMENT', 0, ''),
(406, 9, 'EIF510', 'ENTREPRENEURSHIP DEVELOPMENT', 0, ''),
(407, 9, 'EIF101', 'ELECTRONICS COMPONENTS AND APPLICATION', 0, ''),
(408, 9, 'EIF108', 'COMPUTER FUNDAMENTAL & APPLICATION', 0, ''),
(409, 9, 'EIF313', 'HIGHER MATHS', 0, ''),
(410, 9, 'IEF/ETF107', 'BASIC ELECTRICAL ENGINEERING', 0, ''),
(411, 12, 'CEF301', 'APPLIED METHEMATICS', 0, ''),
(412, 12, 'MEF313/EIF312', 'HIGHER MATHS', 0, ''),
(413, 12, 'CCF101', 'ENGINEERING PHYSICS', 0, ''),
(414, 12, 'CCF103', 'CHEMISTRY & ENGG. MATERIALS', 0, ''),
(415, 13, 'EEF301', 'APPLIED MATHEMATICS', 0, ''),
(416, 13, 'CCF104', 'CHEMISTRY & ENGG. MATERIALS', 0, ''),
(417, 13, 'CCF102', 'ENGINEERING PHYSICS', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `examinerorder`
--

CREATE TABLE `examinerorder` (
  `id` int(10) NOT NULL,
  `designation` varchar(1000) DEFAULT NULL,
  `staffname` varchar(1000) DEFAULT NULL,
  `staffmail` varchar(100) NOT NULL,
  `collegename` varchar(100) DEFAULT NULL,
  `instcode` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `External_Name` varchar(456) NOT NULL,
  `External_Designation` varchar(123) NOT NULL,
  `External_College_Name` varchar(123) NOT NULL,
  `External_Email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examinerorder`
--

INSERT INTO `examinerorder` (`id`, `designation`, `staffname`, `staffmail`, `collegename`, `instcode`, `course_name`, `course_code`, `department`, `External_Name`, `External_Designation`, `External_College_Name`, `External_Email`) VALUES
(3, 'HEAD OF DEPARTMENT', 'DATTATRAY  MANOHARRAO  GARGE', 'dattagarge@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'Civil', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(4, 'HEAD OF DEPARTMENT', 'SHRIKANT  MARUTI  NAIK', 'shrikantmnaik@rediffmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'ELECTRICAL ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(5, 'HEAD OF DEPARTMENT', 'RANJIT  KRISHNARAO  SAWANT', 'ranjitsawant@yahoo.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'ELECTRONICS ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(6, 'LECTURER', 'SUNITA  VIDYADHAR  GAT', 'sunitavidyadhar22@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'Science', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(7, 'LECTURER', 'MOHANKUMAR  P  HAMPALI', 'mohanhampali@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'APPLIED MECHANICS', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(8, 'LECTURER', 'LAC0011', 'shreechavan2325@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'IT', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(9, 'LECTURER', 'MARUTI BHAGOJI PATIL', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'IT', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(10, 'LECTURER', 'SURESH SHANKAR BIRJE', 'birjesuresh@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'MECHANICAL ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(11, 'LECTURER', 'KIRAN B KULKARNI', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'ELECTRICAL ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(12, 'VISITING LECTURER', 'AMIT N SONULE', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'IT', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(13, 'LECTURER', 'AMAR TANAJI PATIL', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'IT', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(14, 'LECTURER', 'MANJIRI SANDEEP DATAR', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'ELECTRONICS ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(15, 'VISITING LECTURER', 'DHANRAJ B JOGDAND', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'MECHANICAL ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com'),
(16, 'VISITING LECTURER', 'ASAVARI V VADD', 'patilmaruti16@gmail.com', 'GP KOLHAPUR', '0011', 'MAD', 'ITG406', 'CIVIL ENGINEERING', 'xyz', 'lecturer', 'DYP', 'xyz123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `examinfo`
--

CREATE TABLE `examinfo` (
  `Final Year` varchar(12) NOT NULL,
  `Semester` int(25) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `Subject Code` varchar(30) NOT NULL,
  `Exam Type` varchar(30) NOT NULL,
  `No Of Candidates` int(30) NOT NULL,
  `Internal Expert` varchar(30) NOT NULL,
  `Expert Assistent` varchar(30) NOT NULL,
  `Course` varchar(30) NOT NULL,
  `Code/Schema` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Duration` varchar(6) NOT NULL,
  `Lab Assistent` varchar(30) NOT NULL,
  `Peon` varchar(30) NOT NULL,
  `External Examiner` varchar(30) NOT NULL,
  `Inst. Code of External Examiner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examinfo`
--

INSERT INTO `examinfo` (`Final Year`, `Semester`, `Subject`, `Subject Code`, `Exam Type`, `No Of Candidates`, `Internal Expert`, `Expert Assistent`, `Course`, `Code/Schema`, `Date`, `Duration`, `Lab Assistent`, `Peon`, `External Examiner`, `Inst. Code of External Examiner`) VALUES
('0', 1, 'Save', 's', 'EPR', 2, 's', 'd', 'er', 'g', '2023-06-30', '00:00:', 'r', 'r', 'd', '3'),
('0', 4, 'Save', 'ITG203', 'IPR', 60, 'Kole mam', 'Patil sir', 'IT', 'G', '2022-02-14', 'ar', 'sa', 'olk', 'dsw', '311'),
('0', 1, 'e', 'e', 'EPR', 0, 'ee', 'ee', 'e', 'e', '2023-12-22', 'ar', 'eee', 'ee', 'e', '4'),
('0', 2, 'C', 'ITG108', 'IPR', 60, 'Arde mam', 'Nadgeri Mam', 'IT', 'G', '2023-12-15', 'mor', 'Sawant ', 'AAsha', 'Deshpande sir', '435'),
('0', 4, 'cpp', '6', 'EPR', 35, 'abc', 'sxd', 'EE', 'G', '2023-12-21', 'mor', 'xyz', 'rst', 'emd', '876'),
('0', 5, 'm', 's', 'EPR', 45, 'ff', 're', 'IT', 'G', '2023-12-28', 'mor', 'ghi', 'jkl', 'rst', '456'),
('0', 1, 'f', 'f', 'EPR', 0, 'f', 'gg', 'rt', 'g', '2023-12-01', 'mor', 'f', 'f', 'f', '6'),
('0', 5, 'java', 'ITG404', 'IPR', 65, 'abc', 'efg', 'IT', 'G', '2023-12-30', 'mor', 'mno', 'pqr', 'stu', 'xyz'),
('0', 5, 'java', 'ITG404', 'IPR', 65, 'abc', 'efg', 'IT', 'G', '2023-12-30', 'mor', 'mno', 'pqr', 'stu', 'xyz'),
('0', 5, 'java', 'ITG404', 'IPR', 65, 'abc', 'efg', 'IT', 'G', '2023-12-30', 'mor', 'mno', 'pqr', 'stu', 'xyz'),
('0', 5, 'java', 'ITG404', 'IPR', 65, 'abc', 'efg', 'IT', 'G', '2023-12-30', 'mor', 'mno', 'pqr', 'stu', 'xyz'),
('0', 6, 'python', 'itg345', 'EPR', 80, 'abc', 'ghu', 'IT', 'G', '2023-12-22', 'ar', 'sa', 'olk', 'kdnsf', '311'),
('0', 1, 'q', 'w', 'EOR', 0, 't', 'y', 'u', 'o', '2023-12-16', 'mor', 'u', 'i', 'i', 'y'),
('0', 1, 'j', 'ITG404', 'EPR', 87, 'abc', 'jh', 'IT', 'G', '2023-12-22', 'ar', 'r', 'd', 'd', 'nmdsf'),
('0', 2, 'java', '6', 'EPR', 65, 're', 'jh', 'IT', 'fd', '2023-12-15', 'mor', 'fdks', 'r', 'd', 'nmdsf'),
('0', 1, 'java', '6', 'EPR', 0, 're', 'j', 'IT', 'G', '2023-12-16', 'mor', 'r', 'r', 'dsw', '3'),
('0', 1, 'u', '6', 'EPR', 65, 'abc', 'jh', 'IT', 'G', '2023-12-14', 'mor', 'sa', 'fds,m', 'dsw', '311'),
('0', 6, 'jhfdjs', 's', 'EPR', 60, 'GFH', 'j', 'jk', 'm', '2023-12-09', 'mor', 'j', 'j', 'h', 'g'),
('0', 5, 'java', '1', 'EPR', 35, 'a', 'nmds', 'IT', 'g', '2023-11-29', 'mor', 'fdks', 'fds,m', 'dsw', '311'),
('0', 1, 'sd', 'ed', 'IPR', 3, 'dssdfgh', 'dfg', 'dfv', 'fg', '2024-01-19', 'mor', 'fvvv', 'dfv', 'fdg', '3'),
('1', 3, 'java', '1', 'IPR', 60, '2', '2', '2', '2', '2024-01-25', 'mor', 'e', '2', '22', '2'),
('1', 3, 'java', 'ITG404', 'IPR', 65, 's', 's', 's', 's', '0004-03-03', 'mor', 's', 's', 's', 's'),
('2', 6, 'java', '6', 'IPR', 1, '11', '11', '11', '11', '0069-07-09', 'ar', '11', '11', '1111', '11'),
('yes', 6, 'AI', 'ITG404', 'EPR', 120, 'ewe', 'rer', 'trt', 'yty', '2332-02-03', 'ar', 'uyu', 'mnm', 'oio', 'pop'),
('yes', 5, 'AI', 'ITG404', 'EPR', 120, 'ewe', 'rer', 'trt', 'yty', '2332-02-03', 'ar', 'uyu', 'mnm', 'oio', 'pop'),
('yes', 5, 'aa', 'aa', 'EPR', 120, 'aa', 'aa', 'aa', 'aa', '0009-08-07', 'ar', 'aa', 'aa', 'aa', 'aa'),
('yes', 5, 'jkn', 'nmj', 'PR', 0, 'kjnk', 'm,', 'jnn', 'klk', '0008-08-08', 'mor', 'kjkl', 'kml', 'm,', 'mk');

-- --------------------------------------------------------

--
-- Table structure for table `external_examinerorder`
--

CREATE TABLE `external_examinerorder` (
  `id` int(10) NOT NULL,
  `staffmail` varchar(1000) DEFAULT NULL,
  `internal_examiner` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `External_Name` varchar(456) NOT NULL,
  `External_Designation` varchar(123) NOT NULL,
  `External_College_Name` varchar(123) NOT NULL,
  `External_Email` varchar(1000) NOT NULL,
  `Exam_Date` date DEFAULT NULL,
  `Exam_Time` time(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `external_examinerorder`
--

INSERT INTO `external_examinerorder` (`id`, `staffmail`, `internal_examiner`, `department`, `course_name`, `course_code`, `External_Name`, `External_Designation`, `External_College_Name`, `External_Email`, `Exam_Date`, `Exam_Time`) VALUES
(1, 'sharavaric21@gmail.com', 'Shobha Nadgeri', 'IT', 'Software Testing', 'ITG402', '', '', '', '', '2024-03-13', '20:27:00.0000'),
(2, 'sharvaric21@gmail.com', 'AAFRIN AKIL KHAN', 'IT', 'MAD', 'ITG406', 'M.K.JADHAV', 'Lecturer', 'DYP', 'babhulkarshrutika@gmail.com', '2024-03-13', '23:01:00.0000'),
(3, 'babhulkarshrutika@gmail.com', 'shruti', 'IT', 'xyz', 'itg501', '', '', '', '', '2024-12-04', '10:00:00.0000'),
(4, 'swamiankita1410@gmail.com', 'Kapil Chavan', 'IT', 'LIA', 'ITG510', 'S.B.Patil', 'lecturer', 'DOT', 'sharvaric21@gmail.com', '2024-04-01', '12:00:00.0000');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` varchar(3) DEFAULT NULL,
  `faculty_name` varchar(37) DEFAULT NULL,
  `facultymail` varchar(29) DEFAULT NULL,
  `designation` varchar(21) DEFAULT NULL,
  `department` varchar(23) DEFAULT NULL,
  `inst_name` varchar(34) DEFAULT NULL,
  `inst_code` varchar(250) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `bankname` varchar(29) DEFAULT NULL,
  `account no` varchar(18) DEFAULT NULL,
  `IFSC code` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `faculty_name`, `facultymail`, `designation`, `department`, `inst_name`, `inst_code`, `phone`, `bankname`, `account no`, `IFSC code`) VALUES
('1', 'SURESH SHANKAR BIRJE', 'birjesuresh@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9763717697', 'STATE BANK OF INDIA', '10557556902', 'SBIN0003439'),
('2', 'YUVRAJ SHIVAJIRAO DHOBALE', 'ysdhobale@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8390850101', 'STATE BANK OF INDIA', '10557557134', 'SBIN0003439'),
('3', 'JAYENDRA  DHYANCHAND  DHOTE', 'jayendraddhote@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9850836791', 'STATE BANK OF INDIA', '10993534981', 'SBIN0003439'),
('4', 'RAJENDRA  LAXMAN  DOIPHEAD ', 'rajendrald@rediffmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8452845055', 'STATE BANK OF INDIA', '10027992400', 'SBIN0004257'),
('5', 'SUNITA  VIDYADHAR  GAT', '', 'LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9270542442', 'STATE BANK OF INDIA', '10557556800', 'SBIN0003439'),
('6', 'VIJAY  NARAYAN  GANGAPURE', 'vijaygangapure@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822586738', 'STATE BANK OF INDIA', '10557555126', 'SBIN0003439'),
('7', 'MOHANKUMAR  P  HAMPALI', 'mohanhampali@gmail.com', 'LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9421607620', 'STATE BANK OF INDIA', '11149291704', 'SBIN0000527'),
('8', 'KULDIP  DAULATRAO  KAMBLE', 'kamblekuldeep31@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9403609866', 'STATE BANK OF INDIA', '11150527432', 'SBIN0000506'),
('9', 'SHITAL  BABURAO  KHOT', 'shital_sindhu@yahoo.co.in', 'LECTURER', 'PHYSICS', 'GP KOLHAPUR', '0011', '9881259556', 'STATE BANK OF INDIA', '11291145522', 'SBIN0003439'),
('10', 'SUNIL  VISHNU  KADAM', 'sunil_kadam1099@yahoo.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9226241220', 'STATE BANK OF INDIA', '10993535157', 'SBIN0000428'),
('11', 'MAHADEVRAO  SIDDAPPA  KAGWADE', 'mskagwade@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9922273844', 'STATE BANK OF INDIA', '10557557101', 'SBIN0003439'),
('12', 'BHARATBHUSHAN  VISHNU  KAMBLE', 'bvkamble@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7411486838', 'STATE BANK OF INDIA', '10557556957', 'SBIN0000428'),
('13', 'KIRANKUMAR  AMBAJIRAO  KOLEKAR', 'kiranakolekar@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9922426010', 'STATE BANK OF INDIA', '31380171482', 'SBIN0000403'),
('14', 'SHASHANK  MADHUKAR  MANDRE', 'shashankmandre@yahoo.co.in', 'LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9371457195', 'STATE BANK OF INDIA', '10557557010', 'SBIN0003439'),
('15', 'AVINASH  HARIBHAU  MUDHOLKAR', 'avikantm@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9403464907', 'STATE BANK OF INDIA', '10557556775', 'SBIN0003439'),
('16', 'SHOBHA  ANNARAO  NADGERI', 'sa.nadgeri@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9967217444', 'STATE BANK OF INDIA', '11208832852', 'SBIN0004319'),
('17', 'SHRIKANT  MARUTI  NAIK', 'shrikantmnaik@rediffmail.com', 'HEAD OF DEPARTMENT', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422405935', 'AXIS BANK', '9.11E+14', 'UTIB0000251'),
('18', 'SUNIL  ABAJIRAO  NIKAM', 'sunilanikam35401@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9623848226', 'STATE BANK OF INDIA', '10557556899', 'SBIN0003439'),
('19', 'BALASO  PANDURANG  PATIL', 'bppatil1968@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9922409387', 'STATE BANK OF INDIA', '10557556822', 'SBIN0003439'),
('20', 'RAJESH  ANANTRAO  PATIL', 'rpatil8rec106@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9819639518', 'AXIS BANK', '2.51E+14', 'UTIB0000652'),
('21', 'ANAND  BAPU  RAJMANE', 'anandbrajmane@rediffmail.com ', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9421282578', 'STATE BANK OF INDIA', '10557556888', 'SBIN0003439'),
('22', 'SHAILAJA  SHANKAR  SANKPAL', 'ss_sankpal@yahoo.co.in', 'LECTURER', 'PHYSICS', 'GP KOLHAPUR', '0011', '9922559993', 'STATE BANK OF INDIA', '10557556695', 'SBIN0003439'),
('23', 'RANJIT  KRISHNARAO  SAWANT', 'ranjitsawant@yahoo.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822878804', 'STATE BANK OF INDIA', '10557556833', 'SBIN0003439'),
('24', 'PRAFULLKUMAR  KASHINATHRAO  SONKAMBLE', 'sonkamblep77@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9922411103', 'STATE BANK OF INDIA', '20006226671', 'SBIN0003866'),
('25', 'VINAYAK  SAMPATRAO  WAYDANDE', 'vswaydande@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9763321555', 'STATE BANK OF INDIA', '11149357836', 'SBIN0003439'),
('26', 'GOPAL  MANGILAL  ADCHITRE', 'adchitregm@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '7744089498', 'STATE BANK OF INDIA', '34976640074', 'SBIN0003439'),
('27', 'RAVIRAJ BHARAT ADLINGE', 'ravirajadlinge94@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7083022828', 'STATE BANK OF INDIA', '38189665855', 'SBIN0003439'),
('28', 'SHAIKH  AREF  AHMED', 'arefshaikh569@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8888978740', 'STATE BANK OF INDIA', '62041096929', 'SBIN0017527'),
('29', 'BHAGCHAND  BABASAHEB  ARJUN', 'bhagchandarjun@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9423741987', 'STATE BANK OF INDIA', '30277356345', 'SBIN0008254'),
('30', 'MADHURI  SADASHIV  ARADE', 'arademadhuri15@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '8291091492', 'AXIS BANK', '9.16E+14', 'UTIB0000028'),
('31', 'RAJU  DADA  BARAKADE', 'rajubarkade@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8169398239', 'STATE BANK OF INDIA', '31842289301', 'SBIN0007763'),
('32', 'CHHAYA  SHRISHAIL  BANDGAR', 'csbandgar@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422498851', 'STATE BANK OF INDIA', '31066100577', 'SBIN0000527'),
('33', 'RAJESH  RAGHUNATH  CHOUGALE', 'rrchougale@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9762314031', 'STATE BANK OF INDIA', '33804347990', 'SBIN0016348'),
('34', 'KAPIL  ARVIND  CHAVAN', 'kapilchavan1@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9730388769', 'STATE BANK OF INDIA', '32120736241', 'SBIN0003439'),
('35', 'PRANOTI  RAJENDRA  DOKE', 'pranoti.doke@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8605202614', 'STATE BANK OF INDIA', '31999082919', 'SBIN0001656'),
('36', 'PANKAJ  VITTHALRAO  ITKALKAR', 'pvi47@rediffmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9860111217', 'STATE BANK OF INDIA', '62168372932', 'SBIN0020039'),
('37', 'RAKESH  GANGADHARRAO  INJEWAR', 'rakeshinjewar@gmail.com', 'LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9860469300', 'AXIS BANK', '9.10E+14', 'UTIB0000048'),
('38', 'SUCHITRA  PRALHAD  ITEKARI', 'suchitraitekari@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9420524066', 'STATE BANK OF INDIA', '31746779178', 'SBIN0003439'),
('39', 'VIBHAVARI  RAMCHANDRA  JADHAV', 'vibhasjadhav@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9921399067', 'STATE BANK OF INDIA', '62478057826', 'SBIN0020302'),
('40', 'MONALI  SHAHAJI  KAMBLE', 'monalikamble1986@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8698484364', 'STATE BANK OF INDIA', '32447532510', 'SBIN0003439'),
('41', 'PREETI  VIJAY  KOLE', 'preetijadhav30@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '8087232875', 'STATE BANK OF INDIA', '30907926314', 'SBIN0003439'),
('42', 'JAYASHRI  MADHUKAR  KUMBHAR', 'jayashrikumbhar20@gmail.com', 'LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '7028925678', 'STATE BANK OF INDIA', '35289810518', 'SBIN0017527'),
('43', 'PRAFULLA  PRABHAKAR  KHEDKAR', 'ppkhed@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9422622703', 'STATE BANK OF INDIA', '10557556673', 'SBIN0003439'),
('44', 'PRASAD  PRABHAKARRAO  MAHAJAN', 'mahajan.prasad007@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8668328301', 'STATE BANK OF INDIA', '30451420280', 'SBIN0001468'),
('45', 'PIYUSH  DINESH  MALPURE', 'piyushmalpure@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9860902557', 'STATE BANK OF INDIA', '62427423056', 'SBIN0020019'),
('46', 'MINATH  SUKHDEO  MANDAPE', 'minathmandape@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9423440460', 'STATE BANK OF INDIA', '32464555775', 'SBIN0003439'),
('47', 'PRAVIN  VASANTRAO  MINACHEKAR', 'lecturerpravin2015@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8600407844', 'STATE BANK OF INDIA', '31522767500', 'SBIN0000384'),
('48', 'MAMTA  SANJAY  MORAYE', 'mamta_morye@yahoo.com', 'LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9011666868', 'STATE BANK OF INDIA', '32498189229', 'SBIN0004257'),
('49', 'SHAILENDRA  BALU  MOTE', 'shailendramote@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '7972814282', 'STATE BANK OF INDIA', '62504596292', 'SBIN0020018'),
('50', 'UDDHAVRAJ  PANDURANG  MANE', 'uddhavrajmane@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9823186527', 'STATE BANK OF INDIA', '30332783659', 'SBIN0000413'),
('51', 'AMOL  BAJIRAO  PATIL', 'amolbpatil111@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8767609924', 'STATE BANK OF INDIA', '32543056924', 'SBIN0012691'),
('52', 'JITENDRA  BHAUSO  PATIL', 'jitendrapatil11691@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9637277704', 'STATE BANK OF INDIA', '30900323695', 'SBIN0000413'),
('53', 'MARUTI BHAGOJI PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9665060707', 'STATE BANK OF INDIA', '32485718545', 'SBIN0003439'),
('54', 'CHETAN  SUBHASH  PHUTANE', 'chetansphutane@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9404763169', 'BANK OF MAHARASHTRA', '68002835636', 'MAHB0000533'),
('55', 'SACHIN  JAGANNATH  PUKALE', 'pukalesachin87@gmail.com', 'LECTURER', 'Information Technology', 'GP KOLHAPUR', '0011', '9623200653', 'AXIS BANK', '9.1701E+14', 'UTIB0000048'),
('56', 'SHUBHANJAY  SHANKARRAO  PUJARI', 'pujari.jay@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9890696964', 'STATE BANK OF INDIA', '30630294557', 'SBIN0005561'),
('57', 'ASHWINI  PRAKASHRAO  RATHOD', 'ashuberry2010@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8208485030', 'STATE BANK OF INDIA', '62168216611', 'SBIN0020302'),
('58', 'YOGESH  RAJARAM  SATPUTE', 'yogesh.satpute2277@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8793704005', 'STATE BANK OF INDIA', '32977357703', 'SBIN0011136'),
('59', 'PRAMOD  ANANDRAO  SHEVALE', 'pramodshevale.mtech@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9503623688', 'STATE BANK OF INDIA', '31376692742', 'SBIN0000570'),
('60', 'ABHILASHA  SHAMSUNDAR  SHIVAL', 'abhilasha.shival123@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9730470922', 'STATE BANK OF INDIA', '37443467831', 'SBIN0003439'),
('61', 'MOHINI  MAHESH  SOVANI', 'mmsovani@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9860662313', 'STATE BANK OF INDIA', '32572664882', 'SBIN0003439'),
('62', 'MADHURI  YOGESH  SONULE', 'madhusonule@rediffmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9890055075', 'STATE BANK OF INDIA', '31499599865', 'SBIN0000527'),
('63', 'PANDURANG  HARIDAS  TARANGE', 'pandurangtarange@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9420447640', 'STATE BANK OF INDIA', '20395864697', 'SBIN0012011'),
('64', 'ASHISH  SUBHASH  WAYCHAL', 'aswaychal58@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9970970497', 'STATE BANK OF INDIA', '32558444274', 'SBIN0000271'),
('65', 'SAUBAI  BABA  WAKSHE', 'sbwakshe@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9970763374', 'STATE BANK OF INDIA', '32148137906', 'SBIN0003439'),
('66', 'APARNA  PRAKASH  YADAV', 'aparnayadav1217@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8600386439', 'STATE BANK OF INDIA', '37586865588', 'SBIN0012239'),
('67', 'DATTATRAY  MANOHARRAO  GARGE', 'dattagarge@gmail.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9922404552', 'AXIS BANK', '9.12E+14', 'UTIB0000251'),
('68', 'JYOTI  PRALAHAD  PATIL', 'jpp8805095020@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8805095020', 'STATE BANK OF INDIA', '10993552526', 'SBIN0000428'),
('69', 'SANJAY  MURLIDHAR  SALAVI', 'anushreesalavi252@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8975927080', 'STATE BANK OF INDIA', '11339861125', 'SBIN0000403'),
('70', 'ABHAY  SHAHURAO  CHAVAN', 'ab2006aur@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9423392509', 'STATE BANK OF INDIA', '11339865222', 'SBIN0000403'),
('71', 'SARIKA  SADHURAM  CHHATWANI', 'sarikachhatwani@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822948303', 'BANK OF BARODA', '6.91E+12', 'BARB0POOSEN'),
('72', 'SUPRIYA  SANJAY  ROTE', 'supriyarote@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9372717818', 'STATE BANK OF INDIA', '30382018497', 'SBIN0003439'),
('73', 'SUKHADEV  BABASO  WAGHMODE', 'sukhdevom@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9822338527', 'STATE BANK OF INDIA', '32151326807', 'SBIN0000413'),
('74', 'PRATIK SAMBHAJI CHAVAN/PATIL', 'pratik.chavanpatil@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'G P KOLHAPUR', '0', '9158925814', 'STATE BANK OF INDIA', '33232613191', 'SBIN0000431'),
('75', 'KAMBLE SIYANG PRAFULLA', 'siyagkamble.2000@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '0', '7620727513', 'BANK OF INDIA', '1.50718E+14', 'BKID0001507'),
('76', 'JASMIN RAJU PENDHARI', 'jasminpendhari001@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '0', '9067863493', 'UNION BANK OF INDIA', '4.75502E+14', 'UBIN0547557'),
('77', 'RUSHIKESH PRASAD KULKARNI', 'rushikeshpbkulkarni@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '0', '8788225159', 'CANARA BANK', '3.8941E+12', 'CNRB0003894'),
('78', 'AAFRIN AKIL KHAN', 'aafrinkhan005@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '0', '8600328278', 'STATE BANK OF INDIA', '37481228015', 'SBIN0005550'),
('79', 'ANJALI MUKUND JOSHI', ' joshianjalia1@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9881125380', 'STATE BANK OF  INDIA', '11271995856.00', 'SBIN0005561'),
('80', 'SHRADDHA SANJAY MANE', 'shraddhamane1123@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9834723252', 'STATE BANK OF  INDIA', '33350253708.00', 'SBIN0000413'),
('81', 'VAIBHAVI GOVIND GALANDE', 'vaibhaviggalande@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '7057051038', 'BANK OF MAHARASHTRA', '60228646006.00', 'MAHB0000326'),
('82', 'NILESH ANANDRAO CHOUGALE', 'chougalenilesha@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9921213079', 'AXIS BANK ', '915010001254752.00', 'UTIB0001196'),
('83', ' KUMBHAR MACCHINDRANATH NAGOJI', 'kumbhar.macchindra@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '8805014239', 'STATE BANK OF INDIA', '20350556730.00', 'SBIN0017527'),
('84', ' AMIT PRAKASH GHORPADE ', 'amitghorapade@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9881807782', 'UNION BANK OF INDIA ', '471102010040707.00', 'UBIN0547115'),
('85', 'NAMRATA RUTURAJ SHINDE', '04shindenamrata@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8087259447', 'STATE BANK OF INDIA', '38154111908.00', 'SBIN0000413'),
('86', 'SHWETA RAKESH PATIL', 'desaishweta248@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '855193271', 'HDFC', '50100527136980.00', 'HDFC0001274'),
('87', 'ANITA SANDEEP POWAR', 'anitaj935@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8806807272', 'IDBI BANK', '615104000238304.00', 'IBKL0000615'),
('88', 'RASHMI AVADHUT JOSHI', 'Email-rashmi9187@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9834041441', 'PUNJAB NATIONAL BANK', '8882191016587.00', 'PUNB0088810'),
('89', 'AVDHUT VISHNU PATIL', 'avpatil2727@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '7507387751', 'STATE BANK OF INDIA', '20258962363', 'SBIN0063778'),
('90', 'SMITA R DANGE', 'dangesmita07@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9657087438', 'STATE BANK OF INDIA', '39135295800', 'SBIN001887'),
('91', 'SWAPNALI SHIVAJI PATIL', 'swapnalipatil5696@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9860615696', 'STATE BANK OF INDIA', '40907847788', 'SBIN0016348'),
('92', '', '', '', '', '', '0', '', '', '', ''),
('93', 'SANKET MUKUND PARALKAR', 'sanketparalkar60@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '7057771790', 'UNION BANK OF INDIA', '4.71102E+14', 'UBIN0547115'),
('94', 'MAYURI A DESHPANDE', 'mayuri.shirgurkar@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9766203072', '', '1.49401E+13', 'FORL0001455'),
('95', 'MONALI DIVESH VARDAM', 'monalivardam@gmail.com ', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8623848868', 'STATE BANK OF INDIA', '37097154320', 'SBIN0014412'),
('96', 'SAI AJINKYA SHEVDE', 'shevadesai@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8669860009', 'STATE BANK OF INDIA', '33115279228', 'SBIN0016348'),
('97', 'PADMINI M MAGDUM', 'padminimagdum@gmail.com', 'LECTURER', 'COMPUTER ENGINEERING', 'D Y PATIL POLYTECHNIC KASABA BAWDA', '0', '9657965018', 'BANK OF MAHARASHTRA', '60035364110', 'MAHB0001219'),
('98', 'UMESH KALGONDA PATIL', 'upatil25@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '0', '8999449699', 'BANK OF MAHARASHTRA', '68006722731', 'MAHB0000478'),
('99', 'AKSHAY M KARPE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'D Y PATIL', '0', '8485097798', 'IDBI ', '1', 'IBKL00001262'),
('100', 'AMAR DINKAR KUMBHAR', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9764068269', 'STATE BANK OF INDIA', '35906345982', 'SBIN0003439'),
('101', 'ARUNA BABAN MANE', 'maneab29@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9545838520', 'STATE BANK OF INDIA', '40659358651', 'SBIN0000413'),
('102', 'ARPITA ARJUN TAWADE', 'arpitaaaru123@gmail.com', 'VISITING LECTURER', 'PHYSICS', 'GP KOLHAPUR', '0011', '8689883181', 'CANARA BANK', '52302010020245', 'CNRB0015230'),
('103', 'HEMANT ASHOK PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9552226734', 'STATE BANK OF INDIA', '37881078742', 'SBIN0019191'),
('104', 'MADHURA R KULKARNI', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9850821122', 'STATE BANK OF INDIA', '33182227666', 'SBIN00003439'),
('105', 'NILOFAR GULAB KINIKAR', 'nilofark2484@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '7798816952', 'STATE BANK OF INDIA', '32733777827', 'SBIN0015087'),
('106', 'PRATIBHA PRUTHVIRAJ MAHADIK', 'pratibha24484@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9028729657', 'STATE BANK OF INDIA', '32698370683', 'SBIN0001887'),
('107', 'PRIYA G JADHAV', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9527831753', 'STATE BANK OF INDIA', '20213062255', 'SBIN0003439'),
('108', 'RENUKADAS PRABHAKAR KULKARNI', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422032469', 'STATE BANK OF INDIA', '10557557600', 'SBIN0063771'),
('109', 'RUPA G RAYCHUR', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9168889784', 'STATE BANK OF INDIA', '20164177289', 'SBIN0017527'),
('110', 'RUCHA GURAV', 'patilmaruti16@gmail.com', 'ASSOSCIATE PROFFESSOR', 'COMPUTER ENGINEERING', 'D Y PATIL SALONKHENAGAR', '0', '9423367021', 'STATE BANK OF INDIA', '31168217479', 'SBIN0016348'),
('111', 'SACHIN NANCHE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9834303834', 'STATE BANK OF INDIA', '30281128039', 'SBIN0003439'),
('112', 'SHUBHANGI GOPAL PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '8806554508', 'STATE BANK OF INDIA', '34285509236', 'SBIN0017527'),
('113', 'SUPRIYA KISHOR KADAM', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9067296782', 'STATE BANK OF INDIA', '40694571634', 'SBIN0016816'),
('114', 'VANASHRI S SHINDE', 'patilmaruti16@gmail.com', 'ASSOSCIATE PROFFESSOR', 'COMPUTER ENGINEERING', 'D Y PATIL SALONKHENAGAR', '0', '8149287529', 'STATE BANK OF INDIA', '37859943105', 'SBIN0007686'),
('115', 'ROHINI ANIKET RASAL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '7387961550', 'STATE BANK OF INDIA', '11517710627', 'SBIN0003439'),
('116', 'AMOL BALIRAM PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9860642075', 'BANK OF INDIA', '1', 'BKID0000923'),
('117', 'NIKHIL SURGONDA PATIL', 'patilmaruti16@gmail.com', 'HEAD OF DEPARTMENT', 'MECHANICAL ENGINEERING', 'SIT YADRAV', '0', '8888049278', 'BANK OF MAHARASHTRA', '60024387618', 'MAHB0001383'),
('118', 'LAC0011', 'shreechavan2325@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9146473170', 'STATE BANK OF INDIA', '0', '0'),
('119', 'SHASHIKANT YASHWANT LANDAGE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'TKIT WARNANAGAR', '0', '7208876997', 'STATE BANK OF INDIA', '31205780599', 'SBIN0007249'),
('120', 'CHAITALI S PRABHU', 'chaitaliprabhu@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP RATNAGIRI', '0', '9890917954', 'STATE BANK OF INDIA', '30424678119', 'SBIN0005561'),
('121', 'TANVIRUKSAR ASLAM MAGDUM ', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '83083119093', 'STATE BANK OF INDIA', '36524020731', 'SBIN0006587'),
('122', 'SUSHANT SUKUMAR PATOLE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'SGI POLYTECHNIC', '0', '9156351487', 'BANK OF BARODA', '2', 'BARB0ATIGRE'),
('123', 'RAJESHWARI ANIKET SHINDE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '7972611880', 'STATE BANK OF INDIA', '37111282317', 'SBIN0063771'),
('124', 'NITIN SHIVAJI SAWANT', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '0', '7020004600', 'BANK OF MAHARASHTRA', '6003502457', 'MAHB0000478'),
('125', 'VAIBHAV A SHINDE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'VIDYAVARDHANI PAL', '0', '9970699242', 'STATE BANK OF INDIA', '35840311534', 'SBIN0007219'),
('126', 'SUPRIYA PRABHAKAR MENGANE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'BSIT KOLHAPUR', '0', '9850528669', 'PUNJAB NATIONAL BANK KOLHAPUR', '33', '33'),
('127', 'SANTOSH A KADAM', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '8956244189', 'BANK OF MAHARASHTRA', '60333783654', 'MAHB0000533'),
('128', 'SUHAS RAJARAM PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'SGI POLYTECHNIC KOLHAPUR', '0', '9423029089', 'BANK OF INDIA', '4', '4'),
('129', 'NIKHIL BALASAHEB SHINDE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'BHARATI VIDYAPEETH', '0', '8329475791', 'STATE BANK OF INDIA', '33221193927', 'SBIN0005561'),
('130', 'DEEPAK MANSING PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '0', '9850895121', 'BANK OF MAHARASHTRA', '20163754714', 'MAHB0000478'),
('131', 'ROHINI VINAYAK VADAR', 'patilmaruti16@gmail.com', 'ASSISTANT PROFFESSOR', 'ELECTRICAL ENGINEERING', 'D Y PATIL SALONKHENAGAR', '0', '8625832467', 'AXIS BANK', '5', '5'),
('132', 'SHARADA BAAVRAJ PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8208167848', 'ICICI BANK', '16601006963', 'ICIC0000166'),
('133', 'ARCHANA SANJAY GAIKWAD', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '0', '7385140454', 'STATE BANK OF INDIA', '37063255487', 'SBIN0007958'),
('134', 'SHAILESH ASHOK SHINDE', 'patilmaruti16@gmail.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'DKTE YCP', '0', '9881157009', 'YUKO BANK', '6', '6'),
('135', 'AMOL ARVIND KULKARNI', 'patilmaruti16@gmail.com', 'ASSISTANT PROFFESSOR', 'CIVIL ENGINEERING', 'DOT', '0', '9421122662', 'YUKO BANK', '7', '7'),
('136', 'SARIKA PRASHANT SHINDE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9960300907', 'BANK OF MAHARASHTRA', '60083988198', 'MAHB0001476'),
('137', 'ATUL ASHOK KADAM', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'ASHOKRAO MANE VATHAR', '0', '7709743845', 'AXIS BANK', '8', '8'),
('138', 'RUKMA N PRABHU', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9545903906', 'STATE BANK OF INDIA', '34221166485', 'SBIN0017527'),
('139', 'AMAR TANAJI PATIL', '', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '1111111111', 'STATE BANK OF INDIA', '10846257789', 'SBIN0017527'),
('140', 'AMIT N SONULE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '2222222222', 'STATE BANK OF INDIA', '31388611939', 'SBIN0011135'),
('141', 'DHANRAJ B JOGDAND', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '3333333333', 'STATE BANK OF INDIA', '31428579977', 'SBIN0011152'),
('142', 'ASAVARI V VADD', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '4444444444', 'BANK OF INDIA', '9', '9'),
('143', 'KIRAN B KULKARNI', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '5555555555', 'STATE BANK OF INDIA', '11291143738', 'SBIN0003145'),
('144', 'MAHESH EKNATH PORE', 'patilmaruti16@gmail.com', 'LECTURER', 'COMPUTER ENGINEERING', 'ICRE', '0', '6666666666', 'BANK OF INDIA', '10', 'BKID0000928'),
('145', 'MANISH MUKUND BHAT', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7777777777', NULL, '11', '11'),
('146', 'MANJIRI SANDEEP DATAR', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8888888888', 'AXIS BANK', '12', 'UTIB0000251'),
('147', 'PRASHANT SADASHIV GAWARI', 'patilmaruti16@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9999999999', 'BANK OF MAHARASHTRA', '68016136177', 'MAHB00001680'),
('148', 'PRIYADARSHANI S SHEVALE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '1010101010', '-', '13', '13'),
(NULL, 'F', 'abc21@gmail.com', 'SELECTION GRADE LECT-', 'METALLURGY', 'GD', '0', '342555', 'JHJG', '127667342223', '43545'),
(NULL, 'AC', 'abc@gmail.com', 'ASSOSCIATE PROFFESSOR', 'MATHS', '1123', '0', '1111112344', 'FSD133', '342', '23'),
(NULL, 'AC', 'abc@gmail.com', 'HEAD OF DEPARTMENT', 'MATHS', '213', '0', '1234223321', 'FSD133', '24133351212', '132'),
(NULL, 'XYZ', 'xyz@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', '0110', '', '0000000000', 'DBI', '8789', 'OI'),
(NULL, 'ABC', 'abc123@gail.com', 'PRINCIPAL', 'PHYSICS', 'ABC', '122', '8767238831', 'IDBI', '89932', '3297873'),
(NULL, 'SHRUTIKA BABHULKAR ', 'shruti2@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GPKP', '0011', '1234567890', 'UNION', '21567788', '23');

-- --------------------------------------------------------

--
-- Table structure for table `finalyear`
--

CREATE TABLE `finalyear` (
  `id` int(12) NOT NULL,
  `parent_id` int(12) NOT NULL,
  `category` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finalyear`
--

INSERT INTO `finalyear` (`id`, `parent_id`, `category`) VALUES
(1, 0, 'yes'),
(2, 0, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(8) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`) VALUES
(1, 'Applied mechanics', 'Applied mechanics'),
(2, 'civil', 'Civil'),
(3, 'Electrial', 'Electrial'),
(4, 'Electronics', 'Electronics'),
(5, 'Information Technology', 'It'),
(6, 'Mechanical ', 'Mechanical'),
(7, 'Metallurgy ', 'Metallurgy'),
(8, 'Physics', 'Physics'),
(9, 'Chemistry', 'Chemistry'),
(10, 'Maths', 'Maths'),
(11, 'English', 'English'),
(12, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `program` varchar(50) NOT NULL,
  `program code` varchar(20) NOT NULL,
  `schemename` varchar(5) NOT NULL,
  `sem` varchar(5) NOT NULL,
  `Course code` varchar(20) NOT NULL,
  `Course Name` varchar(20) NOT NULL,
  `PR/OR` varchar(20) NOT NULL,
  `Internal/External` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`program`, `program code`, `schemename`, `sem`, `Course code`, `Course Name`, `PR/OR`, `Internal/External`) VALUES
('Applied Me', '6', 's', '3', 'd', 'd', 'Or', 'Internal'),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('Automobile Engineering', 'ITG404', 's', '2', 'd', 'd', 'Or', 'Internal'),
('Automobile Engineering', 'ITG404', 's', '2', 'd', 'd', 'Or', 'Internal'),
('Automobile Engineering', 'ITG404', 's', '2', 'd', 'd', 'Or', 'Internal'),
('Automobile Engineering', 'ITG404', 's', '2', 'd', 'd', 'Or', 'Internal'),
('AI/ML ENGINEERING', '6', 'INTER', '4', '21', 'H', 'i', 'PR'),
('APPLIED MECHANICS', '1', 'INTER', '2', '2', '3E', 'd', 'PR'),
('CHEMISTRY', '2', 'EXTER', '2', '2e', '23', '23dd', 'PR'),
('', '', 'EXTER', '6', '2023', 'ITG410', 'AI', 'PR'),
('6', '6', 'EXTER', '3', 's', 'ITG410', 'AI', 'PR'),
('1', ' 1', 'INTER', '1', '2023', '123', 'java', 'PR'),
('2', '2', 's', '3', '3E', 'hgj', 'PR', 'department'),
('EE', '3', 's', '3', '3E', '32', 'PR', 'department'),
('EE', '3', 's', '3', '3E', '32', 'PR', 'department'),
('ME', '2', '2023', '2', '123', 'AI', 'PR', 'department'),
('IE', '4', '2023', '2', 'ITG410', 'java', 'PR', 'department'),
('IT', '6', '2023', '2', 'ITG301', 'LIA', 'PR', 'department');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(12) NOT NULL,
  `parent_id` varchar(12) NOT NULL,
  `sem` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `staff_name` varchar(37) DEFAULT NULL,
  `staffmail` varchar(29) DEFAULT NULL,
  `designation` varchar(21) DEFAULT NULL,
  `department` varchar(23) DEFAULT NULL,
  `inst_name` varchar(34) DEFAULT NULL,
  `inst_code` varchar(15) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `bankname` varchar(29) DEFAULT NULL,
  `account no` varchar(18) DEFAULT NULL,
  `IFSC code` varchar(12) DEFAULT NULL,
  `course_code` varchar(25) NOT NULL,
  `course_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_name`, `staffmail`, `designation`, `department`, `inst_name`, `inst_code`, `phone`, `bankname`, `account no`, `IFSC code`, `course_code`, `course_name`) VALUES
('SURESH SHANKAR BIRJE', 'birjesuresh@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9763717697', 'STATE BANK OF INDIA', '10557556902', 'SBIN0003439', 'ITG406', 'MAD'),
('SUNIL  VISHNU  KADAM', 'sunil_kadam1099@yahoo.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9226241220', 'STATE BANK OF INDIA', '10993535157', 'SBIN0000428', 'ITG406', 'MAD'),
('AMAR DINKAR KUMBHAR', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9764068269', 'STATE BANK OF INDIA', '35906345982', 'SBIN0003439', 'ITG406', 'MAD'),
('ARUNA BABAN MANE', 'maneab29@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9545838520', 'STATE BANK OF INDIA', '40659358651', 'SBIN0000413', 'ITG406', 'MAD'),
('', '', '', '', '', '', '', '', '', '', '', ''),
('HEMANT ASHOK PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9552226734', 'STATE BANK OF INDIA', '37881078742', 'SBIN0019191', 'ITG406', 'MAD'),
('MADHURA R KULKARNI', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9850821122', 'STATE BANK OF INDIA', '33182227666', 'SBIN00003439', 'ITG406', 'MAD'),
('NILOFAR GULAB KINIKAR', 'nilofark2484@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '7798816952', 'STATE BANK OF INDIA', '32733777827', 'SBIN0015087', 'ITG406', 'MAD'),
('PRATIBHA PRUTHVIRAJ MAHADIK', 'pratibha24484@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9028729657', 'STATE BANK OF INDIA', '32698370683', 'SBIN0001887', 'ITG406', 'MAD'),
('PRIYA G JADHAV', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9527831753', 'STATE BANK OF INDIA', '20213062255', 'SBIN0003439', 'ITG406', 'MAD'),
('RENUKADAS PRABHAKAR KULKARNI', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422032469', 'STATE BANK OF INDIA', '10557557600', 'SBIN0063771', 'ITG406', 'MAD'),
('RUPA G RAYCHUR', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9168889784', 'STATE BANK OF INDIA', '20164177289', 'SBIN0017527', 'ITG406', 'MAD'),
('MAHADEVRAO  SIDDAPPA  KAGWADE', 'mskagwade@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9922273844', 'STATE BANK OF INDIA', '10557557101', 'SBIN0003439', 'ITG406', 'MAD'),
('RUCHA GURAV', 'patilmaruti16@gmail.com', 'ASSOSCIATE PROFFESSOR', 'COMPUTER ENGINEERING', 'D Y PATIL SALONKHENAGAR', '', '9423367021', 'STATE BANK OF INDIA', '31168217479', 'SBIN0016348', '', ''),
('SACHIN NANCHE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9834303834', 'STATE BANK OF INDIA', '30281128039', 'SBIN0003439', 'ITG406', 'MAD'),
('SHUBHANGI GOPAL PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '8806554508', 'STATE BANK OF INDIA', '34285509236', 'SBIN0017527', 'ITG406', 'MAD'),
('SUPRIYA KISHOR KADAM', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9067296782', 'STATE BANK OF INDIA', '40694571634', 'SBIN0016816', 'ITG406', 'MAD'),
('VANASHRI S SHINDE', 'patilmaruti16@gmail.com', 'ASSOSCIATE PROFFESSOR', 'COMPUTER ENGINEERING', 'D Y PATIL SALONKHENAGAR', '', '8149287529', 'STATE BANK OF INDIA', '37859943105', 'SBIN0007686', '', ''),
('ROHINI ANIKET RASAL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '7387961550', 'STATE BANK OF INDIA', '11517710627', 'SBIN0003439', 'ITG406', 'MAD'),
('AMOL BALIRAM PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9860642075', 'BANK OF INDIA', '1', 'BKID0000923', 'ITG406', 'MAD'),
('NIKHIL SURGONDA PATIL', 'patilmaruti16@gmail.com', 'HEAD OF DEPARTMENT', 'MECHANICAL ENGINEERING', 'SIT YADRAV', '', '8888049278', 'BANK OF MAHARASHTRA', '60024387618', 'MAHB0001383', '', ''),
('LAC0011', 'shreechavan2325@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9146473170', 'STATE BANK OF INDIA', '0', '0', 'ITG406', 'MAD'),
('SHASHIKANT YASHWANT LANDAGE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'TKIT WARNANAGAR', '', '7208876997', 'STATE BANK OF INDIA', '31205780599', 'SBIN0007249', '', ''),
('BHARATBHUSHAN  VISHNU  KAMBLE', 'bvkamble@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7411486838', 'STATE BANK OF INDIA', '10557556957', 'SBIN0000428', 'ITG406', 'MAD'),
('CHAITALI S PRABHU', 'chaitaliprabhu@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP RATNAGIRI', '', '9890917954', 'STATE BANK OF INDIA', '30424678119', 'SBIN0005561', '', ''),
('TANVIRUKSAR ASLAM MAGDUM ', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '83083119093', 'STATE BANK OF INDIA', '36524020731', 'SBIN0006587', 'ITG406', 'MAD'),
('SUSHANT SUKUMAR PATOLE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'SGI POLYTECHNIC', '', '9156351487', 'BANK OF BARODA', '2', 'BARB0ATIGRE', '', ''),
('RAJESHWARI ANIKET SHINDE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '7972611880', 'STATE BANK OF INDIA', '37111282317', 'SBIN0063771', 'ITG406', 'MAD'),
('NITIN SHIVAJI SAWANT', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '', '7020004600', 'BANK OF MAHARASHTRA', '6003502457', 'MAHB0000478', '', ''),
('VAIBHAV A SHINDE', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'VIDYAVARDHANI PAL', '', '9970699242', 'STATE BANK OF INDIA', '35840311534', 'SBIN0007219', '', ''),
('SUPRIYA PRABHAKAR MENGANE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'BSIT KOLHAPUR', '', '9850528669', 'PUNJAB NATIONAL BANK KOLHAPUR', '33', '33', '', ''),
('SANTOSH A KADAM', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '8956244189', 'BANK OF MAHARASHTRA', '60333783654', 'MAHB0000533', 'ITG406', 'MAD'),
('SUHAS RAJARAM PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'SGI POLYTECHNIC KOLHAPUR', '', '9423029089', 'BANK OF INDIA', '4', '4', '', ''),
('NIKHIL BALASAHEB SHINDE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'BHARATI VIDYAPEETH', '', '8329475791', 'STATE BANK OF INDIA', '33221193927', 'SBIN0005561', '', ''),
('KIRANKUMAR  AMBAJIRAO  KOLEKAR', 'kiranakolekar@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9922426010', 'STATE BANK OF INDIA', '31380171482', 'SBIN0000403', 'ITG406', 'MAD'),
('DEEPAK MANSING PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '', '9850895121', 'BANK OF MAHARASHTRA', '20163754714', 'MAHB0000478', '', ''),
('ROHINI VINAYAK VADAR', 'patilmaruti16@gmail.com', 'ASSISTANT PROFFESSOR', 'ELECTRICAL ENGINEERING', 'D Y PATIL SALONKHENAGAR', '', '8625832467', 'AXIS BANK', '5', '5', '', ''),
('SHARADA BAAVRAJ PATIL', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8208167848', 'ICICI BANK', '16601006963', 'ICIC0000166', 'ITG406', 'MAD'),
('ARCHANA SANJAY GAIKWAD', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '', '7385140454', 'STATE BANK OF INDIA', '37063255487', 'SBIN0007958', '', ''),
('SHAILESH ASHOK SHINDE', 'patilmaruti16@gmail.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'DKTE YCP', '', '9881157009', 'YUKO BANK', '6', '6', '', ''),
('AMOL ARVIND KULKARNI', 'patilmaruti16@gmail.com', 'ASSISTANT PROFFESSOR', 'CIVIL ENGINEERING', 'DOT', '', '9421122662', 'YUKO BANK', '7', '7', '', ''),
('SARIKA PRASHANT SHINDE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9960300907', 'BANK OF MAHARASHTRA', '60083988198', 'MAHB0001476', 'ITG406', 'MAD'),
('ATUL ASHOK KADAM', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'ASHOKRAO MANE VATHAR', '', '7709743845', 'AXIS BANK', '8', '8', '', ''),
('RUKMA N PRABHU', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9545903906', 'STATE BANK OF INDIA', '34221166485', 'SBIN0017527', 'ITG406', 'MAD'),
('AMAR TANAJI PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '1111111111', 'STATE BANK OF INDIA', '10846257789', 'SBIN0017527', 'ITG406', 'MAD'),
('SHASHANK  MADHUKAR  MANDRE', 'shashankmandre@yahoo.co.in', 'LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9371457195', 'STATE BANK OF INDIA', '10557557010', 'SBIN0003439', 'ITG406', 'MAD'),
('AMIT N SONULE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '2222222222', 'STATE BANK OF INDIA', '31388611939', 'SBIN0011135', 'ITG406', 'MAD'),
('DHANRAJ B JOGDAND', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '3333333333', 'STATE BANK OF INDIA', '31428579977', 'SBIN0011152', 'ITG406', 'MAD'),
('ASAVARI V VADD', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '4444444444', 'BANK OF INDIA', '9', '9', 'ITG406', 'MAD'),
('KIRAN B KULKARNI', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '5555555555', 'STATE BANK OF INDIA', '11291143738', 'SBIN0003145', 'ITG406', 'MAD'),
('MAHESH EKNATH PORE', 'patilmaruti16@gmail.com', 'LECTURER', 'COMPUTER ENGINEERING', 'ICRE', '', '6666666666', 'BANK OF INDIA', '10', 'BKID0000928', '', ''),
('MANISH MUKUND BHAT', 'patilmaruti16@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7777777777', NULL, '11', '11', 'ITG406', 'MAD'),
('MANJIRI SANDEEP DATAR', 'patilmaruti16@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8888888888', 'AXIS BANK', '12', 'UTIB0000251', 'ITG406', 'MAD'),
('PRASHANT SADASHIV GAWARI', 'patilmaruti16@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9999999999', 'BANK OF MAHARASHTRA', '68016136177', 'MAHB00001680', 'ITG406', 'MAD'),
('PRIYADARSHANI S SHEVALE', 'patilmaruti16@gmail.com', 'VISITING LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '1010101010', '-', '13', '13', 'ITG406', 'MAD'),
('AVINASH  HARIBHAU  MUDHOLKAR', 'avikantm@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9403464907', 'STATE BANK OF INDIA', '10557556775', 'SBIN0003439', 'ITG406', 'MAD'),
('SHOBHA  ANNARAO  NADGERI', 'sa.nadgeri@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9967217444', 'STATE BANK OF INDIA', '11208832852', 'SBIN0004319', 'ITG406', 'MAD'),
('SHRIKANT  MARUTI  NAIK', 'shrikantmnaik@rediffmail.com', 'HEAD OF DEPARTMENT', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422405935', 'AXIS BANK', '9.11E+14', 'UTIB0000251', 'ITG406', 'MAD'),
('SUNIL  ABAJIRAO  NIKAM', 'sunilanikam35401@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9623848226', 'STATE BANK OF INDIA', '10557556899', 'SBIN0003439', 'ITG406', 'MAD'),
('BALASO  PANDURANG  PATIL', 'bppatil1968@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9922409387', 'STATE BANK OF INDIA', '10557556822', 'SBIN0003439', 'ITG406', 'MAD'),
('YUVRAJ SHIVAJIRAO DHOBALE', 'ysdhobale@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8390850101', 'STATE BANK OF INDIA', '10557557134', 'SBIN0003439', 'ITG406', 'MAD'),
('RAJESH  ANANTRAO  PATIL', 'rpatil8rec106@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9819639518', 'AXIS BANK', '2.51E+14', 'UTIB0000652', 'ITG406', 'MAD'),
('ANAND  BAPU  RAJMANE', 'anandbrajmane@rediffmail.com ', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9421282578', 'STATE BANK OF INDIA', '10557556888', 'SBIN0003439', 'ITG406', 'MAD'),
('SHAILAJA  SHANKAR  SANKPAL', 'ss_sankpal@yahoo.co.in', 'LECTURER', 'PHYSICS', 'GP KOLHAPUR', '0011', '9922559993', 'STATE BANK OF INDIA', '10557556695', 'SBIN0003439', 'ITG406', 'MAD'),
('RANJIT  KRISHNARAO  SAWANT', 'ranjitsawant@yahoo.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822878804', 'STATE BANK OF INDIA', '10557556833', 'SBIN0003439', 'ITG406', 'MAD'),
('PRAFULLKUMAR  KASHINATHRAO  SONKAMBLE', 'sonkamblep77@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9922411103', 'STATE BANK OF INDIA', '20006226671', 'SBIN0003866', 'ITG406', 'MAD'),
('VINAYAK  SAMPATRAO  WAYDANDE', 'vswaydande@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9763321555', 'STATE BANK OF INDIA', '11149357836', 'SBIN0003439', 'ITG406', 'MAD'),
('GOPAL  MANGILAL  ADCHITRE', 'adchitregm@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '7744089498', 'STATE BANK OF INDIA', '34976640074', 'SBIN0003439', 'ITG406', 'MAD'),
('RAVIRAJ BHARAT ADLINGE', 'ravirajadlinge94@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '7083022828', 'STATE BANK OF INDIA', '38189665855', 'SBIN0003439', 'ITG406', 'MAD'),
('SHAIKH  AREF  AHMED', 'arefshaikh569@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8888978740', 'STATE BANK OF INDIA', '62041096929', 'SBIN0017527', 'ITG406', 'MAD'),
('BHAGCHAND  BABASAHEB  ARJUN', 'bhagchandarjun@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9423741987', 'STATE BANK OF INDIA', '30277356345', 'SBIN0008254', 'ITG406', 'MAD'),
('JAYENDRA  DHYANCHAND  DHOTE', 'jayendraddhote@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9850836791', 'STATE BANK OF INDIA', '10993534981', 'SBIN0003439', 'ITG406', 'MAD'),
('MADHURI  SADASHIV  ARADE', 'arademadhuri15@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '8291091492', 'AXIS BANK', '9.16E+14', 'UTIB0000028', 'ITG406', 'MAD'),
('RAJU  DADA  BARAKADE', 'rajubarkade@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8169398239', 'STATE BANK OF INDIA', '31842289301', 'SBIN0007763', 'ITG406', 'MAD'),
('CHHAYA  SHRISHAIL  BANDGAR', 'csbandgar@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9422498851', 'STATE BANK OF INDIA', '31066100577', 'SBIN0000527', 'ITG406', 'MAD'),
('RAJESH  RAGHUNATH  CHOUGALE', 'rrchougale@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9762314031', 'STATE BANK OF INDIA', '33804347990', 'SBIN0016348', 'ITG406', 'MAD'),
('KAPIL  ARVIND  CHAVAN', 'kapilchavan1@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9730388769', 'STATE BANK OF INDIA', '32120736241', 'SBIN0003439', 'ITG406', 'MAD'),
('PRANOTI  RAJENDRA  DOKE', 'pranoti.doke@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8605202614', 'STATE BANK OF INDIA', '31999082919', 'SBIN0001656', 'ITG406', 'MAD'),
('PANKAJ  VITTHALRAO  ITKALKAR', 'pvi47@rediffmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9860111217', 'STATE BANK OF INDIA', '62168372932', 'SBIN0020039', 'ITG406', 'MAD'),
('RAKESH  GANGADHARRAO  INJEWAR', 'rakeshinjewar@gmail.com', 'LECTURER', 'METALLURGY', 'GP KOLHAPUR', '0011', '9860469300', 'AXIS BANK', '9.10E+14', 'UTIB0000048', 'ITG406', 'MAD'),
('SUCHITRA  PRALHAD  ITEKARI', 'suchitraitekari@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9420524066', 'STATE BANK OF INDIA', '31746779178', 'SBIN0003439', 'ITG406', 'MAD'),
('VIBHAVARI  RAMCHANDRA  JADHAV', 'vibhasjadhav@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9921399067', 'STATE BANK OF INDIA', '62478057826', 'SBIN0020302', 'ITG406', 'MAD'),
('RAJENDRA  LAXMAN  DOIPHEAD ', 'rajendrald@rediffmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8452845055', 'STATE BANK OF INDIA', '10027992400', 'SBIN0004257', 'ITG406', 'MAD'),
('MONALI  SHAHAJI  KAMBLE', 'monalikamble1986@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8698484364', 'STATE BANK OF INDIA', '32447532510', 'SBIN0003439', 'ITG406', 'MAD'),
('PREETI  VIJAY  KOLE', 'preetijadhav30@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '8087232875', 'STATE BANK OF INDIA', '30907926314', 'SBIN0003439', 'ITG406', 'MAD'),
('JAYASHRI  MADHUKAR  KUMBHAR', 'jayashrikumbhar20@gmail.com', 'LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '7028925678', 'STATE BANK OF INDIA', '35289810518', 'SBIN0017527', 'ITG406', 'MAD'),
('PRAFULLA  PRABHAKAR  KHEDKAR', 'ppkhed@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9422622703', 'STATE BANK OF INDIA', '10557556673', 'SBIN0003439', 'ITG406', 'MAD'),
('PRASAD  PRABHAKARRAO  MAHAJAN', 'mahajan.prasad007@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8668328301', 'STATE BANK OF INDIA', '30451420280', 'SBIN0001468', 'ITG406', 'MAD'),
('PIYUSH  DINESH  MALPURE', 'piyushmalpure@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9860902557', 'STATE BANK OF INDIA', '62427423056', 'SBIN0020019', 'ITG406', 'MAD'),
('MINATH  SUKHDEO  MANDAPE', 'minathmandape@gmail.com', 'LECTURER', 'SUGAR', 'GP KOLHAPUR', '0011', '9423440460', 'STATE BANK OF INDIA', '32464555775', 'SBIN0003439', 'ITG406', 'MAD'),
('PRAVIN  VASANTRAO  MINACHEKAR', 'lecturerpravin2015@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8600407844', 'STATE BANK OF INDIA', '31522767500', 'SBIN0000384', 'ITG406', 'MAD'),
('MAMTA  SANJAY  MORAYE', 'mamta_morye@yahoo.com', 'LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9011666868', 'STATE BANK OF INDIA', '32498189229', 'SBIN0004257', 'ITG406', 'MAD'),
('SHAILENDRA  BALU  MOTE', 'shailendramote@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '7972814282', 'STATE BANK OF INDIA', '62504596292', 'SBIN0020018', 'ITG406', 'MAD'),
('SUNITA  VIDYADHAR  GAT', 'sunitavidyadhar22@gmail.com', 'LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '9270542442', 'STATE BANK OF INDIA', '10557556800', 'SBIN0003439', 'ITG406', 'MAD'),
('UDDHAVRAJ  PANDURANG  MANE', 'uddhavrajmane@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9823186527', 'STATE BANK OF INDIA', '30332783659', 'SBIN0000413', 'ITG406', 'MAD'),
('AMOL  BAJIRAO  PATIL', 'amolbpatil111@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8767609924', 'STATE BANK OF INDIA', '32543056924', 'SBIN0012691', 'ITG406', 'MAD'),
('JITENDRA  BHAUSO  PATIL', 'jitendrapatil11691@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9637277704', 'STATE BANK OF INDIA', '30900323695', 'SBIN0000413', 'ITG406', 'MAD'),
('MARUTI BHAGOJI PATIL', 'patilmaruti16@gmail.com', 'LECTURER', 'INFORMATION TECHNOLOGY', 'GP KOLHAPUR', '0011', '9665060707', 'STATE BANK OF INDIA', '32485718545', 'SBIN0003439', 'ITG406', 'MAD'),
('CHETAN  SUBHASH  PHUTANE', 'chetansphutane@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9404763169', 'BANK OF MAHARASHTRA', '68002835636', 'MAHB0000533', 'ITG406', 'MAD'),
('SACHIN  JAGANNATH  PUKALE', 'pukalesachin87@gmail.com', 'LECTURER', 'Information Technology', 'GP KOLHAPUR', '0011', '9623200653', 'AXIS BANK', '9.1701E+14', 'UTIB0000048', 'ITG406', 'MAD'),
('SHUBHANJAY  SHANKARRAO  PUJARI', 'pujari.jay@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9890696964', 'STATE BANK OF INDIA', '30630294557', 'SBIN0005561', 'ITG406', 'MAD'),
('ASHWINI  PRAKASHRAO  RATHOD', 'ashuberry2010@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8208485030', 'STATE BANK OF INDIA', '62168216611', 'SBIN0020302', 'ITG406', 'MAD'),
('YOGESH  RAJARAM  SATPUTE', 'yogesh.satpute2277@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8793704005', 'STATE BANK OF INDIA', '32977357703', 'SBIN0011136', 'ITG406', 'MAD'),
('PRAMOD  ANANDRAO  SHEVALE', 'pramodshevale.mtech@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9503623688', 'STATE BANK OF INDIA', '31376692742', 'SBIN0000570', 'ITG406', 'MAD'),
('VIJAY  NARAYAN  GANGAPURE', 'vijaygangapure@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822586738', 'STATE BANK OF INDIA', '10557555126', 'SBIN0003439', 'ITG406', 'MAD'),
('ABHILASHA  SHAMSUNDAR  SHIVAL', 'abhilasha.shival123@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9730470922', 'STATE BANK OF INDIA', '37443467831', 'SBIN0003439', 'ITG406', 'MAD'),
('MOHINI  MAHESH  SOVANI', 'mmsovani@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9860662313', 'STATE BANK OF INDIA', '32572664882', 'SBIN0003439', 'ITG406', 'MAD'),
('MADHURI  YOGESH  SONULE', 'madhusonule@rediffmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9890055075', 'STATE BANK OF INDIA', '31499599865', 'SBIN0000527', 'ITG406', 'MAD'),
('PANDURANG  HARIDAS  TARANGE', 'pandurangtarange@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9420447640', 'STATE BANK OF INDIA', '20395864697', 'SBIN0012011', 'ITG406', 'MAD'),
('ASHISH  SUBHASH  WAYCHAL', 'aswaychal58@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9970970497', 'STATE BANK OF INDIA', '32558444274', 'SBIN0000271', 'ITG406', 'MAD'),
('SAUBAI  BABA  WAKSHE', 'sbwakshe@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9970763374', 'STATE BANK OF INDIA', '32148137906', 'SBIN0003439', 'ITG406', 'MAD'),
('APARNA  PRAKASH  YADAV', 'aparnayadav1217@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8600386439', 'STATE BANK OF INDIA', '37586865588', 'SBIN0012239', 'ITG406', 'MAD'),
('DATTATRAY  MANOHARRAO  GARGE', 'dattagarge@gmail.com', 'HEAD OF DEPARTMENT', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9922404552', 'AXIS BANK', '9.12E+14', 'UTIB0000251', 'ITG406', 'MAD'),
('JYOTI  PRALAHAD  PATIL', 'jpp8805095020@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8805095020', 'STATE BANK OF INDIA', '10993552526', 'SBIN0000428', 'ITG406', 'MAD'),
('SANJAY  MURLIDHAR  SALAVI', 'anushreesalavi252@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '8975927080', 'STATE BANK OF INDIA', '11339861125', 'SBIN0000403', 'ITG406', 'MAD'),
('MOHANKUMAR  P  HAMPALI', 'mohanhampali@gmail.com', 'LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9421607620', 'STATE BANK OF INDIA', '11149291704', 'SBIN0000527', 'ITG406', 'MAD'),
('ABHAY  SHAHURAO  CHAVAN', 'ab2006aur@gmail.com', 'LECTURER', 'ENGLISH', 'GP KOLHAPUR', '0011', '9423392509', 'STATE BANK OF INDIA', '11339865222', 'SBIN0000403', 'ITG406', 'MAD'),
('SARIKA  SADHURAM  CHHATWANI', 'sarikachhatwani@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9822948303', 'BANK OF BARODA', '6.91E+12', 'BARB0POOSEN', 'ITG406', 'MAD'),
('SUPRIYA  SANJAY  ROTE', 'supriyarote@gmail.com', 'LECTURER', 'CHEMISTRY', 'GP KOLHAPUR', '0011', '9372717818', 'STATE BANK OF INDIA', '30382018497', 'SBIN0003439', 'ITG406', 'MAD'),
('SUKHADEV  BABASO  WAGHMODE', 'sukhdevom@gmail.com', 'LECTURER', 'MECHANICAL ENGINEERING', 'GP KOLHAPUR', '0011', '9822338527', 'STATE BANK OF INDIA', '32151326807', 'SBIN0000413', 'ITG406', 'MAD'),
('PRATIK SAMBHAJI CHAVAN/PATIL', 'pratik.chavanpatil@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'G P KOLHAPUR', '', '9158925814', 'STATE BANK OF INDIA', '33232613191', 'SBIN0000431', '', ''),
('KAMBLE SIYANG PRAFULLA', 'siyagkamble.2000@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '', '7620727513', 'BANK OF INDIA', '1.50718E+14', 'BKID0001507', '', ''),
('JASMIN RAJU PENDHARI', 'jasminpendhari001@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '', '9067863493', 'UNION BANK OF INDIA', '4.75502E+14', 'UBIN0547557', '', ''),
('RUSHIKESH PRASAD KULKARNI', 'rushikeshpbkulkarni@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '', '8788225159', 'CANARA BANK', '3.8941E+12', 'CNRB0003894', '', ''),
('AAFRIN AKIL KHAN', 'aafrinkhan005@gmail.com', 'VISITING LECTURER', 'INFORMATION TECHNOLOGY', 'G.P.KOLHAPUR', '', '8600328278', 'STATE BANK OF INDIA', '37481228015', 'SBIN0005550', '', ''),
('ANJALI MUKUND JOSHI', ' joshianjalia1@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9881125380', 'STATE BANK OF  INDIA', '11271995856.00', 'SBIN0005561', 'ITG406', 'MAD'),
('KULDIP  DAULATRAO  KAMBLE', 'kamblekuldeep31@gmail.com', 'LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9403609866', 'STATE BANK OF INDIA', '11150527432', 'SBIN0000506', 'ITG406', 'MAD'),
('SHRADDHA SANJAY MANE', 'shraddhamane1123@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9834723252', 'STATE BANK OF  INDIA', '33350253708.00', 'SBIN0000413', 'ITG406', 'MAD'),
('VAIBHAVI GOVIND GALANDE', 'vaibhaviggalande@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '7057051038', 'BANK OF MAHARASHTRA', '60228646006.00', 'MAHB0000326', 'ITG406', 'MAD'),
('NILESH ANANDRAO CHOUGALE', 'chougalenilesha@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9921213079', 'AXIS BANK ', '915010001254752.00', 'UTIB0001196', 'ITG406', 'MAD'),
(' KUMBHAR MACCHINDRANATH NAGOJI', 'kumbhar.macchindra@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '8805014239', 'STATE BANK OF INDIA', '20350556730.00', 'SBIN0017527', 'ITG406', 'MAD'),
(' AMIT PRAKASH GHORPADE ', 'amitghorapade@gmail.com', 'VISITING LECTURER', 'APPLIED MECHANICS', 'GP KOLHAPUR', '0011', '9881807782', 'UNION BANK OF INDIA ', '471102010040707.00', 'UBIN0547115', 'ITG406', 'MAD'),
('NAMRATA RUTURAJ SHINDE', '04shindenamrata@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8087259447', 'STATE BANK OF INDIA', '38154111908.00', 'SBIN0000413', 'ITG406', 'MAD'),
('SHWETA RAKESH PATIL', 'desaishweta248@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '855193271', 'HDFC', '50100527136980.00', 'HDFC0001274', 'ITG406', 'MAD'),
('ANITA SANDEEP POWAR', 'anitaj935@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '8806807272', 'IDBI BANK', '615104000238304.00', 'IBKL0000615', 'ITG406', 'MAD'),
('RASHMI AVADHUT JOSHI', 'Email-rashmi9187@gmail.com', 'VISITING LECTURER', 'ELECTRONICS ENGINEERING', 'GP KOLHAPUR', '0011', '9834041441', 'PUNJAB NATIONAL BANK', '8882191016587.00', 'PUNB0088810', 'ITG406', 'MAD'),
('AVDHUT VISHNU PATIL', 'avpatil2727@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '7507387751', 'STATE BANK OF INDIA', '20258962363', 'SBIN0063778', 'ITG406', 'MAD'),
('SHITAL  BABURAO  KHOT', 'shital_sindhu@yahoo.co.in', 'LECTURER', 'PHYSICS', 'GP KOLHAPUR', '0011', '9881259556', 'STATE BANK OF INDIA', '11291145522', 'SBIN0003439', 'ITG406', 'MAD'),
('SMITA R DANGE', 'dangesmita07@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9657087438', 'STATE BANK OF INDIA', '39135295800', 'SBIN001887', 'ITG406', 'MAD'),
('SWAPNALI SHIVAJI PATIL', 'swapnalipatil5696@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9860615696', 'STATE BANK OF INDIA', '40907847788', 'SBIN0016348', 'ITG406', 'MAD'),
('', '', '', '', '', '', '', '', '', '', '', ''),
('SANKET MUKUND PARALKAR', 'sanketparalkar60@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '7057771790', 'UNION BANK OF INDIA', '4.71102E+14', 'UBIN0547115', 'ITG406', 'MAD'),
('MAYURI A DESHPANDE', 'mayuri.shirgurkar@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '9766203072', '', '1.49401E+13', 'FORL0001455', 'ITG406', 'MAD'),
('MONALI DIVESH VARDAM', 'monalivardam@gmail.com ', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8623848868', 'STATE BANK OF INDIA', '37097154320', 'SBIN0014412', 'ITG406', 'MAD'),
('SAI AJINKYA SHEVDE', 'shevadesai@gmail.com', 'VISITING LECTURER', 'CIVIL ENGINEERING', 'GP KOLHAPUR', '0011', '8669860009', 'STATE BANK OF INDIA', '33115279228', 'SBIN0016348', 'ITG406', 'MAD'),
('PADMINI M MAGDUM', 'padminimagdum@gmail.com', 'LECTURER', 'COMPUTER ENGINEERING', 'D Y PATIL POLYTECHNIC KASABA BAWDA', '', '9657965018', 'BANK OF MAHARASHTRA', '60035364110', 'MAHB0001219', '', ''),
('UMESH KALGONDA PATIL', 'upatil25@gmail.com', 'LECTURER', 'ELECTRICAL ENGINEERING', 'NEW POLYTECHNIC KOLHAPUR', '', '8999449699', 'BANK OF MAHARASHTRA', '68006722731', 'MAHB0000478', '', ''),
('AKSHAY M KARPE', 'patilmaruti16@gmail.com', 'LECTURER', 'CIVIL ENGINEERING', 'D Y PATIL', '', '8485097798', 'IDBI ', '1', 'IBKL00001262', '', ''),
('A B C', 'a123@gmail.com', 'LECTURER', 'MATHS', 'GP KOLHAPUR', '0011', '1234567890', 'IDBI', '89879', '9898', 'ITG406', 'MAD'),
('XYZ', 'xyz@gmail.con', 'SELECTION GRADE LECT-', 'MATHS', 'DYP', '0100', '0000000000', 'IDBI', '5765287672', '656', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`id`, `name`, `course`, `mobile`, `pincode`, `country`, `email`) VALUES
('1', 'Sreenu', 'B.Tech', '9533367263', '530017', 'India', 'abc@gmail.com'),
('2', 'Sravan', 'B.Tech', '9822335411', '530018', 'India', 'abc@gmail.com'),
('3', 'Jhon', 'EEE', '9254112555', '530321', 'India', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(255) NOT NULL,
  `ccode` varchar(25) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `internal_external` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `ccode`, `cname`, `internal_external`) VALUES
(1, 'ITG402', 'SOT', 'internal'),
(2, 'ITG406', 'MAD', 'external'),
(4, 'ITG510', 'LIA', 'external'),
(5, 'ITG504', 'TWR', 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `tbllacmaster`
--

CREATE TABLE `tbllacmaster` (
  `srno` int(11) NOT NULL,
  `instname` varchar(1000) NOT NULL,
  `instcode` varchar(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `ofc` varchar(1000) DEFAULT NULL,
  `order` varchar(5000) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `cofc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllacmaster`
--

INSERT INTO `tbllacmaster` (`srno`, `instname`, `instcode`, `semester`, `year`, `ofc`, `order`, `startdate`, `enddate`, `cofc`) VALUES
(1, 'GP Kolhapur', '0011', 'SUMMER', '2023', 'Maruti Patil', 'lkjkljhjjg', '2023-12-15', '2023-12-20', 'jlkj');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `sr` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(100) NOT NULL,
  `session` varchar(10) NOT NULL,
  `programcode` varchar(100) NOT NULL,
  `coursecode` varchar(100) NOT NULL,
  `course` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`sr`, `date`, `time`, `session`, `programcode`, `coursecode`, `course`) VALUES
(1, '2023-11-28', '09.30 to 12.30', 'M', '1,10', 'CEG401/CEF401', 'Analysis Of Structure'),
(2, '2023-11-28', '09.30 to 12.30', 'M', '2,11', 'MEG402', 'Machine Design'),
(3, '2023-11-28', '09.30 to 12.30', 'M', '3', 'EEG504', 'Micro-Controller Application'),
(4, '2023-11-28', '09.30 to 12.30', 'M', '8,12', 'ETG504/ETF502', 'Optical Fiber Communication'),
(5, '2023-11-28', '09.30 to 12.30', 'M', '6', 'ITG402', 'Software Testing'),
(6, '2023-11-28', '09.30 to 12.30', 'M', '7', 'MTG406/MTF406', 'Metal Joining & Special Forming Process'),
(7, '2023-11-28', '02.00 to 05.00', 'A', '6', 'ITG404', 'Python Programming'),
(8, '2023-11-28', '02.00 to 05.00', 'A', '8,12', 'EIG402/EIF402', 'Embedded Systems'),
(9, '2023-11-28', '02.00 to 05.00', 'A', '1,10', 'CEG503', 'Construction Management'),
(10, '2023-11-28', '02.00 to 05.00', 'A', '2,11', 'MEG507/MEF507', 'Industrial Hydraulics And Pneumatics'),
(11, '2023-11-28', '02.00 to 05.00', 'A', '3', 'EEG403', 'Electric Power Utilization And Traction'),
(12, '2023-11-28', '02.00 to 05.00', 'A', '7', 'MTG310', 'Metal Working Processes'),
(13, '2023-11-29', '09.30 to 12.30', 'M', '1,10', 'CEG402/CEF402', 'Design & Drafting of R.C.C. Structure'),
(14, '2023-11-29', '09.30 to 12.30', 'M', '7', 'MTG303', 'Metallurgical Analysis'),
(15, '2023-11-29', '09.30 to 12.30', 'M', '2,11', 'MEG314/MEF407', 'Engineering Metrology'),
(16, '2023-11-29', '02.00 to 05.00', 'A', '7', 'CEG308', 'Surveying-1'),
(17, '2023-11-29', '02.00 to 05.00', 'A', '2,11', 'MEG310/MEF407', 'Engg. Metallurgy and Materials'),
(18, '2023-11-29', '02.00 to 05.00', 'A', '7', 'MTG401', 'Physical Metallurgy II'),
(19, '2023-11-29', '02.00 to 05.00', 'A', '4,8,12', 'EIG305/EIF305', 'Analog Communication '),
(20, '2023-11-30', '09.30 to 12.30', 'M', '1,10', 'CEG403/CEF403', 'Design & Drafting Of Steel Structures'),
(21, '2023-11-30', '09.30 to 12.30', 'M', '2,11', 'MEG401', 'Power Engineering'),
(22, '2023-11-30', '09.30 to 12.30', 'M', '3', 'EEG401', 'Industrial Machines'),
(23, '2023-11-30', '09.30 to 12.30', 'M', '4,8,12', 'EIG512/ EIF512', 'Advance Microcontrollers'),
(24, '2023-11-30', '09.30 to 12.30', 'M', '6', 'ITG506', 'Emerging Trends In IT'),
(25, '2023-11-30', '09.30 to 12.30', 'M', '7', 'MTG404 / MTF404', 'Powder Metallurgy'),
(26, '2023-11-30', '02.00 to 05.00', 'A', '6', 'ITG408', 'Web Development Using PHP'),
(27, '2023-11-30', '02.00 to 05.00', 'A', '8,12,4', 'EIG403/EIF406', 'Electronics Circuit Design'),
(28, '2023-11-30', '02.00 to 05.00', 'A', '1,10', 'CEG405/CEF406', 'Concrete Technology'),
(29, '2023-11-30', '02.00 to 05.00', 'A', '2,11', 'MEG506/ MEF506', 'Automobile Engineering'),
(30, '2023-11-30', '02.00 to 05.00', 'A', '3', 'EEG502', 'Industrial Automation And Control'),
(31, '2023-11-30', '02.00 to 05.00', 'A', '3', 'EEF502', 'Electrical M/C Control & Automation'),
(32, '2023-12-01', '09.30 to 01.30', 'M', '1,10', 'CEG303/CEF303', 'Building Drawing'),
(33, '2023-12-01', '09.30 to 12.30', 'M', '2', 'MEG309', 'Basic Electrical and Electronics Engineering'),
(34, '2023-12-01', '09.30 to 11.30', 'M', '3', 'EEG305', 'Electrical Engineering Material'),
(35, '2023-12-01', '09.30 to 12.30', 'M', '8,12', 'EIG309', 'Microcontrollers'),
(36, '2023-12-01', '09.30 to 12.30', 'M', '6', 'ITG307', 'Operating System'),
(37, '2023-12-01', '09.30 to 12.30', 'M', '7', 'MTG312', 'Extraction of Non Ferrous metals'),
(38, '2023-12-01', '02.00 to 05.00', 'A', '3', 'EEG307', 'Dc Machines & Transformers'),
(39, '2023-12-01', '02.00 to 05.00', 'A', '6', 'ITG305', 'Database Management System'),
(40, '2023-12-01', '02.00 to 05.00', 'A', '7', 'MTG308', 'Mechanical Engineering'),
(41, '2023-12-01', '02.00 to 05.00', 'A', '2,11', 'MEG316/ MEF410', 'Mechanical Engineering Measurements'),
(42, '2023-12-01', '02.00 to 05.00', 'A', '4', 'IEE309/IX209', 'Microprocessor & Interfacing'),
(43, '2023-12-02', '09.30 to 12.30', 'M', '1,10', 'CEG409', 'Town & Country Planning'),
(44, '2023-12-02', '09.30 to 12.30', 'M', '1', 'CEF407', 'Building Services'),
(45, '2023-12-02', '09.30 to 12.30', 'M', '2,11', 'MEG403', 'Advanced Machining Processes'),
(46, '2023-12-02', '09.30 to 12.30', 'M', '3', 'EEG402', 'Switchgear & Protection'),
(47, '2023-12-02', '09.30 to 12.30', 'M', '4,8,12', 'EIG406/EIF404', 'Principles Of Control Systems'),
(48, '2023-12-02', '09.30 to 12.30', 'M', '6', 'ITG406', 'Mobile Application Development'),
(49, '2023-12-02', '09.30 to 12.30', 'M', '7', 'MTG403/MTF403', 'Failure Analysis & Selection Of Material'),
(50, '2023-12-02', '02.00 to 05.00', 'A', '6', 'ITG401', 'Network Administration'),
(51, '2023-12-02', '02.00 to 05.00', 'A', '8,12', 'ETG405/ETF403/ ETE403', 'Data Communication & Networking'),
(52, '2023-12-02', '02.00 to 05.00', 'A', '2,11', 'MEG503', 'Industrial Engineering'),
(53, '2023-12-02', '02.00 to 05.00', 'A', '3', 'EEG510/EEF508', 'Non Conventional Power Generation'),
(54, '2023-12-02', '02.00 to 06.00', 'A', '1,10', 'CEG404/CEF404', 'Estimating And Costing'),
(55, '2023-12-04', '09.30 to 12.30', 'M', '1,10', 'CEG310', 'Transportation Engineering'),
(56, '2023-12-04', '09.30 to 12.30', 'M', '2', 'MEG305/MEF305', 'Strength Of Materials'),
(57, '2023-12-04', '09.30 to 12.30', 'M', '3', 'EEG306', 'Electrical Power Generation'),
(58, '2023-12-04', '09.30 to 12.30', 'M', '8,12', 'ETG310', 'Digital Communication'),
(59, '2023-12-04', '09.30 to 12.30', 'M', '6', 'ITG306', 'Computer Network'),
(60, '2023-12-04', '09.30 to 12.30', 'M', '7', 'MTG302', 'Material Testing'),
(61, '2023-12-04', '02.00 to 05.00', 'A', '3', 'EEG405/EEF406', 'Power Electronics'),
(62, '2023-12-04', '02.00 to 05.00', 'A', '8,12', 'ETG306/EIF306', 'Digital techniques & application'),
(63, '2023-12-04', '02.00 to 05.00', 'A', '6', 'ITG302', 'Digital Electronics & Microprocessor'),
(64, '2023-12-04', '02.00 to 05.00', 'A', '6', 'ITF302', 'Digital Electronics '),
(65, '2023-12-04', '02.00 to 05.00', 'A', '7', 'MTG307', 'Physical Metallurgy-I'),
(66, '2023-12-04', '02.00 to 05.00', 'A', '1,10', 'CEG307', 'Mechanics of Structures'),
(67, '2023-12-04', '02.00 to 05.00', 'A', '2', 'MEG302', 'Thermal Engineering'),
(68, '2023-12-05', '09.30 to 12.30', 'M', '1,10', 'CEG504/CEF504', 'Contracts And Accounts'),
(69, '2023-12-05', '09.30 to 12.30', 'M', '2,11', 'MEG406', 'Fluid Mechanics & Machinery'),
(70, '2023-12-05', '09.30 to 12.30', 'M', '3', 'EEG404', 'Energy Conservation & Audit'),
(71, '2023-12-05', '09.30 to 12.30', 'M', '4,8', 'ETG511/IEG505/ IEF502', 'Programmable Logic Control'),
(72, '2023-12-05', '09.30 to 12.30', 'M', '6', 'ITG510', 'Linux Administration'),
(73, '2023-12-05', '09.30 to 12.30', 'M', '7', 'MTG502/MTF502', 'Environment Protection In Metallurgy'),
(74, '2023-12-05', '02.00 to 05.00', 'A', '6', 'ITG403', 'Information Security'),
(75, '2023-12-05', '02.00 to 05.00', 'A', '8,12', 'ETG407', 'Signals And Systems'),
(76, '2023-12-05', '02.00 to 05.00', 'A', '1', 'CEG506/CEF507', 'Irrigation Engineering'),
(77, '2023-12-05', '02.00 to 05.00', 'A', '3', 'EEF504', 'Microcontrollers'),
(78, '2023-12-06', '09.30 to 12.30', 'M', '1', 'CEG305/CEF305', 'Soil Mechanics & Foundation Engineering'),
(79, '2023-12-06', '09.30 to 12.30', 'M', '2,11', 'MEG304', 'Manufacturing Processes'),
(80, '2023-12-06', '09.30 to 12.30', 'M', '3', 'EEG309', 'Applied Electronics'),
(81, '2023-12-06', '09.30 to 12.30', 'M', '8,12', 'EIG308', 'Circuits & Networks'),
(82, '2023-12-06', '09.30 to 12.30', 'M', '6', 'ITG308', 'Software Engineering'),
(83, '2023-12-06', '09.30 to 12.30', 'M', '7', 'MTG306', 'Electrical Engineering And Electronics'),
(84, '2023-12-06', '02.00 to 05.00', 'A', '3', 'EEG304', 'Electrical and Electronics Measurement'),
(85, '2023-12-06', '02.00 to 05.00', 'A', '2,11', 'MEG308', 'Theory of Machine'),
(86, '2023-12-06', '02.00 to 05.00', 'A', '8,12', 'EIG302', 'Applied Electronics'),
(87, '2023-12-06', '02.00 to 05.00', 'A', '6', 'ITG303', 'Data Communication'),
(88, '2023-12-06', '02.00 to 05.00', 'A', '7', 'MTG305', 'Foundry Technology-I'),
(89, '2023-12-06', '02.00 to 05.00', 'A', '1,10', 'CEG309/CEF309', 'Surveying-II'),
(90, '2023-12-07', '09.30 to 12.30', 'M', '1,10', 'CEG505', 'Environmental Engineering'),
(91, '2023-12-07', '09.30 to 12.30', 'M', '2,11', 'MEG418/MEF503', 'Total Quality Management'),
(92, '2023-12-07', '09.30 to 12.30', 'M', '3', 'EEG501/EEF501', 'Electrical Testing And Commissioning'),
(93, '2023-12-07', '09.30 to 12.30', 'M', '8.12', 'ETG505/ETF501', 'Mobile & Wireless Communication'),
(94, '2023-12-07', '09.30 to 12.30', 'M', '4', 'IEG504/IEF501', 'Power Electronics-II'),
(95, '2023-12-07', '02.00 to 05.00', 'A', '8,12', 'ETG514', 'Introduction To IOT'),
(96, '2023-12-07', '02.00 to 05.00', 'A', '8', 'ETF506', 'Audio & Video Engineering'),
(97, '2023-12-07', '02.00 to 05.00', 'A', '4', 'EIG508', 'Instrumentation'),
(98, '2023-12-07', '02.00 to 05.00', 'A', '1,10', 'CEG509/CEF510', 'Solid Waste Management'),
(99, '2023-12-07', '02.00 to 05.00', 'A', '3', 'EEG505/EEF505', 'Electric Drives'),
(100, '2023-12-08', '09.30 to 12.30', 'M', '1', 'CEG302', 'Building Construction'),
(101, '2023-12-08', '09.30 to 01.30', 'M', '2,11', 'MEG303', 'Machine Drawing'),
(102, '2023-12-08', '09.30 to 12.30', 'M', '3', 'EEG303', 'Electric Circuits'),
(103, '2023-12-08', '09.30 to 11.30', 'M', '8,12', 'ETG311  ', 'Basics Of Power Electronics'),
(104, '2023-12-08', '09.30 to 12.30', 'M', '6', 'ITG310', 'Data Structure'),
(105, '2023-12-08', '09.30 to 12.30', 'M', '7', 'MTG304/MTF304', 'Iron And Steel Making'),
(106, '2023-12-08', '02.00 to 05.00', 'A', '3', 'EEG311', 'Electrical Estimation and Contracting.'),
(107, '2023-12-08', '02.00 to 05.00', 'A', '8,12', 'EIG303/EIF303', 'Electronic Measuring Instruments'),
(108, '2023-12-08', '02.00 to 05.00', 'A', '6', 'ITG304', 'OOP using C++'),
(109, '2023-12-08', '02.00 to 05.00', 'A', '7', 'MTG309', 'Furnaces, Refractories & Pyrometry'),
(110, '2023-12-08', '02.00 to 05.00', 'A', '1,10', 'CEG311', 'Advanced Construction Techniques & Equipments'),
(111, '2023-12-11', '09.30 to 12.30', 'M', '2,11', 'MEG301', 'Applied Mathematics'),
(112, '2023-12-11', '09.30 to 12.30', 'M', '3', 'EEG302', 'Applied Mathematics'),
(113, '2023-12-11', '09.30 to 12.30', 'M', '4,8,12', 'EIG301/EIF301/ EJ201', 'Applied Mathematics'),
(114, '2023-12-11', '09.30 to 12.30', 'M', '6', 'ITG301', 'Applied Mathematics'),
(115, '2023-12-11', '09.30 to 12.30', 'M', '7', 'MTG301', 'Metallurgical Thermodynamics'),
(116, '2023-12-11', '09.30 to 12.30', 'M', '4', 'EIF312 / IX210', 'Higher Engineering Mathematics'),
(117, '2023-12-11', '02.00 to 05.00', 'A', '1,10', 'CEG306', 'Hydraulics'),
(118, '2023-12-11', '02.00 to 05.00', 'A', '2', 'MEG306', 'Machine Tools'),
(119, '2023-12-11', '02.00 to 05.00', 'A', '3', 'EEG310', 'Transmission & Distribution. Of Electric Power'),
(120, '2023-12-11', '02.00 to 05.00', 'A', '6', 'ITG311', 'Java Programming'),
(121, '2023-12-11', '02.00 to 05.00', 'A', '8,12', 'EIG307/EIF307', 'Linear Integrated Circuits'),
(122, '2023-12-11', '02.00 to 05.00', 'A', '7', 'MTG402', 'Foundry Technology Ii'),
(123, '2023-12-11', '02.00 to 05.00', 'A', '6', 'ITF509', 'Mobile Application & Development'),
(124, '2023-12-12', '09.30 to 12.30', 'M', '1,2', 'CCH106', 'Communication Skill'),
(125, '2023-12-12', '09.30 to 12.30', 'M', '6', 'ITF506', 'Cloud Computing'),
(126, '2023-12-12', '02.00 to 05.00', 'A', '1,2,7', 'CCG103', 'Engineering Chemistry(CE/ME/MT)'),
(127, '2023-12-12', '02.00 to 05.00', 'A', '3,6,8', 'CCG104', 'Engineering Chemistry(EE/IT/E&TC)'),
(128, '2023-12-12', '02.00 to 05.00', 'A', '6', 'ITF404', 'Web technology'),
(129, '2023-12-13', '09.30 to 12.30', 'M', '3,6,8', 'CCG102', 'Engineering Physics (EE/IT/E&TC)'),
(130, '2023-12-13', '09.30 to 12.30', 'M', '1,2,7', 'CCG101', 'Engineering Physics (CE/ME/MT)'),
(131, '2023-12-13', '02.00 to 05.00', 'A', 'COMMON', 'CCG110', 'Applied Mechanics'),
(132, '2023-12-13', '02.00 to 05.00', 'A', '6', 'ITG101', 'C Programming'),
(133, '2023-12-14', '09.30 to 12.30', 'M', '1,2,3,6,7,8', 'CCH105', 'Basic Mathematics'),
(134, '2023-12-14', '02.00 to 04.00', 'A', '1,2,3,6,7,8', 'CCG203', 'Communication Skill in English'),
(135, '2023-12-15', '09.30 to 01.30', 'M', '1,2,7', 'CCG107', 'Engineering Drawing 1'),
(136, '2023-12-15', '09.30 to 11.30', 'M', '3', 'EEG102', 'Basic Electronics'),
(137, '2023-12-15', '09.30 to 11.30', 'M', '6', 'ITG104', 'Basic Electronics'),
(138, '2023-12-15', '09.30 to 12.30', 'M', '8', 'EIG103', 'Basic Electronics'),
(139, '2023-12-15', '02.00 to 05.00', 'A', '1,10,2,11', 'CCG105/X104', 'Basic Mathematics'),
(140, '2023-12-16', '09.30 to 01.30', 'M', '1,7', 'CCH107 ', 'Engineering Graphics(CE/MT)'),
(141, '2023-12-16', '02.00 to 05.00', 'A', '1,2,7,10, 11', 'CCG106/CCF106/ X110', 'Engineering Mathematics(CE/ME/MT)'),
(142, '2023-12-16', '02.00 to 05.00', 'A', '3,6,8,12', 'CCG118', 'Engineering Mathematics (EE/IT/E&TC)'),
(143, '2023-12-18', '09.30 to 01.30', 'M', '2', 'CCH107 ', 'Engineering Graphics (ME)'),
(144, '2023-12-18', '02.00 to 04.00', 'A', '6', 'ITG105', 'Computer Peripheral & Maintenance'),
(145, '2023-12-18', '02.00 to 05.00', 'A', '3', 'EEG101', 'Fundamentals of Electricity & Magnetism'),
(146, '2023-12-18', '02.00 to 05.00', 'A', '8', 'EIG101', 'Electronic Components and Application'),
(147, '2023-12-19', '09.30 to 01.30', '', '1,2,7,11', 'CCG108', 'Engineering Drawing II'),
(148, '2023-12-19', '09.30 to 12.30', '', '3', 'EEG301', 'Mechanical & Civil Engineering'),
(149, '2023-12-19', '09.30 to 11.30', '', '6', 'ITG102', 'Web Page Designing'),
(150, '2023-12-19', '09.30 to 12.30', '', '8', 'EIG107', 'Basic Electrical Engg.'),
(151, '2023-12-19', '02.00 to 05.00', '', '7', 'CCH111', 'Applied Mechanics'),
(152, '2023-12-19', '02.00 to 05.00', '', '6', 'ITH101', 'Web Page Design'),
(153, '2023-12-19', '02.00 to 05.00', '', '3', 'EEH101', 'Fundamentals of Electrical Engineering'),
(154, '2023-12-19', '02.00 to 05.00', '', '8', 'ETH101', 'Basic Electronics-1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill entry`
--
ALTER TABLE `bill entry`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `bill generate`
--
ALTER TABLE `bill generate`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinerorder`
--
ALTER TABLE `examinerorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_examinerorder`
--
ALTER TABLE `external_examinerorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllacmaster`
--
ALTER TABLE `tbllacmaster`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill entry`
--
ALTER TABLE `bill entry`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bill generate`
--
ALTER TABLE `bill generate`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examinerorder`
--
ALTER TABLE `examinerorder`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `external_examinerorder`
--
ALTER TABLE `external_examinerorder`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbllacmaster`
--
ALTER TABLE `tbllacmaster`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
