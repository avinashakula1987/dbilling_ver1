-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2023 at 04:17 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbilling2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(9) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `address` varchar(9) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` text,
  `type` varchar(9) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` varchar(10) DEFAULT NULL,
  `lasltlogin` varchar(10) DEFAULT NULL,
  `attempts` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `city`, `address`, `phone`, `email`, `username`, `password`, `type`, `status`, `created`, `lasltlogin`, `attempts`) VALUES
(1, 'admin', 'rajahmundry', 'main road', '7416280997', 'admin@gmail.com', 'admin', 'jvk', 'admin', 1, '2018-04-09', '2018-04-09', 0),
(3, 'Retail', NULL, NULL, NULL, NULL, 'retail', 'jvk', 'moderator', 1, '2023-01-28', NULL, 0),
(5, 'J Vasu', NULL, NULL, NULL, NULL, 'jvk', 'jvk', 'moderator', 1, '2023-03-20', NULL, 0),
(6, 'Wholesale', NULL, NULL, NULL, 'wholesale@gmail', 'wholesale', 'jvk', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(58, 'OPPO', 1),
(59, 'SAMSUNG', 1),
(60, 'VIVO', 1),
(61, 'Rice', 1),
(62, 'testing category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` tinyint(4) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `credit` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `mobile`, `credit`) VALUES
(1, '7660832211', 0),
(2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `mobile` text,
  `name` text,
  `address` text,
  `gst` text,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `city` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `mobile`, `name`, `address`, `gst`, `state`, `pincode`, `city`, `type`) VALUES
(24, '8977446890', 'MAHAVEERPOLYMERS', 'SHOAPNO156MGC COMPLEX', '37AQJPV5948H1Z2', 'ANDHRAPRADESH', '37', 'VIJAYAWADA', ''),
(25, '9550522669', 'srinivas dwarapudi', 'dwarapudi', '', 'andhrapradesh', '', 'rajahmundry', ''),
(26, '9966744021', 'siva caterings', 'kakinada', '', 'ap', '533532', 'kakinada', ''),
(27, '8985788367', 'sattibabu', 'gokavaram', '', 'ap', '', 'gokavaram', ''),
(28, '9492179130', 'kameswarao', 'gokavaram', '', 'ap', '', 'gokavaram', ''),
(29, '9701449080', 'johndisposables', 'malakpalli', '', 'ap', '', 'kovvur', ''),
(30, '8522818777', 'venkatramana', 'mandapeta', '', 'ap', '', 'mandapeta', ''),
(31, '9912322748', 'ramu ', 'namavaram', '', 'ap', '', 'rajahmundry', ''),
(32, '9052478363', 'srinivas d', 'mandapeta', '', 'ap', '', 'mandapeta', ''),
(33, '9390555678', 'srinivas', 'ravulapalem', '', 'ap', '', 'ravulapalem', ''),
(34, '9059907060', 'prasad', 'koukonda', '', 'ap', '', 'rajahmundry', ''),
(35, '9676422226', 'sriram', 'korukonda', '', 'ap', '', 'korukonda', ''),
(36, '9966887075', 'pavan', 'seethanagaram', '', 'ap', '', 'seethanagaram', ''),
(37, '9866636162', 'raja', 'ramachandrapuram', '', 'ap', '', 'ramachandrapuram', ''),
(38, '6302999343', 'prasad', 'peddapuram', '', 'ap', '', 'peddapuram', ''),
(39, '9949020867', 'sairam general stores', 'peddapuram', '', 'ap', '', 'peddapuram', ''),
(40, '9963346206', 'vk biryani', 'rajahmundry', '', 'ap', '', 'rajahmundry', ''),
(41, '9989179980', 'deviganesh general stores', 'amalapuram', '37AKLPA5993P1ZB', 'ap', '', 'amalapuram', ''),
(42, '9390055359', 'MAHESH', 'INDUKURUPETA', '', 'AP', '', 'GOKAVARAM', ''),
(43, '9989367165', 'SRINU RANGAMPETA', 'RANGAMPETA', '', 'AP', '', 'RAJANAGARAM', ''),
(44, '', 'mmplastics', 'GOLLAPUDI VILLAGE', '37ARSPK5624K1Z6', 'AP', '521225', 'VIJAYAWADA', ''),
(45, '9392102005', 'MMPLASTICS', 'GOLLAPUDI', '37ARSPK5624K1Z6', 'AP', '521225', 'VIJAYAWADA', ''),
(46, '9849057753', 'MEETHPLYPACK', 'D.NO:11-38-14/1 PALLI STREET', '37AFRPK3804L1Z0', 'ANDHRAPRADESH', '521225', 'VIJAYAWADA', ''),
(47, '8019763663', 'SRIMETERO', 'APPARAO STREET', '37AAHHK1137P1ZV', 'AP', '', 'VIJAYAWADA', ''),
(48, '9032923111', 'MAX PACKING', 'PRAVEEN COMPLEX RAMGOPAL STREET', '37BUBPJ5561K1ZD', 'AP', '520001', 'VIJAYAWADA', ''),
(49, '7981152163', 'GSL', 'RAJANAGARAM', '', 'AP', '533103', 'RAJANAGARAM', ''),
(50, '9912555599', 'sujicaterings', 'narsapuram', '', 'ap', '', 'kokrukonda', ''),
(51, '7997878181', 'MAHESHPACKING', 'GOLLAPUDI', '37CQPPD2220J1ZW', 'AP', '', 'VIJAYAWADA', ''),
(52, '9848134508', 'DIVYASAI AGENCIES', 'GOLLAPUDI', '37AKHPK3062H1Z6', 'AP', '', 'VIJAYAWADA', ''),
(53, '9502535746', 'SAIRAM ENTERPRICES', 'GOLLAPUDI', '37ACIFS6230L1ZQ', 'AP', '', 'VIJAYAWADA', ''),
(54, '8015876584', 'OMPACKING', 'GOLLAPUDI', '37BECPS3027L1Z9', 'AP', '', 'VIJAYAWADA', ''),
(55, '9618148459', 'adhityadryfruits', 'anaparthy', '', 'ap', '', 'anaparthy', ''),
(56, '8919278679', 'RAJU', 'RAJANAGARAM', '', 'AP', '', 'RAJANAGARAM', ''),
(57, '9849250754', 'MAA NAGENCHI ENTERPRICES', 'GOLLAPUDI', '37NTXPS2292R1ZW', 'AP', '', 'VIJAYAWADA', ''),
(58, '9246492502', 'BHARATHTRADERS', 'PULLIPATIVARI STREET', '', 'AP', '', 'VIJAYAWADA', ''),
(59, '9963933592', 'SRIMAHALAXMI DISPOSABLES', 'DULLA', '', 'AP', '', 'KADIUM', ''),
(60, '9440011333', 'RADHEKRUPA ENTERPRICES', 'GOLLAPUDI', '', 'AP', '', 'VIJAYAWADA', ''),
(61, '9849124190', 'SRIGAYATRI INDUSTRIES', 'GOLLAPUDI', '37BXNPC8621E1ZG', 'AP', '', 'VIJAYAWADA', ''),
(62, '7898133445', 'PREMIER POLYTHENE', 'KANDULASTREET', '37AGUPK4881H1ZP', 'AP', '', 'VIJAYAWADA', ''),
(63, '9704437588', 'm.satyanarayana', 'devichowk', '', 'ap', '', 'rajahmundry', ''),
(64, '9573788775', 'SAI', 'MANDAPETA', '', 'AP', '', 'MANDAPETA', ''),
(65, '8143788982', 'NAVETRPOLY', 'GOLLAPUDI', '', 'AP', '', 'VIJAYAWADA', ''),
(66, '9804461245', 'BHARATH PE', 'RAJAHMUNDRY', '', 'AP', '', '', ''),
(67, '7416280999', 'avinash', '', '', '', '', '', ''),
(68, '9346221901', 'KRISHNA MARKETING', 'GOLLAPUDI', '37EPQPS1215R1ZB', 'AP', '', 'VIJAYAWADA', ''),
(69, '7207699955', 'bodhisweets', 'balajipeta', '', 'ap', '533102', 'rajahmundry', ''),
(70, '9998887775', 'pradeep', 'address 1', '', 'AP', '', 'Rjy', ''),
(71, 'jgg', 'purchase test 1', '', '', '', '', '', ''),
(74, '7416280997', 'Avinash1', 'kk road', '', 'Andhra Pradesh', '533101', 'Rajahmundry', ''),
(75, '7207060525', 'Avinash2', 'kk road', '', 'Andhra Pradesh', '533101', 'Rajahmundry', ''),
(76, '9348879997', 'ANANDREGENCY', 'RAJAHMUNDRY', '', 'AP', '', 'RAJAHMUNDRY', ''),
(77, '9848856333', 'RAM', 'SEETHANAGARAM', '', 'AP', '', 'SEETHANAGARAM', ''),
(78, '9848774724', 'SRINIVASAKIRANA', 'ACHANTA', '', 'AP', '', 'ACHANTA', ''),
(79, '9849427606', 'VISHNU ENTERPRISES', 'BRATHERNCHURCH', '', 'AP', '', 'RAJAHMUNDRY', ''),
(83, '5555555555', 'Pradeep1', 'sdfa', 'asdf', 'asdf', 'asdf', 'asdf', 'purchaser');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` varchar(0) DEFAULT NULL,
  `drivername` varchar(0) DEFAULT NULL,
  `driverno` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoicehead`
--

CREATE TABLE `invoicehead` (
  `id` tinyint(4) DEFAULT NULL,
  `invoicehead` text,
  `invoicefoot` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicehead`
--

INSERT INTO `invoicehead` (`id`, `invoicehead`, `invoicefoot`) VALUES
(1, 's:3621:\"<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:33%\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td style=\"text-align:center; width:33%\"><strong><span style=\"font-size:20px\">TAX INVOICE</span></strong></td>\n			<td style=\"text-align:right; width:33%\">(DUPLICATE FOR TRANSPORTER)</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<table align=\"left\" border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"text-align:left; width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"vertical-align:top\"><strong>SAI RAM ENTERPRISES</strong><br />\n			S.No: 495/4A &amp; 495/5A<br />\n			PLOT NO 1B, GOLLAPUDI<br />\n			VIJAYAWADA-AP<br />\n			GSTIN/UIN: 37ACIFS6230L1ZQ<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</td>\n			<td colspan=\"1\" rowspan=\"3\" style=\"vertical-align:top\">\n			<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\" style=\"width:100%\">\n				<tbody>\n					<tr>\n						<td style=\"vertical-align:top\">\n						<table border=\"0\" cellpadding=\"1\" style=\"width:100%\">\n							<tbody>\n								<tr>\n									<td style=\"vertical-align:top\">Invoice No.\n									<div id=\"invoiceNumber\">3251</div>\n									</td>\n									<td style=\"text-align:right; vertical-align:top\">e-Way Bill No.\n									<div id=\"invoiceewaybillNumber\">161576148090</div>\n									</td>\n								</tr>\n							</tbody>\n						</table>\n\n						<p>&nbsp;</p>\n						</td>\n						<td style=\"vertical-align:top\">Dated\n						<div id=\"billDateIs\">28-Dec-22</div>\n						</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Delivery Note</td>\n						<td style=\"vertical-align:top\">Mode/Terms of Payment</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Reference No. &amp; Date.</td>\n						<td style=\"vertical-align:top\">Other References</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Buyer&#39;s Order No.</td>\n						<td style=\"vertical-align:top\">Dated</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Dispatch Doc No.<br />\n						<strong>3251</strong></td>\n						<td style=\"vertical-align:top\">Delivery Note Date</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Dispatched through<br />\n						BY ROAD</td>\n						<td style=\"vertical-align:top\">Destination<br />\n						RAJAHMUNDRY</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Bill of Lading/LR-RR No.</td>\n						<td style=\"vertical-align:top\">Motor Vehicle No.<br />\n						AP39TV4779</td>\n					</tr>\n					<tr>\n						<td colspan=\"2\" style=\"vertical-align:top\">Terms of Delivery</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"vertical-align:top\">Consignee (Ship to)<br />\n			<strong>JVK ENTERPRISES</strong>\n			<div id=\"consigneeAddress\">SVG Market D No 14-302/5<br />\n			RS NO 310 Morampudi Road<br />\n			37BDGPJ5829J1Z6<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</div>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"vertical-align:top\">Buyer (Bill to)<br />\n			<strong>JVK ENTERPRISES</strong>\n			<div id=\"consigneeAddress\">SVG Market D No 14-302/5<br />\n			RS NO 310 Morampudi Road</div>\n			&nbsp; Rajahmundry GSTIN/UIN : 37BDGPJ5829J1Z6<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\">D.No.34-6-5/1 NEAR BHARATHA BOMMALU, MANGALAVARAUPETA&nbsp; RAJAMAHENDRAVARAM, E.G.Dist., Andhra Pradesh - State Code 37</p>\n\";', 's:1585:\"<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"vertical-align:top\"><span style=\"font-size:12px\"><strong>Terms &amp; Conditions:</strong><br />\n			1.&nbsp;Transport Damages are not our responsibility.<br />\n			2.&nbsp;Goods once sold Cannot be taken back or Exchanged.<br />\n			3.&nbsp;All the disputes are subject to Rajamahendravaram Jurisdiction only.<br />\n			4.&nbsp;We are not collecting any GST Taxes.</span></td>\n			<td style=\"vertical-align:top\">\n			<p><span style=\"font-size:12px\">Bank Details: STATE BANK OF INDIA<br />\n			Thadi Thota Branch, Rajamahendravaram - 533104<br />\n			Bank Account No. 6666666666<br />\n			IFSC: SBIN0004609</span></p>\n\n			<p style=\"text-align:right\"><span style=\"font-size:12px\"><strong>Receiver&#39;s Signature&nbsp;</strong></span></p>\n			</td>\n			<td style=\"vertical-align:top\">\n			<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n				<tbody>\n					<tr>\n						<td colspan=\"2\" style=\"text-align:center\"><span style=\"font-size:12px\">Certified that the particulars given above are true and correct</span></td>\n					</tr>\n					<tr>\n						<td style=\"text-align:center\"><span style=\"font-size:12px\">(Common Seal)</span></td>\n						<td>\n						<p style=\"text-align:center\"><span style=\"font-size:12px\"><strong>For RR Mobiles</strong></span></p>\n\n						<p>&nbsp;</p>\n\n						<p style=\"text-align:center\"><span style=\"font-size:12px\">Authorised Signatory</span></p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\";');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer` text,
  `customerid` text NOT NULL,
  `mobile` text,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `address` text NOT NULL,
  `hamaliCharges` text NOT NULL,
  `pin` text NOT NULL,
  `gst` text NOT NULL,
  `dispatchThrough` text NOT NULL,
  `vehicle` text NOT NULL,
  `transaction` text NOT NULL,
  `openingBalance` text NOT NULL,
  `info` text,
  `total` text,
  `qty` text,
  `finaltotal` text,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `login` text NOT NULL,
  `fullPayment` text NOT NULL,
  `partialPayment` text NOT NULL,
  `pendingAmount` text NOT NULL,
  `refId` int(11) NOT NULL,
  `clearanceStatus` int(11) NOT NULL,
  `returnStatus` int(11) NOT NULL,
  `custGivenAmount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `hamaliCharges`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `pendingAmount`, `refId`, `clearanceStatus`, `returnStatus`, `custGivenAmount`) VALUES
(7, 'MAHAVEERPOLYMERS', '24', '8977446890', 'ANDHRAPRADESH', 'VIJAYAWADA', 'SHOAPNO156MGC COMPLEX', '', '37', '37AQJPV5948H1Z2', 'By Road', '', 'Out', '1000', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"BIODEGREDABLE GLASS\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:8:\"15000.00\";i:6;s:8:\"15000.00\";i:7;N;i:8;s:8:\"15000.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PP FOODCONTAINERS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:8:\"10500.00\";i:6;s:8:\"10500.00\";i:7;N;i:8;s:8:\"10500.00\";i:9;s:4:\"1050\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"NICE DONA\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"4250.00\";i:6;s:7:\"4250.00\";i:7;N;i:8;s:7:\"4250.00\";i:9;s:3:\"850\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '29750', '115', '29750', '2023-03-23', 1, 'admin', 'Full', '29750', '0', 0, 0, 0, ''),
(19, 'SRINIVASA KIRANA', '23', '9848774724', 'AP', 'ACHANTA', 'ACHANTA', '', '', '', 'By Road', '', 'In', '8100', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"DUSTBIN COVER EXLARGE\";i:3;s:2:\"77\";i:4;s:3:\"100\";i:5;s:7:\"6000.00\";i:6;s:7:\"6000.00\";i:7;N;i:8;s:7:\"6000.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6000', '100', '6000', '2023-03-31', 1, 'retail', 'Partial', '', '6000', 0, 1, 0, ''),
(20, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', 'By Road', '', 'In', '0', 'a:23:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"STRETCH FILM\";i:3;s:2:\"78\";i:4;s:4:\"28.6\";i:5;s:3:\"165\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"4620.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"1000mlhinged\";i:3;N;i:4;s:1:\"2\";i:5;s:3:\"400\";i:6;N;i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"400\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"600 CC PET CONTAINER\";i:3;s:2:\"97\";i:4;s:1:\"2\";i:5;s:3:\"300\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"600.00\";i:9;s:3:\"300\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"375 CONTAINER\";i:3;s:2:\"99\";i:4;s:1:\"2\";i:5;s:3:\"190\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"380.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"250 PET CONTAINER\";i:3;s:2:\"98\";i:4;s:1:\"2\";i:5;s:3:\"150\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"300.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"250  silver\";i:3;N;i:4;s:1:\"1\";i:5;s:4:\"3150\";i:6;N;i:7;N;i:8;s:7:\"3150.00\";i:9;s:4:\"3150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"450 silver\";i:3;N;i:4;s:1:\"1\";i:5;s:4:\"3150\";i:6;N;i:7;N;i:8;s:7:\"3150.00\";i:9;s:4:\"3150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"thermacol\";i:3;N;i:4;s:2:\"72\";i:5;s:2:\"36\";i:6;N;i:7;N;i:8;s:7:\"2592.00\";i:9;s:2:\"36\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1dtray\";i:3;N;i:4;s:3:\"100\";i:5;s:2:\"33\";i:6;N;i:7;N;i:8;s:7:\"3300.00\";i:9;s:2:\"33\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"4nice\";i:3;N;i:4;s:3:\"108\";i:5;s:2:\"30\";i:6;N;i:7;N;i:8;s:7:\"3240.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"85 DIA LID\";i:3;s:2:\"96\";i:4;s:2:\"10\";i:5;s:2:\"70\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"700.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:2:\"84\";i:5;s:2:\"63\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"5292.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"18\";i:5;s:3:\"190\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3420.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"10.12dlx\";i:3;N;i:4;s:3:\"100\";i:5;s:2:\"65\";i:6;N;i:7;N;i:8;s:7:\"6500.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.15dcut\";i:3;N;i:4;s:2:\"25\";i:5;s:2:\"98\";i:6;N;i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"14.20dcut\";i:3;N;i:4;s:2:\"25\";i:5;s:2:\"98\";i:6;N;i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"12.18dcut\";i:3;N;i:4;s:2:\"25\";i:5;s:2:\"98\";i:6;N;i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"14.20\";i:3;N;i:4;s:2:\"25\";i:5;s:2:\"98\";i:6;N;i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:4:\"1000\";i:5;s:4:\"3.25\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3250.00\";i:9;s:4:\"3.25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"500 ML CONTAINER\";i:3;s:3:\"126\";i:4;s:4:\"1000\";i:5;s:3:\"3.9\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3900.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:3:\"6.7\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"4020.00\";i:9;s:3:\"6.7\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"10.12silver\";i:3;N;i:4;s:2:\"10\";i:5;s:2:\"88\";i:6;N;i:7;N;i:8;s:6:\"880.00\";i:9;s:2:\"88\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8485.85', '3240', '59894', '2023-04-01', 0, 'retail', 'Partial', '', '0', 0, 0, 0, ''),
(21, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', 'By Road', '', 'In', '8100', 'a:21:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"silver\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"880.00\";i:6;s:6:\"880.00\";i:7;N;i:8;s:6:\"880.00\";i:9;s:2:\"88\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"STRETCH FILM\";i:3;s:2:\"78\";i:4;s:4:\"28.6\";i:5;s:7:\"4620.00\";i:6;s:7:\"4620.00\";i:7;N;i:8;s:7:\"4620.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"1000 ML RECTANGULAR\";i:3;s:3:\"129\";i:4;s:1:\"2\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"400\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"600 CC PET CONTAINER\";i:3;s:2:\"97\";i:4;s:1:\"2\";i:5;s:6:\"600.00\";i:6;s:6:\"600.00\";i:7;N;i:8;s:6:\"600.00\";i:9;s:3:\"300\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"375 CONTAINER\";i:3;s:2:\"99\";i:4;s:1:\"2\";i:5;s:6:\"380.00\";i:6;s:6:\"380.00\";i:7;N;i:8;s:6:\"380.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"250 PET CONTAINER\";i:3;s:2:\"98\";i:4;s:1:\"2\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"250 ml silver\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:7:\"3150.00\";i:6;s:7:\"3150.00\";i:7;N;i:8;s:7:\"3150.00\";i:9;s:4:\"3150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"450mlsilver\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:7:\"3150.00\";i:6;s:7:\"3150.00\";i:7;N;i:8;s:7:\"3150.00\";i:9;s:4:\"3150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"bigbowl\";i:3;s:0:\"\";i:4;s:3:\"144\";i:5;s:7:\"5184.00\";i:6;s:7:\"5184.00\";i:7;N;i:8;s:7:\"5184.00\";i:9;s:2:\"36\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1dtray\";i:3;s:0:\"\";i:4;s:3:\"200\";i:5;s:7:\"6700.00\";i:6;s:7:\"6700.00\";i:7;N;i:8;s:7:\"6700.00\";i:9;s:4:\"33.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"nice\";i:3;s:0:\"\";i:4;s:3:\"108\";i:5;s:7:\"3240.00\";i:6;s:7:\"3240.00\";i:7;N;i:8;s:7:\"3240.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"80 DIA LID\";i:3;s:2:\"95\";i:4;s:2:\"10\";i:5;s:6:\"700.00\";i:6;s:6:\"700.00\";i:7;N;i:8;s:6:\"700.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:2:\"84\";i:5;s:7:\"5250.00\";i:6;s:7:\"5250.00\";i:7;N;i:8;s:7:\"5250.00\";i:9;s:4:\"62.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"18\";i:5;s:7:\"3420.00\";i:6;s:7:\"3420.00\";i:7;N;i:8;s:7:\"3420.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.12 dlx\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"6500.00\";i:6;s:7:\"6500.00\";i:7;N;i:8;s:7:\"6500.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.15DCUT\";i:3;s:3:\"135\";i:4;s:2:\"75\";i:5;s:7:\"7350.00\";i:6;s:7:\"7350.00\";i:7;N;i:8;s:7:\"7350.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:4:\"1000\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"3.2\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"500 ML CONTAINER\";i:3;s:3:\"126\";i:4;s:4:\"1000\";i:5;s:7:\"3900.00\";i:6;s:7:\"3900.00\";i:7;N;i:8;s:7:\"3900.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"3960.00\";i:6;s:7:\"3960.00\";i:7;N;i:8;s:7:\"3960.00\";i:9;s:3:\"6.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"forwarding\";i:3;s:0:\"\";i:4;s:2:\"18\";i:5;s:6:\"180.00\";i:6;s:6:\"180.00\";i:7;N;i:8;s:6:\"180.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '63464', '3405', '63464', '2023-04-03', 2, 'retail', 'Partial', '63464', '0', 0, 0, 0, ''),
(22, 'siva caterings', '26', '9966744021', 'ap', 'kakinada', 'kakinada', '', '533532', '', 'By Road', '', 'In', '0', 'a:18:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"wonder tissue\";i:3;s:3:\"144\";i:4;s:2:\"80\";i:5;s:2:\"58\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"4640.00\";i:9;s:2:\"58\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"tissue\";i:3;N;i:4;s:3:\"100\";i:5;s:2:\"23\";i:6;N;i:7;N;i:8;s:7:\"2300.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER ROLL BUTTER\";i:3;s:2:\"79\";i:4;s:2:\"60\";i:5;s:2:\"60\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:23:\"PAPER ROLL BUTTER SMALL\";i:3;s:2:\"80\";i:4;s:3:\"120\";i:5;s:2:\"33\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3960.00\";i:9;s:2:\"33\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"7 tubo\";i:3;N;i:4;s:2:\"20\";i:5;s:3:\"150\";i:6;N;i:7;N;i:8;s:7:\"3000.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"9tubo\";i:3;N;i:4;s:2:\"20\";i:5;s:3:\"100\";i:6;N;i:7;N;i:8;s:7:\"2000.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"180 tubo\";i:3;N;i:4;s:2:\"20\";i:5;s:2:\"90\";i:6;N;i:7;N;i:8;s:7:\"1800.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"wooden spoon\";i:3;N;i:4;s:2:\"10\";i:5;s:2:\"90\";i:6;s:2:\"90\";i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"WOODEN SPOON \";i:3;s:2:\"59\";i:4;s:2:\"10\";i:5;s:3:\"100\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"nice thermacol\";i:3;s:3:\"141\";i:4;s:2:\"10\";i:5;s:2:\"30\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"round bowl\";i:3;N;i:4;s:2:\"20\";i:5;s:2:\"30\";i:6;N;i:7;N;i:8;s:6:\"600.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIG SPOON\";i:3;s:2:\"61\";i:4;s:2:\"20\";i:5;s:2:\"28\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"560.00\";i:9;s:2:\"28\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"7THERMACOL\";i:3;N;i:4;s:2:\"20\";i:5;s:2:\"45\";i:6;N;i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"9THERMACOL\";i:3;N;i:4;s:2:\"20\";i:5;s:2:\"35\";i:6;s:2:\"35\";i:7;N;i:8;s:6:\"700.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"SOUPSPOON\";i:3;N;i:4;s:2:\"30\";i:5;s:2:\"65\";i:6;N;i:7;N;i:8;s:7:\"1950.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"FORWARDING\";i:3;N;i:4;s:1:\"6\";i:5;s:2:\"25\";i:6;N;i:7;N;i:8;s:6:\"150.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"OLDBALANCE\";i:3;N;i:4;s:0:\"\";i:5;s:0:\"\";i:6;N;i:7;N;i:8;s:4:\"4650\";i:9;s:0:\"\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', 'NaN', 'NaN', '33010', '2023-04-04', 0, 'retail', 'Partial', '', '', 0, 0, 0, ''),
(28, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', 'By Road', '', 'In', '74164', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"DUSTBIN COVER EXLARGE\";i:3;s:2:\"77\";i:4;s:2:\"10\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '10', '1000', '2023-04-07', 1, 'retail', 'Full', '1000', '0', 0, 0, 0, ''),
(42, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '141764', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"30\";i:5;s:7:\"1875.00\";i:6;s:7:\"1875.00\";i:7;N;i:8;s:7:\"1875.00\";i:9;s:4:\"62.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"10.15STARDCUT\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2450.00\";i:6;s:7:\"2450.00\";i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"12.18STARDCUT\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2450.00\";i:6;s:7:\"2450.00\";i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3625.00\";i:6;s:7:\"3625.00\";i:7;N;i:8;s:7:\"3625.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '10400', '105', '10400', '2023-04-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(43, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '141764', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"59770.00\";i:6;s:8:\"59770.00\";i:7;N;i:8;s:8:\"59770.00\";i:9;s:5:\"59770\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"oldbalance\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"111789.00\";i:6;s:9:\"111789.00\";i:7;N;i:8;s:9:\"111789.00\";i:9;s:6:\"111789\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '171559', 'NaN', '171559', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(44, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '141764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"164145.00\";i:6;s:9:\"164145.00\";i:7;N;i:8;s:9:\"164145.00\";i:9;s:6:\"164145\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '164145', 'NaN', '164145', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(45, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '141764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"151583.00\";i:6;s:9:\"151583.00\";i:7;N;i:8;s:9:\"151583.00\";i:9;s:6:\"151583\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '151583', 'NaN', '151583', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(46, 'johndisposables', '29', '9701449080', 'ap', 'kovvur', 'malakpalli', '0', '', '', 'By Road', '', 'In', '141764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"87564.00\";i:6;s:8:\"87564.00\";i:7;N;i:8;s:8:\"87564.00\";i:9;s:5:\"87564\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '87564', 'NaN', '87564', '2023-04-12', 1, 'retail', 'Partial', '', '12564', 0, 0, 0, ''),
(47, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-12', 1, 'retail', '', '50000', '101583', 45, 0, 0, ''),
(48, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '191764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"16450.00\";i:6;s:8:\"16450.00\";i:7;N;i:8;s:8:\"16450.00\";i:9;s:5:\"16450\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '16450', 'NaN', '16450', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(49, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '191764', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 65ML\";i:3;s:0:\"\";i:4;s:3:\"220\";i:5;s:7:\"3190.00\";i:6;s:7:\"3190.00\";i:7;N;i:8;s:7:\"3190.00\";i:9;s:4:\"14.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 210ML\";i:3;s:2:\"36\";i:4;s:3:\"100\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"34\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"oldbalance\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"128210.00\";i:6;s:9:\"128210.00\";i:7;N;i:8;s:9:\"128210.00\";i:9;s:6:\"128210\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '134800', 'NaN', '134800', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(50, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-12', 1, 'retail', '', '40000', '124145', 44, 0, 0, ''),
(51, 'ramu ', '31', '9912322748', 'ap', 'rajahmundry', 'namavaram', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"5000.00\";i:6;s:7:\"5000.00\";i:7;N;i:8;s:7:\"5000.00\";i:9;s:4:\"5000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5000', 'NaN', '5000', '2023-04-12', 1, 'retail', 'Partial', '', '5000', 0, 0, 0, ''),
(52, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"57206.00\";i:6;s:8:\"57206.00\";i:7;N;i:8;s:8:\"57206.00\";i:9;s:5:\"57206\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '57206', 'NaN', '57206', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(53, 'srinivas', '33', '9390555678', 'ap', 'ravulapalem', 'ravulapalem', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"6700.00\";i:6;s:7:\"6700.00\";i:7;N;i:8;s:7:\"6700.00\";i:9;s:4:\"6700\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6700', 'NaN', '6700', '2023-04-12', 1, 'retail', 'Partial', '', '6700', 0, 0, 0, ''),
(54, 'prasad', '34', '9059907060', 'ap', 'rajahmundry', 'koukonda', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"36920.00\";i:6;s:8:\"36920.00\";i:7;N;i:8;s:8:\"36920.00\";i:9;s:5:\"36920\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '36920', 'NaN', '36920', '2023-04-12', 1, 'retail', 'Partial', '', '36920', 0, 0, 0, ''),
(55, 'sriram', '35', '9676422226', 'ap', 'korukonda', 'korukonda', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"27320.00\";i:6;s:8:\"27320.00\";i:7;N;i:8;s:8:\"27320.00\";i:9;s:5:\"27320\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '27320', 'NaN', '27320', '2023-04-12', 1, 'retail', 'Partial', '', '11320', 0, 0, 0, ''),
(56, 'pavan', '36', '9966887075', 'ap', 'seethanagaram', 'seethanagaram', '0', '', '', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"12240.00\";i:6;s:8:\"12240.00\";i:7;N;i:8;s:8:\"12240.00\";i:9;s:5:\"12240\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '12240', 'NaN', '12240', '2023-04-12', 1, 'retail', 'Partial', '', '12240', 0, 0, 0, ''),
(57, 'raja', '37', '9866636162', 'ap', 'ramachandrapuram', 'ramachandrapuram', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"6480.00\";i:6;s:7:\"6480.00\";i:7;N;i:8;s:7:\"6480.00\";i:9;s:4:\"6480\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6480', 'NaN', '6480', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(58, 'prasad', '38', '6302999343', 'ap', 'peddapuram', 'peddapuram', '0', '', '', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"56054.00\";i:6;s:8:\"56054.00\";i:7;N;i:8;s:8:\"56054.00\";i:9;s:5:\"56054\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '56054', 'NaN', '56054', '2023-04-12', 1, 'retail', 'Partial', '', '46054', 0, 0, 0, ''),
(59, 'sairam general stores', '39', '9949020867', 'ap', 'peddapuram', 'peddapuram', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"19125.00\";i:6;s:8:\"19125.00\";i:7;N;i:8;s:8:\"19125.00\";i:9;s:5:\"19125\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '19125', 'NaN', '19125', '2023-04-12', 1, 'retail', 'Partial', '', '9125', 0, 0, 0, ''),
(60, 'vk biryani', '40', '9963346206', 'ap', 'rajahmundry', 'rajahmundry', '0', '', '', 'By Road', '', 'In', '231764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"43170\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"43170.00\";i:6;s:8:\"43170.00\";i:7;N;i:8;s:8:\"43170.00\";i:9;s:5:\"43170\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '43170', 'NaN', '43170', '2023-04-12', 1, 'retail', 'Partial', '', '18170', 0, 0, 0, ''),
(61, 'vk biryani', '40', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-12', 1, 'retail', '', '5000', '38170', 60, 0, 0, ''),
(62, 'deviganesh general stores', '41', '9989179980', 'ap', 'amalapuram', 'amalapuram', '0', '', '37AKLPA5993P1ZB', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"132965.00\";i:6;s:9:\"132965.00\";i:7;N;i:8;s:9:\"132965.00\";i:9;s:6:\"132965\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '132965', 'NaN', '132965', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(63, 'MAHESH', '42', '9390055359', 'AP', 'GOKAVARAM', 'INDUKURUPETA', '0', '', '', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:4:\"0.00\";i:6;s:4:\"0.00\";i:7;N;i:8;s:4:\"0.00\";i:9;s:5:\"84500\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '0', 'NaN', '0', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 0, 0, ''),
(64, 'SRINU RANGAMPETA', '43', '9989367165', 'AP', 'RAJANAGARAM', 'RANGAMPETA', '0', '', '', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:5:\"43165\";i:6;s:8:\"43165.00\";i:7;N;i:8;s:8:\"43165.00\";i:9;s:5:\"43165\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '43165', 'NaN', '43165', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(65, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"5000.00\";i:6;s:7:\"5000.00\";i:7;N;i:8;s:7:\"5000.00\";i:9;s:4:\"5000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5000', 'NaN', '5000', '2023-04-12', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(66, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '236764', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"60\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"TISSUE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"648.00\";i:6;s:6:\"648.00\";i:7;N;i:8;s:6:\"648.00\";i:9;s:4:\"64.8\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '4248', '70', '4248', '2023-04-13', 1, 'wholesale', 'Full', '4248', '0', 0, 0, 0, ''),
(67, 'MMPLASTICS', '45', '9392102005', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '521225', '37ARSPK5624K1Z6', 'By Road', '', 'Out', '236764', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"210ML SILVER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"3960.00\";i:6;s:7:\"3960.00\";i:7;N;i:8;s:7:\"3960.00\";i:9;s:4:\"1980\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 250ML\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"4300.00\";i:6;s:7:\"4300.00\";i:7;N;i:8;s:7:\"4300.00\";i:9;s:4:\"2150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"SILVER COIL NO 72\";i:3;s:3:\"134\";i:4;s:2:\"50\";i:5;s:7:\"7457.50\";i:6;s:7:\"7457.50\";i:7;N;i:8;s:7:\"7457.50\";i:9;s:6:\"149.15\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:2:\"80\";i:5;s:6:\"480.00\";i:6;s:6:\"480.00\";i:7;N;i:8;s:6:\"480.00\";i:9;s:1:\"6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"1000 ML RECTANGULAR\";i:3;s:3:\"129\";i:4;s:3:\"100\";i:5;s:7:\"2419.00\";i:6;s:7:\"2419.00\";i:7;N;i:8;s:7:\"2419.00\";i:9;s:5:\"24.19\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '18616.5', '234', '18616.5', '2023-04-13', 1, 'wholesale', 'Full', '18616.5', '0', 0, 0, 0, ''),
(68, 'SRIMETERO AGENCIES', '47', '8019763663', 'AP', 'VIJAYAWADA', 'APPARAO STREET', '0', '', '37AAHHK1137P1ZV', 'By Road', '', 'Out', '236764', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 27.30\";i:3;s:0:\"\";i:4;s:3:\"500\";i:5;s:7:\"6000.00\";i:6;s:7:\"6000.00\";i:7;N;i:8;s:7:\"6000.00\";i:9;s:2:\"12\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6000', '500', '6000', '2023-04-13', 1, 'wholesale', 'Full', '6000', '0', 0, 0, 0, ''),
(69, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '0', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"40\";i:5;s:2:\"80\";i:6;s:2:\"80\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:2:\"80\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"TIFFNPLATES\";i:3;N;i:4;s:2:\"10\";i:5;s:4:\"57.6\";i:6;N;i:7;N;i:8;s:6:\"576.00\";i:9;s:4:\"57.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '137.6', '50', '3776', '2023-04-13', 0, 'wholesale', 'Full', '3776', '0', 0, 0, 0, ''),
(70, 'GSL', '49', '7981152163', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '533103', '', 'By Road', '', 'In', '236764', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:2:\"40\";i:5;s:7:\"2520.00\";i:6;s:7:\"2520.00\";i:7;N;i:8;s:7:\"2520.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"85DIALID\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1400.00\";i:6;s:7:\"1400.00\";i:7;N;i:8;s:7:\"1400.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"STRAWS\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:6:\"570.00\";i:6;s:6:\"570.00\";i:7;N;i:8;s:6:\"570.00\";i:9;s:2:\"19\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"DUSTBIN COVER EXLARGE\";i:3;s:2:\"77\";i:4;s:2:\"10\";i:5;s:7:\"1100.00\";i:6;s:7:\"1100.00\";i:7;N;i:8;s:7:\"1100.00\";i:9;s:3:\"110\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"400 ML CONTAINER\";i:3;s:3:\"127\";i:4;s:4:\"1500\";i:5;s:7:\"5850.00\";i:6;s:7:\"5850.00\";i:7;N;i:8;s:7:\"5850.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11440', '1600', '11440', '2023-04-13', 1, 'retail', 'Full', '11440', '0', 0, 0, 0, ''),
(71, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '0', '', '', 'By Road', '', 'In', '248204', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"BUFFY MULTY SQUARE\";i:3;s:2:\"24\";i:4;s:2:\"10\";i:5;s:7:\"5250.00\";i:6;s:7:\"5250.00\";i:7;N;i:8;s:7:\"5250.00\";i:9;s:3:\"525\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"GLASS\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"4400.00\";i:6;s:7:\"4400.00\";i:7;N;i:8;s:7:\"4400.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"SITTING MULTY SMALL\";i:3;s:0:\"\";i:4;s:4:\"1000\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:3:\"1.8\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"0LDBALANCE\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"15543.00\";i:6;s:8:\"15543.00\";i:7;N;i:8;s:8:\"15543.00\";i:9;s:5:\"15543\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '26993', 'NaN', '26993', '2023-04-13', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(72, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-13', 1, 'retail', '', '30000', '27206', 52, 0, 0, ''),
(73, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '278204', 'a:37:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"THUMSUP GLASS\";i:3;s:2:\"90\";i:4;s:3:\"390\";i:5;s:7:\"9360.00\";i:6;s:7:\"9360.00\";i:7;N;i:8;s:7:\"9360.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WINEGL;ASS\";i:3;s:0:\"\";i:4;s:3:\"240\";i:5;s:7:\"6240.00\";i:6;s:7:\"6240.00\";i:7;N;i:8;s:7:\"6240.00\";i:9;s:2:\"26\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"150\";i:5;s:7:\"9600.00\";i:6;s:7:\"9600.00\";i:7;N;i:8;s:7:\"9600.00\";i:9;s:2:\"64\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:23:\"1000 ML CONTAINER WHITE\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"3960.00\";i:6;s:7:\"3960.00\";i:7;N;i:8;s:7:\"3960.00\";i:9;s:3:\"6.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:23:\"1000 ML CONTAINER BLACK\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"4020.00\";i:6;s:7:\"4020.00\";i:7;N;i:8;s:7:\"4020.00\";i:9;s:3:\"6.7\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:4:\"1000\";i:5;s:7:\"3250.00\";i:6;s:7:\"3250.00\";i:7;N;i:8;s:7:\"3250.00\";i:9;s:4:\"3.25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"6.8SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"7.9 SILVER\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1100.00\";i:6;s:7:\"1100.00\";i:7;N;i:8;s:7:\"1100.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8RADHA\";i:3;s:0:\"\";i:4;s:2:\"90\";i:5;s:7:\"5625.00\";i:6;s:7:\"5625.00\";i:7;N;i:8;s:7:\"5625.00\";i:9;s:4:\"62.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"10.12LDCOLOUR\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1650.00\";i:6;s:7:\"1650.00\";i:7;N;i:8;s:7:\"1650.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"13.16LD COLOUR\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1650.00\";i:6;s:7:\"1650.00\";i:7;N;i:8;s:7:\"1650.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"KIRANACOVERS\";i:3;s:0:\"\";i:4;s:3:\"125\";i:5;s:8:\"18375.00\";i:6;s:8:\"18375.00\";i:7;N;i:8;s:8:\"18375.00\";i:9;s:3:\"147\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"SITTING MULTY SMALL\";i:3;s:2:\"25\";i:4;s:4:\"4000\";i:5;s:7:\"7400.00\";i:6;s:7:\"7400.00\";i:7;N;i:8;s:7:\"7400.00\";i:9;s:4:\"1.85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"2.3 LOCK\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1150.00\";i:6;s:7:\"1150.00\";i:7;N;i:8;s:7:\"1150.00\";i:9;s:3:\"230\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;N;i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"TEA GLASS 100ML\";i:3;s:2:\"32\";i:4;s:3:\"168\";i:5;s:7:\"4536.00\";i:6;s:7:\"4536.00\";i:7;N;i:8;s:7:\"4536.00\";i:9;s:2:\"27\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 85ML\";i:3;s:0:\"\";i:4;s:3:\"180\";i:5;s:7:\"4230.00\";i:6;s:7:\"4230.00\";i:7;N;i:8;s:7:\"4230.00\";i:9;s:4:\"23.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"THREAD CONES\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"650.00\";i:6;s:6:\"650.00\";i:7;N;i:8;s:6:\"650.00\";i:9;s:4:\"32.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"JOKER STRAW\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"3000.00\";i:6;s:7:\"3000.00\";i:7;N;i:8;s:7:\"3000.00\";i:9;s:3:\"300\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:22:\"TIFFIN PLATES SILVER 8\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"2400.00\";i:6;s:7:\"2400.00\";i:7;N;i:8;s:7:\"2400.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:22:\"TIFFIN PLATES SILVER 9\";i:3;s:2:\"54\";i:4;s:2:\"80\";i:5;s:7:\"2240.00\";i:6;s:7:\"2240.00\";i:7;N;i:8;s:7:\"2240.00\";i:9;s:2:\"28\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"TIFFINPLATESSILVER10\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"2320.00\";i:6;s:7:\"2320.00\";i:7;N;i:8;s:7:\"2320.00\";i:9;s:2:\"29\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:23;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"TIFFIN PLATES 8\";i:3;s:2:\"51\";i:4;s:3:\"100\";i:5;s:6:\"650.00\";i:6;s:6:\"650.00\";i:7;N;i:8;s:6:\"650.00\";i:9;s:3:\"6.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:24;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TIFFINPLATES9\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"7.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:25;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 INT\";i:3;s:3:\"147\";i:4;s:2:\"25\";i:5;s:7:\"3700.00\";i:6;s:7:\"3700.00\";i:7;N;i:8;s:7:\"3700.00\";i:9;s:3:\"148\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:26;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16CLOTH\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1850.00\";i:6;s:7:\"1850.00\";i:7;N;i:8;s:7:\"1850.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:27;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"10.12CLOTH\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1850.00\";i:6;s:7:\"1850.00\";i:7;N;i:8;s:7:\"1850.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:28;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"13.16 RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:29;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"10.12 RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1350.00\";i:6;s:7:\"1350.00\";i:7;N;i:8;s:7:\"1350.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:30;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6PP150\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1650.00\";i:6;s:7:\"1650.00\";i:7;N;i:8;s:7:\"1650.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:31;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"5.6PP80\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1700.00\";i:6;s:7:\"1700.00\";i:7;N;i:8;s:7:\"1700.00\";i:9;s:3:\"170\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:32;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"6.9150\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:33;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"6.980\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1650.00\";i:6;s:7:\"1650.00\";i:7;N;i:8;s:7:\"1650.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:34;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"PINSPOON\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"2000.00\";i:6;s:7:\"2000.00\";i:7;N;i:8;s:7:\"2000.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:35;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"7.10PP 150\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:6:\"640.00\";i:6;s:6:\"640.00\";i:7;N;i:8;s:6:\"640.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:36;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"HAMALI CHARGES\";i:3;s:0:\"\";i:4;s:2:\"32\";i:5;s:6:\"416.00\";i:6;s:6:\"416.00\";i:7;N;i:8;s:6:\"416.00\";i:9;s:2:\"13\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '116312', '8399', '116312', '2023-04-13', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(74, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '30000', '2023-04-14', 1, 'retail', '', '8000', '19206', 52, 0, 0, ''),
(75, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '286204', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"13.16 DLXCLOTH\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"7400.00\";i:6;s:7:\"7400.00\";i:7;N;i:8;s:7:\"7400.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"28\";i:5;s:7:\"6020.00\";i:6;s:7:\"6020.00\";i:7;N;i:8;s:7:\"6020.00\";i:9;s:3:\"215\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"BEND STRAW\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:6:\"950.00\";i:6;s:6:\"950.00\";i:7;N;i:8;s:6:\"950.00\";i:9;s:2:\"19\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '14370', '118', '14370', '2023-04-14', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(76, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '286204', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:0:\"\";i:4;s:4:\"8000\";i:5;s:7:\"5440.00\";i:6;s:7:\"5440.00\";i:7;N;i:8;s:7:\"5440.00\";i:9;s:4:\"0.68\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"13.16DLX\";i:3;s:0:\"\";i:4;s:3:\"10 \";i:5;s:6:\"980.00\";i:6;s:6:\"980.00\";i:7;N;i:8;s:6:\"980.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6420', '8010', '6420', '2023-04-14', 1, 'retail', 'Full', '6420', '0', 0, 0, 0, ''),
(77, 'MAHESHPACKING', '51', '7997878181', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37CQPPD2220J1ZW', 'By Road', '', 'Out', '0', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"180\";i:5;s:2:\"24\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"4320.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"SUTALI\";i:3;N;i:4;s:3:\"150\";i:5;s:1:\"7\";i:6;N;i:7;N;i:8;s:7:\"1050.00\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"SEALING MACHINE\";i:3;s:2:\"89\";i:4;s:2:\"10\";i:5;s:3:\"350\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:3:\"350\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"BUFFY GREEN\";i:3;s:2:\"21\";i:4;s:3:\"120\";i:5;s:4:\"12.5\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:4:\"12.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '393.5', '460', '10370', '2023-04-14', 0, 'retail', 'Full', '10370', '0', 0, 0, 0, ''),
(78, 'MAHESHPACKING', '51', '7997878181', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37CQPPD2220J1ZW', 'By Road', '', 'Out', '286204', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"180\";i:5;s:7:\"4320.00\";i:6;s:7:\"4320.00\";i:7;N;i:8;s:7:\"4320.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"SUTALI\";i:3;s:0:\"\";i:4;s:3:\"150\";i:5;s:7:\"1050.00\";i:6;s:7:\"1050.00\";i:7;N;i:8;s:7:\"1050.00\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"SEALING MACHINE\";i:3;s:2:\"89\";i:4;s:2:\"10\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:3:\"350\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"BUFFY GREEN\";i:3;s:2:\"21\";i:4;s:3:\"120\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:4:\"12.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '10370', '460', '10370', '2023-04-14', 1, 'retail', 'Full', '10370', '0', 0, 0, 0, ''),
(79, 'DIVYASAI AGENCIES', '52', '9848134508', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37AKHPK3062H1Z6', 'By Road', '', 'Out', '286204', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"400 ML CONTAINER\";i:3;s:3:\"127\";i:4;s:1:\"2\";i:5;s:7:\"2720.00\";i:6;s:7:\"2720.00\";i:7;N;i:8;s:7:\"2720.00\";i:9;s:4:\"1360\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 25.25\";i:3;s:2:\"87\";i:4;s:3:\"100\";i:5;s:6:\"486.00\";i:6;s:6:\"486.00\";i:7;N;i:8;s:6:\"486.00\";i:9;s:4:\"4.86\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3206', '102', '3206', '2023-04-14', 1, 'WHOLESALE', 'Full', '3206', '0', 0, 0, 0, ''),
(80, 'SAIRAM ENTERPRICES', '53', '9502535746', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37ACIFS6230L1ZQ', 'By Road', '', 'Out', '286204', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:2:\"15\";i:5;s:8:\"15750.00\";i:6;s:8:\"15750.00\";i:7;N;i:8;s:8:\"15750.00\";i:9;s:4:\"1050\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"350 FANCY\";i:3;s:2:\"94\";i:4;s:2:\"1O\";i:5;s:7:\"1150.00\";i:6;s:7:\"1150.00\";i:7;N;i:8;s:7:\"1150.00\";i:9;s:4:\"1150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"250 PET CONTAINER\";i:3;s:2:\"98\";i:4;s:2:\"12\";i:5;s:8:\"12600.00\";i:6;s:8:\"12600.00\";i:7;N;i:8;s:8:\"12600.00\";i:9;s:4:\"1050\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '29500', '28', '29500', '2023-04-14', 1, 'WHOLESALE', 'Full', '29500', '0', 0, 0, 0, ''),
(81, 'danveer', '', '49499896595', '', '', '', '0', '', '', 'By Road', '', 'In', '286204', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"350 FANCY\";i:3;s:2:\"94\";i:4;s:3:\"100\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '100', '1000', '2023-04-14', 1, 'retail', 'Full', '1000', '0', 0, 0, 0, ''),
(82, 'SRINU RANGAMPETA', '43', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-14', 1, 'retail', '', '12000', '31165', 64, 0, 0, ''),
(83, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-15', 1, 'retail', '', '40000', '94800', 49, 0, 0, ''),
(84, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '339204', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"15400.00\";i:6;s:8:\"15400.00\";i:7;N;i:8;s:8:\"15400.00\";i:9;s:5:\"15400\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '15400', 'NaN', '15400', '2023-04-15', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(85, 'adhityadryfruits', '55', '9618148459', 'ap', 'anaparthy', 'anaparthy', '0', '', '', 'By Road', '', 'In', '0', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16 covers\";i:3;s:3:\"147\";i:4;s:2:\"15\";i:5;s:3:\"145\";i:6;s:0:\"\";i:7;N;i:8;s:7:\"2175.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"STAND POUCH\";i:3;N;i:4;s:3:\"5.2\";i:5;s:3:\"260\";i:6;N;i:7;N;i:8;s:7:\"1300.00\";i:9;s:3:\"260\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"CHERRYCUP\";i:3;N;i:4;s:3:\"100\";i:5;s:3:\"1.8\";i:6;N;i:7;N;i:8;s:6:\"180.00\";i:9;s:3:\"1.8\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;N;i:4;s:1:\"1\";i:5;s:2:\"25\";i:6;N;i:7;N;i:8;s:5:\"25.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '431.8', '121', '3680', '2023-04-15', 0, '', 'Partial', '', '0', 0, 0, 0, ''),
(86, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '50000', '2023-04-17', 1, 'retail', '', '50000', '51583', 45, 0, 0, ''),
(87, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '389204', 'a:31:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"210\";i:5;s:8:\"13230.00\";i:6;s:8:\"13230.00\";i:7;N;i:8;s:8:\"13230.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12JD\";i:3;s:0:\"\";i:4;s:2:\"90\";i:5;s:7:\"5940.00\";i:6;s:7:\"5940.00\";i:7;N;i:8;s:7:\"5940.00\";i:9;s:2:\"66\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16JD\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"5320.00\";i:6;s:7:\"5320.00\";i:7;N;i:8;s:7:\"5320.00\";i:9;s:3:\"133\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"STRETCH FILM\";i:3;s:2:\"78\";i:4;s:2:\"27\";i:5;s:7:\"4455.00\";i:6;s:7:\"4455.00\";i:7;N;i:8;s:7:\"4455.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;N;i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"7THERMACOL\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"920.00\";i:6;s:6:\"920.00\";i:7;N;i:8;s:6:\"920.00\";i:9;s:2:\"46\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"WATERGLASS HEAVY\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"OZONE BOWL\";i:3;s:0:\"\";i:4;s:3:\"120\";i:5;s:7:\"4200.00\";i:6;s:7:\"4200.00\";i:7;N;i:8;s:7:\"4200.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"6.9 RADHA\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:7:\"6262.50\";i:6;s:7:\"6262.50\";i:7;N;i:8;s:7:\"6262.50\";i:9;s:4:\"83.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"10FANCY TIFFN\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1080.00\";i:6;s:7:\"1080.00\";i:7;N;i:8;s:7:\"1080.00\";i:9;s:2:\"54\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TRADE COVER6.9\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"850.00\";i:6;s:6:\"850.00\";i:7;N;i:8;s:6:\"850.00\";i:9;s:2:\"85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;N;i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"TRADECOVER 7.10\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"950.00\";i:6;s:6:\"950.00\";i:7;N;i:8;s:6:\"950.00\";i:9;s:2:\"95\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"16.20 DLX\";i:3;s:2:\"83\";i:4;s:2:\"10\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"18\";i:5;s:7:\"3420.00\";i:6;s:7:\"3420.00\";i:7;N;i:8;s:7:\"3420.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"10.12DLX\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:3:\"125\";i:5;s:8:\"18125.00\";i:6;s:8:\"18125.00\";i:7;N;i:8;s:8:\"18125.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"8.10COLOUR\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1550.00\";i:6;s:7:\"1550.00\";i:7;N;i:8;s:7:\"1550.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"6.8LOCK\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"covers 10.12\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1250.00\";i:6;s:7:\"1250.00\";i:7;N;i:8;s:7:\"1250.00\";i:9;s:3:\"250\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.8 CHEFF\";i:3;s:0:\"\";i:4;s:4:\"32.5\";i:5;s:7:\"8000.00\";i:6;s:7:\"8000.00\";i:7;N;i:8;s:7:\"8000.00\";i:9;s:3:\"250\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"8.10 80\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:23;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"6.9LD\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"330.00\";i:6;s:6:\"330.00\";i:7;N;i:8;s:6:\"330.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:24;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"5.7LD\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"340.00\";i:6;s:6:\"340.00\";i:7;N;i:8;s:6:\"340.00\";i:9;s:3:\"170\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:25;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"20.26\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"325.00\";i:6;s:6:\"325.00\";i:7;N;i:8;s:6:\"325.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:26;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"24.30\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"550.00\";i:6;s:6:\"550.00\";i:7;N;i:8;s:6:\"550.00\";i:9;s:3:\"110\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:27;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"4.6150\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1700.00\";i:6;s:7:\"1700.00\";i:7;N;i:8;s:7:\"1700.00\";i:9;s:3:\"170\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:28;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"9.12M.DLX\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3700.00\";i:6;s:7:\"3700.00\";i:7;N;i:8;s:7:\"3700.00\";i:9;s:2:\"74\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:29;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16M.DLX\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3625.00\";i:6;s:7:\"3625.00\";i:7;N;i:8;s:7:\"3625.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:30;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:2:\"27\";i:5;s:6:\"270.00\";i:6;s:6:\"270.00\";i:7;N;i:8;s:6:\"270.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '96792.5', '1023', '96792.5', '2023-04-17', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(88, 'RAJU', '56', '8919278679', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '', '', 'By Road', '', 'In', '389204', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"17466.00\";i:6;s:8:\"17466.00\";i:7;N;i:8;s:8:\"17466.00\";i:9;s:5:\"17466\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '17466', 'NaN', '17466', '2023-04-17', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(89, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '418754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"37911.00\";i:6;s:8:\"37911.00\";i:7;N;i:8;s:8:\"37911.00\";i:9;s:5:\"37911\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '37911', 'NaN', '37911', '2023-04-17', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(90, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '40000', '2023-04-17', 1, 'retail', '', '29550', '94595', 44, 0, 0, ''),
(91, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '418754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:4:\"3400\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3400', 'NaN', '3400', '2023-04-18', 1, 'retail', 'Partial', '', '0', 0, 1, 0, '');
INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `hamaliCharges`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `pendingAmount`, `refId`, `clearanceStatus`, `returnStatus`, `custGivenAmount`) VALUES
(92, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '100000', '2023-04-18', 1, 'retail', '', '12000', '39583', 45, 0, 0, ''),
(93, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '430754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"70140.00\";i:6;s:8:\"70140.00\";i:7;N;i:8;s:8:\"70140.00\";i:9;s:5:\"70140\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '70140', 'NaN', '70140', '2023-04-18', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(94, 'sattibabu', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-18', 1, 'retail', '', '60000', '111559', 43, 0, 0, ''),
(95, 'johndisposables', '29', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-18', 1, 'retail', '', '25000', '62564', 46, 0, 0, ''),
(96, 'SRINIVASA KIRANA', '23', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-19', 1, 'retail', '', '6000', '0', 19, 0, 0, ''),
(97, 'vk biryani', '40', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '5000', '2023-04-19', 1, 'retail', '', '10000', '28170', 60, 0, 0, ''),
(98, 'DIVYASAI AGENCIES', '52', '9848134508', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37AKHPK3062H1Z6', 'By Road', '', 'Out', '531754', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"5\";i:5;s:7:\"6955.00\";i:6;s:7:\"6955.00\";i:7;N;i:8;s:7:\"6955.00\";i:9;s:4:\"1391\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"1200MLAPPLE\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:7:\"5604.00\";i:6;s:7:\"5604.00\";i:7;N;i:8;s:7:\"5604.00\";i:9;s:4:\"1401\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"Paper Glass\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:7:\"3246.00\";i:6;s:7:\"3246.00\";i:7;N;i:8;s:7:\"3246.00\";i:9;s:4:\"1082\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"150 ML HANDLE CUP\";i:3;s:3:\"122\";i:4;s:1:\"4\";i:5;s:7:\"4328.00\";i:6;s:7:\"4328.00\";i:7;N;i:8;s:7:\"4328.00\";i:9;s:4:\"1082\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"1000 ML RECTANGULAR\";i:3;s:3:\"129\";i:4;s:1:\"2\";i:5;s:7:\"3622.00\";i:6;s:7:\"3622.00\";i:7;N;i:8;s:7:\"3622.00\";i:9;s:4:\"1811\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '23755', '18', '23755', '2023-04-20', 1, 'wholesale', 'Full', '23755', '0', 0, 0, 0, ''),
(99, 'MAA NAGENCHI ENTERPRICES', '57', '9849250754', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37NTXPS2292R1ZW', 'By Road', 'PAPTTT', 'Out', '531754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 27.30\";i:3;s:2:\"86\";i:4;s:1:\"5\";i:5;s:7:\"2265.00\";i:6;s:7:\"2265.00\";i:7;N;i:8;s:7:\"2265.00\";i:9;s:3:\"453\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"TISSUE25.25\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"1458.00\";i:6;s:7:\"1458.00\";i:7;N;i:8;s:7:\"1458.00\";i:9;s:3:\"729\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3723', '7', '3723', '2023-04-20', 1, 'wholesale', 'Full', '3723', '0', 0, 0, 0, ''),
(100, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '37AEFPD4031F1Z1', 'By Road', '', 'Out', '531754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:19:\"SUPERPLASTIC COVERS\";i:3;s:0:\"\";i:4;s:2:\"90\";i:5;s:6:\"8100.0\";i:6;s:6:\"8100.0\";i:7;N;i:8;s:6:\"8100.0\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TEAGLASS\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"1458.00\";i:6;s:7:\"1458.00\";i:7;N;i:8;s:7:\"1458.00\";i:9;s:3:\"729\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '9558', '92', '9558', '2023-04-20', 1, 'wholesale', 'Full', '9558', '0', 0, 0, 0, ''),
(101, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '531754', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"80 DIA LID\";i:3;s:2:\"95\";i:4;s:4:\"8100\";i:5;s:7:\"4050.00\";i:6;s:7:\"4050.00\";i:7;N;i:8;s:7:\"4050.00\";i:9;s:3:\"0.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"250 PETGLASS\";i:3;s:0:\"\";i:4;s:4:\"1000\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:1:\"4\";i:10;s:1:\"0\";i:11;s:4:\"1000\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"375HINGED\";i:3;s:0:\"\";i:4;s:4:\"1500\";i:5;s:7:\"4500.00\";i:6;s:7:\"4500.00\";i:7;N;i:8;s:7:\"4500.00\";i:9;s:1:\"3\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"TIFFIN PLATE FANCY 10\";i:3;s:3:\"100\";i:4;s:1:\"2\";i:5;s:7:\"2030.00\";i:6;s:7:\"2030.00\";i:7;N;i:8;s:7:\"2030.00\";i:9;s:4:\"1015\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '14580', '10602', '14580', '2023-04-20', 1, 'wholesale', 'Full', '14580', '0', 0, 0, 0, ''),
(102, 'sujicaterings', '50', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-20', 1, 'retail', '', '10000', '16993', 71, 0, 0, ''),
(103, 'SRIMAHALAXMI DISPOSABLES', '59', '9963933592', 'AP', 'KADIUM', 'DULLA', '0', '', '', 'By Road', '', 'In', '541754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:4:\"0.00\";i:6;s:4:\"0.00\";i:7;N;i:8;s:4:\"0.00\";i:9;s:5:\"87023\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '0', 'NaN', '0', '2023-04-20', 1, 'retail', 'Partial', '', '0', 0, 0, 0, ''),
(104, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '541754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16 covers\";i:3;s:3:\"147\";i:4;s:3:\"450\";i:5;s:8:\"40500.00\";i:6;s:8:\"40500.00\";i:7;N;i:8;s:8:\"40500.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"13.16DLX\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"7290.00\";i:6;s:7:\"7290.00\";i:7;N;i:8;s:7:\"7290.00\";i:9;s:4:\"3645\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '47790', '452', '47790', '2023-04-20', 1, 'wholesale', 'Full', '47790', '0', 0, 0, 0, ''),
(105, 'SRIMETERO', '47', '8019763663', 'AP', 'VIJAYAWADA', 'APPARAO STREET', '0', '', '37AAHHK1137P1ZV', 'By Road', '', 'Out', '541754', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:1:\"2\";i:5;s:7:\"2000.00\";i:6;s:7:\"2000.00\";i:7;N;i:8;s:7:\"2000.00\";i:9;s:4:\"1000\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"PAPERSTRAW\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"2500.00\";i:6;s:7:\"2500.00\";i:7;N;i:8;s:7:\"2500.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"PAPERGLASS\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"660.00\";i:6;s:6:\"660.00\";i:7;N;i:8;s:6:\"660.00\";i:9;s:3:\"330\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5160', '104', '5160', '2023-04-20', 1, 'wholesale', 'Full', '5160', '0', 0, 0, 0, ''),
(106, 'RADHEKRUPA ENTERPRICES', '60', '9440011333', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '', 'By Road', '', 'Out', '541754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"200\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"18\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3600', '200', '3600', '2023-04-20', 1, 'wholesale', 'Full', '3600', '0', 0, 0, 0, ''),
(107, 'SRIGAYATRI INDUSTRIES', '61', '9849124190', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37BXNPC8621E1ZG', 'By Road', '', 'Out', '541754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.15DCUT\";i:3;s:3:\"135\";i:4;s:2:\"50\";i:5;s:7:\"4100.00\";i:6;s:7:\"4100.00\";i:7;N;i:8;s:7:\"4100.00\";i:9;s:2:\"82\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"WCUT\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"492.00\";i:6;s:6:\"492.00\";i:7;N;i:8;s:6:\"492.00\";i:9;s:3:\"246\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '4592', '52', '4592', '2023-04-20', 1, 'wholesale', 'Full', '4592', '0', 0, 0, 0, ''),
(108, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '541754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"40\";i:5;s:7:\"2400.00\";i:6;s:7:\"2400.00\";i:7;N;i:8;s:7:\"2400.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '2400', '40', '2400', '2023-04-20', 1, 'wholesale', 'Full', '2400', '0', 0, 0, 0, ''),
(109, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '541754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"BALANCE\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:10:\"1000000.00\";i:6;s:10:\"1000000.00\";i:7;N;i:8;s:10:\"1000000.00\";i:9;s:7:\"1000000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000000', 'NaN', '1000000', '2023-04-20', 1, 'retail', 'Full', '1000000', '0', 0, 0, 0, ''),
(110, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '541754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"11125.00\";i:6;s:8:\"11125.00\";i:7;N;i:8;s:8:\"11125.00\";i:9;s:5:\"11125\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11125', 'NaN', '11125', '2023-04-20', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(111, 'RAJU', '56', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-21', 1, 'retail', '', '10000', '7466', 88, 0, 0, ''),
(112, 'sairam general stores', '39', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-21', 1, 'retail', '', '10000', '9125', 59, 0, 0, ''),
(113, 'deviganesh general stores', '41', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-21', 1, 'retail', '', '22000', '110965', 62, 0, 0, ''),
(114, 'MAA NAGENCHI ENTERPRICES', '57', '9849250754', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37NTXPS2292R1ZW', 'By Road', '', 'Out', '583754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 75ML\";i:3;s:0:\"\";i:4;s:3:\"160\";i:5;s:7:\"2016.00\";i:6;s:7:\"2016.00\";i:7;N;i:8;s:7:\"2016.00\";i:9;s:4:\"12.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"13.16\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"366.00\";i:6;s:6:\"366.00\";i:7;N;i:8;s:6:\"366.00\";i:9;s:4:\"36.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '2382', '170', '2382', '2023-04-21', 1, 'wholesale', 'Full', '2382', '0', 0, 0, 0, ''),
(115, 'PREMIER POLYTHENE', '62', '7898133445', 'AP', 'VIJAYAWADA', 'KANDULASTREET', '0', '', '37AGUPK4881H1ZP', 'By Road', '', 'Out', '583754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"CLOTH KG WHITE\";i:3;s:2:\"44\";i:4;s:2:\"35\";i:5;s:7:\"3150.00\";i:6;s:7:\"3150.00\";i:7;N;i:8;s:7:\"3150.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"CLOTH\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"566.00\";i:6;s:6:\"566.00\";i:7;N;i:8;s:6:\"566.00\";i:9;s:3:\"283\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3716', '37', '3716', '2023-04-21', 1, 'wholesale', 'Full', '3716', '0', 0, 0, 0, ''),
(116, 'PREMIER POLYTHENE', '62', '7898133445', 'AP', 'VIJAYAWADA', 'KANDULASTREET', '0', '', '37AGUPK4881H1ZP', 'By Road', '', 'Out', '583754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"IVERRY SPOON\";i:3;s:2:\"65\";i:4;s:2:\"55\";i:5;s:7:\"4950.00\";i:6;s:7:\"4950.00\";i:7;N;i:8;s:7:\"4950.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"NO.1 SPONGE\";i:3;s:3:\"123\";i:4;s:1:\"2\";i:5;s:6:\"890.00\";i:6;s:6:\"890.00\";i:7;N;i:8;s:6:\"890.00\";i:9;s:3:\"445\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5840', '57', '5840', '2023-04-21', 1, 'wholesale', 'Full', '5840', '0', 0, 0, 0, ''),
(117, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '583754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:5:\"10800\";i:5;s:7:\"7884.00\";i:6;s:7:\"7884.00\";i:7;N;i:8;s:7:\"7884.00\";i:9;s:4:\"0.73\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 300ML\";i:3;s:2:\"38\";i:4;s:1:\"2\";i:5;s:7:\"1420.00\";i:6;s:7:\"1420.00\";i:7;N;i:8;s:7:\"1420.00\";i:9;s:3:\"710\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '9304', '10802', '9304', '2023-04-21', 1, 'wholesale', 'Full', '9304', '0', 0, 0, 0, ''),
(118, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '583754', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16 covers\";i:3;s:3:\"147\";i:4;s:2:\"40\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:2:\"80\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TEAGLASS\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"576.00\";i:6;s:6:\"576.00\";i:7;N;i:8;s:6:\"576.00\";i:9;s:3:\"288\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3776', '42', '3776', '2023-04-21', 1, 'wholesale', 'Full', '3776', '0', 0, 0, 0, ''),
(119, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '583754', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"4 CARA BOWL\";i:3;s:3:\"116\";i:4;s:2:\"40\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:2:\"80\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3200', '40', '3200', '2023-04-21', 1, 'wholesale', 'Full', '3200', '0', 0, 0, 0, ''),
(120, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-21', 1, 'retail', '', '9500', '28411', 89, 0, 0, ''),
(121, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '9500', '2023-04-21', 1, 'retail', '', '20000', '8411', 89, 0, 0, ''),
(122, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-22', 1, 'retail', '', '75000', '21792.5', 87, 0, 0, ''),
(123, 'm.satyanarayana', '63', '9704437588', 'ap', 'rajahmundry', 'devichowk', '0', '', '', 'By Road', '', 'In', '688254', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"2400.00\";i:6;s:7:\"2400.00\";i:7;N;i:8;s:7:\"2400.00\";i:9;s:4:\"2400\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '2400', 'NaN', '2400', '2023-04-24', 1, 'retail', 'Partial', '', '2400', 0, 0, 0, ''),
(124, 'prasad', '38', '6302999343', 'ap', 'peddapuram', 'peddapuram', '0', '', '', 'By Road', '', 'In', '688254', 'a:0:{}', '0', '0', '0', '2023-04-24', 1, 'retail', 'Partial', '', '0', 0, 0, 0, ''),
(125, 'prasad', '38', '6302999343', 'ap', 'peddapuram', 'peddapuram', '0', '', '', 'By Road', '', 'In', '688254', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"10821.00\";i:6;s:8:\"10821.00\";i:7;N;i:8;s:8:\"10821.00\";i:9;s:5:\"10821\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '10821', 'NaN', '10821', '2023-04-24', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(126, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '688254', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"135207.00\";i:6;s:9:\"135207.00\";i:7;N;i:8;s:9:\"135207.00\";i:9;s:6:\"135207\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '135207', 'NaN', '135207', '2023-04-24', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(127, 'sairam general stores', '39', '9949020867', 'ap', 'peddapuram', 'peddapuram', '0', '', '', 'By Road', '', 'In', '688254', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"14075.00\";i:6;s:8:\"14075.00\";i:7;N;i:8;s:8:\"14075.00\";i:9;s:5:\"14075\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '14075', 'NaN', '14075', '2023-04-24', 1, 'retail', 'Partial', '', '14075', 0, 0, 0, ''),
(128, 'prasad', '38', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-25', 1, 'retail', '', '10000', '46054', 58, 0, 0, ''),
(129, 'prasad', '38', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-25', 1, 'retail', '', '10821', '0', 125, 0, 0, ''),
(130, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '709075', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 250ML\";i:3;s:0:\"\";i:4;s:2:\"95\";i:5;s:7:\"4180.00\";i:6;s:7:\"4180.00\";i:7;N;i:8;s:7:\"4180.00\";i:9;s:2:\"44\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16CLOTH\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"7400.00\";i:6;s:7:\"7400.00\";i:7;N;i:8;s:7:\"7400.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 27.30\";i:3;s:2:\"86\";i:4;s:3:\"120\";i:5;s:7:\"2100.00\";i:6;s:7:\"2100.00\";i:7;N;i:8;s:7:\"2100.00\";i:9;s:4:\"17.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"10.12RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"2100.00\";i:6;s:7:\"2100.00\";i:7;N;i:8;s:7:\"2100.00\";i:9;s:3:\"210\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4RUBBER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"600.00\";i:6;s:6:\"600.00\";i:7;N;i:8;s:6:\"600.00\";i:9;s:3:\"300\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '16380', '267', '16380', '2023-04-25', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(131, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '709075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"SALES 22-04\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"11365.00\";i:6;s:8:\"11365.00\";i:7;N;i:8;s:8:\"11365.00\";i:9;s:5:\"11365\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11365', 'NaN', '11365', '2023-04-25', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(132, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '40000', '2023-04-25', 1, 'retail', '', '35000', '59800', 49, 0, 0, ''),
(133, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '744075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"30675.00\";i:6;s:8:\"30675.00\";i:7;N;i:8;s:8:\"30675.00\";i:9;s:5:\"30675\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '30675', 'NaN', '30675', '2023-04-25', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(134, 'SAI', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-25', 1, 'retail', '', '20000', '10675', 133, 0, 0, ''),
(135, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '764075', 'a:9:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"WATER\";i:3;s:0:\"\";i:4;s:3:\"260\";i:5;s:7:\"6240.00\";i:6;s:7:\"6240.00\";i:7;N;i:8;s:7:\"6240.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"JUMBO\";i:3;s:0:\"\";i:4;s:3:\"240\";i:5;s:7:\"6000.00\";i:6;s:7:\"6000.00\";i:7;N;i:8;s:7:\"6000.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16JD\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"5280.00\";i:6;s:7:\"5280.00\";i:7;N;i:8;s:7:\"5280.00\";i:9;s:3:\"132\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"60\";i:5;s:7:\"3780.00\";i:6;s:7:\"3780.00\";i:7;N;i:8;s:7:\"3780.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"SILVERCOVERS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1950.00\";i:6;s:7:\"1950.00\";i:7;N;i:8;s:7:\"1950.00\";i:9;s:3:\"195\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"INT HIGH COUNT\";i:3;s:2:\"84\";i:4;s:2:\"30\";i:5;s:7:\"4440.00\";i:6;s:7:\"4440.00\";i:7;N;i:8;s:7:\"4440.00\";i:9;s:3:\"148\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.5LOCK\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"760.00\";i:6;s:6:\"760.00\";i:7;N;i:8;s:6:\"760.00\";i:9;s:2:\"38\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"8\";i:5;s:6:\"104.00\";i:6;s:6:\"104.00\";i:7;N;i:8;s:6:\"104.00\";i:9;s:2:\"13\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '28554', '668', '28554', '2023-04-25', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(136, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '764075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"87480.00\";i:6;s:8:\"87480.00\";i:7;N;i:8;s:8:\"87480.00\";i:9;s:5:\"87480\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '87480', 'NaN', '87480', '2023-04-25', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(137, 'sattibabu', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '60000', '2023-04-25', 1, 'retail', '', '70000', '41559', 43, 0, 0, ''),
(138, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '834075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16 covers\";i:3;s:3:\"147\";i:4;s:2:\"11\";i:5;s:8:\"24794.00\";i:6;s:8:\"24794.00\";i:7;N;i:8;s:8:\"24794.00\";i:9;s:4:\"2254\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '24794', '11', '24794', '2023-04-25', 1, 'wholesale', 'Partial', '', '24794', 0, 0, 0, ''),
(139, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '834075', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"CLOTH PACKET 9012\";i:3;s:2:\"41\";i:4;s:1:\"2\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"800\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.12 dlx\";i:3;s:3:\"139\";i:4;s:1:\"2\";i:5;s:6:\"288.00\";i:6;s:6:\"288.00\";i:7;N;i:8;s:6:\"288.00\";i:9;s:3:\"144\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1888', '4', '1888', '2023-04-25', 1, 'wholesale', 'Full', '1888', '0', 0, 0, 0, ''),
(140, 'SRIGAYATRI INDUSTRIES', '61', '9849124190', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37BXNPC8621E1ZG', 'By Road', '', 'Out', '834075', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.15DCUT\";i:3;s:3:\"135\";i:4;s:2:\"49\";i:5;s:7:\"2842.00\";i:6;s:7:\"2842.00\";i:7;N;i:8;s:7:\"2842.00\";i:9;s:2:\"58\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"CLOTH\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"350.00\";i:6;s:6:\"350.00\";i:7;N;i:8;s:6:\"350.00\";i:9;s:3:\"175\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3192', '51', '3192', '2023-04-25', 1, 'wholesale', 'Full', '3192', '0', 0, 0, 0, ''),
(141, 'NAVETRPOLY', '65', '8143788982', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '', 'By Road', '', 'Out', '834075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:1:\"2\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:3:\"450\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '900', '2', '900', '2023-04-25', 1, 'wholesale', 'Full', '900', '0', 0, 0, 0, ''),
(142, 'NAVETRPOLY', '65', '8143788982', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '', 'By Road', '', 'Out', '834075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"MINI WINE\";i:3;s:2:\"92\";i:4;s:3:\"100\";i:5;s:7:\"5000.00\";i:6;s:7:\"5000.00\";i:7;N;i:8;s:7:\"5000.00\";i:9;s:2:\"50\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5000', '100', '5000', '2023-04-25', 1, 'wholesale', 'Full', '5000', '0', 0, 0, 0, ''),
(143, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '834075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"9 thermacol\";i:3;s:3:\"143\";i:4;s:2:\"80\";i:5;s:7:\"5200.00\";i:6;s:7:\"5200.00\";i:7;N;i:8;s:7:\"5200.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5200', '80', '5200', '2023-04-25', 1, 'wholesale', 'Full', '5200', '0', 0, 0, 0, ''),
(144, 'vk biryani', '40', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '15000', '2023-04-26', 1, 'retail', '', '10000', '18170', 60, 0, 0, ''),
(145, 'MMPLASTICS', '45', '9392102005', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '521225', '37ARSPK5624K1Z6', 'By Road', '', 'Out', '844075', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 210ML\";i:3;s:2:\"36\";i:4;s:1:\"4\";i:5;s:7:\"7920.00\";i:6;s:7:\"7920.00\";i:7;N;i:8;s:7:\"7920.00\";i:9;s:4:\"1980\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"450 SILVER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"4300.00\";i:6;s:7:\"4300.00\";i:7;N;i:8;s:7:\"4300.00\";i:9;s:4:\"2150\";i:10;s:1:\"0\";i:11;s:1:\"2\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"750 MLSILVER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"3570.00\";i:6;s:7:\"3570.00\";i:7;N;i:8;s:7:\"3570.00\";i:9;s:4:\"1785\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"80 DIA LID\";i:3;s:2:\"95\";i:4;s:2:\"30\";i:5;s:6:\"600.00\";i:6;s:6:\"600.00\";i:7;N;i:8;s:6:\"600.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:2:\"10\";i:5;s:7:\"1020.00\";i:6;s:7:\"1020.00\";i:7;N;i:8;s:7:\"1020.00\";i:9;s:3:\"102\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '17410', '48', '17410', '2023-04-26', 1, 'wholesale', 'Full', '17410', '0', 0, 0, 0, ''),
(146, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'In', '844075', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"SUPERPLASTIC\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3600', '40', '3600', '2023-04-26', 1, 'wholesale', 'Full', '3600', '0', 0, 0, 0, ''),
(147, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '38000', '2023-04-27', 1, 'retail', '', '19206', '0', 52, 0, 0, ''),
(148, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-27', 1, 'retail', '', '800', '115512', 73, 0, 0, ''),
(149, 'sriram', '35', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-04-27', 1, 'retail', '', '16000', '11320', 55, 0, 0, ''),
(151, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '883781', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6radha\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2050.00\";i:6;s:7:\"2050.00\";i:7;N;i:8;s:7:\"2050.00\";i:9;s:2:\"41\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8radha\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3125.00\";i:6;s:7:\"3125.00\";i:7;N;i:8;s:7:\"3125.00\";i:9;s:4:\"62.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"60\";i:5;s:7:\"3780.00\";i:6;s:7:\"3780.00\";i:7;N;i:8;s:7:\"3780.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"filmsheet\";i:3;s:0:\"\";i:4;s:2:\"70\";i:5;s:7:\"3080.00\";i:6;s:7:\"3080.00\";i:7;N;i:8;s:7:\"3080.00\";i:9;s:2:\"44\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '12035', '230', '12035', '2023-04-28', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(152, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '75000', '2023-04-28', 1, 'retail', '', '30000', '29800', 49, 0, 0, ''),
(153, 'RAJU', '56', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '10000', '2023-04-28', 1, 'retail', '', '7466', '0', 88, 0, 0, ''),
(154, 'SAIRAM ENTERPRICES', '53', '9502535746', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37ACIFS6230L1ZQ', 'By Road', '', 'Out', '921247', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 25.25\";i:3;s:2:\"87\";i:4;s:2:\"15\";i:5;s:8:\"12000.00\";i:6;s:8:\"12000.00\";i:7;N;i:8;s:8:\"12000.00\";i:9;s:3:\"800\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"500ML\";i:3;s:0:\"\";i:4;s:1:\"8\";i:5;s:8:\"11040.00\";i:6;s:8:\"11040.00\";i:7;N;i:8;s:8:\"11040.00\";i:9;s:4:\"1380\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '23040', '23', '23040', '2023-04-28', 1, 'wholesale', 'Full', '23040', '0', 0, 0, 0, ''),
(155, 'KRISHNA MARKETING', '68', '9346221901', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37EPQPS1215R1ZB', 'By Road', '', 'Out', '921247', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:1:\"4\";i:5;s:7:\"6600.00\";i:6;s:7:\"6600.00\";i:7;N;i:8;s:7:\"6600.00\";i:9;s:4:\"1650\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"STRAW\";i:3;s:0:\"\";i:4;s:3:\"750\";i:5;s:7:\"9000.00\";i:6;s:7:\"9000.00\";i:7;N;i:8;s:7:\"9000.00\";i:9;s:2:\"12\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '15600', '754', '15600', '2023-04-28', 1, 'wholesale', 'Full', '15600', '0', 0, 0, 0, ''),
(156, 'OMPACKING', '54', '8015876584', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37BECPS3027L1Z9', 'By Road', '', 'Out', '921247', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"MINI WINE\";i:3;s:2:\"92\";i:4;s:2:\"67\";i:5;s:7:\"1742.00\";i:6;s:7:\"1742.00\";i:7;N;i:8;s:7:\"1742.00\";i:9;s:2:\"26\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1742', '67', '1742', '2023-04-28', 1, 'wholesale', 'Full', '1742', '0', 0, 0, 0, ''),
(157, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '921247', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"31485.00\";i:6;s:8:\"31485.00\";i:7;N;i:8;s:8:\"31485.00\";i:9;s:5:\"31485\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '31485', 'NaN', '31485', '2023-05-03', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(158, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '921247', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"28614.00\";i:6;s:8:\"28614.00\";i:7;N;i:8;s:8:\"28614.00\";i:9;s:5:\"28614\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '28614', 'NaN', '28614', '2023-05-03', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(159, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '112000', '2023-05-03', 1, 'retail', '', '39583', '0', 45, 0, 0, ''),
(160, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-03', 1, 'retail', '', '10400', '0', 42, 0, 0, ''),
(161, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '971230', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"52653.00\";i:6;s:8:\"52653.00\";i:7;N;i:8;s:8:\"52653.00\";i:9;s:5:\"52653\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '52653', 'NaN', '52653', '2023-05-03', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(162, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '800', '2023-05-03', 1, 'retail', '', '50000', '65512', 73, 0, 0, ''),
(163, 'johndisposables', '29', '9701449080', 'ap', 'kovvur', 'malakpalli', '0', '', '', 'By Road', '', 'In', '1021230', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"54560.00\";i:6;s:8:\"54560.00\";i:7;N;i:8;s:8:\"54560.00\";i:9;s:5:\"54560\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '54560', 'NaN', '54560', '2023-05-03', 1, 'retail', 'Partial', '', '4560', 0, 0, 0, ''),
(164, 'johndisposables', '29', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-03', 1, 'retail', '', '50000', '4560', 163, 0, 0, ''),
(165, 'deviganesh general stores', '41', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '22000', '2023-05-03', 1, 'retail', '', '44965', '66000', 62, 0, 0, ''),
(166, 'SRINU RANGAMPETA', '43', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '12000', '2023-05-03', 1, 'retail', '', '31165', '0', 64, 0, 0, ''),
(167, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"80 DIA LID\";i:3;s:2:\"95\";i:4;s:4:\"8100\";i:5;s:7:\"3888.00\";i:6;s:7:\"3888.00\";i:7;N;i:8;s:7:\"3888.00\";i:9;s:4:\"0.48\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '3888', '8100', '3888', '2023-05-05', 1, 'wholesale', 'Full', '3888', '0', 0, 0, 0, ''),
(168, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:1:\"3\";i:5;s:7:\"4500.00\";i:6;s:7:\"4500.00\";i:7;N;i:8;s:7:\"4500.00\";i:9;s:4:\"1500\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '4500', '3', '4500', '2023-05-05', 1, 'wholesale', 'Full', '4500', '0', 0, 0, 0, ''),
(169, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:3:\"300\";i:5;s:8:\"27000.00\";i:6;s:8:\"27000.00\";i:7;N;i:8;s:8:\"27000.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '27000', '300', '27000', '2023-05-05', 1, 'wholesale', 'Full', '27000', '0', 0, 0, 0, ''),
(170, 'DIVYASAI AGENCIES', '52', '9848134508', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37AKHPK3062H1Z6', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"1236.00\";i:6;s:7:\"1236.00\";i:7;N;i:8;s:7:\"1236.00\";i:9;s:4:\"1236\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1236', '1', '1236', '2023-05-05', 1, 'wholesale', 'Full', '1236', '0', 0, 0, 0, ''),
(171, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:1:\"1\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;N;i:8;s:0:\"\";i:9;s:0:\"\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', 'NaN', '1', 'NaN', '2023-05-05', 1, 'wholesale', 'Full', '0', '0', 0, 0, 0, ''),
(172, 'MAX PACKING', '48', '9032923111', 'AP', 'VIJAYAWADA', 'PRAVEEN COMPLEX RAMGOPAL STREET', '0', '520001', '37BUBPJ5561K1ZD', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"4 CARA BOWL\";i:3;s:3:\"116\";i:4;s:3:\"162\";i:5;s:7:\"5670.00\";i:6;s:7:\"5670.00\";i:7;N;i:8;s:7:\"5670.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5670', '162', '5670', '2023-05-05', 1, 'wholesale', 'Full', '5670', '0', 0, 0, 0, ''),
(173, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"ICECREAM CUP PAPER\";i:3;s:2:\"70\";i:4;s:2:\"10\";i:5;s:7:\"8000.00\";i:6;s:7:\"8000.00\";i:7;N;i:8;s:7:\"8000.00\";i:9;s:3:\"800\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8000', '10', '8000', '2023-05-05', 1, 'wholesale', 'Full', '8000', '0', 0, 0, 0, ''),
(174, 'SRIGAYATRI INDUSTRIES', '61', '9849124190', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37BXNPC8621E1ZG', 'By Road', '', 'Out', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"CLOTH DCUT\";i:3;s:2:\"40\";i:4;s:3:\"100\";i:5;s:7:\"7500.00\";i:6;s:7:\"7500.00\";i:7;N;i:8;s:7:\"7500.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '7500', '100', '7500', '2023-05-05', 1, 'wholesale', 'Full', '7500', '0', 0, 0, 0, ''),
(175, 'bodhisweets', '69', '7207699955', 'ap', 'rajahmundry', 'balajipeta', '0', '533102', '', 'By Road', '', 'In', '1147360', 'a:13:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"1500HINGED BOX\";i:3;s:0:\"\";i:4;s:3:\"200\";i:5;s:7:\"2200.00\";i:6;s:7:\"2200.00\";i:7;N;i:8;s:7:\"2200.00\";i:9;s:2:\"11\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"375HINGED BOX\";i:3;s:0:\"\";i:4;s:4:\"1500\";i:5;s:7:\"5850.00\";i:6;s:7:\"5850.00\";i:7;N;i:8;s:7:\"5850.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"18.27 CHAMPION\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"875.00\";i:6;s:6:\"875.00\";i:7;N;i:8;s:6:\"875.00\";i:9;s:3:\"175\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"18.20 PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"CLOTHCOVERS 10.12\";i:3;s:3:\"146\";i:4;s:2:\"25\";i:5;s:7:\"1075.00\";i:6;s:7:\"1075.00\";i:7;N;i:8;s:7:\"1075.00\";i:9;s:2:\"43\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"7 TIFFIN\";i:3;s:0:\"\";i:4;s:2:\"15\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"8TIFFIN\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"1250.00\";i:6;s:7:\"1250.00\";i:7;N;i:8;s:7:\"1250.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"600HINGEDBOX\";i:3;s:0:\"\";i:4;s:3:\"900\";i:5;s:7:\"5400.00\";i:6;s:7:\"5400.00\";i:7;N;i:8;s:7:\"5400.00\";i:9;s:1:\"6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"DARAM\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"925.00\";i:6;s:6:\"925.00\";i:7;N;i:8;s:6:\"925.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"10.10DOSA SHEET\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"450.00\";i:6;s:6:\"450.00\";i:7;N;i:8;s:6:\"450.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"5.6PPSHEET\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1650.00\";i:6;s:7:\"1650.00\";i:7;N;i:8;s:7:\"1650.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"600CLEANWRAP\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"480.00\";i:6;s:6:\"480.00\";i:7;N;i:8;s:6:\"480.00\";i:9;s:3:\"480\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '21255', '2721', '21255', '2023-05-09', 1, 'retail', 'Partial', '', '21255', 0, 0, 0, ''),
(176, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '1147360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"13395.00\";i:6;s:8:\"13395.00\";i:7;N;i:8;s:8:\"13395.00\";i:9;s:5:\"13395\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '13395', 'NaN', '13395', '2023-05-09', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(177, 'SAI', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-09', 1, 'retail', '', '28554', '0', 135, 0, 0, ''),
(178, 'SAI', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-09', 1, 'retail', '', '1446', '11949', 176, 0, 0, ''),
(179, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '1177360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"SALES[2-05-2023]\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"17910.00\";i:6;s:8:\"17910.00\";i:7;N;i:8;s:8:\"17910.00\";i:9;s:5:\"17910\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '17910', 'NaN', '17910', '2023-05-09', 1, 'retail', 'Partial', '', '12354', 0, 0, 0, ''),
(180, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '1177360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"16273.00\";i:6;s:8:\"16273.00\";i:7;N;i:8;s:8:\"16273.00\";i:9;s:5:\"16273\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '16273', 'NaN', '16273', '2023-05-09', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(181, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '1177360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"SALES(29-04-2023}\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"31485.00\";i:6;s:8:\"31485.00\";i:7;N;i:8;s:8:\"31485.00\";i:9;s:5:\"31485\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '31485', 'NaN', '31485', '2023-05-09', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(182, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '105000', '2023-05-09', 1, 'retail', '', '29800', '0', 49, 0, 0, ''),
(183, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-09', 1, 'retail', '', '15200', '1073', 180, 0, 0, ''),
(184, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '1322360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"sales(7-5-2023)\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"34836.00\";i:6;s:8:\"34836.00\";i:7;N;i:8;s:8:\"34836.00\";i:9;s:5:\"34836\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '34836', 'NaN', '34836', '2023-05-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(185, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-10', 1, 'retail', '', '100000', '35207', 126, 0, 0, ''),
(186, 'srinivas d', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '50800', '2023-05-10', 1, 'retail', '', '40000', '25512', 73, 0, 0, ''),
(187, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '1362360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\" sales 25-5-2023\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"14285.00\";i:6;s:8:\"14285.00\";i:7;N;i:8;s:8:\"14285.00\";i:9;s:5:\"14285\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '14285', 'NaN', '14285', '2023-05-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, '');
INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `hamaliCharges`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `pendingAmount`, `refId`, `clearanceStatus`, `returnStatus`, `custGivenAmount`) VALUES
(188, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2184605', 'a:49:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"9CORNERGLASS\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"5600.00\";i:6;s:7:\"5600.00\";i:7;N;i:8;s:7:\"5600.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"THUMSUPGLASS\";i:3;s:0:\"\";i:4;s:3:\"520\";i:5;s:8:\"12480.00\";i:6;s:8:\"12480.00\";i:7;N;i:8;s:8:\"12480.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"WINEGLASS\";i:3;s:0:\"\";i:4;s:3:\"240\";i:5;s:7:\"5760.00\";i:6;s:7:\"5760.00\";i:7;N;i:8;s:7:\"5760.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 65ML\";i:3;s:2:\"28\";i:4;s:3:\"420\";i:5;s:7:\"5880.00\";i:6;s:7:\"5880.00\";i:7;N;i:8;s:7:\"5880.00\";i:9;s:2:\"14\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 85ML\";i:3;s:2:\"33\";i:4;s:3:\"360\";i:5;s:7:\"8460.00\";i:6;s:7:\"8460.00\";i:7;N;i:8;s:7:\"8460.00\";i:9;s:4:\"23.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"3900.00\";i:6;s:7:\"3900.00\";i:7;N;i:8;s:7:\"3900.00\";i:9;s:3:\"6.5\";i:10;s:0:\"\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"500ML\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"2000.00\";i:6;s:7:\"2000.00\";i:7;N;i:8;s:7:\"2000.00\";i:9;s:3:\"200\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"450SILVER\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1050.00\";i:6;s:7:\"1050.00\";i:7;N;i:8;s:7:\"1050.00\";i:9;s:3:\"210\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.7SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:2:\"32\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"6.8SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2750.00\";i:6;s:7:\"2750.00\";i:7;N;i:8;s:7:\"2750.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"7.10SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2900.00\";i:6;s:7:\"2900.00\";i:7;N;i:8;s:7:\"2900.00\";i:9;s:2:\"58\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8RADHA\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3100.00\";i:6;s:7:\"3100.00\";i:7;N;i:8;s:7:\"3100.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8ROBIN\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2850.00\";i:6;s:7:\"2850.00\";i:7;N;i:8;s:7:\"2850.00\";i:9;s:2:\"57\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6RADHA\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2100.00\";i:6;s:7:\"2100.00\";i:7;N;i:8;s:7:\"2100.00\";i:9;s:2:\"42\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"50\";i:5;s:7:\"6500.00\";i:6;s:7:\"6500.00\";i:7;N;i:8;s:7:\"6500.00\";i:9;s:3:\"130\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"10.12DLX\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"6800.00\";i:6;s:7:\"6800.00\";i:7;N;i:8;s:7:\"6800.00\";i:9;s:2:\"68\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:8:\"10875.00\";i:6;s:8:\"10875.00\";i:7;N;i:8;s:8:\"10875.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"CLOTH KG \";i:3;s:2:\"44\";i:4;s:2:\"40\";i:5;s:7:\"7400.00\";i:6;s:7:\"7400.00\";i:7;N;i:8;s:7:\"7400.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"240\";i:5;s:8:\"15120.00\";i:6;s:8:\"15120.00\";i:7;N;i:8;s:8:\"15120.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12ATC\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"570.00\";i:6;s:6:\"570.00\";i:7;N;i:8;s:6:\"570.00\";i:9;s:2:\"57\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"MULTISMALL\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"8750.00\";i:6;s:7:\"8750.00\";i:7;N;i:8;s:7:\"8750.00\";i:9;s:4:\"1750\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:23;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"MULTIBIG\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:7:\"7200.00\";i:6;s:7:\"7200.00\";i:7;N;i:8;s:7:\"7200.00\";i:9;s:4:\"1800\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:24;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"NO10 FANCY\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:2:\"55\";i:6;s:7:\"1100.00\";i:7;N;i:8;s:7:\"1100.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:25;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"NO 10BOARD\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:1:\"8\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:26;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"NO9BOARD\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"700.00\";i:6;s:6:\"700.00\";i:7;N;i:8;s:6:\"700.00\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:27;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"NO8BOARD\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"600.00\";i:6;s:6:\"600.00\";i:7;N;i:8;s:6:\"600.00\";i:9;s:1:\"6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:28;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"NO7BOARD\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:1:\"5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:29;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"DARAMCONE SMALL\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"320.00\";i:6;s:6:\"320.00\";i:7;N;i:8;s:6:\"320.00\";i:9;s:2:\"32\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:30;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"DARAMCONE BIG\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"650.00\";i:6;s:6:\"650.00\";i:7;N;i:8;s:6:\"650.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:31;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER ROLL BUTTER\";i:3;s:2:\"79\";i:4;s:2:\"60\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:32;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"thermacol big bowl\";i:3;s:3:\"138\";i:4;s:2:\"30\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:33;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIG SPOON\";i:3;s:2:\"61\";i:4;s:2:\"10\";i:5;s:6:\"280.00\";i:6;s:6:\"280.00\";i:7;N;i:8;s:6:\"280.00\";i:9;s:2:\"28\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:34;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"FORK BIG\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:35;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"SPOONSMALL\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"160.00\";i:6;s:6:\"160.00\";i:7;N;i:8;s:6:\"160.00\";i:9;s:2:\"16\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:36;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"FORKSMALL\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"200.00\";i:6;s:6:\"200.00\";i:7;N;i:8;s:6:\"200.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:37;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"PPCOVERS\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"4950.00\";i:6;s:7:\"4950.00\";i:7;N;i:8;s:7:\"4950.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:38;N;i:39;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"100MLICECUP\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:2:\"80\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:40;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12 MW\";i:3;s:2:\"81\";i:4;s:2:\"10\";i:5;s:7:\"1080.00\";i:6;s:7:\"1080.00\";i:7;N;i:8;s:7:\"1080.00\";i:9;s:3:\"108\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:41;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"12.18DCT\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"3920.00\";i:6;s:7:\"3920.00\";i:7;N;i:8;s:7:\"3920.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:42;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"16.20JD\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1375.00\";i:6;s:7:\"1375.00\";i:7;N;i:8;s:7:\"1375.00\";i:9;s:3:\"275\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:43;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.6 MOGLI\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"700.00\";i:6;s:6:\"700.00\";i:7;N;i:8;s:6:\"700.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:44;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"NO10SILVER\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"2320.00\";i:6;s:7:\"2320.00\";i:7;N;i:8;s:7:\"2320.00\";i:9;s:2:\"29\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:45;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"NO9SILVER\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"2160.00\";i:6;s:7:\"2160.00\";i:7;N;i:8;s:7:\"2160.00\";i:9;s:2:\"27\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:46;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"NO8SILVER\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"1920.00\";i:6;s:7:\"1920.00\";i:7;N;i:8;s:7:\"1920.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:47;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"NO7SILVER\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:48;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"TISSUES\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"18\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '156685', '4164', '157730', '2023-05-10', 1, 'retail', 'Partial', '0', '107527', 0, 0, 0, ''),
(189, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1362360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"sales 8-05\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"83030.00\";i:6;s:8:\"83030.00\";i:7;N;i:8;s:8:\"83030.00\";i:9;s:5:\"83030\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '83030', 'NaN', '83030', '2023-05-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(190, 'sattibabu', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-10', 1, 'retail', '', '80000', '7480', 136, 0, 0, ''),
(191, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1532360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"sales 2/5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:5:\"92000\";i:6;s:8:\"92000.00\";i:7;N;i:8;s:8:\"92000.00\";i:9;s:5:\"92000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '92000', 'NaN', '92000', '2023-05-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(192, 'sattibabu', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-10', 1, 'retail', '', '90000', '2000', 191, 0, 0, ''),
(193, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1532360', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"sales 8/5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"30295.00\";i:6;s:8:\"30295.00\";i:7;N;i:8;s:8:\"30295.00\";i:9;s:5:\"30295\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '30295', 'NaN', '30295', '2023-05-10', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(194, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-10', 1, 'retail', '', '52653', '0', 161, 0, 0, ''),
(195, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-10', 1, 'retail', '', '14040', '16255', 193, 0, 0, ''),
(214, 'sujicaterings', '50', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '10000', '2023-05-13', 1, 'retail', '', '10000', '6993', 71, 0, 0, ''),
(217, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '0', '', '', 'By Road', '', 'In', '1610053', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"BUFFY MULTY SQUARE\";i:3;s:2:\"24\";i:4;s:2:\"14\";i:5;s:7:\"7700.00\";i:6;s:7:\"7700.00\";i:7;N;i:8;s:7:\"7700.00\";i:9;s:3:\"550\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"waterglass\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"4800.00\";i:6;s:7:\"4800.00\";i:7;N;i:8;s:7:\"4800.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"teaglass\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"200.00\";i:6;s:6:\"200.00\";i:7;N;i:8;s:6:\"200.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"waterglass\";i:3;s:0:\"\";i:4;s:3:\"120\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '16300', '224', '16300', '2023-05-13', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(220, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '1610053', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"38789.00\";i:6;s:8:\"38789.00\";i:7;N;i:8;s:8:\"38789.00\";i:9;s:5:\"38789\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '38789', 'NaN', '38789', '2023-05-13', 1, 'retail', 'Partial', '', '8789', 0, 0, 0, ''),
(221, 'SAI', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-13', 1, 'retail', '', '30000', '8789', 220, 0, 0, ''),
(242, 'deviganesh general stores', '41', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '66965', '2023-05-14', 1, 'retail', '', '40000', '26000', 62, 0, 0, ''),
(243, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '34836', '0', 184, 0, 0, ''),
(244, 'srinivas dwarapudi', '25', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '15146', '1304', 48, 0, 0, ''),
(245, 'raja', '37', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '6480', '0', 57, 0, 0, ''),
(248, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '31485', '0', 157, 0, 0, ''),
(249, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '15400', '0', 84, 0, 0, ''),
(250, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-14', 1, 'retail', '', '3115', '8010', 110, 0, 0, ''),
(251, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '1866515', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"SALES 11-5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"23810.00\";i:6;s:8:\"23810.00\";i:7;N;i:8;s:8:\"23810.00\";i:9;s:5:\"23810\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"SALES 13-5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:7:\"6220.00\";i:6;s:7:\"6220.00\";i:7;N;i:8;s:7:\"6220.00\";i:9;s:4:\"6220\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '30030', 'NaN', '30030', '2023-05-14', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(252, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '1866515', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"80150.00\";i:6;s:8:\"80150.00\";i:7;N;i:8;s:8:\"80150.00\";i:9;s:5:\"80150\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '80150', 'NaN', '80150', '2023-05-14', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(253, 'prasad', '34', '9059907060', 'ap', 'rajahmundry', 'koukonda', '0', '', '', 'By Road', '', 'In', '1866515', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"14500.00\";i:6;s:8:\"14500.00\";i:7;N;i:8;s:8:\"14500.00\";i:9;s:5:\"14500\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '14500', 'NaN', '14500', '2023-05-14', 1, 'retail', 'Partial', '', '14500', 0, 0, 0, ''),
(254, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1866515', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"46805.00\";i:6;s:8:\"46805.00\";i:7;N;i:8;s:8:\"46805.00\";i:9;s:5:\"46805\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '46805', 'NaN', '46805', '2023-05-15', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(255, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1866515', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"sales 12-05 bill\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"31691.00\";i:6;s:8:\"31691.00\";i:7;N;i:8;s:8:\"31691.00\";i:9;s:5:\"31691\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '31691', 'NaN', '31691', '2023-05-15', 1, 'retail', 'Partial', '', '5267', 0, 0, 0, ''),
(256, 'GSL', '49', '7981152163', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '533103', '', 'By Road', '', 'In', '1866515', 'a:13:{i:0;N;i:1;N;i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:2:\"40\";i:5;s:7:\"2520.00\";i:6;s:7:\"2520.00\";i:7;N;i:8;s:7:\"2520.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"80dia lid\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1400.00\";i:6;s:7:\"1400.00\";i:7;N;i:8;s:7:\"1400.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"straws\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:6:\"570.00\";i:6;s:6:\"570.00\";i:7;N;i:8;s:6:\"570.00\";i:9;s:2:\"19\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"400 ML CONTAINER\";i:3;s:3:\"127\";i:4;s:4:\"1000\";i:5;s:7:\"3900.00\";i:6;s:7:\"3900.00\";i:7;N;i:8;s:7:\"3900.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"150ML NESCAFE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"850.00\";i:6;s:6:\"850.00\";i:7;N;i:8;s:6:\"850.00\";i:9;s:2:\"85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"TISSUE\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"FORKS\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1050.00\";i:6;s:7:\"1050.00\";i:7;N;i:8;s:7:\"1050.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"10.12COVERS\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"165.00\";i:6;s:6:\"165.00\";i:7;N;i:8;s:6:\"165.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"DUSTBIN COVER EXLARGE\";i:3;s:2:\"77\";i:4;s:1:\"5\";i:5;s:6:\"575.00\";i:6;s:6:\"575.00\";i:7;N;i:8;s:6:\"575.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 250ML\";i:3;s:2:\"37\";i:4;s:1:\"6\";i:5;s:2:\"45\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"270.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '12825', '1249', '13050', '2023-05-15', 1, 'retail', 'Partial', '', '0', 0, 1, 0, ''),
(298, 'sattibabu', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-16', 1, 'retail', '', '83030', '0', 189, 0, 0, ''),
(299, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '1979545', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"81435.00\";i:6;s:8:\"81435.00\";i:7;N;i:8;s:8:\"81435.00\";i:9;s:5:\"81435\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '81435', 'NaN', '81435', '2023-05-16', 1, 'retail', 'Partial', '0', '0', 0, 1, 0, ''),
(300, 'bodhisweets', '69', '7207699955', 'ap', 'rajahmundry', 'balajipeta', '0', '533102', '', 'By Road', '', 'In', '1979545', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"750 ML CONTAINER\";i:3;s:3:\"125\";i:4;s:3:\"900\";i:5;s:7:\"5670.00\";i:6;s:7:\"5670.00\";i:7;N;i:8;s:7:\"5670.00\";i:9;s:3:\"6.3\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"1000mlpet\";i:3;s:0:\"\";i:4;s:3:\"350\";i:5;s:7:\"2415.00\";i:6;s:7:\"2415.00\";i:7;N;i:8;s:7:\"2415.00\";i:9;s:3:\"6.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8085', '1250', '8085', '2023-05-17', 1, 'retail', 'Partial', '0', '8085', 0, 0, 0, ''),
(301, 'DIVYASAI AGENCIES', '52', '9848134508', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37AKHPK3062H1Z6', 'By Road', '', 'Out', '1979545', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:2:\"20\";i:5;s:8:\"80000.00\";i:6;s:8:\"80000.00\";i:7;N;i:8;s:8:\"80000.00\";i:9;s:4:\"4000\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"disposable\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"231158.00\";i:6;s:9:\"231158.00\";i:7;N;i:8;s:9:\"231158.00\";i:9;s:6:\"231158\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '311158', 'NaN', '311158', '2023-05-17', 1, 'retail', 'Full', '311158', '0', 0, 0, 0, ''),
(302, 'MMPLASTICS', '45', '9392102005', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '521225', '37ARSPK5624K1Z6', 'By Road', '', 'Out', '1979545', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"600 CC PET CONTAINER\";i:3;s:2:\"97\";i:4;s:1:\"2\";i:5;s:7:\"9200.00\";i:6;s:7:\"9200.00\";i:7;N;i:8;s:7:\"9200.00\";i:9;s:4:\"4600\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '9200', '2', '9200', '2023-05-18', 1, 'retail', 'Full', '9200', '0', 0, 0, 0, ''),
(303, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '1979545', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:3:\"240\";i:5;s:8:\"21600.00\";i:6;s:8:\"21600.00\";i:7;N;i:8;s:8:\"21600.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '21600', '240', '21600', '2023-05-18', 1, 'retail', 'Full', '21600', '0', 0, 0, 0, ''),
(304, 'MEETHPLYPACK', '46', '9849057753', 'ANDHRAPRADESH', 'VIJAYAWADA', 'D.NO:11-38-14/1 PALLI STREET', '0', '521225', '37AFRPK3804L1Z0', 'By Road', '', 'Out', '1979545', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"tubo\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"5250.00\";i:6;s:7:\"5250.00\";i:7;N;i:8;s:7:\"5250.00\";i:9;s:4:\"1050\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5250', '5', '5250', '2023-05-18', 1, 'retail', 'Full', '5250', '0', 0, 0, 0, ''),
(307, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'In', '0', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:3:\"240\";i:5;s:2:\"90\";i:6;s:0:\"\";i:7;N;i:8;s:8:\"21600.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '90', '240', '21600', '2023-05-18', 2, 'retail', 'Full', '21600', '0', 0, 0, 0, ''),
(308, 'BHARATHTRADERS', '58', '9246492502', 'AP', 'VIJAYAWADA', 'PULLIPATIVARI STREET', '0', '', '', 'By Road', '', 'Out', '0', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:3:\"240\";i:5;s:2:\"90\";i:6;s:0:\"\";i:7;N;i:8;s:8:\"21600.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '90', '240', '21600', '2023-05-18', 2, 'retail', 'Full', '21600', '0', 0, 0, 0, ''),
(309, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '1981545', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"16780.00\";i:6;s:8:\"16780.00\";i:7;N;i:8;s:8:\"16780.00\";i:9;s:5:\"16780\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '16780', 'NaN', '16780', '2023-05-19', 1, 'retail', 'Partial', '0', '0', 0, 1, 0, ''),
(310, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-19', 1, 'retail', '', '31485', '0', 181, 0, 0, ''),
(311, 'venkatramana', '30', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-19', 1, 'retail', '', '8515', '8265', 309, 0, 0, ''),
(312, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '0', '2023-05-19', 1, 'retail', '', '46805', '0', 254, 0, 0, ''),
(313, 'kameswarao', '28', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '69550', '2023-05-19', 1, 'retail', '', '3755', '90840', 44, 0, 0, ''),
(314, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2072105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"sales13-5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"24520.00\";i:6;s:8:\"24520.00\";i:7;N;i:8;s:8:\"24520.00\";i:9;s:5:\"24520\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '24520', 'NaN', '24520', '2023-05-19', 1, 'retail', 'Partial', '0', '0', 0, 1, 0, ''),
(328, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2183105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"46125.00\";i:6;s:8:\"46125.00\";i:7;N;i:8;s:8:\"46125.00\";i:9;s:5:\"46125\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '46125', 'NaN', '46125', '2023-05-23', 1, 'retail', 'Partial', '0', '46125', 0, 0, 0, ''),
(329, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2183105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"83363.00\";i:6;s:8:\"83363.00\";i:7;N;i:8;s:8:\"83363.00\";i:9;s:5:\"83363\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '83363', 'NaN', '83363', '2023-05-23', 1, 'retail', 'Partial', '0', '47977', 0, 0, 0, ''),
(336, '27', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '41559', '0', 43, 0, 0, ''),
(337, '27', '27', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '36441', '33699', 93, 0, 0, ''),
(338, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2183105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"25350.00\";i:6;s:8:\"25350.00\";i:7;N;i:8;s:8:\"25350.00\";i:9;s:5:\"25350\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '25350', 'NaN', '25350', '2023-05-23', 1, 'retail', 'Partial', '0', '0', 0, 1, 0, ''),
(339, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2183105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"sales20-5\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"13250.00\";i:6;s:8:\"13250.00\";i:7;N;i:8;s:8:\"13250.00\";i:9;s:5:\"13250\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '13250', 'NaN', '13250', '2023-05-23', 1, 'retail', 'Partial', '0', '12713', 0, 0, 0, ''),
(340, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '0', '', '', 'By Road', '', 'In', '2183105', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"2750.00\";i:6;s:7:\"2750.00\";i:7;N;i:8;s:7:\"2750.00\";i:9;s:3:\"550\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '2750', '5', '2750', '2023-05-23', 1, 'retail', 'Partial', '0', '1043', 0, 0, 0, ''),
(341, '50', '50', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '6993', '0', 71, 0, 0, ''),
(342, '50', '50', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '3007', '13293', 217, 0, 0, ''),
(347, 'purchase test 1', '71', 'jgg', '', '', '', '0', '', '', 'By Road', '', 'Out', '2184605', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"raw material\";i:3;s:3:\"124\";i:4;s:3:\"100\";i:5;s:11:\"10000000.00\";i:6;s:11:\"10000000.00\";i:7;N;i:8;s:11:\"10000000.00\";i:9;s:6:\"100000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '10000000', '100', '10000000', '2023-05-23', 1, 'retail', 'Partial', '0', '4700000', 0, 0, 0, ''),
(348, '71', '71', NULL, '', '', '', '', '', '', '', '', 'Out', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '5000000', '5000000', 347, 0, 0, ''),
(349, '71', '71', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '100000', '4900000', 347, 0, 0, ''),
(350, '71', '71', NULL, '', '', '', '', '', '', '', '', 'Out', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '100000', '4800000', 347, 0, 0, ''),
(351, 'purchase test 1', '71', NULL, '', '', '', '', '', '', '', '', 'Out', '', NULL, NULL, NULL, '', '2023-05-23', 1, 'retail', '', '100000', '4700000', 347, 0, 0, ''),
(352, '64', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '10675', '0', 133, 0, 0, ''),
(353, '64', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '12035', '0', 151, 0, 0, ''),
(354, '64', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '11949', '0', 176, 0, 0, ''),
(355, '64', '64', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '5556', '12354', 179, 0, 0, ''),
(356, 'SAI', '64', '9573788775', 'AP', 'MANDAPETA', 'MANDAPETA', '0', '', '', 'By Road', '', 'In', '2184605', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"sales\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"30235.00\";i:6;s:8:\"30235.00\";i:7;N;i:8;s:8:\"30235.00\";i:9;s:5:\"30235\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '30235', 'NaN', '30235', '2023-05-24', 1, 'retail', 'Partial', '0', '30235', 0, 0, 0, ''),
(357, '32', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '25512', '0', 73, 0, 0, ''),
(358, '32', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '14285', '0', 187, 0, 0, ''),
(359, '32', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-24', 1, 'retail', '', '203', '157527', 188, 0, 0, ''),
(360, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2184605', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"ICECREAM CUP PINK\";i:3;s:2:\"69\";i:4;s:3:\"140\";i:5;s:7:\"6720.00\";i:6;s:7:\"6720.00\";i:7;N;i:8;s:7:\"6720.00\";i:9;s:2:\"48\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6720', '140', '6720', '2023-05-24', 1, 'retail', 'Partial', '0', '6720', 0, 0, 0, ''),
(362, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2184705', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 210ML\";i:3;s:2:\"36\";i:4;s:3:\"100\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"34\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.10 80\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"crazy\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"4500.00\";i:6;s:7:\"4500.00\";i:7;N;i:8;s:7:\"4500.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"rainbow \";i:3;s:0:\"\";i:4;s:2:\"12\";i:5;s:7:\"2460.00\";i:6;s:7:\"2460.00\";i:7;N;i:8;s:7:\"2460.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"tissue\";i:3;s:0:\"\";i:4;s:3:\"120\";i:5;s:7:\"2160.00\";i:6;s:7:\"2160.00\";i:7;N;i:8;s:7:\"2160.00\";i:9;s:2:\"18\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '13320', '267', '13320', '2023-05-25', 1, 'retail', 'Partial', '0', '13320', 0, 0, 0, ''),
(363, '29', '29', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-25', 1, 'retail', '', '50000', '12564', 46, 0, 0, ''),
(364, 'johndisposables', '29', '9701449080', 'ap', 'kovvur', 'malakpalli', '0', '', '', 'By Road', '', 'In', '2185955', 'a:14:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER ROLL BUTTER\";i:3;s:2:\"79\";i:4;s:3:\"180\";i:5;s:7:\"9900.00\";i:6;s:7:\"9900.00\";i:7;N;i:8;s:7:\"9900.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12DLX\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"6500.00\";i:6;s:7:\"6500.00\";i:7;N;i:8;s:7:\"6500.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TOOTHPIC\";i:3;s:0:\"\";i:4;s:3:\"50`\";i:5;s:7:\"5400.00\";i:6;s:7:\"5400.00\";i:7;N;i:8;s:7:\"5400.00\";i:9;s:3:\"108\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"PPCOVERS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"9.12CHEAPCOLOUR\";i:3;s:0:\"\";i:4;s:3:\"200\";i:5;s:8:\"11000.00\";i:6;s:8:\"11000.00\";i:7;N;i:8;s:8:\"11000.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"BLACKKGS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"2400.00\";i:6;s:7:\"2400.00\";i:7;N;i:8;s:7:\"2400.00\";i:9;s:3:\"120\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"ZENWIRE\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:7:\"7350.00\";i:6;s:7:\"7350.00\";i:7;N;i:8;s:7:\"7350.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:3:\"VLP\";i:3;s:0:\"\";i:4;s:2:\"60\";i:5;s:7:\"1560.00\";i:6;s:7:\"1560.00\";i:7;N;i:8;s:7:\"1560.00\";i:9;s:2:\"26\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"8.10AKASH\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1550.00\";i:6;s:7:\"1550.00\";i:7;N;i:8;s:7:\"1550.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6MOGLI\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"5550.00\";i:6;s:7:\"5550.00\";i:7;N;i:8;s:7:\"5550.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.8 RADHA\";i:3;s:3:\"153\";i:4;s:2:\"50\";i:5;s:7:\"3100.00\";i:6;s:7:\"3100.00\";i:7;N;i:8;s:7:\"3100.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"PAPERROLLS\";i:3;N;i:4;s:4:\"120 \";i:5;s:2:\"55\";i:6;N;i:7;N;i:8;s:7:\"6600.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"PAPERROLLS\";i:3;N;i:4;s:2:\"60\";i:5;s:2:\"58\";i:6;N;i:7;N;i:8;s:7:\"3480.00\";i:9;s:2:\"58\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '57623', '975', '67590', '2023-05-25', 1, 'retail', 'Partial', '0', '67590', 0, 0, 0, ''),
(365, '32', '32', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-25', 1, 'retail', '', '20000', '137527', 188, 0, 0, ''),
(366, '41', '41', NULL, '', '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-25', 1, 'retail', '', '26000', '0', 62, 0, 0, ''),
(367, 'ANANDREGENCY', '76', '9348879997', 'AP', 'RAJAHMUNDRY', 'RAJAHMUNDRY', '0', '', '', 'By Road', '', 'In', '2184705', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:8:\"78416.00\";i:6;s:8:\"78416.00\";i:7;N;i:8;s:8:\"78416.00\";i:9;s:5:\"78416\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '78416', 'NaN', '78416', '2023-05-25', 1, 'retail', 'Partial', '0', '60026', 0, 0, 0, ''),
(382, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-27', 1, 'retail', '', '14370', '0', 75, 0, 0, '50000'),
(383, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-27', 1, 'retail', '', '8010', '0', 110, 0, 0, '50000'),
(384, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-27', 1, 'retail', '', '16380', '0', 130, 0, 0, '50000'),
(385, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-27', 1, 'retail', '', '11240', '125', 131, 0, 0, '50000'),
(386, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2185955', 'a:9:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"3840.00\";i:6;s:7:\"3840.00\";i:7;N;i:8;s:7:\"3840.00\";i:9;s:3:\"6.4\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"spoon\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"1450.00\";i:6;s:7:\"1450.00\";i:7;N;i:8;s:7:\"1450.00\";i:9;s:4:\"14.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"spoon small\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"200.00\";i:6;s:6:\"200.00\";i:7;N;i:8;s:6:\"200.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"ppcovers\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"DARAM CONE BIG\";i:3;s:2:\"47\";i:4;s:1:\"4\";i:5;s:6:\"960.00\";i:6;s:6:\"960.00\";i:7;N;i:8;s:6:\"960.00\";i:9;s:3:\"240\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16milk\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1080.00\";i:6;s:7:\"1080.00\";i:7;N;i:8;s:7:\"1080.00\";i:9;s:3:\"108\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4RUBBER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"640.00\";i:6;s:6:\"640.00\";i:7;N;i:8;s:6:\"640.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:5:\"39.00\";i:6;s:5:\"39.00\";i:7;N;i:8;s:5:\"39.00\";i:9;s:2:\"13\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '9809', '749', '9809', '2023-05-27', 1, 'retail', 'Partial', '0', '9809', 0, 0, 0, ''),
(387, 'RAM', '77', '9848856333', 'AP', 'SEETHANAGARAM', 'SEETHANAGARAM', '0', '', '', 'By Road', '', 'In', '2185955', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.8 RADHA\";i:3;s:3:\"153\";i:4;s:2:\"40\";i:5;s:7:\"2480.00\";i:6;s:7:\"2480.00\";i:7;N;i:8;s:7:\"2480.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"9.13SILVER\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:3:\"150\";i:5;s:7:\"3600.00\";i:6;s:7:\"3600.00\";i:7;N;i:8;s:7:\"3600.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"30\";i:5;s:7:\"1860.00\";i:6;s:7:\"1860.00\";i:7;N;i:8;s:7:\"1860.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"FILMDOSA\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"440.00\";i:6;s:6:\"440.00\";i:7;N;i:8;s:6:\"440.00\";i:9;s:2:\"44\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11880', '280', '11880', '2023-05-27', 1, 'retail', 'Partial', '0', '11880', 0, 0, 0, ''),
(388, 'RAJU', '56', '8919278679', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '', '', 'By Road', '', 'In', '2185955', 'a:26:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"NEWSPAPERS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:3:\"340\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8SMILE\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"2480.00\";i:6;s:7:\"2480.00\";i:7;N;i:8;s:7:\"2480.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"PIXCEL\";i:3;s:0:\"\";i:4;s:3:\"125\";i:5;s:8:\"18500.00\";i:6;s:8:\"18500.00\";i:7;N;i:8;s:8:\"18500.00\";i:9;s:3:\"148\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIG SPOON\";i:3;s:2:\"61\";i:4;s:3:\"100\";i:5;s:7:\"1450.00\";i:6;s:7:\"1450.00\";i:7;N;i:8;s:7:\"1450.00\";i:9;s:4:\"14.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"SMALL FORK\";i:3;s:2:\"64\";i:4;s:3:\"100\";i:5;s:7:\"1900.00\";i:6;s:7:\"1900.00\";i:7;N;i:8;s:7:\"1900.00\";i:9;s:2:\"19\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 250ML\";i:3;s:2:\"37\";i:4;s:2:\"20\";i:5;s:6:\"880.00\";i:6;s:6:\"880.00\";i:7;N;i:8;s:6:\"880.00\";i:9;s:2:\"44\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BENDSTRAW\";i:3;s:3:\"121\";i:4;s:3:\"100\";i:5;s:7:\"1950.00\";i:6;s:7:\"1950.00\";i:7;N;i:8;s:7:\"1950.00\";i:9;s:4:\"19.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12NO1\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3250.00\";i:6;s:7:\"3250.00\";i:7;N;i:8;s:7:\"3250.00\";i:9;s:2:\"65\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"13.16NO1\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3250.00\";i:6;s:7:\"3250.00\";i:7;N;i:8;s:7:\"3250.00\";i:9;s:3:\"130\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"725.00\";i:6;s:6:\"725.00\";i:7;N;i:8;s:6:\"725.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PRASADAMCUP SMALL\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"450.00\";i:6;s:6:\"450.00\";i:7;N;i:8;s:6:\"450.00\";i:9;s:3:\"450\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:15:\"PRASADAMCUP BIG\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"350.00\";i:6;s:6:\"350.00\";i:7;N;i:8;s:6:\"350.00\";i:9;s:3:\"350\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"5.8PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"825.00\";i:6;s:6:\"825.00\";i:7;N;i:8;s:6:\"825.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"5.7PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"825.00\";i:6;s:6:\"825.00\";i:7;N;i:8;s:6:\"825.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"6.6PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"8.11RADHA\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1250.00\";i:6;s:7:\"1250.00\";i:7;N;i:8;s:7:\"1250.00\";i:9;s:3:\"125\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"9.12CHEAF COLOUR\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"275.00\";i:6;s:6:\"275.00\";i:7;N;i:8;s:6:\"275.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"13.16CHEAF COLOUR\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"575.00\";i:6;s:6:\"575.00\";i:7;N;i:8;s:6:\"575.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.10DOSA\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"880.00\";i:6;s:6:\"880.00\";i:7;N;i:8;s:6:\"880.00\";i:9;s:2:\"88\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"500 ML CONTAINER\";i:3;s:3:\"126\";i:4;s:4:\"1000\";i:5;s:7:\"3900.00\";i:6;s:7:\"3900.00\";i:7;N;i:8;s:7:\"3900.00\";i:9;s:3:\"3.9\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"DARAM\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:3:\"180\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"DARAMCONE BIG\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"630.00\";i:6;s:6:\"630.00\";i:7;N;i:8;s:6:\"630.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:23;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"DARAM CONE BIG1.5\";i:3;s:2:\"47\";i:4;s:1:\"3\";i:5;s:6:\"720.00\";i:6;s:6:\"720.00\";i:7;N;i:8;s:6:\"720.00\";i:9;s:3:\"240\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:24;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.6LOCK\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:25;a:12:{i:0;i:0;i:1;i:0;i:2;s:27:\"PAPER GLASS 150ML SUGARCANE\";i:3;s:2:\"39\";i:4;s:2:\"50\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:2:\"36\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '53765', '1715', '53765', '2023-05-28', 1, 'retail', 'Partial', '30000', '0', 0, 1, 0, ''),
(389, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:17:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12HD\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3650.00\";i:6;s:7:\"3650.00\";i:7;N;i:8;s:7:\"3650.00\";i:9;s:2:\"73\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16HD\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3625.00\";i:6;s:7:\"3625.00\";i:7;N;i:8;s:7:\"3625.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12NO1\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"68\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"3LVIJAYA\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"16.20 DLX\";i:3;s:2:\"83\";i:4;s:2:\"10\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16SD\";i:3;s:0:\"\";i:4;s:2:\"18\";i:5;s:7:\"3420.00\";i:6;s:7:\"3420.00\";i:7;N;i:8;s:7:\"3420.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:1:\"6\";i:5;s:6:\"870.00\";i:6;s:6:\"870.00\";i:7;N;i:8;s:6:\"870.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"12.22\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"GALAXY16.20\";i:3;s:0:\"\";i:4;s:2:\"23\";i:5;s:7:\"3680.00\";i:6;s:7:\"3680.00\";i:7;N;i:8;s:7:\"3680.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"4.6PP\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"340.00\";i:6;s:6:\"340.00\";i:7;N;i:8;s:6:\"340.00\";i:9;s:3:\"170\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"5.7PP\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"330.00\";i:6;s:6:\"330.00\";i:7;N;i:8;s:6:\"330.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"6.8PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"775.00\";i:6;s:6:\"775.00\";i:7;N;i:8;s:6:\"775.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"7.10PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"775.00\";i:6;s:6:\"775.00\";i:7;N;i:8;s:6:\"775.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"5.5PP80\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"330.00\";i:6;s:6:\"330.00\";i:7;N;i:8;s:6:\"330.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"250SILVER\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"9.13COLOUR\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '31045', '268', '31045', '2023-05-28', 1, 'retail', 'Partial', '0', '31045', 0, 0, 0, ''),
(390, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '30000', '60840', 44, 0, 0, '30000'),
(391, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SALES\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:9:\"121850.00\";i:6;s:9:\"121850.00\";i:7;N;i:8;s:9:\"121850.00\";i:9;s:6:\"121850\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '121850', 'NaN', '121850', '2023-05-28', 1, 'retail', 'Partial', '0', '102317.5', 0, 0, 0, ''),
(392, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '1304', '0', 48, 0, 0, '90000'),
(393, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '21792.5', '0', 87, 0, 0, '90000'),
(394, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '3400', '0', 91, 0, 0, '90000'),
(395, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '35207', '0', 126, 0, 0, '90000'),
(396, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-28', 1, 'retail', '', '28296.5', '317.5', 158, 0, 0, '90000'),
(397, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-29', 1, 'retail', '', '33699', '0', 93, 0, 0, '85000'),
(398, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-29', 1, 'retail', '', '7480', '0', 136, 0, 0, '85000'),
(399, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-29', 1, 'retail', '', '2000', '0', 191, 0, 0, '85000'),
(400, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-05-29', 1, 'retail', '', '41821', '39614', 299, 0, 0, '85000');
INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `hamaliCharges`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `pendingAmount`, `refId`, `clearanceStatus`, `returnStatus`, `custGivenAmount`) VALUES
(401, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:22:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"16.20 galaxy\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"8000.00\";i:6;s:7:\"8000.00\";i:7;N;i:8;s:7:\"8000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"16.20col ld\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:8:\"12375.00\";i:6;s:8:\"12375.00\";i:7;N;i:8;s:8:\"12375.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"9.13silver col\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"16.20 DLX\";i:3;s:2:\"83\";i:4;s:1:\"4\";i:5;s:7:\"1280.00\";i:6;s:7:\"1280.00\";i:7;N;i:8;s:7:\"1280.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"13.16 DLX\";i:3;s:2:\"82\";i:4;s:2:\"20\";i:5;s:7:\"2660.00\";i:6;s:7:\"2660.00\";i:7;N;i:8;s:7:\"2660.00\";i:9;s:3:\"133\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"13.16harshadlx\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3700.00\";i:6;s:7:\"3700.00\";i:7;N;i:8;s:7:\"3700.00\";i:9;s:3:\"148\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"9.12HARSHA DLX\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"APPLESHEET\";i:3;s:0:\"\";i:4;s:2:\"90\";i:5;s:7:\"5580.00\";i:6;s:7:\"5580.00\";i:7;N;i:8;s:7:\"5580.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.10RADHA\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"2100.00\";i:6;s:7:\"2100.00\";i:7;N;i:8;s:7:\"2100.00\";i:9;s:3:\"105\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"12.18STAR\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2500.00\";i:6;s:7:\"2500.00\";i:7;N;i:8;s:7:\"2500.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"10.12 silver sheet\";i:3;s:3:\"136\";i:4;s:2:\"10\";i:5;s:6:\"880.00\";i:6;s:6:\"880.00\";i:7;N;i:8;s:6:\"880.00\";i:9;s:2:\"88\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"600\";i:5;s:7:\"3720.00\";i:6;s:7:\"3720.00\";i:7;N;i:8;s:7:\"3720.00\";i:9;s:3:\"6.2\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"5800.00\";i:6;s:7:\"5800.00\";i:7;N;i:8;s:7:\"5800.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"9.12CHINA\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1150.00\";i:6;s:7:\"1150.00\";i:7;N;i:8;s:7:\"1150.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"8.11POLY\";i:3;s:3:\"155\";i:4;s:1:\"5\";i:5;s:6:\"625.00\";i:6;s:6:\"625.00\";i:7;N;i:8;s:6:\"625.00\";i:9;s:3:\"125\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"12.22VIJAYA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16COL DLX\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3750.00\";i:6;s:7:\"3750.00\";i:7;N;i:8;s:7:\"3750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"16.22DCUT\";i:3;s:0:\"\";i:4;s:2:\"15\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"PP150\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3875.00\";i:6;s:7:\"3875.00\";i:7;N;i:8;s:7:\"3875.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"PP80\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"200.00\";i:6;s:6:\"200.00\";i:7;N;i:8;s:6:\"200.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '74695', '1209', '74695', '2023-05-29', 1, 'retail', 'Partial', '0', '74695', 0, 0, 0, ''),
(402, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '0', '', '', 'By Road', '', 'In', '0', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:3:\"150\";i:6;s:0:\"\";i:7;N;i:8;s:6:\"150.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '150', '1', '150', '2023-05-29', 0, '', 'Full', '150', '0', 0, 0, 0, ''),
(403, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '0', '', '', 'By Road', '', 'In', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:6:\"199.00\";i:6;s:6:\"199.00\";i:7;N;i:8;s:6:\"199.00\";i:9;s:3:\"199\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '199', '1', '199', '2023-05-29', 1, 'retail', 'Partial', '0', '199', 0, 0, 0, ''),
(404, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '0', '', '', 'By Road', '', 'In', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:6:\"999.00\";i:6;s:6:\"999.00\";i:7;N;i:8;s:6:\"999.00\";i:9;s:3:\"999\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '999', '1', '999', '2023-05-29', 1, 'retail', 'Partial', '0', '999', 0, 0, 0, ''),
(405, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:7:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"85ml\";i:3;s:0:\"\";i:4;s:3:\"200\";i:5;s:7:\"4500.00\";i:6;s:7:\"4500.00\";i:7;N;i:8;s:7:\"4500.00\";i:9;s:4:\"22.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"10.12dlx\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1400.00\";i:6;s:7:\"1400.00\";i:7;N;i:8;s:7:\"1400.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.7SILVER\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1025.00\";i:6;s:7:\"1025.00\";i:7;N;i:8;s:7:\"1025.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"6.8SILVER\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"975.00\";i:6;s:6:\"975.00\";i:7;N;i:8;s:6:\"975.00\";i:9;s:3:\"195\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"8.14\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"320.00\";i:6;s:6:\"320.00\";i:7;N;i:8;s:6:\"320.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:5:\"20.00\";i:6;s:5:\"20.00\";i:7;N;i:8;s:5:\"20.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8240', '234', '8240', '2023-05-30', 1, 'retail', 'Partial', '0', '8240', 0, 0, 0, ''),
(406, 'adhityadryfruits', '55', '9618148459', 'ap', 'anaparthy', 'anaparthy', '0', '', '', 'By Road', '', 'In', '2215955', 'a:11:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"10.12\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"13.16\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"16.20\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"17.23\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"750.00\";i:6;s:6:\"750.00\";i:7;N;i:8;s:6:\"750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SWIFT\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1450.00\";i:6;s:7:\"1450.00\";i:7;N;i:8;s:7:\"1450.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"375 CONTAINER\";i:3;s:2:\"99\";i:4;s:1:\"5\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:3:\"200\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"600 CC PET CONTAINER\";i:3;s:2:\"97\";i:4;s:1:\"5\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:3:\"300\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"CHERRYCUP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:3:\"CAP\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"210.00\";i:6;s:6:\"210.00\";i:7;N;i:8;s:6:\"210.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"RTC TRANSPORT\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:6:\"100.00\";i:6;s:6:\"100.00\";i:7;N;i:8;s:6:\"100.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8310', 'NaN', '8310', '2023-05-30', 1, 'retail', 'Partial', '0', '10', 0, 0, 0, ''),
(407, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '50000', '10840', 44, 0, 0, '50000'),
(408, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:21:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"30\";i:5;s:7:\"1860.00\";i:6;s:7:\"1860.00\";i:7;N;i:8;s:7:\"1860.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"8.10HC\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"450.00\";i:6;s:6:\"450.00\";i:7;N;i:8;s:6:\"450.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:2:\"PP\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16HD\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:8:\"10875.00\";i:6;s:8:\"10875.00\";i:7;N;i:8;s:8:\"10875.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"16.20 DLX\";i:3;s:2:\"83\";i:4;s:1:\"5\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"4350.00\";i:6;s:7:\"4350.00\";i:7;N;i:8;s:7:\"4350.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"16.20CLOTH\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1150.00\";i:6;s:7:\"1150.00\";i:7;N;i:8;s:7:\"1150.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"DCUT\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2450.00\";i:6;s:7:\"2450.00\";i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"12.22VIJAYA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16UJALA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3625.00\";i:6;s:7:\"3625.00\";i:7;N;i:8;s:7:\"3625.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"GALAXY16.20\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16MW\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"530.00\";i:6;s:6:\"530.00\";i:7;N;i:8;s:6:\"530.00\";i:9;s:3:\"106\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"380.00\";i:6;s:6:\"380.00\";i:7;N;i:8;s:6:\"380.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.8SILVER\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:3:\"250\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"PAPERCOVERS\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:7:\"1300.00\";i:6;s:7:\"1300.00\";i:7;N;i:8;s:7:\"1300.00\";i:9;s:3:\"650\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"9.13SILVERCOLOUR\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:3:\"300\";i:5;s:7:\"1890.00\";i:6;s:7:\"1890.00\";i:7;N;i:8;s:7:\"1890.00\";i:9;s:3:\"6.3\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"THUMSUP GLASS\";i:3;s:2:\"90\";i:4;s:3:\"520\";i:5;s:8:\"11960.00\";i:6;s:8:\"11960.00\";i:7;N;i:8;s:8:\"11960.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"JUMBO GLASS\";i:3;s:2:\"91\";i:4;s:3:\"400\";i:5;s:7:\"9200.00\";i:6;s:7:\"9200.00\";i:7;N;i:8;s:7:\"9200.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:2:\"15\";i:5;s:6:\"150.00\";i:6;s:6:\"150.00\";i:7;N;i:8;s:6:\"150.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '65370', '1559', '65370', '2023-06-01', 1, 'retail', 'Partial', '0', '65370', 0, 0, 0, ''),
(409, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:10:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16CLOTH\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"7200.00\";i:6;s:7:\"7200.00\";i:7;N;i:8;s:7:\"7200.00\";i:9;s:3:\"180\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"23\";i:5;s:7:\"4715.00\";i:6;s:7:\"4715.00\";i:7;N;i:8;s:7:\"4715.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"5.6PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"750 ML RECTANGULAR\";i:3;s:3:\"130\";i:4;s:3:\"100\";i:5;s:6:\"650.00\";i:6;s:6:\"650.00\";i:7;N;i:8;s:6:\"650.00\";i:9;s:3:\"6.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6MOGLI\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1050.00\";i:6;s:7:\"1050.00\";i:7;N;i:8;s:7:\"1050.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 65ML\";i:3;s:2:\"28\";i:4;s:3:\"220\";i:5;s:7:\"3080.00\";i:6;s:7:\"3080.00\";i:7;N;i:8;s:7:\"3080.00\";i:9;s:2:\"14\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"9.9APPLE\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1860.00\";i:6;s:7:\"1860.00\";i:7;N;i:8;s:7:\"1860.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"MILKWHITE\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"2140.00\";i:6;s:7:\"2140.00\";i:7;N;i:8;s:7:\"2140.00\";i:9;s:3:\"107\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:5:\"80.00\";i:6;s:5:\"80.00\";i:7;N;i:8;s:5:\"80.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '21575', '472', '21575', '2023-06-01', 1, 'retail', 'Partial', '0', '21575', 0, 0, 0, ''),
(410, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '125', '0', 131, 0, 0, '40000'),
(411, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '1073', '0', 180, 0, 0, '40000'),
(412, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '30030', '0', 251, 0, 0, '40000'),
(413, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '8265', '0', 309, 0, 0, '40000'),
(414, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-01', 1, 'retail', '', '507', '24013', 314, 0, 0, '40000'),
(415, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '2215955', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"16.20INT\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3675.00\";i:6;s:7:\"3675.00\";i:7;N;i:8;s:7:\"3675.00\";i:9;s:3:\"147\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"PPCOVERS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"3100.00\";i:6;s:7:\"3100.00\";i:7;N;i:8;s:7:\"3100.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.5LOCK\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"1850.00\";i:6;s:7:\"1850.00\";i:7;N;i:8;s:7:\"1850.00\";i:9;s:2:\"37\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '8625', '95', '8625', '2023-06-02', 1, 'retail', 'Partial', '0', '8625', 0, 0, 0, ''),
(416, 'DIVYASAI AGENCIES', '52', '9848134508', 'AP', 'VIJAYAWADA', 'GOLLAPUDI', '0', '', '37AKHPK3062H1Z6', 'By Road', '', 'In', '2215955', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"400 ML CONTAINER\";i:3;s:3:\"127\";i:4;s:1:\"5\";i:5;s:7:\"6845.00\";i:6;s:7:\"6845.00\";i:7;N;i:8;s:7:\"6845.00\";i:9;s:4:\"1369\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"350MLFANCY\";i:3;s:0:\"\";i:4;s:2:\"12\";i:5;s:8:\"14652.00\";i:6;s:8:\"14652.00\";i:7;N;i:8;s:8:\"14652.00\";i:9;s:4:\"1221\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"65MLPAPER\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:8:\"10150.00\";i:6;s:8:\"10150.00\";i:7;N;i:8;s:8:\"10150.00\";i:9;s:4:\"2030\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 210ML\";i:3;s:2:\"36\";i:4;s:1:\"5\";i:5;s:7:\"7500.00\";i:6;s:7:\"7500.00\";i:7;N;i:8;s:7:\"7500.00\";i:9;s:4:\"1500\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '39147', '27', '39147', '2023-06-02', 1, 'wholesale', 'Partial', '0', '39147', 0, 0, 0, ''),
(417, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:9:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"ICE CREAM CUP GOLD\";i:3;s:2:\"71\";i:4;s:2:\"12\";i:5;s:7:\"1320.00\";i:6;s:7:\"1320.00\";i:7;N;i:8;s:7:\"1320.00\";i:9;s:3:\"110\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"SQUAREBUFFY\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"5200.00\";i:6;s:7:\"5200.00\";i:7;N;i:8;s:7:\"5200.00\";i:9;s:3:\"520\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:2:\"12\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 75ML\";i:3;s:2:\"30\";i:4;s:2:\"10\";i:5;s:6:\"180.00\";i:6;s:6:\"180.00\";i:7;N;i:8;s:6:\"180.00\";i:9;s:2:\"18\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER ROLL BUTTER\";i:3;s:2:\"79\";i:4;s:2:\"20\";i:5;s:7:\"1200.00\";i:6;s:7:\"1200.00\";i:7;N;i:8;s:7:\"1200.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"SITTING MULTY BIG\";i:3;s:2:\"26\";i:4;s:4:\"1000\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:4:\"2.25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"NAPPKINS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"360.00\";i:6;s:6:\"360.00\";i:7;N;i:8;s:6:\"360.00\";i:9;s:2:\"18\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"BUFFY GREEN\";i:3;s:2:\"21\";i:4;s:1:\"2\";i:5;s:6:\"460.00\";i:6;s:6:\"460.00\";i:7;N;i:8;s:6:\"460.00\";i:9;s:3:\"230\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11870', '1086', '11870', '2023-06-02', 1, 'retail', 'Partial', '0', '11870', 0, 0, 0, ''),
(418, 'ANANDREGENCY', '76', '9348879997', 'AP', 'RAJAHMUNDRY', 'RAJAHMUNDRY', '0', '', '', 'By Road', '', 'In', '2215955', 'a:12:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"250 ML CONTAINER\";i:3;s:3:\"128\";i:4;s:1:\"5\";i:5;s:6:\"825.00\";i:6;s:6:\"825.00\";i:7;N;i:8;s:6:\"825.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1000ML\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1625.00\";i:6;s:7:\"1625.00\";i:7;N;i:8;s:7:\"1625.00\";i:9;s:3:\"325\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"500ML\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:3:\"200\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"STRAWS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"200.00\";i:6;s:6:\"200.00\";i:7;N;i:8;s:6:\"200.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.7SILVER\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"350.00\";i:6;s:6:\"350.00\";i:7;N;i:8;s:6:\"350.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"CLEANWRAP\";i:3;s:0:\"\";i:4;s:1:\"6\";i:5;s:7:\"2880.00\";i:6;s:7:\"2880.00\";i:7;N;i:8;s:7:\"2880.00\";i:9;s:3:\"480\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"120ICEBOWL\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:2:\"90\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"CASHRUBBER\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"160.00\";i:6;s:6:\"160.00\";i:7;N;i:8;s:6:\"160.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"MEDIUM DUSTBIN\";i:3;s:0:\"\";i:4;s:2:\"60\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TEAGLASS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"250.00\";i:6;s:6:\"250.00\";i:7;N;i:8;s:6:\"250.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"IVERRY SPOON\";i:3;s:2:\"65\";i:4;s:2:\"50\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '13140', '182', '13140', '2023-06-02', 1, 'retail', 'Partial', '0', '13140', 0, 0, 0, ''),
(419, 'ANANDREGENCY', '76', '9348879997', 'AP', 'RAJAHMUNDRY', 'RAJAHMUNDRY', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-02', 1, 'retail', '', '18390', '60026', 367, 0, 0, '18390'),
(420, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '317.5', '0', 158, 0, 0, '100000'),
(421, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '80150', '0', 252, 0, 0, '100000'),
(422, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '19532.5', '102317.5', 391, 0, 0, '100000'),
(423, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '10840', '0', 44, 0, 0, '46930'),
(424, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '5000', '0', 65, 0, 0, '46930'),
(425, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '8411', '0', 89, 0, 0, '46930'),
(426, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '16255', '0', 193, 0, 0, '46930'),
(427, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-03', 1, 'retail', '', '6424', '25267', 255, 0, 0, '46930'),
(428, 'SRINIVASAKIRANA', '78', '9848774724', 'AP', 'ACHANTA', 'ACHANTA', '0', '', '', 'By Road', '', 'In', '2215955', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"40\";i:5;s:7:\"5920.00\";i:6;s:7:\"5920.00\";i:7;N;i:8;s:7:\"5920.00\";i:9;s:3:\"148\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"SILKYPINK\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:8:\"12800.00\";i:6;s:8:\"12800.00\";i:7;N;i:8;s:8:\"12800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:5:\"50.00\";i:6;s:5:\"50.00\";i:7;N;i:8;s:5:\"50.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '18770', '122', '18770', '2023-06-03', 1, 'retail', 'Partial', '0', '18770', 0, 0, 0, ''),
(429, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:7:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 300ML\";i:3;s:2:\"38\";i:4;s:2:\"50\";i:5;s:7:\"5250.00\";i:6;s:7:\"5250.00\";i:7;N;i:8;s:7:\"5250.00\";i:9;s:3:\"105\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"THUMSUP\";i:3;s:0:\"\";i:4;s:3:\"130\";i:5;s:7:\"2990.00\";i:6;s:7:\"2990.00\";i:7;N;i:8;s:7:\"2990.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TOOTHPIC\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"550.00\";i:6;s:6:\"550.00\";i:7;N;i:8;s:6:\"550.00\";i:9;s:3:\"110\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.1280\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"10.12RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"2050.00\";i:6;s:7:\"2050.00\";i:7;N;i:8;s:7:\"2050.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:5:\"60.00\";i:6;s:5:\"60.00\";i:7;N;i:8;s:5:\"60.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11700', '203', '11700', '2023-06-03', 1, 'retail', 'Partial', '0', '11700', 0, 0, 0, ''),
(430, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '2215955', 'a:21:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16royal\";i:3;s:0:\"\";i:4;s:2:\"75\";i:5;s:8:\"10125.00\";i:6;s:8:\"10125.00\";i:7;N;i:8;s:8:\"10125.00\";i:9;s:3:\"135\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.15DCUT\";i:3;s:3:\"135\";i:4;s:2:\"25\";i:5;s:7:\"2450.00\";i:6;s:7:\"2450.00\";i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"KIRANA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3625.00\";i:6;s:7:\"3625.00\";i:7;N;i:8;s:7:\"3625.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"INTERNATIONAL\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:8:\"14500.00\";i:6;s:8:\"14500.00\";i:7;N;i:8;s:8:\"14500.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIG SPOON\";i:3;s:2:\"61\";i:4;s:3:\"100\";i:5;s:7:\"1450.00\";i:6;s:7:\"1450.00\";i:7;N;i:8;s:7:\"1450.00\";i:9;s:4:\"14.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIOBAMBOO\";i:3;s:0:\"\";i:4;s:3:\"200\";i:5;s:7:\"5400.00\";i:6;s:7:\"5400.00\";i:7;N;i:8;s:7:\"5400.00\";i:9;s:2:\"27\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"IVERRY SPOON\";i:3;s:2:\"65\";i:4;s:2:\"50\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:3:\"150\";i:5;s:7:\"9150.00\";i:6;s:7:\"9150.00\";i:7;N;i:8;s:7:\"9150.00\";i:9;s:2:\"61\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:0:\"\";i:4;s:4:\"34.2\";i:5;s:7:\"6460.00\";i:6;s:7:\"6460.00\";i:7;N;i:8;s:7:\"6460.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"SPONZE\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1660.00\";i:6;s:7:\"1660.00\";i:7;N;i:8;s:7:\"1660.00\";i:9;s:2:\"83\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.8 RADHA\";i:3;s:3:\"153\";i:4;s:2:\"90\";i:5;s:7:\"5580.00\";i:6;s:7:\"5580.00\";i:7;N;i:8;s:7:\"5580.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6RADHA\";i:3;s:0:\"\";i:4;s:3:\"130\";i:5;s:7:\"5460.00\";i:6;s:7:\"5460.00\";i:7;N;i:8;s:7:\"5460.00\";i:9;s:2:\"42\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:21:\"MILKY WHITE 40 MICRON\";i:3;s:2:\"85\";i:4;s:3:\"100\";i:5;s:8:\"10700.00\";i:6;s:8:\"10700.00\";i:7;N;i:8;s:8:\"10700.00\";i:9;s:3:\"107\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"GREEENBANANA\";i:3;s:0:\"\";i:4;s:4:\"1000\";i:5;s:7:\"1750.00\";i:6;s:7:\"1750.00\";i:7;N;i:8;s:7:\"1750.00\";i:9;s:4:\"1.75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"9.12ZED NAT\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"68\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1DTRAY\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"3350.00\";i:6;s:7:\"3350.00\";i:7;N;i:8;s:7:\"3350.00\";i:9;s:4:\"33.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"10.12PINK\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"SILVER COIL NO 72\";i:3;s:3:\"134\";i:4;s:2:\"50\";i:5;s:7:\"8750.00\";i:6;s:7:\"8750.00\";i:7;N;i:8;s:7:\"8750.00\";i:9;s:3:\"175\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"CORN BOWL BIG\";i:3;s:3:\"112\";i:4;s:2:\"40\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:2:\"32\";i:5;s:6:\"320.00\";i:6;s:6:\"320.00\";i:7;N;i:8;s:6:\"320.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '102980', '2391', '102980', '2023-06-04', 1, 'retail', 'Partial', '0', '102980', 0, 0, 0, ''),
(431, 'adhityadryfruits', '55', '9618148459', 'ap', 'anaparthy', 'anaparthy', '0', '', '', 'By Road', '', 'In', '2215955', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"HANDCOVERS\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"4500.00\";i:6;s:7:\"4500.00\";i:7;N;i:8;s:7:\"4500.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"13.16SWIFT\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"725.00\";i:6;s:6:\"725.00\";i:7;N;i:8;s:6:\"725.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"750 \";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:6:\"660.00\";i:6;s:6:\"660.00\";i:7;N;i:8;s:6:\"660.00\";i:9;s:3:\"6.6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:5:\"40.00\";i:6;s:5:\"40.00\";i:7;N;i:8;s:5:\"40.00\";i:9;s:2:\"40\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5925', '136', '5925', '2023-06-06', 1, 'retail', 'Partial', '0', '5925', 0, 0, 0, ''),
(432, 'adhityadryfruits', '55', '9618148459', 'ap', 'anaparthy', 'anaparthy', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '8300', '10', 406, 0, 0, '8300'),
(433, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:6:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 250ML\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"3680.00\";i:6;s:7:\"3680.00\";i:7;N;i:8;s:7:\"3680.00\";i:9;s:2:\"46\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1000ML\";i:3;s:0:\"\";i:4;s:3:\"600\";i:5;s:7:\"3840.00\";i:6;s:7:\"3840.00\";i:7;N;i:8;s:7:\"3840.00\";i:9;s:3:\"6.4\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:2:\"PP\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"3200.00\";i:6;s:7:\"3200.00\";i:7;N;i:8;s:7:\"3200.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.8 CHEFF\";i:3;s:3:\"150\";i:4;s:1:\"5\";i:5;s:7:\"1225.00\";i:6;s:7:\"1225.00\";i:7;N;i:8;s:7:\"1225.00\";i:9;s:3:\"245\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"DARAM CONE BIG\";i:3;s:2:\"47\";i:4;s:1:\"4\";i:5;s:6:\"960.00\";i:6;s:6:\"960.00\";i:7;N;i:8;s:6:\"960.00\";i:9;s:3:\"240\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '12905', '709', '12905', '2023-06-06', 1, 'retail', 'Partial', '0', '12905', 0, 0, 0, ''),
(434, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:18:{i:0;N;i:1;N;i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"16.20GALAXY\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"ICECUP\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"520.00\";i:6;s:6:\"520.00\";i:7;N;i:8;s:6:\"520.00\";i:9;s:2:\"52\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"SPOON\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"230.00\";i:6;s:6:\"230.00\";i:7;N;i:8;s:6:\"230.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"9.12KOHI NOOR\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4125.00\";i:6;s:7:\"4125.00\";i:7;N;i:8;s:7:\"4125.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"RUBBER\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"930.00\";i:6;s:6:\"930.00\";i:7;N;i:8;s:6:\"930.00\";i:9;s:3:\"310\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.13ZEE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"780.00\";i:6;s:6:\"780.00\";i:7;N;i:8;s:6:\"780.00\";i:9;s:2:\"78\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.8 RADHA\";i:3;s:3:\"153\";i:4;s:2:\"90\";i:5;s:7:\"5580.00\";i:6;s:7:\"5580.00\";i:7;N;i:8;s:7:\"5580.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8MOGLI\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1100.00\";i:6;s:7:\"1100.00\";i:7;N;i:8;s:7:\"1100.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"CHINA 2\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1150.00\";i:6;s:7:\"1150.00\";i:7;N;i:8;s:7:\"1150.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:20:\"INT HIGH COUNTCOLOUR\";i:3;s:2:\"84\";i:4;s:2:\"10\";i:5;s:7:\"1550.00\";i:6;s:7:\"1550.00\";i:7;N;i:8;s:7:\"1550.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"60\";i:5;s:7:\"3660.00\";i:6;s:7:\"3660.00\";i:7;N;i:8;s:7:\"3660.00\";i:9;s:2:\"61\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"12.18DCUT\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2450.00\";i:6;s:7:\"2450.00\";i:7;N;i:8;s:7:\"2450.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:2:\"PP\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:6:\"640.00\";i:6;s:6:\"640.00\";i:7;N;i:8;s:6:\"640.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:3:\"260\";i:5;s:7:\"5980.00\";i:6;s:7:\"5980.00\";i:7;N;i:8;s:7:\"5980.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"NO1WIRE\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"BIGTABLE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"330.00\";i:6;s:6:\"330.00\";i:7;N;i:8;s:6:\"330.00\";i:9;s:2:\"33\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '33525', '577', '33525', '2023-06-06', 1, 'retail', 'Partial', '0', '33525', 0, 0, 0, ''),
(435, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:28:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16JD\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"2700.00\";i:6;s:7:\"2700.00\";i:7;N;i:8;s:7:\"2700.00\";i:9;s:3:\"135\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.13ZEE\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"GALAXY\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:8:\"16000.00\";i:6;s:8:\"16000.00\";i:7;N;i:8;s:8:\"16000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"9.12COL LD\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4125.00\";i:6;s:7:\"4125.00\";i:7;N;i:8;s:7:\"4125.00\";i:9;s:3:\"165\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12JD\";i:3;s:3:\"151\";i:4;s:2:\"50\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"68\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"star dcut\";i:3;s:3:\"137\";i:4;s:2:\"60\";i:5;s:7:\"6000.00\";i:6;s:7:\"6000.00\";i:7;N;i:8;s:7:\"6000.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16HD\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3750.00\";i:6;s:7:\"3750.00\";i:7;N;i:8;s:7:\"3750.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"16.20SD\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"960.00\";i:6;s:6:\"960.00\";i:7;N;i:8;s:6:\"960.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1000ML\";i:3;s:0:\"\";i:4;s:3:\"800\";i:5;s:7:\"5000.00\";i:6;s:7:\"5000.00\";i:7;N;i:8;s:7:\"5000.00\";i:9;s:4:\"6.25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"6.9RADHA\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"2550.00\";i:6;s:7:\"2550.00\";i:7;N;i:8;s:7:\"2550.00\";i:9;s:2:\"85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.6 RADHA\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1260.00\";i:6;s:7:\"1260.00\";i:7;N;i:8;s:7:\"1260.00\";i:9;s:2:\"42\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.10RADHA\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"3150.00\";i:6;s:7:\"3150.00\";i:7;N;i:8;s:7:\"3150.00\";i:9;s:3:\"105\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"5.8 RADHA\";i:3;s:3:\"153\";i:4;s:2:\"90\";i:5;s:7:\"5580.00\";i:6;s:7:\"5580.00\";i:7;N;i:8;s:7:\"5580.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8MOGLI\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"5300.00\";i:6;s:7:\"5300.00\";i:7;N;i:8;s:7:\"5300.00\";i:9;s:2:\"53\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"12.22VIJAYA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"RUBBER\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:7:\"1240.00\";i:6;s:7:\"1240.00\";i:7;N;i:8;s:7:\"1240.00\";i:9;s:3:\"310\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"KANGAROO PIN\";i:3;s:2:\"72\";i:4;s:1:\"5\";i:5;s:6:\"560.00\";i:6;s:6:\"560.00\";i:7;N;i:8;s:6:\"560.00\";i:9;s:3:\"112\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"6.8SILVER\";i:3;s:3:\"163\";i:4;s:2:\"20\";i:5;s:6:\"840.00\";i:6;s:6:\"840.00\";i:7;N;i:8;s:6:\"840.00\";i:9;s:2:\"42\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:3:\"162\";i:4;s:2:\"30\";i:5;s:7:\"1560.00\";i:6;s:7:\"1560.00\";i:7;N;i:8;s:7:\"1560.00\";i:9;s:2:\"52\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"7.8CHEFF\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"620.00\";i:6;s:6:\"620.00\";i:7;N;i:8;s:6:\"620.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16MW\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1070.00\";i:6;s:7:\"1070.00\";i:7;N;i:8;s:7:\"1070.00\";i:9;s:3:\"107\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:22;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"90\";i:5;s:7:\"5580.00\";i:6;s:7:\"5580.00\";i:7;N;i:8;s:7:\"5580.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:23;a:12:{i:0;i:0;i:1;i:0;i:2;s:2:\"PP\";i:3;s:0:\"\";i:4;s:2:\"19\";i:5;s:7:\"3040.00\";i:6;s:7:\"3040.00\";i:7;N;i:8;s:7:\"3040.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:24;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"PP80\";i:3;s:0:\"\";i:4;s:2:\"11\";i:5;s:7:\"1793.00\";i:6;s:7:\"1793.00\";i:7;N;i:8;s:7:\"1793.00\";i:9;s:3:\"163\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:25;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 85ML\";i:3;s:2:\"33\";i:4;s:3:\"180\";i:5;s:7:\"4140.00\";i:6;s:7:\"4140.00\";i:7;N;i:8;s:7:\"4140.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:26;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"100MLTEAGLASS\";i:3;s:0:\"\";i:4;s:3:\"168\";i:5;s:7:\"4536.00\";i:6;s:7:\"4536.00\";i:7;N;i:8;s:7:\"4536.00\";i:9;s:2:\"27\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:27;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"HAMAL\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:6:\"250.00\";i:6;s:6:\"250.00\";i:7;N;i:8;s:6:\"250.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '92504', '2010', '92504', '2023-06-06', 1, 'retail', 'Partial', '0', '92504', 0, 0, 0, ''),
(436, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '39614', '0', 299, 0, 0, '75000'),
(437, 'sattibabu', '27', '8985788367', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '35386', '47977', 329, 0, 0, '75000'),
(438, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '0', '', '', 'By Road', '', 'Out', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:4:\"1000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '1', '1000', '2023-06-06', 1, 'retail', 'Partial', '0', '800', 0, 0, 0, ''),
(439, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '', '', '', '', '', 'Out', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '200', '800', 438, 0, 0, ''),
(440, 'pradeep', '70', '9998887775', 'AP', 'Rjy', 'address 1', '0', '', '', 'By Road', '', 'In', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BENDSTRAW\";i:3;s:3:\"121\";i:4;s:1:\"1\";i:5;s:6:\"100.00\";i:6;s:6:\"100.00\";i:7;N;i:8;s:6:\"100.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '100', '1', '100', '2023-06-06', 1, 'retail', 'Partial', '0', '100', 0, 0, 0, ''),
(441, 'RAJU', '56', '8919278679', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '', '', 'By Road', '', 'In', '2215955', 'a:19:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"PIXCEL\";i:3;s:0:\"\";i:4;s:2:\"60\";i:5;s:7:\"8820.00\";i:6;s:7:\"8820.00\";i:7;N;i:8;s:7:\"8820.00\";i:9;s:3:\"147\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"8.10PIXCEL\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"3000.00\";i:6;s:7:\"3000.00\";i:7;N;i:8;s:7:\"3000.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6MOGLI\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"1750.00\";i:6;s:7:\"1750.00\";i:7;N;i:8;s:7:\"1750.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:3:\"6.8\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"18.18\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"PAPERS\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"3300.00\";i:6;s:7:\"3300.00\";i:7;N;i:8;s:7:\"3300.00\";i:9;s:3:\"330\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"SEALPAPER\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:7:\"1800.00\";i:6;s:7:\"1800.00\";i:7;N;i:8;s:7:\"1800.00\";i:9;s:3:\"450\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"10.12C2\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"2800.00\";i:6;s:7:\"2800.00\";i:7;N;i:8;s:7:\"2800.00\";i:9;s:3:\"112\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4RUBBER\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1550.00\";i:6;s:7:\"1550.00\";i:7;N;i:8;s:7:\"1550.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1000ML\";i:3;s:0:\"\";i:4;s:3:\"800\";i:5;s:7:\"4800.00\";i:6;s:7:\"4800.00\";i:7;N;i:8;s:7:\"4800.00\";i:9;s:1:\"6\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"6.9POLY\";i:3;s:3:\"154\";i:4;s:2:\"10\";i:5;s:6:\"840.00\";i:6;s:6:\"840.00\";i:7;N;i:8;s:6:\"840.00\";i:9;s:2:\"84\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"DARAM CONE BIG\";i:3;s:2:\"47\";i:4;s:2:\"10\";i:5;s:6:\"630.00\";i:6;s:6:\"630.00\";i:7;N;i:8;s:6:\"630.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"8.11POLY\";i:3;s:3:\"155\";i:4;s:2:\"10\";i:5;s:7:\"1250.00\";i:6;s:7:\"1250.00\";i:7;N;i:8;s:7:\"1250.00\";i:9;s:3:\"125\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.8RADHA\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:7:\"1860.00\";i:6;s:7:\"1860.00\";i:7;N;i:8;s:7:\"1860.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"TISSUE\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:6:\"850.00\";i:6;s:6:\"850.00\";i:7;N;i:8;s:6:\"850.00\";i:9;s:2:\"17\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.6LOCK\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"2250.00\";i:6;s:7:\"2250.00\";i:7;N;i:8;s:7:\"2250.00\";i:9;s:2:\"45\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"10.12 silver sheet\";i:3;s:3:\"136\";i:4;s:1:\"4\";i:5;s:6:\"352.00\";i:6;s:6:\"352.00\";i:7;N;i:8;s:6:\"352.00\";i:9;s:2:\"88\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"APPLE SHEET\";i:3;s:3:\"145\";i:4;s:2:\"60\";i:5;s:7:\"3660.00\";i:6;s:7:\"3660.00\";i:7;N;i:8;s:7:\"3660.00\";i:9;s:2:\"61\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '41112', '1213', '41112', '2023-06-06', 1, 'retail', 'Partial', '0', '21112', 0, 0, 0, ''),
(442, 'RAJU', '56', '8919278679', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '23765', '0', 388, 0, 0, '43765'),
(443, 'RAJU', '56', '8919278679', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-06', 1, 'retail', '', '20000', '21112', 441, 0, 0, '43765'),
(444, 'GSL', '49', '7981152163', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '0', '533103', '', 'By Road', '', 'In', '2215955', 'a:4:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"300 FANCY\";i:3;s:2:\"93\";i:4;s:2:\"40\";i:5;s:7:\"2520.00\";i:6;s:7:\"2520.00\";i:7;N;i:8;s:7:\"2520.00\";i:9;s:2:\"63\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:3:\"CAP\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BENDSTRAW\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"400.00\";i:6;s:6:\"400.00\";i:7;N;i:8;s:6:\"400.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '4420', '80', '4420', '2023-06-07', 1, 'retail', 'Partial', '0', '4375', 0, 0, 0, ''),
(445, 'GSL', '49', '7981152163', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-07', 1, 'retail', '', '12780', '0', 256, 0, 0, '12825'),
(446, 'GSL', '49', '7981152163', 'AP', 'RAJANAGARAM', 'RAJANAGARAM', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-07', 1, 'retail', '', '45', '4375', 444, 0, 0, '12825');
INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `hamaliCharges`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `pendingAmount`, `refId`, `clearanceStatus`, `returnStatus`, `custGivenAmount`) VALUES
(447, 'VISHNU ENTERPRISES', '79', '9849427606', 'AP', 'RAJAHMUNDRY', 'BRATHERNCHURCH', '0', '', '', 'By Road', '', 'In', '2215955', 'a:19:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:22:\"TIFFIN PLATES SILVER 8\";i:3;s:0:\"\";i:4;s:3:\"100\";i:5;s:7:\"2400.00\";i:6;s:7:\"2400.00\";i:7;N;i:8;s:7:\"2400.00\";i:9;s:2:\"24\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"SILVERPLATES10\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"2320.00\";i:6;s:7:\"2320.00\";i:7;N;i:8;s:7:\"2320.00\";i:9;s:2:\"29\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"MINIWINE\";i:3;s:0:\"\";i:4;s:3:\"150\";i:5;s:7:\"4050.00\";i:6;s:7:\"4050.00\";i:7;N;i:8;s:7:\"4050.00\";i:9;s:2:\"27\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:14:\"TEA GLASS 85ML\";i:3;s:2:\"33\";i:4;s:3:\"180\";i:5;s:7:\"4050.00\";i:6;s:7:\"4050.00\";i:7;N;i:8;s:7:\"4050.00\";i:9;s:4:\"22.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"CHATCUPSQUARE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"30\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"BIG SPOON\";i:3;s:2:\"61\";i:4;s:2:\"20\";i:5;s:6:\"300.00\";i:6;s:6:\"300.00\";i:7;N;i:8;s:6:\"300.00\";i:9;s:2:\"15\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"SPONZE\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"850.00\";i:6;s:6:\"850.00\";i:7;N;i:8;s:6:\"850.00\";i:9;s:2:\"85\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"PLSASTIC CUPS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"700.00\";i:6;s:6:\"700.00\";i:7;N;i:8;s:6:\"700.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"1000ML\";i:3;s:0:\"\";i:4;s:1:\"2\";i:5;s:6:\"640.00\";i:6;s:6:\"640.00\";i:7;N;i:8;s:6:\"640.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:16:\"500 ML CONTAINER\";i:3;s:3:\"126\";i:4;s:1:\"2\";i:5;s:6:\"400.00\";i:6;s:6:\"400.00\";i:7;N;i:8;s:6:\"400.00\";i:9;s:3:\"200\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"TISSUES 27.30\";i:3;s:2:\"86\";i:4;s:2:\"20\";i:5;s:6:\"340.00\";i:6;s:6:\"340.00\";i:7;N;i:8;s:6:\"340.00\";i:9;s:2:\"17\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:23:\"PAPER ROLL BUTTER SMALL\";i:3;s:0:\"\";i:4;s:2:\"30\";i:5;s:6:\"990.00\";i:6;s:6:\"990.00\";i:7;N;i:8;s:6:\"990.00\";i:9;s:2:\"33\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12JD\";i:3;s:3:\"151\";i:4;s:1:\"5\";i:5;s:6:\"350.00\";i:6;s:6:\"350.00\";i:7;N;i:8;s:6:\"350.00\";i:9;s:2:\"70\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16JD\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"675.00\";i:6;s:6:\"675.00\";i:7;N;i:8;s:6:\"675.00\";i:9;s:3:\"135\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"7..10PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"800.00\";i:6;s:6:\"800.00\";i:7;N;i:8;s:6:\"800.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"ICECREAM CUP PINK\";i:3;s:2:\"69\";i:4;s:2:\"10\";i:5;s:6:\"520.00\";i:6;s:6:\"520.00\";i:7;N;i:8;s:6:\"520.00\";i:9;s:2:\"52\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"PINK SPOON\";i:3;s:2:\"66\";i:4;s:2:\"10\";i:5;s:6:\"230.00\";i:6;s:6:\"230.00\";i:7;N;i:8;s:6:\"230.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"DARAM KG\";i:3;s:2:\"45\";i:4;s:1:\"5\";i:5;s:6:\"900.00\";i:6;s:6:\"900.00\";i:7;N;i:8;s:6:\"900.00\";i:9;s:3:\"180\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '20815', '664', '20815', '2023-06-07', 1, 'retail', 'Partial', '0', '20815', 0, 0, 0, ''),
(448, 'VISHNU ENTERPRISES', '79', '9849427606', 'AP', 'RAJAHMUNDRY', 'BRATHERNCHURCH', '0', '', '', 'By Road', '', 'In', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"BUFFY MULTY SQUARE\";i:3;s:2:\"24\";i:4;s:2:\"10\";i:5;s:7:\"4850.00\";i:6;s:7:\"4850.00\";i:7;N;i:8;s:7:\"4850.00\";i:9;s:3:\"485\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '4850', '10', '4850', '2023-06-07', 1, 'retail', 'Partial', '0', '4850', 0, 0, 0, ''),
(449, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:18:\"BUFFY MULTY SQUARE\";i:3;s:2:\"24\";i:4;s:2:\"10\";i:5;s:7:\"5200.00\";i:6;s:7:\"5200.00\";i:7;N;i:8;s:7:\"5200.00\";i:9;s:3:\"520\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:2:\"80\";i:5;s:7:\"4400.00\";i:6;s:7:\"4400.00\";i:7;N;i:8;s:7:\"4400.00\";i:9;s:2:\"55\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:2:\"75\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"HEADCAP\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:5:\"60.00\";i:6;s:5:\"60.00\";i:7;N;i:8;s:5:\"60.00\";i:9;s:2:\"60\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '11160', '111', '11160', '2023-06-07', 1, 'retail', 'Partial', '0', '11160', 0, 0, 0, ''),
(450, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:9:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 210ML\";i:3;s:2:\"36\";i:4;s:3:\"100\";i:5;s:7:\"3400.00\";i:6;s:7:\"3400.00\";i:7;N;i:8;s:7:\"3400.00\";i:9;s:2:\"34\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:5:\"CLOTH\";i:3;s:0:\"\";i:4;s:2:\"23\";i:5;s:7:\"4140.00\";i:6;s:7:\"4140.00\";i:7;N;i:8;s:7:\"4140.00\";i:9;s:3:\"180\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"17.23MW\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1070.00\";i:6;s:7:\"1070.00\";i:7;N;i:8;s:7:\"1070.00\";i:9;s:3:\"107\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.6LOCK\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"940.00\";i:6;s:6:\"940.00\";i:7;N;i:8;s:6:\"940.00\";i:9;s:2:\"47\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12PP\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"775.00\";i:6;s:6:\"775.00\";i:7;N;i:8;s:6:\"775.00\";i:9;s:3:\"155\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"PAPER GLASS 300ML\";i:3;s:2:\"38\";i:4;s:2:\"50\";i:5;s:7:\"5250.00\";i:6;s:7:\"5250.00\";i:7;N;i:8;s:7:\"5250.00\";i:9;s:3:\"105\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"8.10CLOTH\";i:3;s:0:\"\";i:4;s:1:\"9\";i:5;s:7:\"1845.00\";i:6;s:7:\"1845.00\";i:7;N;i:8;s:7:\"1845.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:1:\"4\";i:5;s:5:\"80.00\";i:6;s:5:\"80.00\";i:7;N;i:8;s:5:\"80.00\";i:9;s:2:\"20\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '17500', '221', '17500', '2023-06-08', 1, 'retail', 'Partial', '0', '17500', 0, 0, 0, ''),
(451, 'srinivas d', '32', '9052478363', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-09', 1, 'retail', '', '30000', '107527', 188, 0, 0, '30000'),
(452, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-09', 1, 'retail', '', '13293', '0', 217, 0, 0, '15000'),
(453, 'sujicaterings', '50', '9912555599', 'ap', 'kokrukonda', 'narsapuram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-09', 1, 'retail', '', '1707', '1043', 340, 0, 0, '15000'),
(454, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-10', 1, 'retail', '', '24013', '0', 314, 0, 0, '49900'),
(455, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-10', 1, 'retail', '', '25350', '0', 338, 0, 0, '49900'),
(456, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-10', 1, 'retail', '', '537', '12713', 339, 0, 0, '49900'),
(457, 'venkatramana', '30', '8522818777', 'ap', 'mandapeta', 'mandapeta', '0', '', '', 'By Road', '', 'In', '2215955', 'a:5:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"16.20RAINBOW\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"4100.00\";i:6;s:7:\"4100.00\";i:7;N;i:8;s:7:\"4100.00\";i:9;s:3:\"205\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"85ML\";i:3;s:0:\"\";i:4;s:3:\"180\";i:5;s:7:\"4050.00\";i:6;s:7:\"4050.00\";i:7;N;i:8;s:7:\"4050.00\";i:9;s:4:\"22.5\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"65ML\";i:3;s:0:\"\";i:4;s:3:\"220\";i:5;s:7:\"3135.00\";i:6;s:7:\"3135.00\";i:7;N;i:8;s:7:\"3135.00\";i:9;s:5:\"14.25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:12:\"13.16 covers\";i:3;s:3:\"147\";i:4;s:2:\"45\";i:5;s:7:\"8325.00\";i:6;s:7:\"8325.00\";i:7;N;i:8;s:7:\"8325.00\";i:9;s:3:\"185\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '19610', '465', '19610', '2023-06-10', 1, 'retail', 'Partial', '0', '19610', 0, 0, 0, ''),
(458, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '0', '', '', 'By Road', '', 'In', '2215955', 'a:22:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"5.6MOGLI\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:6:\"350.00\";i:6;s:6:\"350.00\";i:7;N;i:8;s:6:\"350.00\";i:9;s:2:\"35\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.10RADHA\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:6:\"525.00\";i:6;s:6:\"525.00\";i:7;N;i:8;s:6:\"525.00\";i:9;s:3:\"105\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:3;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"8.11\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"345.00\";i:6;s:6:\"345.00\";i:7;N;i:8;s:6:\"345.00\";i:9;s:3:\"115\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:4;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"9.12HD\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"3650.00\";i:6;s:7:\"3650.00\";i:7;N;i:8;s:7:\"3650.00\";i:9;s:2:\"73\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:5;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16HD\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"7250.00\";i:6;s:7:\"7250.00\";i:7;N;i:8;s:7:\"7250.00\";i:9;s:3:\"145\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:6;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"16.20SD\";i:3;s:0:\"\";i:4;s:1:\"5\";i:5;s:7:\"1600.00\";i:6;s:7:\"1600.00\";i:7;N;i:8;s:7:\"1600.00\";i:9;s:3:\"320\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:7;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"12.18DCUT\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1960.00\";i:6;s:7:\"1960.00\";i:7;N;i:8;s:7:\"1960.00\";i:9;s:2:\"98\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:8;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"9.12INT\";i:3;s:0:\"\";i:4;s:2:\"10\";i:5;s:7:\"1500.00\";i:6;s:7:\"1500.00\";i:7;N;i:8;s:7:\"1500.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:9;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"13.16GALAXY\";i:3;s:0:\"\";i:4;s:2:\"50\";i:5;s:7:\"8000.00\";i:6;s:7:\"8000.00\";i:7;N;i:8;s:7:\"8000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:10;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:3:\"260\";i:5;s:7:\"5980.00\";i:6;s:7:\"5980.00\";i:7;N;i:8;s:7:\"5980.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:11;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"LOTA\";i:3;s:0:\"\";i:4;s:3:\"300\";i:5;s:7:\"6900.00\";i:6;s:7:\"6900.00\";i:7;N;i:8;s:7:\"6900.00\";i:9;s:2:\"23\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:12;a:12:{i:0;i:0;i:1;i:0;i:2;s:11:\"12.22VIJAYA\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"4000.00\";i:6;s:7:\"4000.00\";i:7;N;i:8;s:7:\"4000.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:13;a:12:{i:0;i:0;i:1;i:0;i:2;s:4:\"3LTS\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"480.00\";i:6;s:6:\"480.00\";i:7;N;i:8;s:6:\"480.00\";i:9;s:3:\"160\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:14;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"13.16JD\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"2700.00\";i:6;s:7:\"2700.00\";i:7;N;i:8;s:7:\"2700.00\";i:9;s:3:\"135\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:15;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"6.7NURSURY\";i:3;s:0:\"\";i:4;s:2:\"25\";i:5;s:7:\"3500.00\";i:6;s:7:\"3500.00\";i:7;N;i:8;s:7:\"3500.00\";i:9;s:3:\"140\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:16;a:12:{i:0;i:0;i:1;i:0;i:2;s:7:\"4.5LOCK\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"760.00\";i:6;s:6:\"760.00\";i:7;N;i:8;s:6:\"760.00\";i:9;s:2:\"38\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:17;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"8.10IN\";i:3;s:0:\"\";i:4;s:1:\"3\";i:5;s:6:\"450.00\";i:6;s:6:\"450.00\";i:7;N;i:8;s:6:\"450.00\";i:9;s:3:\"150\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:18;a:12:{i:0;i:0;i:1;i:0;i:2;s:8:\"TOOTHPIC\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"110.00\";i:6;s:6:\"110.00\";i:7;N;i:8;s:6:\"110.00\";i:9;s:3:\"110\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:19;a:12:{i:0;i:0;i:1;i:0;i:2;s:10:\"WATERGLASS\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:2:\"25\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:20;a:12:{i:0;i:0;i:1;i:0;i:2;s:6:\"HAMALI\";i:3;s:0:\"\";i:4;s:2:\"13\";i:5;s:6:\"130.00\";i:6;s:6:\"130.00\";i:7;N;i:8;s:6:\"130.00\";i:9;s:2:\"10\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:21;a:12:{i:0;i:0;i:1;i:0;i:2;s:3:\"5.8\";i:3;s:0:\"\";i:4;s:2:\"20\";i:5;s:7:\"1240.00\";i:6;s:7:\"1240.00\";i:7;N;i:8;s:7:\"1240.00\";i:9;s:2:\"62\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '51930', '913', '51930', '2023-06-10', 1, 'retail', 'Partial', '0', '51930', 0, 0, 0, ''),
(459, 'kameswarao', '28', '9492179130', 'ap', 'gokavaram', 'gokavaram', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '', '2023-06-10', 1, 'retail', '', '20000', '5267', 255, 0, 0, '20000'),
(460, 'srinivas dwarapudi', '25', '9550522669', 'andhrapradesh', 'rajahmundry', 'dwarapudi', '0', '', '', 'By Road', '', 'In', '2215955', 'a:3:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"7.9SILVER\";i:3;s:0:\"\";i:4;s:2:\"34\";i:5;s:7:\"6460.00\";i:6;s:7:\"6460.00\";i:7;N;i:8;s:7:\"6460.00\";i:9;s:3:\"190\";i:10;s:1:\"0\";i:11;s:0:\"\";}i:2;a:12:{i:0;i:0;i:1;i:0;i:2;s:9:\"TRANSPORT\";i:3;s:0:\"\";i:4;s:1:\"1\";i:5;s:6:\"100.00\";i:6;s:6:\"100.00\";i:7;N;i:8;s:6:\"100.00\";i:9;s:3:\"100\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '6560', '35', '6560', '2023-06-11', 1, 'retail', 'Partial', '0', '6560', 0, 0, 0, ''),
(462, 'Pradeep1', '83', '5555555555', 'asdf', 'asdf', 'sdfa', '0', 'asdf', 'asdf', 'By Road', '', 'Out', '2215955', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:6:\"201.00\";i:6;s:6:\"201.00\";i:7;N;i:8;s:6:\"201.00\";i:9;s:3:\"201\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '201', '1', '201', '2023-06-11', 1, 'retail', 'Partial', '0', '201', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `openingbalance`
--

CREATE TABLE `openingbalance` (
  `id` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `openingbalance`
--

INSERT INTO `openingbalance` (`id`, `balance`) VALUES
(1, 2215955);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` tinyint(4) DEFAULT NULL,
  `barcode` varchar(0) DEFAULT NULL,
  `hsn` varchar(8) DEFAULT NULL,
  `category` tinyint(4) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL,
  `mrpprice` mediumint(9) DEFAULT NULL,
  `actualprice` decimal(7,2) DEFAULT NULL,
  `gsttype` tinyint(4) DEFAULT NULL,
  `gst` tinyint(4) DEFAULT NULL,
  `gstprice` decimal(6,2) DEFAULT NULL,
  `date` smallint(6) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `vendor` varchar(34) DEFAULT NULL,
  `location` varchar(12) DEFAULT NULL,
  `invoice` varchar(6) DEFAULT NULL,
  `dateofpurchase` varchar(11) DEFAULT NULL,
  `individualnetprice` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `barcode`, `hsn`, `category`, `name`, `qty`, `mrpprice`, `actualprice`, `gsttype`, `gst`, `gstprice`, `date`, `status`, `vendor`, `location`, `invoice`, `dateofpurchase`, `individualnetprice`) VALUES
(20, '', 'hsn10', 59, 'Mobile x10', '10', 1500, '1271.19', 1, 18, '228.81', 1998, 1, 'swapna stores', 'kakinada', 'inv10', '10-10-2018', ''),
(21, '', 'hsn10', 59, 'Mobile x10', '10', 1500, '1271.19', 1, 18, '228.81', 1998, 1, 'swapna stores', 'kakinada', 'inv10', '10-10-2018', ''),
(22, '', 'hsn101', 59, 'Samsung x10 series', '15', 23000, '19491.53', 1, 18, '3508.47', 2016, 1, 'Shafi Stores', 'kovvur', '500', '0-01-2019', ''),
(23, '', 'hsn10000', 61, 'Maharani Rice pack 25kg', '50', 50000, '52500.00', 2, 5, '2500.00', 2007, 1, 'Srinivasa Wholesale Rice', 'Kolamuru', '10000', '2019-03-08', ''),
(24, '', 'sasd', 61, 'adas', 'asa', 5000, '5000.00', 2, 0, '0.00', 2007, 1, 'asda', 'sasasd', 'asdasd', 'asds', ''),
(25, '', 'hsn10002', 61, 'Sainik 25kg  pack', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'Venkataramana Rice Store', 'Dawaleswaram', '10002', '2019-03-09', ''),
(26, '', 'hsn10004', 61, 'superb rice 25kb pack', '50', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, 'Venkata rama Rice Store whole sale', 'Boorugupudi', '10004', '2019-03-05', '952.38'),
(27, '', 'hsn10005', 61, 'raju 25kg rice pack', '50', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, 'Rajahmundry whole sale', 'rajahmundry', '10005', '2019-03-04', '952.38'),
(28, '', 'hsn10006', 61, 'raju 25kg rice pack', '20', 20000, '19047.62', 1, 5, '952.38', 2007, 1, 'avinash', 'bommuru', '10006', '22019-01-01', '952.38'),
(29, '', '', 61, 'test rice pack 25kg', '100', 90000, '85714.29', 1, 5, '4285.71', 2007, 1, '', '', '', '', '857.14'),
(30, '', '', 61, 'test rice bag 30kg', '100', 90000, '85714.29', 1, 5, '4285.71', 2007, 1, '', '', '', '', '857.14'),
(31, '', '', 61, 'test rice bag 30kg	', '50', 45000, '42857.14', 1, 5, '2142.86', 2007, 1, '', '', '', '', '857.14'),
(32, '', '', 61, 'test rice bag 30kg', '5', 4500, '4285.71', 1, 5, '214.29', 2007, 1, '', '', '', '', '857.14'),
(33, '', '', 61, 'test rice bag 30kg	', '55', 10000, '9523.81', 1, 5, '476.19', 2007, 1, '', '', '', '', '173.16'),
(34, '', '', 61, 'test rice bag 30kg	', '10', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, '', '', '', '', '4761.91'),
(35, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(36, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(37, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(38, '', '', 61, 'aaaa', '5', 500, '476.19', 1, 5, '23.81', 2007, 1, '', '', '', '', ''),
(39, '', '', 61, 'asds', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(40, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(41, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(42, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(43, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(44, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(45, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(46, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(47, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(48, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(49, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(50, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(51, '', '', 61, 'aaaaa', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'avinash', 'asdlkj', 'asdlkj', '01-01-2018', '952.38');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `quantity`, `status`) VALUES
(13, 'Box', 1),
(14, '100 Box', 1),
(15, 'pieces', 1),
(16, 'dindu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(11) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('admin', 6),
('categories', 62),
('invoicehead', 1),
('trackers', 226),
('vehicles', 3),
('drivers', 6),
('invoices', 67),
('customers', 8),
('credits', 2),
('purchases', 51),
('stock', 186);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `name` text,
  `qty` text NOT NULL,
  `actualprice` text,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `qty`, `actualprice`, `date`, `status`) VALUES
(19, 'Plastic Glass', 'Box', '150', '0000-00-00', 1),
(20, 'Paper Glass', 'Box', '150', '0000-00-00', 1),
(21, 'BUFFY GREEN', '', '', '0000-00-00', 1),
(22, 'BUFFY MULTY ROUND', '', '', '0000-00-00', 1),
(23, 'BUFFY SILVER ROUND', '', '', '0000-00-00', 1),
(24, 'BUFFY MULTY SQUARE', '', '', '0000-00-00', 1),
(25, 'SITTING MULTY SMALL', '', '', '0000-00-00', 1),
(26, 'SITTING MULTY BIG', '', '', '0000-00-00', 1),
(27, 'SITTING FLOWER MULTY', '', '', '0000-00-00', 1),
(28, 'TEA GLASS 65ML', '', '', '0000-00-00', 1),
(29, 'TEA GLASS 65ML PRINT', '', '', '0000-00-00', 1),
(30, 'TEA GLASS 75ML', '', '', '0000-00-00', 1),
(31, 'TEA GLASS 75ML PRINT', '', '', '0000-00-00', 1),
(32, 'TEA GLASS 100ML', '', '', '0000-00-00', 1),
(33, 'TEA GLASS 85ML', '', '', '0000-00-00', 1),
(34, 'TEA GLASS 110ML', '', '', '0000-00-00', 1),
(35, 'TEA GLASS 150ML NESCAFE', '', '', '0000-00-00', 1),
(36, 'PAPER GLASS 210ML', '', '', '0000-00-00', 1),
(37, 'PAPER GLASS 250ML', '', '', '0000-00-00', 1),
(38, 'PAPER GLASS 300ML', '', '', '0000-00-00', 1),
(39, 'PAPER GLASS 150ML SUGARCANE', '', '', '0000-00-00', 1),
(40, 'CLOTH DCUT', '', '', '0000-00-00', 1),
(41, 'CLOTH PACKET 9012', '', '', '0000-00-00', 1),
(42, 'CLOTH PACKET13.16', '', '', '0000-00-00', 1),
(43, 'CLOTH PACKET 16.20', '', '', '0000-00-00', 1),
(44, 'CLOTH KG WHITE', '', '', '0000-00-00', 1),
(45, 'DARAM KG', '', '', '0000-00-00', 1),
(46, 'DARAM CONESSMALL', '', '', '0000-00-00', 1),
(47, 'DARAM CONE BIG', '', '', '0000-00-00', 1),
(48, 'DARAM REELS BALU', '', '', '0000-00-00', 1),
(49, 'TIFFIN PLATES 10', '', '', '0000-00-00', 1),
(50, 'TIFFIN PLATES 9', '', '', '0000-00-00', 1),
(51, 'TIFFIN PLATES 8', '', '', '0000-00-00', 1),
(52, 'TIFFIN PLATES 7', '', '', '0000-00-00', 1),
(53, 'TIFIFIN PLATES SILVER 10', '', '', '0000-00-00', 1),
(54, 'TIFFIN PLATES SILVER 9', '', '', '0000-00-00', 1),
(55, 'TIFFIN PLATES SILVER 8', '', '', '0000-00-00', 1),
(56, 'TIFFIN PLATES SILVER 7', '', '', '0000-00-00', 1),
(57, 'TIFFIN PLATES SILVER 12', '', '', '0000-00-00', 1),
(58, 'TIFFIN BUFFY GREEN', '', '', '0000-00-00', 1),
(59, 'WOODEN SPOON ', '', '', '0000-00-00', 1),
(60, 'WOODEN FORK', '', '', '0000-00-00', 1),
(61, 'BIG SPOON', '', '', '0000-00-00', 1),
(62, 'BIG FORK', '', '', '0000-00-00', 1),
(63, 'SMALL SPOON', '', '', '0000-00-00', 1),
(64, 'SMALL FORK', '', '', '0000-00-00', 1),
(65, 'IVERRY SPOON', '', '', '0000-00-00', 1),
(66, 'PINK SPOON', '', '', '0000-00-00', 1),
(67, 'PINK FALOODA SPOON', '', '', '0000-00-00', 1),
(68, 'FRUIT FORK', '', '', '0000-00-00', 1),
(69, 'ICECREAM CUP PINK', '', '', '0000-00-00', 1),
(70, 'ICECREAM CUP PAPER', '', '', '0000-00-00', 1),
(71, 'ICE CREAM CUP GOLD', '', '', '0000-00-00', 1),
(72, 'KANGAROO PIN', '', '', '0000-00-00', 1),
(73, 'STAPLER', '', '', '0000-00-00', 1),
(74, 'DUSTBIN COVER SMALL', '', '', '0000-00-00', 1),
(75, 'DUSTBIN COVER MEDIUM', '', '', '0000-00-00', 1),
(76, 'DUSTBIN COVER LARGE', '', '', '0000-00-00', 1),
(77, 'DUSTBIN COVER EXLARGE', '', '', '0000-00-00', 1),
(78, 'STRETCH FILM', '', '', '0000-00-00', 1),
(79, 'PAPER ROLL BUTTER', '', '', '0000-00-00', 1),
(80, 'PAPER ROLL BUTTER SMALL', '', '', '0000-00-00', 1),
(81, '9.12 DLX', '', '', '0000-00-00', 1),
(82, '13.16 DLX', '', '', '0000-00-00', 1),
(83, '16.20 DLX', '', '', '0000-00-00', 1),
(84, 'INT HIGH COUNT', '', '', '0000-00-00', 1),
(85, 'MILKY WHITE 40 MICRON', '', '', '0000-00-00', 1),
(86, 'TISSUES 27.30', '', '', '0000-00-00', 1),
(87, 'TISSUES 25.25', '', '', '0000-00-00', 1),
(88, 'TISSUES 40.40', '', '', '0000-00-00', 1),
(89, 'SEALING MACHINE', '', '', '0000-00-00', 1),
(90, 'THUMSUP GLASS', '', '', '0000-00-00', 1),
(91, 'JUMBO GLASS', '', '', '0000-00-00', 1),
(92, 'MINI WINE', '', '', '0000-00-00', 1),
(93, '300 FANCY', '', '', '0000-00-00', 1),
(94, '350 FANCY', '', '', '0000-00-00', 1),
(95, '80 DIA LID', '', '', '0000-00-00', 1),
(96, '85 DIA LID', '', '', '0000-00-00', 1),
(97, '600 CC PET CONTAINER', '', '', '0000-00-00', 1),
(98, '250 PET CONTAINER', '', '', '0000-00-00', 1),
(99, '375 CONTAINER', '', '', '0000-00-00', 1),
(100, 'TIFFIN PLATE FANCY 10', '', '', '0000-00-00', 1),
(101, 'TIFFIN PLATE FANCY 9', '', '', '0000-00-00', 1),
(102, 'TIFFIN PLATE FANCY 8', '', '', '0000-00-00', 1),
(103, 'TIFFIN PLATE FANCY 7', '', '', '0000-00-00', 1),
(104, 'SUGARCANE 120 ML', '', '', '0000-00-00', 1),
(105, 'SUGAR CANE 180 ML', '', 'SUGAR CANE 360 ML', '0000-00-00', 1),
(106, 'SUGAR CANE 360 ML', '', '', '0000-00-00', 1),
(107, 'SUGAR CANE 9', '', '', '0000-00-00', 1),
(108, 'SUGAR CANE 7', '', '', '0000-00-00', 1),
(109, 'SUGAR CANE 10', '', '', '0000-00-00', 1),
(110, 'SUGAR CANE 12', '', '', '0000-00-00', 1),
(111, 'CORN BOWL SMALL', '', '', '0000-00-00', 1),
(112, 'CORN BOWL BIG', '', '', '0000-00-00', 1),
(113, 'CORN BOWL MEDIUM', '', '', '0000-00-00', 1),
(114, '4.4 CARA BOWL', '', '', '0000-00-00', 1),
(115, '5.5 CARA BOWL', '', '', '0000-00-00', 1),
(116, '4 CARA BOWL', '', '', '0000-00-00', 1),
(117, '6 CARA BOWL', '', '', '0000-00-00', 1),
(118, 'PAPER STRAW 8 MM', '', '', '0000-00-00', 1),
(120, 'PAPERSTRAW 6MM', '', '', '0000-00-00', 1),
(121, 'BENDSTRAW', '', '', '0000-00-00', 1),
(122, '150 ML HANDLE CUP', '', '', '0000-00-00', 1),
(123, 'NO.1 SPONGE', '', '', '0000-00-00', 1),
(124, '1000 ML CONTAINER', '', '', '0000-00-00', 1),
(125, '750 ML CONTAINER', '', '', '0000-00-00', 1),
(126, '500 ML CONTAINER', '', '', '0000-00-00', 1),
(127, '400 ML CONTAINER', '', '', '0000-00-00', 1),
(128, '250 ML CONTAINER', '', '', '0000-00-00', 1),
(129, '1000 ML RECTANGULAR', '', '', '0000-00-00', 1),
(130, '750 ML RECTANGULAR', '', '', '0000-00-00', 1),
(131, '500 ML RECTANGULAR', '', '', '0000-00-00', 1),
(132, 'CLEAN WRAP 600 MTS', '', '', '0000-00-00', 1),
(133, 'CLEAN WRAP 100 MTS', '', '', '0000-00-00', 1),
(134, 'SILVER COIL NO 72', '', '', '0000-00-00', 1),
(135, '10.15DCUT', '', '', '0000-00-00', 1),
(136, '10.12 silver sheet', '', '', '0000-00-00', 1),
(137, 'star dcut', '', '', '0000-00-00', 1),
(138, 'thermacol big bowl', '', '', '0000-00-00', 1),
(139, '10.12 dlx', '', '', '0000-00-00', 1),
(140, '5tray', '', '', '0000-00-00', 1),
(141, 'nice thermacol', '', '', '0000-00-00', 1),
(142, '7 thermacol', '', '', '0000-00-00', 1),
(143, '9 thermacol', '', '', '0000-00-00', 1),
(144, 'wonder tissue', '', '', '0000-00-00', 1),
(145, 'APPLE SHEET', '', '', '0000-00-00', 1),
(146, 'covers 10.12', '', '', '0000-00-00', 1),
(147, '13.16 covers', '', '', '0000-00-00', 1),
(148, '16.20', '', '', '0000-00-00', 1),
(149, '7.9 CHEFF', '', '', '0000-00-00', 1),
(150, '7.8 CHEFF', '', '', '0000-00-00', 1),
(151, '9.12JD', '', '', '0000-00-00', 1),
(152, '13.16JD', '', '', '0000-00-00', 1),
(153, '5.8 RADHA', '', '', '0000-00-00', 1),
(154, '6.9POLY', '', '', '0000-00-00', 1),
(155, '8.11POLY', '', '', '0000-00-00', 1),
(156, '40.40 tissue', '', '', '0000-00-00', 1),
(157, 'HIGHCOUNT COVERS', '', '', '0000-00-00', 1),
(158, 'STRECHFILM', '', '', '0000-00-00', 1),
(159, 'STARDCUT', '', '', '0000-00-00', 1),
(160, 'CLOTHDCUT', '', '', '0000-00-00', 1),
(161, '250MLCONTAINER', '', '', '0000-00-00', 1),
(162, '7.9SILVER', '', '', '0000-00-00', 1),
(163, '6.8SILVER', '', '', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE `trackers` (
  `id` smallint(6) DEFAULT NULL,
  `invoice` tinyint(4) DEFAULT NULL,
  `product` varchar(3) DEFAULT NULL,
  `qty` varchar(2) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`id`, `invoice`, `product`, `qty`, `date`) VALUES
(1, 10, '4', '1', '2018-04-11'),
(2, 11, '4', '2', '2018-04-11'),
(3, 12, '4', '1', '2018-04-11'),
(4, 12, '4', '2', '2018-04-11'),
(5, 13, '5', '2', '2018-04-19'),
(6, 14, '7', '2', '2018-04-27'),
(7, 15, '9', '1', '2018-04-29'),
(8, 15, '8', '1', '2018-04-29'),
(9, 16, '9', '5', '2018-04-29'),
(10, 16, '8', '10', '2018-04-29'),
(11, 17, '10', '1', '2018-04-30'),
(12, 19, '8', '1', '2018-05-03'),
(13, 20, '9', '1', '2018-05-03'),
(14, 21, '10', '1', '2018-05-03'),
(15, 22, '8', '1', '2018-05-03'),
(16, 22, '8', '1', '2018-05-03'),
(17, 22, '9', '1', '2018-05-03'),
(18, 22, '9', '1', '2018-05-03'),
(19, 22, '10', '1', '2018-05-03'),
(20, 22, '8', '1', '2018-05-03'),
(21, 22, '8', '1', '2018-05-03'),
(22, 22, '9', '1', '2018-05-03'),
(23, 22, '8', '1', '2018-05-03'),
(24, 22, '10', '1', '2018-05-03'),
(25, 23, '8', '1', '2018-05-05'),
(26, 23, '8', '1', '2018-05-05'),
(27, 23, '10', '1', '2018-05-05'),
(28, 23, '9', '1', '2018-05-05'),
(29, 23, '10', '1', '2018-05-05'),
(30, 23, '8', '1', '2018-05-05'),
(31, 23, '9', '1', '2018-05-05'),
(32, 23, '8', '1', '2018-05-05'),
(33, 23, '10', '1', '2018-05-05'),
(34, 23, '8', '1', '2018-05-05'),
(35, 23, '8', '1', '2018-05-05'),
(36, 24, '8', '1', '2018-05-10'),
(37, 25, '8', '1', '2018-05-10'),
(38, 25, '9', '1', '2018-05-10'),
(39, 25, '9', '1', '2018-05-10'),
(40, 25, '9', '1', '2018-05-10'),
(41, 25, '9', '1', '2018-05-10'),
(42, 25, '9', '1', '2018-05-10'),
(43, 25, '9', '1', '2018-05-10'),
(44, 25, '8', '1', '2018-05-10'),
(45, 25, '9', '1', '2018-05-10'),
(46, 25, '10', '1', '2018-05-10'),
(47, 25, '8', '1', '2018-05-10'),
(48, 25, '9', '1', '2018-05-10'),
(49, 25, '10', '1', '2018-05-10'),
(50, 25, '8', '1', '2018-05-10'),
(51, 25, '9', '1', '2018-05-10'),
(52, 25, '10', '1', '2018-05-10'),
(53, 25, '8', '1', '2018-05-10'),
(54, 25, '10', '1', '2018-05-10'),
(55, 25, '8', '1', '2018-05-10'),
(56, 25, '9', '1', '2018-05-10'),
(57, 25, '10', '1', '2018-05-10'),
(58, 25, '8', '1', '2018-05-10'),
(59, 25, '9', '1', '2018-05-10'),
(60, 25, '9', '1', '2018-05-10'),
(61, 25, '10', '1', '2018-05-10'),
(62, 25, '9', '1', '2018-05-10'),
(63, 25, '8', '1', '2018-05-10'),
(64, 25, '8', '1', '2018-05-10'),
(65, 25, '9', '1', '2018-05-10'),
(66, 25, '9', '1', '2018-05-10'),
(67, 25, '9', '1', '2018-05-10'),
(68, 25, '9', '1', '2018-05-10'),
(69, 25, '9', '1', '2018-05-10'),
(70, 25, '9', '1', '2018-05-10'),
(71, 25, '8', '1', '2018-05-10'),
(72, 25, '9', '1', '2018-05-10'),
(73, 25, '10', '1', '2018-05-10'),
(74, 25, '8', '1', '2018-05-10'),
(75, 25, '9', '1', '2018-05-10'),
(76, 25, '10', '1', '2018-05-10'),
(77, 25, '8', '1', '2018-05-10'),
(78, 25, '9', '1', '2018-05-10'),
(79, 25, '10', '1', '2018-05-10'),
(80, 25, '8', '1', '2018-05-10'),
(81, 25, '10', '1', '2018-05-10'),
(82, 25, '8', '1', '2018-05-10'),
(83, 25, '9', '1', '2018-05-10'),
(84, 25, '10', '1', '2018-05-10'),
(85, 25, '8', '1', '2018-05-10'),
(86, 25, '9', '1', '2018-05-10'),
(87, 25, '9', '1', '2018-05-10'),
(88, 25, '10', '1', '2018-05-10'),
(89, 25, '9', '1', '2018-05-10'),
(90, 25, '8', '1', '2018-05-10'),
(91, 27, '8', '1', '2018-05-10'),
(92, 27, '8', '1', '2018-05-10'),
(93, 28, '8', '2', '2018-05-10'),
(94, 28, '8', '2', '2018-05-10'),
(95, 29, '8', '2', '2018-05-10'),
(96, 29, '8', '5', '2018-05-10'),
(97, 29, '10', '2', '2018-05-10'),
(98, 30, '11', '1', '2018-05-10'),
(99, 30, '11', '1', '2018-05-10'),
(100, 30, '11', '1', '2018-05-10'),
(101, 30, '11', '1', '2018-05-10'),
(102, 30, '11', '1', '2018-05-10'),
(103, 30, '11', '1', '2018-05-10'),
(104, 30, '11', '1', '2018-05-10'),
(105, 30, '11', '1', '2018-05-10'),
(106, 30, '11', '1', '2018-05-10'),
(107, 30, '11', '1', '2018-05-10'),
(108, 30, '11', '1', '2018-05-10'),
(109, 30, '11', '1', '2018-05-10'),
(110, 30, '11', '1', '2018-05-10'),
(111, 30, '11', '1', '2018-05-10'),
(112, 30, '11', '1', '2018-05-10'),
(113, 30, '11', '1', '2018-05-10'),
(114, 30, '11', '1', '2018-05-10'),
(115, 30, '11', '1', '2018-05-10'),
(116, 30, '11', '1', '2018-05-10'),
(117, 30, '11', '1', '2018-05-10'),
(118, 30, '11', '1', '2018-05-10'),
(119, 30, '11', '1', '2018-05-10'),
(120, 30, '11', '1', '2018-05-10'),
(121, 30, '11', '1', '2018-05-10'),
(122, 30, '11', '1', '2018-05-10'),
(123, 30, '11', '1', '2018-05-10'),
(124, 30, '11', '1', '2018-05-10'),
(125, 30, '11', '1', '2018-05-10'),
(126, 30, '11', '1', '2018-05-10'),
(127, 30, '11', '1', '2018-05-10'),
(128, 30, '11', '1', '2018-05-10'),
(129, 30, '11', '1', '2018-05-10'),
(130, 30, '11', '1', '2018-05-10'),
(131, 30, '11', '1', '2018-05-10'),
(132, 30, '11', '1', '2018-05-10'),
(133, 30, '11', '1', '2018-05-10'),
(134, 30, '11', '1', '2018-05-10'),
(135, 30, '11', '1', '2018-05-10'),
(136, 30, '11', '1', '2018-05-10'),
(137, 30, '11', '1', '2018-05-10'),
(138, 30, '11', '1', '2018-05-10'),
(139, 30, '11', '1', '2018-05-10'),
(140, 30, '11', '1', '2018-05-10'),
(141, 30, '11', '1', '2018-05-10'),
(142, 30, '11', '1', '2018-05-10'),
(143, 30, '11', '1', '2018-05-10'),
(144, 30, '11', '1', '2018-05-10'),
(145, 30, '11', '1', '2018-05-10'),
(146, 30, '11', '1', '2018-05-10'),
(147, 30, '11', '1', '2018-05-10'),
(148, 30, '11', '1', '2018-05-10'),
(149, 30, '11', '1', '2018-05-10'),
(150, 30, '11', '1', '2018-05-10'),
(151, 30, '11', '1', '2018-05-10'),
(152, 31, '11', '1', '2018-05-10'),
(153, 32, '11', '5', '2018-05-10'),
(154, 32, '12', '5', '2018-05-10'),
(155, 34, '46', '1', '2018-05-14'),
(156, 36, '145', '1', '2018-05-15'),
(157, 37, '50', '1', '2018-05-15'),
(158, 38, '8', '1', '2018-06-02'),
(159, 38, '8', '1', '2018-06-02'),
(160, 40, '114', '1', '2018-06-05'),
(161, 41, '155', '1', '2018-06-05'),
(162, 41, '155', '1', '2018-06-05'),
(163, 41, '155', '1', '2018-06-05'),
(164, 41, '155', '1', '2018-06-05'),
(165, 41, '155', '1', '2018-06-05'),
(166, 41, '155', '1', '2018-06-05'),
(167, 41, '155', '1', '2018-06-05'),
(168, 41, '155', '1', '2018-06-05'),
(169, 41, '155', '1', '2018-06-05'),
(170, 41, '155', '1', '2018-06-05'),
(171, 41, '155', '1', '2018-06-05'),
(172, 41, '155', '1', '2018-06-05'),
(173, 41, '155', '1', '2018-06-05'),
(174, 41, '155', '1', '2018-06-05'),
(175, 41, '155', '1', '2018-06-05'),
(176, 41, '155', '1', '2018-06-05'),
(177, 41, '155', '1', '2018-06-05'),
(178, 41, '155', '1', '2018-06-05'),
(179, 41, '155', '1', '2018-06-05'),
(180, 41, '155', '1', '2018-06-05'),
(181, 41, '155', '1', '2018-06-05'),
(182, 41, '155', '1', '2018-06-05'),
(183, 41, '155', '1', '2018-06-05'),
(184, 41, '155', '1', '2018-06-05'),
(185, 41, '155', '1', '2018-06-05'),
(186, 42, '55', '1', '2018-07-05'),
(187, 43, '155', '1', '2018-07-11'),
(188, 44, '156', '1', '2018-07-11'),
(189, 45, '155', '1', '2018-07-11'),
(190, 46, '155', '1', '2018-07-11'),
(191, 47, '158', '1', '2018-07-11'),
(192, 48, '161', '1', '2018-07-11'),
(193, 48, '162', '1', '2018-07-11'),
(194, 49, '161', '1', '2018-07-13'),
(195, 50, '163', '1', '2018-07-20'),
(196, 51, '165', '1', '2018-07-20'),
(197, 51, '166', '1', '2018-07-20'),
(198, 51, '165', '2', '2018-07-20'),
(199, 52, '173', '1', '2019-01-21'),
(200, 53, '173', '1', '2019-01-21'),
(201, 53, '173', '1', '2019-01-21'),
(202, 53, '173', '1', '2019-01-21'),
(203, 54, '173', '1', '2019-01-21'),
(204, 54, '173', '1', '2019-01-21'),
(205, 54, '173', '1', '2019-01-21'),
(206, 55, '173', '1', '2019-01-21'),
(207, 55, '173', '1', '2019-01-21'),
(208, 55, '173', '1', '2019-01-21'),
(209, 56, '173', '2', '2019-01-22'),
(210, 56, '173', '2', '2019-01-22'),
(211, 57, '174', '2', '2019-02-01'),
(212, 58, '174', '1', '2019-02-01'),
(213, 59, '174', '2', '2019-02-01'),
(214, 60, '174', '1', '2019-02-01'),
(215, 60, '174', '1', '2019-02-01'),
(216, 61, '174', '2', '2019-02-01'),
(217, 61, '174', '2', '2019-02-01'),
(218, 62, '186', '1', '2019-03-09'),
(219, 62, '186', '1', '2019-03-09'),
(220, 62, '186', '1', '2019-03-09'),
(221, 63, '186', '2', '2019-03-09'),
(222, 64, '186', '2', '2019-03-09'),
(223, 64, '186', '3', '2019-03-09'),
(224, 66, '173', '1', '2019-03-25'),
(225, 67, '175', '1', '2019-03-30'),
(226, 67, '', '', '2019-03-30'),
(NULL, 5, '19', '2', '2023-01-26'),
(NULL, 6, '19', '1', '2023-01-28'),
(NULL, 8, '19', '1', '2023-01-28'),
(NULL, 10, '19', '1', '2023-01-28'),
(NULL, 11, '19', '1', '2023-01-28'),
(NULL, 13, '19', '2', '2023-01-28'),
(NULL, 14, '19', '3', '2023-01-28'),
(NULL, 15, '20', '3', '2023-01-28'),
(NULL, 16, '19', '1', '2023-01-28'),
(NULL, 17, '20', '2', '2023-01-28'),
(NULL, 18, '20', '2', '2023-01-28'),
(NULL, 19, '19', '1', '2023-01-28'),
(NULL, 20, '20', '1', '2023-01-28'),
(NULL, 21, '19', '1', '2023-01-28'),
(NULL, 22, '19', '1', '2023-01-28'),
(NULL, 23, '20', '2', '2023-01-28'),
(NULL, 24, '20', '2', '2023-01-28'),
(NULL, 25, '19', '1', '2023-01-28'),
(NULL, 27, '19', '1', '2023-01-28'),
(NULL, 28, '20', '1', '2023-01-28'),
(NULL, 29, '20', '1', '2023-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` varchar(0) DEFAULT NULL,
  `vehicleno` varchar(0) DEFAULT NULL,
  `vehiclename` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openingbalance`
--
ALTER TABLE `openingbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `openingbalance`
--
ALTER TABLE `openingbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
