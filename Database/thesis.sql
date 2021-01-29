-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2015 a las 02:39:52
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `thesis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2015-10-06 20:23:55', 'Add device Detail id 8&nbspName&nbspMonitor'),
(2, 'admin', '2015-10-06 20:25:54', 'Edit device info Monitor'),
(3, 'admin', '2015-10-06 20:26:32', 'Assign Device id 1&nbspName&nbspMonitor to location id 25&nbspName&nbspLibrary'),
(4, 'admin', '2015-10-06 20:31:01', 'Update Status Monitor to Used '),
(5, 'admin', '2015-10-07 21:34:03', 'Edit system User platea21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(128) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(4, 'Jonald', 'Sevellejo', 'jonremus', 'me', 'uploads/442048-samsung-galaxy-s5-vs-galaxy-note-3-specs-and-price-comparison-in-austr.jpg'),
(5, 'platea21', 'platea21', 'admin', 'admin', 'uploads/platea21-logo2.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(128) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`client_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(10, 'oting', 'oting', 'Reynaldo', 'Tianzon', 'uploads/141113161942-large.jpg'),
(11, 'kiritosan23', 'kirito', 'Joecel', 'Ongsip', 'uploads/10933713_756692371081917_31846816310386324_n.jpg'),
(12, 'asylum1121', 'kevineleven11', 'Kevin Jone', 'Camparecio', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\n\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp;Respecting the human dignity and unique talents of each person, Southland College is dedicated in helping its students actualizetheir potentials for the enchancementof their own lives and or nationals Development.&nbsp;</span></p>\n\n<p style="text-align:left">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style="font-size: large;"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;">&nbsp; A progressive educational community where the individual is at the core of his own learning </span><br /><br /></p>'),
(3, 'History', '<pre><span style="font-size: large;">HISTORY &nbsp;</span> </pre>\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The southland college story is the intermingling of imposibilities and unbelief, against optimism and faith.the story of this new school is a beatifull retelling of god''s goodness; his hands helping shape the foundation of southland college.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amid Challeges, stumbling blocks, and interfering forces, southland college was established-a shining testamentof God''s wondrous ways and his helping hand for those who trust in Him.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deeply saddened by the anticipated mass resignation of the faculty and staff with the change of leadership of a private school where he was the former president, DR. Anecito D. Villaluz, Jr. Decided to put up his own school where he could freely make use of his publicity acknowledged and admired managerial skills and organizational expertise.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the preparations for the new school started in March 2009. The incorporators who compose the Board of directors are Dr.Villaluz, Chairman; Mrs. Annette Z. Villaluz, vice-chairman; Dr. Emiliano L. Sama,Jr.,corporate secretary; Mrs.Yvonne Z. Rocha, Treasurer; and Dr.Rhoda J. Amor,Dr. Grace A. Badrina, Dr. Henly S. Pahilagao, and Mr. Miguel M. Zayco, directors.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The securities and Exchange Commision (DepEd) issurd the school registration permiton March 24,2009.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The department of Education (DepEd) Western Visayas Regional office issued the permit for the basic education on June 1. 2009. The school established the consortium with the Northern Negros state College of Science and Technology (NONESCOST) for the Nursing Degree program, and with the Negros Oriental State Accounting Technology, BS Business Administrators, BS Hospiitality Management, and the 2-year Midwifery course. The administrators, faculty and staff, parents and strengthen the new school. Each of them undertook the assigned task without expecting any personal reward. it was evidend that God is shaping the southland destiny throught the hearts, hands and minds of these people.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Regional Quality Assesment Team (RQUAT) and Commission on Higher Education (CHEd) Supersvisors readily issuad permits for all degree programs After validating the requirements and inspecting the facilities.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The school was formerly launched on May 13, 2009. It was followed by the a grand caravan. The following days saw the advertisements and promotion blitz in variious towns and cities.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By the end of the enrolment period, God gave soutland collegeits needed initial number of students. Enrolled during the school year 2009-2010 were: pre school, 69; elementary, 130; and High school, 122. During the first semester of the same school year, college enrolment reached 177. it was an impressive number for a new school which opened within a few months time after its inception.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A thanksgiving service with the theme "Triumph Amid Trials" was held on August 28, 2009 morning. It was immediatly followed by the school''s very first academic convocation. The officers of student councils, faculty and staff club, and the parents and teachers assembleis were inducted in the afternoon. aquaintance parties in all levels followed.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;amid the trials, Southland College is seen to Survive and Prevail for its story in a tapestry of good relationships, great resposibilities, and God''s redemption<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Indeed, at Southland College the foundation of God stand''s sure!\n</p>'),
(4, 'Footer', '<p style="text-align:center">Technology Resource Inventory System (T.R.S) Copyright 2015</p>\n\n<p style="text-align:center">All Rights Reserved &reg;2015</p>\n'),
(5, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Technology Resource Inventory System</span></p>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `device_name`
--

CREATE TABLE IF NOT EXISTS `device_name` (
  `dev_id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(2, 'kyboard'),
(3, 'Power cord'),
(4, 'mouse'),
(5, 'Central Processing unit (CPU)'),
(6, 'AVR'),
(7, 'aircon'),
(8, 'Monitor'),
(9, 'speaker');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_details`
--

CREATE TABLE IF NOT EXISTS `location_details` (
  `ld_id` int(11) NOT NULL AUTO_INCREMENT,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`ld_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(1, 25, '2015-10-07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stdevice`
--

CREATE TABLE IF NOT EXISTS `stdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_id` int(11) NOT NULL,
  `dev_desc` varchar(128) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_desc`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`) VALUES
(1, 8, '<p>Monitor LG, no se puede poner imagen como una PIC</p>\r\n', 'LG-0001', 'LG', 'LG-Monitor', 'Used');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stlocation`
--

CREATE TABLE IF NOT EXISTS `stlocation` (
  `stdev_id` int(11) NOT NULL AUTO_INCREMENT,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  PRIMARY KEY (`stdev_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'Comlab A', 'images/thumbnails.jpg'),
(23, 'Comlab B', 'images/thumbnails.jpg'),
(24, 'PCID', 'images/thumbnails.jpg'),
(25, 'Library', 'images/thumbnails.jpg'),
(26, 'OSAS', 'images/thumbnails.jpg'),
(27, 'Admin Office', 'images/thumbnails.jpg'),
(28, 'High school', 'images/thumbnails.jpg'),
(29, 'Elementary', 'images/thumbnails.jpg'),
(30, 'Mj Dorm', 'images/thumbnails.jpg'),
(31, 'kcafe', 'images/thumbnails.jpg'),
(34, 'southland clinic', 'images/thumbnails.jpg'),
(35, 'AVH', 'images/thumbnails.jpg'),
(36, 'new location', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=201 ;

--
-- Volcado de datos para la tabla `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(190, 'admin', '2015-08-20 23:23:57', '2015-10-08', 5, 0),
(191, 'admin', '2015-10-03 14:38:59', '2015-10-08', 5, 0),
(192, 'admin', '2015-10-03 14:40:52', '2015-10-08', 5, 0),
(193, 'admin', '2015-10-06 15:50:50', '2015-10-08', 5, 0),
(194, 'admin', '2015-10-06 20:17:22', '2015-10-08', 5, 0),
(195, 'admin', '2015-10-06 20:17:48', '2015-10-08', 5, 0),
(196, 'admin', '2015-10-06 20:30:00', '2015-10-08', 5, 0),
(197, 'admin', '2015-10-06 20:43:29', '2015-10-08', 5, 0),
(198, 'admin', '2015-10-07 20:15:01', '2015-10-08', 5, 0),
(199, 'admin', '2015-10-07 20:37:02', '', 5, 0),
(200, 'admin', '2015-10-07 21:38:25', '', 5, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
