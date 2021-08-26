-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 11:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add noti', 7, 'add_noti'),
(26, 'Can change noti', 7, 'change_noti'),
(27, 'Can delete noti', 7, 'delete_noti'),
(28, 'Can view noti', 7, 'view_noti'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$M0sxTcZByEDAdvK5JygqXj$zVfqqCWtYrA/1kjmrAUGeyfkH/RkddxcVWx+jP+Cg/Q=', '2021-08-24 15:28:31.213176', 1, 'faya', '', '', 'faya@gmail.com', 1, 1, '2021-08-24 14:45:14.144057'),
(2, 'pbkdf2_sha256$260000$TbrqvjSOvyrc0jFKOXw2z4$uYa7LwBawOfYFpehw1ABr1RHu/DMQG/G06GBzhSx6QA=', NULL, 0, 'faya1', '', '', '', 1, 1, '2021-08-25 20:35:15.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(2, 2, 38),
(1, 2, 40);

-- --------------------------------------------------------

--
-- Table structure for table `customer_customer`
--

CREATE TABLE `customer_customer` (
  `c_id` int(11) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `e_mail` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_customer`
--

INSERT INTO `customer_customer` (`c_id`, `f_name`, `l_name`, `e_mail`, `password`, `address`, `contact`) VALUES
(1, 'Sarath', 'Kumar', 'sktone@gmail.com', 'sk@123', 'Thirunnavaya', '9539697448'),
(2, 'Watch', 'lname', 'email@gmail.com', 'pass@123', 'address123', '9090908888'),
(4, 'nivin', 'p', 'n@gmail.com', '1234', 'Malappuram\r\nKerala', '9539697448'),
(5, 'Devadas', 'G', 'vsarath890@gmail.com', 'dev123', 'Malappuram\r\nKerala', '9539697448');

--
-- Triggers `customer_customer`
--
DELIMITER $$
CREATE TRIGGER `Loginadd` AFTER INSERT ON `customer_customer` FOR EACH ROW INSERT INTO login_login (e_mail,password,status,c_id_id) VALUES (new.e_mail,new.password,'Pending',new.c_id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-24 17:12:29.608533', '1', 'Customer object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-08-24 21:11:41.733606', '1', 'Login object (1)', 1, '[{\"added\": {}}]', 10, 1),
(3, '2021-08-25 05:22:36.324538', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-08-25 07:08:53.252034', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2021-08-25 19:10:25.412815', '2', 'Login object (2)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(6, '2021-08-25 19:11:26.635479', '2', 'Login object (2)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(7, '2021-08-25 20:35:15.651381', '2', 'faya1', 1, '[{\"added\": {}}]', 4, 1),
(8, '2021-08-25 20:35:54.746295', '2', 'faya1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'customer', 'customer'),
(7, 'customer', 'noti'),
(10, 'login', 'login'),
(9, 'product', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-24 13:41:30.811371'),
(2, 'auth', '0001_initial', '2021-08-24 13:41:35.576660'),
(3, 'admin', '0001_initial', '2021-08-24 13:41:36.482763'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-24 13:41:36.522783'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-24 13:41:36.554808'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-24 13:41:36.871225'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-24 13:41:37.427411'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-24 13:41:37.540451'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-24 13:41:37.613214'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-24 13:41:37.910265'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-24 13:41:37.926264'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-24 13:41:37.974281'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-24 13:41:38.030268'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-24 13:41:38.368516'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-24 13:41:38.448539'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-24 13:41:38.480560'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-24 13:41:38.544561'),
(18, 'sessions', '0001_initial', '2021-08-24 13:41:38.735060'),
(19, 'customer', '0001_initial', '2021-08-24 13:51:38.519814'),
(20, 'customer', '0002_auto_20210824_2052', '2021-08-24 15:23:07.273079'),
(21, 'login', '0001_initial', '2021-08-24 15:23:07.718419'),
(22, 'product', '0001_initial', '2021-08-24 15:23:07.822451'),
(23, 'product', '0002_alter_product_reg_date', '2021-08-24 17:34:34.223206'),
(24, 'product', '0002_alter_product_c_id', '2021-08-25 04:15:39.936285'),
(25, 'product', '0002_auto_20210825_1036', '2021-08-25 05:06:52.084292'),
(26, 'product', '0003_alter_product_reg_date', '2021-08-25 05:54:17.788545'),
(27, 'product', '0002_auto_20210825_1235', '2021-08-25 07:05:32.417085'),
(28, 'product', '0003_alter_product_c_id', '2021-08-25 07:06:32.584265'),
(29, 'product', '0002_auto_20210825_1343', '2021-08-25 08:13:25.601953');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('x9b3xbp9ia77s3fbuhwgjgyjeknr4h1b', '.eJxVjs0KwyAQhN_Fc5FVE6M99t5nCOu6xrQhQn6gUPruNZBDe9phZ-Zj3qLHfcv9vvLSj1FchRKX319AevJ8GPGB81AklXlbxiCPiDzdVd5L5Ol2Zv8AGddc2yYkpxlMC66LHUSLitA79KCTds46RYSWlWmCrweMBYMa2EDDiTxVKL8qp61iKsMxtf18ARWDPFE:1mIzY0:Q7Uk9JM09uiKr3202vxsuaV6gAdZVoXMhQ90u1SOs9g', '2021-09-08 20:30:56.394535');

-- --------------------------------------------------------

--
-- Table structure for table `login_login`
--

CREATE TABLE `login_login` (
  `l_id` int(11) NOT NULL,
  `e_mail` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_login`
--

INSERT INTO `login_login` (`l_id`, `e_mail`, `password`, `status`, `c_id_id`) VALUES
(2, 'vsarath890@gmail.com', 'dev123', 'pending', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `regDt` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `c_id`, `price`, `regDt`, `status`) VALUES
(3, 'Samsung f41', '3', '12000', '2021-08-25', 'Active'),
(4, 'Tv', '4', '2233', '2021-08-25', 'Active'),
(5, 'watchr', '1', '1872', '2000-05-13', 'Active'),
(6, 'Samsung m31', '3', '15000', '2021-08-25', 'pending'),
(7, 'Redmi', '5', '15000', '2021-08-26', 'Active'),
(8, 'earphone', '5', '15000', '2021-08-26', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login_login`
--
ALTER TABLE `login_login`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `login_login_c_id_id_bc5137a8_fk_customer_customer_c_id` (`c_id_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login_login`
--
ALTER TABLE `login_login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `login_login`
--
ALTER TABLE `login_login`
  ADD CONSTRAINT `login_login_c_id_id_bc5137a8_fk_customer_customer_c_id` FOREIGN KEY (`c_id_id`) REFERENCES `customer_customer` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
