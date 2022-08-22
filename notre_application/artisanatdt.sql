-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 13 juin 2021 à 15:15
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `artisanatdt`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(100) NOT NULL,
  `cust_b_country` int NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(100) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(100) NOT NULL,
  `cust_s_country` int NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(100) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(11, 'Ayadi Hajar', '', 'hajar@gmail.com', '0000000000', 149, 'hjgjg kjhkh jhlhlj ', 'errachidia', 'hgfjfjgj', '52000', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '9ccc598773c3b627675dcf47d1b16c5b', 'f8f2ab5ec2777de44f315d000f2d6a3c', '2021-05-25 09:31:24', '1622598243', 1),
(12, 'asmae', '', 'asmae@gmail.com', '0600000000', 149, 'ygygf gf ukgghrjy,tkty', 'errachidia', 'errachidia', '52000', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'cab0d9eba49e4716cf305472390f3f2a', '37ab882df18ba9ef90fbf628d522225f', '2021-06-03 10:49:22', '1622713762', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer_message`
--

DROP TABLE IF EXISTS `tbl_customer_message`;
CREATE TABLE IF NOT EXISTS `tbl_customer_message` (
  `customer_message_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int NOT NULL,
  PRIMARY KEY (`customer_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_end_category`
--

DROP TABLE IF EXISTS `tbl_end_category`;
CREATE TABLE IF NOT EXISTS `tbl_end_category` (
  `ecat_id` int NOT NULL AUTO_INCREMENT,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int NOT NULL,
  PRIMARY KEY (`ecat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(61, 'Majhoul', 13),
(62, 'gel de douche', 14),
(63, 'Les savons', 14),
(64, 'Les crèmes', 16),
(65, 'Vaseline', 16),
(66, 'Huile', 15),
(67, 'Ghasoul', 14),
(68, 'Henna', 14),
(69, 'Les masques', 16),
(70, 'L\'eau de rose', 16),
(71, 'Shampoing', 15),
(72, 'Lave mains', 17),
(73, 'Les savons', 17),
(74, 'Fgous', 13),
(75, 'tarzaoua', 13),
(76, 'Tapis pour Salon', 18),
(77, 'Collier', 19);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Comment trouver un article sur artisanatDT.com?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Nous avons une large gamme de produits à choisir.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">Conseil 1: Si vous recherchez un produit spécifique, utilisez le champ de recherche par mot-clé situé en haut de site. Tapez simplement ce que vous recherchez et préparez-vous à être surpris!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Conseil 2: Si vous souhaitez explorer une catégorie, utilisez les catégories&nbsp;de Shop dans le menu supérieure et parcourez vos catégories&nbsp; préférées ou nous présenterons&nbsp;les meilleurs produits.</span></font><br><br></h3>\r\n'),
(3, 'J\'ai reçu un article défectueux / endommagé, puis-je obtenir un remboursement?', '<p>Dans le cas où l\'article que vous avez reçu est endommagé ou défectueux, vous pouvez retourner un article dans le même état que vous l\'avez reçu avec la boîte d\'origine et / ou l\'emballage intact. Une fois que nous recevons l\'article retourné, nous l\'inspecterons et si l\'article s\'avère défectueux ou endommagé, nous traiterons le remboursement ainsi que les frais d\'expédition encourus.<br></p>\r\n'),
(4, 'Quand les «retours» ne sont-ils pas possibles?', '<h5 style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Il existe quelques scénarios dans lesquels il nous est difficile de prendre en charge les retours:<br></span></font><span style=\"font-size: 14px; color: rgb(10, 10, 10);\">1.La demande de retour est faite en dehors du délai imparti, de 15 jours à compter de la livraison.<br></span><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">2.Le produit est utilisé, endommagé ou n\'est pas dans le même état que vous l\'avez reçu.<br></span></font><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">3.Produits défectueux couverts par la garantie du fabricant.<br></span></font><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">4.Tout article consommable qui a été utilisé ou installé.<br></span></font><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">5.Produits avec des numéros de série altérés ou manquants.<br></span></font><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">6.Tout ce qui manque dans le colis que vous avez reçu, y compris les étiquettes de prix, les étiquettes, l\'emballage d\'origine, les cadeaux et les&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; accessoires.<br></span></font><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">7.Articles fragiles, articles liés à l\'hygiène.</span></font></h5>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` int NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'MAD'),
(2, 'Search Product', 'Chercher un produit'),
(3, 'Search', 'Chercher'),
(4, 'Submit', 'Soumettre'),
(5, 'Update', 'Mettre à jour '),
(6, 'Read More', 'Lire la suite'),
(7, 'Serial', 'Série'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Connexion'),
(10, 'Customer Login', 'Connexion client'),
(11, 'Click here to login', 'Cliquez ici pour vous connecter '),
(12, 'Back to Login Page', 'Retour à la page de connexion'),
(13, 'Logged in as', 'Connecté en tant que'),
(14, 'Logout', 'Se déconnecter'),
(15, 'Register', 'S\'inscrire'),
(16, 'Customer Registration', 'Inscription client '),
(17, 'Registration Successful', 'Inscription réussi'),
(18, 'Cart', 'Panier'),
(19, 'View Cart', 'Voir le panier'),
(20, 'Update Cart', 'Mettre à jour panier '),
(21, 'Back to Cart', 'Retour au panier'),
(22, 'Checkout', 'Caisse'),
(23, 'Proceed to Checkout', 'Passer à la caisse'),
(24, 'Orders', 'Commandes'),
(25, 'Order History', 'Historique des commandes '),
(26, 'Order Details', 'Détails de la commande'),
(27, 'Payment Date and Time', 'Date et heure du paiement '),
(28, 'Transaction ID', 'Id Transaction '),
(29, 'Paid Amount', 'Montant payé'),
(30, 'Payment Status', 'Statut de paiement'),
(31, 'Payment Method', 'Mode de paiement'),
(32, 'Payment ID', 'Id de paiement '),
(33, 'Payment Section', 'Section de paiement '),
(34, 'Select Payment Method', 'Sélectionnez le mode de paiement'),
(35, 'Select a Method', 'Sélectionnez un mode'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Dépôt bancaire'),
(39, 'Card Number', 'Numéro de carte'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Mois'),
(42, 'Year', 'Année'),
(43, 'Send to this Details', 'Envoyer à ces détails'),
(44, 'Transaction Information', 'Informations sur les transactions '),
(45, 'Include transaction id and other information correctly', 'Incluez correctement l\'id de transaction et d\'autres informations '),
(46, 'Pay Now', 'Payez maintenant'),
(47, 'Product Name', 'Nom du produit'),
(48, 'Product Details', 'Détails du produit'),
(49, 'Categories', 'Catégories'),
(50, 'Category:', 'Catégorie :'),
(51, 'All Products Under', 'Tous les produits sous'),
(52, 'Select Size', 'Sélectionnez la taille '),
(53, 'Select Color', 'Sélectionnez la couleur'),
(54, 'Product Price', 'Prix du produit'),
(55, 'Quantity', 'Quantité'),
(56, 'Out of Stock', 'En rupture de stock'),
(57, 'Share This', 'Partagez ceci '),
(58, 'Share This Product', 'Partagez ce produit'),
(59, 'Product Description', 'Description du produit'),
(60, 'Features', 'Caractéristiques'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Politique de retour'),
(63, 'Reviews', 'Commentaires'),
(64, 'Review', 'Avis'),
(65, 'Give a Review', 'Donnez un avis'),
(66, 'Write your comment (Optional)', 'Écrivez votre commentaire (facultatif)'),
(67, 'Submit Review', 'Poster le commentaire'),
(68, 'You already have given a rating!', 'Vous avez déjà donné un avis!'),
(69, 'You must have to login to give a review', 'Vous devez être connecté pour donner un avis'),
(70, 'No description found', 'Aucune description trouvée'),
(71, 'No feature found', 'Aucune fonctionnalité trouvée'),
(72, 'No condition found', 'Aucune condition trouvée'),
(73, 'No return policy found', 'Aucune politique de retour trouvée '),
(74, 'No Review is Found', 'Aucun avis n\'a été trouvé'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Commenter'),
(77, 'Comments', 'commentaires'),
(78, 'Rating', 'Avis'),
(79, 'Previous', 'Précédent'),
(80, 'Next', 'Suivant'),
(81, 'Sub Total', 'TOTAL'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Frais de livraison '),
(85, 'Continue Shipping', 'Continuer la livraison '),
(86, 'Update Billing Address', 'Mettre à jour l\'adresse de facturation '),
(87, 'Update Shipping Address', 'Mettre à jour l\'adresse de livraison '),
(88, 'Update Billing and Shipping Info', 'Mettre à jour les informations de facturation et de livraison'),
(89, 'Dashboard', 'Tableau de bord '),
(90, 'Welcome to the Dashboard', 'Bienvenue sur le tableau de bord'),
(91, 'Back to Dashboard', 'Retour au tableau de bord'),
(92, 'Subscribe', 'S\'abonner'),
(93, 'Subscribe To Our Newsletter', 'Abonnez-vous à notre newsletter'),
(94, 'Email Address', 'Adresse e-mail '),
(95, 'Enter Your Email Address', 'Entrez votre adresse email'),
(96, 'Password', 'Mot de passe'),
(97, 'Forget Password', 'Mot de passe oublié'),
(98, 'Retype Password', 'Retaper le mot de passe'),
(99, 'Update Password', 'Mettre à jour le mot de passe'),
(100, 'New Password', 'Nouveau mot de passe'),
(101, 'Retype New Password', 'Retaper le nouveau mot de passe'),
(102, 'Full Name', 'Nom et prénom'),
(103, 'Company Name', 'Nom de la compagnie'),
(104, 'Phone Number', 'Numéro de téléphone'),
(105, 'Address', 'Adresse'),
(106, 'Country', 'Pays'),
(107, 'City', 'Ville'),
(108, 'State', 'Province'),
(109, 'Zip Code', 'Code postal '),
(110, 'About Us', 'À propos de nous'),
(111, 'Featured Posts', 'Articles spéciaux'),
(112, 'Popular Posts', 'Articles populaires'),
(113, 'Recent Posts', 'Articles récents'),
(114, 'Contact Information', 'Information de Contact '),
(115, 'Contact Form', 'Forme de contact '),
(116, 'Our Office', 'Notre bureau'),
(117, 'Update Profile', 'Mettre à jour le profil '),
(118, 'Send Message', 'Envoyer le message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Trouvez-nous sur MAP'),
(121, 'Congratulation! Payment is successful.', 'Félicitations! Le paiement est réussi. '),
(122, 'Billing and Shipping Information is updated successfully.', 'Les informations de facturation et de livraison ont été mises à jour avec succès.'),
(123, 'Customer Name can not be empty.', 'Le nom du client ne peut pas être vide. '),
(124, 'Phone Number can not be empty.', 'Le numéro de téléphone ne peut pas être vide.'),
(125, 'Address can not be empty.', 'L\'adresse ne peut pas être vide. '),
(126, 'You must have to select a country.', 'Vous devez sélectionner un pays. '),
(127, 'City can not be empty.', 'Vous devez sélectionner un pays. '),
(128, 'State can not be empty.', 'La province ne peut pas être vide. '),
(129, 'Zip Code can not be empty.', 'Le code postal ne peut pas être vide.'),
(130, 'Profile Information is updated successfully.', 'Les informations de profil ont été mises à jour avec succès.'),
(131, 'Email Address can not be empty', 'L\'adresse e-mail ne peut pas être vide.'),
(132, 'Email and/or Password can not be empty.', 'L\'email et / ou le mot de passe ne peuvent pas être vides.'),
(133, 'Email Address does not match.', 'L\'adresse email ne correspond pas.'),
(134, 'Email address must be valid.', 'L\'adresse email doit être valide.'),
(135, 'You email address is not found in our system.', 'Votre adresse email ne se trouve pas dans notre système. '),
(136, 'Please check your email and confirm your subscription.', 'Veuillez vérifier votre e-mail et confirmer votre abonnement.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Votre e-mail a été vérifié avec succès. Vous pouvez maintenant vous connecter à notre site Web.'),
(138, 'Password can not be empty.', 'Le mot de passe ne peut pas être vide.'),
(139, 'Passwords do not match.', 'Les mots de passe ne correspondent pas.'),
(140, 'Please enter new and retype passwords.', 'Veuillez saisir de nouveaux mots de passe et retaper.'),
(141, 'Password is updated successfully.', 'Le mot de passe a été mis à jour avec succès.'),
(142, 'To reset your password, please click on the link below.', 'Pour réinitialiser votre mot de passe, veuillez cliquer sur le lien ci-dessous.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'DEMANDE DE RÉINITIALISATION DE MOT DE PASSE - VOTRE SITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'Le délai de réinitialisation du mot de passe (24 heures) a expiré. Veuillez réessayer de réinitialiser votre mot de passe. '),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'Un lien de confirmation est envoyé à votre adresse e-mail. Vous y obtiendrez les informations de réinitialisation du mot de passe.'),
(146, 'Password is reset successfully. You can now login.', 'Le mot de passe a été réinitialisé avec succès. Vous pouvez maintenant vous connecter.'),
(147, 'Email Address Already Exists', 'L\'adresse email existe déjà.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Pardon! Votre compte est inactif. Veuillez contacter l\'administrateur.'),
(149, 'Change Password', 'Changer le mot de passe'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Confirmation par email d\'inscription pour VOTRE SITE WEB.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Merci pour votre inscription! Votre compte a été créé. Pour activer votre compte cliquez sur le lien ci-dessous: '),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Votre inscription est terminée. Veuillez vérifier votre adresse e-mail pour suivre le processus de confirmation de votre inscription.'),
(153, 'No Product Found', 'Aucun produit trouvé'),
(154, 'Add to Cart', 'Ajouter au panier'),
(155, 'Related Products', 'Produits en relation '),
(156, 'See all related products from below', 'Voir tous les produits en relation ci-dessous '),
(157, 'Size', 'Taille'),
(158, 'Color', 'Couleur'),
(159, 'Price', 'Prix'),
(160, 'Please login as customer to checkout', 'Veuillez vous connecter en tant que client pour passer à la caisse'),
(161, 'Billing Address', 'Adresse de facturation'),
(162, 'Shipping Address', 'Adresse de livraison '),
(163, 'Rating is Submitted Successfully!', 'L\'avis est envoyée avec succès');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_mid_category`
--

DROP TABLE IF EXISTS `tbl_mid_category`;
CREATE TABLE IF NOT EXISTS `tbl_mid_category` (
  `mcat_id` int NOT NULL AUTO_INCREMENT,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int NOT NULL,
  PRIMARY KEY (`mcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(13, 'DATTES', 5),
(14, 'le corps', 4),
(15, 'Les cheveux', 4),
(16, 'Le visage', 4),
(17, 'les mains', 4),
(18, 'Tapis de Lain', 8),
(19, 'Collier', 7);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'A propos de nous', '<p style=\"text-align: justify; \"><b style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\">A propos de nous</b><br></p><p style=\"text-align:justify\"></p><div style=\"\">Notre site présent des produits varie de l’artisanat de la région Draa Tafilalet avec une large gamme d’articles créé par des artisans passionnés par les métiers anciens : tapis artisanal, produits cosmétique, bijoux, vêtements, produits d’alimentation, …</div><p></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Des produits particuliers</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">artisanatDT.com propose tous soigneusement triés sur le volet par nos artisans. Si vous êtes intéressé par un produit en particulier, envoyez-nous un e-mail, nous ferons de notre mieux pour vous l\'offrir.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Sécurité vérifiée</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Toutes nos transactions sont vérifiées et respectent les normes de sécurité les plus élevées. De plus, il y a beaucoup de choses à faire grâce à des offres et des cadeaux passionnants réguliers, alors faites-nous savoir et référez-nous à tous les membres de votre famille, amis et collègues. soyez récompensé pour cela. Et pour couronner le tout, vous pouvez partager votre expérience utilisateur en publiant des avis. N\'attendez plus Inscrivez-vous avec nous maintenant! commencez à traquer, commencez à acheter.</span></font></p>\r\n', 'about-banner.jpg', 'ArtisanatDT.com - A propos de nous', 'A propos de nous, A propos, A propos d\'artisanat, A propos d\'artisanatDT', 'Notre site présent des produits varie de l’artisanat de la région Draa Tafilalet avec une large gamme d’articles créé par des artisans passionnés par les métiers anciens : tapis artisanal, produits cosmétique, bijoux, vêtements, produits d’alimentation, …', 'FAQ', 'faq-banner.jpg', 'ArtisanatDT.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contactez-nous', 'contact-banner.jpg', 'ArtisanatDT.com - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(45, 5, 'Hammad Hassan', 'mc170200216@vu.edu.pk', '2018-04-24 15:07:35', '', 46, '', '', '', '', 'Bank Deposit Information\r\n', 'Bank Deposit', 'Completed', 'Completed', '1524568055');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_photo`
--

DROP TABLE IF EXISTS `tbl_photo`;
CREATE TABLE IF NOT EXISTS `tbl_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `total_view` int NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_prod`
--

DROP TABLE IF EXISTS `tbl_prod`;
CREATE TABLE IF NOT EXISTS `tbl_prod` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) NOT NULL,
  `prod_cname` varchar(100) NOT NULL,
  `prod_email` varchar(100) NOT NULL,
  `prod_phone` varchar(50) NOT NULL,
  `prod_country` int NOT NULL,
  `prod_address` text NOT NULL,
  `prod_city` varchar(100) NOT NULL,
  `prod_state` varchar(100) NOT NULL,
  `prod_zip` varchar(30) NOT NULL,
  `prod_password` varchar(100) NOT NULL,
  `prod_token` varchar(255) NOT NULL,
  `prod_datetime` varchar(100) NOT NULL,
  `prod_timestamp` varchar(100) NOT NULL,
  `prod_status` int NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_prod`
--

INSERT INTO `tbl_prod` (`prod_id`, `prod_name`, `prod_cname`, `prod_email`, `prod_phone`, `prod_country`, `prod_address`, `prod_city`, `prod_state`, `prod_zip`, `prod_password`, `prod_token`, `prod_datetime`, `prod_timestamp`, `prod_status`, `photo`) VALUES
(2, 'amina', '', 'amina@gmail.com', '0600000000', 149, 'ygygfuy jgiy jgvi', 'errachidia', 'errachidia', '52000', 'bd82dd2a8b944f131d0a53bc1b473029', '9ced8a3e9f0fb415fc8c72820fbf7d1a', '2021-06-03 10:58:11', '1622714291', 1, ''),
(3, 'asmae', 'asmae', 'asmae@gmail.com', '0600000000', 149, 'ygygf gf ukgghrjy,tkty', 'errachidia', 'errachidia', '52000', 'cab0d9eba49e4716cf305472390f3f2a', 'e8385c58e0466f75ab1f33fb083e4bfe', '2021-06-03 11:11:37', '1622715097', 0, ''),
(4, 'Ayadi hajar', '', 'hajar@gmail.com', '0600000000', 149, 'hjgjg kjhkh jhlhlj', 'errachidia', 'errachidia', '52000', '9ccc598773c3b627675dcf47d1b16c5b', '47896b0403ed2eb5c25d0218a7ba3bc9', '2021-06-03 06:28:17', '1622741297', 1, 'prod-4.jpg'),
(5, 'asmae', 'asmae', 'asmaeKS@gmail.com', '0600000000', 149, 'ygygf gf ukgghrjy,tkty', 'errachidia', 'errachidia', '52000', '827ccb0eea8a706c4c34a16891f84e7b', 'e4091cb4b144dc8a0b362bdd3ec48037', '2021-06-04 11:52:47', '1622803967', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int NOT NULL,
  `p_is_featured` int NOT NULL,
  `p_is_active` int NOT NULL,
  `ecat_id` int NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(82, 'Crème a l\'extrait d\'escargot', '', '20', 20, 'product-featured-80.jpg', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"><b>La crème a l\'extrait d\'escargot</b></span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> d\'escargot</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> est très efficace contre les vergetures et les rides. Elle agit également sur la cicatrisation de lésions comme les brûlures ou l\'acné.</span><br></p>', '', '', '', '', 0, 0, 1, 64),
(83, 'Savon à l\'Argile Blanche', '', '30', 10, 'product-featured-83.jpeg', '<p>à base d\'un mélange de beurre de Karité l\'Huile D\'Argan et d\'Olive et de l\'Argile Blanche</p>', '<p>Pour les peaux sèches , Sensible et Matures</p>', '', '', '', 1, 0, 1, 73),
(84, 'Huile de Rose', '', '10', 22, 'product-featured-84.jpeg', '<p><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">huile de rose pour</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cheveux</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> est idéale pour traiter les </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cheveux</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> abîmés en favorisant leur régénération. l\'</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">huile</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> de rose laisse vos </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cheveux</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"> hydratés et nourris en profondeur.</span><br></p>', '', '', '', '', 1, 0, 1, 66),
(85, 'Henna ', '', '10', 20, 'product-featured-85.jpeg', '<p><span style=\"font-family: Arial, sans-serif; letter-spacing: 0.007px;\">Henna permet </span><span style=\"font-family: Arial, sans-serif; letter-spacing: 0.007px;\">de donner à votre peau une magnifique teinte bronzée.</span></p><p><span style=\"font-family: Arial, sans-serif; letter-spacing: 0.007px;\">Il sert à renforcer la couleur de la chevelure, à lui donner un éclat \'coup de soleil cuivré\'.</span><br></p>', '', '', '', '', 12, 0, 1, 68),
(86, 'Shampoing', '', '25', 11, 'product-featured-86.jpeg', '<h5 style=\"line-height: 1.2; margin-top: 0px; margin-bottom: 30px; position: relative;\"><span style=\"background-color: rgb(255, 255, 255);\">Shampoing naturel : une bouffée d’air frais pour vos cheveux</span></h5><p style=\"line-height: 1.2; margin-top: 0px; margin-bottom: 30px; position: relative;\">permet d\'avoir des longs cheveux brillants</p><p style=\"line-height: 1.2; margin-top: 0px; margin-bottom: 30px; position: relative;\"><br></p>', '', '', '', '', 4, 0, 1, 71),
(87, 'Gel de douche', '', '10', 10, 'product-featured-87.jpeg', '<p>Gel douche a aloe vera et verveine </p><p>Gel douche de la rose et fruit rouge</p>', '', '', '', '', 7, 0, 1, 62),
(88, 'Crème', '', '20', 22, 'product-featured-88.jpg', '<p>Crème hydratante à l\'huile d\'argan parfumée à la rose</p><p><br></p>', '', '', '', '', 0, 0, 1, 64),
(89, 'Datte Majhoul', '', '50', 44, 'product-featured-81.jpg', '<h5 style=\"margin-top: 0px; margin-bottom: 25px; line-height: 1.2;\">Les dattes Majhoul : un fruit riche en fibres aux bienfaits pour le cœur</h5>', '', '', '', '', 3, 0, 1, 61),
(90, 'Datte Fgous', '', '40', 23, 'product-featured-82.jpg', '<h5 style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Bon au goût et pour le corps</h5><p style=\"margin-top: 0px; margin-bottom: 0.5rem; font-weight: bold; line-height: 1.2; font-size: 2rem; color: rgb(68, 68, 68); font-family: SourceSansPro;\"><br></p>', '', '', '', '', 6, 0, 1, 74),
(92, 'Tapis Amazigh', '', '1200', 10, 'product-featured-89.jpg', '', '', '', '', '', 11, 0, 1, 76),
(93, 'Loubane', '', '2000', 23, 'product-featured-82.jpg', '', '', '', '', '', 4, 0, 1, 77);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
CREATE TABLE IF NOT EXISTS `tbl_product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(169, 1, 82),
(170, 1, 82),
(171, 4, 82);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_photo`
--

DROP TABLE IF EXISTS `tbl_product_photo`;
CREATE TABLE IF NOT EXISTS `tbl_product_photo` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(106, '106.jpeg', 82),
(107, '107.jpeg', 82),
(110, '105.jpeg', 82),
(111, '106.jpeg', 82),
(112, '107.jpeg', 82),
(113, '108.jpeg', 82),
(114, '105.jpeg', 82),
(116, '105.jpeg', 86),
(117, '106.jpeg', 86),
(118, '107.jpeg', 86),
(119, '108.jpeg', 86),
(120, '105.jpeg', 87),
(121, '105.jpeg', 85),
(122, '106.jpeg', 85),
(123, '107.jpeg', 85),
(124, '105.jpeg', 87),
(125, '105.jpg', 82),
(126, '105.jpg', 82),
(127, '106.jpg', 82),
(128, '105.jpg', 82),
(129, '106.jpg', 82),
(130, '105.jpg', 92),
(131, '106.jpg', 92),
(132, '105.jpg', 82),
(133, '106.jpg', 82);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_size`
--

DROP TABLE IF EXISTS `tbl_product_size`;
CREATE TABLE IF NOT EXISTS `tbl_product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(260, 29, 82),
(261, 29, 82),
(262, 29, 90),
(263, 27, 82),
(264, 27, 82);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rt_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `cust_id` int NOT NULL,
  `comment` text NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE IF NOT EXISTS `tbl_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days. No questions asked.', 'service-5.png'),
(6, 'Free Shipping', 'Enjoy free shipping in U.A.E. More countries to be added sooner.', 'service-6.png'),
(7, 'Fast Delivery', 'Items are shipped in 24 hours.', 'service-7.png');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int NOT NULL,
  `total_popular_post_footer` int NOT NULL,
  `total_recent_post_sidebar` int NOT NULL,
  `total_popular_post_sidebar` int NOT NULL,
  `total_featured_product_home` int NOT NULL,
  `total_latest_product_home` int NOT NULL,
  `total_popular_product_home` int NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int NOT NULL,
  `home_welcome_on_off` int NOT NULL,
  `home_featured_product_on_off` int NOT NULL,
  `home_latest_product_on_off` int NOT NULL,
  `home_popular_product_on_off` int NOT NULL,
  `home_testimonial_on_off` int NOT NULL,
  `home_blog_on_off` int NOT NULL,
  `newsletter_on_off` int NOT NULL,
  `ads_above_welcome_on_off` int NOT NULL,
  `ads_above_featured_product_on_off` int NOT NULL,
  `ads_above_latest_product_on_off` int NOT NULL,
  `ads_above_popular_product_on_off` int NOT NULL,
  `ads_above_testimonial_on_off` int NOT NULL,
  `ads_category_sidebar_on_off` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2021. Tous les droits sont réservés.', 'Er-Rachidia, Maroc', 'support@artisanatDT.com', '+212 600-000000', '', '<div style=\"width: 100%\"><iframe width=\"100%\" height=\"600\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=errachidia+(ArtisanatDT)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\"></iframe><a href=\"https://www.maps.ie/draw-radius-circle-map/\">Easy radius map</a></div>', 'support@artisanatDT.com', 'Message Email au visiteur de ArtisanatDT.com', 'Merci d\'avoir envoyé un e-mail. Nous vous contacterons ultérieurement.', 'Un lien de confirmation est envoyé à votre adresse e-mail. Vous y obtiendrez les informations de réinitialisation du mot de passe.', 4, 4, 5, 5, 4, 4, 4, 'ArtisanatDT.com | Boutique d\'artisanat en ligne', 'Artisanat, boutique d\'artisanat, artisanat en ligne, draa-tafilalet artisanat', 'ArtisanatDT.com est une boutique d\'artisanat  en ligne.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'les produits spéciaux', 'Voir tous nos produits spéciaux d\'ici', 'Les nouveaux produits', 'Voir tous nos produits nouveaux ici', 'Produits populaires', 'Voir tous nos produits populaires ici', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Inscrivez-vous à notre newsletter pour les dernières promotions et réductions.', 'admin@artisanatDT.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: USA', '<!-- Google Analytics -->\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-8564299-3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-8564299-3\');\r\n</script>\r\n', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shipping_cost`
--

DROP TABLE IF EXISTS `tbl_shipping_cost`;
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost` (
  `shipping_cost_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '8');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shipping_cost_all`
--

DROP TABLE IF EXISTS `tbl_shipping_cost_all`;
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost_all` (
  `sca_id` int NOT NULL AUTO_INCREMENT,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_size`
--

DROP TABLE IF EXISTS `tbl_size`;
CREATE TABLE IF NOT EXISTS `tbl_size` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '1kg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpeg', 'Bienvenue sur Artisanat Draa Tafilalet', 'Shop en ligne ', 'Vente des produits de Drâa-Tafilalet ', 'http://localhost/ecommerce-website-master/product-category.php?id=4&type=top-category', 'Center'),
(2, 'slider-2.png', '50% De réduction sur tous les produits.', 'Le meilleur de l\'artisanat régional.', 'En savoir plus', '#', 'Center'),
(3, 'slider-3.jpeg', 'Service client 24 h/24', 'De magnifiques produits .\r\nDes modèles unique que vous ne trouverez nulle part ailleurs', 'En savoir plus', '#', 'Center');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_social`
--

DROP TABLE IF EXISTS `tbl_social`;
CREATE TABLE IF NOT EXISTS `tbl_social` (
  `social_id` int NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/artisanatDT', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/artisanatDT', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_subscriber`
--

DROP TABLE IF EXISTS `tbl_subscriber`;
CREATE TABLE IF NOT EXISTS `tbl_subscriber` (
  `subs_id` int NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int NOT NULL,
  PRIMARY KEY (`subs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_top_category`
--

DROP TABLE IF EXISTS `tbl_top_category`;
CREATE TABLE IF NOT EXISTS `tbl_top_category` (
  `tcat_id` int NOT NULL AUTO_INCREMENT,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int NOT NULL,
  PRIMARY KEY (`tcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(4, 'Produit cosmétique', 1),
(5, 'Produits d’alimentation', 1),
(6, 'Vêtements', 1),
(7, 'Bijoux', 1),
(8, 'Tapis', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'hajar', 'hajar@gamil.com', '123654789', 'hajar', 'user-1.jpg', 'admin', 'Active'),
(15, 'admin', 'support@artisanatDT.com', '+212 600-000000', 'support', '', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE IF NOT EXISTS `tbl_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
