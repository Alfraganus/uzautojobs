-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2019 at 02:28 PM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmuzbeki_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `company_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 1, 'Buyer', NULL, 'buyer@buyer.com', '$2y$10$47ig/2wfYDc6EVg0iVnvp.l.jC0APqEVUjR7P6PFYTEhbNFzHPJ66', 'JX94amJDl7frqrlJnJPhbKfn1EhSHUEkl9HV7wNXaR13K2AEhtPlmxI5GQxd', '2018-09-13 02:53:27', '2018-09-13 02:53:27'),
(4, 2, 'Sub Admin', NULL, 'sub@jobsportal.com', '$2y$10$/wEnF471sRGYZFq3DySYGeMlMdQfgPMtTH1Vwu9zu3wonM3KJbVpu', 'JxhDCm4rAaQQZTkblncWcUDodPmdd0YaFkVAUYriIsvwtbR355rXvWRFVQFl', '2018-09-19 01:24:16', '2019-11-01 09:17:21'),
(5, 1, 'Admin', NULL, 'admin@uzautomotors.com', '$2y$10$PET.qxN6LwqImIs4UvZSc.9vkO/gckosOFr0NlRB/36D0K62HWE4e', NULL, '2019-10-28 03:45:50', '2019-10-28 03:45:50'),
(10, 2, 'Akmaljon', '\"UzAutomotors\"', 'akmal@uzauto.uz', '$2y$10$kSkNdcoGNBwkYFv.5HBTNO3A4h2.EStVNOvZsUYfjgAof225JS4YG', 'wQymqEOx17umo67BHZrrtXxQmcQNeaAVtaau7XMhlLAVHSfUAxsSBKWuzdM0', '2019-11-04 10:06:34', '2019-11-04 10:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(100) NOT NULL,
  `token` varchar(190) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_messages`
--

CREATE TABLE `applicant_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  `to_name` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `from_phone` varchar(20) DEFAULT NULL,
  `message_txt` mediumtext DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `id` int(11) NOT NULL,
  `status_code` varchar(10) NOT NULL,
  `status_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application_status`
--

INSERT INTO `application_status` (`id`, `status_code`, `status_name`) VALUES
(1, '0', 'На рассмотрении '),
(2, '1', '1 ый этап'),
(3, '2', ' 2 ой этап '),
(4, '3', ' 3 ий этап '),
(5, '4', '4 этап (предложение о работе) '),
(6, '5', ' Найм работника'),
(7, 'F', 'Отказ '),
(8, 'R', 'Резерв');

-- --------------------------------------------------------

--
-- Table structure for table `career_levels`
--

CREATE TABLE `career_levels` (
  `id` int(11) NOT NULL,
  `career_level_id` int(11) DEFAULT 0,
  `career_level` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `career_levels`
--

INSERT INTO `career_levels` (`id`, `career_level_id`, `career_level`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Department Head', 0, 1, 1, 'en', '2018-04-06 10:12:01', '2018-04-06 10:12:01'),
(2, 2, 'Entry Level', 0, 1, 2, 'en', '2018-04-06 10:12:23', '2018-04-06 10:12:23'),
(3, 3, 'Experienced Professional', 0, 1, 3, 'en', '2018-04-06 10:12:44', '2018-04-06 10:12:44'),
(4, 4, 'GM / CEO / Country Head / President', 0, 1, 4, 'en', '2018-04-06 10:13:07', '2018-04-06 10:13:07'),
(5, 5, 'Intern/Student', 0, 1, 5, 'en', '2018-04-06 10:13:30', '2018-04-06 10:13:30'),
(23, 1, 'Начальник отдела', 1, 1, 23, 'ru', '2019-06-21 00:44:19', '2019-06-21 00:44:19'),
(24, 2, 'Начальный уровень', 1, 1, 24, 'ru', '2019-06-21 00:44:57', '2019-06-21 00:44:57'),
(25, 3, 'Опытный Профессионал', 1, 1, 25, 'ru', '2019-06-21 00:45:22', '2019-06-21 00:45:22'),
(26, 4, 'Генеральный директор', 1, 1, 26, 'ru', '2019-06-21 00:46:40', '2019-06-21 00:50:37'),
(27, 5, 'Стажер/Студент', 1, 1, 27, 'ru', '2019-06-21 00:47:08', '2019-06-21 00:47:08'),
(28, 1, 'Бўлим бошлиғи', 0, 1, 28, 'uz', '2019-06-21 00:48:05', '2019-06-21 00:48:05'),
(29, 2, 'Бошланғич даража', 0, 1, 29, 'uz', '2019-06-21 00:56:05', '2019-06-21 00:56:11'),
(30, 3, 'Тажрибали профессионал', 0, 1, 30, 'uz', '2019-06-21 01:04:35', '2019-06-21 01:04:36'),
(31, 4, 'Бош директор', 0, 1, 31, 'uz', '2019-06-21 01:08:37', '2019-06-21 01:08:37'),
(32, 5, 'Стажёр/Талаба', 0, 1, 32, 'ru', '2019-06-21 01:14:50', '2019-06-21 01:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT 0,
  `city` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL,
  `is_default` int(1) DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 9999,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_id`, `city`, `state_id`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ташкент', 10, 1, 1, 1, 'ru', '2019-06-21 05:33:28', '2019-06-21 05:33:28'),
(2, 2, 'Самарканд', 7, 1, 1, 2, 'ru', '2019-06-21 05:33:37', '2019-06-21 05:33:37'),
(3, 3, 'Наманган', 6, 1, 1, 3, 'ru', '2019-06-21 05:33:48', '2019-06-21 05:33:48'),
(4, 4, 'Андижан', 1, 1, 1, 4, 'ru', '2019-06-21 05:33:59', '2019-06-21 05:33:59'),
(5, 5, 'Нукус', 13, 1, 1, 5, 'ru', '2019-06-21 05:34:14', '2019-06-21 05:34:14'),
(6, 6, 'Бухара', 2, 1, 1, 6, 'ru', '2019-06-21 05:34:23', '2019-06-21 05:34:23'),
(7, 7, 'Фергана', 11, 1, 1, 7, 'ru', '2019-06-21 05:34:34', '2019-06-21 05:34:34'),
(8, 8, 'Карши', 4, 1, 1, 8, 'ru', '2019-06-21 05:34:46', '2019-06-21 05:34:46'),
(9, 9, 'Коканд', 11, 1, 1, 9, 'ru', '2019-06-21 05:34:59', '2019-06-21 05:34:59'),
(10, 10, 'Маргилан', 11, 1, 1, 10, 'ru', '2019-06-21 05:35:16', '2019-06-21 05:35:16'),
(11, 11, 'Ангрен', 10, 1, 1, 11, 'ru', '2019-06-21 05:35:27', '2019-06-21 05:35:27'),
(12, 12, 'Джизак', 3, 1, 1, 12, 'ru', '2019-06-21 05:35:39', '2019-06-21 05:35:39'),
(13, 13, 'Чирчик', 10, 1, 1, 13, 'ru', '2019-06-21 05:35:52', '2019-06-21 05:35:52'),
(14, 14, 'Ургенч', 7, 1, 1, 14, 'ru', '2019-06-21 05:36:04', '2019-06-21 05:36:04'),
(15, 15, 'Хива', 12, 1, 1, 15, 'ru', '2019-06-21 05:36:20', '2019-07-08 08:48:02'),
(16, 16, 'Навои', 5, 1, 1, 16, 'ru', '2019-06-21 05:36:30', '2019-06-21 05:36:30'),
(17, 17, 'Алмалык', 10, 1, 1, 17, 'ru', '2019-06-21 05:36:42', '2019-06-21 05:36:42'),
(18, 18, 'Денау', 2, 1, 1, 18, 'ru', '2019-06-21 05:36:58', '2019-06-21 05:37:03'),
(19, 19, 'Шахрисабз', 4, 1, 1, 19, 'ru', '2019-06-21 05:37:15', '2019-06-21 05:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `page_slug` varchar(250) DEFAULT NULL,
  `show_in_top_menu` tinyint(1) DEFAULT 0,
  `show_in_footer_menu` tinyint(1) DEFAULT 0,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `seo_keywords` text DEFAULT NULL,
  `seo_other` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `page_slug`, `show_in_top_menu`, `show_in_footer_menu`, `seo_title`, `seo_description`, `seo_keywords`, `seo_other`, `created_at`, `updated_at`) VALUES
(3, 'about-us', 1, 1, 'Работа в УЗбекистане', 'Работа в Узбекистане.', 'Работа в Узбекистане.', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />', '2018-04-02 15:08:57', '2019-06-22 17:11:26'),
(4, 'terms-of-use', 0, 1, 'Terms of use', 'Terms of use', 'Terms of use', NULL, '2019-01-07 10:43:22', '2019-01-07 10:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content`
--

CREATE TABLE `cms_content` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `page_title` text DEFAULT NULL,
  `page_content` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`id`, `page_id`, `page_title`, `page_content`, `created_at`, `updated_at`, `lang`) VALUES
(3, 3, 'О нас', '<p>АО «Узавтосаноат»,  созданная по инициативе и под руководством Первого Президента Республики Узбекистан Ислама Каримова, за годы независимости стала символом созидательного потенциала нашей экономики. Стратегия продвижения вперед, основанная на установлении равноправных и взаимовыгодных отношений с авторитетными компаниями, нацелена на производство конкурентоспособной продукции на уровне мировых стандартов.</p>\r\n<p>Узбекистан сегодня – это единственный производитель полного спектра легковых автомобилей и коммерческой техники на территории Центральной Азии. В настоящее время в отрасли работают свыше 85 предприятий, входящий в состав компании, а также, налажено сотрудничество с более 200 зарубежными предприятиями и организациями. На сегодняшний день АО «Узавтосаноат» представляет более 26 тыс. рабочих мест.</p>\r\n<p>В настоящее время автомобилестроение Узбекистана – это уже гораздо больше, чем ведущая производственная сфера. Это действительность, которой мы гордимся, успех, который признал мир. А начиналось все 21 год назад - со строительства в Андижанской области, городе Асаке первого автомобильного завода в Центральноазиатском регионе. В 2004 году Ассоциация «Узавтосаноат»  для повышения эффективности управления производством была преобразована в акционерную компанию. Сегодня она объединяет десятки крупных и средних предприятий, в том числе компании с участием иностранного капитала из Республики Корея, Италии, Германии, США, Япония и др. Среди них – предприятия как собственно автомобилестроения, так и производства, выпускающие товары массового потребления.</p>\r\n<p>Один из принципиальных факторов эффективной работы отрасли - четко выстроенная структура АО «Узавтосаноат», которая подразделяется на следующие направления:</p>\r\n<ul>\r\n<li>Главные производственные компании : АО «GM Uzbekistan», ООО «SamAvto», СП ООО «JV MAN Auto – Uzbekistan», АО «GM Powertrain Uzbekistan».</li>\r\n<li>Поставщики комплектующих деталей – предприятия локализации, производящие импортозамещающие компоненты для отрасли.</li>\r\n<li>Компании, занимающиеся продажей и сервисным обслуживанием, в том числе и  лизинговая компания.</li>\r\n<li>Филиал АО «GM Uzbekistan» в Хорезме.</li>\r\n<li>Положительная динамика развития экономики Узбекистана, даже в условиях продолжающегося экономического спада в мире, направлена прежде всего на такие ориентиры, как модернизация и диверсификация экономического потенциала, непрерывный процесс обновления производства, внедрение инновационных технологий.</li>\r\n<li>Особое внимание уделяется обучению и подготовке специалистов, способных совершенствовать отечественные автомобили на уровне современных требований. Открытие в Ташкенте филиала Туринского политехнического университета стало новым этапом в совершенствовании подготовки кадров для автомобилестроительной отрасли. Здесь готовят специалистов по машиностроению и автомобилестроению, информационно-коммуникационным технологиям, энергетике, архитектуре и строительству.  Достойную смену готовят и в специализированных Асакинском и Самаркандском автомобилестроительных колледжах, выпускники которых успешно проходят практику и становятся сотрудниками предприятий АО «Узавтосаноат».</li>\r\n<li>В АО «Узавтосаноат» установлен постоянный мониторинг за реализацией инвестиционных проектов, программ модернизации, технического и технологического перевооружения производства, программы мер по созданию Свободной индустриально-экономической зоны «Навои», по развитию индустриального потенциала Коканда, проектов по локализации производства автомобильных компонентов в Наманганской и Ферганской областях, программы по созданию предприятий с иностранными инвестициями. То есть вся работа под непрерывным контролем и базируется на соответствующих указах Президента и постановлениях  Кабинета Министров Узбекистана.</li>\r\n<li>На сегодняшний день узбекский автопром является одной из самой динамично развивающихся отраслей экономики страны, примером экспортной способности Узбекистана и играет все большую роль в развитии внешнеэкономической деятельности страны.</li>\r\n</ul>', '2018-04-02 15:16:19', '2019-06-26 12:38:43', 'ru'),
(7, 3, 'Биз ҳақимизда', '<div style=\"text-align: justify;\">\r\n<p>Mustaqillik yillarida O’zbekiston Respublikasi Prezidenti Islom Karimovning tashabbusi va boshchiligida tashkil etilgan “O’zavtosanoat” Aksyiadorlik Kompaniyasi iqtisodiyotimizning bunyodkorlik salohiyatining ramziga aylandi. Nufuzli kompaniyalar bilan teng va o’zaro manfaatli munosabatlarni o’rnatishga asoslangan ilgari odimlash strategiyasi raqobatbardosh mahsulotlarni dunyo standartlari darajasida ishlab chiqarishga qaratilgan.</p>\r\n<p>Ayni damda Markaziy Osiyo hududidagi barcha turdagi yengil avtomobillari va tijorat texnikasini ishlab chiqaruvchi yagona davlat O’zbekiston bo’lib turibdi. Bugungi kunda sohada “O’zavtosanoat” Aksiyadorlik Kompaniyasi doirasida birlashtirilgan va bevosita 26 mingdan ortiq ishchi o’rniga ega 85 dan ortiq tarmoq korxonalari va tashkilotlar faoliyat ko’rsatmoqda, 200dan ortiq chet el korxonalari bilan hamkorlik aloqalari o`rnatilgan. “O’zavtosanoat” AKning 100% aksiyalari O\'zbekiston Respublikasining Xususiylashtirish, monopoliyadan chiqarish va raqobatni rivojlantirish davlat qo\'mitasi tomonidan egalik qilinadi va faoliyati O’zbekiston Respublikasi Vazirlar Mahkamasi tomonidan nazoratga olinadi. </p>\r\n<p>Hozirgi kunda O’zbekistonda avtomobil sanoati bu – asosiy ishlab chiqarish sohasi tushunchasidan ham yuqoriroq tushuncha. Bu dunyo tan olgan va biz g’ururlanadigan muvaffaqiyat. Buning barchasi esa, 21 yil oldin – Andijon viloyati Asaka shaxrida Markaziy Osiyo hududidagi birinchi avtomobil zavodini qurilishidan boshlangan edi.</p>\r\n<p>2004-yilda “O\'zavtosanoat” Assosatsiyasi ishlab chiqarish boshqaruvi samaradorligini oshirish maqsadida aktsiyadorlik kompaniyaga aylantirildi. Hozirgi kunda u o’nlab katta va o’rta korxonalar bilan bir qatorda Koreya respublikasi, Italiya, Germaniya, AQSH kabi xorijiy mamlakatlar kapitali bilan birgalikda tashkil etilgan kompaniyalarni birlashtiradi.</p>\r\n<p>Ular orasida korxona ham avtomobilqurilishining o’zi, ham ommaviy iste’mol maxsulotlari ishlab chiqaruvchisi. Tarmoqning  samaradorligining yana bir omili shundan iboratki, “O\'zavtosanoat” AK tashkiliy strukturasi aniq qilib tuzilgan bo’lib, quyidagi tarmoqlar bo’yicha bo’linadi:</p>\r\n<ul>\r\n<li>Asosiy ishlab chiqarish kompaniyalari- “GM Uzbekistan” AJ, “SamAuto”MCHJ, “JV MAN Auto-Uzbekistan” QK MCHJ, “GM Powertrain Uzbekistan”.</li>\r\n<li>Komplekt detallar ta’minotchilari- lokalizatsiya korxonalari, sohalar uchun import tovarlari  o’rnini bosuvchi tovarlar.</li>\r\n<li>Sotish va servis xizmatlari bilan shug’illanuvchi kompaniyalar, shu bilan birga lizing kompaniyasi.</li>\r\n<li>“GM Uzbekistan” AJ ning Xorazmdagi filiali.</li>\r\n<li>O’zbekiston iqtisodiyoti o’sishining ijobiy o’zgarishi, hattoki davom etib kelayotgan  jahon inqirozi sharoitida ham, birinchi navbatda modernizatsiya,  iqtisodni har tomonlama diversifikatsiyalash, ishlab chiqarishni uzluksiz yangilash, innavatsion texnologiyalarni joriy qilish kabi maqsadlarga yo’naltirilgan.</li>\r\n<li>Asosiy e’tibor milliy avtomobillarni zamon talabiga mos ravishda ishlab chiqara oladigan  mutahasislarni o’qitish va tayyorlashga qaratilmoqda. Toshkentdagi Turin politexnika universiteti filialining  ochilishi kadrlarni avtomobilqurilishi sohasiga tayyorlashdagi yana bir muhim bosqich bo’ldi. Bu yerda mutaxassislarni  mashinaqurilishi va avtomobilqurilishi, informatika-kommunikatsiya texnologiyalari, energetika, arxitektura va qurilish sohalari bo’yicha tayyorlashadi. Asaka va Samarqanddagi avtomobil qurilishi kollejlarida ta’lim olgan bitiruvchilar ham muvaffaqiyatli amaliyotni o’tab bo’lib, “O\'zavtosanoat” AK kompaniyasi xodimlariga aylanishmoqda. </li>\r\n<li>“O\'zavtosanoat” AK da investitsion proektlarni rivojlantirish bo’yicha, modernizatsiyalash programmasi 2014-yilgacha texnik va texnologik ishlab chiqarish bilan qurollanish, “Navoiy” Erkin industrial-iqtisodiy zonasini tashkil etish,Qo’qon industrial potentsialini rivojlantirishdagi proektlar, Namangan va Farg’onada ishlab chiqarilgan avtomobil komponentlarini lokalizatsiya qilish, xorijiy investitsiyalar bilan birgalikda “JV MAN Auto-Uzbekistan” korxonasini tashkil qilishga oid dasturlari bo’yicha monitoring tashkil etilgan. Bu ishlarning barchasi Prezident va O’zbekiston Respublikasi Vazirlar mahkamasining qarorlariga mos ravishda amalga oshiriladi.</li>\r\n<li>Hozirgi kunda o’zbek avtosanoati mamlakat iqtisodiyotida jadal rivojlanayotgan tarmoq hisoblnadi, masalan O’zbekistonning eksport salohiyati bo’yicha mamlakat tashqi iqtisodiyotida katta rol o’ynaydi. </li>\r\n</ul>\r\n<p> </p>\r\n</div>', '2018-09-12 04:45:03', '2019-06-26 12:42:50', 'uz'),
(8, 4, 'Terms Of Use', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut elit eu nisl pharetra euismod ut dignissim felis. Sed justo purus, convallis ut consectetur ac, rutrum rhoncus risus. Mauris in erat eros. Quisque interdum quam vitae erat accumsan, quis consectetur nunc sollicitudin. Sed ac turpis dui. Vivamus eget purus euismod, rutrum lectus luctus, scelerisque leo. Nullam fermentum egestas sapien, vitae interdum lorem rutrum nec. Nulla gravida cursus pharetra. Vivamus odio lacus, gravida vel dictum a, vulputate dapibus eros. Donec mauris velit, rhoncus eget porttitor ac, gravida vitae nisi.</p>\r\n<p>Curabitur egestas sem quis urna dictum pellentesque. Donec sollicitudin lectus non risus dapibus hendrerit. Pellentesque ut est dictum, tempor ligula eget, gravida quam. Sed enim ipsum, vehicula ac dictum non, malesuada hendrerit sem. Proin sodales justo porttitor finibus dictum. In non diam porttitor, egestas ex vitae, egestas ex. Nullam metus sem, ornare ac dui sit amet, finibus efficitur mi. Morbi sed rutrum risus. Nam a tempor nulla.</p>\r\n<p>Aliquam porttitor faucibus vehicula. Vivamus interdum suscipit bibendum. Suspendisse vulputate luctus leo, et egestas nibh malesuada et. Phasellus iaculis felis sed justo feugiat, ut bibendum felis dapibus. Donec euismod est ac lectus suscipit vestibulum. Aliquam congue sapien augue, id gravida odio egestas ac. Donec rutrum lectus ac mi tempor congue.</p>\r\n<p>Phasellus turpis metus, scelerisque non eros vitae, rhoncus bibendum sem. Aliquam sagittis felis efficitur, pellentesque est aliquam, molestie dui. Ut facilisis a arcu vitae placerat. Proin sit amet felis sapien. Nullam vel sapien tortor. Etiam dignissim eros volutpat massa aliquet, vitae porttitor mi fermentum. Cras at sapien nec mauris sagittis mollis. Etiam congue neque nunc, sed mollis lacus hendrerit quis. Curabitur tempor ut risus id porta. Nunc id turpis nunc. In quis ante nec justo pretium suscipit. Ut porttitor scelerisque aliquam. Vestibulum convallis facilisis erat venenatis congue. Praesent pellentesque euismod nisi id pulvinar.</p>', '2019-01-07 10:44:20', '2019-01-07 10:44:20', 'en'),
(9, 3, 'About us', '<p>“Uzavtosanoat”, established by the initiative and governance of President of the Republic of Uzbekistan Islam Karimov, during the years of independence became a symbol of constructive potential of our economy. Development strategy, based on equal and mutually beneficial relations with leading companies, is aimed to production of competitive goods answering international standards.</p>\r\n<p>For today Uzbekistan is a unique producer of total spectrum of light vehicles and commercial techniques on the territory of Central Asia. More than 85 enterprises are members of the group, also partnering with more than 200 foreign enterprises and organizations. Nowadays the company presenting more than 26 thousands of working places.</p>\r\n<p>At present time automotive industry of Uzbekistan is much more than leading branch of economy. It is our reality, which we proud for, and success recognized throughout the world. It has started 21 year ago since construction of the first automotive plant in Central Asia in Asaka, Andijan region. In 2004 “Uzavtosanoat” Association was transformed into Joint-Stock Company with the aim of production management efficiency growth. To date Company combines number of large and middle sized enterprises, including companies with foreign capital participation from Korea, Italy, Germany, USA and others. Among them - automotive industry enterprises, as well as enterprises producing consumer goods. One of key factors of efficient work is legibly established structure of SC “Uzavtosanoat” that is divided into the following directions:     </p>\r\n<ul>\r\n<li> Main production companies: SC “GM Uzbekistan”, LLC “SamAvto”, JV LLC “JV MAN Auto – Uzbekistan”, CSC “GM Powertrain Uzbekistan”.</li>\r\n<li>Component parts suppliers – localization enterprises producing import-substituting components for the branch.</li>\r\n<li>Sales and service companies including leasing companies.</li>\r\n<li>“GM Uzbekistan” branch company in Khorezm.</li>\r\n<li>Positive dynamics of Uzbek economy development even under the conditions of global economic downturn is directed to modernization and diversification of economic potential, ongoing process of production update, introduction of innovative technologies.</li>\r\n<li>Great attention is paid to specialists training able to improve national vehicles in accordance with modern standards. Establishment of Turin Polytechnic University branch in Tashkent became a new step in specialists training program for automotive industry branch. Moreover, competent specialists are studying in Asaka and Samarkand Car Building Colleges, graduates of which successfully pass internships and become employees of SC “Uzavtosanoat” enterprises.     </li>\r\n<li>SC “Uzavtosanoat” monitors and realizes on regular base projects, modernization programs, technical and technological re-equipment of production, measures on “Navoi” free industrial economic zone, development of Kokand industrial potential, projects on localization of components production in Namangan and Fergana regions, program on establishment of enterprises with foreign investments. The process is under ongoing control and is based on Presidential Decrees and Cabinet of Ministers of the Republic of Uzbekistan Resolutions.</li>\r\n<li>For today Uzbek automotive industry is one of dynamically developing branches of national economy, represents export potential of the country and plays main role in development of foreign economic activities of state.</li>\r\n</ul>', '2019-06-22 17:55:54', '2019-06-26 12:43:28', 'en'),
(10, 4, 'Условия использования', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut elit eu nisl pharetra euismod ut dignissim felis. Sed justo purus, convallis ut consectetur ac, rutrum rhoncus risus. Mauris in erat eros. Quisque interdum quam vitae erat accumsan, quis consectetur nunc sollicitudin. Sed ac turpis dui. Vivamus eget purus euismod, rutrum lectus luctus, scelerisque leo. Nullam fermentum egestas sapien, vitae interdum lorem rutrum nec. Nulla gravida cursus pharetra. Vivamus odio lacus, gravida vel dictum a, vulputate dapibus eros. Donec mauris velit, rhoncus eget porttitor ac, gravida vitae nisi.</p>\r\n<p>Curabitur egestas sem quis urna dictum pellentesque. Donec sollicitudin lectus non risus dapibus hendrerit. Pellentesque ut est dictum, tempor ligula eget, gravida quam. Sed enim ipsum, vehicula ac dictum non, malesuada hendrerit sem. Proin sodales justo porttitor finibus dictum. In non diam porttitor, egestas ex vitae, egestas ex. Nullam metus sem, ornare ac dui sit amet, finibus efficitur mi. Morbi sed rutrum risus. Nam a tempor nulla.</p>\r\n<p>Aliquam porttitor faucibus vehicula. Vivamus interdum suscipit bibendum. Suspendisse vulputate luctus leo, et egestas nibh malesuada et. Phasellus iaculis felis sed justo feugiat, ut bibendum felis dapibus. Donec euismod est ac lectus suscipit vestibulum. Aliquam congue sapien augue, id gravida odio egestas ac. Donec rutrum lectus ac mi tempor congue.</p>\r\n<p>Phasellus turpis metus, scelerisque non eros vitae, rhoncus bibendum sem. Aliquam sagittis felis efficitur, pellentesque est aliquam, molestie dui. Ut facilisis a arcu vitae placerat. Proin sit amet felis sapien. Nullam vel sapien tortor. Etiam dignissim eros volutpat massa aliquet, vitae porttitor mi fermentum. Cras at sapien nec mauris sagittis mollis. Etiam congue neque nunc, sed mollis lacus hendrerit quis. Curabitur tempor ut risus id porta. Nunc id turpis nunc. In quis ante nec justo pretium suscipit. Ut porttitor scelerisque aliquam. Vestibulum convallis facilisis erat venenatis congue. Praesent pellentesque euismod nisi id pulvinar.</p>', '2019-06-23 13:01:04', '2019-06-23 13:01:04', 'ru');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ceo` varchar(60) DEFAULT NULL,
  `industry_id` int(11) DEFAULT 0,
  `ownership_type_id` int(11) DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `no_of_offices` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `no_of_employees` varchar(15) DEFAULT NULL,
  `established_in` varchar(12) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT 0,
  `state_id` int(11) DEFAULT 0,
  `city_id` int(11) DEFAULT 0,
  `slug` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_featured` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `verification_token` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `pinterest` varchar(100) DEFAULT NULL,
  `package_id` int(11) DEFAULT 0,
  `package_start_date` timestamp NULL DEFAULT NULL,
  `package_end_date` timestamp NULL DEFAULT NULL,
  `jobs_quota` int(5) DEFAULT 0,
  `availed_jobs_quota` int(5) DEFAULT 0,
  `is_subscribed` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `ceo`, `industry_id`, `ownership_type_id`, `description`, `location`, `no_of_offices`, `website`, `no_of_employees`, `established_in`, `fax`, `phone`, `logo`, `country_id`, `state_id`, `city_id`, `slug`, `is_active`, `is_featured`, `verified`, `verification_token`, `password`, `remember_token`, `map`, `created_at`, `updated_at`, `facebook`, `twitter`, `linkedin`, `google_plus`, `pinterest`, `package_id`, `package_start_date`, `package_end_date`, `jobs_quota`, `availed_jobs_quota`, `is_subscribed`) VALUES
(20, '\"UzAutomotors\"', 'husniddin.ergashev@uzautomotors.com', 'Husniddin Ergashev', 31, 2, 'UzAutomotors', 'Tashkent', 3, 'http://uzautomotors.com', '5000+', '1996', '+998977773344', '+998977773344', 'jsc-uzautomotors-1566367076-562.jpg', 234, 1, 4, 'uzautomotors-20', 1, 1, 0, NULL, '$2y$10$yzUVMhMHfXn/tT4LshOXc.JGr5et6DtDQHhO9MxSKrgmml8qB1ulO', 'SQR2QVjuL99rhkIoZ9WLSF86sQcZlmg77RXnZX8XN7yc2mmKLdSmsIp1uFpU', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2997.4933317588448!2d69.28508261496214!3d41.29813030948742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae8acd4e5de5bd%3A0xfeeea8df8a61b9fd!2s!5e0!3m2!1sru!2s!4v1561219280432!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-20 23:19:11', '2019-11-07 10:47:29', 'https://www.facebook.com/gmuzbekistanofficial/', NULL, NULL, NULL, NULL, 7, '2019-09-23 08:56:01', '2019-12-23 08:56:01', 5, 5, 1),
(21, 'СП ООО «УзЧасис»', 'mrdoctorpan@mail.ru', 'Боймирзаев Дилшодбек Нозимжонович', 31, 2, '<span style=\"font-size: small;\">Узбекско-корейское СП ООО «УзЧасис» было основано 22 октября 2008 года в г.Наманган (Узбекистан) совместно с южно-корейской компанией AMS Co. Ltd.. Уставной фонд предприятия на момент его создания составлял 5,95 млн долларов, где доля южно-корейской компании AMS Co. Ltd. – 30%, а АК «Узавтосаноат» – 70%.</span>', 'г. Наманган, ул. Курувчилар, 50', 1, 'http://uzchasys.uz', '101-200', '2008', '#', '(99869) 228-7222', 'sp-ooo-uzchasis-1561717000-386.JPG', 234, 6, 3, 'sp-ooo-uzchasis-21', 1, 1, 0, NULL, '$2y$10$ZBhBX..GK/aqco43uJQVp.fqTNqETe69QVQI86xVvIas8/atEczbS', 'XeSmX9ClG7fdJyJ56IYjcHbx3xlHzhABAyVXbeDyLhbfwbHJimNnFKdHTXIY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.627312109754!2d71.59469531503646!3d40.98964097930271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bb4a3d6875d1cb%3A0xedfe8439ca25119!2sUzChasys!5e0!3m2!1sru!2s!4v1561375281412!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 00:46:11', '2019-09-18 06:14:51', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(22, 'СП «УЗ-ДОНГЖУ ПЭИНТ КО.»', 'info@uzdongju.uz', 'Халиков Шохрух Бахтиерович', 31, 2, '<span style=\"font-size: small;\">Совместное предприятие было организовано согласного договору, подписанному между корейской компанией «DongJu Industrial Co., Ltd. » и АК «Узавтосаноат» с узбекской стороны, и согласно постановлению Кабинета Министров Республики Узбекистан №191 от 1995г. 3 Апреля  1999 года состоялось официальное открытие завода. </span>', 'г. Андижан, пос. Харкоп, пер. 1, ул. Айрилиш, 4,  170108', 1, 'https://uzdongju.uz/#', '101-200', '1999', '0 (374) 224-01-00 (5)', '0 (374) 224-01-00 (107)', 'sp-uz-dongzhu-peint-ko-1561356132-791.png', 234, 1, 4, 'sp-uz-dongzhu-peint-ko-22', 1, 1, 0, NULL, '$2y$10$NebCYJoaILc6fefF3yz7YeRRWua6L2P7Fnq3JiygpPQQWXSbpxrRC', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3019.603478794997!2d72.36263031503006!3d40.81470647932085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bceb11be0da6c7%3A0x4f6e482bdfbed1af!2z0KPQty3QlNC-0L3Qs9CW0YMg0J_RjdC40L3RgiDQmtC-!5e0!3m2!1sru!2s!4v1561374613275!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 00:50:33', '2019-08-22 04:51:49', 'facebook.com/uzdongju', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(23, 'СП ООО \"UZSUNGWOO\"', 'info@uzsungwoo.uz', 'Моминжонов Шохрух Иминович', 31, 2, '<span style=\"font-size: small;\">СП ООО \"UZSUNGWOO\" - предприятие, оснащенное высокотехнологическим оборудованием специализируется на производстве штампосварных деталей для новых автомобилей, производимых на ЗАО \"Джи Эм Узбекистан\". Завод был построен на территории Ферганского Механического завода и общая площадь составляет 60500 квадратных метров, производственная площадь 11 117 квадратных метров. Проект реализуется в соответствии с Постановлением Кабинета Министров Республики Узбекистан №113 от 14.04.2011 г.</span>', 'город Фергана, 150118, улица Аэропорт, дом 68', 1, 'http://ru.uzsungwoo.uz', '101-200', '2011', '#', '(95) 404-17-90; (95) 404-09-70', 'sp-ooo-uzsungwoo-1561356185-667.png', 234, 11, 7, 'sp-ooo-uzsungwoo-23', 1, 1, 0, NULL, '$2y$10$MJclvdVIj3Qdn/5LpFWZLudjttUk90T6cD3kuxjpNGFRrF/QHrUm.', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.6016549054166!2d71.75610851501413!3d40.3733561793702!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bb9b5443bd81a9%3A0x9c04e41ddb5bd7ab!2z0KPQtyDQodCw0L3QsyDQktGD0YM!5e0!3m2!1sru!2s!4v1561374754067!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 00:54:34', '2019-08-22 04:54:38', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(24, 'СП ООО «O`zERAE Climate»', 'info@uzcc.uz', 'Ахмедов Нодиржон Рахматович', 31, 2, '<span style=\"font-size: small;\">Дата создания предприятия: подписание 2 сентября 2010 года трёхстороннего соглашения  между Южно-Корейской компанией «ERAE Cs Ltd.,», АК «O’ZAVTOSANOAT» и ООО «Avtosanoat invest», учредителем СП ООО «O`zERAE Climate Control» .</span>', 'г. Андижан, проспект Бабура, 73 а', 1, 'http://www.uzcc.uz', '51-100', '2010', '#', '(74) 296-00-49', 'sp-ooo-ozerae-climate-control-1561096973-936.jpg', 234, 1, 4, 'sp-ooo-ozerae-climate-24', 1, 1, 0, NULL, '$2y$10$Sh7XzfIulBJj6NEYTB9kx.SAhn2kg9pw.UlrhzzlXdBSl9geNZh.i', 'DHPBzWpp68z7VU41AC4dSl5fpOr1Js5u8pN7V0hb9RrUa53WaFIPm1jJ7JqJ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3020.327798226455!2d72.3264903150295!3d40.79878997932259!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc94b48e858b51%3A0x76ec25f8df7f48fd!2z0KHQnyDQntCe0J4gwqtPYHpFUkFFIENsaW1hdGUgQ29udHJvbMK7!5e0!3m2!1sru!2s!4v1561375144843!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 01:02:53', '2019-08-22 04:56:10', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(30, '\"UzAutomotors\"', 'daz@daz.uz', 'Усмонов Талъат Субхонкулович', 31, 2, '<span style=\"font-size: small;\">Акционерное общество «Джизакский аккумуляторный завод», специализирующееся на производстве свинцово-кислотных стартерных аккумуляторных батарей и переработке вторичного свинца, создано на основании постановления Кабинета Монстров Республики Узбекистан за №51 от 25 марта 2010 года.</span>', 'г. Джизак, промзона-«А»', 1, 'http://daz.uz/', '51-100', '2010', '#', '(72) 221 02 37', 'ao-daz-1561117426-113.jpg', 234, 3, 12, 'ao-daz-30', 1, 1, 0, NULL, '$2y$10$WA2T7.bE1goXG29hmz/znOa640rufPxJdQ3eiUp5IuQJaCB9Uwxe.', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3050.2148772130954!2d67.89562611500553!3d40.13749707939854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38b293ce105c8fef%3A0xac3ad2692ec16721!2z0JDQniAi0JTQkNCXIg!5e0!3m2!1sru!2s!4v1561361380950!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 06:43:46', '2019-11-04 11:09:50', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(38, 'ООО СП «O’zAuto - Austem»', 'info@uzautoaustem.uz', 'Турдиев Расулжон Мамазулунович', 31, 2, '<span style=\"font-size: small;\">Узбекско–Корейское совместное предприятие в виде общества с ограниченной ответственностью «O’ZAUTO-AUSTEM», расположенное в городе Андижан Республика Узбекистан, создано  февраля 2011 года. Учредителями предприятия являются: компания «AUSTEM Co.Ltd» (Южная Корея) и акционерная компания «O’ZAVTOSANOAT» (Узбекистан). Предприятие официально начало свою деятельность 20 сентября 2012 года.</span>', 'г. Андижан, проспект Бабура, 73, 170127', 1, 'http://www.uzautoaustem.uz/', '101-200', '2012', '#', '(74) 228 07 01', 'ooo-sp-ozauto-austem-1561119016-574.jpg', 234, 1, 4, 'ooo-sp-ozauto-austem-38', 1, 1, 0, NULL, '$2y$10$Hnc2NhAOnH1c3dYGZ/DqdueE9FFaRfGmO725tqr3qQ1eG1B/meurC', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3020.2578543316936!2d72.32466371502952!3d40.80032717932237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc9579100411e9%3A0xcaefd8f588d31272!2z0J7QntCeINCh0J8gIsOSWkFVVE8tQVVTVEVNIg!5e0!3m2!1sru!2s!4v1561374313070!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 07:10:16', '2019-08-22 04:46:25', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(39, 'ПИИ ООО «O`zminda»', 'info@uzminda.uz', 'Аркаправа Гош (Санни)', 31, 2, '<span style=\"font-size: small;\">Во исполнение Распоряжения Президента Республики Узбекистан от 25 марта 2009 года №Р-3147 «О мерах по реализации инвестиционных соглашений, подписанных по итогам международной конференции «Свободная индустриально-экономическая зона в Навои: новые инвестиционные возможности для корейских партнеров», АК «Узавтосаноат» завершила строительство ряд заводов по производству автомобильных компонентов, автомобильных генераторов и автомобильных проводов в СИЭЗ «Навои».</span>', 'г. Навои, Карманинский район, СИЭЗ \"Навои\", C–3', 1, 'http://uzminda.uz', '101-200', '2009', '#', '(79) 220-01-05', 'pii-ooo-ozminda-1561119374-655.jpg', 234, 5, 16, 'pii-ooo-ozminda-39', 1, 1, 0, NULL, '$2y$10$niExgGTvp69lnmTyoltdqOSMafXHLkvOc3AO/D4peQZI/hkldhYhq', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3049.9207240653363!2d65.13926081500588!3d40.14404957939775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f51b4f8cbef92cd%3A0x5d1fa4b3c74ada75!2sUzminda!5e0!3m2!1sru!2s!4v1561374403639!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 07:16:14', '2019-08-22 04:47:08', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(45, 'АО «Автокомпонент»', 'info@autocomponent.uz,  sardorraxmono0507@mail.ru', 'Отахонов Ойбек Шербекович', 31, 2, '<span style=\"font-size: small;\">В соответствии с протокольным решением Кабинета Министров № 02–1951 от 17 марта 2007 года и в рамках модернизации автомобилестроительной отрасли 25 декабря 2007 года на внеочередном собрании акционеров, АО «Асака мотор таъмирлаш»  переименовано в ОАО «Автокомпонент» (с 2015 года АО «AVTOKOMPONENT»). </span>', 'Андижанская об, Асакинский район, ул. Вокзальная, 1', 1, 'http://autocomponent.uz', '101-200', '2007', '#', '(99874) 2324232', 'ao-avtokomponent-1561120898-500.jpg', 234, 1, 4, 'ao-avtokomponent-45', 1, 1, 0, NULL, '$2y$10$5HaB9mSLnF2TU.HLGOhq.e6tzLGkgyGG0iAQiYgJ/J8KnYtoLZYTS', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3026.7970292719774!2d72.20165491502436!3d40.65640437933799!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc8e5b14560a1d%3A0xae24906163172c73!2sJSC+%22Autocomponent%22!5e0!3m2!1sru!2s!4v1561361329965!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 07:41:38', '2019-08-22 04:19:39', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(48, 'СП ООО «Уз-Ханву»', 'info@uzhw.uz', 'Бакиев Музаффар Алишерович', 31, 2, '<span style=\"font-size: small;\">Постановлением Президента Республики Узбекистан №ПП-1213 от 28 октября 2009 года в Инвестиционную программу было включено создание завода по организации производства шумоизоляционных частей для автомобилей АО «GM Uzbekistan».  Учредителями проекта стали АК «Узавтосаноат» и «HANWOOGLOBAL» с равными долями. Так в автомобильной отрасли Узбекистана появилось новое предприятие – ООО «Уз-Ханву», которое расположилось в Андижане.</span>', 'г.Андижан,  проспект Бабура - 73', 1, 'http://uzhw.uz/index.php/ru/', '101-200', '2009', '#', '(74) 228-07-26', 'sp-ooo-uz-khanvu-1561121503-634.jpg', 234, 1, 4, 'sp-ooo-uz-khanvu-48', 1, 1, 0, NULL, '$2y$10$Zkj3aroRvTnnkLdEpuIlN.dtr0qp9iGg71DHHp1.hrsrKWuRXOYoG', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3020.276655493377!2d72.3223753150296!3d40.799913979322376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc94b67cdaa04d%3A0x5ec3f15e87b8b63a!2z0KHQnyDQntCe0J4gItCj0Lct0KXQsNC90LLRgyI!5e0!3m2!1sru!2s!4v1561375235950!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 07:51:43', '2019-08-22 04:58:41', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(51, 'ОOО «Автоойна»', 'info@avtooyna.uz', 'Атабаев Махмуджон Алишерович', 31, 2, '<span style=\"font-size: small;\">Ферганское ООО «Автоойна» образовано в октябре 1998 года. Занимается производством автомобильных стекол для отечественных автомобилей. Исходный материал поставляет акционерное общество «Кварц», расположенное в городе Кувасае. Благодаря Акционерной компании «Узавтосаноат», на АО «Кварц» наладили производство плоского стекла, необходимого для производства автомобильных стекол.</span>', 'г. Фергана ул. Истиклал 1А', 1, 'http://avtooyna.uz', '101-200', '1998', '#', '(73) 243-38-86', 'ooo-avtooyna-1561356981-796.jpg', 234, 11, 7, 'ooo-avtooyna-51', 1, 1, 0, NULL, '$2y$10$/BDk1WNAPP8NA/5dSZdayOXyJbQOqkDkjOyfVxzXaw710NQoeCgq2', 'ionzQ1lxRK1jmn2NSd3q58devLtmp7u6wN1XOIsLPpio0TKv36LPdOg2afGo', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1657.176530636338!2d71.8201296427269!3d40.380592455568184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bb847a0e6ca6a3%3A0xc5f34ff62a53bc84!2z0JDQstGC0L7QntC50L3QsA!5e0!3m2!1sru!2s!4v1561359331882!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:04:44', '2019-08-22 04:38:16', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(52, 'ООО «Уз-Донг Янг Компани»', 'info@uzdy.uz', 'Гафуров Азамат Абдукаххарович', 31, 2, '<p style=\"text-align: justify;\"><span style=\"font-size: small;\">Среди предприятий, которым «GM Uzbekistan» сегодня доверяет обустройство салонов своих машин, является «Уз-Донг Янг Компани», отвечающее за внутреннюю отделку автомобилей.<br /></span><span style=\"font-size: small;\">Совместное узбекско-корейское предприятие «Уз-Донг Янг Компани» было создано в 1996 году. Сегодня оно обеспечивает деталями внутренней отделки автомобилей Nexia, Damas, Matiz, которые производятся на Асакинском автомобильном заводе. Отделка дверей, потолочные панели, коврики, настилы полов – это основной перечень выпускаемой предприятием продукции.</span></p>', 'г. Андижан, Индустриальная 4', 1, 'http://uzdy.uz', '11-50', '1996', '#', '(374) 226-89-89', 'ooo-uz-dong-yang-kompani-1561122494-548.jpg', 234, 1, 4, 'ooo-uz-dong-yang-kompani-52', 1, 1, 0, NULL, '$2y$10$X55RfdFV07mdehHuXrlWZOM9xo56CtFYlSlAT6SiMruPbaRRFi.hm', NULL, 'г. Андижан, Индустриальная 4', '2019-06-21 08:08:14', '2019-08-22 04:43:44', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(53, 'АО СП «Уз-Донг Вон»', 'info@uzdwn.uz', 'Саматов Боходир Хакимжонович', 31, 2, '<p style=\"text-align: justify;\"><span style=\"font-size: small;\">Акционерное общество СП «Уз-Донг Вон» было создано 27 декабря 1996 года с целью локализации производства комплектующих частей и деталей для автомобилей АО «GM-Uzbekistan».</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small;\">Основной деятельностью предприятия является производство глушителей, противоударных дверных балок и кузовных частей для автомобилей, произведенных на Асакинском автомобильном заводе. Предприятие оснащено технологическим оборудованием, поставленным корпорацией Daewoo и компанией «Dong Won Metal».</span></p>', 'Андижанская область, город Асака, улица Ферганская, дом 57', 1, 'http://uzdwn.uz', '101-200', '1996', '#', '(74) 233-13-58', 'ao-sp-uz-dong-von-1561122769-171.jpg', 234, 1, 4, 'ao-sp-uz-dong-von-53', 1, 1, 0, NULL, '$2y$10$612jg15jnFYGoca76gGeXOdUNep3oHXwY6wLcPHBCYO1fZbFM.DTS', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3027.774852553588!2d72.24347531502353!3d40.63484697934041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc8c22fde4d2c1%3A0x747dce0c71022006!2z0KHQnyAi0KPQty3QlNC-0L3Qs9CS0L7QvSDQmtC-LiI!5e0!3m2!1sru!2s!4v1561361457286!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:12:49', '2019-08-22 04:28:58', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(54, 'ООО «Уз-Корам Ко»', 'info@uzkoram.uz', 'Юсупов Шерзодбек Толибович', 31, 2, '<span style=\"font-size: small;\">Совместное узбекско-корейское предприятие «Uz-Koram Ko» учреждено в мае 1995г. с целью локализации производства габаритных комплектующих деталей из пластических масс для создаваемой автомобильной индустрии Республики Узбекистан. СП «Uz-Koram Ko» входит в Ассоциацию «O`zavtosanoat», где объединены более 70 предприятий автомобильной отрасли республики с различными формами собственности и сферами деятельности. Впервые производство запущено в мае 1997г., когда СП «Uz-Koram Ko» освоило выпуск бамперов для моделей «Нексия», «Тико», «Дамас», а также инструментальных панелей для моделей «Тико», «Дамас», - продукции автомобильного завода АО «GM Uzbekistan» Продукция выпускалась на двух термопластавтоматах (ТПА). <a name=\"1\"></a>На втором этапе развития предприятия в ноябре 2001г. создано покрасочное производство для выпуска вышеуказанной продукции, окрашенной в те же цвета, что и автомобили, в этот же период освоен выпуск бамперов, инструментальной панели, а также дверных обшивок для автомобиля «Матиз».</span>', 'O\'zbekiston Respublikasi, Andijon shahri, Katta aylanma. 1.', 1, 'https://uzkoram.uz/', '101-200', '1995', '#', '(74) 296-00-36', 'ooo-uz-koram-ko-1561123054-187.jpg', 234, 1, 4, 'ooo-uz-koram-ko-54', 1, 1, 0, NULL, '$2y$10$lhZ6B75/43D3Subtz5q7yO2gSxgw5hal7AM147LecTCwarSe7N4CO', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.0049395776714!2d72.31520091467567!3d40.7399168293289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc92d84bf7a811%3A0xd938058a6a09f071!2sUz-Koram+Co.%2C+1+A373%2C+Andijan+170111%2C+Uzbekistan!5e0!3m2!1sen!2s!4v1566413678551!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:17:34', '2019-08-22 04:44:13', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(55, 'СП «Уз-СэМюнг Ко»', 'info@uzsaem.uz', 'Рафиков Абдуваккос Вахидович', 31, 2, '<span style=\"font-size: small;\">Совместное предприятие по выпуску топливных баков к автомобилям Nexia, Damas, Matiz и крупноштампованных частей, девяти разновидностей панелей к автомобилям Nexia и штамповке 156 разновидностей деталей было образовано 23 марта 1998 года. Учредителями являются АК «Узавтосаноат» и «Андижангидромаш» с узбекской стороны – 50% и «СэМюнг Метал Ко. ЛТД» с корейской стороны – 50%.</span>', 'г. Андижан, ул. Сой, 5а', 1, 'http://uzavtosanoat.uz/sp-uz-semyung-ko.html', '101-200', '1998', '#', '(90) 922-21-24', 'sp-uz-semyung-ko-1561357784-310.jpg', 234, 1, 4, 'sp-uz-semyung-ko-55', 1, 1, 0, NULL, '$2y$10$KxOgHY.sOVr1u1p6PJ9LvOHBw6qjtTmbaTOgZaoHrIYc5CMzxBROG', 'SxnLtmTdm16BqTNi2GHppKwcOZ5xdLSlM7yevYn9mgpZryorG1Gms0Ial2vs', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3020.3189029324512!2d72.34757981502953!3d40.798985479322575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bceb439cf3e0c9%3A0xa79dc44c07743082!2z0JDQniDQodCfICLQo9C3LdCh0Y3QnNGO0L3QsyDQmtC-Ig!5e0!3m2!1sru!2s!4v1561374660932!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:20:21', '2019-08-22 06:23:07', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(56, 'АО СП «УзКоджи»', 'info@uzkoje.uz', 'Темиров Узокбой', 31, 2, '<p style=\"text-align: justify;\"><span style=\"font-size: small;\">Предприятие СП «УзКоджи» по производству электрожгутов для автомобилей, выпускаемых на Асакинском автомобильном заводе, расположено в городе Ханабаде Андижанской области и образовано в 1999 году. В состав учредителей с узбекской стороны вошла АК «Узавтосаноат», с корейской – компании «И-РАЕ Ко. ЛТД» и «Коджи Инд. ЛТД».</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: small;\">При работе двигателя температура отдельных узлов может достигать предельно высоких значений. В связи с этим теплостойкость проводов несет особую важность. Кроме того, существует риск выбросов легковоспламеняющихся горючих и едких смесей. Поэтому от любого из этих воздействий должна существовать гарантированная защита.</span></p>', 'Андижанская область г. Ханабад ул.Коинот д.100', 1, 'http://uzkoje.uz', '51-100', '1999', '#', '(74) 734-30-80', 'ao-sp-uzkodzhi-1561123525-838.jpg', 234, 1, 4, 'ao-sp-uzkodzhi-56', 1, 1, 0, NULL, '$2y$10$yQ8VluSgUjozohNVcqyKpO9fTOK/93iCf6L3LAO/2EkjmQgOoYTkC', 'XEkV2STn7039JnNpBgQE3cObx5Y7fMd96Ibe0pKGTc0Rv3KCb8Ca6uIuThCp', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3019.4220359302117!2d72.98852761503025!3d40.81869277932036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb19f7926f82f1a27!2z0KHQnyAi0KPQt9Ca0L7QtNC20Lgi!5e0!3m2!1sru!2s!4v1561361537482!5m2!1sru!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:25:25', '2019-09-23 09:44:58', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(57, 'СП «Уз-Тонг Хонг Ко»', 'info@uzth.uz', 'Мадрахимов Умиджон Мирзабек угли', 31, 2, '<p style=\"text-align: justify;\">Название компании ЗАО СП «Уз-Тонг Хонг Ко.» Иностранный партнер KM&amp;I Co.,Ltd (Южная Корея) Основана 30 мая,1995г. Местонахождение Андижан, Узбекистан Основная продукция Автомобильные сидения Годовой объем 300,000 комплект Продукции Nexia, Damas, Matiz, Spark, Lacetti, Cobalt Доля вклада KM&amp;I Co.,Ltd, -50%, АК «Узавтосаноат» -50% Основной потребитель ЗАО «ДжиЭм-Узбекистан» История компании 1995 Декабрь</p>', 'г. Андижан, ул. Индустриальная, 4А', 1, 'http://uzth.uz', '51-100', '1995', '#', '(74) 226-89-06', 'sp-uz-tong-khong-ko-1561123699-968.jpg', 234, 1, 4, 'sp-uz-tong-khong-ko-57', 1, 1, 0, NULL, '$2y$10$LmJbrN7hG/hrAEL.dJEdpujHC9r9bsGVjE3BS4d5Y9HH8yyCKyYZ.', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.972252343386!2d72.31955921467572!3d40.74063607932874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc93cce5bc6e13%3A0x7166b8ec75b8c65e!2sUz-Tong+Hong!5e0!3m2!1sen!2s!4v1566414352956!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-06-21 08:28:19', '2019-08-22 04:53:42', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(65, 'СП \"Квангжин автосистемс\"', 'info@kjas.uz', 'Jung Nag Von', 31, 2, '<em>Компания </em><strong><em>«</em></strong><strong><em>Kwang</em></strong><strong><em>j</em></strong><strong><em>in</em></strong> <strong><em>Machine</em></strong> <strong><em>Co</em></strong><strong><em>., </em></strong><strong><em>Ltd</em></strong><strong><em>» </em></strong><em>создана в 1973 году и на сегодняшний день является одним из лидеров в производстве стеклоподъемников и дверных модулей. Стеклоподъемники этой компании устанавливаются на автомобили «Дженерал Моторс», «Фольксваген», «Крайслер», «КИА», «</em><em>Хюндай</em><em>» и другие. Компания имеет 12 производственных предприятий и 4 инженерных центра по всему миру.</em>', '100016, г.Ташкент, Яшнабадский р-н, ул. Элбек, дом 61, корпус 139', 1, 'http://kjas.uz', '51-100', '2012', '#', '+99895 145 06 98', 'sp-kvangzhin-avtosistems-1566445386-864.png', 234, 10, 1, 'sp-kvangzhin-avtosistems-65', 1, 1, 0, NULL, '$2y$10$FWe1Ld8SRdhtCrT3wkUK/.uARBR7G2DNqk7xzZ667MUIKuIxyutPO', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2997.425866088708!2d69.30027891469923!3d41.29959827927229!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38aef53afdad4a79%3A0x1a6c30045af8e422!2sKwangjin+Autosystems!5e0!3m2!1sen!2s!4v1566481343762!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-08-22 03:43:06', '2019-08-22 03:43:06', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(66, 'СП ООО «UZAUTO-INZI»', 'nilufar.shakirova@inzi.uz', 'Мусаев Абдурахим Патахович', 31, 2, '<strong><em>Акционерная компания «Узавтосаноат» и южнокорейская «INZI AMT Co., Ltd.» приступают к строительству нового завода в Ташкентской области по производству алюминиевых деталей методом высокоточного литья под давлением для двигателей GM, сообщает пресс-служба АК «Узавтосаноат»</em></strong>', 'Uzbekistan, Tashkent Region, Zangiata District, Settlement of Qumariq', 1, 'http://www.inzi.uz/', '11-50', '2017', '(99890) 938-2048', '(99890) 938-2048', 'sp-ooo-uzauto-inzi-1566446622-452.png', 234, 10, 1, 'sp-ooo-uzauto-inzi-66', 1, 1, 0, NULL, '$2y$10$MFZfal4IjVyhYpoZsA9lB.oWKxmsz.UYhc2YsEGfVHT3VV8xoE0vy', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3000.212472109864!2d69.26343431469661!3d41.23892947927809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae6158e9d5d47b%3A0x2a64a69a96f4fdbe!2sUZAUTO-INZI!5e0!3m2!1sen!2s!4v1566482505151!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-08-22 04:03:42', '2019-08-22 04:03:42', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(70, 'alfraganus', 'alf@alf.uz', 'Атабаев Махмуджон Алишерович', 29, 3, 'tet', '100016, г.Ташкент, Яшнабадский р-н, ул. Элбек, дом 61, корпус 139', 18, 'http://uzautomotors.com', '4501-5000', '2003', '+998 74 296 00 49', '+99895 145 06 98', 'alfraganus-1569402163-459.jpg', 234, 12, 15, 'alfraganus-70', 1, 1, 0, NULL, '$2y$10$o/VIIlupgyY1hIxFwPhJX./UJutSqt7cMU9ncwirUuLeuMaIyO95a', NULL, 'test', '2019-09-25 09:02:43', '2019-09-25 09:02:43', 'facebook.com/uzdongju', '#', '#', '#', '#', 0, NULL, NULL, 0, 0, 1),
(71, 'test', 'test11@admin.com', 'test', 11, 1, 'test', 'Андижан', 17, 'http://kamazservice.uz/', '3001-3500', '2004', '+998 74 296 00 49', '(99874) 2324232', 'test-1569490336-474.jpg', 234, 11, 9, 'test-71', 1, 1, 0, NULL, '$2y$10$fISGG0ELnvk8QkaqV6uJP.77VY95Bnvm7C/xGXOfJobB0crvKNzlW', NULL, 'etet', '2019-09-26 09:32:17', '2019-09-26 09:33:46', '#', '#', '#', '#', '#', 0, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_messages`
--

CREATE TABLE `company_messages` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  `to_name` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `from_phone` varchar(20) DEFAULT NULL,
  `message_txt` mediumtext DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `company_messages`
--

INSERT INTO `company_messages` (`id`, `company_id`, `company_name`, `from_id`, `to_id`, `to_email`, `to_name`, `from_name`, `from_email`, `from_phone`, `message_txt`, `subject`, `is_read`, `created_at`, `updated_at`) VALUES
(6, 2, 'AutoSoft Dynamics', 6, 2, 'autosoft@outlook.com', 'AutoSoft Dynamics', 'Vistor Tester', 'seeker@jobsportal.com', '+1234567890', 'test msg', 'test', 1, '2018-10-29 02:56:28', '2018-10-29 02:57:51'),
(7, 20, 'JSC \"GM Uzbekistan\"', NULL, 20, 'hr@gmuzbekistan.uz', 'JSC \"GM Uzbekistan\"', 'Islom Akhmedov', 'nishon.group@mail.ru', '+998902101274', 'asd', 'nuravto.uz', 1, '2019-06-25 13:25:49', '2019-06-28 16:20:13'),
(8, 34, 'ООО Редакция журнала «Авто-олам»', NULL, 34, 'hr@avtoolam.uz', 'ООО Редакция журнала «Авто-олам»', 'тилоти', 'sss@ss.ru', '22222', 'eeeee', 'qqq', 1, '2019-06-26 15:13:15', '2019-06-26 15:13:31'),
(9, 20, 'JSC \"GM Uzbekistan\"', NULL, 20, 'hr@gmuzbekistan.uz', 'JSC \"GM Uzbekistan\"', 'Azamat', 'aa@mail.ru', '+998974561595', 'Lorem', 'Lorem', 1, '2019-07-01 10:42:01', '2019-07-01 10:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `company_password_resets`
--

CREATE TABLE `company_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message_txt` mediumtext DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `email`, `phone`, `message_txt`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'sdfsd sdf sdf', 'nishon.group@mail.ru', '+998 (97) 377-77-77', 'sdf sdgs sdf sdf', 'ssdf sdf', '2019-06-25 13:26:40', '2019-06-25 13:26:40'),
(2, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:26:41', '2019-09-19 05:26:41'),
(3, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:28:03', '2019-09-19 05:28:03'),
(4, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:39:05', '2019-09-19 05:39:05'),
(5, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:41:16', '2019-09-19 05:41:16'),
(6, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:41:26', '2019-09-19 05:41:26'),
(7, 'test', 'master@admin.com', '5557877', '4343', '343', '2019-09-19 05:45:05', '2019-09-19 05:45:05'),
(8, 'test', 'master@admin.com', '2323', 'teete', 'test', '2019-09-23 09:05:42', '2019-09-23 09:05:42'),
(9, 'test', 'master@admin.com', '(99874) 2324232', '8', 'test', '2019-09-24 05:23:32', '2019-09-24 05:23:32'),
(10, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:34:15', '2019-09-24 05:34:15'),
(11, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:35:45', '2019-09-24 05:35:45'),
(12, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:36:59', '2019-09-24 05:36:59'),
(13, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:38:12', '2019-09-24 05:38:12'),
(14, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:38:23', '2019-09-24 05:38:23'),
(15, 'test', 'master@admin.com', '(99874) 2324232', '545', 'test', '2019-09-24 05:40:32', '2019-09-24 05:40:32'),
(16, 'test', 'master@admin.com', '(99874) 2324232', 'test', 'tes', '2019-09-24 06:13:13', '2019-09-24 06:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT 0,
  `country` varchar(150) DEFAULT NULL,
  `nationality` varchar(150) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 0,
  `sort_order` int(11) DEFAULT 9999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_id`, `country`, `nationality`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(234, 234, 'Uzbekistan', 'Uzbeks', 1, 1, 234, 'en', '2018-04-11 19:06:46', '2018-07-09 09:52:50'),
(985, 234, 'Узбекистан', 'Узбек', 0, 1, 985, 'ru', '2019-06-21 01:28:39', '2019-06-21 01:28:39'),
(986, 234, 'Ўзбекистон', 'Ўзбек', 0, 1, 986, 'uz', '2019-06-21 01:29:31', '2019-06-21 01:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `countries_details`
--

CREATE TABLE `countries_details` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT 0,
  `sort_name` varchar(5) NOT NULL,
  `phone_code` int(7) NOT NULL,
  `currency` varchar(60) DEFAULT NULL,
  `code` varchar(7) DEFAULT NULL,
  `symbol` varchar(7) DEFAULT NULL,
  `thousand_separator` varchar(2) DEFAULT NULL,
  `decimal_separator` varchar(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries_details`
--

INSERT INTO `countries_details` (`id`, `country_id`, `sort_name`, `phone_code`, `currency`, `code`, `symbol`, `thousand_separator`, `decimal_separator`, `created_at`, `updated_at`) VALUES
(1, 234, 'UZ', 998, 'Sums', 'UZS', 'Sum', ',', NULL, '2019-06-21 06:27:19', '2019-06-21 06:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `degree_levels`
--

CREATE TABLE `degree_levels` (
  `id` int(11) NOT NULL,
  `degree_level_id` int(11) DEFAULT 0,
  `degree_level` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `degree_levels`
--

INSERT INTO `degree_levels` (`id`, `degree_level_id`, `degree_level`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(4, 4, 'Bachelors', 0, 1, 4, 'en', '2018-06-09 17:06:46', NULL),
(5, 5, 'Masters', 0, 1, 5, 'en', '2018-06-09 17:06:46', NULL),
(6, 6, 'MPhil/MS', 0, 1, 6, 'en', '2018-06-09 17:06:46', NULL),
(7, 7, 'PHD/Doctorate', 0, 1, 7, 'en', '2018-06-09 17:06:46', NULL),
(41, 4, 'Бакалавр', 1, 1, 41, 'ru', '2019-06-25 14:13:33', '2019-06-25 14:13:33'),
(42, 5, 'Магистр', 1, 1, 5, 'ru', '2018-06-09 17:06:46', NULL),
(43, 7, 'PHD/Доктор', 1, 1, 7, 'ru', '2018-06-09 17:06:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree_types`
--

CREATE TABLE `degree_types` (
  `id` int(11) NOT NULL,
  `degree_level_id` int(11) DEFAULT 0,
  `degree_type_id` int(11) DEFAULT 0,
  `degree_type` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `degree_types`
--

INSERT INTO `degree_types` (`id`, `degree_level_id`, `degree_type_id`, `degree_type`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Matric in Arts', 1, 1, 1, 'en', '2018-06-20 18:43:23', NULL),
(2, 2, 2, 'Matric in Science', 1, 1, 2, 'en', '2018-06-20 18:43:23', NULL),
(3, 2, 3, 'O-Levels', 1, 1, 3, 'en', '2018-06-20 18:43:23', NULL),
(13, 3, 13, 'A-Levels', 1, 1, 1, 'en', '2018-06-20 18:50:52', NULL),
(14, 3, 14, 'Faculty of Arts', 1, 1, 2, 'en', '2018-06-20 18:50:52', NULL),
(15, 3, 15, 'Faculty of Science (Pre-medical)', 1, 1, 3, 'en', '2018-06-20 18:50:52', NULL),
(16, 3, 16, 'Faculty of Science (Pre-Engineering)', 1, 1, 4, 'en', '2018-06-20 18:50:52', NULL),
(17, 3, 17, 'Intermediate in Computer Science', 1, 1, 5, 'en', '2018-06-20 18:50:52', NULL),
(18, 3, 18, 'Intermediate in Commerce', 1, 1, 6, 'en', '2018-06-20 18:50:52', NULL),
(19, 3, 19, 'Intermediate in General Science', 1, 1, 7, 'en', '2018-06-20 18:50:52', NULL),
(41, 4, 41, 'Bachelors in Arts', 1, 1, 1, 'en', '2018-06-20 19:04:54', NULL),
(42, 4, 42, 'Bachelors in Architecture', 1, 1, 2, 'en', '2018-06-20 19:04:54', NULL),
(43, 4, 43, 'Bachelors in Business Administration', 1, 1, 3, 'en', '2018-06-20 19:04:54', NULL),
(44, 4, 44, 'Bachelors in Commerce', 1, 1, 4, 'en', '2018-06-20 19:04:54', NULL),
(45, 4, 45, 'Bachelors of Dental Surgery', 1, 1, 5, 'en', '2018-06-20 19:04:54', NULL),
(46, 4, 46, 'Bachelors of Education', 1, 1, 6, 'en', '2018-06-20 19:04:54', NULL),
(47, 4, 47, 'Bachelors in Engineering', 1, 1, 7, 'en', '2018-06-20 19:04:54', NULL),
(48, 4, 48, 'Bachelors in Pharmacy', 1, 1, 8, 'en', '2018-06-20 19:04:54', NULL),
(49, 4, 49, 'Bachelors in Science', 1, 1, 9, 'en', '2018-06-20 19:04:54', NULL),
(50, 4, 50, 'Bachelors of Science in Nursing (Registered Nursing)', 1, 1, 10, 'en', '2018-06-20 19:04:54', NULL),
(51, 4, 51, 'Bachelors in Law', 1, 1, 11, 'en', '2018-06-20 19:04:54', NULL),
(52, 4, 52, 'Bachelors in Technology', 1, 1, 12, 'en', '2018-06-20 19:04:54', NULL),
(53, 4, 53, 'BCS/BS', 1, 1, 13, 'en', '2018-06-20 19:04:54', NULL),
(54, 4, 54, 'Doctor of Veterinary Medicine', 1, 1, 14, 'en', '2018-06-20 19:04:54', NULL),
(55, 4, 55, 'MBBS', 1, 1, 15, 'en', '2018-06-20 19:04:54', NULL),
(56, 4, 56, 'Post Registered Nursing B.S.', 1, 1, 16, 'en', '2018-06-20 19:04:54', NULL),
(105, 5, 105, 'Masters in Arts', 1, 1, 1, 'en', '2018-06-20 19:16:09', NULL),
(106, 5, 106, 'Masters in Business Administration', 1, 1, 2, 'en', '2018-06-20 19:16:09', NULL),
(107, 5, 107, 'Masters in Commerce', 1, 1, 3, 'en', '2018-06-20 19:16:09', NULL),
(108, 5, 108, 'Masters of Education', 1, 1, 4, 'en', '2018-06-20 19:16:09', NULL),
(109, 5, 109, 'Masters in Law', 1, 1, 5, 'en', '2018-06-20 19:16:09', NULL),
(110, 5, 110, 'Masters in Science', 1, 1, 6, 'en', '2018-06-20 19:16:09', NULL),
(111, 5, 111, 'Executive Masters in Business Administration', 1, 1, 7, 'en', '2018-06-20 19:16:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `faq_question` mediumtext DEFAULT NULL,
  `faq_answer` mediumtext DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_question`, `faq_answer`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Its My first faq', 'Its My first faq answer', 1, 'en', '2018-03-31 00:56:52', '2018-03-31 00:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `favourites_company`
--

CREATE TABLE `favourites_company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_slug` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourites_company`
--

INSERT INTO `favourites_company` (`id`, `user_id`, `company_slug`, `created_at`, `updated_at`) VALUES
(16, 2, 'php-developer-required-1', '2018-07-31 18:49:07', '2018-07-31 18:49:07'),
(18, 2, 'ismail-industries-limited-16', '2018-08-01 17:42:52', '2018-08-01 17:42:52'),
(19, 2, 'pepsico-pakistan-pvt-limited-7', '2018-08-29 09:42:55', '2018-08-29 09:42:55'),
(20, 5, 'netsol-technologies-pvt-limited-8', '2018-08-29 19:16:59', '2018-08-29 19:16:59'),
(21, 10, 'jsc-gm-uzbekistan-20', '2019-06-25 14:39:10', '2019-06-25 14:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `favourites_job`
--

CREATE TABLE `favourites_job` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_slug` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourites_job`
--

INSERT INTO `favourites_job` (`id`, `user_id`, `job_slug`, `created_at`, `updated_at`) VALUES
(16, 2, 'php-developer-required-1', '2018-07-31 18:49:07', '2018-07-31 18:49:07'),
(17, 5, 'laravel-developer-5', '2018-08-29 09:30:40', '2018-08-29 09:30:40'),
(18, 5, 'php-developer-required-7', '2018-08-29 09:34:21', '2018-08-29 09:34:21'),
(19, 2, 'sales-person-3', '2018-08-29 09:44:34', '2018-08-29 09:44:34'),
(22, 25, 'mukhandislik-makhsulotlari-65', '2019-08-12 06:08:43', '2019-08-12 06:08:43'),
(23, 31, '53w5-78', '2019-09-16 05:03:31', '2019-09-16 05:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_applicants`
--

CREATE TABLE `favourite_applicants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite_applicants`
--

INSERT INTO `favourite_applicants` (`id`, `user_id`, `job_id`, `company_id`, `created_at`, `updated_at`) VALUES
(23, 2, 16, 16, '2018-08-18 23:07:21', '2018-08-18 23:07:21'),
(25, 5, 18, 2, '2018-09-14 20:22:23', '2018-09-14 20:22:23'),
(26, 5, 2, 2, '2018-09-17 22:04:07', '2018-09-17 22:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `functional_areas`
--

CREATE TABLE `functional_areas` (
  `id` int(11) NOT NULL,
  `functional_area_id` int(11) DEFAULT 0,
  `functional_area` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `functional_areas`
--

INSERT INTO `functional_areas` (`id`, `functional_area_id`, `functional_area`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accountant', 0, 1, 1, 'en', '2018-04-03 12:17:25', '2018-04-08 16:38:01'),
(2, 2, 'Accounts, Finance & Financial Services', 0, 1, 2, 'en', '2018-04-03 12:21:35', '2018-04-08 16:38:01'),
(3, 3, 'Admin', 0, 1, 3, 'en', '2018-04-03 12:22:17', '2018-04-06 00:06:34'),
(4, 4, 'Admin Operation', 0, 1, 4, 'en', '2018-04-03 12:23:42', '2018-04-06 00:06:21'),
(5, 590, 'Administration', 0, 1, 5, 'en', '2018-04-03 12:24:24', '2019-06-26 04:20:36'),
(6, 6, 'Administration Clerical', 0, 1, 6, 'en', '2018-04-03 12:24:37', '2018-04-06 00:06:34'),
(7, 7, 'Advertising', 0, 1, 7, 'en', '2018-04-03 12:25:18', '2018-04-06 00:06:08'),
(10, 10, 'Architects & Construction', 0, 1, 10, 'en', '2018-04-03 12:26:28', '2018-04-06 00:06:15'),
(11, 11, 'Architecture', 0, 1, 11, 'en', '2018-04-03 12:27:57', '2018-04-06 00:08:13'),
(12, 12, 'Bank Operation', 0, 1, 12, 'en', '2018-04-03 12:28:25', '2018-04-06 00:08:13'),
(13, 13, 'Business Development', 0, 1, 13, 'en', '2018-04-03 12:28:55', '2018-04-06 00:08:29'),
(14, 14, 'Business Management', 0, 1, 14, 'en', '2018-04-03 12:29:16', '2018-04-06 00:08:13'),
(15, 15, 'Business Systems Analyst', 0, 1, 15, 'en', '2018-04-03 12:29:45', '2018-04-06 00:08:04'),
(16, 16, 'Clerical', 0, 1, 16, 'en', '2018-04-03 12:30:15', '2018-04-06 00:08:29'),
(17, 17, 'Client Services & Customer Support', 0, 1, 17, 'en', '2018-04-03 12:30:40', '2018-04-06 00:07:51'),
(18, 18, 'Computer Hardware', 0, 1, 18, 'en', '2018-04-03 12:31:05', '2018-04-06 00:08:29'),
(19, 19, 'Computer Networking', 0, 1, 19, 'en', '2018-04-03 12:31:25', '2018-04-06 00:07:31'),
(20, 20, 'Consultant', 0, 1, 20, 'en', '2018-04-03 12:31:53', '2018-04-06 00:07:45'),
(21, 21, 'Content Writer', 0, 1, 21, 'en', '2018-04-03 12:32:22', '2018-04-06 00:07:45'),
(22, 22, 'Corporate Affairs', 0, 1, 22, 'en', '2018-04-06 21:30:59', NULL),
(23, 23, 'Creative Design', 0, 1, 23, 'en', '2018-04-06 21:30:59', '2019-06-21 00:22:05'),
(24, 24, 'Creative Writer', 0, 1, 24, 'en', '2018-04-06 21:30:59', NULL),
(25, 25, 'Customer Support', 0, 1, 25, 'en', '2018-04-06 21:30:59', NULL),
(27, 27, 'Data Entry Operator', 0, 1, 27, 'en', '2018-04-06 21:30:59', NULL),
(28, 28, 'Database Administration (DBA)', 0, 1, 28, 'en', '2018-04-06 21:30:59', NULL),
(30, 30, 'Distribution & Logistics', 0, 1, 30, 'en', '2018-04-06 21:30:59', NULL),
(31, 31, 'Education & Training', 0, 1, 31, 'en', '2018-04-06 21:30:59', NULL),
(32, 32, 'Electronics Technician', 0, 1, 32, 'en', '2018-04-06 21:30:59', NULL),
(33, 33, 'Engineering', 0, 1, 33, 'en', '2018-04-06 21:31:00', NULL),
(34, 34, 'Engineering Construction', 0, 1, 34, 'en', '2018-04-06 21:31:00', NULL),
(35, 35, 'Executive Management', 0, 1, 35, 'en', '2018-04-06 21:31:00', NULL),
(36, 36, 'Executive Secretary', 0, 1, 36, 'en', '2018-04-06 21:31:00', NULL),
(37, 37, 'Field Operations', 0, 1, 37, 'en', '2018-04-06 21:31:00', NULL),
(38, 38, 'Front Desk Clerk', 0, 1, 38, 'en', '2018-04-06 21:31:00', NULL),
(40, 40, 'Graphic Design', 0, 1, 40, 'en', '2018-04-06 21:31:00', NULL),
(42, 42, 'Health & Medicine', 0, 1, 42, 'en', '2018-04-06 21:31:00', NULL),
(43, 43, 'Health & Safety', 0, 1, 43, 'en', '2018-04-06 21:31:00', NULL),
(44, 44, 'Health Care', 0, 1, 44, 'en', '2018-04-06 21:31:00', NULL),
(45, 45, 'Health Related', 0, 1, 45, 'en', '2018-04-06 21:31:00', NULL),
(48, 48, 'HR', 0, 1, 48, 'en', '2018-04-06 21:31:00', NULL),
(50, 50, 'Import & Export', 0, 1, 50, 'en', '2018-04-06 21:31:00', NULL),
(51, 51, 'Industrial Production', 0, 1, 51, 'en', '2018-04-06 21:31:00', NULL),
(52, 52, 'Installation & Repair', 0, 1, 52, 'en', '2018-04-06 21:31:00', NULL),
(53, 53, 'Interior Designers & Architects', 0, 1, 53, 'en', '2018-04-06 21:31:00', NULL),
(56, 56, 'Investment Operations', 0, 1, 56, 'en', '2018-04-06 21:31:00', NULL),
(57, 57, 'IT Security', 0, 1, 57, 'en', '2018-04-06 21:31:00', NULL),
(58, 58, 'IT Systems Analyst', 0, 1, 58, 'en', '2018-04-06 21:31:00', NULL),
(59, 59, 'Legal & Corporate Affairs', 0, 1, 59, 'en', '2018-04-06 21:31:00', NULL),
(61, 61, 'Legal Research', 0, 1, 61, 'en', '2018-04-06 21:31:00', NULL),
(62, 62, 'Logistics & Warehousing', 0, 1, 62, 'en', '2018-04-06 21:31:00', NULL),
(63, 63, 'Maintenance/Repair', 0, 1, 63, 'en', '2018-04-06 21:31:00', NULL),
(64, 64, 'Management Consulting', 0, 1, 64, 'en', '2018-04-06 21:31:00', NULL),
(65, 65, 'Management Information System (MIS)', 0, 1, 65, 'en', '2018-04-06 21:31:00', NULL),
(67, 67, 'Manufacturing', 0, 1, 67, 'en', '2018-04-06 21:31:00', NULL),
(68, 68, 'Manufacturing & Operations', 0, 1, 68, 'en', '2018-04-06 21:31:00', NULL),
(69, 69, 'Marketing', 0, 1, 69, 'en', '2018-04-06 21:31:00', NULL),
(71, 71, 'Media - Print & Electronic', 0, 1, 71, 'en', '2018-04-06 21:31:00', NULL),
(72, 72, 'Media & Advertising', 0, 1, 72, 'en', '2018-04-06 21:31:00', NULL),
(75, 75, 'Merchandising', 0, 1, 75, 'en', '2018-04-06 21:31:00', NULL),
(76, 76, 'Merchandising & Product Management', 0, 1, 76, 'en', '2018-04-06 21:31:00', NULL),
(77, 77, 'Monitoring & Evaluation (M&E)', 0, 1, 77, 'en', '2018-04-06 21:31:00', NULL),
(78, 78, 'Network Administration', 0, 1, 78, 'en', '2018-04-06 21:31:00', NULL),
(79, 79, 'Network Operation', 0, 1, 79, 'en', '2018-04-06 21:31:00', NULL),
(83, 83, 'Planning', 0, 1, 83, 'en', '2018-04-06 21:31:00', NULL),
(84, 84, 'Planning & Development', 0, 1, 84, 'en', '2018-04-06 21:31:00', NULL),
(85, 85, 'PR', 0, 1, 85, 'en', '2018-04-06 21:31:00', NULL),
(88, 88, 'Procurement', 0, 1, 88, 'en', '2018-04-06 21:31:00', NULL),
(89, 89, 'Product Developer', 0, 1, 89, 'en', '2018-04-06 21:31:00', NULL),
(94, 94, 'Production & Quality Control', 0, 1, 94, 'en', '2018-04-06 21:31:00', NULL),
(95, 95, 'Project Management', 0, 1, 95, 'en', '2018-04-06 21:31:00', NULL),
(96, 96, 'Project Management Consultant', 0, 1, 96, 'en', '2018-04-06 21:31:00', NULL),
(98, 98, 'QA', 0, 1, 98, 'en', '2018-04-06 21:31:00', NULL),
(100, 100, 'Qualitative Research', 0, 1, 100, 'en', '2018-04-06 21:31:00', NULL),
(101, 101, 'Quality Assurance (QA)', 0, 1, 101, 'en', '2018-04-06 21:31:00', NULL),
(103, 103, 'Quality Inspection', 0, 1, 103, 'en', '2018-04-06 21:31:00', NULL),
(104, 104, 'Recruiting', 0, 1, 104, 'en', '2018-04-06 21:31:00', NULL),
(105, 105, 'Recruitment', 0, 1, 105, 'en', '2018-04-06 21:31:00', NULL),
(106, 106, 'Repair & Overhaul', 0, 1, 106, 'en', '2018-04-06 21:31:00', NULL),
(107, 107, 'Research & Development (R&D)', 0, 1, 107, 'en', '2018-04-06 21:31:00', NULL),
(108, 108, 'Research & Evaluation', 0, 1, 108, 'en', '2018-04-06 21:31:00', NULL),
(110, 110, 'Researcher', 0, 1, 110, 'en', '2018-04-06 21:31:00', NULL),
(112, 112, 'Retail', 0, 1, 112, 'en', '2018-04-06 21:31:00', NULL),
(114, 114, 'Retail Buyer', 0, 1, 114, 'en', '2018-04-06 21:31:00', NULL),
(117, 117, 'Safety & Environment', 0, 1, 117, 'en', '2018-04-06 21:31:00', NULL),
(118, 118, 'Sales', 0, 1, 118, 'en', '2018-04-06 21:31:00', NULL),
(119, 119, 'Sales & Business Development', 0, 1, 119, 'en', '2018-04-06 21:31:00', NULL),
(120, 120, 'Sales Support', 0, 1, 120, 'en', '2018-04-06 21:31:00', NULL),
(121, 121, 'Search Engine Optimization (SEO)', 0, 1, 121, 'en', '2018-04-06 21:31:00', NULL),
(123, 123, 'Security', 0, 1, 123, 'en', '2018-04-06 21:31:00', NULL),
(126, 126, 'SEM', 0, 1, 126, 'en', '2018-04-06 21:31:00', NULL),
(127, 127, 'SMO', 0, 1, 127, 'en', '2018-04-06 21:31:00', NULL),
(128, 128, 'Software & Web Development', 0, 1, 128, 'en', '2018-04-06 21:31:00', NULL),
(129, 129, 'Software Engineer', 0, 1, 129, 'en', '2018-04-06 21:31:00', NULL),
(130, 130, 'Software Testing', 0, 1, 130, 'en', '2018-04-06 21:31:00', NULL),
(131, 131, 'Stores & Warehousing', 0, 1, 131, 'en', '2018-04-06 21:31:00', NULL),
(132, 132, 'Supply Chain', 0, 1, 132, 'en', '2018-04-06 21:31:00', NULL),
(133, 133, 'Supply Chain Management', 0, 1, 133, 'en', '2018-04-06 21:31:00', NULL),
(134, 134, 'Systems Analyst', 0, 1, 134, 'en', '2018-04-06 21:31:00', NULL),
(139, 139, 'Training & Development', 0, 1, 139, 'en', '2018-04-06 21:31:00', '2018-04-08 16:37:56'),
(140, 140, 'Transportation & Warehousing', 0, 1, 140, 'en', '2018-04-06 21:31:00', '2018-04-08 16:37:56'),
(143, 143, 'Warehousing', 0, 1, 143, 'en', '2018-04-06 21:31:00', '2018-04-08 16:37:56'),
(144, 144, 'Web Developer', 0, 1, 144, 'en', '2018-04-06 21:31:00', '2018-04-08 16:37:56'),
(587, 1, 'Бухгалтер', 1, 1, 2, 'ru', '2019-06-21 00:27:55', '2019-06-22 17:14:05'),
(588, 2, 'Счета, финансы и финансовые услуги', 1, 1, 3, 'ru', '2019-06-21 00:30:31', '2019-06-22 17:14:05'),
(589, 4, 'Операция администратора', 1, 1, 4, 'ru', '2019-06-21 00:31:31', '2019-06-22 17:14:05'),
(590, 590, 'Администрация', 1, 1, 1, 'ru', '2019-06-21 00:33:37', '2019-06-26 04:19:52'),
(591, 6, 'Управление делопроизводства', 1, 1, 5, 'ru', '2019-06-21 00:36:40', '2019-06-22 17:14:05'),
(592, 7, 'Реклама', 1, 1, 6, 'ru', '2019-06-21 00:37:33', '2019-06-22 17:14:05'),
(593, 10, 'Архитекторы и строительство', 1, 1, 7, 'ru', '2019-06-21 00:38:38', '2019-06-22 17:14:05'),
(594, 11, 'Архитектура', 1, 1, 8, 'ru', '2019-06-21 00:39:05', '2019-06-22 17:14:05'),
(595, 12, 'Операция банка', 1, 1, 9, 'ru', '2019-06-21 00:39:42', '2019-06-22 17:14:05'),
(596, 13, 'Развитие бизнеса', 1, 1, 10, 'ru', '2019-06-21 00:40:18', '2019-06-22 17:14:05'),
(597, 14, 'Управление бизнесом', 1, 1, 11, 'ru', '2019-06-21 00:41:02', '2019-06-22 17:14:05'),
(598, 15, 'Аналитик бизнес-систем', 1, 1, 12, 'ru', '2019-06-21 00:41:32', '2019-06-22 17:14:05'),
(599, 16, 'Конторский', 1, 1, 13, 'ru', '2019-06-21 00:41:55', '2019-06-22 17:14:05'),
(600, 17, 'Обслуживание клиентов и поддержка клиентов', 1, 1, 14, 'ru', '2019-06-21 00:42:20', '2019-06-22 17:14:05'),
(601, 18, 'Компьютерное железо', 1, 1, 15, 'ru', '2019-06-21 00:42:40', '2019-06-22 17:14:05'),
(602, 19, 'Компьютерная сеть', 1, 1, 16, 'ru', '2019-06-21 00:43:05', '2019-06-22 17:14:05'),
(603, 20, 'Консультант', 1, 1, 17, 'ru', '2019-06-21 00:45:16', '2019-06-22 17:14:05'),
(604, 21, 'Контент менеджер', 1, 1, 18, 'ru', '2019-06-21 00:46:07', '2019-06-22 17:14:05'),
(605, 22, 'По корпоративным связям', 1, 1, 19, 'ru', '2019-06-21 00:46:28', '2019-06-22 17:14:05'),
(606, 23, 'Креативный дизайн', 1, 1, 20, 'ru', '2019-06-21 00:46:51', '2019-06-22 17:14:05'),
(607, 24, 'Писатель', 1, 1, 21, 'ru', '2019-06-21 00:47:28', '2019-06-22 17:14:05'),
(608, 25, 'Служба поддержки', 1, 1, 22, 'ru', '2019-06-21 00:48:17', '2019-06-22 17:14:05'),
(609, 27, 'Оператор ввода данных', 1, 1, 23, 'ru', '2019-06-21 00:49:12', '2019-06-22 17:14:05'),
(610, 28, 'Администрирование базы данных', 1, 1, 24, 'ru', '2019-06-21 00:49:56', '2019-06-22 17:14:05'),
(611, 30, 'Распределение и логистика', 1, 1, 25, 'ru', '2019-06-21 00:50:38', '2019-06-22 17:14:05'),
(612, 31, 'Образование и обучение', 1, 1, 26, 'ru', '2019-06-21 00:51:44', '2019-06-22 17:14:05'),
(613, 32, 'Техник-электронщик', 1, 1, 27, 'ru', '2019-06-21 00:52:11', '2019-06-22 17:14:05'),
(614, 33, 'Инженер', 1, 1, 28, 'ru', '2019-06-21 00:52:40', '2019-06-22 17:14:05'),
(615, 34, 'Инженерная конструкция', 1, 1, 29, 'ru', '2019-06-21 00:53:21', '2019-06-22 17:14:05'),
(616, 35, 'Исполнительная дирекция', 1, 1, 30, 'ru', '2019-06-21 00:53:58', '2019-06-22 17:14:05'),
(617, 36, 'Исполнительный секретарь', 1, 1, 31, 'ru', '2019-06-21 00:54:19', '2019-06-22 17:14:05'),
(618, 37, 'Полевые операции', 1, 1, 32, 'ru', '2019-06-21 00:54:50', '2019-06-22 17:14:05'),
(619, 38, 'Портье', 1, 1, 33, 'ru', '2019-06-21 00:55:24', '2019-06-22 17:14:05'),
(620, 40, 'Графический дизайн', 1, 1, 34, 'ru', '2019-06-21 00:55:59', '2019-06-22 17:14:05'),
(621, 42, 'Здоровье и Медицина', 1, 1, 35, 'ru', '2019-06-21 00:56:52', '2019-06-22 17:14:05'),
(622, 43, 'Здоровье и безопасность', 1, 1, 36, 'ru', '2019-06-21 00:57:16', '2019-06-22 17:14:05'),
(623, 44, 'Здравоохранение', 1, 1, 37, 'ru', '2019-06-21 00:58:48', '2019-06-22 17:14:05'),
(624, 45, 'Связанные со здоровьем', 1, 1, 38, 'ru', '2019-06-21 00:59:17', '2019-06-22 17:14:05'),
(625, 48, 'Отдел кадров', 1, 1, 39, 'ru', '2019-06-21 01:08:18', '2019-06-22 17:14:05'),
(626, 50, 'Импорт Экспорт', 1, 1, 40, 'ru', '2019-06-21 01:09:02', '2019-06-22 17:14:05'),
(627, 51, 'Промышленное производство', 1, 1, 41, 'ru', '2019-06-21 01:09:31', '2019-06-22 17:14:05'),
(628, 52, 'Установка и ремонт', 1, 1, 42, 'ru', '2019-06-21 01:09:54', '2019-06-22 17:14:05'),
(629, 53, 'Дизайнеры интерьеров и архитекторы', 1, 1, 43, 'ru', '2019-06-21 01:10:13', '2019-06-22 17:14:05'),
(630, 56, 'Инвестиционные операции', 1, 1, 44, 'ru', '2019-06-21 01:15:54', '2019-06-22 17:14:05'),
(631, 57, 'ИТ безопасность', 1, 1, 45, 'ru', '2019-06-21 01:16:32', '2019-06-22 17:14:05'),
(632, 58, 'ИТ-системный аналитик', 1, 1, 46, 'ru', '2019-06-21 01:16:52', '2019-06-22 17:14:05'),
(633, 59, 'Юридические и корпоративные вопросы', 1, 1, 47, 'ru', '2019-06-21 01:17:19', '2019-06-22 17:14:05'),
(634, 61, 'Правовые исследования', 1, 1, 48, 'ru', '2019-06-21 01:18:12', '2019-06-22 17:14:05'),
(635, 62, 'Логистика и складирование', 1, 1, 49, 'ru', '2019-06-21 01:18:46', '2019-06-22 17:14:05'),
(636, 63, 'Техническое обслуживание / ремонт', 1, 1, 50, 'ru', '2019-06-21 01:19:47', '2019-06-22 17:14:05'),
(637, 64, 'Управленческое консультирование', 1, 1, 51, 'ru', '2019-06-21 01:20:17', '2019-06-22 17:14:05'),
(638, 67, 'Производство', 1, 1, 52, 'ru', '2019-06-21 01:23:57', '2019-06-22 17:14:05'),
(639, 68, 'Производственные операции', 1, 1, 53, 'ru', '2019-06-21 01:24:19', '2019-06-22 17:14:05'),
(640, 69, 'Маркетинг', 1, 1, 54, 'ru', '2019-06-21 01:24:53', '2019-06-22 17:14:05'),
(641, 71, 'СМИ - печатные и электронные', 1, 1, 55, 'ru', '2019-06-21 01:27:43', '2019-06-22 17:14:05'),
(642, 72, 'СМИ и реклама', 1, 1, 56, 'ru', '2019-06-21 01:28:05', '2019-06-22 17:14:05'),
(643, 75, 'Мерчендайзинг', 1, 1, 57, 'ru', '2019-06-21 01:28:36', '2019-06-22 17:14:05'),
(644, 76, 'Мерчендайзинг и управление продукцией', 1, 1, 58, 'ru', '2019-06-21 01:28:56', '2019-06-22 17:14:05'),
(645, 77, 'Мониторинг и оценка (МиО)', 1, 1, 59, 'ru', '2019-06-21 01:30:06', '2019-06-22 17:14:05'),
(646, 78, 'Администрирование сети', 1, 1, 60, 'ru', '2019-06-21 01:30:28', '2019-06-22 17:14:05'),
(647, 79, 'Работа в сети', 1, 1, 61, 'ru', '2019-06-21 01:30:59', '2019-06-22 17:14:05'),
(648, 83, 'Планирование', 1, 1, 62, 'ru', '2019-06-21 01:34:20', '2019-06-22 17:14:05'),
(649, 84, 'Планирование и развитие', 1, 1, 63, 'ru', '2019-06-21 01:34:44', '2019-06-22 17:14:05'),
(650, 85, 'Связи с общественностью', 1, 1, 64, 'ru', '2019-06-21 01:36:30', '2019-06-22 17:14:05'),
(651, 88, 'Закупка', 1, 1, 65, 'ru', '2019-06-21 01:37:13', '2019-06-22 17:14:05'),
(652, 89, 'Разработчик продукта', 1, 1, 66, 'ru', '2019-06-21 01:38:36', '2019-06-22 17:14:05'),
(653, 94, 'Производство и контроль качества', 1, 1, 67, 'ru', '2019-06-21 01:40:20', '2019-06-22 17:14:05'),
(654, 95, 'Управление проектом', 1, 1, 68, 'ru', '2019-06-21 01:40:50', '2019-06-22 17:14:05'),
(655, 96, 'Консультант по управлению проектами', 1, 1, 69, 'ru', '2019-06-21 01:41:34', '2019-06-22 17:14:05'),
(656, 98, 'Контроль качества', 1, 1, 70, 'ru', '2019-06-21 01:42:05', '2019-06-22 17:14:05'),
(657, 100, 'Качественное исследование', 1, 1, 71, 'ru', '2019-06-21 01:42:36', '2019-06-22 17:14:05'),
(658, 101, 'Обеспечение качества (QA)', 1, 1, 72, 'ru', '2019-06-21 01:44:33', '2019-06-22 17:14:05'),
(659, 103, 'Проверка качества', 1, 1, 73, 'ru', '2019-06-21 01:45:16', '2019-06-22 17:14:05'),
(660, 104, 'Рекрутинг', 1, 1, 74, 'ru', '2019-06-21 01:46:01', '2019-06-22 17:14:05'),
(661, 105, 'Набор персонала', 1, 1, 75, 'ru', '2019-06-21 01:46:44', '2019-06-22 17:14:05'),
(662, 106, 'Ремонт и капитальный ремонт', 1, 1, 76, 'ru', '2019-06-21 01:47:06', '2019-06-22 17:14:05'),
(663, 107, 'Исследования и разработки (НИОКР)', 1, 1, 77, 'ru', '2019-06-21 01:47:47', '2019-06-22 17:14:05'),
(664, 108, 'Исследования и оценка', 1, 1, 78, 'ru', '2019-06-21 01:48:07', '2019-06-22 17:14:05'),
(665, 110, 'Исследователь', 1, 1, 79, 'ru', '2019-06-21 01:48:39', '2019-06-22 17:14:05'),
(666, 112, 'Розничная торговля', 1, 1, 80, 'ru', '2019-06-21 01:49:07', '2019-06-22 17:14:05'),
(667, 117, 'Безопасность и окружающая среда', 1, 1, 81, 'ru', '2019-06-21 01:49:46', '2019-06-22 17:14:05'),
(668, 118, 'Продажи', 1, 1, 82, 'ru', '2019-06-21 01:50:09', '2019-06-22 17:14:05'),
(669, 119, 'Продажи и развитие бизнеса', 1, 1, 83, 'ru', '2019-06-21 01:51:24', '2019-06-22 17:14:05'),
(670, 120, 'Поддержка продаж', 1, 1, 84, 'ru', '2019-06-21 01:51:48', '2019-06-22 17:14:05'),
(671, 121, 'Поисковая оптимизация (SEO)', 1, 1, 85, 'ru', '2019-06-21 01:52:12', '2019-06-22 17:14:05'),
(672, 123, 'Безопасность', 1, 1, 86, 'ru', '2019-06-21 01:52:49', '2019-06-22 17:14:05'),
(673, 126, 'Маркетинг в поисковых системах', 1, 1, 87, 'ru', '2019-06-21 01:54:22', '2019-06-22 17:14:05'),
(674, 127, 'Оптимизация в социальных сетях', 1, 1, 88, 'ru', '2019-06-21 01:54:56', '2019-06-22 17:14:05'),
(675, 128, 'Разработка программного обеспечения и веб', 1, 1, 89, 'ru', '2019-06-21 01:56:09', '2019-06-22 17:14:05'),
(676, 129, 'Программист', 1, 1, 90, 'ru', '2019-06-21 01:56:29', '2019-06-22 17:14:05'),
(677, 130, 'Тестирование программного обеспечения', 1, 1, 91, 'ru', '2019-06-21 01:56:55', '2019-06-22 17:14:05'),
(678, 131, 'Складщик', 1, 1, 92, 'ru', '2019-06-21 01:57:49', '2019-06-22 17:14:05'),
(679, 132, 'Цепочка поставок', 1, 1, 93, 'ru', '2019-06-21 01:58:10', '2019-06-22 17:14:05'),
(680, 133, 'Система управления цепями поставок', 1, 1, 94, 'ru', '2019-06-21 02:03:22', '2019-06-22 17:14:05'),
(681, 134, 'Системный аналитик', 1, 1, 95, 'ru', '2019-06-21 02:03:47', '2019-06-22 17:14:05'),
(682, 139, 'Обучение и развитие', 1, 1, 96, 'ru', '2019-06-21 02:04:51', '2019-06-22 17:14:05'),
(683, 140, 'Транспортировка и складирование', 1, 1, 97, 'ru', '2019-06-21 02:05:12', '2019-06-22 17:14:05'),
(684, 143, 'Cкладщик', 1, 1, 98, 'ru', '2019-06-21 06:00:04', '2019-06-22 17:14:05'),
(685, 144, 'Веб-разработчик', 1, 1, 99, 'ru', '2019-06-21 06:00:46', '2019-06-22 17:14:05'),
(686, 686, 'Мухандислик махсулотлари (PE)', 1, 1, 686, 'ru', '2019-06-25 13:28:30', '2019-06-25 13:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `gender_id` int(11) DEFAULT 0,
  `gender` varchar(30) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `gender_id`, `gender`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Female', 0, 1, 1, 'en', '2018-04-06 12:17:43', '2018-04-08 23:50:52'),
(2, NULL, 'Male', 0, 1, 2, 'en', '2018-04-06 12:17:52', '2018-04-08 23:50:52'),
(15, 1, 'Женский ', 1, 1, 15, 'ru', '2019-06-22 00:50:35', '2019-06-22 00:50:35'),
(16, 1, 'Аёл', 0, 1, 16, 'uz', '2019-06-22 00:51:04', '2019-06-22 00:51:04'),
(17, 2, 'Мужской ', 1, 1, 17, 'ru', '2019-06-22 00:51:35', '2019-06-22 00:51:57'),
(18, 2, 'Эркак', 0, 1, 18, 'uz', '2019-06-22 00:52:15', '2019-06-22 00:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `industry_id` int(11) DEFAULT 0,
  `industry` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `is_default` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `industry_id`, `industry`, `is_active`, `sort_order`, `lang`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Information Technology', 0, 34, 'en', 0, '2018-03-29 23:18:57', '2018-04-11 15:47:32'),
(3, 3, 'Banking/Financial Services', 0, 10, 'en', 0, '2018-03-29 23:20:18', '2018-04-11 15:47:43'),
(7, 7, 'Advertising/PR', 0, 3, 'en', 0, '2018-03-29 23:22:06', '2018-04-11 15:47:42'),
(8, 8, 'Accounting/Taxation', 0, 2, 'en', 0, '2018-03-29 23:22:36', '2018-04-11 15:47:46'),
(10, 10, 'Manufacturing', 0, 38, 'en', 0, '2018-03-29 23:23:17', '2018-04-11 15:47:32'),
(11, 11, 'Education/Training', 0, 20, 'en', 0, '2018-03-29 23:23:40', '2018-04-11 15:47:43'),
(13, 13, 'Agriculture/Fertilizer/Pesticide', 0, 4, 'en', 0, '2018-03-29 23:24:35', '2018-04-11 15:47:43'),
(17, 17, 'Construction/Cement/Metals', 0, 16, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:43'),
(19, 19, 'Law Firms/Legal', 0, 37, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:32'),
(20, 20, 'Arts / Entertainment', 0, 7, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:43'),
(21, 21, 'Broadcasting', 0, 12, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:43'),
(22, 22, 'Business Development', 0, 13, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:43'),
(23, 23, 'Publishing/Printing', 0, 47, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:22'),
(25, 25, 'Services', 0, 52, 'en', 0, '2018-04-06 16:01:02', '2018-04-11 15:47:22'),
(28, 28, 'Electronics', 0, 21, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(29, 29, 'Engineering', 0, 22, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(30, 30, 'Call Center', 0, 14, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(31, 31, 'AutoMobile', 0, 8, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(33, 33, 'Architecture/Interior Design', 0, 6, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(34, 34, 'BPO', 0, 11, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(35, 35, 'Event Management', 0, 23, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(41, 41, 'Courier/Logistics', 0, 18, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(43, 43, 'Recruitment/Employment Firms', 0, 49, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:22'),
(47, 47, 'Project Management', 0, 46, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:26'),
(48, 48, 'Importers/ Distributors/Exporters', 0, 33, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:32'),
(49, 49, 'Consultants', 0, 17, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(52, 52, 'Investments', 0, 36, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:32'),
(53, 53, 'Apparel/Clothing', 0, 5, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(57, 57, 'Distribution and Logistics', 0, 19, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(58, 58, 'Aviation', 0, 9, 'en', 0, '2018-04-06 20:38:46', '2018-04-11 15:47:43'),
(230, 8, 'Бухгалтерский учет / налогообложение', 1, 230, 'ru', 1, '2019-06-21 05:43:49', '2019-06-21 05:43:49'),
(231, 7, 'Реклама / PR', 1, 231, 'ru', 1, '2019-06-21 05:44:08', '2019-06-21 05:44:08'),
(232, 13, 'Сельское хозяйство / удобрения / пестициды', 1, 232, 'ru', 1, '2019-06-21 05:44:24', '2019-06-21 05:44:24'),
(233, 53, 'Одежда', 1, 233, 'ru', 1, '2019-06-21 05:45:22', '2019-06-21 05:45:22'),
(234, 33, 'Архитектура/Дизайн интерьера', 1, 234, 'ru', 1, '2019-06-21 05:45:48', '2019-06-21 05:45:48'),
(235, 20, 'Искусство / Развлечения', 1, 235, 'ru', 1, '2019-06-21 05:46:09', '2019-06-21 05:46:09'),
(236, 31, 'Автомобильная промышленность', 1, 236, 'ru', 1, '2019-06-21 05:46:35', '2019-06-21 05:46:38'),
(237, 58, 'Авиационная', 1, 237, 'ru', 1, '2019-06-21 05:47:08', '2019-06-21 05:47:08'),
(238, 3, 'Банки / Финансовые услуги', 1, 238, 'ru', 1, '2019-06-21 05:47:23', '2019-06-21 05:47:23'),
(239, 34, 'Аутсорсинг', 1, 239, 'ru', 1, '2019-06-21 05:48:04', '2019-06-21 05:48:04'),
(240, 21, 'Вещания', 1, 240, 'ru', 1, '2019-06-21 05:49:07', '2019-06-21 05:49:07'),
(241, 22, 'Развитие бизнеса', 1, 241, 'ru', 1, '2019-06-21 05:49:22', '2019-06-21 05:49:22'),
(242, 30, 'Колл-центр', 1, 242, 'ru', 1, '2019-06-21 05:49:36', '2019-06-21 05:50:49'),
(243, 17, 'Строительство / Цемент / Металлы', 1, 243, 'ru', 1, '2019-06-21 05:54:03', '2019-06-21 05:54:03'),
(244, 49, 'Консультанты', 1, 244, 'ru', 1, '2019-06-21 05:54:27', '2019-06-21 05:54:27'),
(245, 41, 'Логистика / Курьер', 1, 245, 'ru', 1, '2019-06-21 05:54:51', '2019-06-21 05:54:51'),
(246, 57, 'Распределение и логистика', 1, 246, 'ru', 1, '2019-06-21 05:55:08', '2019-06-21 05:55:08'),
(247, 11, 'Образование / Обучение', 1, 247, 'ru', 1, '2019-06-21 05:55:20', '2019-06-21 05:55:20'),
(248, 28, 'Электроника', 1, 248, 'ru', 1, '2019-06-21 05:55:39', '2019-06-21 05:55:39'),
(249, 29, 'Инженерия', 1, 249, 'ru', 1, '2019-06-21 05:55:57', '2019-06-21 05:55:57'),
(250, 35, 'Управление событиями', 1, 250, 'ru', 1, '2019-06-21 05:59:27', '2019-06-21 05:59:27'),
(251, 48, 'Импортеры / Дистрибьюторы / Экспортеры', 1, 251, 'ru', 1, '2019-06-21 06:05:16', '2019-06-21 06:05:16'),
(252, 1, 'Информационные технологии', 1, 252, 'ru', 1, '2019-06-21 06:05:36', '2019-06-21 06:05:36'),
(253, 52, 'Инвестиции', 1, 253, 'ru', 1, '2019-06-21 06:06:33', '2019-06-21 06:06:33'),
(254, 19, 'Юридические фирмы / Юридические', 1, 254, 'ru', 1, '2019-06-21 06:06:48', '2019-06-21 06:06:48'),
(255, 10, 'Производство', 1, 255, 'ru', 1, '2019-06-21 06:07:11', '2019-06-21 06:07:11'),
(256, 23, 'Издательство', 1, 256, 'ru', 1, '2019-06-21 06:09:33', '2019-06-21 06:09:51'),
(257, 47, 'Управление проектом', 1, 257, 'ru', 1, '2019-06-21 06:10:16', '2019-06-21 06:10:16'),
(258, 43, 'Компании по подбору персонала / трудоустройству', 1, 258, 'ru', 1, '2019-06-21 06:10:42', '2019-06-21 06:10:53'),
(259, 25, 'Сервисы', 1, 259, 'ru', 1, '2019-06-21 06:11:49', '2019-06-21 06:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `is_freelance` tinyint(1) DEFAULT 0,
  `career_level_id` int(11) DEFAULT NULL,
  `salary_from` int(11) DEFAULT NULL,
  `salary_to` int(11) DEFAULT NULL,
  `hide_salary` tinyint(1) DEFAULT 0,
  `salary_currency` varchar(5) DEFAULT NULL,
  `salary_period_id` int(11) DEFAULT NULL,
  `functional_area_id` int(11) DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  `job_shift_id` int(11) DEFAULT NULL,
  `num_of_positions` int(3) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `degree_level_id` int(11) DEFAULT NULL,
  `job_experience_id` int(11) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_featured` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `search` text DEFAULT NULL,
  `slug` varchar(210) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `country_id`, `state_id`, `city_id`, `is_freelance`, `career_level_id`, `salary_from`, `salary_to`, `hide_salary`, `salary_currency`, `salary_period_id`, `functional_area_id`, `job_type_id`, `job_shift_id`, `num_of_positions`, `gender_id`, `expiry_date`, `degree_level_id`, `job_experience_id`, `protocol`, `is_active`, `is_featured`, `created_at`, `updated_at`, `search`, `slug`) VALUES
(82, 20, 'В JAFTON LLC. требуется Android developer', 'Обязанности: <br />-Разработка мобильных приложений;<br />-Проектирование программного дизайна приложений;<br />-Сопровождение и рефакторинг кода;<br />-Сопровождение поставленных задач в таск-менеджере (Jira), отчетность;<br /><br />Требования: <br />-Опыт работы только на Android не менее 1 года;<br />-Опыт разработки на Kotlin, понимание Android Sdk, retrofit2;<br />-Знание основ HTTP, XML, JSON;<br />-Умение выбирать правильные технологии / паттерны в конкретных условиях;<br />-Понимание REST API и модели клиент-сервер;<br />-Опыт работы с системами контроля версий(Git);<br />-Наличие завершенных приложений, разработанных самостоятельно или в команде разработчиков;<br />-Знание русского языка обязательно;<br /><br />Будет плюсом:<br />-Высшее техническое образование или эквивалентный опыт в технической сфере;<br />-Опыт работы с Jira или с другими системами постановки задач;<br />-Знание английского языка;<br />Условия: -Возможность карьерного и профессионального роста в IT компании, у которой за плечами более 50 успешно реализованных проектов;<br />-Опыт работы с интересными проектами;<br />-Конкурентный уровень заработной платы;<br />-Молодой профессиональный коллектив;<br />-Офис в центре города(ор-р: ст. метро Космонавты);<br />-Гибкий 8 часовой график работы: с 10:00 до 19:00 или же другие вариации, ПН-ПТ;<br />-Возможность ротации в другие проекты компании', 234, 1, 4, 0, 1, 0, 0, 0, 'UZS', 3, 129, 3, 1, NULL, 2, '2019-10-30 19:00:00', 4, 3, '-1573454213-379.xlsx', 0, 0, '2019-09-23 08:49:04', '2019-11-11 09:27:14', '\"UzAutomotors\" Узбекистан Андижанская область Андижан В JAFTON LLC. требуется Android developer Обязанности: <br />-Разработка мобильных приложений;<br />-Проектирование программного дизайна приложений;<br />-Сопровождение и рефакторинг кода;<br />-Сопровождение поставленных задач в таск-менеджере (Jira), отчетность;<br /><br />Требования: <br />-Опыт работы только на Android не менее 1 года;<br />-Опыт разработки на Kotlin, понимание Android Sdk, retrofit2;<br />-Знание основ HTTP, XML, JSON;<br />-Умение выбирать правильные технологии / паттерны в конкретных условиях;<br />-Понимание REST API и модели клиент-сервер;<br />-Опыт работы с системами контроля версий(Git);<br />-Наличие завершенных приложений, разработанных самостоятельно или в команде разработчиков;<br />-Знание русского языка обязательно;<br /><br />Будет плюсом:<br />-Высшее техническое образование или эквивалентный опыт в технической сфере;<br />-Опыт работы с Jira или с другими системами постановки задач;<br />-Знание английского языка;<br />Условия: -Возможность карьерного и профессионального роста в IT компании, у которой за плечами более 50 успешно реализованных проектов;<br />-Опыт работы с интересными проектами;<br />-Конкурентный уровень заработной платы;<br />-Молодой профессиональный коллектив;<br />-Офис в центре города(ор-р: ст. метро Космонавты);<br />-Гибкий 8 часовой график работы: с 10:00 до 19:00 или же другие вариации, ПН-ПТ;<br />-Возможность ротации в другие проекты компании Начальник отдела 0 0Еженедельно Программист Полный рабочий день / постоянный Первая смена (день) Мужской  Бакалавр 2 года', 'v-jafton-llc-trebuetsya-android-developer-82'),
(83, 20, 'php yii2', 'testst', 234, 11, 7, 0, 2, 2222, 2222, 0, 'UZS', 3, 590, 2, 2, 14, 1, '2019-10-04 19:00:00', 7, 8, NULL, 1, 0, '2019-09-25 06:50:12', '2019-09-25 06:51:18', '\"UzAutomotors\" Узбекистан Ферганская область Фергана php yii2 testst English Fluency Начальный уровень 2222 2222Еженедельно Администрация Фрилансер (свободный работник) Вторая смена (во второй половине дня) Женский  PHD/Доктор 7 год', 'php-yii2-83'),
(84, 20, 'test', 'test', 234, 11, 7, 0, 2, 20000, 200000, 0, 'UZS', 3, 20, 2, 2, 13, 1, '2019-10-30 19:00:00', 7, 9, NULL, 1, 1, '2019-09-26 09:29:16', '2019-10-23 09:28:54', '\"UzAutomotors\" Узбекистан Ферганская область Фергана test test Adobe Photoshop Начальный уровень 20000 200000Еженедельно Консультант Фрилансер (свободный работник) Вторая смена (во второй половине дня) Женский  PHD/Доктор 8 год', 'test-84'),
(85, 71, 'test', 'test', 234, 11, 9, 0, 1, 23232, 23232, 0, 'UZS', 3, 1, 2, 1, 18, 1, '2019-09-05 19:00:00', 5, 1, NULL, 1, 0, '2019-09-26 09:33:46', '2019-09-26 09:33:46', 'test Узбекистан Ферганская область Коканд test test Cold Calling Начальник отдела 23232 23232Еженедельно Бухгалтер Фрилансер (свободный работник) Первая смена (день) Женский  Магистр 1 год', 'test-85'),
(86, 30, 'test', 'tessst', 234, 2, 6, 0, 1, 0, 0, 0, 'UZS', 1, 21, 1, 2, 16, 1, '2019-10-29 19:00:00', 5, 10, NULL, 1, 0, '2019-10-18 11:14:37', '2019-11-04 11:09:38', '\"UzAutomotors\" Узбекистан Бухарская область Бухара test tessst Cold Calling Начальник отделаЕжемесячно Контент менеджер Контракт Вторая смена (во второй половине дня) Женский  Магистр 9 год', 'test-86'),
(87, 20, 'my test last', 'yeah last', 234, 3, 12, 0, 1, 232, 232, 0, 'UZS', 1, 2, 3, 2, 15, 1, '2019-11-08 19:00:00', 7, 8, NULL, 0, 0, '2019-10-23 09:32:03', '2019-10-23 09:32:03', '\"UzAutomotors\" Узбекистан Джизакская область Джизак my test last yeah last Начальник отдела 232 232Ежемесячно Счета, финансы и финансовые услуги Полный рабочий день / постоянный Вторая смена (во второй половине дня) Женский  PHD/Доктор 7 год', 'my-test-last-87'),
(88, 20, 'just one', 'yeah last', 234, 2, 6, NULL, NULL, 232, 232, 0, 'UZS', 1, 2, NULL, 2, 15, 1, '2019-11-08 19:00:00', 7, 8, NULL, 1, 0, '2019-10-23 09:35:53', '2019-10-23 09:48:21', '\"UzAutomotors\" Узбекистан Бухарская область Бухара just one yeah last  232 232Ежемесячно Счета, финансы и финансовые услуги  Вторая смена (во второй половине дня) Женский  PHD/Доктор 7 год', 'just-one-88');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(11) NOT NULL,
  `application_status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `current_salary` int(11) DEFAULT NULL,
  `expected_salary` int(11) DEFAULT NULL,
  `salary_currency` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `application_status`, `user_id`, `job_id`, `cv_id`, `current_salary`, `expected_salary`, `salary_currency`, `created_at`, `updated_at`) VALUES
(7, '2 ой этап', 10, 73, 8, 5000000, 11000000, 'UZS', '2019-06-25 13:43:01', '2019-09-17 06:07:08'),
(8, 'На рассмотрении', 9, 73, 7, 555, 6666, 'UZS', '2019-06-25 13:50:19', '2019-09-17 06:39:53'),
(9, '1', 10, 71, 8, 2000000, 350000000, 'UZS', '2019-06-26 15:33:55', '2019-09-16 08:41:56'),
(10, 'На рассмотрении', 9, 33, 7, 33333333, 44444444, 'UZS', '2019-06-28 11:01:39', '2019-09-17 09:22:36'),
(11, '2 ой этап', 10, 31, 8, 5000000, 11000000, 'UZS', '2019-07-05 04:52:10', '2019-09-25 04:55:14'),
(12, 'На рассмотрении', 9, 87, 7, 5000000, 6000000, 'UZS', '2019-07-05 05:32:05', '2019-11-04 11:32:37'),
(13, 'На рассмотрении', 10, 42, 8, 2000000, 350000000, 'UZS', '2019-08-22 04:34:24', '2019-09-17 09:22:41'),
(14, '1', 23, 42, 18, 2000000, 20000000, 'UZS', '2019-09-05 06:03:09', '2019-09-16 08:41:56'),
(18, '1', 10, 42, 8, 2000000, 350000000, 'UZS', '2019-08-22 04:34:24', '2019-09-16 08:41:56'),
(19, '1', 23, 42, 18, 2000000, 20000000, 'UZS', '2019-09-05 06:03:09', '2019-09-16 08:41:56'),
(24, 'На рассмотрении', NULL, 80, NULL, 25000, 5452000, 'UZS', '2019-09-23 05:57:51', '2019-10-21 07:59:59'),
(25, '4 этап (предложение о работе)', 23, 82, NULL, 2000000, 20000000, 'UZS', '2019-09-23 08:49:42', '2019-11-11 09:20:45'),
(26, '4 этап (предложение о работе)', 14, 82, NULL, 2000000, 20000000, 'UZS', '2019-09-24 04:54:49', '2019-11-08 06:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` int(11) NOT NULL,
  `job_experience_id` int(11) DEFAULT 0,
  `job_experience` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `job_experience_id`, `job_experience`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Year', 0, 1, 4, 'en', '2018-04-05 16:27:28', '2018-04-11 23:19:05'),
(2, 2, '10 Year', 0, 1, 13, 'en', '2018-04-05 16:27:51', '2018-04-11 23:19:05'),
(3, 3, '2 Year', 0, 1, 5, 'en', '2018-04-05 16:28:17', '2018-04-11 23:19:05'),
(4, 4, '3 Year', 0, 1, 6, 'en', '2018-04-05 21:28:44', '2018-04-11 23:19:05'),
(5, 5, '4 Year', 0, 1, 7, 'en', '2018-04-05 21:28:49', '2018-04-11 23:19:05'),
(6, 6, '5 Year', 0, 1, 8, 'en', '2018-04-05 21:28:55', '2018-04-11 23:19:05'),
(7, 7, '6 Year', 0, 1, 9, 'en', '2018-04-05 21:28:59', '2018-04-11 23:19:05'),
(8, 8, '7 Year', 0, 1, 10, 'en', '2018-04-05 21:29:04', '2018-04-11 23:19:05'),
(9, 9, '8 Year', 0, 1, 11, 'en', '2018-04-05 21:29:08', '2018-04-11 23:19:05'),
(10, 10, '9 Year', 0, 1, 12, 'en', '2018-04-05 21:29:13', '2018-04-11 23:19:05'),
(11, 11, 'Fresh', 0, 1, 2, 'en', '2018-04-05 21:29:18', '2018-04-11 23:19:05'),
(12, 12, 'Less Than 1 Year', 0, 1, 3, 'en', '2018-04-05 21:29:24', '2018-04-11 23:19:05'),
(52, 12, 'Менее чем за 1 год', 0, 1, 52, 'ru', '2019-06-25 14:15:10', '2019-06-25 14:15:10'),
(53, 12, 'Бир йилдан кам', 0, 1, 53, 'uz', '2019-06-25 14:15:34', '2019-06-25 14:15:34'),
(54, 1, '1 год', 1, 1, 54, 'ru', '2019-06-25 14:16:36', '2019-06-25 14:16:36'),
(55, 3, '2 года', 1, 1, 55, 'ru', '2019-06-25 14:16:49', '2019-06-25 14:16:49'),
(56, 4, '3 года', 1, 1, 56, 'ru', '2019-06-25 14:16:59', '2019-06-25 14:16:59'),
(57, 5, '4 года', 1, 1, 57, 'ru', '2019-06-25 14:17:09', '2019-06-25 14:17:09'),
(58, 6, '5 год', 1, 1, 58, 'ru', '2019-06-25 14:17:26', '2019-06-25 14:17:26'),
(59, 7, '6 год', 1, 1, 59, 'ru', '2019-06-25 14:17:37', '2019-06-25 14:17:37'),
(60, 8, '7 год', 1, 1, 60, 'ru', '2019-06-25 14:17:45', '2019-06-25 14:17:45'),
(61, 9, '8 год', 1, 1, 61, 'ru', '2019-06-25 14:17:56', '2019-06-25 14:17:56'),
(62, 10, '9 год', 1, 1, 62, 'ru', '2019-06-25 14:18:04', '2019-06-25 14:18:04'),
(63, 2, '10 год', 1, 1, 63, 'ru', '2019-06-25 14:18:22', '2019-06-25 14:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `job_shifts`
--

CREATE TABLE `job_shifts` (
  `id` int(11) NOT NULL,
  `job_shift_id` int(11) DEFAULT 0,
  `job_shift` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `job_shifts`
--

INSERT INTO `job_shifts` (`id`, `job_shift_id`, `job_shift`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'First Shift (Day)', 0, 1, 1, 'en', '2018-07-13 16:19:12', NULL),
(2, 2, 'Second Shift (Afternoon)', 0, 1, 2, 'en', '2018-07-13 16:19:12', NULL),
(3, 3, 'Third Shift (Night)', 0, 1, 3, 'en', '2018-07-13 16:19:24', NULL),
(4, 4, 'Rotating', 0, 1, 4, 'en', '2018-07-13 16:19:39', NULL),
(17, 1, 'Первая смена (день)', 1, 1, 17, 'ru', '2019-06-22 02:47:55', '2019-06-22 03:12:37'),
(18, 2, 'Вторая смена (во второй половине дня)', 1, 1, 18, 'ru', '2019-06-22 02:48:06', '2019-06-22 02:48:06'),
(19, 3, 'Третья Смена (Ночь)', 1, 1, 19, 'ru', '2019-06-22 02:48:14', '2019-06-22 02:48:14'),
(20, 4, 'Вращающийся', 1, 1, 20, 'ru', '2019-06-22 02:48:24', '2019-06-22 02:48:24'),
(21, 1, 'Бринчи кундалик иш (Кун)', 0, 1, 21, 'uz', '2019-06-22 02:51:38', '2019-06-22 02:51:38'),
(22, 2, 'Иккинчи кундалик иш (тушдан кейин)', 0, 1, 22, 'uz', '2019-06-22 02:51:48', '2019-06-22 02:51:48'),
(23, 3, 'Учинчи кундалик иш (тун)', 0, 1, 23, 'uz', '2019-06-22 02:51:55', '2019-06-22 02:51:55'),
(24, 4, 'Айланма кундалик иш', 0, 1, 24, 'uz', '2019-06-22 02:52:16', '2019-06-22 02:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(11) NOT NULL,
  `job_skill_id` int(11) DEFAULT 0,
  `job_skill` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `job_skill_id`, `job_skill`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adobe Illustrator', 1, 1, 1, 'en', '2018-04-06 09:49:43', '2018-04-06 09:49:43'),
(2, 2, 'Adobe Photoshop', 1, 1, 2, 'en', '2018-04-06 09:50:03', '2018-04-06 09:50:03'),
(3, 3, 'Cold Calling', 1, 1, 3, 'en', '2018-04-06 09:50:25', '2018-04-06 09:50:25'),
(4, 4, 'COMMUNICATION', 1, 1, 4, 'en', '2018-04-06 09:50:45', '2018-04-06 09:50:45'),
(5, 5, 'Communication Skills', 1, 1, 5, 'en', '2018-04-06 09:51:05', '2018-04-06 09:51:05'),
(6, 6, 'CSS', 1, 1, 6, 'en', '2018-04-06 09:51:25', '2018-04-06 09:51:25'),
(7, 7, 'English Fluency', 1, 1, 7, 'en', '2018-04-06 09:51:46', '2018-04-06 09:51:46'),
(8, 8, 'HTML', 1, 1, 8, 'en', '2018-04-06 09:52:08', '2018-04-06 09:52:08'),
(9, 9, 'Java', 1, 1, 9, 'en', '2018-04-06 09:52:32', '2018-04-06 09:52:32'),
(10, 10, 'JavaScript', 1, 1, 10, 'en', '2018-04-06 09:52:40', '2018-04-06 09:52:40'),
(11, 11, 'Jquery', 1, 1, 11, 'en', '2018-04-06 09:52:52', '2018-04-06 09:52:52'),
(12, 12, 'Marketing', 1, 1, 12, 'en', '2018-04-06 09:53:05', '2018-04-06 09:53:05'),
(13, 13, 'MS Excel', 1, 1, 13, 'en', '2018-04-06 09:53:25', '2018-04-06 09:53:25'),
(14, 14, 'MS Office', 1, 1, 14, 'en', '2018-04-06 09:53:45', '2018-04-06 09:53:45'),
(15, 15, 'MySQL', 1, 1, 15, 'en', '2018-04-06 09:54:07', '2018-04-06 09:54:07'),
(16, 16, 'PHP', 1, 1, 16, 'en', '2018-04-06 09:54:30', '2018-04-06 09:54:30'),
(17, 17, 'Sales', 1, 1, 17, 'en', '2018-04-06 09:54:54', '2018-04-06 09:54:54'),
(18, 18, 'Strong Communication skills', 1, 1, 18, 'en', '2018-04-06 09:55:13', '2018-04-08 23:20:54'),
(19, 19, 'WordPress', 1, 1, 19, 'en', '2018-04-06 09:55:28', '2018-04-08 23:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` int(11) NOT NULL,
  `job_title_id` int(11) DEFAULT 0,
  `job_title` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `job_title_id`, `job_title`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Accountant', 1, 1, 1, 'en', '2018-04-05 16:16:40', '2018-04-08 23:47:30'),
(2, 2, 'Accounts Officer', 1, 1, 2, 'en', '2018-04-05 16:16:58', '2018-04-05 16:16:58'),
(3, 3, 'Business Development Executive', 1, 1, 3, 'en', '2018-04-05 16:17:59', '2018-04-05 16:17:59'),
(4, 4, 'Business Development Officer', 1, 1, 4, 'en', '2018-04-05 16:18:26', '2018-04-05 16:18:26'),
(5, 5, 'Call Center Agent', 1, 1, 5, 'en', '2018-04-06 17:24:47', NULL),
(6, 6, 'Computer Operator', 1, 1, 6, 'en', '2018-04-06 17:24:47', NULL),
(7, 7, 'Content Writer', 1, 1, 7, 'en', '2018-04-06 17:24:47', NULL),
(8, 8, 'Customer Representative Officer', 1, 1, 8, 'en', '2018-04-06 17:24:47', NULL),
(9, 9, 'Data Entry Operator', 1, 1, 9, 'en', '2018-04-06 17:24:47', NULL),
(10, 10, 'Graphic Designer', 1, 1, 10, 'en', '2018-04-06 17:24:47', NULL),
(11, 11, 'Marketing Executive', 1, 1, 11, 'en', '2018-04-06 17:24:47', NULL),
(12, 12, 'Marketing Manager', 1, 1, 12, 'en', '2018-04-06 17:24:47', NULL),
(13, 13, 'Office Assistant', 1, 1, 13, 'en', '2018-04-06 17:24:47', NULL),
(14, 14, 'PHP Developer', 1, 1, 14, 'en', '2018-04-06 17:24:47', NULL),
(15, 15, 'Receptionist', 1, 1, 15, 'en', '2018-04-06 17:24:47', NULL),
(16, 16, 'Sales / Marketing Executive', 1, 1, 16, 'en', '2018-04-06 17:24:47', NULL),
(17, 17, 'Sales Executive', 1, 1, 17, 'en', '2018-04-06 17:24:47', NULL),
(18, 18, 'Sales Officer', 1, 1, 18, 'en', '2018-04-06 17:24:47', NULL),
(19, 19, 'Subject Teacher', 1, 1, 19, 'en', '2018-04-06 17:24:47', NULL),
(20, 20, 'Web Developer', 1, 1, 20, 'en', '2018-04-06 17:24:47', '2018-04-08 23:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` int(11) NOT NULL,
  `job_type_id` int(11) DEFAULT 0,
  `job_type` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `job_type_id`, `job_type`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Contract', 0, 1, 1, 'en', '2018-04-06 09:24:38', '2018-04-08 23:18:35'),
(2, 2, 'Freelance', 0, 1, 2, 'en', '2018-04-06 09:25:25', '2018-04-08 23:18:35'),
(3, 3, 'Full Time/Permanent', 0, 1, 3, 'en', '2018-04-06 09:26:14', '2018-04-08 23:18:35'),
(4, 4, 'Internship', 0, 1, 4, 'en', '2018-04-06 09:26:58', '2018-04-08 23:18:27'),
(5, 5, 'Part Time', 0, 1, 5, 'en', '2018-04-06 09:29:17', '2018-04-08 23:18:35'),
(26, 1, 'Контракт', 1, 1, 26, 'ru', '2019-06-22 01:07:36', '2019-06-22 01:07:36'),
(27, 2, 'Фрилансер (свободный работник)', 1, 1, 27, 'ru', '2019-06-22 02:33:37', '2019-06-22 02:35:34'),
(28, 3, 'Полный рабочий день / постоянный', 1, 1, 28, 'ru', '2019-06-22 02:33:50', '2019-06-22 02:33:50'),
(29, 4, 'Практика', 1, 1, 29, 'ru', '2019-06-22 02:34:06', '2019-06-22 02:34:06'),
(30, 5, 'Неполная занятость', 1, 1, 30, 'ru', '2019-06-22 02:34:20', '2019-06-22 02:34:20'),
(31, 1, 'Шартнома', 0, 1, 31, 'uz', '2019-06-22 02:37:51', '2019-06-22 02:37:51'),
(32, 2, 'Эркин (Фрилансер)', 0, 1, 32, 'uz', '2019-06-22 02:38:23', '2019-06-22 02:38:23'),
(33, 3, 'Тўлиқ иш куни (Доимий)', 0, 1, 33, 'uz', '2019-06-22 02:40:56', '2019-06-22 02:40:56'),
(34, 4, 'Амалиёт', 0, 1, 34, 'uz', '2019-06-22 02:41:12', '2019-06-22 02:41:12'),
(35, 5, 'Тўлиқсиз иш вақти', 0, 1, 35, 'uz', '2019-06-22 02:45:08', '2019-06-22 02:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(250) DEFAULT NULL,
  `native` varchar(250) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `is_rtl` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `native`, `iso_code`, `is_active`, `is_rtl`, `is_default`, `created_at`, `updated_at`) VALUES
(44, 'English', 'English', 'en', 1, 0, 0, '2018-06-24 18:16:38', '2019-06-20 04:42:16'),
(193, 'Uzbek', 'Ўзбек', 'uz', 1, 0, 0, '2019-06-20 04:35:24', '2019-06-20 05:23:24'),
(194, 'Russian', 'Русский', 'ru', 1, 0, 1, '2019-06-20 04:41:49', '2019-06-20 05:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `language_levels`
--

CREATE TABLE `language_levels` (
  `id` int(11) NOT NULL,
  `language_level_id` int(11) DEFAULT 0,
  `language_level` varchar(40) NOT NULL,
  `is_default` int(1) DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 9999,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language_levels`
--

INSERT INTO `language_levels` (`id`, `language_level_id`, `language_level`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(13, 13, '3', 1, 1, 13, 'en', '2019-06-20 05:31:24', '2019-06-20 05:31:24'),
(15, 15, '4', 1, 1, 15, 'en', '2019-06-21 00:41:55', '2019-06-21 00:41:55'),
(16, 16, '5', 1, 1, 16, 'en', '2019-06-21 00:42:04', '2019-06-21 00:42:04'),
(17, 13, '3', 0, 1, 17, 'ru', '2019-06-21 00:42:25', '2019-06-21 00:42:25'),
(18, 15, '4', 0, 1, 18, 'ru', '2019-06-21 00:42:38', '2019-06-21 00:42:38'),
(19, 16, '5', 0, 1, 19, 'ru', '2019-06-21 00:42:48', '2019-06-21 00:42:48'),
(20, 13, '3', 0, 1, 20, 'uz', '2019-06-21 00:42:59', '2019-06-21 00:42:59'),
(21, 15, '4', 0, 1, 21, 'uz', '2019-06-21 00:43:13', '2019-06-21 00:43:13'),
(22, 16, '5', 0, 1, 22, 'uz', '2019-06-21 00:43:26', '2019-06-21 00:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `major_subjects`
--

CREATE TABLE `major_subjects` (
  `id` int(11) NOT NULL,
  `major_subject_id` int(11) DEFAULT 0,
  `major_subject` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `major_subjects`
--

INSERT INTO `major_subjects` (`id`, `major_subject_id`, `major_subject`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Abnormal Psychology', 1, 1, 1, 'en', '2018-06-23 20:01:47', NULL),
(2, 2, 'Accounting', 1, 1, 2, 'en', '2018-06-23 20:01:47', NULL),
(3, 3, 'Accounting & Finance', 1, 1, 3, 'en', '2018-06-23 20:01:47', NULL),
(4, 4, 'Acting and Performance', 1, 1, 4, 'en', '2018-06-23 20:01:47', NULL),
(5, 5, 'Addressing problems of learning through technology and pedagogy', 1, 1, 5, 'en', '2018-06-23 20:01:47', NULL),
(6, 6, 'Administrative Law and Accountability', 1, 1, 6, 'en', '2018-06-23 20:01:47', NULL),
(7, 7, 'Advance Computer Architecture', 1, 1, 7, 'en', '2018-06-23 20:01:47', NULL),
(8, 8, 'Advance Research Methods', 1, 1, 8, 'en', '2018-06-23 20:01:47', NULL),
(9, 9, 'Advanced Algorithms Analysis and Design', 1, 1, 9, 'en', '2018-06-23 20:01:47', NULL),
(10, 10, 'Advanced Bioinformatics', 1, 1, 10, 'en', '2018-06-23 20:01:47', NULL),
(11, 11, 'Advanced Computer Architecture-II', 1, 1, 11, 'en', '2018-06-23 20:01:47', NULL),
(12, 12, 'Advanced Computer Networks', 1, 1, 12, 'en', '2018-06-23 20:01:47', NULL),
(13, 13, 'Advanced Computing Approaches', 1, 1, 13, 'en', '2018-06-23 20:01:47', NULL),
(14, 14, 'Advanced Cost and Management Accounting', 1, 1, 14, 'en', '2018-06-23 20:01:47', NULL),
(15, 15, 'Advanced Financial Accounting', 1, 1, 15, 'en', '2018-06-23 20:01:47', NULL),
(16, 16, 'Advanced Operating Systems', 1, 1, 16, 'en', '2018-06-23 20:01:47', NULL),
(17, 17, 'Advertising', 1, 1, 17, 'en', '2018-06-23 20:01:47', NULL),
(18, 18, 'Advertising & Promotion', 1, 1, 18, 'en', '2018-06-23 20:01:47', NULL),
(19, 19, 'Advertising for Print and Electronic Media', 1, 1, 19, 'en', '2018-06-23 20:01:47', NULL),
(20, 20, 'Aeronautical & Manufacturing Engineering', 1, 1, 20, 'en', '2018-06-23 20:01:47', NULL),
(21, 21, 'Agribusiness', 1, 1, 21, 'en', '2018-06-23 20:01:47', NULL),
(22, 22, 'Agriculture & Forestry', 1, 1, 22, 'en', '2018-06-23 20:01:47', NULL),
(23, 23, 'Agriculture (general)', 1, 1, 23, 'en', '2018-06-23 20:01:47', NULL),
(24, 24, 'Agronomy & Plant Science', 1, 1, 24, 'en', '2018-06-23 20:01:47', NULL),
(25, 25, 'American Studies', 1, 1, 25, 'en', '2018-06-23 20:01:47', NULL),
(26, 26, 'Anatomy & Physiology', 1, 1, 26, 'en', '2018-06-23 20:01:47', NULL),
(27, 27, 'Animal Science', 1, 1, 27, 'en', '2018-06-23 20:01:47', NULL),
(28, 28, 'Anthropological Science', 1, 1, 28, 'en', '2018-06-23 20:01:47', NULL),
(29, 29, 'Anthropology', 1, 1, 29, 'en', '2018-06-23 20:01:47', NULL),
(30, 30, 'Aquaculture & Fisheries', 1, 1, 30, 'en', '2018-06-23 20:01:47', NULL),
(31, 31, 'Archaeology', 1, 1, 31, 'en', '2018-06-23 20:01:47', NULL),
(32, 32, 'Architecture', 1, 1, 32, 'en', '2018-06-23 20:01:47', NULL),
(33, 33, 'Art & Design', 1, 1, 33, 'en', '2018-06-23 20:01:47', NULL),
(34, 34, 'Art History & Theory', 1, 1, 34, 'en', '2018-06-23 20:01:47', NULL),
(35, 35, 'Artificial Intelligence', 1, 1, 35, 'en', '2018-06-23 20:01:47', NULL),
(36, 36, 'Asian Studies', 1, 1, 36, 'en', '2018-06-23 20:01:47', NULL),
(37, 37, 'Astronomy', 1, 1, 37, 'en', '2018-06-23 20:01:47', NULL),
(38, 38, 'Audio-Visual Editing', 1, 1, 38, 'en', '2018-06-23 20:01:47', NULL),
(39, 39, 'Aural & Oral Sciences', 1, 1, 39, 'en', '2018-06-23 20:01:47', NULL),
(40, 40, 'Aviation  ', 1, 1, 40, 'en', '2018-06-23 20:01:47', NULL),
(41, 41, 'Aviation Management', 1, 1, 41, 'en', '2018-06-23 20:01:47', NULL),
(42, 42, 'Banking Laws & Practices', 1, 1, 42, 'en', '2018-06-23 20:01:47', NULL),
(43, 43, 'Biblical Studies', 1, 1, 43, 'en', '2018-06-23 20:01:47', NULL),
(44, 44, 'Biochemistry', 1, 1, 44, 'en', '2018-06-23 20:01:47', NULL),
(45, 45, 'Biochemistry-I', 1, 1, 45, 'en', '2018-06-23 20:01:47', NULL),
(46, 46, 'Bioethics, Biosecurity and Biosafety', 1, 1, 46, 'en', '2018-06-23 20:01:47', NULL),
(47, 47, 'Bioinformatics', 1, 1, 47, 'en', '2018-06-23 20:01:47', NULL),
(48, 48, 'Bioinformatics I (Essentials of Genome Informatics)', 1, 1, 48, 'en', '2018-06-23 20:01:47', NULL),
(49, 49, 'Biological Sciences', 1, 1, 49, 'en', '2018-06-23 20:01:47', NULL),
(50, 50, 'Biology (general)', 1, 1, 50, 'en', '2018-06-23 20:01:47', NULL),
(51, 51, 'Biomedical Engineering', 1, 1, 51, 'en', '2018-06-23 20:01:47', NULL),
(52, 52, 'Biomedical Sciences (not elsewhere classified)', 1, 1, 52, 'en', '2018-06-23 20:01:47', NULL),
(53, 53, 'Biotechnology', 1, 1, 53, 'en', '2018-06-23 20:01:47', NULL),
(54, 54, 'Botany', 1, 1, 54, 'en', '2018-06-23 20:01:47', NULL),
(55, 55, 'Brand Management', 1, 1, 55, 'en', '2018-06-23 20:01:47', NULL),
(56, 56, 'Building', 1, 1, 56, 'en', '2018-06-23 20:01:47', NULL),
(57, 57, 'Business & Labor Law', 1, 1, 57, 'en', '2018-06-23 20:01:47', NULL),
(58, 58, 'Business & Management Studies', 1, 1, 58, 'en', '2018-06-23 20:01:47', NULL),
(59, 59, 'Business and Technical English Writing', 1, 1, 59, 'en', '2018-06-23 20:01:47', NULL),
(60, 60, 'Business Communication', 1, 1, 60, 'en', '2018-06-23 20:01:47', NULL),
(61, 61, 'Business Econometrics', 1, 1, 61, 'en', '2018-06-23 20:01:47', NULL),
(62, 62, 'Business Ethics', 1, 1, 62, 'en', '2018-06-23 20:01:47', NULL),
(63, 63, 'Business Finance', 1, 1, 63, 'en', '2018-06-23 20:01:47', NULL),
(64, 64, 'Business Mathematics & Statistics', 1, 1, 64, 'en', '2018-06-23 20:01:47', NULL),
(65, 65, 'Calculus And Analytical Geometry', 1, 1, 65, 'en', '2018-06-23 20:01:47', NULL),
(66, 66, 'Calculus II', 1, 1, 66, 'en', '2018-06-23 20:01:47', NULL),
(67, 67, 'Camera basics, principles and practices', 1, 1, 67, 'en', '2018-06-23 20:01:47', NULL),
(68, 68, 'Cell Biology', 1, 1, 68, 'en', '2018-06-23 20:01:47', NULL),
(69, 69, 'Celtic Studies', 1, 1, 69, 'en', '2018-06-23 20:01:47', NULL),
(70, 70, 'Change Management', 1, 1, 70, 'en', '2018-06-23 20:01:47', NULL),
(71, 71, 'Chemical & Process Engineering', 1, 1, 71, 'en', '2018-06-23 20:01:47', NULL),
(72, 72, 'Chemical Engineering', 1, 1, 72, 'en', '2018-06-23 20:01:47', NULL),
(73, 73, 'Chemistry', 1, 1, 73, 'en', '2018-06-23 20:01:47', NULL),
(74, 74, 'Child Development', 1, 1, 74, 'en', '2018-06-23 20:01:47', NULL),
(75, 75, 'Chinese', 1, 1, 75, 'en', '2018-06-23 20:01:47', NULL),
(76, 76, 'Chinese Studies', 1, 1, 76, 'en', '2018-06-23 20:01:47', NULL),
(77, 77, 'Christian Thought & History', 1, 1, 77, 'en', '2018-06-23 20:01:47', NULL),
(78, 78, 'Circuit Theory', 1, 1, 78, 'en', '2018-06-23 20:01:47', NULL),
(79, 79, 'Civil Engineering', 1, 1, 79, 'en', '2018-06-23 20:01:47', NULL),
(80, 80, 'Classical Studies', 1, 1, 80, 'en', '2018-06-23 20:01:47', NULL),
(81, 81, 'Classics & Ancient History', 1, 1, 81, 'en', '2018-06-23 20:01:47', NULL),
(82, 82, 'Classroom Assessment', 1, 1, 82, 'en', '2018-06-23 20:01:47', NULL),
(83, 83, 'Classroom Management', 1, 1, 83, 'en', '2018-06-23 20:01:47', NULL),
(84, 84, 'Clinical Psychology', 1, 1, 84, 'en', '2018-06-23 20:01:47', NULL),
(85, 85, 'Clothing & Textiles', 1, 1, 85, 'en', '2018-06-23 20:01:47', NULL),
(86, 86, 'Cognitive Psychology', 1, 1, 86, 'en', '2018-06-23 20:01:47', NULL),
(87, 87, 'Commercial Law', 1, 1, 87, 'en', '2018-06-23 20:01:47', NULL),
(88, 88, 'Communication & Media Studies', 1, 1, 88, 'en', '2018-06-23 20:01:47', NULL),
(89, 89, 'Communication & Professional Writing', 1, 1, 89, 'en', '2018-06-23 20:01:47', NULL),
(90, 90, 'Communication skills', 1, 1, 90, 'en', '2018-06-23 20:01:47', NULL),
(91, 91, 'Compiler Construction', 1, 1, 91, 'en', '2018-06-23 20:01:47', NULL),
(92, 92, 'Complementary Medicine', 1, 1, 92, 'en', '2018-06-23 20:01:47', NULL),
(93, 93, 'Computer Architecture and Assembly Language Programming', 1, 1, 93, 'en', '2018-06-23 20:01:47', NULL),
(94, 94, 'Computer Engineering', 1, 1, 94, 'en', '2018-06-23 20:01:47', NULL),
(95, 95, 'Computer Graphics', 1, 1, 95, 'en', '2018-06-23 20:01:47', NULL),
(96, 96, 'Computer Network', 1, 1, 96, 'en', '2018-06-23 20:01:47', NULL),
(97, 97, 'Computer Science', 1, 1, 97, 'en', '2018-06-23 20:01:47', NULL),
(98, 98, 'Conflict Management', 1, 1, 98, 'en', '2018-06-23 20:01:47', NULL),
(99, 99, 'Conflict Resolution', 1, 1, 99, 'en', '2018-06-23 20:01:47', NULL),
(100, 100, 'Construction & Project Management', 1, 1, 100, 'en', '2018-06-23 20:01:47', NULL),
(101, 101, 'Consumer Banking', 1, 1, 101, 'en', '2018-06-23 20:01:47', NULL),
(102, 102, 'Consumer Behaviour', 1, 1, 102, 'en', '2018-06-23 20:01:47', NULL),
(103, 103, 'Consumer Psychology', 1, 1, 103, 'en', '2018-06-23 20:01:47', NULL),
(104, 104, 'Corporate Finance', 1, 1, 104, 'en', '2018-06-23 20:01:47', NULL),
(105, 105, 'Corporate Law', 1, 1, 105, 'en', '2018-06-23 20:01:47', NULL),
(106, 106, 'Cost & Management Accounting', 1, 1, 106, 'en', '2018-06-23 20:01:47', NULL),
(107, 107, 'Counselling', 1, 1, 107, 'en', '2018-06-23 20:01:47', NULL),
(108, 108, 'Creative Writing', 1, 1, 108, 'en', '2018-06-23 20:01:47', NULL),
(109, 109, 'Credit & Risk Management', 1, 1, 109, 'en', '2018-06-23 20:01:47', NULL),
(110, 110, 'Criminology', 1, 1, 110, 'en', '2018-06-23 20:01:47', NULL),
(111, 111, 'Criminology & Justice', 1, 1, 111, 'en', '2018-06-23 20:01:47', NULL),
(112, 112, 'Crisis Management', 1, 1, 112, 'en', '2018-06-23 20:01:47', NULL),
(113, 113, 'Critical Thinking and reflective Practice', 1, 1, 113, 'en', '2018-06-23 20:01:47', NULL),
(114, 114, 'Cultural Anthropology', 1, 1, 114, 'en', '2018-06-23 20:01:47', NULL),
(115, 115, 'Cultural Studies', 1, 1, 115, 'en', '2018-06-23 20:01:47', NULL),
(116, 116, 'Curriculum Development', 1, 1, 116, 'en', '2018-06-23 20:01:47', NULL),
(117, 117, 'Customer Relationship Management', 1, 1, 117, 'en', '2018-06-23 20:01:47', NULL),
(118, 118, 'Dance', 1, 1, 118, 'en', '2018-06-23 20:01:47', NULL),
(119, 119, 'Data Communication', 1, 1, 119, 'en', '2018-06-23 20:01:47', NULL),
(120, 120, 'Data Structures', 1, 1, 120, 'en', '2018-06-23 20:01:47', NULL),
(121, 121, 'Data Warehousing', 1, 1, 121, 'en', '2018-06-23 20:01:47', NULL),
(122, 122, 'Database Management Systems', 1, 1, 122, 'en', '2018-06-23 20:01:47', NULL),
(123, 123, 'Database Modeling and Design', 1, 1, 123, 'en', '2018-06-23 20:01:47', NULL),
(124, 124, 'Defence Studies', 1, 1, 124, 'en', '2018-06-23 20:01:47', NULL),
(125, 125, 'Dental Technology', 1, 1, 125, 'en', '2018-06-23 20:01:47', NULL),
(126, 126, 'Dentistry', 1, 1, 126, 'en', '2018-06-23 20:01:47', NULL),
(127, 127, 'Design (general)', 1, 1, 127, 'en', '2018-06-23 20:01:47', NULL),
(128, 128, 'Development Economics', 1, 1, 128, 'en', '2018-06-23 20:01:47', NULL),
(129, 129, 'Differential Equations', 1, 1, 129, 'en', '2018-06-23 20:01:47', NULL),
(130, 130, 'Digital Logic Design', 1, 1, 130, 'en', '2018-06-23 20:01:47', NULL),
(131, 131, 'Discrete Mathematics', 1, 1, 131, 'en', '2018-06-23 20:01:47', NULL),
(132, 132, 'Distributed DBMS', 1, 1, 132, 'en', '2018-06-23 20:01:47', NULL),
(133, 133, 'Drama / Theatre Studies', 1, 1, 133, 'en', '2018-06-23 20:01:47', NULL),
(134, 134, 'Drama, Dance & Cinematics', 1, 1, 134, 'en', '2018-06-23 20:01:47', NULL),
(135, 135, 'Earth Science (general)', 1, 1, 135, 'en', '2018-06-23 20:01:47', NULL),
(136, 136, 'East & South Asian Studies', 1, 1, 136, 'en', '2018-06-23 20:01:47', NULL),
(137, 137, 'Ecology', 1, 1, 137, 'en', '2018-06-23 20:01:47', NULL),
(138, 138, 'E-Commerce', 1, 1, 138, 'en', '2018-06-23 20:01:47', NULL),
(139, 139, 'Economics', 1, 1, 139, 'en', '2018-06-23 20:01:47', NULL),
(140, 140, 'Education', 1, 1, 140, 'en', '2018-06-23 20:01:47', NULL),
(141, 141, 'Education Development in Pakistan', 1, 1, 141, 'en', '2018-06-23 20:01:47', NULL),
(142, 142, 'Education Studies', 1, 1, 142, 'en', '2018-06-23 20:01:47', NULL),
(143, 143, 'Educational Governance Policy and Practice', 1, 1, 143, 'en', '2018-06-23 20:01:47', NULL),
(144, 144, 'Educational Leadership and Management', 1, 1, 144, 'en', '2018-06-23 20:01:47', NULL),
(145, 145, 'Educational Psychology', 1, 1, 145, 'en', '2018-06-23 20:01:47', NULL),
(146, 146, 'Electrical & Electronic Engineering', 1, 1, 146, 'en', '2018-06-23 20:01:47', NULL),
(147, 147, 'Electrical Engineering', 1, 1, 147, 'en', '2018-06-23 20:01:47', NULL),
(148, 148, 'Electronics', 1, 1, 148, 'en', '2018-06-23 20:01:47', NULL),
(149, 149, 'Elementary English', 1, 1, 149, 'en', '2018-06-23 20:01:47', NULL),
(150, 150, 'Elementary Mathematics', 1, 1, 150, 'en', '2018-06-23 20:01:47', NULL),
(151, 151, 'Energy Studies & Management', 1, 1, 151, 'en', '2018-06-23 20:01:47', NULL),
(152, 152, 'Engineering Science', 1, 1, 152, 'en', '2018-06-23 20:01:47', NULL),
(153, 153, 'English', 1, 1, 153, 'en', '2018-06-23 20:01:47', NULL),
(154, 154, 'English as a Second Language', 1, 1, 154, 'en', '2018-06-23 20:01:47', NULL),
(155, 155, 'English Comprehension', 1, 1, 155, 'en', '2018-06-23 20:01:47', NULL),
(156, 156, 'Entrepreneurship', 1, 1, 156, 'en', '2018-06-23 20:01:47', NULL),
(157, 157, 'Environmental & Natural Resources Engineering', 1, 1, 157, 'en', '2018-06-23 20:01:47', NULL),
(158, 158, 'Environmental Health', 1, 1, 158, 'en', '2018-06-23 20:01:47', NULL),
(159, 159, 'Environmental Psychology', 1, 1, 159, 'en', '2018-06-23 20:01:47', NULL),
(160, 160, 'Environmental Science', 1, 1, 160, 'en', '2018-06-23 20:01:47', NULL),
(161, 161, 'Environmental Studies', 1, 1, 161, 'en', '2018-06-23 20:01:47', NULL),
(162, 162, 'Essentials of Genetics', 1, 1, 162, 'en', '2018-06-23 20:01:47', NULL),
(163, 163, 'Ethics', 1, 1, 163, 'en', '2018-06-23 20:01:47', NULL),
(164, 164, 'Ethics (for Non-Muslims)', 1, 1, 164, 'en', '2018-06-23 20:01:47', NULL),
(165, 165, 'European Languages & Cultures', 1, 1, 165, 'en', '2018-06-23 20:01:48', NULL),
(166, 166, 'European Studies', 1, 1, 166, 'en', '2018-06-23 20:01:48', NULL),
(167, 167, 'Fashion', 1, 1, 167, 'en', '2018-06-23 20:01:48', NULL),
(168, 168, 'Fashion Design', 1, 1, 168, 'en', '2018-06-23 20:01:48', NULL),
(169, 169, 'Feature & Column Writing', 1, 1, 169, 'en', '2018-06-23 20:01:48', NULL),
(170, 170, 'Film & Media Studies', 1, 1, 170, 'en', '2018-06-23 20:01:48', NULL),
(171, 171, 'Film Making', 1, 1, 171, 'en', '2018-06-23 20:01:48', NULL),
(172, 172, 'Film-making', 1, 1, 172, 'en', '2018-06-23 20:01:48', NULL),
(173, 173, 'Finance', 1, 1, 173, 'en', '2018-06-23 20:01:48', NULL),
(174, 174, 'Financial Accounting', 1, 1, 174, 'en', '2018-06-23 20:01:48', NULL),
(175, 175, 'Financial Accounting II', 1, 1, 175, 'en', '2018-06-23 20:01:48', NULL),
(176, 176, 'Financial Management', 1, 1, 176, 'en', '2018-06-23 20:01:48', NULL),
(177, 177, 'Financial Statement Analysis', 1, 1, 177, 'en', '2018-06-23 20:01:48', NULL),
(178, 178, 'Fine Arts', 1, 1, 178, 'en', '2018-06-23 20:01:48', NULL),
(179, 179, 'Food Science', 1, 1, 179, 'en', '2018-06-23 20:01:48', NULL),
(180, 180, 'Forensic Analytical Science', 1, 1, 180, 'en', '2018-06-23 20:01:48', NULL),
(181, 181, 'Forensic Psychology', 1, 1, 181, 'en', '2018-06-23 20:01:48', NULL),
(182, 182, 'Forensic Science', 1, 1, 182, 'en', '2018-06-23 20:01:48', NULL),
(183, 183, 'Forestry', 1, 1, 183, 'en', '2018-06-23 20:01:48', NULL),
(184, 184, 'Formal Methods for Software Engineering', 1, 1, 184, 'en', '2018-06-23 20:01:48', NULL),
(185, 185, 'Foundations of Education', 1, 1, 185, 'en', '2018-06-23 20:01:48', NULL),
(186, 186, 'French', 1, 1, 186, 'en', '2018-06-23 20:01:48', NULL),
(187, 187, 'Fundamentals of Algorithms', 1, 1, 187, 'en', '2018-06-23 20:01:48', NULL),
(188, 188, 'Fundamentals of Auditing', 1, 1, 188, 'en', '2018-06-23 20:01:48', NULL),
(189, 189, 'Fundamentals of Public Relations', 1, 1, 189, 'en', '2018-06-23 20:01:48', NULL),
(190, 190, 'Gender Issues in Psychology', 1, 1, 190, 'en', '2018-06-23 20:01:48', NULL),
(191, 191, 'Gender Studies', 1, 1, 191, 'en', '2018-06-23 20:01:48', NULL),
(192, 192, 'Gene Manipulation and Genetic Engineering', 1, 1, 192, 'en', '2018-06-23 20:01:48', NULL),
(193, 193, 'General Engineering', 1, 1, 193, 'en', '2018-06-23 20:01:48', NULL),
(194, 194, 'General Mathematics', 1, 1, 194, 'en', '2018-06-23 20:01:48', NULL),
(195, 195, 'General Methods of Teaching', 1, 1, 195, 'en', '2018-06-23 20:01:48', NULL),
(196, 196, 'General Science', 1, 1, 196, 'en', '2018-06-23 20:01:48', NULL),
(197, 197, 'Genetics', 1, 1, 197, 'en', '2018-06-23 20:01:48', NULL),
(198, 198, 'Geography', 1, 1, 198, 'en', '2018-06-23 20:01:48', NULL),
(199, 199, 'Geography & Environmental Sciences', 1, 1, 199, 'en', '2018-06-23 20:01:48', NULL),
(200, 200, 'Geology', 1, 1, 200, 'en', '2018-06-23 20:01:48', NULL),
(201, 201, 'German', 1, 1, 201, 'en', '2018-06-23 20:01:48', NULL),
(202, 202, 'Globalization of Media', 1, 1, 202, 'en', '2018-06-23 20:01:48', NULL),
(203, 203, 'Graphic Design', 1, 1, 203, 'en', '2018-06-23 20:01:48', NULL),
(204, 204, 'Greek', 1, 1, 204, 'en', '2018-06-23 20:01:48', NULL),
(205, 205, 'Health Promotion', 1, 1, 205, 'en', '2018-06-23 20:01:48', NULL),
(206, 206, 'Health Psychology', 1, 1, 206, 'en', '2018-06-23 20:01:48', NULL),
(207, 207, 'History', 1, 1, 207, 'en', '2018-06-23 20:01:48', NULL),
(208, 208, 'History & Systems of Psychology', 1, 1, 208, 'en', '2018-06-23 20:01:48', NULL),
(209, 209, 'History of Art, Architecture & Design', 1, 1, 209, 'en', '2018-06-23 20:01:48', NULL),
(210, 210, 'Hospitality Management', 1, 1, 210, 'en', '2018-06-23 20:01:48', NULL),
(211, 211, 'Hospitality, Leisure, Recreation & Tourism', 1, 1, 211, 'en', '2018-06-23 20:01:48', NULL),
(212, 212, 'Human Computer Interaction', 1, 1, 212, 'en', '2018-06-23 20:01:48', NULL),
(213, 213, 'Human Development Studies', 1, 1, 213, 'en', '2018-06-23 20:01:48', NULL),
(214, 214, 'Human Nutrition', 1, 1, 214, 'en', '2018-06-23 20:01:48', NULL),
(215, 215, 'Human Relations', 1, 1, 215, 'en', '2018-06-23 20:01:48', NULL),
(216, 216, 'Human Resource Development', 1, 1, 216, 'en', '2018-06-23 20:01:48', NULL),
(217, 217, 'Human Resource Management', 1, 1, 217, 'en', '2018-06-23 20:01:48', NULL),
(218, 218, 'Iberian Languages/Hispanic Studies', 1, 1, 218, 'en', '2018-06-23 20:01:48', NULL),
(219, 219, 'Information Retrieval Techniques', 1, 1, 219, 'en', '2018-06-23 20:01:48', NULL),
(220, 220, 'Information Science', 1, 1, 220, 'en', '2018-06-23 20:01:48', NULL),
(221, 221, 'Information Systems', 1, 1, 221, 'en', '2018-06-23 20:01:48', NULL),
(222, 222, 'International Business', 1, 1, 222, 'en', '2018-06-23 20:01:48', NULL),
(223, 223, 'International Communication', 1, 1, 223, 'en', '2018-06-23 20:01:48', NULL),
(224, 224, 'International Marketing', 1, 1, 224, 'en', '2018-06-23 20:01:48', NULL),
(225, 225, 'International Relations', 1, 1, 225, 'en', '2018-06-23 20:01:48', NULL),
(226, 226, 'International Studies', 1, 1, 226, 'en', '2018-06-23 20:01:48', NULL),
(227, 227, 'Interpreting & Translating', 1, 1, 227, 'en', '2018-06-23 20:01:48', NULL),
(228, 228, 'Introduction to Broadcasting', 1, 1, 228, 'en', '2018-06-23 20:01:48', NULL),
(229, 229, 'Introduction To Business', 1, 1, 229, 'en', '2018-06-23 20:01:48', NULL),
(230, 230, 'Introduction to Computing', 1, 1, 230, 'en', '2018-06-23 20:01:48', NULL),
(231, 231, 'Introduction to Guidance and Counseling', 1, 1, 231, 'en', '2018-06-23 20:01:48', NULL),
(232, 232, 'Introduction to Mass Communication', 1, 1, 232, 'en', '2018-06-23 20:01:48', NULL),
(233, 233, 'Introduction to Network Design & Analysis', 1, 1, 233, 'en', '2018-06-23 20:01:48', NULL),
(234, 234, 'Introduction to Programming', 1, 1, 234, 'en', '2018-06-23 20:01:48', NULL),
(235, 235, 'Introduction to Psychology', 1, 1, 235, 'en', '2018-06-23 20:01:48', NULL),
(236, 236, 'Introduction to Public Administration', 1, 1, 236, 'en', '2018-06-23 20:01:48', NULL),
(237, 237, 'Introduction to Sociology', 1, 1, 237, 'en', '2018-06-23 20:01:48', NULL),
(238, 238, 'Introduction to Web Services Development', 1, 1, 238, 'en', '2018-06-23 20:01:48', NULL),
(239, 239, 'Investment Analysis & Portfolio Management', 1, 1, 239, 'en', '2018-06-23 20:01:48', NULL),
(240, 240, 'Islamic Studies', 1, 1, 240, 'en', '2018-06-23 20:01:48', NULL),
(241, 241, 'Italian', 1, 1, 241, 'en', '2018-06-23 20:01:48', NULL),
(242, 242, 'Japanese', 1, 1, 242, 'en', '2018-06-23 20:01:48', NULL),
(243, 243, 'Japanese Studies', 1, 1, 243, 'en', '2018-06-23 20:01:48', NULL),
(244, 244, 'Journalism', 1, 1, 244, 'en', '2018-06-23 20:01:48', NULL),
(245, 245, 'Journalistic Writing', 1, 1, 245, 'en', '2018-06-23 20:01:48', NULL),
(246, 246, 'Knowledge Management', 1, 1, 246, 'en', '2018-06-23 20:01:48', NULL),
(247, 247, 'Korean', 1, 1, 247, 'en', '2018-06-23 20:01:48', NULL),
(248, 248, 'Labour & Industrial Relations', 1, 1, 248, 'en', '2018-06-23 20:01:48', NULL),
(249, 249, 'Land & Property Management', 1, 1, 249, 'en', '2018-06-23 20:01:48', NULL),
(250, 250, 'Land Use Planning & Management', 1, 1, 250, 'en', '2018-06-23 20:01:48', NULL),
(251, 251, 'Latin', 1, 1, 251, 'en', '2018-06-23 20:01:48', NULL),
(252, 252, 'Law', 1, 1, 252, 'en', '2018-06-23 20:01:48', NULL),
(253, 253, 'Leadership & Team Management', 1, 1, 253, 'en', '2018-06-23 20:01:48', NULL),
(254, 254, 'Learning Theories', 1, 1, 254, 'en', '2018-06-23 20:01:48', NULL),
(255, 255, 'Librarianship & Information Management', 1, 1, 255, 'en', '2018-06-23 20:01:48', NULL),
(256, 256, 'Lighting for TV Production', 1, 1, 256, 'en', '2018-06-23 20:01:48', NULL),
(257, 257, 'Linear Algebra', 1, 1, 257, 'en', '2018-06-23 20:01:48', NULL),
(258, 258, 'Linguistics', 1, 1, 258, 'en', '2018-06-23 20:01:48', NULL),
(259, 259, 'Macroeconomics', 1, 1, 259, 'en', '2018-06-23 20:01:48', NULL),
(260, 260, 'Management', 1, 1, 260, 'en', '2018-06-23 20:01:48', NULL),
(261, 261, 'Management of Financial Institutions', 1, 1, 261, 'en', '2018-06-23 20:01:48', NULL),
(262, 262, 'Management Skills', 1, 1, 262, 'en', '2018-06-23 20:01:48', NULL),
(263, 263, 'Managerial Accounting', 1, 1, 263, 'en', '2018-06-23 20:01:48', NULL),
(264, 264, 'Managerial Economics', 1, 1, 264, 'en', '2018-06-23 20:01:48', NULL),
(265, 265, 'Māori Development', 1, 1, 265, 'en', '2018-06-23 20:01:48', NULL),
(266, 266, 'Māori Health', 1, 1, 266, 'en', '2018-06-23 20:01:48', NULL),
(267, 267, 'Māori Language / Te Reo Māori', 1, 1, 267, 'en', '2018-06-23 20:01:48', NULL),
(268, 268, 'Māori Media Studies', 1, 1, 268, 'en', '2018-06-23 20:01:48', NULL),
(269, 269, 'Māori Studies', 1, 1, 269, 'en', '2018-06-23 20:01:48', NULL),
(270, 270, 'Māori Visual Arts', 1, 1, 270, 'en', '2018-06-23 20:01:48', NULL),
(271, 271, 'Marine Biology', 1, 1, 271, 'en', '2018-06-23 20:01:48', NULL),
(272, 272, 'Marine Science', 1, 1, 272, 'en', '2018-06-23 20:01:48', NULL),
(273, 273, 'Maritime Engineering', 1, 1, 273, 'en', '2018-06-23 20:01:48', NULL),
(274, 274, 'Marketing', 1, 1, 274, 'en', '2018-06-23 20:01:48', NULL),
(275, 275, 'Marketing Management', 1, 1, 275, 'en', '2018-06-23 20:01:48', NULL),
(276, 276, 'Marketing Research', 1, 1, 276, 'en', '2018-06-23 20:01:48', NULL),
(277, 277, 'Mass Communication Law & Ethics', 1, 1, 277, 'en', '2018-06-23 20:01:48', NULL),
(278, 278, 'Mass Media in Pakistan', 1, 1, 278, 'en', '2018-06-23 20:01:48', NULL),
(279, 279, 'Materials Technology', 1, 1, 279, 'en', '2018-06-23 20:01:48', NULL),
(280, 280, 'Mathematical Methods', 1, 1, 280, 'en', '2018-06-23 20:01:48', NULL),
(281, 281, 'Mathematics', 1, 1, 281, 'en', '2018-06-23 20:01:48', NULL),
(282, 282, 'Mechanical Engineering', 1, 1, 282, 'en', '2018-06-23 20:01:48', NULL),
(283, 283, 'Mechatronics', 1, 1, 283, 'en', '2018-06-23 20:01:48', NULL),
(284, 284, 'Medical Laboratory Science', 1, 1, 284, 'en', '2018-06-23 20:01:48', NULL),
(285, 285, 'Medical Technology', 1, 1, 285, 'en', '2018-06-23 20:01:48', NULL),
(286, 286, 'Medicine', 1, 1, 286, 'en', '2018-06-23 20:01:48', NULL),
(287, 287, 'Microbiology', 1, 1, 287, 'en', '2018-06-23 20:01:48', NULL),
(288, 288, 'Microeconomics', 1, 1, 288, 'en', '2018-06-23 20:01:48', NULL),
(289, 289, 'Middle Eastern & African Studies', 1, 1, 289, 'en', '2018-06-23 20:01:48', NULL),
(290, 290, 'Midwifery', 1, 1, 290, 'en', '2018-06-23 20:01:48', NULL),
(291, 291, 'Mobile and Pervasive Computing', 1, 1, 291, 'en', '2018-06-23 20:01:48', NULL),
(292, 292, 'Modern Biotechnology: Principles & Applications', 1, 1, 292, 'en', '2018-06-23 20:01:48', NULL),
(293, 293, 'Modern Programming Languages', 1, 1, 293, 'en', '2018-06-23 20:01:48', NULL),
(294, 294, 'Molecular Biology', 1, 1, 294, 'en', '2018-06-23 20:01:48', NULL),
(295, 295, 'Money & Banking', 1, 1, 295, 'en', '2018-06-23 20:01:48', NULL),
(296, 296, 'Multivariable Calculus', 1, 1, 296, 'en', '2018-06-23 20:01:48', NULL),
(297, 297, 'Music', 1, 1, 297, 'en', '2018-06-23 20:01:48', NULL),
(298, 298, 'Music Composition', 1, 1, 298, 'en', '2018-06-23 20:01:48', NULL),
(299, 299, 'Music Performance', 1, 1, 299, 'en', '2018-06-23 20:01:48', NULL),
(300, 300, 'Music Production', 1, 1, 300, 'en', '2018-06-23 20:01:48', NULL),
(301, 301, 'Music Studies', 1, 1, 301, 'en', '2018-06-23 20:01:48', NULL),
(302, 302, 'Nanoscience', 1, 1, 302, 'en', '2018-06-23 20:01:48', NULL),
(303, 303, 'Network Performance Evaluation', 1, 1, 303, 'en', '2018-06-23 20:01:48', NULL),
(304, 304, 'Network Security', 1, 1, 304, 'en', '2018-06-23 20:01:48', NULL),
(305, 305, 'Neurological Bases of Behavior', 1, 1, 305, 'en', '2018-06-23 20:01:48', NULL),
(306, 306, 'Neuroscience', 1, 1, 306, 'en', '2018-06-23 20:01:48', NULL),
(307, 307, 'New Zealand Sign Language', 1, 1, 307, 'en', '2018-06-23 20:01:48', NULL),
(308, 308, 'Numerical Analysis', 1, 1, 308, 'en', '2018-06-23 20:01:48', NULL),
(309, 309, 'Nursing', 1, 1, 309, 'en', '2018-06-23 20:01:48', NULL),
(310, 310, 'Object Oriented DBMS', 1, 1, 310, 'en', '2018-06-23 20:01:48', NULL),
(311, 311, 'Object Oriented Programming', 1, 1, 311, 'en', '2018-06-23 20:01:48', NULL),
(312, 312, 'Occupational Therapy', 1, 1, 312, 'en', '2018-06-23 20:01:48', NULL),
(313, 313, 'Occupational Therapy & Rehabilitation', 1, 1, 313, 'en', '2018-06-23 20:01:48', NULL),
(314, 314, 'Operating Systems', 1, 1, 314, 'en', '2018-06-23 20:01:48', NULL),
(315, 315, 'Operations Research', 1, 1, 315, 'en', '2018-06-23 20:01:48', NULL),
(316, 316, 'Optometry', 1, 1, 316, 'en', '2018-06-23 20:01:48', NULL),
(317, 317, 'Optometry, Ophthalmology & Orthoptics', 1, 1, 317, 'en', '2018-06-23 20:01:48', NULL),
(318, 318, 'Oral Health', 1, 1, 318, 'en', '2018-06-23 20:01:48', NULL),
(319, 319, 'Organization Theory & Design', 1, 1, 319, 'en', '2018-06-23 20:01:48', NULL),
(320, 320, 'Organizational Behaviour', 1, 1, 320, 'en', '2018-06-23 20:01:48', NULL),
(321, 321, 'Organizational Development', 1, 1, 321, 'en', '2018-06-23 20:01:48', NULL),
(322, 322, 'Organizational Psychology', 1, 1, 322, 'en', '2018-06-23 20:01:48', NULL),
(323, 323, 'Pacific Island Studies', 1, 1, 323, 'en', '2018-06-23 20:01:48', NULL),
(324, 324, 'Pakistan Studies', 1, 1, 324, 'en', '2018-06-23 20:01:48', NULL),
(325, 325, 'Paramedicine', 1, 1, 325, 'en', '2018-06-23 20:01:48', NULL),
(326, 326, 'Pastoral Studies', 1, 1, 326, 'en', '2018-06-23 20:01:48', NULL),
(327, 327, 'Performance Management', 1, 1, 327, 'en', '2018-06-23 20:01:48', NULL),
(328, 328, 'Personality Psychology', 1, 1, 328, 'en', '2018-06-23 20:01:48', NULL),
(329, 329, 'Pharmacology', 1, 1, 329, 'en', '2018-06-23 20:01:48', NULL),
(330, 330, 'Pharmacology & Pharmacy', 1, 1, 330, 'en', '2018-06-23 20:01:48', NULL),
(331, 331, 'Pharmacy', 1, 1, 331, 'en', '2018-06-23 20:01:48', NULL),
(332, 332, 'Philosophy', 1, 1, 332, 'en', '2018-06-23 20:01:48', NULL),
(333, 333, 'Philosophy of Education', 1, 1, 333, 'en', '2018-06-23 20:01:48', NULL),
(334, 334, 'Photography', 1, 1, 334, 'en', '2018-06-23 20:01:48', NULL),
(335, 335, 'Physics', 1, 1, 335, 'en', '2018-06-23 20:01:48', NULL),
(336, 336, 'Physics and Astronomy', 1, 1, 336, 'en', '2018-06-23 20:01:48', NULL),
(337, 337, 'Physiology', 1, 1, 337, 'en', '2018-06-23 20:01:48', NULL),
(338, 338, 'Physiotherapy', 1, 1, 338, 'en', '2018-06-23 20:01:48', NULL),
(339, 339, 'Podiatry', 1, 1, 339, 'en', '2018-06-23 20:01:48', NULL),
(340, 340, 'Political Studies', 1, 1, 340, 'en', '2018-06-23 20:01:48', NULL),
(341, 341, 'Politics', 1, 1, 341, 'en', '2018-06-23 20:01:48', NULL),
(342, 342, 'Population & Development Studies', 1, 1, 342, 'en', '2018-06-23 20:01:48', NULL),
(343, 343, 'Population Health', 1, 1, 343, 'en', '2018-06-23 20:01:48', NULL),
(344, 344, 'Positive Psychology', 1, 1, 344, 'en', '2018-06-23 20:01:48', NULL),
(345, 345, 'Principles of Management', 1, 1, 345, 'en', '2018-06-23 20:01:48', NULL),
(346, 346, 'Principles of Marketing', 1, 1, 346, 'en', '2018-06-23 20:01:48', NULL),
(347, 347, 'Probability and Stochastic Processes', 1, 1, 347, 'en', '2018-06-23 20:01:48', NULL),
(348, 348, 'Product & Industrial Design', 1, 1, 348, 'en', '2018-06-23 20:01:48', NULL),
(349, 349, 'Production / Operations Management', 1, 1, 349, 'en', '2018-06-23 20:01:48', NULL),
(350, 350, 'Project Management', 1, 1, 350, 'en', '2018-06-23 20:01:48', NULL),
(351, 351, 'Psychological Testing & Measurements', 1, 1, 351, 'en', '2018-06-23 20:01:48', NULL),
(352, 352, 'Psychology', 1, 1, 352, 'en', '2018-06-23 20:01:48', NULL),
(353, 353, 'Public International Law', 1, 1, 353, 'en', '2018-06-23 20:01:48', NULL),
(354, 354, 'Public Policy', 1, 1, 354, 'en', '2018-06-23 20:01:48', NULL),
(355, 355, 'Public Relations', 1, 1, 355, 'en', '2018-06-23 20:01:48', NULL),
(356, 356, 'Quantity Surveying', 1, 1, 356, 'en', '2018-06-23 20:01:48', NULL),
(357, 357, 'Radiation Therapy', 1, 1, 357, 'en', '2018-06-23 20:01:48', NULL),
(358, 358, 'Radio News Reporting & Production', 1, 1, 358, 'en', '2018-06-23 20:01:48', NULL),
(359, 359, 'Radio, TV & Studio Production', 1, 1, 359, 'en', '2018-06-23 20:01:48', NULL),
(360, 360, 'Religious Studies', 1, 1, 360, 'en', '2018-06-23 20:01:48', NULL),
(361, 361, 'Reporting and Sub-Editing', 1, 1, 361, 'en', '2018-06-23 20:01:48', NULL),
(362, 362, 'Research Methods', 1, 1, 362, 'en', '2018-06-23 20:01:48', NULL),
(363, 363, 'Robotics', 1, 1, 363, 'en', '2018-06-23 20:01:48', NULL),
(364, 364, 'Russian', 1, 1, 364, 'en', '2018-06-23 20:01:48', NULL),
(365, 365, 'Russian & East European Languages', 1, 1, 365, 'en', '2018-06-23 20:01:48', NULL),
(366, 366, 'Samoan Studies / Fa\'asamoa', 1, 1, 366, 'en', '2018-06-23 20:01:48', NULL),
(367, 367, 'School, Community and Teacher', 1, 1, 367, 'en', '2018-06-23 20:01:48', NULL),
(368, 368, 'Script Writing', 1, 1, 368, 'en', '2018-06-23 20:01:48', NULL),
(369, 369, 'Services Marketing', 1, 1, 369, 'en', '2018-06-23 20:01:48', NULL),
(370, 370, 'SME Management', 1, 1, 370, 'en', '2018-06-23 20:01:48', NULL),
(371, 371, 'Social Policy', 1, 1, 371, 'en', '2018-06-23 20:01:48', NULL),
(372, 372, 'Social Psychology', 1, 1, 372, 'en', '2018-06-23 20:01:48', NULL),
(373, 373, 'Social Science (general)', 1, 1, 373, 'en', '2018-06-23 20:01:48', NULL),
(374, 374, 'Social Work', 1, 1, 374, 'en', '2018-06-23 20:01:48', NULL),
(375, 375, 'Sociology', 1, 1, 375, 'en', '2018-06-23 20:01:48', NULL),
(376, 376, 'Software Design', 1, 1, 376, 'en', '2018-06-23 20:01:48', NULL),
(377, 377, 'Software Engineering - I', 1, 1, 377, 'en', '2018-06-23 20:01:48', NULL),
(378, 378, 'Software EngineeringII', 1, 1, 378, 'en', '2018-06-23 20:01:48', NULL),
(379, 379, 'Software Process Improvement', 1, 1, 379, 'en', '2018-06-23 20:01:48', NULL),
(380, 380, 'Software Project Management', 1, 1, 380, 'en', '2018-06-23 20:01:48', NULL),
(381, 381, 'Software Quality Assurance', 1, 1, 381, 'en', '2018-06-23 20:01:48', NULL),
(382, 382, 'Software Requirement Engineering', 1, 1, 382, 'en', '2018-06-23 20:01:48', NULL),
(383, 383, 'Spanish', 1, 1, 383, 'en', '2018-06-23 20:01:48', NULL),
(384, 384, 'Speech & Language Therapy', 1, 1, 384, 'en', '2018-06-23 20:01:48', NULL),
(385, 385, 'Sport & Exercise Science', 1, 1, 385, 'en', '2018-06-23 20:01:48', NULL),
(386, 386, 'Sport & Leisure Studies & Management', 1, 1, 386, 'en', '2018-06-23 20:01:48', NULL),
(387, 387, 'Sport Coaching', 1, 1, 387, 'en', '2018-06-23 20:01:48', NULL),
(388, 388, 'Sport Psychology', 1, 1, 388, 'en', '2018-06-23 20:01:48', NULL),
(389, 389, 'Sports Science', 1, 1, 389, 'en', '2018-06-23 20:01:48', NULL),
(390, 390, 'Statistics', 1, 1, 390, 'en', '2018-06-23 20:01:48', NULL),
(391, 391, 'Statistics and Probability', 1, 1, 391, 'en', '2018-06-23 20:01:48', NULL),
(392, 392, 'Strategic Management', 1, 1, 392, 'en', '2018-06-23 20:01:48', NULL),
(393, 393, 'Strategic Marketing Management', 1, 1, 393, 'en', '2018-06-23 20:01:48', NULL),
(394, 394, 'Supply Chain Management', 1, 1, 394, 'en', '2018-06-23 20:01:48', NULL),
(395, 395, 'Surveying', 1, 1, 395, 'en', '2018-06-23 20:01:48', NULL),
(396, 396, 'System Programming', 1, 1, 396, 'en', '2018-06-23 20:01:48', NULL),
(397, 397, 'Taxation', 1, 1, 397, 'en', '2018-06-23 20:01:48', NULL),
(398, 398, 'Taxation Management', 1, 1, 398, 'en', '2018-06-23 20:01:48', NULL),
(399, 399, 'Teaching – Early Childhood', 1, 1, 399, 'en', '2018-06-23 20:01:48', NULL),
(400, 400, 'Teaching – Māori Language', 1, 1, 400, 'en', '2018-06-23 20:01:48', NULL),
(401, 401, 'Teaching – Physical Education', 1, 1, 401, 'en', '2018-06-23 20:01:48', NULL),
(402, 402, 'Teaching – Primary', 1, 1, 402, 'en', '2018-06-23 20:01:48', NULL),
(403, 403, 'Teaching – Secondary', 1, 1, 403, 'en', '2018-06-23 20:01:48', NULL),
(404, 404, 'Teaching – Technology', 1, 1, 404, 'en', '2018-06-23 20:01:48', NULL),
(405, 405, 'Teaching of English', 1, 1, 405, 'en', '2018-06-23 20:01:48', NULL),
(406, 406, 'Teaching of General Science', 1, 1, 406, 'en', '2018-06-23 20:01:48', NULL),
(407, 407, 'Teaching of Geography', 1, 1, 407, 'en', '2018-06-23 20:01:48', NULL),
(408, 408, 'Teaching of Islamic Studies', 1, 1, 408, 'en', '2018-06-23 20:01:48', NULL),
(409, 409, 'Teaching of Literacy Skills', 1, 1, 409, 'en', '2018-06-23 20:01:48', NULL),
(410, 410, 'Teaching of Urdu', 1, 1, 410, 'en', '2018-06-23 20:01:48', NULL),
(411, 411, 'Theology', 1, 1, 411, 'en', '2018-06-23 20:01:48', NULL),
(412, 412, 'Theology & Religious Studies', 1, 1, 412, 'en', '2018-06-23 20:01:48', NULL),
(413, 413, 'Theories of Communication', 1, 1, 413, 'en', '2018-06-23 20:01:48', NULL),
(414, 414, 'Theory & Practice of Counseling', 1, 1, 414, 'en', '2018-06-23 20:01:48', NULL),
(415, 415, 'Theory of Automata', 1, 1, 415, 'en', '2018-06-23 20:01:48', NULL),
(416, 416, 'Theory of Computation', 1, 1, 416, 'en', '2018-06-23 20:01:48', NULL),
(417, 417, 'Total Quality Management', 1, 1, 417, 'en', '2018-06-23 20:01:48', NULL),
(418, 418, 'Tourism', 1, 1, 418, 'en', '2018-06-23 20:01:48', NULL),
(419, 419, 'Town & Country Planning and Landscape Design', 1, 1, 419, 'en', '2018-06-23 20:01:48', NULL),
(420, 420, 'Training and Development', 1, 1, 420, 'en', '2018-06-23 20:01:48', NULL),
(421, 421, 'TV Direction', 1, 1, 421, 'en', '2018-06-23 20:01:48', NULL),
(422, 422, 'TV News and Current Affairs', 1, 1, 422, 'en', '2018-06-23 20:01:48', NULL),
(423, 423, 'TV News Reporting & Production', 1, 1, 423, 'en', '2018-06-23 20:01:48', NULL),
(424, 424, 'Urdu', 1, 1, 424, 'en', '2018-06-23 20:01:48', NULL),
(425, 425, 'Valuation & Property Management', 1, 1, 425, 'en', '2018-06-23 20:01:48', NULL),
(426, 426, 'Veterinary Medicine', 1, 1, 426, 'en', '2018-06-23 20:01:48', NULL),
(427, 427, 'Veterinary Science & Technology', 1, 1, 427, 'en', '2018-06-23 20:01:48', NULL),
(428, 428, 'Visual Programming', 1, 1, 428, 'en', '2018-06-23 20:01:48', NULL),
(429, 429, 'Web & Digital Design', 1, 1, 429, 'en', '2018-06-23 20:01:48', NULL),
(430, 430, 'Web Design and Development', 1, 1, 430, 'en', '2018-06-23 20:01:48', NULL),
(431, 431, 'Wireless Networks', 1, 1, 431, 'en', '2018-06-23 20:01:48', NULL),
(432, 432, 'Youth Work', 1, 1, 432, 'en', '2018-06-23 20:01:48', NULL),
(433, 433, 'Zoology', 1, 1, 433, 'en', '2018-06-23 20:01:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manage_job_skills`
--

CREATE TABLE `manage_job_skills` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT 0,
  `job_skill_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `manage_job_skills`
--

INSERT INTO `manage_job_skills` (`id`, `job_id`, `job_skill_id`, `created_at`, `updated_at`) VALUES
(388, 35, 1, '2019-06-24 13:07:02', '2019-06-24 13:07:02'),
(389, 35, 3, '2019-06-24 13:07:02', '2019-06-24 13:07:02'),
(390, 36, 3, '2019-06-24 13:08:17', '2019-06-24 13:08:17'),
(391, 36, 6, '2019-06-24 13:08:17', '2019-06-24 13:08:17'),
(392, 37, 2, '2019-06-25 04:10:12', '2019-06-25 04:10:12'),
(393, 37, 4, '2019-06-25 04:10:12', '2019-06-25 04:10:12'),
(394, 37, 6, '2019-06-25 04:10:12', '2019-06-25 04:10:12'),
(395, 38, 3, '2019-06-25 04:11:54', '2019-06-25 04:11:54'),
(396, 39, 5, '2019-06-25 04:15:23', '2019-06-25 04:15:23'),
(397, 40, 5, '2019-06-25 04:16:54', '2019-06-25 04:16:54'),
(398, 41, 3, '2019-06-25 04:18:39', '2019-06-25 04:18:39'),
(399, 42, 3, '2019-06-25 04:20:15', '2019-06-25 04:20:15'),
(400, 43, 3, '2019-06-25 04:26:20', '2019-06-25 04:26:20'),
(401, 44, 3, '2019-06-25 04:27:22', '2019-06-25 04:27:22'),
(402, 45, 2, '2019-06-25 04:28:27', '2019-06-25 04:28:27'),
(403, 45, 5, '2019-06-25 04:28:27', '2019-06-25 04:28:27'),
(404, 46, 4, '2019-06-25 04:29:48', '2019-06-25 04:29:48'),
(406, 48, 3, '2019-06-25 04:33:23', '2019-06-25 04:33:23'),
(407, 49, 5, '2019-06-25 04:34:29', '2019-06-25 04:34:29'),
(408, 50, 4, '2019-06-25 04:36:47', '2019-06-25 04:36:47'),
(409, 51, 3, '2019-06-25 04:38:39', '2019-06-25 04:38:39'),
(410, 52, 4, '2019-06-25 04:39:57', '2019-06-25 04:39:57'),
(411, 53, 6, '2019-06-25 04:41:21', '2019-06-25 04:41:21'),
(412, 54, 3, '2019-06-25 04:42:37', '2019-06-25 04:42:37'),
(413, 55, 4, '2019-06-25 04:43:54', '2019-06-25 04:43:54'),
(414, 56, 4, '2019-06-25 04:45:06', '2019-06-25 04:45:06'),
(415, 57, 5, '2019-06-25 04:46:15', '2019-06-25 04:46:15'),
(416, 58, 2, '2019-06-25 05:10:30', '2019-06-25 05:10:30'),
(417, 59, 3, '2019-06-25 05:12:00', '2019-06-25 05:12:00'),
(418, 60, 3, '2019-06-25 05:13:37', '2019-06-25 05:13:37'),
(419, 61, 3, '2019-06-25 05:14:55', '2019-06-25 05:14:55'),
(420, 62, 5, '2019-06-25 05:16:32', '2019-06-25 05:16:32'),
(421, 63, 3, '2019-06-25 05:27:30', '2019-06-25 05:27:30'),
(422, 64, 5, '2019-06-25 06:06:16', '2019-06-25 06:06:16'),
(423, 65, 3, '2019-06-25 06:08:08', '2019-06-25 06:08:08'),
(424, 66, 6, '2019-06-25 06:09:19', '2019-06-25 06:09:19'),
(425, 67, 3, '2019-06-25 06:10:34', '2019-06-25 06:10:34'),
(426, 68, 4, '2019-06-25 06:13:05', '2019-06-25 06:13:05'),
(427, 69, 1, '2019-06-25 06:14:40', '2019-06-25 06:14:40'),
(428, 70, 3, '2019-06-25 06:16:22', '2019-06-25 06:16:22'),
(429, 70, 5, '2019-06-25 06:16:22', '2019-06-25 06:16:22'),
(430, 71, 3, '2019-06-25 06:17:36', '2019-06-25 06:17:36'),
(431, 71, 5, '2019-06-25 06:17:36', '2019-06-25 06:17:36'),
(432, 71, 6, '2019-06-25 06:17:36', '2019-06-25 06:17:36'),
(433, 72, 6, '2019-06-25 06:19:05', '2019-06-25 06:19:05'),
(434, 73, 2, '2019-06-25 06:20:22', '2019-06-25 06:20:22'),
(435, 73, 6, '2019-06-25 06:20:22', '2019-06-25 06:20:22'),
(441, 33, 5, '2019-06-25 13:31:27', '2019-06-25 13:31:27'),
(444, 76, 2, '2019-06-26 16:11:25', '2019-06-26 16:11:25'),
(445, 76, 3, '2019-06-26 16:11:25', '2019-06-26 16:11:25'),
(446, 76, 4, '2019-06-26 16:11:25', '2019-06-26 16:11:25'),
(447, 76, 5, '2019-06-26 16:11:25', '2019-06-26 16:11:25'),
(455, 83, 7, '2019-09-25 06:51:18', '2019-09-25 06:51:18'),
(457, 85, 3, '2019-09-26 09:33:46', '2019-09-26 09:33:46'),
(458, 86, 3, '2019-10-18 11:14:38', '2019-10-18 11:14:38'),
(461, 84, 2, '2019-10-23 08:54:41', '2019-10-23 08:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` int(11) NOT NULL,
  `marital_status_id` int(11) DEFAULT 0,
  `marital_status` varchar(40) NOT NULL,
  `is_default` int(1) DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 9999,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `marital_status_id`, `marital_status`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Divorced', 0, 1, 1, 'en', '2018-07-04 18:07:47', '2019-09-13 09:04:38'),
(2, NULL, 'Married', 0, 1, 2, 'en', '2018-07-04 18:07:53', '2019-09-13 09:04:40'),
(3, NULL, 'Separated', 0, 1, 3, 'en', '2018-07-04 18:08:11', '2019-09-13 09:04:42'),
(4, NULL, 'Single', 0, 1, 4, 'en', '2018-07-04 18:08:15', '2019-09-13 09:04:44'),
(5, NULL, 'Widow/er', 0, 1, 5, 'en', '2018-07-04 18:08:22', '2019-09-13 09:04:46'),
(21, NULL, 'Разведенный', 1, 1, 21, 'ru', '2019-06-22 03:05:46', '2019-09-13 09:05:38'),
(22, 22, 'женат\\Замужем', 1, 1, 22, 'ru', '2019-06-22 03:05:56', '2019-09-23 08:20:30'),
(23, NULL, 'Отделенный', 1, 1, 23, 'ru', '2019-06-22 03:06:34', '2019-09-13 09:05:44'),
(24, 24, 'Не женат\\Не замужем', 1, 1, 24, 'ru', '2019-06-22 03:06:47', '2019-09-23 08:21:06'),
(25, NULL, 'Вдова', 1, 1, 25, 'ru', '2019-06-22 03:07:46', '2019-09-13 09:05:51'),
(26, 1, 'Ажрашган', 0, 1, 26, 'uz', '2019-06-22 03:08:33', '2019-06-22 03:08:33'),
(27, 2, 'Турмушга чиққан/Уйланган', 0, 1, 27, 'uz', '2019-06-22 03:08:59', '2019-09-11 09:16:18'),
(28, 3, 'Бўлак', 0, 1, 28, 'uz', '2019-06-22 03:09:26', '2019-06-22 03:09:26'),
(29, 4, 'Турмушга чиқмаган/Уйланмаган', 0, 1, 29, 'uz', '2019-06-22 03:09:47', '2019-09-11 09:16:31'),
(30, 5, 'Бева', 0, 1, 30, 'uz', '2019-06-22 03:10:38', '2019-06-22 03:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_26_195605_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ownership_types`
--

CREATE TABLE `ownership_types` (
  `id` int(11) NOT NULL,
  `ownership_type_id` int(11) DEFAULT 0,
  `ownership_type` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ownership_types`
--

INSERT INTO `ownership_types` (`id`, `ownership_type_id`, `ownership_type`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sole Proprietorship', 1, 1, 1, 'en', '2018-07-11 23:10:21', NULL),
(2, 2, 'Public', 1, 1, 2, 'en', '2018-07-11 23:10:54', NULL),
(3, 3, 'Private', 1, 1, 3, 'en', '2018-07-11 23:11:13', NULL),
(4, 4, 'Government', 1, 1, 4, 'en', '2018-07-11 23:11:32', NULL),
(5, 5, 'NGO', 1, 1, 5, 'en', '2018-07-11 23:12:45', NULL),
(21, 1, 'Единоличное владение', 0, 1, 21, 'ru', '2019-06-22 02:59:52', '2019-06-22 02:59:52'),
(22, 2, 'Публичный', 0, 1, 22, 'ru', '2019-06-22 03:00:28', '2019-06-22 03:00:28'),
(23, 3, 'Частный', 0, 1, 23, 'ru', '2019-06-22 03:00:50', '2019-06-22 03:00:50'),
(24, 4, 'Правительство', 0, 1, 24, 'ru', '2019-06-22 03:01:03', '2019-06-22 03:01:03'),
(25, 5, 'Неправительственные организации (НПО)', 0, 1, 25, 'ru', '2019-06-22 03:01:52', '2019-06-22 03:01:52'),
(26, 1, 'Бутун мулк', 0, 1, 26, 'uz', '2019-06-22 03:02:49', '2019-06-22 03:02:49'),
(27, 2, 'Оммавий', 0, 1, 27, 'uz', '2019-06-22 03:03:19', '2019-06-22 03:03:19'),
(28, 3, 'Хсусий', 0, 1, 28, 'uz', '2019-06-22 03:03:41', '2019-06-22 03:03:41'),
(29, 4, 'Давлат ташкилоти', 0, 1, 29, 'uz', '2019-06-22 03:04:02', '2019-06-22 03:04:02'),
(30, 5, 'Нодавлат нотижорат ташкилоти (ННТ)', 0, 1, 30, 'uz', '2019-06-22 03:04:51', '2019-06-22 03:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_title` varchar(150) DEFAULT NULL,
  `package_price` float(7,2) DEFAULT 0.00,
  `package_num_days` int(11) DEFAULT 0,
  `package_num_listings` int(11) DEFAULT 0,
  `package_for` enum('job_seeker','employer') DEFAULT 'job_seeker',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_title`, `package_price`, `package_num_days`, `package_num_listings`, `package_for`, `created_at`, `updated_at`) VALUES
(3, 'Basic', 9.99, 30, 10, 'employer', '2018-08-20 15:18:59', '2018-08-20 15:18:59'),
(4, 'Premium', 19.99, 90, 30, 'employer', '2018-08-20 15:19:32', '2018-08-20 15:19:32'),
(5, 'Basic', 9.99, 30, 10, 'job_seeker', '2018-10-19 00:44:15', '2018-10-19 00:44:15'),
(6, 'Premium', 19.99, 90, 30, 'job_seeker', '2018-10-19 00:44:53', '2018-10-19 00:44:53'),
(7, 'Free package', 0.00, 999999999, 999999999, 'employer', '2019-04-24 02:17:43', '2019-09-25 07:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('muzaffarmirzo1986@gmail.com', '$2y$10$UEW6gZ8EgI5BDfxuUF7nSuc1J3BvmovljwgQPxtpcObDvPhZjrXbm', '2019-07-04 03:23:37'),
('bahtiyorjon.uraimov@gmail.com', '$2y$10$43pePx5ldXO17sefXxbz/OzIpiDeHnBA9/5P1lmXj8ETW6jJai65G', '2019-08-06 03:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `profile_cvs`
--

CREATE TABLE `profile_cvs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `cv_file` varchar(120) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_cvs`
--

INSERT INTO `profile_cvs` (`id`, `user_id`, `title`, `cv_file`, `is_default`, `created_at`, `updated_at`) VALUES
(7, 9, 'My CV', '', 0, '2019-06-22 11:33:47', '2019-06-28 14:35:55'),
(8, 10, '12 test', '12-1561470171-284.doc', 0, '2019-06-25 13:42:51', '2019-08-27 15:53:34'),
(9, 14, 'LOGO', 'logo-1561732555-40.doc', 0, '2019-06-28 14:35:55', '2019-08-27 15:51:29'),
(13, 13, 'Бахтиёржон Ураимов', 'bakhtierzhon-uraimov-1562049199-167.doc', 0, '2019-07-02 06:33:19', '2019-07-02 06:34:39'),
(14, 14, 'Шерматов Музаффар', 'shermatov-muzaffar-1562049279-474.doc', 0, '2019-07-02 06:34:39', '2019-07-08 09:26:58'),
(15, 18, 'Resume', 'resume-1562578018-132.doc', 0, '2019-07-08 09:26:58', '2019-07-08 10:17:03'),
(16, 19, 'cv', 'cv-1562581023-171.doc', 0, '2019-07-08 10:17:03', '2019-09-05 06:02:55'),
(17, 21, 'Рузиев Ш.Н.', 'ruziev-shn-1562655512-315.doc', 0, '2019-07-09 06:58:32', '2019-07-09 06:58:32'),
(18, 23, 'programmist', 'programmist-1567663375-61.docx', 1, '2019-09-05 06:02:55', '2019-09-05 06:02:55'),
(19, 31, 'mening resumyum', 'mening-resumyum-1568176922-912.docx', 0, '2019-09-11 04:42:02', '2019-09-11 04:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `profile_educations`
--

CREATE TABLE `profile_educations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `degree_level_id` int(11) DEFAULT NULL,
  `degree_type_id` int(11) DEFAULT NULL,
  `degree_title` varchar(150) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `date_completion` varchar(15) DEFAULT NULL,
  `institution` varchar(150) DEFAULT NULL,
  `degree_result` varchar(20) DEFAULT NULL,
  `result_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_educations`
--

INSERT INTO `profile_educations` (`id`, `user_id`, `degree_level_id`, `degree_type_id`, `degree_title`, `country_id`, `state_id`, `city_id`, `date_completion`, `institution`, `degree_result`, `result_type_id`, `created_at`, `updated_at`) VALUES
(6, 4, 5, 110, 'MCS', 166, 2728, 31351, '2009', 'VU', '65', 3, '2018-08-10 14:44:41', '2018-08-10 14:44:41'),
(7, 6, 2, 2, 'Matric', 231, 3921, 42691, '2012', 'My test Institute', 'A', 2, '2018-09-19 01:36:57', '2018-09-19 01:36:57'),
(8, 6, 3, 17, 'ICS', 231, 3924, 43230, '2014', 'My test Institute 2', 'A', 2, '2018-09-19 01:38:06', '2018-09-19 01:38:06'),
(9, 10, 4, 47, '5', 234, 10, 1, '2017', '5', '5', 1, '2019-06-25 13:39:38', '2019-06-25 13:39:38'),
(10, 12, 4, 52, 'it специалист', 234, 10, 1, '2017', 'TATU', '5', 2, '2019-06-28 14:42:59', '2019-10-23 05:57:40'),
(12, 9, 4, 47, 'Бакалавр', 234, 13, 5, '2017', 'ТУИТ', 'Отлично', 2, '2019-07-02 09:24:28', '2019-07-02 09:24:28'),
(13, 23, 4, 43, 'bs', 234, 12, 15, '2019', 'ADU', '5', 1, '2019-09-05 09:29:14', '2019-09-05 09:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `profile_education_major_subjects`
--

CREATE TABLE `profile_education_major_subjects` (
  `id` int(11) NOT NULL,
  `profile_education_id` int(11) DEFAULT NULL,
  `major_subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_education_major_subjects`
--

INSERT INTO `profile_education_major_subjects` (`id`, `profile_education_id`, `major_subject_id`, `created_at`, `updated_at`) VALUES
(15, 6, 7, '2018-08-10 14:44:41', '2018-08-10 14:44:41'),
(16, 6, 123, '2018-08-10 14:44:41', '2018-08-10 14:44:41'),
(17, 7, 94, '2018-09-19 01:36:57', '2018-09-19 01:36:57'),
(18, 8, 94, '2018-09-19 01:38:06', '2018-09-19 01:38:06'),
(19, 8, 95, '2018-09-19 01:38:06', '2018-09-19 01:38:06'),
(20, 9, 2, '2019-06-25 13:39:38', '2019-06-25 13:39:38'),
(21, 10, 220, '2019-06-28 14:42:59', '2019-06-28 14:42:59'),
(23, 12, 429, '2019-07-02 09:24:28', '2019-07-02 09:24:28'),
(24, 13, 4, '2019-09-05 09:29:14', '2019-09-05 09:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `profile_experiences`
--

CREATE TABLE `profile_experiences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `date_start` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `date_end` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `is_currently_working` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_experiences`
--

INSERT INTO `profile_experiences` (`id`, `user_id`, `title`, `company`, `country_id`, `state_id`, `city_id`, `date_start`, `date_end`, `is_currently_working`, `description`, `created_at`, `updated_at`) VALUES
(4, 4, 'this is test', 'Company Name', 1, 42, 5909, '2018-08-17 05:00:00', '2018-08-17 05:00:00', 0, 'testing', '2018-08-10 14:42:55', '2018-08-10 14:42:55'),
(6, 6, 'Web Designer', 'My Test Company 1', 231, 3919, 42596, '2016-01-04 17:00:00', '2017-12-29 17:00:00', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla at enim quis tincidunt. Nulla condimentum dapibus efficitur. In massa felis, fringilla at urna vestibulum, mattis malesuada metus.', '2018-09-19 01:34:30', '2018-09-19 01:34:30'),
(7, 6, 'Senior Frontend Developer', 'My Test Company 2', 231, 3931, 43999, '2018-01-08 17:00:00', NULL, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla at enim quis tincidunt. Nulla condimentum dapibus efficitur. In massa felis, fringilla at urna vestibulum, mattis malesuada metus. Integer id lorem tortor. Pellentesque hendrerit sapien sit amet finibus pretium.', '2018-09-19 01:35:39', '2018-09-19 01:35:39'),
(9, 10, 'Автоматизация технологического процесса ИТ', 'Навоийский горно - металлургический комбинат ГМЗ №2', 234, 5, 16, '2010-12-31 19:00:00', '2013-08-31 19:00:00', 0, 'Siemens SIMATIC S7, ADAM Контроллеры', '2019-06-28 13:48:44', '2019-06-28 13:48:44'),
(10, 12, 'IT Cпециалист', 'Gmuzbekistan', 234, 10, 1, '2017-01-04 19:00:00', '2019-07-21 19:00:00', 1, 'Gm Company', '2019-06-28 14:40:29', '2019-06-28 14:40:29'),
(11, 13, 'Сувчи', 'сув юлдузи', 234, 1, 4, '2008-10-27 19:00:00', '2009-10-27 19:00:00', 0, 'Сувчи бўлиб ишлаган', '2019-07-02 06:37:09', '2019-07-02 06:37:09'),
(12, 9, 'lorem', 'OOO Media Box', 234, 13, 5, '2012-12-31 19:00:00', '2013-12-31 19:00:00', 0, 'lorem', '2019-07-02 07:37:53', '2019-07-02 07:37:53'),
(13, 14, 'специалист', 'АК \" Узавтосаноат\"', 234, 1, 4, '2012-10-03 19:00:00', NULL, 1, 'Работал в качестве кладовщика, завсклада.', '2019-07-05 03:46:37', '2019-07-05 03:46:37'),
(14, 23, 'uzcard', 'uzcard', 234, 1, 4, '2019-09-04 19:00:00', '2019-09-24 19:00:00', 0, 'tesst', '2019-09-05 09:28:27', '2019-09-05 09:28:27'),
(15, 31, '3-darajali dasturchi', 'Yagona pressetsualing markazi (uzcard)', 234, 10, 1, '2019-08-31 19:00:00', '2019-09-29 19:00:00', 0, 'turli xil davlat proyektlari jamoa bilan birga qilingan, men asosan yordamchi dasturchi bo\'lganman, ish jaroyonida ko\'p narsalarni organganman, menga biriktilgan vazifalarni bajara olganman', '2019-09-11 05:28:01', '2019-09-11 05:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `profile_languages`
--

CREATE TABLE `profile_languages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `language_level_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_languages`
--

INSERT INTO `profile_languages` (`id`, `user_id`, `language_id`, `language_level_id`, `created_at`, `updated_at`) VALUES
(24, 31, 44, 16, '2019-10-28 09:08:53', '2019-10-28 09:10:05'),
(25, 31, 194, 15, '2019-10-28 09:08:59', '2019-10-28 09:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `profile_projects`
--

CREATE TABLE `profile_projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` tinytext DEFAULT NULL,
  `date_start` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `date_end` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `is_on_going` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_projects`
--

INSERT INTO `profile_projects` (`id`, `user_id`, `name`, `image`, `description`, `url`, `date_start`, `date_end`, `is_on_going`, `created_at`, `updated_at`) VALUES
(5, 4, 'Job Portal', 'job-portal-ju9qr-19.jpg', 'testing', 'http://www.aquasureuae.com/about_us.php', '2018-08-10 19:42:17', '2018-08-10 19:42:17', 0, '2018-08-10 14:42:17', '2018-08-10 14:42:17'),
(6, 6, 'My test 1', 'my-test-1-tvss6-515.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'http://www.google.com', '2018-09-18 20:41:38', '2018-09-18 20:41:38', 0, '2018-09-19 01:31:25', '2018-09-19 01:41:38'),
(7, 6, 'Test Project 2', 'test-project-2-ldlq2-578.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'http://www.yourdomain.com', '2018-09-18 20:41:49', '2018-09-18 20:41:49', 0, '2018-09-19 01:32:18', '2018-09-19 01:41:49'),
(8, 6, 'Test Project 3', 'test-project-3-mp14f-63.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'http://www.yourdomain.com', '2018-09-18 20:43:12', '2018-09-18 20:43:12', 0, '2018-09-19 01:33:06', '2018-09-19 01:43:12'),
(9, 12, 'Gmuzbekistan.uz', 'gmuzbekistanuz-rg0hw-753.jpg', 'разработка сайтов', 'http://hr.gmuzbekistan.uz/,http://gmuzbekistan.uz/', '2019-06-28 14:37:58', '2019-06-28 14:37:58', 0, '2019-06-28 14:37:58', '2019-06-28 14:37:58'),
(10, 9, 'lorem', 'lorem-4gaaj-780.jpg', 'lorem ipsum', '#', '2019-07-02 07:34:09', '2019-07-02 07:34:09', 0, '2019-07-02 07:34:09', '2019-07-02 07:34:09'),
(11, 31, 'rentalcarsnow.cz', 'rentalcarsnowcz-5wyir-185.png', 'chexiya uchun moshinalar arendasi, pragadagi ozbek biznesmen uchun tayyorlangan, 2 programmist tomonidan yozilgan, men backend qismini bajarganman', 'http://rentalcarsnow.cz/', '2019-09-11 05:04:53', '2019-09-11 05:04:53', 0, '2019-09-11 05:04:53', '2019-09-11 05:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `profile_relatives`
--

CREATE TABLE `profile_relatives` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `type_relative` varchar(250) DEFAULT NULL,
  `name_organization` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_relatives`
--

INSERT INTO `profile_relatives` (`id`, `full_name`, `type_relative`, `name_organization`, `position`, `user_id`) VALUES
(7, 'Shokirov', 'Begzod', 'hanwoo', 'ITnishnik', 31),
(10, 'test', 'test', 'test', 'test', 31);

-- --------------------------------------------------------

--
-- Table structure for table `profile_skills`
--

CREATE TABLE `profile_skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_skill_id` int(11) DEFAULT NULL,
  `job_experience_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_skills`
--

INSERT INTO `profile_skills` (`id`, `user_id`, `job_skill_id`, `job_experience_id`, `created_at`, `updated_at`) VALUES
(9, 9, 16, 8, '2018-08-10 14:44:57', '2019-08-27 16:08:59'),
(14, 18, 1, 9, '2018-09-19 01:38:18', '2019-08-27 16:09:22'),
(15, 19, 2, 9, '2018-09-19 01:38:28', '2019-08-27 16:09:28'),
(16, 21, 5, 6, '2018-09-19 01:38:40', '2019-08-27 16:09:35'),
(17, 6, 6, 9, '2018-09-19 01:38:50', '2018-09-19 01:38:50'),
(18, 10, 8, 9, '2018-09-19 01:38:59', '2019-08-27 15:52:50'),
(19, 6, 10, 6, '2018-09-19 01:39:11', '2018-09-19 01:39:11'),
(20, 6, 11, 5, '2018-09-19 01:39:22', '2018-09-19 01:39:22'),
(21, 9, 19, 4, '2018-09-19 01:39:32', '2019-08-27 21:34:27'),
(22, 13, 19, 9, '2019-07-02 06:38:34', '2019-07-02 06:38:34'),
(23, 9, 8, 3, '2019-07-02 09:25:06', '2019-07-02 09:25:06'),
(24, 14, 14, 8, '2019-07-05 03:43:37', '2019-07-05 03:43:37'),
(25, 10, 8, 3, '2019-08-05 04:53:36', '2019-08-05 04:53:36'),
(26, 23, 4, 12, '2019-09-05 09:29:21', '2019-09-05 09:29:21'),
(27, 31, 8, 12, '2019-09-11 05:12:06', '2019-09-11 05:12:06'),
(28, 31, 16, 12, '2019-09-11 05:12:19', '2019-09-11 05:12:19'),
(30, 31, 14, 12, '2019-09-11 05:12:37', '2019-09-11 05:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `profile_summaries`
--

CREATE TABLE `profile_summaries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profile_summaries`
--

INSERT INTO `profile_summaries` (`id`, `user_id`, `summary`, `created_at`, `updated_at`) VALUES
(17, 4, 'yahoo', '2018-08-10 14:57:22', '2018-08-10 14:57:22'),
(26, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla at enim quis tincidunt. Nulla condimentum dapibus efficitur. In massa felis, fringilla at urna vestibulum, mattis malesuada metus. Integer id lorem tortor. Pellentesque hendrerit sapien sit amet finibus pretium. Fusce eu sagittis orci. Quisque urna velit, facilisis interdum nisl nec, commodo tristique leo. Maecenas turpis augue, vulputate ac lorem in, euismod euismod tortor. Phasellus vitae lacinia est, ut porta leo. Morbi sit amet quam in risus gravida mattis. Suspendisse sodales massa et odio mollis, id ultricies ipsum semper. Duis pretium vestibulum dui at scelerisque.', '2018-09-19 01:29:05', '2018-09-19 01:29:05'),
(27, 10, '1', '2019-06-25 13:39:56', '2019-06-25 13:39:56'),
(28, 12, 'Шарипов', '2019-06-28 14:19:08', '2019-06-28 14:19:08'),
(29, 18, 'lorem', '2019-07-08 09:27:42', '2019-07-08 09:27:42'),
(30, 19, 'lorem', '2019-07-08 10:16:31', '2019-07-08 10:16:31'),
(31, 31, 'o\'z kasbimni yoqtiraman, dasturlash bo\'yicha 1 yildan ortiq tajribam bor, bir necha proyektlarda qatnashganman, o\'z shaxsiy portfoliyim bor, yangi taxnologiyalarni o\'zlashtirishga doim qiziqganman.', '2019-09-11 04:42:09', '2019-09-11 04:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `queue_jobs`
--

CREATE TABLE `queue_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_abuse_company_messages`
--

CREATE TABLE `report_abuse_company_messages` (
  `id` int(11) NOT NULL,
  `your_name` varchar(100) DEFAULT NULL,
  `your_email` varchar(100) DEFAULT NULL,
  `company_url` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `report_abuse_company_messages`
--

INSERT INTO `report_abuse_company_messages` (`id`, `your_name`, `your_email`, `company_url`, `created_at`, `updated_at`) VALUES
(1, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:24:04', '2018-08-01 17:24:04'),
(2, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:24:56', '2018-08-01 17:24:56'),
(3, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:26:36', '2018-08-01 17:26:36'),
(4, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:27:42', '2018-08-01 17:27:42'),
(5, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:31:29', '2018-08-01 17:31:29'),
(6, 'jobseeker14', 'jobseeker14@hotmail.com', 'http://localhost/job_portal/public/company/future-now-pvt-limited-1', '2018-08-01 17:34:17', '2018-08-01 17:34:17'),
(7, 'lorem', 'aza@mail.ru', 'http://hr.gmuzbekistan.uz/company/jsc-gm-uzbekistan-20', '2019-06-22 11:15:23', '2019-06-22 11:15:23'),
(8, 'Azamat Joldasbaevich Allabergenov', 'azamat190392@gmail.com', 'http://hr.gmuzbekistan.uz/company/kamaz-19', '2019-07-01 10:37:08', '2019-07-01 10:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `report_abuse_messages`
--

CREATE TABLE `report_abuse_messages` (
  `id` int(11) NOT NULL,
  `your_name` varchar(100) DEFAULT NULL,
  `your_email` varchar(100) DEFAULT NULL,
  `job_url` tinytext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `result_types`
--

CREATE TABLE `result_types` (
  `id` int(11) NOT NULL,
  `result_type_id` int(11) DEFAULT 0,
  `result_type` varchar(40) NOT NULL,
  `is_default` int(1) DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 9999,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `result_types`
--

INSERT INTO `result_types` (`id`, `result_type_id`, `result_type`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'GPA', 1, 1, 1, 'en', '2018-07-02 14:10:45', '2018-07-02 14:10:45'),
(2, 2, 'Grade', 1, 1, 2, 'en', '2018-07-02 14:11:05', '2018-07-02 14:11:05'),
(3, 3, 'Percentage', 1, 1, 3, 'en', '2018-07-02 14:11:22', '2018-07-02 14:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `resume_single_questions`
--

CREATE TABLE `resume_single_questions` (
  `id` int(11) NOT NULL,
  `application_status` varchar(100) DEFAULT NULL,
  `yonalish` varchar(255) DEFAULT NULL,
  `turar_joy` varchar(255) DEFAULT NULL,
  `yashash_joy` varchar(255) DEFAULT NULL,
  `trip_readiness` varchar(120) DEFAULT NULL,
  `children_quantity` int(11) DEFAULT NULL,
  `driving_licence` varchar(120) DEFAULT NULL,
  `work_shift_readiness` varchar(120) DEFAULT NULL,
  `army_document` varchar(120) DEFAULT NULL,
  `sudlangan` varchar(120) DEFAULT NULL,
  `extra_info` text DEFAULT NULL,
  `height` varchar(120) DEFAULT NULL,
  `date_filled_application` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `passport_number` varchar(100) DEFAULT NULL,
  `vacancy_infomation_source` varchar(255) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resume_single_questions`
--

INSERT INTO `resume_single_questions` (`id`, `application_status`, `yonalish`, `turar_joy`, `yashash_joy`, `trip_readiness`, `children_quantity`, `driving_licence`, `work_shift_readiness`, `army_document`, `sudlangan`, `extra_info`, `height`, `date_filled_application`, `user_id`, `passport_number`, `vacancy_infomation_source`, `ip_address`) VALUES
(3, NULL, 'yii', 'maybogcha', 'andijon, uzbeksitan', 'положительный', 5, 'xa', '1', 'bor', '1', 'dasturchilikka qiziqaman', '163', '2019-09-07 06:50:05', 31, NULL, 'dostimdan', NULL),
(4, '5', 'php yii2', 'maymogcha 200', 'andijon, uzbeksitan', '0', 3, 'wqeqw', '0', 'weqeq', '1', '323', '232', '2019-09-10 05:16:56', 32, NULL, NULL, NULL),
(5, '5', 'laravel', NULL, NULL, '0', NULL, NULL, '0', NULL, '0', NULL, NULL, '2019-09-10 11:20:26', 21, NULL, NULL, NULL),
(6, '2', 'php yii2', 'maymogcha 200', 'andijon, uzbeksitan', 'Ижобий', 3, 'xa BC', 'Розиман', 'tets', 'Судланмаганман', 'te', '163', '2019-09-11 03:42:19', 19, NULL, NULL, NULL),
(7, NULL, 'yii2', 'andijon', 'asaka', 'Ижобий', 2, 'xa BC', 'Розиман', 'yoq', 'Судланмаганман', 'yoq', '163', '2019-09-24 04:54:42', 14, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_abbreviation` varchar(30) NOT NULL,
  `role_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_abbreviation`, `role_description`) VALUES
(1, 'Super Admin', 'SUP_ADM', 'Super Admin'),
(2, 'Sub Admin', 'SUB_ADM', 'Sub Admin');

-- --------------------------------------------------------

--
-- Table structure for table `salary_periods`
--

CREATE TABLE `salary_periods` (
  `id` int(11) NOT NULL,
  `salary_period_id` int(11) DEFAULT 0,
  `salary_period` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `salary_periods`
--

INSERT INTO `salary_periods` (`id`, `salary_period_id`, `salary_period`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monthly', 0, 1, 2, 'en', '2018-08-15 19:55:46', '2018-08-15 15:08:45'),
(2, 2, 'Yearly', 0, 1, 3, 'en', '2018-08-15 19:56:23', '2018-08-15 15:08:45'),
(3, 3, 'Weekly', 0, 1, 1, 'en', '2018-08-15 15:08:09', '2018-08-15 15:08:45'),
(4, 3, 'Еженедельно', 1, 1, 4, 'ru', '2019-06-22 02:57:21', '2019-06-22 02:57:21'),
(5, 1, 'Ежемесячно', 1, 1, 5, 'ru', '2019-06-22 02:57:36', '2019-06-22 02:57:36'),
(6, 2, 'Каждый год', 1, 1, 6, 'ru', '2019-06-22 02:57:52', '2019-06-22 02:57:52'),
(7, 3, 'Ҳафталик', 0, 1, 7, 'uz', '2019-06-22 02:58:22', '2019-06-22 02:58:22'),
(8, 1, 'Ойлик', 0, 1, 8, 'uz', '2019-06-22 02:58:42', '2019-06-22 02:58:42'),
(9, 2, 'Йиллик', 0, 1, 9, 'uz', '2019-06-22 02:58:53', '2019-06-22 02:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `send_to_friend_messages`
--

CREATE TABLE `send_to_friend_messages` (
  `id` int(11) NOT NULL,
  `your_name` varchar(100) DEFAULT NULL,
  `your_email` varchar(100) DEFAULT NULL,
  `job_url` mediumtext DEFAULT NULL,
  `friend_name` varchar(100) DEFAULT NULL,
  `friend_email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `send_to_friend_messages`
--

INSERT INTO `send_to_friend_messages` (`id`, `your_name`, `your_email`, `job_url`, `friend_name`, `friend_email`, `created_at`, `updated_at`) VALUES
(1, 'Xurshid', 'Xurshid.Niyozov@gm.uz', 'http://hr.gmuzbekistan.uz/job/mukhandislik-makhsulotlari-73', 'Xurshid', 'Xurshid.Niyozov@gm.uz', '2019-06-25 13:18:35', '2019-06-25 13:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_title` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `seo_keywords` text DEFAULT NULL,
  `seo_other` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_title`, `seo_title`, `seo_description`, `seo_keywords`, `seo_other`, `created_at`, `updated_at`) VALUES
(1, 'front_index_page', 'UZAUTO JOBS', 'UZAUTO JOBS', 'UZAUTO JOBS', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />\r\n<meta name=\"author\" content=\"JobPortal.PK\" />', '2018-08-25 20:01:47', '2019-06-20 07:08:30'),
(2, 'email_to_friend', 'UZAUTO JOBS', 'UZAUTO JOBS', 'UZAUTO JOBS', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />', '2018-08-25 20:03:08', NULL),
(3, 'report_abuse', 'UZAUTO JOBS', 'UZAUTO JOBS', 'UZAUTO JOBS', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />', '2018-08-25 20:03:26', NULL),
(4, 'faq', 'UZAUTO JOBS', 'UZAUTO JOBS', 'UZAUTO JOBS', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />', '2018-08-25 20:03:41', NULL),
(5, 'contact', 'UZAUTO JOBS', 'UZAUTO JOBS', 'UZAUTO JOBS', '<meta name=\"robots\" content=\"ALL, FOLLOW,INDEX\" />', '2018-08-25 20:03:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(45) DEFAULT NULL,
  `site_slogan` varchar(50) DEFAULT NULL,
  `site_logo` varchar(50) DEFAULT NULL,
  `site_phone_primary` varchar(20) DEFAULT NULL,
  `site_phone_secondary` varchar(20) DEFAULT NULL,
  `default_country_id` int(11) DEFAULT NULL,
  `default_currency_code` varchar(4) DEFAULT NULL,
  `site_street_address` varchar(60) DEFAULT NULL,
  `site_google_map` text DEFAULT NULL,
  `mail_driver` enum('array','log','sparkpost','ses','mandrill','mailgun','sendmail','smtp','mail') DEFAULT 'smtp',
  `mail_host` varchar(60) DEFAULT NULL,
  `mail_port` int(5) DEFAULT NULL,
  `mail_from_address` varchar(60) DEFAULT NULL,
  `mail_from_name` varchar(60) DEFAULT NULL,
  `mail_to_address` varchar(60) DEFAULT NULL,
  `mail_to_name` varchar(60) DEFAULT NULL,
  `mail_encryption` varchar(10) DEFAULT NULL,
  `mail_username` varchar(60) DEFAULT NULL,
  `mail_password` varchar(60) DEFAULT NULL,
  `mail_sendmail` varchar(50) DEFAULT NULL,
  `mail_pretend` varchar(50) DEFAULT NULL,
  `mailgun_domain` varchar(60) DEFAULT NULL,
  `mailgun_secret` varchar(60) DEFAULT NULL,
  `mandrill_secret` varchar(60) DEFAULT NULL,
  `sparkpost_secret` varchar(60) DEFAULT NULL,
  `ses_key` varchar(60) DEFAULT NULL,
  `ses_secret` varchar(60) DEFAULT NULL,
  `ses_region` varchar(60) DEFAULT NULL,
  `facebook_address` varchar(60) DEFAULT NULL,
  `twitter_address` varchar(60) DEFAULT NULL,
  `google_plus_address` varchar(60) DEFAULT NULL,
  `youtube_address` varchar(60) DEFAULT NULL,
  `instagram_address` varchar(60) DEFAULT NULL,
  `pinterest_address` varchar(60) DEFAULT NULL,
  `linkedin_address` varchar(60) DEFAULT NULL,
  `tumblr_address` varchar(60) DEFAULT NULL,
  `flickr_address` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `index_page_below_top_employes_ad` varchar(60) DEFAULT NULL,
  `above_footer_ad` varchar(60) DEFAULT NULL,
  `dashboard_page_ad` varchar(200) DEFAULT NULL,
  `cms_page_ad` varchar(200) DEFAULT NULL,
  `listing_page_vertical_ad` varchar(200) DEFAULT NULL,
  `listing_page_horizontal_ad` varchar(200) DEFAULT NULL,
  `nocaptcha_sitekey` varchar(100) DEFAULT NULL,
  `nocaptcha_secret` varchar(100) DEFAULT NULL,
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebeek_app_secret` varchar(100) DEFAULT NULL,
  `google_app_id` varchar(100) DEFAULT NULL,
  `google_app_secret` varchar(60) DEFAULT NULL,
  `twitter_app_id` varchar(60) DEFAULT NULL,
  `twitter_app_secret` varchar(100) DEFAULT NULL,
  `paypal_account` varchar(100) DEFAULT NULL,
  `paypal_client_id` varchar(100) DEFAULT NULL,
  `paypal_secret` varchar(100) DEFAULT NULL,
  `paypal_live_sandbox` enum('live','sandbox') DEFAULT 'sandbox',
  `stripe_key` varchar(60) DEFAULT NULL,
  `stripe_secret` varchar(70) DEFAULT NULL,
  `bank_details` mediumtext DEFAULT NULL,
  `listing_age` int(3) NOT NULL DEFAULT 15,
  `country_specific_site` tinyint(1) DEFAULT 0,
  `is_paypal_active` tinyint(1) DEFAULT 1,
  `is_bank_transfer_active` tinyint(1) DEFAULT 1,
  `is_jobseeker_package_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_stripe_active` tinyint(1) DEFAULT 1,
  `is_slider_active` tinyint(1) DEFAULT 0,
  `mailchimp_api_key` tinytext DEFAULT NULL,
  `mailchimp_list_name` tinytext DEFAULT NULL,
  `mailchimp_list_id` tinytext DEFAULT NULL,
  `is_company_package_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `site_slogan`, `site_logo`, `site_phone_primary`, `site_phone_secondary`, `default_country_id`, `default_currency_code`, `site_street_address`, `site_google_map`, `mail_driver`, `mail_host`, `mail_port`, `mail_from_address`, `mail_from_name`, `mail_to_address`, `mail_to_name`, `mail_encryption`, `mail_username`, `mail_password`, `mail_sendmail`, `mail_pretend`, `mailgun_domain`, `mailgun_secret`, `mandrill_secret`, `sparkpost_secret`, `ses_key`, `ses_secret`, `ses_region`, `facebook_address`, `twitter_address`, `google_plus_address`, `youtube_address`, `instagram_address`, `pinterest_address`, `linkedin_address`, `tumblr_address`, `flickr_address`, `created_at`, `updated_at`, `index_page_below_top_employes_ad`, `above_footer_ad`, `dashboard_page_ad`, `cms_page_ad`, `listing_page_vertical_ad`, `listing_page_horizontal_ad`, `nocaptcha_sitekey`, `nocaptcha_secret`, `facebook_app_id`, `facebeek_app_secret`, `google_app_id`, `google_app_secret`, `twitter_app_id`, `twitter_app_secret`, `paypal_account`, `paypal_client_id`, `paypal_secret`, `paypal_live_sandbox`, `stripe_key`, `stripe_secret`, `bank_details`, `listing_age`, `country_specific_site`, `is_paypal_active`, `is_bank_transfer_active`, `is_jobseeker_package_active`, `is_stripe_active`, `is_slider_active`, `mailchimp_api_key`, `mailchimp_list_name`, `mailchimp_list_id`, `is_company_package_active`) VALUES
(1272, 'UZAUTO JOBS', 'UZAUTO JOBS', 'uzauto-jobs-1561123712-853.png', '+998 (78) 150-88-80', '+998 95 200 07 70', 234, 'UZS', 'Aндижон шахар Айланма кўча 1- уй', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.103552838461!2d72.32067221540571!3d40.7377468793291!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bc92d12ddf5a59%3A0x32b215107b2da248!2sAndijon%20AvtoTEX%20Xizmat!5e0!3m2!1sen!2s!4v1569325754419!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'mail', 'mail.jobsportal', 25, 'hr@uzavtosanoat.uz', 'UZAUTO JOBS', 'hr@uzavtosanoat.uz', 'UZAUTO JOBS', NULL, 'support@jobsportal.com', 'youremailpassword', '/usr/sbin/sendmail -bs', 'true', 'your-mailgun-domain', 'your-mailgun-secret', 'your-mandrill-secret', 'your-sparkpost-secret', 'your-ses-key', 'your-ses-secret', 'your-ses-region', 'https://www.facebook.com/UzAuto/', NULL, NULL, NULL, 'https://www.instagram.com/uzauto_official/', NULL, NULL, NULL, NULL, '2017-09-24 08:27:10', '2019-06-28 13:41:25', '<img src=\"/images/google-ad-wide.jpg\" alt=\"\">', '<img src=\"/images/google-ad-wide.jpg\" alt=\"\">', '<img src=\"/images/google-ad-wide2.jpg\" alt=\"\">', NULL, '<img src=\"/images/sidebar_logo.jpg\" alt=\"\">', NULL, '6Le9LKoUAAAAAMyzpXlCgyqVjoMVILYAf7b7mDAr', '6Le9LKoUAAAAAIZLGqOGwZXMp7IUCCO5OCMyWVyR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sandbox', 'pk_test_qZrL4iEhRiW0xVy1X3HRDtnp', 'sk_test_Jc5YJMkPz81EuYgEy2eGPMdp', '<h5>Bank Details</h5>\r\n<br />\r\n<p>Lorem ipsum dolor sit amet,<br /><br />consectetur adipiscing elit.</p>\r\n<br />\r\n<p><strong>Account Number:</strong> 123456789130</p>\r\n<br />\r\n<p><strong>Branch Code:</strong> 123456789130</p>\r\n<br />\r\n<p><strong>Bank Name:</strong> Bank of America</p>\r\n<br />\r\n<p><strong>Bank Address:</strong> New York</p>', 15, 0, 1, 1, 0, 1, 1, 'e018ea311537eaa81c2a22e894064f4d-us19', 'subscribers', 'df624b23e2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) DEFAULT 0,
  `slider_image` varchar(150) DEFAULT NULL,
  `slider_heading` varchar(250) DEFAULT NULL,
  `slider_description` tinytext DEFAULT NULL,
  `slider_link` tinytext DEFAULT NULL,
  `slider_link_text` varchar(100) DEFAULT NULL,
  `lang` varchar(10) DEFAULT 'en',
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `sort_order` int(5) DEFAULT 99999,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_id`, `slider_image`, `slider_heading`, `slider_description`, `slider_link`, `slider_link_text`, `lang`, `is_default`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, 2, 'search-your-job-in-your-area-1556090003-928.jpg', 'Ищите работу?', 'У нас более 2 000 вакансии', '/jobs', 'Посмотреть вакансии', 'ru', 1, 1, 1, '2018-11-14 17:07:34', '2019-06-28 11:45:34'),
(7, 7, 'what-is-lorem-ipsum-1556090018-427.jpg', 'Ищите сотрудников правильно!', '<strong>UZAUTOJOBS</strong> удобный сервис по поиску сотрудников, экономит время для поиска кандидатов.', '#', 'Посмотреть резюме', 'ru', 1, 1, 2, '2018-11-14 17:28:45', '2019-06-27 05:56:27'),
(8, 8, 'ish-izlayapsizmi-1561553617-825.jpg', 'Ходимларни тўғри қидиринг?', '<strong>UZAUTOJOBS</strong> - ходимарни излаш учун қулай портал, вақтни тежаган ҳолда ходимларни топинг', '#', 'Бўш иш ўрнини кўриш', 'uz', 1, 1, 8, '2019-06-26 12:50:24', '2019-06-28 11:30:41'),
(9, 9, 'avtomobilsozlik-buyicha-ish-idiryapsizmi-1561553770-842.jpg', 'Иш излаяпсизми?', 'Бизда 2 мингдан ортиқ вакансия мавжуд', '#', 'Ишларни кўриш', 'uz', 1, 1, 9, '2019-06-26 12:56:10', '2019-06-28 11:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT 0,
  `state` varchar(40) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `is_default` int(1) DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 9999,
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_id`, `state`, `country_id`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Андижанская область', 234, 1, 1, 1, 'ru', '2019-06-21 05:28:57', '2019-06-21 05:28:57'),
(2, 2, 'Бухарская область', 234, 1, 1, 2, 'ru', '2019-06-21 05:29:08', '2019-06-21 05:29:08'),
(3, 3, 'Джизакская область', 234, 1, 1, 3, 'ru', '2019-06-21 05:29:18', '2019-06-21 05:29:18'),
(4, 4, 'Кашкадарьинская область', 234, 1, 1, 4, 'ru', '2019-06-21 05:29:31', '2019-06-21 05:29:31'),
(5, 5, 'Навоийская область', 234, 1, 1, 5, 'ru', '2019-06-21 05:29:44', '2019-06-21 05:29:44'),
(6, 6, 'Наманганская область', 234, 1, 1, 6, 'ru', '2019-06-21 05:30:02', '2019-06-21 05:30:02'),
(7, 7, 'Самаркандская область', 234, 1, 1, 7, 'ru', '2019-06-21 05:30:08', '2019-06-21 05:30:08'),
(8, 8, 'Сурхандарьинская область', 234, 1, 1, 8, 'ru', '2019-06-21 05:30:19', '2019-06-21 05:30:19'),
(9, 9, 'Сырдарьинская область', 234, 1, 1, 9, 'ru', '2019-06-21 05:30:28', '2019-06-21 05:30:28'),
(10, 10, 'Ташкентская область', 234, 1, 1, 10, 'ru', '2019-06-21 05:30:37', '2019-06-21 05:30:37'),
(11, 11, 'Ферганская область', 234, 1, 1, 11, 'ru', '2019-06-21 05:30:45', '2019-06-21 05:30:45'),
(12, 12, 'Хорезмская область', 234, 1, 1, 12, 'ru', '2019-06-21 05:30:52', '2019-06-21 05:30:52'),
(13, 13, 'Республика Каракалпакстан', 234, 1, 1, 13, 'ru', '2019-06-21 05:31:00', '2019-06-21 05:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `name`, `created_at`, `updated_at`) VALUES
(3, 'info@gmuzbekistan.uz', 'JSC \"GM Uzbekistan\"', '2019-06-22 11:04:09', '2019-06-22 11:04:09'),
(7, 'aza@mail.ru', 'lorem', '2019-06-22 11:43:23', '2019-06-22 11:43:23'),
(11, 'kobiljon.yusupov@gm.uz', 'Kobiljon Yusupov', '2019-06-26 16:21:12', '2019-06-26 16:21:12'),
(12, 'Xurshid.Niyozov@gm.uz', 'Хуршид Илхомиддинович Ниёзов', '2019-06-28 13:19:28', '2019-06-28 13:19:28'),
(13, 'azamat190392@gmail.com', 'Azamat Joldasbaevich Allabergenov', '2019-07-01 10:36:38', '2019-07-01 10:36:38'),
(14, 'muzaffarmirzo1986@gmail.com', 'Muzaffar Akramaliyevich Shermatov', '2019-07-02 06:33:17', '2019-07-02 06:33:17'),
(15, 'ihtiyor.abidjanov@mail.ru', 'Ихтиёрбек Бахрамжон ўғли Абиджанов', '2019-07-03 05:52:58', '2019-07-03 05:52:58'),
(16, 'bobur@gm.uz', 'Bobur Alimovich Alimov', '2019-07-08 09:25:55', '2019-07-08 09:25:55'),
(18, 'sarik@gm.uz', 'Sardor Bahodirovich Sapaev', '2019-07-08 10:15:53', '2019-07-08 10:15:53'),
(22, 'hr@gmuzbekistan.uz', 'JSC \"UzAutomotors\"', '2019-08-21 05:57:56', '2019-08-21 05:57:56'),
(50, 'gulomjon@mail.com', ' Sulaymonov Gulomjon Ulugbek ogli', '2019-09-27 03:39:11', '2019-09-27 03:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) DEFAULT 0,
  `testimonial_by` varchar(100) DEFAULT NULL,
  `testimonial` varchar(600) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial_id`, `testimonial_by`, `testimonial`, `company`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Garry Miller Jr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium nunc non justo placerat pulvinar. Vestibulum ac ullamcorper sapien, nec scelerisque ipsum. Aliquam in tempus nulla. Curabitur ac pulvinar elit. Donec sed iaculis lorem.', 'CEO - Gates Inc', 1, 1, 1, 'en', '2018-09-11 17:30:10', '2018-09-19 01:18:31'),
(2, 2, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium nunc non justo placerat pulvinar. Vestibulum ac ullamcorper sapien, nec scelerisque ipsum. Aliquam in tempus nulla. Curabitur ac pulvinar elit. Donec sed iaculis lorem.', 'PM, Google.com', 1, 1, 2, 'en', '2018-09-11 17:31:43', '2018-09-19 01:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender_id` int(2) DEFAULT NULL,
  `marital_status_id` int(2) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `national_id_card_number` varchar(100) DEFAULT NULL,
  `country_id` varchar(50) DEFAULT NULL,
  `state_id` varchar(50) DEFAULT NULL,
  `city_id` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile_num` varchar(25) DEFAULT NULL,
  `job_experience_id` int(2) DEFAULT NULL,
  `career_level_id` int(2) DEFAULT NULL,
  `industry_id` int(2) DEFAULT NULL,
  `functional_area_id` int(2) DEFAULT NULL,
  `current_salary` varchar(100) DEFAULT NULL,
  `expected_salary` varchar(100) DEFAULT NULL,
  `salary_currency` varchar(10) DEFAULT NULL,
  `street_address` tinytext DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_token` varchar(255) DEFAULT NULL,
  `provider` varchar(35) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_immediate_available` tinyint(1) DEFAULT 1,
  `num_profile_views` int(11) DEFAULT 0,
  `package_id` int(11) DEFAULT 0,
  `package_start_date` timestamp NULL DEFAULT NULL,
  `package_end_date` timestamp NULL DEFAULT NULL,
  `jobs_quota` int(5) DEFAULT 0,
  `availed_jobs_quota` int(5) DEFAULT 0,
  `search` text DEFAULT NULL,
  `is_subscribed` tinyint(1) DEFAULT 1,
  `ip_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `name`, `email`, `father_name`, `date_of_birth`, `gender_id`, `marital_status_id`, `nationality_id`, `national_id_card_number`, `country_id`, `state_id`, `city_id`, `phone`, `mobile_num`, `job_experience_id`, `career_level_id`, `industry_id`, `functional_area_id`, `current_salary`, `expected_salary`, `salary_currency`, `street_address`, `is_active`, `verified`, `verification_token`, `provider`, `provider_id`, `password`, `remember_token`, `image`, `lang`, `created_at`, `updated_at`, `is_immediate_available`, `num_profile_views`, `package_id`, `package_start_date`, `package_end_date`, `jobs_quota`, `availed_jobs_quota`, `search`, `is_subscribed`, `ip_address`) VALUES
(6, 'Kobiljon', 'Karimovich', 'YUsupov', 'Kobiljon Karimovich YUsupov', 'seeker@jobsportal.com', 'Karimovich', '1983-08-12', 1, 3, 234, 'AA1105650', '234', '10', '13', '+998977777777', '+998902101274', 2, 3, 1, 58, '2000000', '3500000', 'sum', 'Nurli Diyor 118, Andijan, Uzbekistan', 1, 1, NULL, NULL, NULL, '$2y$10$QDHAK1kYyk53DoDXorf1Ee.0KSUuU6yCP8WHnNFdnulPbeZIVm/Nu', 'kd0Q6fAPJFKQPDc23s635qmHdOVuVviS5Ou87FxOdVWhp0TkzXxzA2ba5nZM', '-1537267451-710.jpg', NULL, '2018-09-19 01:28:41', '2019-06-25 09:34:10', 0, 5, 0, NULL, NULL, 0, 0, 'معلومات معلومات شخصية معلومات شخصية الولايات المتحدة Washington Auburn Dummy 2000-01-19 +1234567890 +1324564798 الذكر 6 سنوات 6000 - 10000 الخبرة المهنية تكنولوجيا المعلومات التصميم الإبداعي Dummy Street Address 123 USA معلومات شخصية  أدوبي المصور أدوبي فوتوشوب مهارات التواصل CSS HTML جافا سكريبت مسج وورد', 0, NULL),
(7, 'testet', NULL, 'tesg', 'testet tesg', 'testertet@tesn.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '$2y$10$Tpr7c.tfaIOti9W7CX9ZrOsIgtve.4UDiNuORB3qo67wG5P6GgiSu', NULL, NULL, NULL, '2019-01-02 04:34:59', '2019-01-02 04:34:59', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(8, 'testetet', NULL, 'tetet', 'testetet tetet', 'style@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '$2y$10$6NNXk2l/5NCJItve9x0gIeCtW9wqLRXHq4FV2WIvFSJwDx3n9Tiey', NULL, NULL, NULL, '2019-01-02 04:38:25', '2019-01-02 04:38:25', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(9, 'Azamat', 'Joldasbaevich', 'Allabergenov', 'Azamat Joldasbaevich Allabergenov', 'azamat190392@gmail.com', 'Joldasbaevich', '1992-03-19', 2, 3, 234, '#webdeveloper', '234', '13', '5', '+998971234567', '+998971234567', 4, 1, 7, 144, '5000000', '5000000', 'UZS', 'lorem', 1, 0, '81ebf5b1d9416f87a0c48dabb2b663d3862aadbe39cbaa79190287987ec52eb6', NULL, NULL, '$2y$10$clFNYiYz06SUvdH1k2aU2efGLMM3jqLGAnn4ji08lx.F6en.BSbvq', 'qopVHCt3X4uVWXh3QGreVMSMxVcGqtBm1NSdbp1c7SmxrISKD1BkzChaUEAo', '-1561977398-823.png', NULL, '2019-06-22 11:18:00', '2019-07-05 05:34:08', 1, 2, 0, NULL, NULL, 0, 0, 'Azamat Joldasbaevich Allabergenov Узбекистан Республика Каракалпакстан Нукус Joldasbaevich 1992-03-19 +998971234567 +998971234567 Мужской пол 3 года 5000000 - 5000000 Начальник отдела Реклама / PR Веб-разработчик lorem ', 1, NULL),
(10, 'Хуршид', 'Илхомиддинович', 'Ниёзов', 'Хуршид Илхомиддинович Ниёзов', 'Xurshid.Niyozov@gm.uz', 'Илхомиддинович', '1992-04-30', 2, 4, 234, '123456', '234', '10', '1', '+998973771014', '+998973771014', 12, 3, 1, 144, '5000000', '11000000', 'UZS', 'Uchtepa', 1, 1, '4e9b7b6941454a51ac4c166005a75ad4c8746a187493c797a1bd2f07ac39efa9', NULL, NULL, '$2y$10$SatHJ5tgDZR9NnkabOpQGOmuBnyy8yoL/ZGnf1NVEnjSjsUq8FrQS', '9GCK0bCdsdPXvsiBsUyNxHkw7YryPMWwoSuOAbddCebncQeZkgjB8za7PN37', '-1561727968-966.png', NULL, '2019-06-24 10:22:03', '2019-08-21 11:49:00', 1, 58, 0, NULL, NULL, 0, 0, 'Хуршид Илхомиддинович Ниёзов Узбекистан Ташкентская область Ташкент Илхомиддинович 1992-04-30 +998973771014 +998973771014 Мужской пол Менее чем за 1 год 5000000 - 11000000 Опытный Профессионал Информационные технологии Веб-разработчик Uchtepa ', 1, NULL),
(11, 'Husan', 'Toyirjon o\'g\'li', 'Sharipov', 'Husan Toyirjon o\'g\'li Sharipov', 'Husan.sharipov@gm.uz', 'Toyirjon', '1992-06-27', 2, 4, 234, '11', '234', '10', '1', '+998977666008', '+998977666008', 5, 3, 1, 19, '4000000', '7000000', '6500000', 'UchTepa', 1, 1, NULL, NULL, NULL, '$2y$10$LICg9dm29euzfcqVOpW2JeRHWwKyRg2Rmxud/uglMJnqdWNfrFbB6', NULL, NULL, NULL, '2019-06-25 13:21:26', '2019-06-25 13:21:27', 1, 0, 0, NULL, NULL, 0, 0, 'Husan Toyirjon o\'g\'li Sharipov Узбекистан Ташкентская область Ташкент Toyirjon 1992-06-27 +998977666008 +998977666008 Мужской пол 4 Year 4000000 - 7000000 Опытный Профессионал Информационные технологии Компьютерная сеть UchTepa ', 1, NULL),
(12, 'Husan', 'Toyirjon o\'g\'li', 'Sharipov', 'Husan Toyirjon o\'g\'li Sharipov', 'husanbee@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '4d40d14ad28743a9893f3bf27b7c0148c2343484fe2764e957d9aad1ddc6d090', NULL, NULL, '$2y$10$tT9Oup8rlBywe/HXgIlFleHfUXITTVcWlzkCFx4dujeV.PeQKbuCm', NULL, NULL, NULL, '2019-06-28 14:16:25', '2019-06-28 14:16:25', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(13, 'Бахтиёржон', 'Бахрамжанович', 'Ураймов', 'Бахтиёржон Бахрамжанович Ураймов', 'bahtiyorjon.uraimov@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '8a5b1b736c50945123b4fef9d4b3ee135127069345970da8f8d70d9e36f4ecfd', NULL, NULL, '$2y$10$EAU42EWRwg3RkGa02eNwx.f6aHwhRybSMA/xCrsXYtGSMOrvaRUJK', 'unort3x93OvTWNOK7FsXhPQVuas2NJ7z1PcABP0Q0T92Os12DsIJ2mYkO9uH', NULL, NULL, '2019-07-02 05:40:35', '2019-07-02 05:40:36', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(14, 'Muzaffar', 'Akramaliyevich', 'Shermatov', ' Shermatov Muzaffar Akramaliyevich', 'muzaffarmirzo1986@gmail.com', NULL, '1986-08-16', 2, 22, 234, 'паспорт Республики Узбекистана', '234', '1', '4', NULL, '+998934406440', 8, 3, 31, 590, '2 500 000', '3 000 000', 'UZS', 'Асакинский район, Мустахкам МФЙ.', 1, 1, NULL, NULL, NULL, '$2y$10$CLK7.lU4WI8wJUy8zC9wIuNJE6AVED7DTDvey54p4SkJ.3.WO65yO', 'EffQZzTE06fynaoNTj506TO98P90OqabqUNfF9bpwVowhMKLWUZC1W6Thikg', NULL, NULL, '2019-07-02 06:16:04', '2019-09-24 04:54:42', 1, 0, 0, NULL, NULL, 0, 0, ' Shermatov Muzaffar Akramaliyevich Узбекистан Андижанская область Андижан  1986-08-16  +998934406440 Мужской  7 год 2 500 000 - 3 000 000 Опытный Профессионал Автомобильная промышленность Администрация Асакинский район, Мустахкам МФЙ. ', 1, NULL),
(15, 'Dilmurod', 'Kosimovich', 'Nasipov', 'Dilmurod Kosimovich Nasipov', 'dilmurod.nasipov@gm.uz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'bd4d22c9e13e1f1cd25ae2973dd6c66d30648ef536e9d463c3a0e2764eee64d3', NULL, NULL, '$2y$10$rLSfcoic1C7khg2K9mrJmuNQz.IMj63w/1cS3eBmnhK5plaqoweDS', NULL, NULL, NULL, '2019-07-03 05:28:38', '2019-07-03 05:28:38', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(16, 'Ихтиёрбек', 'Бахрамжон ўғли', 'Абиджанов', ' Абиджанов Ихтиёрбек Бахрамжон ўғли', 'ihtiyor.abidjanov@mail.ru', NULL, '1993-12-25', 2, 22, 234, 'Паспорт', '234', '1', '4', NULL, '+998932427060', 1, 2, 22, 1, '5000000', '5000000', 'UZS', 'Навқирон кўчаси 7 уй', 1, 1, NULL, NULL, NULL, '$2y$10$HO7DHD1v0zl5FHUn7Cnepu/YIrjCvyYbwBe4ZCdaTEEFOfnlXJh3a', 'msioL87J3SH6DWGvRyXbwQ4uof25EaEKW4rCJodvT3rIzE9m70ULzeIyWQum', NULL, NULL, '2019-07-03 05:35:30', '2019-09-25 04:59:43', 1, 0, 0, NULL, NULL, 0, 0, 'Ихтиёрбек Бахрамжон ўғли Абиджанов Ўзбекистон Андижанская область Андижан Бахрамжанович 1993-12-25 +998932427060 +998932427060 Эркак Бир йилдан кам 5000000 - 5000000 Бошланғич даража Business Development Accountant Навқирон кўчаси 7 уй ', 1, NULL),
(17, 'Хусниддин', 'Лутфидинович', 'Эргашев', 'Хусниддин Лутфидинович Эргашев', 'Husniddin.ergashev@gm.uz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '$2y$10$6JABsQUcG3uDBompcz1d9ugePl3MgKfzkqVU1os.JqQS./SnbQM3q', 'OV6cSMhGG2joFgPo5BmezPAQAE2XnOLQlk5EzZMlF4c7Oqb3fwuqw7qLasVK', NULL, NULL, '2019-07-05 03:27:35', '2019-07-05 03:27:35', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(18, 'Bobur', 'Alimovich', 'Alimov', 'Bobur Alimovich Alimov', 'bobur@gm.uz', 'Alimovich', '1990-02-13', 2, 2, 234, 'lorem', '234', '12', '15', '+998971234567', '+998974452515', 1, 3, 20, 590, '2500000', '5000000', 'UZS', 'lorem ipsum', 0, 1, NULL, NULL, NULL, '$2y$10$TFrAsL/7Jk0KyvrQnCtMlO9pH0XodDiqd8Gf4RvvHDKK7m/A/Gd7W', 'pu0vDELRiA0MBLpxKMN6oINou4mOr6SfRb49XWaKSmfprkptdtVMBRNej4vU', NULL, NULL, '2019-07-08 08:46:04', '2019-07-08 09:25:55', 1, 0, 0, NULL, NULL, 0, 0, 'Bobur Alimovich Alimov Узбекистан Хорезмская область Хива Alimovich 1990-02-13 +998971234567 +998974452515 Мужской  1 год 2500000 - 5000000 Опытный Профессионал Искусство / Развлечения Администрация lorem ipsum ', 1, NULL),
(19, 'Sardor', 'Bahodirovich', 'Sapaev', ' Sapaev Sardor Bahodirovich', 'sarik@gm.uz', NULL, '1990-02-20', 1, 2, 234, 'lorem', '234', '2', '6', NULL, '555555', 3, 5, 8, 144, '3000000', '5000000', 'UZS', 'lorem', 1, 0, '8278f3a9a1bd0f7f3bc7299d62aeec64c48a661478c4bfd5b659efdbda54f7f8', NULL, NULL, '$2y$10$v5JByB5l/RCXC6YNTzw1s.p2fR.BGgemP2UsfWAAUhtPGjPrO0WmS', 'xEscrDT3Zi1vVsXMy4Wdi1trduKddZ7fGIIHZH2KoiL4cPoZyTsYWhxWfu42', NULL, NULL, '2019-07-08 09:45:03', '2019-09-11 04:01:12', 1, 0, 0, NULL, NULL, 0, 0, ' Sapaev Sardor Bahodirovich Узбекистан Бухарская область Бухара  1990-02-20  555555 Женский  2 года 3000000 - 5000000 Стажер/Студент Бухгалтерский учет / налогообложение Веб-разработчик lorem ', 1, NULL),
(20, 'test', 'test', 'test', ' test test test', 'testbek@gm.uz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'd7c0e4836a1fb935960e4478a4e6ce1baa1b72a957e4a2071fff739a7b022be0', NULL, NULL, '$2y$10$jV0yJdm7EzTRi3n0RARuH.P8gX7EyBcdfhDE.M21HSorOXTnC6N7W', 'mpWarIhpk2iXckCXkyvSYKAea3Cnv1CxAqLNIFIkMdZrBd5B43szdsjfjMG8', NULL, NULL, '2019-07-08 11:13:13', '2019-07-08 11:13:13', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(21, 'Шерзодбек', 'Нуманжанович', 'Рузиев', ' Рузиев Шерзодбек Нуманжанович', 'sherzodbekruziev2122@mail.ru', NULL, '2019-08-29', 2, 1, 234, 'wqd', '234', '12', '15', NULL, '23232', 4, 3, 57, 21, '2000000', '20000000', 'uzs', 'qwe', 0, 0, '3d5ad19008644581dcd70bfa92a17a273c28aa0d3a43a06199500e66f78b4231', NULL, NULL, '$2y$10$znkVCAV1Qj7jRimiL6ieT.UobwF0ZqUGQxg90T/nUgUcy4DIBSBPm', NULL, NULL, NULL, '2019-07-08 14:37:53', '2019-09-10 11:33:09', 1, 0, 0, NULL, NULL, 0, 0, ' Рузиев Шерзодбек Нуманжанович Узбекистан Хорезмская область Хива  2019-08-29  23232 Мужской  3 года 2000000 - 20000000 Опытный Профессионал Распределение и логистика Контент менеджер qwe ', 1, NULL),
(22, 'zohid', 'zohidovich', 'alimov', ' alimov zohid zohidovich', 'zoha@gm.uz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'a55cdffbeda33288caabc98d2d75cc4cc2c6fe92c6b1e3f6882d7fe5e4541514', NULL, NULL, '$2y$10$5YnAdtgUYpDoQspV2rCNfeeto0jU/wuo98JUJxNwPYMa5rYq8BVlK', 'dsZl6fuODtOsJTAOcT8Uff8DTff5dJfSoZcGdzztmdR4vVbCt2ruCfJcUTxY', NULL, NULL, '2019-07-08 17:29:51', '2019-07-08 17:29:51', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(23, 'aliwer', 'Olimov', 'Solivoy', ' Solivoy aliwer Olimov', 'husanbee@mail.com', 'test we wq', '2019-09-11', 2, 1, 234, '223', '234', '1', '4', '+99895 145 06 98', '9066112', 5, 3, 35, 19, '2000000', '20000000', 'UZS', 'maybogcha 200', 1, 1, 'a069eccb1f1ac1acb091f19b3d1dfb87118a4d22c593daf72bcce3f3d5c2d621', NULL, NULL, '$2y$10$oFQrNVnLpkbme2NOC4Y9JuIlJLVu2JbUqBoU.7qJm/8RbIxlybI9G', 'VmjSwHc2vnakPt8sGH68Slkv7t7bfBCs0JDOYDdyzSyq3q2faxIspUcDNyIZ', NULL, NULL, '2019-07-29 13:47:18', '2019-11-07 10:53:52', 1, 11, 0, NULL, NULL, 0, 0, ' Solivoy aliwer Olimov Узбекистан Андижанская область Андижан test we wq 2019-09-11 +99895 145 06 98 9066112 Мужской  4 года 2000000 - 20000000 Опытный Профессионал Управление событиями Компьютерная сеть maybogcha 200 ', 1, NULL),
(24, 'Zikiryohon', 'Saidabrorhanovich', 'Zikiryaev', ' Zikiryaev Zikiryohon Saidabrorhanovich', 'zikiryo@icloud.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'd0ef763928ba12a6ed7b63cc6a7f9f8482d57abcb8e74f0835190799b52818dc', NULL, NULL, '$2y$10$v2rTtK5R4Q6BaLCeUAHAC.fx9lq3m/WVjAhHhSfx/odyfRoFXlpv2', NULL, NULL, NULL, '2019-08-08 13:37:31', '2019-08-08 13:37:31', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(25, 'Мухаммадали', 'Маннобжон угли', 'Махмудов', ' Махмудов Мухаммадали Маннобжон угли', 'muhammadaliaway@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'b4a2ae28602bad8a3b88f3c9663a3bf7df70d4fa23f91ebc70e633ab00906a55', NULL, NULL, '$2y$10$.aYzhXrxJwQePB5mtDFrbeSkYr0o70j44AEpf8XdMTePjFleJP.KO', NULL, NULL, NULL, '2019-08-09 05:43:32', '2019-08-09 05:43:32', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, NULL),
(30, 'pij', 'oij', 'j', ' j pij oij', 'jqwd@wqd.er', 'wq', '2019-09-11', 2, 3, 234, 'wqd', '234', '12', '15', '12132131', '213', 3, 2, 57, 20, '2000000', '20000000', 'qwqd', 'qwd', 1, 1, NULL, NULL, NULL, '$2y$10$A2Goq.g880lYTne8nSFndehgDc4UOsGtceq84TW047otIyDFEmcBm', NULL, NULL, NULL, '2019-09-07 06:45:42', '2019-09-07 06:45:42', 1, 0, 0, NULL, NULL, 0, 0, ' j pij oij Узбекистан Хорезмская область Хива wq 2019-09-11 12132131 213 Мужской  2 года 2000000 - 20000000 Начальный уровень Распределение и логистика Консультант qwd ', 1, NULL),
(31, 'Gulomjon', 'Ulugbek ogli', 'Sulaymonov', ' Sulaymonov Gulomjon Ulugbek ogli', 'gulomjon@mail.com', 'Ulugbek ogli', '2019-09-24', 2, 1, 234, NULL, NULL, '1', '4', NULL, '999066112', 12, NULL, 30, 18, '2000000', '20000000', NULL, 'maybogcha 200', 1, 1, NULL, NULL, NULL, '$2y$10$0CnRVWFEiuzm1q4m63U/VOObEGA2PIZA9R1zY.x/iUjHCIn7GLlva', 'EnY0jSUfLe5PgyNrc0dYQOQO7jJBwxW7KtfdKRYcKL0h1NHzLWRlzDnoTm4l', '-1569555550-937.jpg', NULL, '2019-09-07 06:50:05', '2019-10-25 05:38:21', 1, 1, 0, NULL, NULL, 0, 0, ' Sulaymonov Gulomjon Ulugbek ogli Узбекистан Андижанская область Андижан Ulugbek ogli 2019-09-24  999066112 Мужской  Менее чем за 1 год 2000000 - 20000000  Колл-центр Компьютерное железо maybogcha 200 ', 1, NULL),
(41, 'test', 'tees', 'tttr', ' tttr test tees', 'ets@te.t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '$2y$10$unzqegXzdDvU3R27icaKs.cHGbhEZ2WDW/6gy8n4hFL4IDJMgAQ8W', NULL, NULL, NULL, '2019-10-28 05:26:44', '2019-10-28 05:26:45', 1, 0, 0, NULL, NULL, 0, 0, NULL, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `listing_title` varchar(150) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  `to_name` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `from_phone` varchar(20) DEFAULT NULL,
  `message_txt` mediumtext DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_id` int(11) DEFAULT 0,
  `video_title` tinytext DEFAULT NULL,
  `video_text` text DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT NULL,
  `sort_order` int(5) DEFAULT 99999,
  `lang` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `video_title`, `video_text`, `video_link`, `is_default`, `is_active`, `sort_order`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Turn a challenge into a chance', 'Our partners make Milestone products more dynamic and integrations push the limits of what is possible. XProtect® software protects animals from known poachers and protects the city of Minneapolis.', 'https://www.youtube.com/embed/FxiskmF16gU?rel=0&showinfo=0', 1, 1, 1, 'en', '2018-09-11 11:41:33', '2019-01-01 05:35:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `applicant_messages`
--
ALTER TABLE `applicant_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_levels`
--
ALTER TABLE `career_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_content`
--
ALTER TABLE `cms_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_messages`
--
ALTER TABLE `company_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_password_resets`
--
ALTER TABLE `company_password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_details`
--
ALTER TABLE `countries_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_levels`
--
ALTER TABLE `degree_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_types`
--
ALTER TABLE `degree_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites_company`
--
ALTER TABLE `favourites_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites_job`
--
ALTER TABLE `favourites_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_applicants`
--
ALTER TABLE `favourite_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functional_areas`
--
ALTER TABLE `functional_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `jobs` ADD FULLTEXT KEY `full_search` (`search`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_shifts`
--
ALTER TABLE `job_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_levels`
--
ALTER TABLE `language_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major_subjects`
--
ALTER TABLE `major_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_job_skills`
--
ALTER TABLE `manage_job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownership_types`
--
ALTER TABLE `ownership_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profile_cvs`
--
ALTER TABLE `profile_cvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_educations`
--
ALTER TABLE `profile_educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_education_major_subjects`
--
ALTER TABLE `profile_education_major_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_languages`
--
ALTER TABLE `profile_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_projects`
--
ALTER TABLE `profile_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_relatives`
--
ALTER TABLE `profile_relatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_skills`
--
ALTER TABLE `profile_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_summaries`
--
ALTER TABLE `profile_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_jobs`
--
ALTER TABLE `queue_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_abuse_company_messages`
--
ALTER TABLE `report_abuse_company_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_abuse_messages`
--
ALTER TABLE `report_abuse_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_types`
--
ALTER TABLE `result_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_single_questions`
--
ALTER TABLE `resume_single_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_periods`
--
ALTER TABLE `salary_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_to_friend_messages`
--
ALTER TABLE `send_to_friend_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `full_search` (`search`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `applicant_messages`
--
ALTER TABLE `applicant_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_status`
--
ALTER TABLE `application_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `career_levels`
--
ALTER TABLE `career_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_content`
--
ALTER TABLE `cms_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `company_messages`
--
ALTER TABLE `company_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987;

--
-- AUTO_INCREMENT for table `countries_details`
--
ALTER TABLE `countries_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `degree_levels`
--
ALTER TABLE `degree_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `degree_types`
--
ALTER TABLE `degree_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favourites_company`
--
ALTER TABLE `favourites_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `favourites_job`
--
ALTER TABLE `favourites_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `favourite_applicants`
--
ALTER TABLE `favourite_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `functional_areas`
--
ALTER TABLE `functional_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `job_shifts`
--
ALTER TABLE `job_shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `language_levels`
--
ALTER TABLE `language_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `major_subjects`
--
ALTER TABLE `major_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `manage_job_skills`
--
ALTER TABLE `manage_job_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ownership_types`
--
ALTER TABLE `ownership_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profile_cvs`
--
ALTER TABLE `profile_cvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `profile_educations`
--
ALTER TABLE `profile_educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profile_education_major_subjects`
--
ALTER TABLE `profile_education_major_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `profile_languages`
--
ALTER TABLE `profile_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `profile_projects`
--
ALTER TABLE `profile_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profile_relatives`
--
ALTER TABLE `profile_relatives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profile_skills`
--
ALTER TABLE `profile_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profile_summaries`
--
ALTER TABLE `profile_summaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `queue_jobs`
--
ALTER TABLE `queue_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_abuse_company_messages`
--
ALTER TABLE `report_abuse_company_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report_abuse_messages`
--
ALTER TABLE `report_abuse_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_types`
--
ALTER TABLE `result_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resume_single_questions`
--
ALTER TABLE `resume_single_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary_periods`
--
ALTER TABLE `salary_periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `send_to_friend_messages`
--
ALTER TABLE `send_to_friend_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1273;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
