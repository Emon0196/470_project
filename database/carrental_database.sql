-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 03:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `a_id` int(20) NOT NULL,
  `a_number` varchar(200) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL,
  `a_dpic` varchar(200) NOT NULL,
  `a_bio` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`a_id`, `a_number`, `a_name`, `a_email`, `a_pwd`, `a_dpic`, `a_bio`) VALUES
(6, 'Q3LYF7', '', 'mehedi.hasan.emon@g.bracu.ac.bd', 'd95dddf3032e0eb7b3ea160ca327dbc5fee90a38', 'eugene-tkachenko-poWsLrpntc8-unsplash.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `b_id` int(20) NOT NULL,
  `b_date` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4),
  `b_status` varchar(200) NOT NULL DEFAULT 'Pending',
  `c_id` varchar(200) NOT NULL,
  `a_id` varchar(200) NOT NULL,
  `cc_id` varchar(200) NOT NULL,
  `s_id` varchar(200) NOT NULL,
  `car_id` varchar(200) NOT NULL,
  `car_name` varchar(200) NOT NULL,
  `car_type` varchar(200) NOT NULL,
  `car_regno` varchar(200) NOT NULL,
  `b_duration` varchar(200) NOT NULL,
  `car_price` varchar(200) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_natidno` varchar(200) NOT NULL,
  `c_phone` varchar(200) NOT NULL,
  `b_number` varchar(200) NOT NULL,
  `b_payment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`b_id`, `b_date`, `b_status`, `c_id`, `a_id`, `cc_id`, `s_id`, `car_id`, `car_name`, `car_type`, `car_regno`, `b_duration`, `car_price`, `c_name`, `c_natidno`, `c_phone`, `b_number`, `b_payment`) VALUES
(52, '2022-08-18 12:57:48.1302', 'Approved', '7', '', '4', '', '5', 'Jeep Wrangler', 'Sports Utility Vehicle (SUV)', 'gazipur-gha', '1', '5500', 'Emon Bepary', '019644234344848345', '01964438983', 'CRMS-B-NJQK-8190 ', 'Paid'),
(59, '2022-08-18 13:04:09.2667', 'Approved', '7', '', '6', '', '7', 'Dodge Challenger', 'Coupe', 'khulna_kha', '1', '7000', 'Emon Bepary', '019644234344848345', '01964438983', 'CRMS-B-EGMQ-0539 ', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `car_categories`
--

CREATE TABLE `car_categories` (
  `car_cat_id` int(20) NOT NULL,
  `car_cat_name` varchar(200) NOT NULL,
  `car_cat_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_categories`
--

INSERT INTO `car_categories` (`car_cat_id`, `car_cat_name`, `car_cat_desc`) VALUES
(1, 'Hatchback', 'A hatchback is a car type with a rear door that opens upwards. They typically feature a four-door configuration, excluding the rear door. However, two-door hatchbacks are not uncommon.'),
(2, 'Sedan | Saloon', 'Out of the different types of cars, a sedan (US) or a saloon (UK) is traditionally defined as a car with four doors and a typical boot/ trunk. A slightly technical detail is that it usually features a 3-box configuration with each of the boxes categorically used for the engine, passenger, and cargo.\r\n\r\nSedans have several sub-types such as notchback, fastback, compact, and sub-compact. It may be interesting to note that cars such as the older generation models of the Skoda Octavia are often incorrectly referred to as notchbacks.'),
(3, 'Multi-Purpose Vehicle (MPV)', 'A multi-purpose vehicle (MPV) or multi-utility vehicle (MUV) are commonly known as \'people carriers\'. They are designed to offer enhanced space and comfort for passengers with two or three rows of seating and large doors. The third row on MPVs/ MUVs can generally be reconfigured.'),
(4, 'Sports Utility Vehicle (SUV)', 'Conventionally, a sports utility vehicle (SUV) is a big car built on a body-on-frame chassis, sports increased ground clearance and offers off-roading capabilities to a certain extent. With that said, the aforementioned definition of an SUV has blurred over time and often includes both off-roaders and soft-roaders.'),
(5, 'Crossover', 'A simple, and common, definition of a crossover would be that it is a vehicle that combines the features of an SUV and a hatchback. Crossover vehicles offer soft-roading capabilities and are constructed like a car - they use unibody construction instead of the body-on-frame platform used in SUVs.'),
(6, 'Coupe', 'A coupe is classically defined as a closed two-door car with a fixed roof. Considered sporty by nature, it generally gets just 2 seats or with a smaller-than-average rear. The typical definition of a coupe has evolved over time and differs across manufacturers and now is also ascribed to cars with four doors and coupe-like proportions, chiefly for their sporty appeal instead of number of doors.\r\n\r\n'),
(7, 'Convertible', 'A convertible, a.k.a. a cabriolet or roadster, is a car with a roof structure that can be \'converted\' to allow open-air or enclosed driving. They feature either a retractable hardtop roof or soft folding top.');

-- --------------------------------------------------------

--
-- Table structure for table `car_list`
--

CREATE TABLE `car_list` (
  `car_id` int(20) NOT NULL,
  `car_cat_id` varchar(200) NOT NULL,
  `car_regno` varchar(200) NOT NULL,
  `car_name` varchar(200) NOT NULL,
  `car_type` varchar(200) NOT NULL,
  `car_price` varchar(200) NOT NULL,
  `car_features` longtext NOT NULL,
  `exterior_img` varchar(200) NOT NULL,
  `interior_img` varchar(200) NOT NULL,
  `rear_img` varchar(200) NOT NULL,
  `front_img` varchar(200) NOT NULL,
  `car_status` varchar(200) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_list`
--

INSERT INTO `car_list` (`car_id`, `car_cat_id`, `car_regno`, `car_name`, `car_type`, `car_price`, `car_features`, `exterior_img`, `interior_img`, `rear_img`, `front_img`, `car_status`) VALUES
(1, '1', 'dhaka-ka', 'Subaru WRX', 'Hatchback', '3500', '<h1>Designed to Dominate Corners</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>Subaru Symmetrical All-Wheel Drive</li>\r\n	<li>Track-Tuned Suspension</li>\r\n	<li>Vehicle Dynamics Control with Active Torque Vectoring</li>\r\n	<li>Quick-Ratio Steering and Aluminum Front Lower Control Arms</li>\r\n</ul>\r\n\r\n<h1>Breathtaking Performance</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>Direct-Injection Turbocharged SUBARU BOXER<sup>&reg;</sup> Engine</li>\r\n	<li>Performance Package</li>\r\n	<li>Brembo<sup>&reg;</sup> Performance Brakes</li>\r\n	<li>Sport Lineartronic<sup>&reg;</sup> Transmission</li>\r\n</ul>\r\n\r\n<h1>Flexible with Advanced Technology</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>SUBARU STARLINK<sup>&reg;</sup> Multimedia</li>\r\n	<li>EyeSight<sup>&reg;</sup> Driver Assist Technology</li>\r\n	<li>Harman Kardon<sup>&reg;</sup> Premium Audio</li>\r\n</ul>\r\n\r\n<h1>WRX STI</h1>\r\n\r\n<div class=\"items-list\">\r\n<ul>\r\n	<li>310-hp Turbocharged SUBARU BOXER<sup>&reg;</sup> Engine with Symmetrical All-Wheel Drive</li>\r\n	<li>6-Piston Front and 2-Piston Rear Brembo<sup>&reg;</sup> Brakes</li>\r\n	<li>Recaro<sup>&reg;</sup> Performance Seats</li>\r\n	<li>Lightweight 19-Inch Wheels</li>\r\n	<li>Ultra-Quick Steering Ratio</li>\r\n	<li>Driver Controlled Center Differential</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '20_WRX_photos_ext_01.jpg', '20_WRX_photos_int_04.jpg', '20_WRX_photos_ext_08.jpg', '20_WRX_photos_ext_07.jpg', 'Available'),
(2, '1', 'sylhet-ka', 'Mazda Demio', 'Hatchback', '3500', '<p>RHD PETROL 71,000km AT 2WD 5door 5seats PS, AC, RS, NV, AB, ABS, PWFeatures</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"accesories\" style=\"height:103px; width:472px\" summary=\"Accessories\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Air Bag</td>\r\n			<td>Anti-Lock Brake System</td>\r\n			<td>Air Conditioner</td>\r\n			<td>Alloy Wheels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Back Tire</td>\r\n			<td>Fog Lights</td>\r\n			<td>Grill Guard</td>\r\n			<td>Leather Seats</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Navigation</td>\r\n			<td>Power Steering</td>\r\n			<td>Power Windows</td>\r\n			<td>Roof Rails</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rear Spoiler</td>\r\n			<td>Sun Roof</td>\r\n			<td>TV</td>\r\n			<td>Dual Air Bags</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'exterioir.jpg', 'dashboard.jpg', 'Daihatsu Copen 2017-rear.jpeg.jpeg', 'f.jpg', 'Available'),
(3, '7', 'dhaka-gha', 'Mercedes-Benz E Class ', 'Convertible', '4000', '<div class=\"listing-detail__sub-container\">\r\n<h1>Description</h1>\r\n\r\n<p>2011 Mercedes Benz SLK 200 1.8L turbo charged engine 55000 kms Convertible Multifunctional steering wheel Parking sensors with rear camera Electric adjustable seats with memory Heated / cooled seats Air scarf KCR 222 Reg Available in Nairobi. Ksh 2,600,000/=</p>\r\n\r\n<h1 class=\"listing-detail__sub-heading\">Overview</h1>\r\n\r\n<div class=\"listing-detail__attributes\">\r\n<p>Mileage (km) 55000</p>\r\n\r\n<p>Condition Foreign Used</p>\r\n\r\n<p>Body Type&nbsp; Convertibles</p>\r\n\r\n<p>Colour&nbsp; Black</p>\r\n\r\n<p>Fuel Petrol</p>\r\n\r\n<p>Transmission Automatic</p>\r\n\r\n<p>Duty Type Duty Paid</p>\r\n\r\n<p>Interior Type&nbsp; Leather</p>\r\n\r\n<p>Engine Size 1800cc</p>\r\n\r\n<p>Year&nbsp; 2011</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"listing-detail__sub-container\">\r\n<h1 class=\"listing-detail__sub-heading\">Features</h1>\r\n\r\n<ul>\r\n	<li>Air Conditioning</li>\r\n	<li>Airbags</li>\r\n	<li>Alloy Wheels</li>\r\n	<li>AM/FM Radio</li>\r\n	<li>CD Player</li>\r\n	<li>Cup Holders</li>\r\n	<li>Electric Mirrors</li>\r\n	<li>Electric Windows</li>\r\n	<li>External Winch</li>\r\n	<li>Keyless Entry</li>\r\n	<li>Power Steering</li>\r\n	<li>Rear Camera</li>\r\n	<li>Sunroof</li>\r\n	<li>Thumbstart Ignition</li>\r\n	<li>Traction Control</li>\r\n	<li>Turbo Charged</li>\r\n	<li>Wheel Locks</li>\r\n	<li>Xenon Lights</li>\r\n</ul>\r\n</div>\r\n', 'Mercedes_1.jpg', 'Mercedes 3.jpg', 'Mercedes_2.jpg', 'Mercedes_2.jpg', 'Available'),
(5, '4', 'gazipur-gha', 'Jeep Wrangler', 'Sports Utility Vehicle (SUV)', '5500', '<div class=\"rich-text-article-section--body\">\r\n<div class=\"article-snippet\">\r\n<div class=\"article-snippet--content\">\r\n<p>Rugged and undeniably capable off-road, the <a href=\"https://www.carmax.com/cars/jeep/wrangler\">Jeep Wrangler</a> puts the utility in sport utility vehicle. For 2019, the Wrangler comes in two-door or four-door options: the two-door is available in Sport, Sport S, and Rubicon trims and the four-door in Sport, Sport S, Sahara, Moab, and Rubicon trims. Love a manual transmission? With its standard 3.6L V6 paired to a six-speed manual (or an available eight-speed automatic), this is the SUV for you. There&#39;s nothing like opening up your Wrangler and feeling the wind envelop your whole body; driving a <a href=\"https://www.carmax.com/cars/jeep/wrangler\">Jeep Wrangler</a> feels like an adventure as soon as you slide behind the wheel.</p>\r\n\r\n<p>The base <a href=\"https://www.carmax.com/cars/jeep/wrangler/2017\">2017</a>-<a href=\"https://www.carmax.com/cars/jeep/wrangler/2019\">2019 Jeep Wrangler</a> includes:</p>\r\n\r\n<ul>\r\n	<li>Tire pressure monitoring system</li>\r\n	<li>Skid plates and tow hooks</li>\r\n	<li>Removable full-metal doors with crank windows</li>\r\n	<li>Fold-down windshield</li>\r\n	<li>Air conditioning (optional on the two-door Sport)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"rich-text-article-section--title\">\r\n<div class=\"rich-text-article-section--counter rich-text-section-numbering--numbered\">\r\n<div class=\"rich-text-article-section--counter--no-border\">&nbsp;</div>\r\n</div>\r\n</div>\r\n', 'Jeep Wrangler-extr.jpg', 'Jeep Wrangler-interior.jpg', 'Jeep Wrangler-rear.jpeg', 'Jeep Wrangler-front.jpg', 'Hired'),
(6, '4', 'chittagong-cha', 'Jeep Grand Cherokee', 'Sports Utility Vehicle (SUV)', '6000', '<div class=\"article-snippet--content\">\r\n<p>The <a href=\"https://www.carmax.com/cars/jeep/grand-cherokee/2019\">2019 Jeep Grand Cherokee</a> offers a wide selection of trims, with seven diverse options. Starting with the base Laredo, which includes a 3.6L V6 engine generating 295 horsepower and 260 lb.-ft. of torque, you will enjoy a plush interior and a host of standard features.</p>\r\n\r\n<p>If you and your family are adventure-oriented, the 2019 Trailhawk is an off-road specialist trim and includes 4WD. And if you really want the whole package plus a blistering 707 horsepower, the 2018-2019 Trackhawk is the one for you.</p>\r\n\r\n<p>The base <a href=\"https://www.carmax.com/cars/jeep/grand-cherokee/2019\">2019 Jeep Grand Cherokee</a> includes the following:</p>\r\n\r\n<ul>\r\n	<li>Dual-zone automatic climate control</li>\r\n	<li>Rearview camera</li>\r\n	<li>Rear parking sensors</li>\r\n	<li>Seven-inch touchscreen (2018-2019 models; 2017 model has a five-inch screen)</li>\r\n	<li>Six-speaker audio system</li>\r\n</ul>\r\n</div>\r\n', 'GrandCherokee-Ext.jpg', 'GrandCherokee-Front.jpg', 'GrandCherokee-EXtrjpg.jpg.jpg', 'GrandCherokee-Front.jpg', 'Available'),
(7, '6', 'khulna_kha', 'Dodge Challenger', 'Coupe', '7000', '<ul>\r\n	<li>Classic exterior styling</li>\r\n	<li>Roomy interior</li>\r\n	<li>All-weather usability (AWD versions)</li>\r\n	<li>Excellent Uconnect multimedia system</li>\r\n	<li>Massive power (supercharged V-8)</li>\r\n	<li>Front and rear ventilated disc brakes</li>\r\n	<li>Remote activated perimeter/approach lights</li>\r\n	<li>Manual adjustable front head restraints</li>\r\n	<li>Dual front impact airbags</li>\r\n	<li>Remote keyless entry</li>\r\n	<li>Side-impact bars</li>\r\n	<li>Seat-mounted driver and passenger side-impact airbags</li>\r\n	<li>Electronic stability</li>\r\n	<li>Adjustable front head restraints</li>\r\n	<li>Electronic stability stability control with anti-roll</li>\r\n</ul>\r\n', 'Dodge-Ext.jpg', '2020_dodge_challenger_interio.jpg', 'Dodge-Rear.jpeg', '2018 Dodge Challenger SRT Demon (1).jpg', 'Hired'),
(8, '3', 'rajshahi-ga', ' Volkswagen Sharan', 'Multi-Purpose Vehicle (MPV)', '4000', '<p>They come with</p>\r\n\r\n<ul>\r\n	<li>smart-looking 16-inch alloy wheels,</li>\r\n	<li>Bluetooth connectivity,</li>\r\n	<li>upgraded front seats with lumbar support and an electric backrest adjustment.</li>\r\n	<li>Tinted rear windows,</li>\r\n	<li>cruise control</li>\r\n	<li>&nbsp;range of additional storage cubbies are also included.</li>\r\n</ul>\r\n', 'VW_Sharan_(1).JPG', 'VW_Sharan_rearIN.jpg', 'VW_Sharan_rearJPG.jpeg', 'VW_Sharan_(1).JPG', 'Available'),
(9, '6', 'Dhaka-tha', 'Bugatti Chiron', 'Coupe', '10000', '<p>Best supercar in the world!!!</p>\r\n', 'wes-tindel-nES5B4V5WKs-unsplash.jpg', 'bugatti interior.jpg', 'viktor-theo-F_jI33ON9Fw-unsplash.jpg', 'wes-tindel-UBioK0WEOvA-unsplash.jpg', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `c_id` int(20) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_natidno` varchar(200) NOT NULL,
  `c_phone` varchar(200) NOT NULL,
  `c_dob` varchar(200) NOT NULL,
  `c_adr` varchar(200) NOT NULL,
  `c_email` varchar(200) NOT NULL,
  `c_pwd` varchar(200) NOT NULL,
  `c_dpic` varchar(200) NOT NULL,
  `c_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`c_id`, `c_name`, `c_natidno`, `c_phone`, `c_dob`, `c_adr`, `c_email`, `c_pwd`, `c_dpic`, `c_number`) VALUES
(7, 'Emon Bepary', '019644234344848345', '01964438983', '', 'Dhaka', 'emon96@gmail.com', '10e79c44d5e6ecb81f1b1ae8dc9fb8e2859bfe4d', 'IMG_20200113_112752.jpg', 'CRMS-C-YHVD-7629 ');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `f_id` int(20) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_number` varchar(200) NOT NULL,
  `feedback` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`f_id`, `user_name`, `user_number`, `feedback`, `f_status`) VALUES
(1, 'Emon Bepary', 'CRMS-C-IJEW-8420 ', '<p>I am impressed with sheer quality of the service. Would like to recommend this site to all.</p>\r\n', 'Published'),
(2, 'Emon Bepary', 'CRMS-C-IJEW-8420 ', 'STFU noob u cant even shoot.', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `p_id` int(20) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `b_duration` varchar(200) NOT NULL,
  `p_amt` varchar(200) NOT NULL,
  `car_id` varchar(200) NOT NULL,
  `car_cat_id` varchar(200) NOT NULL,
  `car_regno` varchar(200) NOT NULL,
  `car_type` varchar(200) NOT NULL,
  `car_name` varchar(200) NOT NULL,
  `c_id` varchar(200) NOT NULL,
  `a_id` varchar(200) NOT NULL,
  `c_natidno` varchar(200) NOT NULL,
  `p_code` varchar(200) NOT NULL,
  `p_method` varchar(200) NOT NULL,
  `p_ref_number` varchar(200) NOT NULL,
  `p_date` timestamp(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`p_id`, `c_name`, `b_duration`, `p_amt`, `car_id`, `car_cat_id`, `car_regno`, `car_type`, `car_name`, `c_id`, `a_id`, `c_natidno`, `p_code`, `p_method`, `p_ref_number`, `p_date`) VALUES
(22, 'Emon Bepary', '1', '7000', '7', '6', 'KHULNA-KA', 'Coupe', 'Dodge Challenger', '7', '', '019644234344848345', 'CRMS-P-TUHN-8016 ', 'Bkash', '878y77t6', '2022-08-16 20:57:45.7283'),
(23, 'Emon Bepary', '1', '5500', '5', '4', 'gazipur-gha', 'Sports Utility Vehicle (SUV)', 'Jeep Wrangler', '7', '', '019644234344848345', 'CRMS-P-AYGV-2851 ', 'Cash on Delivery', '878y77t6', '2022-08-18 12:57:48.0511'),
(24, 'Emon Bepary', '1', '10000', '9', '6', 'Dhaka-tha', 'Coupe', 'Bugatti Chiron', '7', '', '019644234344848345', 'CRMS-P-PTDZ-2084 ', 'Bkash', '878y77t6', '2022-08-18 12:58:27.7358'),
(25, 'Emon Bepary', '1', '7000', '7', '6', 'khulna_kha', 'Coupe', 'Dodge Challenger', '7', '', '019644234344848345', 'CRMS-P-MQFE-5672 ', 'Nagad', '878y77t6', '2022-08-18 13:04:09.1108');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `car_categories`
--
ALTER TABLE `car_categories`
  ADD PRIMARY KEY (`car_cat_id`);

--
-- Indexes for table `car_list`
--
ALTER TABLE `car_list`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `b_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `car_categories`
--
ALTER TABLE `car_categories`
  MODIFY `car_cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_list`
--
ALTER TABLE `car_list`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `c_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `p_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
