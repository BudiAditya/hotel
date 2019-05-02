-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table be-hotel.about
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `description` text,
  `slide_1` varchar(255) DEFAULT NULL,
  `slide_2` varchar(255) DEFAULT NULL,
  `slide_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.about: ~0 rows (approximately)
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
REPLACE INTO `about` (`id`, `title`, `subtitle`, `feature_image`, `description`, `slide_1`, `slide_2`, `slide_3`, `created_at`, `updated_at`) VALUES
	(1, 'The Hotel', 'Enjoy a Luxury Experience', 'uploads/1/2019-01/bg_1.jpg', '<p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, necessitatibus officiis facere nisi et, ut adipisci a quis quisquam vitae doloremque tempora repellat quae accusantium atque eum voluptatibus aperiam cumque.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Quia ratione, eum harum ab similique mollitia, nisi itaque vel voluptas ipsam dolore perferendis. Deleniti voluptatum error possimus ipsum, sed, obcaecati. Sit unde quia eum repudiandae molestiae reprehenderit harum nesciunt.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Pariatur non consectetur libero, veniam inventore officia neque ipsum vel vitae repudiandae doloribus odit nihil dicta sit, magnam eos, in asperiores consequuntur eaque atque nam error. Dignissimos porro veniam voluptate.</p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, necessitatibus officiis facere nisi et, ut adipisci a quis quisquam vitae doloremque tempora repellat quae accusantium atque eum voluptatibus aperiam cumque.<br></p><p style="margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Quia ratione, eum harum ab similique mollitia, nisi itaque vel voluptas ipsam dolore perferendis. Deleniti voluptatum error possimus ipsum, sed, obcaecati. Sit unde quia eum repudiandae molestiae reprehenderit harum nesciunt.</p>', 'uploads/1/2019-01/bg_3.jpg', 'uploads/1/2019-01/bg_2.jpg', 'uploads/1/2019-01/bg_1.jpg', '2019-01-15 10:05:32', NULL);
/*!40000 ALTER TABLE `about` ENABLE KEYS */;

-- Dumping structure for table be-hotel.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `link` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.banner: ~3 rows (approximately)
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
REPLACE INTO `banner` (`id`, `title`, `description`, `link`, `button_text`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Welcome', 'Enjoy a Luxury Experience', '#', 'Learn More', 'uploads/1/2019-01/bg_1.jpg', '2019-01-15', '2019-01-15'),
	(2, 'Welcome', 'Simple & Elegant', '#', 'Learn More', 'uploads/1/2019-01/bg_2.jpg', '2019-01-15', NULL),
	(3, 'Welcome', 'Food & Drinks', '#', 'Learn More', 'uploads/1/2019-01/bg_3.jpg', '2019-01-15', NULL);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table be-hotel.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `booking_no` varchar(255) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `number_of_guest` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(25) DEFAULT NULL,
  `alamat` text,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `special_request` text,
  `subtotal` double DEFAULT NULL,
  `services_price` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_field_1` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.booking: ~2 rows (approximately)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
REPLACE INTO `booking` (`id`, `booking_no`, `id_room`, `check_in`, `check_out`, `qty`, `number_of_guest`, `name`, `email`, `phone_no`, `alamat`, `province`, `city`, `special_request`, `subtotal`, `services_price`, `grand_total`, `created_at`, `updated_at`, `custom_field_1`) VALUES
	(1, '1', 1, '2019-01-19', '2019-01-20', 1, 1, 'test', 'test@test.com', '+12345678', 'alamat si test', 'DKI Jakarta', 'Kota Jakarta Barat', 'spec request', 1000000, 550000, 1550000, '2019-01-19 13:14:36', NULL, NULL),
	(2, '322019012', 3, '2019-01-19', '2019-01-20', 1, 2, 'test', 'test@test.com', '2345678', 'alamat si test', 'DKI Jakarta', 'Kota Jakarta Barat', 'asdadas', 3000000, 300000, 3300000, '2019-01-19 13:23:06', '2019-01-19 13:38:23', NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;

-- Dumping structure for table be-hotel.booking_services
CREATE TABLE IF NOT EXISTS `booking_services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.booking_services: ~3 rows (approximately)
/*!40000 ALTER TABLE `booking_services` DISABLE KEYS */;
REPLACE INTO `booking_services` (`id`, `id_booking`, `id_services`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2019-01-19 13:14:36', '2019-01-19 13:14:36'),
	(2, 1, 2, '2019-01-19 13:14:36', '2019-01-19 13:14:36'),
	(4, 2, 1, '2019-01-19 13:23:06', '2019-01-19 13:23:06');
/*!40000 ALTER TABLE `booking_services` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_apicustom
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_apicustom: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_apikey
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_apikey: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_dashboard
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_dashboard: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_email_queues
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_email_queues: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_email_templates
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_email_templates: ~2 rows (approximately)
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
REPLACE INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-01-12 15:30:20', NULL),
	(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-01-12 15:31:36', NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_logs
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_logs: ~102 rows (approximately)
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
REPLACE INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-12 15:32:29', NULL),
	(2, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-13 04:51:23', NULL),
	(3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/16', 'Delete data Post at Module Generator', '', 1, '2019-01-13 05:11:09', NULL),
	(4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data List Post at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Post</td><td>List Post</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-13 05:13:48', NULL),
	(5, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Post at Menu Management', '', 1, '2019-01-13 05:14:08', NULL),
	(6, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Media at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-file-image-o</td><td>fa fa-file-o</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-13 05:30:01', NULL),
	(7, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Media at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-file-o</td><td>fa fa-file-image-o</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-13 05:30:22', NULL),
	(8, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Form at Menu Management', '', 1, '2019-01-13 05:32:27', NULL),
	(9, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/facilities/add-save', 'Add New Data TV at Fasilitas', '', 1, '2019-01-13 06:38:48', NULL),
	(10, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/facilities/add-save', 'Add New Data WiFi at Fasilitas', '', 1, '2019-01-13 06:38:58', NULL),
	(11, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/facilities/add-save', 'Add New Data AC at Fasilitas', '', 1, '2019-01-13 06:39:10', NULL),
	(12, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 1 at Room', '', 1, '2019-01-13 09:19:06', NULL),
	(13, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 1 at Room', '', 1, '2019-01-13 09:20:55', NULL),
	(14, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 1 at Room', '', 1, '2019-01-13 09:23:17', NULL),
	(15, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 1 at Room', '', 1, '2019-01-13 10:46:57', NULL),
	(16, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 1 at Room', '', 1, '2019-01-13 13:42:50', NULL),
	(17, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Room 2 at Room', '', 1, '2019-01-13 13:43:35', NULL),
	(18, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-13 13:46:28', NULL),
	(19, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/1', 'Update data Room 1 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-13 13:55:13', NULL),
	(20, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-13 13:55:29', NULL),
	(21, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-13 15:39:02', NULL),
	(22, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-13 15:40:34', NULL),
	(23, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-13 15:51:27', NULL),
	(24, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 1, '2019-01-13 15:53:01', NULL),
	(25, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-13 15:53:07', NULL),
	(26, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:9010/admin/logout', 'admin@admin.com logout', '', 1, '2019-01-13 16:10:01', NULL),
	(27, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-14 03:09:02', NULL),
	(28, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-14 08:03:42', NULL),
	(29, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/add-save', 'Add New Data Sauna at Layanan', '', 1, '2019-01-14 08:20:02', NULL),
	(30, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/add-save', 'Add New Data Massage at Layanan', '', 1, '2019-01-14 08:21:11', NULL),
	(31, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/edit-save/1', 'Update data Sauna at Layanan', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>250000</td><td>300000</td></tr></tbody></table>', 1, '2019-01-14 08:27:11', NULL),
	(32, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/delete/1', 'Delete data test at Booking', '', 1, '2019-01-14 09:43:45', NULL),
	(33, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/add-save', 'Add New Data test at Booking', '', 1, '2019-01-14 09:44:06', NULL),
	(34, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-14 14:42:48', NULL),
	(35, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>550000</td><td>300000</td></tr><tr><td>grand_total</td><td>1550000</td><td>1300000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 14:57:15', NULL),
	(36, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 14:58:59', NULL),
	(37, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>300000</td><td>250000</td></tr><tr><td>grand_total</td><td>1300000</td><td>1250000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:07:01', NULL),
	(38, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>250000</td><td>850000</td></tr><tr><td>grand_total</td><td>1250000</td><td>1850000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:13:32', NULL),
	(39, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>550000</td><td>850000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:35:21', NULL),
	(40, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:35:37', NULL),
	(41, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>grand_total</td><td>1850000</td><td>1550000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:37:10', NULL),
	(42, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>850000</td><td>550000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-14 15:37:23', NULL),
	(43, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-15 02:20:53', NULL),
	(44, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>published</td><td>Available</td></tr></tbody></table>', 1, '2019-01-15 02:21:44', NULL),
	(45, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/1', 'Update data Room 1 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>published</td><td>Available</td></tr></tbody></table>', 1, '2019-01-15 02:21:55', NULL),
	(46, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/edit-save/2', 'Update data Massage at Layanan', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>package</td><td>X</td><td>Voucher</td></tr></tbody></table>', 1, '2019-01-15 03:27:51', NULL),
	(47, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/edit-save/1', 'Update data Sauna at Layanan', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>package</td><td>X</td><td>Voucher</td></tr></tbody></table>', 1, '2019-01-15 03:27:56', NULL),
	(48, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/add-save', 'Add New Data test at Booking', '', 1, '2019-01-15 03:33:46', NULL),
	(49, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-save', 'Add New Data Welcome at Banner', '', 1, '2019-01-15 05:08:24', NULL),
	(50, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/edit-save/1', 'Update data Welcome at Banner', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/bg_1.jpg</td></tr></tbody></table>', 1, '2019-01-15 05:08:32', NULL),
	(51, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-save', 'Add New Data Welcome at Banner', '', 1, '2019-01-15 05:08:58', NULL),
	(52, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-save', 'Add New Data Welcome at Banner', '', 1, '2019-01-15 05:09:19', NULL),
	(53, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Frontend at Menu Management', '', 1, '2019-01-15 05:14:32', NULL),
	(54, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Luxury Rooms at Services', '', 1, '2019-01-15 05:18:45', NULL),
	(55, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Fast & Free Wifi at Services', '', 1, '2019-01-15 05:19:23', NULL),
	(56, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/edit-save/2', 'Update data Fast & Free Wifi at Services', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-15 05:19:30', NULL),
	(57, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Call Us 24/7 at Services', '', 1, '2019-01-15 05:20:41', NULL),
	(58, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Travel Accomodation at Services', '', 1, '2019-01-15 05:21:11', NULL),
	(59, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Accepts Credit Card at Services', '', 1, '2019-01-15 05:21:44', NULL),
	(60, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/front_services/add-save', 'Add New Data Restaurant at Services', '', 1, '2019-01-15 05:22:05', NULL),
	(61, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Room 2 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-15 05:34:34', NULL),
	(62, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/1', 'Update data Room 1 at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-15 05:34:41', NULL),
	(63, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Bachelor Room at Room', '', 1, '2019-01-15 06:30:21', NULL),
	(64, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data Double Room at Room', '', 1, '2019-01-15 06:31:31', NULL),
	(65, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/add-save', 'Add New Data VIP Room at Room', '', 1, '2019-01-15 06:32:38', NULL),
	(66, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/2', 'Update data Double Room at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-15 06:32:49', NULL),
	(67, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/room/edit-save/1', 'Update data Bachelor Room at Room', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-15 06:32:58', NULL),
	(68, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/featured_room/add-save', 'Add New Data  at Featured Room', '', 1, '2019-01-15 06:33:27', NULL),
	(69, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/featured_room/add-save', 'Add New Data  at Featured Room', '', 1, '2019-01-15 06:33:31', NULL),
	(70, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/featured_room/add-save', 'Add New Data  at Featured Room', '', 1, '2019-01-15 06:33:33', NULL),
	(71, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/featured_room/add-save', 'Add New Data  at Featured Room', '', 1, '2019-01-15 07:14:38', NULL),
	(72, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/add-save', 'Add New Data Egg & Asparagus at Restaurant Menu', '', 1, '2019-01-15 07:24:05', NULL),
	(73, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/add-save', 'Add New Data SirloinSteak at Restaurant Menu', '', 1, '2019-01-15 07:24:19', NULL),
	(74, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/add-save', 'Add New Data Egg & Grilled Steak at Restaurant Menu', '', 1, '2019-01-15 07:24:37', NULL),
	(75, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/2', 'Update data Sirloin Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>SirloinSteak</td><td>Sirloin Steak</td></tr></tbody></table>', 1, '2019-01-15 07:24:42', NULL),
	(76, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/9', 'Update data Sirloin Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_1.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:33:41', NULL),
	(77, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/8', 'Update data Sirloin Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_2.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:33:49', NULL),
	(78, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/7', 'Update data Egg & Grilled Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_3.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:33:57', NULL),
	(79, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/6', 'Update data Egg & Asparagus at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_3.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:05', NULL),
	(80, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/5', 'Update data Sirloin Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_2.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:12', NULL),
	(81, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/4', 'Update data Egg & Grilled Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_1.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:21', NULL),
	(82, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/3', 'Update data Egg & Grilled Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_2.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:29', NULL),
	(83, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/2', 'Update data Sirloin Steak at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_1.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:47', NULL),
	(84, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/restaurant_menu/edit-save/1', 'Update data Egg & Asparagus at Restaurant Menu', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/menu_3.jpg</td></tr></tbody></table>', 1, '2019-01-15 07:34:52', NULL),
	(85, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/jumbotron/add-save', 'Add New Data Quality accommodation that exceeds the expectations at Jumbotron', '', 1, '2019-01-15 07:47:49', NULL),
	(86, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/testimonial/add-save', 'Add New Data  at Testimonial', '', 1, '2019-01-15 07:52:42', NULL),
	(87, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/testimonial/add-save', 'Add New Data  at Testimonial', '', 1, '2019-01-15 07:52:58', NULL),
	(88, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/testimonial/add-save', 'Add New Data  at Testimonial', '', 1, '2019-01-15 07:53:12', NULL),
	(89, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/testimonial/edit-save/2', 'Update data  at Testimonial', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>testimoni</td><td><h2 class="heading" style="margin: 0px; font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; line-height: 1.5; color: rgb(0, 0, 0); font-size: 18px; padding: 0px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt.&nbsp;<br></h2></td><td><span style="color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt.</span></td></tr></tbody></table>', 1, '2019-01-15 07:53:21', NULL),
	(90, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/edit-save/2', 'Update data Massage at Layanan', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td></td><td>Curabitur aliquet quam id dui posuere blandit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Vivamus suscipit tortor eget felis porttitor volutpat.</td></tr></tbody></table>', 1, '2019-01-15 08:18:18', NULL),
	(91, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/services/edit-save/1', 'Update data Sauna at Layanan', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td></td><td>Curabitur aliquet quam id dui posuere blandit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Vivamus suscipit tortor eget felis porttitor volutpat.</td></tr></tbody></table>', 1, '2019-01-15 08:18:21', NULL),
	(92, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/featured_room/delete/4', 'Delete data 4 at Featured Room', '', 1, '2019-01-15 08:42:47', NULL),
	(93, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/about/add-save', 'Add New Data The Hotel at About Us', '', 1, '2019-01-15 10:05:32', NULL),
	(94, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-15 15:07:38', NULL),
	(95, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/post_category/add-save', 'Add New Data News at Post Category', '', 1, '2019-01-15 15:48:03', NULL),
	(96, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/post_category/add-save', 'Add New Data Events at Post Category', '', 1, '2019-01-15 15:48:09', NULL),
	(97, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/post_category/add-save', 'Add New Data Post at Post Category', '', 1, '2019-01-15 15:48:16', NULL),
	(98, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-16 10:12:32', NULL),
	(99, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-01-19 11:03:24', NULL),
	(100, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/add-save', 'Add New Data test at Booking', '', 1, '2019-01-19 13:12:11', NULL),
	(101, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/add-save', 'Add New Data test at Booking', '', 1, '2019-01-19 13:14:36', NULL),
	(102, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/booking/edit-save/2', 'Update data test at Booking', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>services_price</td><td>550000</td><td>300000</td></tr><tr><td>grand_total</td><td>3550000</td><td>3300000</td></tr><tr><td>custom_field_1</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-19 13:38:23', NULL),
	(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:9001/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-04-12 02:41:25', NULL),
	(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:9001/admin/logout', ' logout', '', NULL, '2019-04-12 03:06:35', NULL),
	(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-04-26 14:41:10', NULL),
	(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@admin.com login with IP Address 127.0.0.1', '', 1, '2019-05-02 07:19:32', NULL),
	(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Dashboard at Statistic Builder', '', 1, '2019-05-02 07:19:46', NULL),
	(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2019-05-02 07:33:08', NULL),
	(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@admin.com logout', '', 1, '2019-05-02 07:44:11', NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_menus
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_menus: ~20 rows (approximately)
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
REPLACE INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(1, 'Fasilitas', 'Route', 'AdminFacilitiesControllerGetIndex', NULL, 'fa fa-wrench', 0, 1, 0, 1, 7, '2019-01-13 04:59:10', NULL),
	(2, 'Layanan', 'Route', 'AdminServicesControllerGetIndex', NULL, 'fa fa-thumbs-o-up', 0, 1, 0, 1, 8, '2019-01-13 05:01:36', NULL),
	(3, 'Banner', 'Route', 'AdminBannerControllerGetIndex', NULL, 'fa fa-file-image-o', 16, 1, 0, 1, 2, '2019-01-13 05:04:37', NULL),
	(4, 'Post Category', 'Route', 'AdminPostCategoryControllerGetIndex', NULL, 'fa fa-tags', 7, 1, 0, 1, 2, '2019-01-13 05:08:09', NULL),
	(6, 'List Post', 'Route', 'AdminPostControllerGetIndex', 'normal', 'fa fa-file-text-o', 7, 1, 0, 1, 1, '2019-01-13 05:11:24', '2019-01-13 05:13:48'),
	(7, 'Post', 'URL', '#', 'normal', 'fa fa-file-text-o', 0, 1, 0, 1, 4, '2019-01-13 05:14:08', NULL),
	(8, 'Page', 'Route', 'AdminPageControllerGetIndex', NULL, 'fa fa-file-text-o', 0, 1, 0, 1, 3, '2019-01-13 05:18:20', NULL),
	(9, 'Contact', 'Route', 'AdminContactControllerGetIndex', NULL, 'fa fa-phone-square', 12, 1, 0, 1, 2, '2019-01-13 05:23:47', NULL),
	(10, 'Subscribe', 'Route', 'AdminSubscribeControllerGetIndex', NULL, 'fa fa-newspaper-o', 12, 1, 0, 1, 3, '2019-01-13 05:25:11', NULL),
	(11, 'Media', 'Route', 'AdminMediasControllerGetIndex', 'normal', 'fa fa-file-image-o', 0, 1, 0, 1, 1, '2019-01-13 05:27:22', '2019-01-13 05:30:22'),
	(12, 'Form', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 5, '2019-01-13 05:32:27', NULL),
	(13, 'Room', 'Route', 'AdminRoomControllerGetIndex', NULL, 'fa fa-home', 0, 1, 0, 1, 2, '2019-01-13 06:28:44', NULL),
	(14, 'Testimonial', 'Route', 'AdminTestimonialControllerGetIndex', NULL, 'fa fa-star-o', 12, 1, 0, 1, 4, '2019-01-13 15:53:24', NULL),
	(15, 'Booking', 'Route', 'AdminBookingControllerGetIndex', NULL, 'fa fa-dollar', 12, 1, 0, 1, 1, '2019-01-14 03:36:58', NULL),
	(16, 'Frontend', 'URL', '#', 'normal', 'fa fa-th', 0, 1, 0, 1, 6, '2019-01-15 05:14:32', NULL),
	(17, 'Services', 'Route', 'AdminFrontServicesControllerGetIndex', NULL, 'fa fa-thumbs-o-up', 16, 1, 0, 1, 3, '2019-01-15 05:17:50', NULL),
	(18, 'Featured Room', 'Route', 'AdminFeaturedRoomControllerGetIndex', NULL, 'fa fa-home', 16, 1, 0, 1, 4, '2019-01-15 05:31:29', NULL),
	(19, 'Restaurant Menu', 'Route', 'AdminRestaurantMenuControllerGetIndex', NULL, 'fa fa-cutlery', 16, 1, 0, 1, 5, '2019-01-15 07:20:47', NULL),
	(20, 'Jumbotron', 'Route', 'AdminJumbotronControllerGetIndex', NULL, 'fa fa-th', 16, 1, 0, 1, 6, '2019-01-15 07:43:55', NULL),
	(21, 'About Us', 'Route', 'AdminAboutControllerGetIndex', NULL, 'fa fa-info-circle', 16, 1, 0, 1, 1, '2019-01-15 10:02:42', NULL),
	(22, 'Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-tachometer', 0, 1, 1, 1, NULL, '2019-05-02 07:33:08', NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_menus_privileges
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_menus_privileges: ~21 rows (approximately)
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
REPLACE INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(7, 6, 1),
	(8, 7, 1),
	(9, 8, 1),
	(10, 9, 1),
	(11, 10, 1),
	(14, 11, 1),
	(15, 12, 1),
	(16, 13, 1),
	(17, 14, 1),
	(18, 15, 1),
	(19, 16, 1),
	(20, 17, 1),
	(21, 18, 1),
	(22, 19, 1),
	(23, 20, 1),
	(24, 21, 1),
	(25, 22, 1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_moduls
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_moduls: ~29 rows (approximately)
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
REPLACE INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-01-12 15:30:20', NULL, NULL),
	(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-01-12 15:30:20', NULL, NULL),
	(12, 'Fasilitas', 'fa fa-wrench', 'facilities', 'facilities', 'AdminFacilitiesController', 0, 0, '2019-01-13 04:59:09', NULL, NULL),
	(13, 'Layanan', 'fa fa-thumbs-o-up', 'services', 'services', 'AdminServicesController', 0, 0, '2019-01-13 05:01:35', NULL, NULL),
	(14, 'Banner', 'fa fa-file-image-o', 'banner', 'banner', 'AdminBannerController', 0, 0, '2019-01-13 05:04:37', NULL, NULL),
	(15, 'Post Category', 'fa fa-tags', 'post_category', 'post_category', 'AdminPostCategoryController', 0, 0, '2019-01-13 05:08:09', NULL, NULL),
	(16, 'Post', 'fa fa-file-text-o', 'post', 'post', 'AdminPostController', 0, 0, '2019-01-13 05:08:54', NULL, '2019-01-13 05:11:09'),
	(17, 'List Post', 'fa fa-file-text-o', 'post', 'post', 'AdminPostController', 0, 0, '2019-01-13 05:11:24', NULL, NULL),
	(18, 'Page', 'fa fa-file-text-o', 'page', 'page', 'AdminPageController', 0, 0, '2019-01-13 05:18:20', NULL, NULL),
	(19, 'Contact', 'fa fa-phone-square', 'contact', 'contact', 'AdminContactController', 0, 0, '2019-01-13 05:23:46', NULL, NULL),
	(20, 'Subscribe', 'fa fa-newspaper-o', 'subscribe', 'subscribe', 'AdminSubscribeController', 0, 0, '2019-01-13 05:25:10', NULL, NULL),
	(21, 'Media', 'fa fa-file-image-o', 'medias', 'medias', 'AdminMediasController', 0, 0, '2019-01-13 05:27:22', NULL, NULL),
	(22, 'Room', 'fa fa-home', 'room', 'room', 'AdminRoomController', 0, 0, '2019-01-13 06:28:44', NULL, NULL),
	(23, 'Testimonial', 'fa fa-star-o', 'testimonial', 'testimonial', 'AdminTestimonialController', 0, 0, '2019-01-13 15:53:22', NULL, NULL),
	(24, 'Booking', 'fa fa-dollar', 'booking', 'booking', 'AdminBookingController', 0, 0, '2019-01-14 03:36:57', NULL, NULL),
	(25, 'Services', 'fa fa-thumbs-o-up', 'front_services', 'front_services', 'AdminFrontServicesController', 0, 0, '2019-01-15 05:17:50', NULL, NULL),
	(26, 'Featured Room', 'fa fa-home', 'featured_room', 'featured_room', 'AdminFeaturedRoomController', 0, 0, '2019-01-15 05:31:29', NULL, NULL),
	(27, 'Restaurant Menu', 'fa fa-cutlery', 'restaurant_menu', 'restaurant_menu', 'AdminRestaurantMenuController', 0, 0, '2019-01-15 07:20:46', NULL, NULL),
	(28, 'Jumbotron', 'fa fa-th', 'jumbotron', 'jumbotron', 'AdminJumbotronController', 0, 0, '2019-01-15 07:43:53', NULL, NULL),
	(29, 'About Us', 'fa fa-info-circle', 'about', 'about', 'AdminAboutController', 0, 0, '2019-01-15 10:02:41', NULL, NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_notifications
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_notifications: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_privileges
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_privileges: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
REPLACE INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-red', '2019-01-12 15:30:20', NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_privileges_roles
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_privileges_roles: ~29 rows (approximately)
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
REPLACE INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 0, 0, 0, 1, 1, '2019-01-12 15:30:20', NULL),
	(2, 1, 1, 1, 1, 1, 1, 2, '2019-01-12 15:30:20', NULL),
	(3, 0, 1, 1, 1, 1, 1, 3, '2019-01-12 15:30:20', NULL),
	(4, 1, 1, 1, 1, 1, 1, 4, '2019-01-12 15:30:20', NULL),
	(5, 1, 1, 1, 1, 1, 1, 5, '2019-01-12 15:30:20', NULL),
	(6, 1, 1, 1, 1, 1, 1, 6, '2019-01-12 15:30:20', NULL),
	(7, 1, 1, 1, 1, 1, 1, 7, '2019-01-12 15:30:20', NULL),
	(8, 1, 1, 1, 1, 1, 1, 8, '2019-01-12 15:30:20', NULL),
	(9, 1, 1, 1, 1, 1, 1, 9, '2019-01-12 15:30:20', NULL),
	(10, 1, 1, 1, 1, 1, 1, 10, '2019-01-12 15:30:20', NULL),
	(11, 1, 0, 1, 0, 1, 1, 11, '2019-01-12 15:30:20', NULL),
	(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
	(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
	(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
	(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
	(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
	(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
	(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
	(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
	(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
	(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
	(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
	(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
	(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
	(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
	(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
	(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
	(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_settings
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_settings: ~26 rows (approximately)
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
REPLACE INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-09 14:56:32', NULL, 'Login Register Style', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-09 14:56:32', NULL, 'Login Register Style', 'Login Font Color'),
	(3, 'login_background_image', 'uploads/2019-01/abc58ce0da52f9bec50f4c803b998bff.jpg', 'upload_image', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Login Register Style', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Email Setting', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-12-09 14:56:32', NULL, 'Email Setting', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Email Setting', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-12-09 14:56:32', NULL, 'Email Setting', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Email Setting', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Email Setting', 'SMTP Password'),
	(10, 'appname', 'Hotel', 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-12-09 14:56:32', NULL, 'Application Setting', 'Default Paper Print Size'),
	(12, 'logo', 'uploads/2019-05/6f1997a9d5a284f1fc4ddb48d428166f.png', 'upload_image', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'Logo'),
	(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'API Debug Mode'),
	(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'Google API Key'),
	(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-12-09 14:56:32', NULL, 'Application Setting', 'Google FCM Key'),
	(17, 'about_us', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>', 'wysiwyg', NULL, NULL, '2018-12-22 04:09:21', NULL, 'Application Setting', 'About Us'),
	(18, 'no_telp', '081290080600', 'text', NULL, 'example : +6281290080600', '2018-12-21 11:01:13', NULL, 'Application Setting', 'No Telp'),
	(19, 'e_mail', 'arbipram@gmail.com', 'email', NULL, 'example : arbipram@gmail.com', '2018-12-21 11:02:10', '2018-12-21 11:02:17', 'Application Setting', 'E-Mail'),
	(20, 'address', '<p><strong>Ruko Grand Galaxy Park RRG 1. </strong></p>\r\n<p><strong>No. 20 Pekayon Jaya</strong></p>\r\n<p><strong> Bekasi Selatan - 17148&nbsp;</strong></p>', 'wysiwyg', NULL, NULL, '2018-12-21 11:03:34', NULL, 'Application Setting', 'Address'),
	(21, 'maps', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15863.83748005366!2d106.974781!3d-6.269074!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb265b16b8a7dcb8d!2sDITAMADIGITAL.CO.ID!5e0!3m2!1sid!2sid!4v1545459391400" width="100%" height="500px" frameborder="0" style="border:0" allowfullscreen></iframe>', 'textarea', NULL, 'google maps embed code', '2018-12-21 11:05:51', NULL, 'Application Setting', 'Maps'),
	(22, 'facebook', '#', 'text', NULL, NULL, '2018-12-21 11:06:43', NULL, 'Application Setting', 'Facebook'),
	(23, 'instagram', '#', 'text', NULL, NULL, '2018-12-21 11:06:51', NULL, 'Application Setting', 'Instagram'),
	(24, 'youtube', '#', 'text', NULL, NULL, '2018-12-21 11:06:57', NULL, 'Application Setting', 'Youtube'),
	(25, 'twitter', '#', 'text', NULL, NULL, '2018-12-21 11:07:28', NULL, 'Application Setting', 'Twitter'),
	(26, 'footer', 'Copyright © 2018 arbipram.web.id. All Rights Reserved.', 'text', NULL, 'example : Copyright © 2018. All Rights Reserved', '2018-12-21 15:05:26', NULL, 'Application Setting', 'Footer');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_statistics
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_statistics: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
REPLACE INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Dashboard', 'dashboard', '2019-05-02 07:19:46', NULL);
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_statistic_components
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_statistic_components: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
REPLACE INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
	(1, 1, '0ac605fc6c699c75becebc23e5ace0d1', 'smallbox', 'area1', 0, NULL, '{"name":"Users","icon":"ion-person","color":"bg-green","link":"#","sql":"Select count(id) from cms_users"}', '2019-05-02 07:21:03', NULL),
	(2, 1, '9d407f0d3ab464e05111f6a7fe90b84c', 'smallbox', 'area2', 0, NULL, '{"name":"Rooms","icon":"ion-home","color":"bg-green","link":"#","sql":"select count(id) from room"}', '2019-05-02 07:21:05', NULL),
	(3, 1, '448b7e637e7344fe2878377dab7a6d0a', 'smallbox', 'area3', 0, NULL, '{"name":"Bookings","icon":"ion-calendar","color":"bg-aqua","link":"#","sql":"select count(id) from booking"}', '2019-05-02 07:21:06', NULL),
	(4, 1, 'f582bd1a41e68eee72530b76d56337c8', 'smallbox', 'area4', 0, NULL, '{"name":"Booking Payment","icon":"ion-cash","color":"bg-yellow","link":"#","sql":"select sum(grand_total) from booking where created_at like \'%2019%\' or updated_at like \'%2019%\'"}', '2019-05-02 07:21:07', NULL);
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;

-- Dumping structure for table be-hotel.cms_users
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.cms_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
REPLACE INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', NULL, 'admin@admin.com', '$2y$10$ix5I6jOuBR836YvTMuQBruViHj1tcVthEEisYEakrz15oInZ1IYe2', 1, '2019-01-12 15:30:20', NULL, 'Active');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;

-- Dumping structure for table be-hotel.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.contact: ~2 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
REPLACE INTO `contact` (`id`, `subject`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
	(1, 'Test subject', 'test', 'test@test.com', 'Message ...', '2019-01-15', '2019-01-15'),
	(2, 'Test subject', 'test', 'test@test.com', 'Message ...', '2019-01-15', '2019-01-15');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table be-hotel.facilities
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.facilities: ~3 rows (approximately)
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
REPLACE INTO `facilities` (`id`, `image`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'uploads/1/2019-01/tv.png', 'TV', '2019-01-13 06:38:48', NULL),
	(2, 'uploads/1/2019-01/wifi.png', 'WiFi', '2019-01-13 06:38:58', NULL),
	(3, 'uploads/1/2019-01/air_conditioning.png', 'AC', '2019-01-13 06:39:10', NULL);
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;

-- Dumping structure for table be-hotel.featured_room
CREATE TABLE IF NOT EXISTS `featured_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_room` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.featured_room: ~3 rows (approximately)
/*!40000 ALTER TABLE `featured_room` DISABLE KEYS */;
REPLACE INTO `featured_room` (`id`, `id_room`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-01-15 06:33:27', NULL),
	(2, 2, '2019-01-15 06:33:31', NULL),
	(3, 3, '2019-01-15 06:33:33', NULL);
/*!40000 ALTER TABLE `featured_room` ENABLE KEYS */;

-- Dumping structure for table be-hotel.front_services
CREATE TABLE IF NOT EXISTS `front_services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.front_services: ~6 rows (approximately)
/*!40000 ALTER TABLE `front_services` DISABLE KEYS */;
REPLACE INTO `front_services` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(1, '<span class="flaticon-double-bed"></span>', 'Luxury Rooms', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', NULL),
	(2, '<span class="flaticon-wifi"></span>', 'Fast & Free Wifi', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', '2019-01-15 00:00:00'),
	(3, '<span class="flaticon-customer-service"></span>', 'Call Us 24/7', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', NULL),
	(4, '<span class="flaticon-taxi"></span>', 'Travel Accomodation', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', NULL),
	(5, '<span class="flaticon-credit-card"></span>', 'Accepts Credit Card', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', NULL),
	(6, '<span class="flaticon-dinner"></span>', 'Restaurant', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', '2019-01-15 00:00:00', NULL);
/*!40000 ALTER TABLE `front_services` ENABLE KEYS */;

-- Dumping structure for table be-hotel.jumbotron
CREATE TABLE IF NOT EXISTS `jumbotron` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.jumbotron: ~0 rows (approximately)
/*!40000 ALTER TABLE `jumbotron` DISABLE KEYS */;
REPLACE INTO `jumbotron` (`id`, `title`, `image`, `url`, `button_text`, `created_at`, `updated_at`) VALUES
	(1, 'Quality accommodation that exceeds the expectations', 'uploads/1/2019-01/bg_2.jpg', '#', 'Learn More', '2019-01-15 07:47:49', NULL);
/*!40000 ALTER TABLE `jumbotron` ENABLE KEYS */;

-- Dumping structure for table be-hotel.medias
CREATE TABLE IF NOT EXISTS `medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.medias: ~0 rows (approximately)
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;

-- Dumping structure for table be-hotel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table be-hotel.migrations: ~25 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
	(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
	(3, '2016_08_07_151210_add_table_cms_logs', 1),
	(4, '2016_08_07_151211_add_details_cms_logs', 1),
	(5, '2016_08_07_152014_add_table_cms_privileges', 1),
	(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
	(7, '2016_08_07_152320_add_table_cms_settings', 1),
	(8, '2016_08_07_152421_add_table_cms_users', 1),
	(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
	(10, '2016_08_07_154624_add_table_cms_moduls', 1),
	(11, '2016_08_17_225409_add_status_cms_users', 1),
	(12, '2016_08_20_125418_add_table_cms_notifications', 1),
	(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
	(14, '2016_09_16_035347_add_group_setting', 1),
	(15, '2016_09_16_045425_add_label_setting', 1),
	(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
	(17, '2016_10_01_141740_add_method_type_apicustom', 1),
	(18, '2016_10_01_141846_add_parameters_apicustom', 1),
	(19, '2016_10_01_141934_add_responses_apicustom', 1),
	(20, '2016_10_01_144826_add_table_apikey', 1),
	(21, '2016_11_14_141657_create_cms_menus', 1),
	(22, '2016_11_15_132350_create_cms_email_templates', 1),
	(23, '2016_11_15_190410_create_cms_statistics', 1),
	(24, '2016_11_17_102740_create_cms_statistic_components', 1),
	(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table be-hotel.page
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `posted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.page: ~0 rows (approximately)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dumping structure for table be-hotel.post
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `id_post_category` int(10) DEFAULT NULL,
  `content` text,
  `feature_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `posted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.post: ~71 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
REPLACE INTO `post` (`id`, `title`, `slug`, `id_post_category`, `content`, `feature_image`, `created_at`, `updated_at`, `posted_by`) VALUES
	(1, 'Dolores et rem.', 'Fugiat.', 2, 'Repellat consequatur quos ipsam fugiat sint voluptatibus sunt.', 'https://lorempixel.com/640/480/?22485', '2019-01-15 15:40:55', '2019-01-15 15:40:55', 'Super Admin'),
	(2, 'Vitae dolorem.', 'Ut.', 2, 'Consequatur laboriosam dolore magnam ut eaque facilis.', 'https://lorempixel.com/640/480/?66742', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(3, 'Laborum odit.', 'Hicut.', 3, 'Exercitationem et blanditiis temporibus.', 'https://lorempixel.com/640/480/?40038', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(4, 'Velit porro eaque.', 'Estillo.', 3, 'Architecto ut tenetur voluptatum ut ut.', 'https://lorempixel.com/640/480/?50545', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(5, 'Et inventore illum.', 'Eum.', 3, 'Veritatis voluptatibus sunt sit dolorum.', 'https://lorempixel.com/640/480/?60187', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(6, 'Et voluptatibus.', 'Autem.', 2, 'Maiores consectetur reiciendis quod esse dolor veritatis maiores.', 'https://lorempixel.com/640/480/?36609', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(7, 'Qui facere.', 'Dolor.', 1, 'Molestiae dolorem repudiandae fuga ad sed.', 'https://lorempixel.com/640/480/?17842', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(8, 'Dolorum quis.', 'Blanditiis.', 2, 'Quibusdam dolor aliquid omnis perspiciatis.', 'https://lorempixel.com/640/480/?29307', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(12, 'Consequatur nihil dignissimos.', 'Ab.', 2, 'Non facilis ut voluptas a aut quisquam sed.', 'https://lorempixel.com/640/480/?44459', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(13, 'Cupiditate voluptatibus.', 'Minus.', 2, 'Sint consequuntur aspernatur iusto quia ut debitis ut.', 'https://lorempixel.com/640/480/?65318', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(15, 'Sunt placeat nulla.', 'Iusto.', 2, 'Possimus fugit esse sit molestiae dolores.', 'https://lorempixel.com/640/480/?34429', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(16, 'Quia adipisci.', 'Velit.', 1, 'Tempore ipsum eum inventore magni et perspiciatis sit.', 'https://lorempixel.com/640/480/?38620', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(17, 'Porro aut.', 'Consectetur.', 1, 'Aperiam eveniet et nobis autem quisquam qui enim.', 'https://lorempixel.com/640/480/?16462', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(18, 'Aliquam aspernatur.', 'Vel.', 1, 'Veritatis deserunt nesciunt ut sint debitis expedita in dolores.', 'https://lorempixel.com/640/480/?47036', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(19, 'Voluptas eaque quae.', 'Utquam.', 3, 'Consectetur ut rerum aut.', 'https://lorempixel.com/640/480/?18537', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(21, 'Libero quidem minima.', 'Explicabo.', 1, 'Atque expedita corrupti illum doloremque delectus dicta qui.', 'https://lorempixel.com/640/480/?51739', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(24, 'Amet eum neque.', 'Tempore.', 1, 'Fugiat culpa similique qui eos.', 'https://lorempixel.com/640/480/?83719', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(25, 'Fugiat voluptatum assumenda.', 'In.', 1, 'Id veritatis ipsum vero sed.', 'https://lorempixel.com/640/480/?61370', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(26, 'Et molestias.', 'Consequatur.', 3, 'Ad in maxime nulla non quia.', 'https://lorempixel.com/640/480/?84430', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(29, 'Corrupti nemo sapiente.', 'Exercitationem.', 2, 'Deleniti repellat cum sed id voluptatem.', 'https://lorempixel.com/640/480/?29112', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(32, 'Minima dolor eum.', 'Molestias.', 3, 'Eius accusamus molestias vel libero.', 'https://lorempixel.com/640/480/?18397', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(36, 'Assumenda qui.', 'Eligendi.', 3, 'Laboriosam velit ipsum voluptatibus libero sit quia deleniti.', 'https://lorempixel.com/640/480/?20249', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(37, 'Magni dolorem nostrum.', 'Et.', 2, 'Nostrum harum non libero.', 'https://lorempixel.com/640/480/?70134', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(38, 'Qui impedit sequi.', 'Quotempora.', 2, 'Molestias deleniti quod qui recusandae eius quo et.', 'https://lorempixel.com/640/480/?62412', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(39, 'Sint dolores.', 'Dolordoloribus.', 1, 'Nisi ipsa voluptas in illum quos atque.', 'https://lorempixel.com/640/480/?98707', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(40, 'Illum unde eos.', 'Etenim.', 3, 'Dolore nostrum ratione iste.', 'https://lorempixel.com/640/480/?62585', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(41, 'Eum eligendi.', 'Sunt.', 1, 'Ipsam est et sit aut deserunt.', 'https://lorempixel.com/640/480/?12061', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(42, 'Quia placeat quis.', 'Distinctio.', 1, 'Unde sed itaque odit ea qui.', 'https://lorempixel.com/640/480/?93579', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(43, 'Autem nulla repellendus.', 'Nulla.', 2, 'Cumque et et fugit veritatis.', 'https://lorempixel.com/640/480/?86609', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(44, 'Nobis porro.', 'Consequatur.', 2, 'Non illo aspernatur vel qui quidem aut.', 'https://lorempixel.com/640/480/?14832', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(45, 'Qui laboriosam.', 'Sintest.', 1, 'Quis quae eveniet architecto quaerat.', 'https://lorempixel.com/640/480/?94449', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(46, 'Deleniti aperiam.', 'Numquam.', 3, 'Minima sit ut quas fuga repellendus sunt.', 'https://lorempixel.com/640/480/?88652', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(48, 'Fuga et.', 'Voluptates.', 2, 'Consequatur tempore est cum dolor ratione occaecati molestiae.', 'https://lorempixel.com/640/480/?44999', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(49, 'Nihil alias.', 'Corrupti.', 3, 'Eligendi natus ipsa dolorem sed et suscipit ea.', 'https://lorempixel.com/640/480/?44534', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(50, 'Et ex.', 'Voluptas.', 2, 'Nihil quaerat dicta harum rem rerum aperiam.', 'https://lorempixel.com/640/480/?60444', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(51, 'Laudantium suscipit nulla.', 'Deserunt.', 2, 'Ea cupiditate voluptate voluptatem error.', 'https://lorempixel.com/640/480/?19613', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(52, 'Ut deserunt illum.', 'Minimaeum.', 2, 'Qui explicabo dolorum accusantium illo.', 'https://lorempixel.com/640/480/?67367', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(53, 'Fugit odio.', 'Harum.', 3, 'Saepe neque accusamus aut.', 'https://lorempixel.com/640/480/?27915', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(55, 'Cupiditate eos.', 'Culpaeligendi.', 3, 'Culpa consequatur necessitatibus enim.', 'https://lorempixel.com/640/480/?56387', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(57, 'Dolore a.', 'Et.', 2, 'Libero quidem sit ipsa consequatur molestiae.', 'https://lorempixel.com/640/480/?44605', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(58, 'Eaque nesciunt.', 'Omnisquia.', 1, 'Laudantium voluptas blanditiis quam eius.', 'https://lorempixel.com/640/480/?61809', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(59, 'Tempora aut occaecati.', 'Istemaxime.', 3, 'Accusantium recusandae assumenda ipsam cum minima illo nesciunt.', 'https://lorempixel.com/640/480/?72174', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(61, 'Cumque animi distinctio.', 'Velit.', 1, 'Ut illum praesentium fugiat possimus voluptas deserunt debitis.', 'https://lorempixel.com/640/480/?41304', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(62, 'Fugit esse.', 'Fugit.', 1, 'Omnis sed velit quas harum quos et.', 'https://lorempixel.com/640/480/?79609', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(63, 'Omnis rerum.', 'Est.', 3, 'Voluptatibus similique mollitia ea necessitatibus nam id.', 'https://lorempixel.com/640/480/?84011', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(64, 'Natus et.', 'Voluptatesexplicabo.', 3, 'Dolor hic neque dolorem illo minima quas necessitatibus.', 'https://lorempixel.com/640/480/?85660', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(65, 'Eligendi voluptatem beatae.', 'Porro.', 2, 'Dicta ab asperiores non.', 'https://lorempixel.com/640/480/?28343', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(66, 'Ea error.', 'Ex.', 3, 'Hic similique mollitia magni veritatis.', 'https://lorempixel.com/640/480/?18996', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(69, 'Nam aspernatur omnis.', 'Qui.', 2, 'Autem rerum harum provident sunt quia voluptatem voluptas.', 'https://lorempixel.com/640/480/?29316', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(70, 'Sunt sit.', 'Voluptatem.', 2, 'Earum consectetur eius voluptas in numquam necessitatibus.', 'https://lorempixel.com/640/480/?65295', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(75, 'Amet autem explicabo.', 'Perferendis.', 3, 'Quam sed aut enim architecto exercitationem voluptatum architecto maiores.', 'https://lorempixel.com/640/480/?26349', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(77, 'Mollitia expedita nemo.', 'Voluptatum.', 2, 'Sed veritatis sed ducimus iusto.', 'https://lorempixel.com/640/480/?95590', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(78, 'Numquam nesciunt velit.', 'Dicta.', 3, 'Et dolor voluptas voluptatem.', 'https://lorempixel.com/640/480/?92174', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(79, 'Est quia.', 'Magnam.', 3, 'Quisquam ut commodi est ratione enim.', 'https://lorempixel.com/640/480/?76881', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(80, 'Non aliquid.', 'Quia.', 2, 'Sit exercitationem esse et omnis aut.', 'https://lorempixel.com/640/480/?79792', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(81, 'Atque cumque blanditiis.', 'Quodsint.', 1, 'Aliquid omnis nihil vel sunt sunt doloremque nihil.', 'https://lorempixel.com/640/480/?21631', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(82, 'Amet sit et.', 'Quiaperspiciatis.', 3, 'Ipsam veniam ad sed nostrum ut nihil.', 'https://lorempixel.com/640/480/?56735', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(83, 'Necessitatibus quasi laudantium.', 'Quidemcorrupti.', 1, 'Iure autem dolores delectus explicabo consequuntur ut.', 'https://lorempixel.com/640/480/?39089', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(85, 'Beatae iure non.', 'Ducimus.', 1, 'Labore quia atque quisquam nemo architecto aut.', 'https://lorempixel.com/640/480/?60295', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(87, 'Iste laborum repudiandae.', 'Aut.', 2, 'Sunt alias tempore dolorem illo recusandae.', 'https://lorempixel.com/640/480/?98284', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(88, 'Voluptatem porro atque.', 'Dolore.', 1, 'Minus eius ex non dolor.', 'https://lorempixel.com/640/480/?21083', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(89, 'Dolorum id id.', 'Quia.', 1, 'Possimus sequi amet accusantium ipsam iusto.', 'https://lorempixel.com/640/480/?35605', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(90, 'Vero similique.', 'Inciduntnam.', 3, 'Cum praesentium consequatur provident deleniti dignissimos doloribus.', 'https://lorempixel.com/640/480/?33426', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(91, 'Est et dolorem.', 'Est.', 1, 'Adipisci vel quae quia delectus sequi.', 'https://lorempixel.com/640/480/?62399', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(92, 'Iure accusamus reiciendis.', 'Quaeratquam.', 2, 'Minus dolores doloribus non ea.', 'https://lorempixel.com/640/480/?44003', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(93, 'Laborum id natus.', 'Iste.', 1, 'Consequuntur reiciendis dignissimos nesciunt voluptatem voluptatem ut.', 'https://lorempixel.com/640/480/?76140', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(94, 'Expedita qui.', 'Non.', 2, 'Autem et in perferendis aspernatur.', 'https://lorempixel.com/640/480/?87375', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(95, 'Aliquid dolor in.', 'Sit.', 3, 'Temporibus corrupti ex adipisci aliquid non itaque tempora.', 'https://lorempixel.com/640/480/?45391', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(98, 'Eum quia autem.', 'Quiacum.', 3, 'Sit odit eum quam.', 'https://lorempixel.com/640/480/?61678', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(99, 'Alias quas incidunt.', 'Similique.', 3, 'Eveniet odio perspiciatis repellat error iusto laborum itaque.', 'https://lorempixel.com/640/480/?77177', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin'),
	(100, 'Illo voluptatem.', 'Commodi.', 2, 'Voluptatem vitae in est id facere voluptatem.', 'https://lorempixel.com/640/480/?94959', '2019-01-15 15:42:03', '2019-01-15 15:42:03', 'Super Admin');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Dumping structure for table be-hotel.post_category
CREATE TABLE IF NOT EXISTS `post_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.post_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
REPLACE INTO `post_category` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'News', 'uploads/1/2019-01/bg_1.jpg', '2019-01-15', NULL),
	(2, 'Events', 'uploads/1/2019-01/bg_2.jpg', '2019-01-15', NULL),
	(3, 'Post', 'uploads/1/2019-01/bg_3.jpg', '2019-01-15', NULL);
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;

-- Dumping structure for table be-hotel.restaurant_menu
CREATE TABLE IF NOT EXISTS `restaurant_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.restaurant_menu: ~9 rows (approximately)
/*!40000 ALTER TABLE `restaurant_menu` DISABLE KEYS */;
REPLACE INTO `restaurant_menu` (`id`, `category`, `image`, `title`, `description`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Breakfast', 'uploads/1/2019-01/menu_3.jpg', 'Egg & Asparagus', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '100000', '2019-01-15 07:24:05', '2019-01-15 07:34:52'),
	(2, 'Breakfast', 'uploads/1/2019-01/menu_1.jpg', 'Sirloin Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '200000', '2019-01-15 07:24:19', '2019-01-15 07:34:47'),
	(3, 'Breakfast', 'uploads/1/2019-01/menu_2.jpg', 'Egg & Grilled Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '300000', '2019-01-15 07:24:37', '2019-01-15 07:34:29'),
	(4, 'Lunch', 'uploads/1/2019-01/menu_1.jpg', 'Egg & Grilled Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '300000', '2019-01-15 07:24:37', '2019-01-15 07:34:21'),
	(5, 'Lunch', 'uploads/1/2019-01/menu_2.jpg', 'Sirloin Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '200000', '2019-01-15 07:24:19', '2019-01-15 07:34:12'),
	(6, 'Lunch', 'uploads/1/2019-01/menu_3.jpg', 'Egg & Asparagus', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '100000', '2019-01-15 07:24:05', '2019-01-15 07:34:05'),
	(7, 'Dinner', 'uploads/1/2019-01/menu_3.jpg', 'Egg & Grilled Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '300000', '2019-01-15 07:24:37', '2019-01-15 07:33:57'),
	(8, 'Dinner', 'uploads/1/2019-01/menu_2.jpg', 'Sirloin Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '200000', '2019-01-15 07:24:19', '2019-01-15 07:33:49'),
	(9, 'Dinner', 'uploads/1/2019-01/menu_1.jpg', 'Sirloin Steak', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.', '200000', '2019-01-15 07:24:19', '2019-01-15 07:33:41');
/*!40000 ALTER TABLE `restaurant_menu` ENABLE KEYS */;

-- Dumping structure for table be-hotel.room
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text,
  `bed_type` varchar(255) DEFAULT NULL,
  `max_adult` int(11) DEFAULT NULL,
  `max_children` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `img_1` varchar(255) DEFAULT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `img_4` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_field_1` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.room: ~3 rows (approximately)
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
REPLACE INTO `room` (`id`, `title`, `subtitle`, `slug`, `price`, `start_date`, `end_date`, `description`, `bed_type`, `max_adult`, `max_children`, `max_people`, `min_people`, `img_1`, `img_2`, `img_3`, `img_4`, `status`, `created_at`, `updated_at`, `custom_field_1`) VALUES
	(1, 'Bachelor Room', 'subtitle', 'bachelor-room', 1000000, '2018-01-15', '2020-01-01', '<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p><p><br></p><p>Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec sollicitudin molestie malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>', 'Single Bed', 5, 5, 5, 1, 'uploads/1/2019-01/img_1.jpg', 'uploads/1/2019-01/img_1.jpg', NULL, NULL, 'Available', '2019-01-15 06:30:21', '2019-01-15 06:32:58', NULL),
	(2, 'Double Room', 'subtitle', 'double-room', 2000000, '2018-01-15', '2020-01-01', '<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p><p><br></p><p>Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec sollicitudin molestie malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>', 'Single Bed', 5, 5, 5, 1, 'uploads/1/2019-01/img_2.jpg', 'uploads/1/2019-01/img_2.jpg', NULL, NULL, 'Available', '2019-01-15 06:31:31', '2019-01-15 06:32:49', NULL),
	(3, 'VIP Room', 'subtitle', 'vip-room', 3000000, '2018-01-15', '2020-01-01', '<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p><p><br></p><p>Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec sollicitudin molestie malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>', 'Double Bed', 5, 5, 5, 1, 'uploads/1/2019-01/img_3.jpg', 'uploads/1/2019-01/img_3.jpg', NULL, NULL, 'Available', '2019-01-15 06:32:38', NULL, NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;

-- Dumping structure for table be-hotel.room_facilities
CREATE TABLE IF NOT EXISTS `room_facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_room` int(11) DEFAULT NULL,
  `id_facilities` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.room_facilities: ~9 rows (approximately)
/*!40000 ALTER TABLE `room_facilities` DISABLE KEYS */;
REPLACE INTO `room_facilities` (`id`, `id_room`, `id_facilities`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2019-01-15 06:30:21', '2019-01-15 06:30:21'),
	(2, 1, 2, '2019-01-15 06:30:21', '2019-01-15 06:30:21'),
	(3, 1, 3, '2019-01-15 06:30:21', '2019-01-15 06:30:21'),
	(4, 2, 1, '2019-01-15 06:31:31', '2019-01-15 06:31:31'),
	(5, 2, 2, '2019-01-15 06:31:31', '2019-01-15 06:31:31'),
	(6, 2, 3, '2019-01-15 06:31:31', '2019-01-15 06:31:31'),
	(7, 3, 1, '2019-01-15 06:32:38', '2019-01-15 06:32:38'),
	(8, 3, 2, '2019-01-15 06:32:38', '2019-01-15 06:32:38'),
	(9, 3, 3, '2019-01-15 06:32:38', '2019-01-15 06:32:38');
/*!40000 ALTER TABLE `room_facilities` ENABLE KEYS */;

-- Dumping structure for table be-hotel.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `package` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.services: ~2 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
REPLACE INTO `services` (`id`, `name`, `description`, `package`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Sauna', 'Curabitur aliquet quam id dui posuere blandit. Quisque velit nisi, pretium ut lacinia in.', 'Voucher', 300000, '2019-01-14 08:20:02', '2019-01-15 08:18:21'),
	(2, 'Massage', 'Curabitur aliquet quam id dui posuere blandit. Quisque velit nisi, pretium ut lacinia in.', 'Voucher', 250000, '2019-01-14 08:21:11', '2019-01-15 08:18:18');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table be-hotel.subscribe
CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.subscribe: ~2 rows (approximately)
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
REPLACE INTO `subscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'arbipram@gmail.com', '2019-01-15', '2019-01-15'),
	(2, 'arbipram@gmail.com', '2019-01-15', '2019-01-15');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;

-- Dumping structure for table be-hotel.testimonial
CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) DEFAULT NULL,
  `testimoni` text,
  `star` int(10) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table be-hotel.testimonial: ~3 rows (approximately)
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
REPLACE INTO `testimonial` (`id`, `customer`, `testimoni`, `star`, `created_at`, `updated_at`) VALUES
	(1, 'Martin Newmansfield', '<p><span style="color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt.&nbsp;</span><br></p>', 5, '2019-01-15', NULL),
	(2, 'Nancy Green', '<span style="color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt.</span>', 5, '2019-01-15', '2019-01-15'),
	(3, 'Elizabeth Charles', '<p><span style="color: rgb(33, 37, 41); font-family: Rubik, -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt.</span><br></p>', 5, '2019-01-15', NULL);
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
