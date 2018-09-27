SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `branch_phone` varchar(45) NOT NULL,
  `branch_email` varchar(45) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_gst_registration` varchar(45) NOT NULL,
  `branch_fax` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_phone`, `branch_email`, `branch_address`, `branch_gst_registration`, `branch_fax`) VALUES
(1, 'Ilam', '03-3745034', 'ilam@tyretown.net.nz', '25 Ilam Road, Ilam, Christchurch, 8023 ', '90881914', '0212648888'),
(2, 'Riccarton', '03-3457675', 'riccarton@tyretown.net.nz', '312 Blenheim Road, Riccarton, Christchurch 8011', '90874514', '0214874512'),
(3, 'Cashmere', '03-3323521', 'cashmere@tyretown.2go.net.nz', '17 Centarus Road, Cashmere, Christchurch 8023', '89422154', '0278941544'),
(4, 'Kaipoi', '03-3277140', 'kaipoi@tyretown.net.nz', '49 Williams Street, Kaipoi, Canterbury, 8421', '98715014', '0241510154'),
(5, 'Linwood', '03-3745035', 'linwood@tyretown.net.nz', '175 Linwood Avenue, Linwood, Christchurch, 8624', '97154714', '0275488541'),
(6, 'Burnside', '03-3599009', 'burnside@tyretown.net.nz', '14 Wairakei Road, Burnside, Christchurch, 8422', '93121544', '0215844842'),
(7, 'Rangiora', '03-3277140', 'rangiora@tyretown.net.nz', '482 Lineside Road, Rangiora, Rangiora, 9014', '78465141', '0204154124');

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE `inspection` (
  `inspection_id` varchar(7) NOT NULL,
  `rear_axle_camber_left_before` varchar(45) NOT NULL,
  `rear_axle_camber_right_before` varchar(45) NOT NULL,
  `rear_axle_camber_cross_before` varchar(45) NOT NULL,
  `rear_axle_camber_left_actual` varchar(45) NOT NULL,
  `rear_axle_camber_right_actual` varchar(45) NOT NULL,
  `rear_axle_camber_cross_actual` varchar(45) NOT NULL,
  `rear_axle_toe_left_before` varchar(45) NOT NULL,
  `rear_axle_toe_right_before` varchar(45) NOT NULL,
  `rear_axle_toe_total_before` varchar(45) NOT NULL,
  `rear_axle_toe_left_actual` varchar(45) NOT NULL,
  `rear_axle_toe_right_actual` varchar(45) NOT NULL,
  `rear_axle_toe_total_actual` varchar(45) NOT NULL,
  `rear_axle_geometrical_driving_axis_before` varchar(45) NOT NULL,
  `rear_axle_geometrical_driving_axis_actual` varchar(45) NOT NULL,
  `front_axle_camber_left_before` varchar(45) NOT NULL,
  `front_axle_camber_right_before` varchar(45) NOT NULL,
  `front_axle_camber_cross_before` varchar(45) NOT NULL,
  `front_axle_camber_left_actual` varchar(45) NOT NULL,
  `front_axle_camber_right_actual` varchar(45) NOT NULL,
  `front_axle_camber_cross_actual` varchar(45) NOT NULL,
  `front_axle_caster_left_before` varchar(45) NOT NULL,
  `front_axle_caster_right_before` varchar(45) NOT NULL,
  `front_axle_caster_cross_before` varchar(45) NOT NULL,
  `front_axle_caster_left_actual` varchar(45) NOT NULL,
  `front_axle_caster_right_actual` varchar(45) NOT NULL,
  `front_axle_caster_cross_actual` varchar(45) NOT NULL,
  `front_axle_SAI_left_before` varchar(45) NOT NULL,
  `front_axle_SAI_right_before` varchar(45) NOT NULL,
  `front_axle_SAI_cross_before` varchar(45) NOT NULL,
  `front_axle_SAI_left_actual` varchar(45) NOT NULL,
  `front_axle_SAI_right_actual` varchar(45) NOT NULL,
  `front_axle_SAI_cross_actual` varchar(45) NOT NULL,
  `front_axle_track_differential_angle_left_before` varchar(45) DEFAULT NULL,
  `front_axle_track_differential_angle_right_before` varchar(45) DEFAULT NULL,
  `front_axle_track_differential_angle_left_actual` varchar(45) DEFAULT NULL,
  `front_axle_track_differential_angle_right_actual` varchar(45) DEFAULT NULL,
  `front_axle_toe_left_before` varchar(45) NOT NULL,
  `front_axle_toe_right_before` varchar(45) NOT NULL,
  `front_axle_toe_total_before` varchar(45) NOT NULL,
  `front_axle_toe_left_actual` varchar(45) NOT NULL,
  `front_axle_toe_right_actual` varchar(45) NOT NULL,
  `front_axle_toe_total_actual` varchar(45) NOT NULL,
  `front_axle_setback_before` varchar(45) DEFAULT NULL,
  `front_axle_setback_actual` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_left_steer_left_before` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_left_steer_right_before` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_left_steer_left_actual` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_left_steer_right_actual` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_right_steer_left_before` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_right_steer_right_before` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_right_steer_left_actual` varchar(45) DEFAULT NULL,
  `front_axle_max_steering_lock_right_steer_right_actual` varchar(45) DEFAULT NULL,
  `technician_name` varchar(45) NOT NULL,
  `inspection_date_time` datetime NOT NULL,
  `vehicle_id` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inspection`
--

INSERT INTO `inspection` (`inspection_id`, `rear_axle_camber_left_before`, `rear_axle_camber_right_before`, `rear_axle_camber_cross_before`, `rear_axle_camber_left_actual`, `rear_axle_camber_right_actual`, `rear_axle_camber_cross_actual`, `rear_axle_toe_left_before`, `rear_axle_toe_right_before`, `rear_axle_toe_total_before`, `rear_axle_toe_left_actual`, `rear_axle_toe_right_actual`, `rear_axle_toe_total_actual`, `rear_axle_geometrical_driving_axis_before`, `rear_axle_geometrical_driving_axis_actual`, `front_axle_camber_left_before`, `front_axle_camber_right_before`, `front_axle_camber_cross_before`, `front_axle_camber_left_actual`, `front_axle_camber_right_actual`, `front_axle_camber_cross_actual`, `front_axle_caster_left_before`, `front_axle_caster_right_before`, `front_axle_caster_cross_before`, `front_axle_caster_left_actual`, `front_axle_caster_right_actual`, `front_axle_caster_cross_actual`, `front_axle_SAI_left_before`, `front_axle_SAI_right_before`, `front_axle_SAI_cross_before`, `front_axle_SAI_left_actual`, `front_axle_SAI_right_actual`, `front_axle_SAI_cross_actual`, `front_axle_track_differential_angle_left_before`, `front_axle_track_differential_angle_right_before`, `front_axle_track_differential_angle_left_actual`, `front_axle_track_differential_angle_right_actual`, `front_axle_toe_left_before`, `front_axle_toe_right_before`, `front_axle_toe_total_before`, `front_axle_toe_left_actual`, `front_axle_toe_right_actual`, `front_axle_toe_total_actual`, `front_axle_setback_before`, `front_axle_setback_actual`, `front_axle_max_steering_lock_left_steer_left_before`, `front_axle_max_steering_lock_left_steer_right_before`, `front_axle_max_steering_lock_left_steer_left_actual`, `front_axle_max_steering_lock_left_steer_right_actual`, `front_axle_max_steering_lock_right_steer_left_before`, `front_axle_max_steering_lock_right_steer_right_before`, `front_axle_max_steering_lock_right_steer_left_actual`, `front_axle_max_steering_lock_right_steer_right_actual`, `technician_name`, `inspection_date_time`, `vehicle_id`, `branch_id`) VALUES
('D884721', '-0.09\'', '-0.78\'', '0.12\'', '-0.30\'', '-0.42\'', '0.01\'', '1.43mm', '-2.5mm', '-1.7mm', '1.5mm', '1.4mm', '3.1mm', '0.02\'', '0.01\'', '-0.08\'', '0.21\'', '-0.27\'', '0.01\'', '0.15\'', '0.02\'', '2.42\'', '1.85\'', '-0.05\'', '2.32\'', '2.20\'', '-0.02\'', '12.44\'', '12.26\'', '0.12\'', '12.40\'', '12.11\'', '0.01\'', NULL, NULL, NULL, NULL, '1.23mm', '2.4mm', '1.05mm', '0.4mm', '0.7mm', '1.2mm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cooper', '2018-06-05 11:20:00', '3FS8DC7AS49328328', 5),
('R005374', '-0.50\'', '-0.33\'', '-0.16\'', '-0.36\'', '-0.33\'', '-0.04\'', '0.6mm', '-2.7mm', '-2.1mm', '1.8mm', '1.7mm', '3.5mm', '0.09\'', '0.00\'', '-0.09\'', '0.22\'', '-0.31\'', '-0.01\'', '0.16\'', '-0.17\'', '2.10\'', '2.17\'', '-0.08\'', '2.10\'', '2.17\'', '-0.08\'', '12.43\'', '12.26\'', '0.17\'', '12.34\'', '12.33\'', '0.02\'', NULL, NULL, NULL, NULL, '1.7mm', '2.3mm', '3.9mm', '0.9mm', '0.8mm', '1.7mm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Raj', '2018-02-09 09:18:00', '7AT0CJ0DX12300244', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` varchar(7) NOT NULL,
  `description` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `description`, `quantity`, `unit_price`, `date`, `due_date`, `customer_id`) VALUES
('B742632', 'Batmobile Wheel Alignment', 6, 76.971, '2018-02-23', '2018-04-14', 1),
('D884721', 'Wheel alignment and charge', 2, 42.451, '2018-04-13', '2018-04-14', 5),
('R005374', 'Wheel Alignment', 1, 34.7826, '2018-02-09', '2018-02-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `owner_fname` varchar(45) NOT NULL,
  `owner_lname` varchar(45) NOT NULL,
  `owner_phone` varchar(45) NOT NULL,
  `owner_email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `owner_fname`, `owner_lname`, `owner_phone`, `owner_email`) VALUES
(1, 'Bruce', 'Wayne', '0214857489', 'notbatman@waynecorp.com'),
(2, 'Thanos', 'Of Titan', '0278941578', 'thanos@allthingsbalance.org'),
(3, 'Peter', 'Parker', '0204584514', 'spider@man.com'),
(4, 'Tony', 'Stark', '0214821454', 'tony@starkindustries.com'),
(5, 'Elon', 'Musk', '0245158741', 'elon@mars.space'),
(6, 'Austin', 'Post', '0215415478', 'postmalone@rockstar.com');

-- --------------------------------------------------------

--
-- Table structure for table `targetValue`
--

CREATE TABLE `targetValue` (
  `idtargetValue` int(11) NOT NULL,
  `rear_axle_camber_left_right_target` varchar(45) NOT NULL,
  `rear_axle_camber_cross_target` varchar(45) NOT NULL,
  `rear_axle_toe_left_right_target` varchar(45) NOT NULL,
  `rear_axle_toe_total_target` varchar(45) NOT NULL,
  `rear_axle_geometrical_driving_axis_target` varchar(45) NOT NULL,
  `front_axle_camber_left_right_target` varchar(45) NOT NULL,
  `front_axle_camber_cross_target` varchar(45) NOT NULL,
  `front_axle_caster_left_right_target` varchar(45) NOT NULL,
  `front_axle_caster_cross_target` varchar(45) NOT NULL,
  `front_axle_sai_left_right_target` varchar(45) NOT NULL,
  `front_axle_sai_cross_target` varchar(45) NOT NULL,
  `front_axle_track_differential_angle_left_right_target` varchar(45) DEFAULT NULL,
  `front_axle_toe_left_right_target` varchar(45) NOT NULL,
  `front_axle_toe_total_target` varchar(45) NOT NULL,
  `front_axle_setback_target` varchar(45) NOT NULL,
  `front_axle_max_steering_lock_left_steer_left_target` varchar(45) NOT NULL,
  `front_axle_max_steering_lock_left_steer_right_target` varchar(45) NOT NULL,
  `front_axle_max_steering_lock_right_steer_left_target` varchar(45) NOT NULL,
  `front_axle_max_steering_lock_right_steer_right_target` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `targetValue`
--

INSERT INTO `targetValue` (`idtargetValue`, `rear_axle_camber_left_right_target`, `rear_axle_camber_cross_target`, `rear_axle_toe_left_right_target`, `rear_axle_toe_total_target`, `rear_axle_geometrical_driving_axis_target`, `front_axle_camber_left_right_target`, `front_axle_camber_cross_target`, `front_axle_caster_left_right_target`, `front_axle_caster_cross_target`, `front_axle_sai_left_right_target`, `front_axle_sai_cross_target`, `front_axle_track_differential_angle_left_right_target`, `front_axle_toe_left_right_target`, `front_axle_toe_total_target`, `front_axle_setback_target`, `front_axle_max_steering_lock_left_steer_left_target`, `front_axle_max_steering_lock_left_steer_right_target`, `front_axle_max_steering_lock_right_steer_left_target`, `front_axle_max_steering_lock_right_steer_right_target`) VALUES
(1, '-0.40\' +/-0.30\'', '-0.00\' +/-0.30\'', '1.5mm +/-1.0mm', '3mm +/-2.0mm', '-0.00\'', '-0.00\' +/-0.30\'', '-0.00\' +/-0.30\'', '-2.35\' +/-0.30\'', '-0.00\' +/-0.30\'', '-12.40\' +/-0.45\'', '-0.00\'', NULL, '0.5mm +/-1.0mm', '1mm +/-2.0mm', '-0.00\'', '-41.00\' +/-1.30\'', '-33.00\' +/-1.30\'', '-33.00\' +/-1.30\'', '-41.00\' +/-1.30\'');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` varchar(17) NOT NULL,
  `vehicle_chassis` varchar(12) NOT NULL,
  `vehicle_model` varchar(45) NOT NULL,
  `vehicle_make` varchar(45) NOT NULL,
  `vehicle_registration` varchar(45) NOT NULL,
  `vehicle_body_type` varchar(45) NOT NULL,
  `vehicle_year` varchar(45) NOT NULL,
  `vehicle_first_registration_date` date NOT NULL,
  `vehicle_odometer_reading` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_chassis`, `vehicle_model`, `vehicle_make`, `vehicle_registration`, `vehicle_body_type`, `vehicle_year`, `vehicle_first_registration_date`, `vehicle_odometer_reading`, `owner_id`) VALUES
('2CR2DF3AC45100214', 'AA1D-8001541', 'Prius', 'Toyota', 'Q3WFV2', 'Sedan', '2012', '2013-02-06', 152014, 2),
('3FS8DC7AS49328328', 'DD6C-7842102', 'Roadster', 'Tesla', 'TOMARS', 'Roadster', '2008', '2008-07-04', 180454, 5),
('6XD8DC7AS28228087', 'AB2K-7833861', 'Batmobile', 'Waynecorp', 'THEBAT', 'Hero Car', '2018', '2018-02-04', 100000, 1),
('7AT0CJ0DX12300244', 'CS2W-0300244', 'Lancer', 'Mistsubishi', 'DCF254', 'Station Wagon', '2007', '2007-05-01', 147245, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `inspection`
--
ALTER TABLE `inspection`
  ADD PRIMARY KEY (`inspection_id`),
  ADD KEY `vehicle_inspection_fk_idx` (`vehicle_id`),
  ADD KEY `branch_inspection_fk_idx` (`branch_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `customer_invoice_fk_idx` (`customer_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `targetValue`
--
ALTER TABLE `targetValue`
  ADD PRIMARY KEY (`idtargetValue`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `owner_vehicle_fk_idx` (`owner_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inspection`
--
ALTER TABLE `inspection`
  ADD CONSTRAINT `branch_inspection_fk` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `vehicle_inspection_fk` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `customer_invoice_fk` FOREIGN KEY (`customer_id`) REFERENCES `owner` (`owner_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `owner_vehicle_fk` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
