-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2025 at 11:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `resume` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `resume`, `created_at`, `updated_at`) VALUES
(1, 'About Me', '<p>Hey there! I\'m Mohammad Zabir Raihan, a passionate full-stack developer with\r\n                                        over 2 years of solid experience in crafting robust and user-friendly web\r\n                                        applications. From front-end design to back-end development, I thrive on\r\n                                        bringing ideas to life through clean, efficient code and intuitive user\r\n                                        experiences.\r\n                                        <br>\r\n\r\n                                        With a strong foundation in technologies like HTML5, CSS3, JavaScript, and\r\n                                        frameworks such as React and jQuery on the front end, coupled with PHP, Laravel,\r\n                                        and Mysql on the back end, I love tackling challenges head-on and constantly\r\n                                        expanding my skill set in this ever-evolving field.\r\n\r\n                                        Driven by a commitment to quality and innovation, I\'ve had the privilege of\r\n                                        contributing to diverse projects, from e-commerce platforms to hospital\r\n                                        management software, each presenting unique opportunities to learn and grow. I\r\n                                        believe in the power of collaboration and enjoy working closely with\r\n                                        cross-functional teams to deliver solutions that exceed expectations.\r\n                                        <br>\r\n                                        When I\'m not coding, you\'ll often find me exploring the latest trends in\r\n                                        technology, experimenting with new frameworks, or immersing myself in a good\r\n                                        book on software architecture. I\'m always up for a new challenge and excited\r\n                                        about the possibilities that lie ahead in the world of web development.\r\n                                        <br>\r\n                                        Feel free to take a look at some of my projects on the portfolio page, and don\'t\r\n                                        hesitate to reach out if you\'d like to collaborate or just geek out about code!\r\n                                    <br></p>', '/uploads/1977354684480808596_3949138601965380_7194049063321036238_n.jpg', '/uploads/340127289products.pdf', '2025-08-04 23:45:19', '2025-08-04 23:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_section_settings`
--

CREATE TABLE `blog_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'React and Laravel Project', 'react-and-laravel-project', '2025-08-04 23:46:53', '2025-08-04 23:46:53'),
(2, 'Flutter and Laravel Project', 'flutter-and-laravel-project', '2025-08-04 23:47:06', '2025-08-04 23:47:06'),
(3, 'jQuery and Laravel Project', 'jquery-and-laravel-project', '2025-08-04 23:47:21', '2025-08-04 23:47:21'),
(4, 'React Project', 'react-project', '2025-08-04 23:47:31', '2025-08-04 23:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `contact_section_settings`
--

CREATE TABLE `contact_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experienaces`
--

CREATE TABLE `experienaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_section_settings`
--

CREATE TABLE `feedback_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_contact_infos`
--

CREATE TABLE `footer_contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_help_links`
--

CREATE TABLE `footer_help_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `powered_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_useful_links`
--

CREATE TABLE `footer_useful_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `footer_logo` text NOT NULL,
  `favicon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `title`, `sub_title`, `btn_text`, `btn_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hi, I am Zabir Raihan', 'I’m Mohammad Zabir Raihan, a full-stack developer with 3+ years of experience in building robust and user-friendly web applications. Skilled in React, PHP, Laravel, and MySQL, I enjoy crafting efficient solutions and collaborating with teams to deliver impactful projects.', NULL, NULL, '/uploads/58352007luca-bravo-O453M2Liufs-unsplash.jpg', '2025-08-04 23:36:45', '2025-08-04 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_30_051517_create_heroes_table', 1),
(6, '2023_01_31_074915_create_typer_titles_table', 1),
(7, '2023_02_02_073050_create_services_table', 1),
(8, '2023_02_04_052439_create_abouts_table', 1),
(9, '2023_02_05_040548_create_categories_table', 1),
(10, '2023_02_05_093752_create_portfolio_items_table', 1),
(11, '2023_02_06_094305_create_portfolio_section_settings_table', 1),
(12, '2023_02_07_073815_create_skill_section_settings_table', 1),
(13, '2023_02_08_034942_create_skill_items_table', 1),
(14, '2023_02_08_105722_create_experienaces_table', 1),
(15, '2023_02_09_044602_create_feedback_table', 1),
(16, '2023_02_09_093837_create_feedback_section_settings_table', 1),
(17, '2023_02_11_041736_create_blog_categories_table', 1),
(18, '2023_02_11_072154_create_blogs_table', 1),
(19, '2023_02_12_110801_create_blog_section_settings_table', 1),
(20, '2023_02_13_115308_create_contact_section_settings_table', 1),
(21, '2023_02_14_035621_create_footer_social_links_table', 1),
(22, '2023_02_14_090943_create_footer_infos_table', 1),
(23, '2023_02_14_102504_create_footer_contact_infos_table', 1),
(24, '2023_02_15_041536_create_footer_useful_links_table', 1),
(25, '2023_02_15_064041_create_footer_help_links_table', 1),
(26, '2023_02_16_042610_create_general_settings_table', 1),
(27, '2023_02_16_063957_create_seo_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `website` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `image`, `title`, `category_id`, `description`, `client`, `website`, `created_at`, `updated_at`) VALUES
(1, '/uploads/978134989orderwala.png', 'Orderwala ERP System', 1, '<ol><li><p>Orderwala ERP System is a comprehensive enterprise resource planning application developed to streamline order management, inventory tracking, and reporting processes. Built as a <strong data-start=\"307\" data-end=\"329\">team-based project</strong>, it leverages <strong data-start=\"344\" data-end=\"356\">React.js</strong> for a dynamic and responsive frontend and <strong data-start=\"399\" data-end=\"410\">Laravel</strong> for a powerful and secure backend.<br><br></p><p data-start=\"449\" data-end=\"472\">Key features include:</p>\r\n<p>\r\n</p><p></p><ol></ol>\r\n<p></p><ul><li><strong data-start=\"475\" data-end=\"500\">Role-based dashboards</strong> for different teams and managers</li><li>\r\n<ol></ol>\r\n</li><li><strong data-start=\"538\" data-end=\"581\">Real-time order tracking and management</strong></li><li>\r\n<ol></ol>\r\n</li><li><strong data-start=\"586\" data-end=\"632\">Inventory monitoring with detailed reports</strong></li><li><ol></ol></li><li><strong data-start=\"637\" data-end=\"683\">Advanced search and filtering capabilities</strong></li></ul>\r\n<p data-start=\"764\" data-end=\"901\"><br></p><p data-start=\"764\" data-end=\"901\">This project highlights my expertise in <strong data-start=\"804\" data-end=\"830\">full-stack development</strong>, focusing on performance, scalability, and a smooth user experience.</p><p><br></p></li></ol>', 'Limerick resources ltd', 'https://erp.orderwalabd.com/dashboard', '2025-08-05 00:00:43', '2025-08-05 00:01:48'),
(2, '/uploads/964104739Artisan1.png', 'Artisan ERP System', 1, '<p data-start=\"82\" data-end=\"477\">Artisan ERP is a tailored enterprise resource planning solution developed for a leading <strong data-start=\"195\" data-end=\"214\">ceramic company</strong> to optimize its production, planning, and reporting processes. Designed as a <strong data-start=\"292\" data-end=\"315\">team-driven project</strong>, the system uses <strong data-start=\"333\" data-end=\"345\">React.js</strong> for a responsive and user-friendly frontend, paired with a <strong data-start=\"405\" data-end=\"416\">Laravel</strong> backend for robust functionality and secure data handling.</p>\r\n<p data-start=\"479\" data-end=\"502\">Key features include:</p>\r\n<ul data-start=\"503\" data-end=\"801\"><ol><li data-start=\"503\" data-end=\"571\">\r\n<ol><li><strong data-start=\"505\" data-end=\"543\">Production planning and scheduling</strong> for ceramic manufacturing</li></ol>\r\n</li><li data-start=\"572\" data-end=\"627\">\r\n<ol><li><strong data-start=\"574\" data-end=\"625\">Real-time tracking of work orders and inventory</strong></li></ol>\r\n</li><li data-start=\"628\" data-end=\"679\">\r\n<ol><li><strong data-start=\"630\" data-end=\"651\">Role-based access</strong> for different departments</li></ol>\r\n</li><li data-start=\"680\" data-end=\"747\">\r\n<ol><li><strong data-start=\"682\" data-end=\"718\">Detailed reporting and analytics</strong> for better decision-making</li></ol>\r\n</li><li data-start=\"748\" data-end=\"801\">\r\n<ol><li><strong data-start=\"750\" data-end=\"799\">Seamless coordination across production units</strong></li></ol>\r\n</li></ol></ul>\r\n<p data-start=\"803\" data-end=\"938\"><br></p><p data-start=\"803\" data-end=\"938\">This project demonstrates my ability to build <strong data-start=\"849\" data-end=\"884\">industry-specific ERP solutions</strong>, ensuring scalability, efficiency, and ease of use.</p><p><br></p>', 'Artisan', 'https://artisan.projectsample.info', '2025-08-05 00:14:19', '2025-08-05 00:16:39'),
(3, '/uploads/42787834AppartPro.png', 'AppartPro Housing Management System', 1, '<p data-start=\"92\" data-end=\"496\">AppartPro is a modern <strong data-start=\"156\" data-end=\"187\">housing management software</strong> designed to streamline property, tenant, and maintenance management for residential complexes and housing societies. Developed as a <strong data-start=\"320\" data-end=\"342\">team-based project</strong>, it combines a <strong data-start=\"358\" data-end=\"370\">React.js</strong> frontend for a smooth, responsive user experience with a <strong data-start=\"428\" data-end=\"439\">Laravel</strong> backend for secure, reliable, and scalable operations.</p>\r\n<p data-start=\"498\" data-end=\"521\">Key features include:</p>\r\n<ul data-start=\"522\" data-end=\"850\"><ul><li data-start=\"522\" data-end=\"580\">\r\n<ul><li><strong data-start=\"524\" data-end=\"555\">Tenant and lease management</strong> with automated records</li></ul>\r\n</li><li data-start=\"581\" data-end=\"640\">\r\n<ul><li><strong data-start=\"583\" data-end=\"615\">Billing and payment tracking</strong> for rent and utilities</li></ul>\r\n</li><li data-start=\"641\" data-end=\"707\">\r\n<ul><li><strong data-start=\"643\" data-end=\"675\">Maintenance request handling</strong> with real-time status updates</li></ul>\r\n</li><li data-start=\"708\" data-end=\"773\">\r\n<ul><li><strong data-start=\"710\" data-end=\"735\">Role-based dashboards</strong> for admins, managers, and residents</li></ul>\r\n</li><li data-start=\"774\" data-end=\"850\">\r\n<ul><li><strong data-start=\"776\" data-end=\"809\">Comprehensive reporting tools</strong> for financial and operational insights</li></ul>\r\n</li></ul></ul>\r\n<p data-start=\"852\" data-end=\"1007\"><br></p><p data-start=\"852\" data-end=\"1007\">This project highlights my capability to build <strong data-start=\"899\" data-end=\"932\">end-to-end management systems</strong> focused on usability, efficiency, and real-world housing industry needs.</p><p><br></p>', 'ZAIMAH TECHNOLOGIES LTD', 'http://appartpro.greatpharma.org/', '2025-08-05 00:26:22', '2025-08-05 00:26:22'),
(4, '/uploads/2056799065orderwala-app.png', 'Orderwala Mobile App', 2, '<p data-start=\"89\" data-end=\"469\">Orderwala is a feature-rich <strong data-start=\"154\" data-end=\"186\">eCommerce mobile application</strong> built to provide a seamless online shopping experience. The <strong data-start=\"247\" data-end=\"259\">frontend</strong> was developed using <strong data-start=\"280\" data-end=\"291\">Flutter</strong> to deliver a smooth, cross-platform user experience, while the <strong data-start=\"355\" data-end=\"366\">backend</strong>, which I developed, was powered by <strong data-start=\"402\" data-end=\"413\">Laravel</strong> to ensure secure, scalable, and efficient operations.</p>\r\n<p data-start=\"471\" data-end=\"494\">Key features include:</p>\r\n<ul data-start=\"495\" data-end=\"787\"><li data-start=\"495\" data-end=\"544\">\r\n<p data-start=\"497\" data-end=\"544\"><strong data-start=\"497\" data-end=\"542\">User-friendly product browsing and search</strong></p>\r\n</li><li data-start=\"545\" data-end=\"594\">\r\n<p data-start=\"547\" data-end=\"594\"><strong data-start=\"547\" data-end=\"592\">Secure authentication and user management</strong></p>\r\n</li><li data-start=\"595\" data-end=\"644\">\r\n<p data-start=\"597\" data-end=\"644\"><strong data-start=\"597\" data-end=\"642\">Shopping cart and order management system</strong></p>\r\n</li><li data-start=\"645\" data-end=\"695\">\r\n<p data-start=\"647\" data-end=\"695\"><strong data-start=\"647\" data-end=\"693\">Real-time order tracking and notifications</strong></p>\r\n</li><li data-start=\"696\" data-end=\"742\">\r\n<p data-start=\"698\" data-end=\"742\"><strong data-start=\"698\" data-end=\"740\">Integrated payment and checkout system</strong></p>\r\n</li><li data-start=\"743\" data-end=\"787\">\r\n<p data-start=\"745\" data-end=\"787\"><strong data-start=\"745\" data-end=\"785\">Admin panel support via backend APIs</strong></p>\r\n</li></ul>\r\n<p data-start=\"789\" data-end=\"968\"><br></p><p data-start=\"789\" data-end=\"968\">This project showcases my backend development expertise in <strong data-start=\"848\" data-end=\"889\">building robust, API-driven solutions</strong> for mobile applications, focusing on performance, security, and scalability.</p><p><br></p>', 'Limerick resources ltd', 'https://play.google.com/store/search?q=team%20orderwala&c=apps&hl=en', '2025-08-05 00:39:09', '2025-08-05 00:39:09'),
(5, '/uploads/59306505team-orderwala.jpg', 'Team Orderwala', 2, '<p data-start=\"89\" data-end=\"521\">Team Orderwala is a dedicated <strong data-start=\"166\" data-end=\"199\">enterprise mobile application</strong> developed for the employees of the Limerick resources ltd company to simplify operations and enhance productivity. The <strong data-start=\"306\" data-end=\"318\">frontend</strong> was built using <strong data-start=\"335\" data-end=\"346\">Flutter</strong>, providing a smooth and intuitive mobile experience, while the <strong data-start=\"410\" data-end=\"421\">backend</strong>, which I developed, was powered by <strong data-start=\"457\" data-end=\"468\">Laravel</strong> to deliver secure APIs and robust data management.</p>\r\n<p data-start=\"523\" data-end=\"546\">Key features include:</p>\r\n<ul data-start=\"547\" data-end=\"847\"><li data-start=\"547\" data-end=\"595\">\r\n<p data-start=\"549\" data-end=\"595\"><strong data-start=\"549\" data-end=\"593\">Employee login and role-based dashboards</strong></p>\r\n</li><li data-start=\"596\" data-end=\"642\">\r\n<p data-start=\"598\" data-end=\"642\"><strong data-start=\"598\" data-end=\"640\">Order assignment and progress tracking</strong></p>\r\n</li><li data-start=\"643\" data-end=\"688\">\r\n<p data-start=\"645\" data-end=\"688\"><strong data-start=\"645\" data-end=\"686\">Inventory and delivery status updates</strong></p>\r\n</li><li data-start=\"689\" data-end=\"737\">\r\n<p data-start=\"691\" data-end=\"737\"><strong data-start=\"691\" data-end=\"735\">Internal communication and notifications</strong></p>\r\n</li><li data-start=\"738\" data-end=\"788\">\r\n<p data-start=\"740\" data-end=\"788\"><strong data-start=\"740\" data-end=\"786\">Performance monitoring and reporting tools</strong></p>\r\n</li><li data-start=\"789\" data-end=\"847\">\r\n<p data-start=\"791\" data-end=\"847\"><strong data-start=\"791\" data-end=\"845\">Seamless integration with the Orderwala ERP system</strong></p>\r\n</li></ul>\r\n<p data-start=\"849\" data-end=\"1008\"><br></p><p data-start=\"849\" data-end=\"1008\">This project demonstrates my expertise in <strong data-start=\"891\" data-end=\"941\">backend development for enterprise mobile apps</strong>, focusing on <strong data-start=\"955\" data-end=\"1005\">workflow automation, security, and scalability</strong>.</p><p><br></p>', 'Limerick resources ltd', 'https://play.google.com/store/search?q=team%20orderwala&c=apps&hl=en', '2025-08-05 00:42:15', '2025-08-05 00:42:50'),
(6, '/uploads/2017638201unnamed.webp', 'GreatDoc – Hospital Management Mobile App', 2, '<p data-start=\"102\" data-end=\"526\">GreatDoc is a comprehensive <strong data-start=\"178\" data-end=\"220\">hospital management mobile application</strong> designed to help doctors and healthcare staff manage patients, appointments, and medical records more efficiently. Built with a <strong data-start=\"349\" data-end=\"360\">Flutter</strong> frontend for cross-platform usability and a <strong data-start=\"405\" data-end=\"416\">Laravel</strong> backend (developed by me) for secure and scalable data handling, the app ensures smooth hospital workflows.</p>\r\n<p data-start=\"528\" data-end=\"551\"><br></p><p data-start=\"528\" data-end=\"551\">Key features include:</p>\r\n<ul data-start=\"552\" data-end=\"852\"><li data-start=\"552\" data-end=\"597\">\r\n<p data-start=\"554\" data-end=\"597\"><strong data-start=\"554\" data-end=\"595\">Doctor and patient profile management</strong></p>\r\n</li><li data-start=\"598\" data-end=\"642\"><p data-start=\"600\" data-end=\"642\"><strong data-start=\"600\" data-end=\"640\">Appointment scheduling and reminders</strong></p></li><li data-start=\"691\" data-end=\"734\">\r\n<p data-start=\"693\" data-end=\"734\"><strong data-start=\"693\" data-end=\"732\">Prescription and treatment tracking</strong></p>\r\n</li><li data-start=\"735\" data-end=\"792\">\r\n<p data-start=\"737\" data-end=\"792\"><strong data-start=\"737\" data-end=\"790\">Secure communication between doctors and patients</strong></p>\r\n</li><li data-start=\"793\" data-end=\"852\">\r\n<p data-start=\"795\" data-end=\"852\"><strong data-start=\"795\" data-end=\"850\">Analytics and reporting for hospital administration</strong></p>\r\n</li></ul>\r\n<p data-start=\"854\" data-end=\"1019\"><br></p><p data-start=\"854\" data-end=\"1019\">This project highlights my role in <strong data-start=\"889\" data-end=\"912\">backend development</strong>, focusing on delivering <strong data-start=\"937\" data-end=\"981\">reliable APIs, security, and performance</strong> for a critical healthcare solution.</p><p><br></p>', 'MacroHealthPlus', 'https://play.google.com/store/apps/details?id=com.mhp.mhp_digidoctor_app&pcampaignid=web_share', '2025-08-05 01:18:40', '2025-08-05 01:18:40'),
(7, '/uploads/1577948970unnamed (1).webp', 'DigiPatient – Patient Management Mobile App', 2, '<p data-start=\"86\" data-end=\"499\">DigiPatient is a user-focused <strong data-start=\"166\" data-end=\"207\">patient management mobile application</strong> built to empower patients with easy access to healthcare services and personal medical data. The app uses a <strong data-start=\"316\" data-end=\"327\">Flutter</strong> frontend for a smooth and responsive user experience and a <strong data-start=\"387\" data-end=\"398\">Laravel</strong> backend (developed by me) to ensure secure and efficient handling of sensitive health information.</p>\r\n<p data-start=\"501\" data-end=\"524\">Key features include:</p>\r\n<ul data-start=\"525\" data-end=\"832\"><li data-start=\"525\" data-end=\"570\">\r\n<p data-start=\"527\" data-end=\"570\"><strong data-start=\"527\" data-end=\"568\">Patient registration and secure login</strong></p>\r\n</li><li data-start=\"571\" data-end=\"613\">\r\n<p data-start=\"573\" data-end=\"613\"><strong data-start=\"573\" data-end=\"611\">Appointment booking and scheduling</strong></p>\r\n</li><li data-start=\"614\" data-end=\"665\">\r\n<p data-start=\"616\" data-end=\"665\"><strong data-start=\"616\" data-end=\"663\">Access to medical history and prescriptions</strong></p>\r\n</li><li data-start=\"666\" data-end=\"730\">\r\n<p data-start=\"668\" data-end=\"730\"><strong data-start=\"668\" data-end=\"728\">Real-time notifications for doctor updates and reminders</strong></p>\r\n</li><li data-start=\"731\" data-end=\"767\">\r\n<p data-start=\"733\" data-end=\"767\"><strong data-start=\"733\" data-end=\"765\">Billing and payment tracking</strong></p>\r\n</li><li data-start=\"768\" data-end=\"832\">\r\n<p data-start=\"770\" data-end=\"832\"><strong data-start=\"770\" data-end=\"830\">Integration with hospital systems for seamless data flow</strong></p>\r\n</li></ul>\r\n<p data-start=\"834\" data-end=\"992\">This project reflects my backend expertise in <strong data-start=\"880\" data-end=\"915\">developing healthcare solutions</strong>, with a strong focus on <strong data-start=\"940\" data-end=\"989\">security, scalability, and user-friendly APIs</strong>.</p><p><br></p>', 'MacroHealthPlus', 'https://play.google.com/store/apps/details?id=com.micro.digi_patient&pcampaignid=web_share', '2025-08-05 01:20:24', '2025-08-05 01:20:24'),
(8, '/uploads/605988207chattapp.png', 'ChatApplication – Real-Time Messaging System', 3, '<p data-start=\"86\" data-end=\"403\">ChatApplication is a dynamic <strong data-start=\"166\" data-end=\"198\">real-time messaging platform</strong> built using <strong data-start=\"211\" data-end=\"222\">Laravel</strong> for the backend and <strong data-start=\"243\" data-end=\"253\">jQuery</strong> for the frontend interface. Designed to support seamless communication, the app provides a fast, secure, and interactive chat experience for users.</p>\r\n<p data-start=\"405\" data-end=\"428\"><br></p><p data-start=\"405\" data-end=\"428\">Key features include:</p>\r\n<ul data-start=\"429\" data-end=\"748\"><li data-start=\"429\" data-end=\"467\">\r\n<p data-start=\"431\" data-end=\"467\"><strong data-start=\"431\" data-end=\"465\">One-to-one and group messaging</strong></p>\r\n</li><li data-start=\"468\" data-end=\"536\">\r\n<p data-start=\"470\" data-end=\"536\"><strong data-start=\"470\" data-end=\"534\">Real-time message delivery using AJAX &amp; Laravel broadcasting</strong></p>\r\n</li><li data-start=\"537\" data-end=\"592\">\r\n<p data-start=\"539\" data-end=\"592\"><strong data-start=\"539\" data-end=\"590\">User authentication and secure session handling</strong></p>\r\n</li><li data-start=\"593\" data-end=\"651\">\r\n<p data-start=\"595\" data-end=\"651\"><strong data-start=\"595\" data-end=\"649\">Read receipts and online/offline status indicators</strong></p>\r\n</li><li data-start=\"652\" data-end=\"686\">\r\n<p data-start=\"654\" data-end=\"686\"><strong data-start=\"654\" data-end=\"684\">Searchable message history</strong></p>\r\n</li><li data-start=\"687\" data-end=\"748\">\r\n<p data-start=\"689\" data-end=\"748\"><strong data-start=\"689\" data-end=\"746\">Lightweight, responsive UI for smooth user experience</strong></p>\r\n</li></ul>\r\n<p data-start=\"750\" data-end=\"894\"><br></p><p data-start=\"750\" data-end=\"894\">This project demonstrates my ability to develop <strong data-start=\"798\" data-end=\"828\">real-time web applications</strong> with a focus on <strong data-start=\"845\" data-end=\"891\">security, performance, and user engagement</strong>.</p><p><br></p>', 'Personal', 'https://chat-app.zabiremu.fun/login', '2025-08-05 01:23:55', '2025-08-05 01:23:55'),
(9, '/uploads/26404196TaxACTBD-Home.png', 'TaxActBD – Online Tax Support Platform', 3, '<p data-start=\"83\" data-end=\"404\">TaxActBD is a modern <strong data-start=\"149\" data-end=\"165\">web platform</strong> built to provide users with comprehensive support for tax-related services in Bangladesh. The site was developed using <strong data-start=\"285\" data-end=\"296\">Laravel</strong> for a secure and scalable backend, with a clean and responsive frontend for an intuitive user experience.</p>\r\n<p data-start=\"406\" data-end=\"429\"><br></p><p data-start=\"406\" data-end=\"429\">Key features include:</p>\r\n<ul data-start=\"430\" data-end=\"713\"><li data-start=\"430\" data-end=\"478\">\r\n<p data-start=\"432\" data-end=\"478\"><strong data-start=\"432\" data-end=\"476\">User registration and profile management</strong></p>\r\n</li><li data-start=\"479\" data-end=\"524\">\r\n<p data-start=\"481\" data-end=\"524\"><strong data-start=\"481\" data-end=\"522\">Guidance and resources for tax filing</strong></p>\r\n</li><li data-start=\"525\" data-end=\"571\">\r\n<p data-start=\"527\" data-end=\"571\"><strong data-start=\"527\" data-end=\"569\">Online consultation and support system</strong></p>\r\n</li><li data-start=\"572\" data-end=\"612\">\r\n<p data-start=\"574\" data-end=\"612\"><strong data-start=\"574\" data-end=\"610\">Document submission and tracking</strong></p>\r\n</li><li data-start=\"613\" data-end=\"661\">\r\n<p data-start=\"615\" data-end=\"661\"><strong data-start=\"615\" data-end=\"659\">Knowledge base with FAQs and tax updates</strong></p>\r\n</li><li data-start=\"662\" data-end=\"713\">\r\n<p data-start=\"664\" data-end=\"713\"><strong data-start=\"664\" data-end=\"711\">Secure handling of sensitive financial data</strong></p>\r\n</li></ul>\r\n<p data-start=\"715\" data-end=\"883\"><br></p><p data-start=\"715\" data-end=\"883\">This project showcases my ability to develop <strong data-start=\"760\" data-end=\"799\">secure, user-friendly web platforms</strong> that handle sensitive information while maintaining accessibility and efficiency.</p><p><br></p>', 'TaxActBD', 'https://taxactbd.com/', '2025-08-05 01:25:45', '2025-08-05 01:25:45'),
(10, '/uploads/1471602238Wash-Factory.png', 'WashFactory – Car Wash Service Website', 3, '<p data-start=\"82\" data-end=\"406\">WashFactory is a professional <strong data-start=\"157\" data-end=\"185\">car wash service website</strong> developed for a German company to help customers easily book and manage vehicle cleaning services. Built with a <strong data-start=\"298\" data-end=\"317\">Laravel backend</strong> and a <strong data-start=\"324\" data-end=\"347\">responsive frontend</strong>, it ensures a smooth user experience across all devices.</p>\r\n<p data-start=\"408\" data-end=\"431\"><br></p><p data-start=\"408\" data-end=\"431\">Key features include:</p>\r\n<ul data-start=\"432\" data-end=\"789\"><li data-start=\"432\" data-end=\"483\">\r\n<p data-start=\"434\" data-end=\"483\"><strong data-start=\"434\" data-end=\"481\">Online booking system for car wash services</strong></p>\r\n</li><li data-start=\"484\" data-end=\"547\">\r\n<p data-start=\"486\" data-end=\"547\"><strong data-start=\"486\" data-end=\"545\">Service packages with detailed descriptions and pricing</strong></p>\r\n</li><li data-start=\"548\" data-end=\"603\">\r\n<p data-start=\"550\" data-end=\"603\"><strong data-start=\"550\" data-end=\"601\">Customer account management and booking history</strong></p>\r\n</li><li data-start=\"604\" data-end=\"661\">\r\n<p data-start=\"606\" data-end=\"661\"><strong data-start=\"606\" data-end=\"659\">Real-time booking confirmations and notifications</strong></p>\r\n</li><li data-start=\"662\" data-end=\"724\">\r\n<p data-start=\"664\" data-end=\"724\"><strong data-start=\"664\" data-end=\"722\">Admin dashboard for managing services and appointments</strong></p>\r\n</li><li data-start=\"725\" data-end=\"789\">\r\n<p data-start=\"727\" data-end=\"789\"><strong data-start=\"727\" data-end=\"787\">Fully responsive design optimized for mobile and desktop</strong></p>\r\n</li></ul>\r\n<p data-start=\"791\" data-end=\"939\"><br></p><p data-start=\"791\" data-end=\"939\">This project highlights my expertise in building <strong data-start=\"840\" data-end=\"874\">service-oriented web platforms</strong> with a focus on <strong data-start=\"891\" data-end=\"936\">usability, scalability, and modern design</strong>.</p><p><br></p>', 'WashFactory', 'https://washfactory.reigeeky.com/', '2025-08-05 01:27:17', '2025-08-05 01:27:17'),
(11, '/uploads/1635459519MacroHealthPlus.png', 'MacroHealthPlus – Healthcare Platform Website', 4, '<p data-start=\"99\" data-end=\"460\"><strong data-start=\"99\" data-end=\"118\">MacroHealthPlus</strong> is a professional <strong data-start=\"137\" data-end=\"169\">static React-powered website</strong> created for an Australian software company specializing in intelligent healthcare solutions, offering a polished and responsive experience to visitors. I contributed by building the frontend using <strong data-start=\"367\" data-end=\"379\">React.js</strong>, delivering a modern and fast-loading site optimized for cross-device usability.</p>\r\n<p data-start=\"462\" data-end=\"499\"><span class=\"relative -mx-px my-[-0.2rem] rounded px-px py-[0.2rem] transition-colors duration-100 ease-in-out\">Key highlights include:</span></p>\r\n<ul data-start=\"500\" data-end=\"699\"><li data-start=\"500\" data-end=\"539\">\r\n<p data-start=\"502\" data-end=\"539\"><span class=\"relative -mx-px my-[-0.2rem] rounded px-px py-[0.2rem] transition-colors duration-100 ease-in-out\"><strong data-start=\"0\" data-end=\"22\" data-is-only-node=\"\">Static React build</strong> with fast performance, mobile-responsive layout, and clean UI/UX.</span></p>\r\n</li><li data-start=\"540\" data-end=\"579\">\r\n<p data-start=\"542\" data-end=\"579\"><span class=\"relative -mx-px my-[-0.2rem] rounded px-px py-[0.2rem] transition-colors duration-100 ease-in-out\"><strong data-start=\"0\" data-end=\"21\" data-is-only-node=\"\">Informative pages</strong> including company overview, platform features, mission &amp; vision statements, news updates, and contact details.</span></p>\r\n</li><li data-start=\"580\" data-end=\"699\">\r\n<p data-start=\"582\" data-end=\"699\"><span class=\"relative -mx-px my-[-0.2rem] rounded px-px py-[0.2rem] transition-colors duration-100 ease-in-out\">Represents MacroHealth’s digital presence, supporting their brand messaging and service offerings.</span><br data-start=\"619\" data-end=\"622\">\r\n<span class=\"relative -mx-px my-[-0.2rem] rounded px-px py-[0.2rem] transition-colors duration-100 ease-in-out\">(Based on publicly available information from their official website and company profiles)</span> <span class=\"\" data-state=\"closed\"><span class=\"ms-1 inline-flex max-w-full items-center relative top-[-0.094rem] animate-[show_150ms_ease-in]\"><a href=\"https://www.bdjobslive.com/company/macro-health-plus-software-pte-ltd-2677?utm_source=chatgpt.com\" target=\"_blank\" rel=\"noopener\" alt=\"https://www.bdjobslive.com/company/macro-health-plus-software-pte-ltd-2677?utm_source=chatgpt.com\" class=\"flex h-4.5 overflow-hidden rounded-xl px-2 text-[9px] font-medium text-token-text-secondary! bg-[#F4F4F4]! dark:bg-[#303030]! transition-colors duration-150 ease-in-out\"><span class=\"relative start-0 bottom-0 flex h-full w-full items-center\"><span class=\"flex h-4 w-full items-center justify-between absolute\"><span class=\"max-w-full grow truncate overflow-hidden text-center\">macros.health</span><span class=\"-me-1 flex h-full items-center rounded-full px-1 text-[#8F8F8F]\">+9</span></span><span class=\"flex h-4 w-full items-center justify-between\"><span class=\"max-w-full grow truncate overflow-hidden text-center\">bdjobslive.com</span><span class=\"-me-1 flex h-full items-center rounded-full px-1 text-[#8F8F8F]\">+9</span></span><span class=\"flex h-4 w-full items-center justify-between absolute\"><span class=\"max-w-full grow truncate overflow-hidden text-center\">hotjobs.bdjobs.com</span><span class=\"-me-1 flex h-full items-center rounded-full px-1 text-[#8F8F8F]\">+9</span></span></span></a></span></span><span class=\"\" data-state=\"closed\"><span class=\"ms-1 inline-flex max-w-full items-center relative top-[-0.094rem] animate-[show_150ms_ease-in]\"><a href=\"https://macrohealth.com/?utm_source=chatgpt.com\" target=\"_blank\" rel=\"noopener\" alt=\"https://macrohealth.com/?utm_source=chatgpt.com\" class=\"flex h-4.5 overflow-hidden rounded-xl px-2 text-[9px] font-medium text-token-text-secondary! bg-[#F4F4F4]! dark:bg-[#303030]! transition-colors duration-150 ease-in-out\"><span class=\"relative start-0 bottom-0 flex h-full w-full items-center\"><span class=\"flex h-4 w-full items-center justify-between overflow-hidden\"><span class=\"max-w-full grow truncate overflow-hidden text-center\">macrohealth.com</span></span></span></a></span></span></p>\r\n</li></ul>\r\n<p data-start=\"701\" data-end=\"855\">This project showcases my ability to deliver <strong data-start=\"746\" data-end=\"787\">impactful marketing-oriented websites</strong> with a focus on performance, clarity, and user-friendly navigation.</p><p><br></p>', 'MacroHealthPlus', 'https://macrohealthplus.org/', '2025-08-05 01:35:41', '2025-08-05 01:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_section_settings`
--

CREATE TABLE `portfolio_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_section_settings`
--

INSERT INTO `portfolio_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 'My Projects & Works', 'Showcasing innovative solutions built with React, Laravel, Flutter, and more.', '2025-08-05 01:36:56', '2025-08-05 01:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'eCommerce application', 'I will build any eCommerce application from scratch with React.js, PHP and Laravel. Simple to personalize and mobile-friendly. It supports all devices.', '2025-08-04 23:38:06', '2025-08-04 23:38:06'),
(2, 'Wordpress Website', 'We create fully responsive, eye-catching websites with Elementor Pro. Optimized for all devices and designed to deliver a seamless user experience.', '2025-08-04 23:38:29', '2025-08-04 23:42:39'),
(4, 'Custom Web App Development', 'I build custom eCommerce apps from scratch using React.js, PHP & Laravel. Mobile-friendly, fully responsive, and easy to personalize.', '2025-08-04 23:38:59', '2025-08-04 23:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `skill_items`
--

CREATE TABLE `skill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_items`
--

INSERT INTO `skill_items` (`id`, `name`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'HTML & CSS', 99, '2025-08-05 01:42:54', '2025-08-05 01:42:54'),
(2, 'JavaScript', 90, '2025-08-05 01:43:08', '2025-08-05 01:43:08'),
(3, 'Bootstrap & Tailwind', 90, '2025-08-05 01:43:40', '2025-08-05 01:48:24'),
(5, 'React', 90, '2025-08-05 01:44:33', '2025-08-05 01:44:33'),
(6, 'jQuery', 90, '2025-08-05 01:44:49', '2025-08-05 01:44:49'),
(8, 'PHP & Laravel', 90, '2025-08-05 01:45:26', '2025-08-05 01:48:17'),
(9, 'Rest API', 90, '2025-08-05 01:45:39', '2025-08-05 01:46:27'),
(10, 'Mysql', 90, '2025-08-05 01:45:52', '2025-08-05 01:45:52'),
(11, 'Cpanel', 90, '2025-08-05 01:46:07', '2025-08-05 01:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `skill_section_settings`
--

CREATE TABLE `skill_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_section_settings`
--

INSERT INTO `skill_section_settings` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'My Skillset', 'Strong foundation in programming languages, frameworks, and development best practices.', '/uploads/94627124490995718_3993151484230758_6184895780686760572_n.jpg', '2025-08-05 01:42:02', '2025-08-05 01:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `typer_titles`
--

CREATE TABLE `typer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typer_titles`
--

INSERT INTO `typer_titles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'React.js & Modern Frontend Specialist', '2025-08-04 23:09:26', '2025-08-04 23:23:13'),
(2, 'Full Stack PHP Laravel Developer', '2025-08-04 23:10:01', '2025-08-04 23:23:03'),
(3, 'Backend Developer (Laravel & MySQL)', '2025-08-04 23:23:36', '2025-08-04 23:23:36'),
(4, 'Passionate About Clean Code', '2025-08-04 23:24:00', '2025-08-04 23:24:00'),
(5, 'Performance-Oriented Web Developer', '2025-08-04 23:24:10', '2025-08-04 23:24:10'),
(6, 'Database Design & Optimization Expert', '2025-08-04 23:24:25', '2025-08-04 23:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$HoRcBNaaD7eUaLQJ8ZtDF.bPOGwxMSGSvcUSNj8.Gn5hNl9.lpP4G', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_section_settings`
--
ALTER TABLE `blog_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_section_settings`
--
ALTER TABLE `contact_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experienaces`
--
ALTER TABLE `experienaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_section_settings`
--
ALTER TABLE `feedback_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_contact_infos`
--
ALTER TABLE `footer_contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_help_links`
--
ALTER TABLE `footer_help_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_useful_links`
--
ALTER TABLE `footer_useful_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_section_settings`
--
ALTER TABLE `portfolio_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_items`
--
ALTER TABLE `skill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_section_settings`
--
ALTER TABLE `skill_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typer_titles`
--
ALTER TABLE `typer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_section_settings`
--
ALTER TABLE `blog_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_section_settings`
--
ALTER TABLE `contact_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experienaces`
--
ALTER TABLE `experienaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_section_settings`
--
ALTER TABLE `feedback_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_contact_infos`
--
ALTER TABLE `footer_contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_help_links`
--
ALTER TABLE `footer_help_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_useful_links`
--
ALTER TABLE `footer_useful_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portfolio_section_settings`
--
ALTER TABLE `portfolio_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skill_items`
--
ALTER TABLE `skill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `skill_section_settings`
--
ALTER TABLE `skill_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `typer_titles`
--
ALTER TABLE `typer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
