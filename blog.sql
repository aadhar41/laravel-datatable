-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 01:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(20) NOT NULL,
  `week` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `week`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Caterpillar, just as I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of my own. I\'m a hatter.\' Here the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of a well?\'.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(2, '2', 'Lobster Quadrille?\' the Gryphon at the March Hare, \'that \"I like what I get\" is the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find out the proper way of escape.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(3, '3', 'Cat, as soon as she went on, very much to-night, I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. The poor little thing was snorting like a mouse, you know. Which shall.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(4, '4', 'Why, I do wonder what was the White Rabbit hurried by--the frightened Mouse splashed his way through the door, and the White Rabbit, who said in a minute. Alice began to get into her face, with such.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(5, '5', 'PROVES his guilt,\' said the Mouse, who seemed to Alice to herself, \'Which way? Which way?\', holding her hand on the back. At last the Mouse, turning to Alice an excellent plan, no doubt, and very.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(6, '6', 'King: \'leave out that she could remember them, all these changes are! I\'m never sure what I\'m going to be, from one of the mushroom, and her eyes anxiously fixed on it, for she was ever to get out.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(7, '7', 'Alice; \'it\'s laid for a long tail, certainly,\' said Alice, in a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder if I shall be late!\' (when she thought it must.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(8, '8', 'Five, who had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD not remember ever.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(9, '9', 'Dormouse say?\' one of the sea.\' \'I couldn\'t afford to learn it.\' said the Caterpillar. Alice said nothing; she had put on his flappers, \'--Mystery, ancient and modern, with Seaography: then.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(10, '10', 'March Hare went on. \'Would you tell me, Pat, what\'s that in the sea, \'and in that case I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little passage: and.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(11, '11', 'Queen?\' said the Rabbit\'s voice; and the choking of the tale was something like it,\' said the King. \'Shan\'t,\' said the Lory positively refused to tell them something more. \'You promised to tell him.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(12, '12', 'Queen of Hearts, she made some tarts, All on a branch of a muchness?\' \'Really, now you ask me,\' said Alice, and looking at Alice as she went on just as she ran; but the Rabbit say, \'A barrowful will.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(13, '13', 'Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what you\'re talking about,\' said Alice. \'Why, there they lay on the ground as she could not swim. He sent them word I had not as yet.', 1, '2020-05-05 12:22:53', '2020-05-05 12:22:53'),
(14, '14', 'The other side of the trees behind him. \'--or next day, maybe,\' the Footman continued in the sun. (IF you don\'t know the way out of sight before the officer could get away without being seen, when.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(15, '15', 'Indeed, she had read several nice little histories about children who had not noticed before, and behind it when she caught it, and then Alice put down the middle, nursing a baby; the cook took the.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(16, '16', 'Alice, as she went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s angry, and wags its tail when I\'m angry.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(17, '17', 'Alice. \'Who\'s making personal remarks now?\' the Hatter began, in a great crowd assembled about them--all sorts of things, and she, oh! she knows such a pleasant temper, and thought it over.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(18, '18', 'William replied to his son, \'I feared it might happen any minute, \'and then,\' thought Alice, \'or perhaps they won\'t walk the way to explain the mistake it had been. But her sister was reading, but.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(19, '19', 'Tortoise because he was obliged to have been changed in the house till she heard was a dead silence instantly, and Alice joined the procession, wondering very much of it had fallen into it: there.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(20, '20', 'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the effect of lying down with one foot. \'Get up!\' said the Rabbit coming to look over their shoulders, that all the children she knew.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(21, '21', 'King said to herself, \'if one only knew how to set them free, Exactly as we were. My notion was that you couldn\'t cut off a head could be beheaded, and that is rather a hard word, I will just.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(22, '22', 'Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all comfortable, and it set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'or you\'ll be telling.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(23, '23', 'At this the whole pack rose up into the air off all its feet at the March Hare. The Hatter was the White Rabbit cried out, \'Silence in the direction in which you usually see Shakespeare, in the sun.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(24, '24', 'Alice said very politely, \'for I can\'t put it in her head, and she hurried out of its right paw round, \'lives a March Hare. \'Exactly so,\' said the King, and he called the Queen, and in another.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(25, '25', 'M--\' \'Why with an anxious look at it!\' This speech caused a remarkable sensation among the leaves, which she concluded that it was a body to cut it off from: that he had never seen such a curious.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(26, '26', 'I the same thing as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the Mouse heard this, it turned a.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(27, '27', 'There was a good deal until she made out the verses the White Rabbit: it was too late to wish that! She went in search of her own child-life, and the Mock Turtle. \'She can\'t explain MYSELF, I\'m.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(28, '28', 'Mock Turtle drew a long way. So they sat down, and felt quite relieved to see a little scream, half of fright and half believed herself in Wonderland, though she knew that it might appear to others.', 1, '2020-05-05 12:22:54', '2020-05-05 12:22:54'),
(29, '29', 'I\'m mad?\' said Alice. \'Oh, don\'t bother ME,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\'.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(30, '30', 'Waiting in a melancholy tone: \'it doesn\'t seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle a little shriek, and went on growing, and growing, and very angrily. \'A knot!\' said.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(31, '31', 'The judge, by the end of your flamingo. Shall I try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know I have to beat them off, and she hurried out of its voice. \'Back to land.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(32, '32', 'Footman remarked, \'till tomorrow--\' At this moment the King, going up to Alice, and looking anxiously round to see what I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(33, '33', 'My notion was that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, timidly; \'some of the baby?\' said the King, looking round the thistle again; then the different branches of.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(34, '34', 'Alice, thinking it was too late to wish that! She went in search of her sister, as well be at school at once.\' However, she soon made out that one of the Queen\'s ears--\' the Rabbit in a great.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(35, '35', 'I hadn\'t quite finished my tea when I breathe\"!\' \'It IS the same when I learn music.\' \'Ah! that accounts for it,\' said the King. The White Rabbit hurried by--the frightened Mouse splashed his way.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(36, '36', 'Duchess by this time, and was gone in a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a mournful tone, \'he won\'t do a thing before, but she added.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(37, '37', 'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing at all. \'But perhaps he can\'t help that,\' said the Gryphon: and Alice joined the procession, wondering very much what would be very likely.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(38, '38', 'Yet you finished the guinea-pigs!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. The poor little thing sobbed again (or grunted, it was too small, but at the cook took the watch and.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(39, '39', 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go through next walking about at the cook, and a large piece out of the trial.\' \'Stupid things!\' Alice thought over.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55'),
(40, '40', 'HERE.\' \'But then,\' thought Alice, \'it\'ll never do to come down the little creature down, and was a body to cut it off from: that he had never heard of uglifying!\' it exclaimed. \'You know what a.', 1, '2020-05-05 12:22:55', '2020-05-05 12:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` tinyint(10) DEFAULT 1,
  `status` tinyint(10) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jamarcus Morissette', 'treva.adams@gmail.com', 1, 0, '2018-01-30 17:15:27', '2018-04-23 04:51:54'),
(2, 'Dr. Stanford Waters', 'stephania08@lockman.com', 1, 0, '1979-08-06 22:06:58', '2016-05-13 15:45:50'),
(3, 'Ms. Johanna Kertzmann', 'audrey.greenfelder@stiedemann.com', 1, 1, '1982-03-09 04:41:39', '1972-12-11 22:05:37'),
(4, 'Raegan Armstrong', 'cbuckridge@keeling.com', 0, 1, '1996-11-24 04:35:37', '2012-04-07 06:30:28'),
(5, 'Kayli Williamson DVM', 'zlueilwitz@schaden.com', 1, 1, '2014-12-26 16:48:27', '2010-07-27 00:24:17'),
(6, 'Terrell Heathcote', 'simonis.tamia@reichert.info', 1, 0, '2006-08-20 02:29:41', '1976-07-26 18:16:23'),
(7, 'Carolyn Gusikowski I', 'johnny27@steuber.com', 1, 1, '2011-10-05 03:51:39', '1995-09-24 05:57:08'),
(8, 'Brett Frami', 'tvandervort@gmail.com', 0, 1, '1996-12-04 14:14:18', '1995-03-16 12:04:30'),
(9, 'Tate Schuster', 'isaiah61@gutkowski.com', 0, 1, '2001-05-03 23:40:25', '1974-07-11 03:45:16'),
(10, 'Kevin Bernier', 'vada.gleason@yahoo.com', 0, 0, '1970-03-07 11:20:49', '2013-03-15 08:50:02'),
(11, 'Lenora Hettinger', 'hollie70@hackett.com', 1, 0, '2009-08-30 11:10:04', '2007-08-10 08:12:37'),
(12, 'Nico Nienow Jr.', 'aoberbrunner@hotmail.com', 1, 1, '1970-09-10 03:41:01', '1978-06-01 10:23:44'),
(13, 'Rico Mayer', 'lavon.marks@hotmail.com', 1, 1, '2001-08-21 21:16:48', '1971-01-14 14:16:02'),
(14, 'Antwon McCullough MD', 'ardella.little@gmail.com', 1, 0, '2012-05-03 13:54:16', '2000-08-12 13:18:41'),
(15, 'Jarvis Jones', 'tia32@hotmail.com', 1, 1, '1973-06-19 10:28:41', '1996-06-12 10:34:49'),
(16, 'Miss Aida Terry', 'tyrese.herzog@osinski.net', 1, 0, '1970-01-31 06:34:57', '2012-01-13 12:11:58'),
(17, 'Monica Dach IV', 'utrantow@boyer.org', 0, 0, '1973-08-05 21:26:01', '2014-12-28 22:23:29'),
(18, 'Norene Huel', 'beulah.schmeler@yahoo.com', 1, 0, '2007-09-13 10:21:54', '1988-08-25 09:53:13'),
(19, 'Ashton Spinka', 'mayer.kody@reynolds.com', 1, 0, '1983-12-22 00:11:40', '1991-11-18 16:15:24'),
(20, 'Itzel Schultz', 'weimann.nikki@powlowski.biz', 0, 0, '1992-03-31 03:51:42', '1999-09-07 09:09:54'),
(21, 'Michelle Trantow', 'emmerich.buford@windler.biz', 0, 0, '2004-07-17 17:55:32', '2006-05-04 09:19:19'),
(22, 'Winfield Bartoletti II', 'dherzog@hotmail.com', 1, 1, '1972-12-27 19:00:04', '1987-11-03 11:23:58'),
(23, 'Elyse Luettgen', 'davis.cara@gmail.com', 0, 0, '1988-10-27 06:18:38', '1981-05-12 13:06:57'),
(24, 'Dimitri Kunde', 'lstroman@hotmail.com', 0, 0, '1999-04-20 15:00:40', '2020-04-23 16:40:52'),
(25, 'Ashlynn Roob', 'lauretta12@parker.biz', 0, 0, '1999-09-18 15:56:24', '2014-12-07 19:07:47'),
(26, 'Mohammed Wiegand', 'oheidenreich@maggio.info', 0, 0, '1996-06-23 13:09:52', '1972-08-24 17:05:15'),
(27, 'Ali Flatley', 'demond32@hotmail.com', 0, 1, '1991-05-15 08:54:14', '1980-03-22 01:22:18'),
(28, 'Marques Wiza III', 'veda32@stark.info', 1, 1, '1980-10-09 15:19:30', '2014-12-01 04:32:21'),
(29, 'Ms. Greta Predovic I', 'antoinette.parisian@yahoo.com', 1, 1, '1990-12-25 14:30:28', '2002-09-18 07:41:01'),
(30, 'Prof. Robert Bednar', 'wgreen@bartell.com', 0, 0, '1982-12-31 02:03:00', '2010-08-02 02:54:36'),
(31, 'Rashad Jaskolski', 'abdiel.labadie@schuppe.info', 1, 0, '2010-05-17 04:12:12', '2004-02-27 09:43:24'),
(32, 'Niko Deckow DDS', 'mbarton@fahey.com', 0, 1, '2003-01-08 01:32:51', '2013-08-19 20:16:35'),
(33, 'Prof. Woodrow Klocko', 'lebsack.aracely@langosh.com', 0, 1, '1980-08-12 15:18:11', '1978-07-18 15:29:36'),
(34, 'Erwin Pagac', 'eroberts@hotmail.com', 0, 1, '1977-07-14 19:10:08', '1997-11-08 21:44:25'),
(35, 'Prof. Eli Hahn', 'thompson.magdalena@klein.com', 1, 1, '1976-11-09 23:55:13', '1976-11-12 02:27:43'),
(36, 'Jade King', 'enienow@yahoo.com', 0, 1, '2006-06-14 19:24:29', '2007-09-08 20:21:04'),
(37, 'Alyson Wilkinson', 'baron60@gleason.com', 0, 1, '2010-12-09 07:11:20', '2011-09-09 10:31:54'),
(38, 'Larissa Lesch DVM', 'wendell36@hotmail.com', 1, 0, '1998-10-04 03:52:12', '2015-11-19 18:07:56'),
(39, 'Jaycee Armstrong', 'citlalli02@schmitt.com', 1, 1, '1974-04-12 20:47:05', '1971-01-02 11:13:03'),
(40, 'Burdette Spencer II', 'chaim06@morar.net', 0, 0, '1991-11-03 03:08:50', '2005-03-17 16:19:40'),
(41, 'Geovanni Ward', 'allie37@keebler.com', 0, 0, '2016-02-28 10:44:50', '2008-06-18 02:02:08'),
(42, 'Hazel Walter', 'crawford.fisher@gmail.com', 0, 1, '2019-12-26 21:48:30', '1980-08-19 03:02:54'),
(43, 'Adrien Altenwerth', 'kerluke.eino@yahoo.com', 0, 1, '1972-08-11 07:10:04', '1994-05-29 21:46:52'),
(44, 'Riley Schowalter', 'grant.aaliyah@ratke.net', 0, 1, '2009-05-07 03:56:37', '1994-01-11 07:29:32'),
(45, 'Anya Denesik', 'runolfsdottir.curt@reichel.com', 0, 0, '1989-04-04 14:13:57', '2001-11-10 16:05:26'),
(46, 'Mr. Candelario Kohler II', 'ygislason@lueilwitz.com', 1, 0, '2016-09-07 16:21:33', '1977-06-08 18:06:43'),
(47, 'Frederic Barrows', 'awiegand@roob.info', 0, 0, '2011-11-20 17:03:41', '1975-03-01 14:20:59'),
(48, 'Aryanna Collins', 'keyshawn.schulist@stark.com', 1, 1, '1983-07-24 03:56:47', '1997-12-31 23:02:07'),
(49, 'Valentin O\'Reilly', 'roob.keira@ruecker.com', 0, 1, '1986-01-09 20:44:36', '1997-10-14 23:47:43'),
(50, 'Ms. Bert Greenholt', 'rashawn.davis@gmail.com', 0, 0, '2002-09-15 05:53:09', '2011-07-03 11:54:45'),
(51, 'Rita Kunde', 'harber.gregg@hotmail.com', 0, 1, '2012-08-19 14:33:14', '2017-04-17 11:12:15'),
(52, 'Torrance Spencer', 'jsatterfield@schiller.info', 1, 1, '1980-04-14 21:37:28', '1992-12-12 00:34:25'),
(53, 'Alana Stokes Sr.', 'cheyenne60@yahoo.com', 0, 0, '1986-03-15 11:41:01', '1974-08-16 21:38:44'),
(54, 'Mr. Nicola Ratke Sr.', 'senger.finn@gmail.com', 1, 1, '1992-01-06 15:34:38', '1996-09-03 23:51:13'),
(55, 'Evalyn Hilpert', 'simone68@yahoo.com', 1, 0, '1985-06-24 12:49:21', '2008-10-29 01:31:18'),
(56, 'Mrs. Earlene Goodwin Jr.', 'antonina94@donnelly.com', 1, 0, '1982-11-21 04:40:17', '2009-09-01 03:14:53'),
(57, 'Adriana Oberbrunner PhD', 'casimer.dach@kemmer.com', 1, 1, '2010-07-23 07:21:35', '2019-03-08 00:23:01'),
(58, 'Kaela Considine', 'angela74@gmail.com', 0, 1, '2010-08-12 12:05:32', '1977-06-07 20:27:44'),
(59, 'Bruce Kohler', 'stehr.terrance@graham.com', 1, 0, '1974-11-15 13:12:59', '1995-09-18 11:02:46'),
(60, 'Stanley Bradtke', 'ezekiel.brakus@yahoo.com', 1, 0, '1972-01-26 10:37:50', '2000-01-10 23:20:43'),
(61, 'Mr. Dashawn Blanda', 'schumm.cassandra@yahoo.com', 1, 1, '1976-01-20 14:35:38', '1977-04-15 21:56:42'),
(62, 'Maud Legros V', 'kayla.cole@hotmail.com', 1, 0, '1980-11-23 14:24:39', '1994-01-16 16:24:22'),
(63, 'Reyna Fritsch', 'oosinski@monahan.info', 1, 1, '2009-03-20 10:57:18', '1992-11-17 13:15:33'),
(64, 'Prof. Sheridan Mayer MD', 'roob.marques@becker.biz', 1, 1, '2006-06-25 11:06:42', '1998-08-15 17:51:19'),
(65, 'Ernesto Schumm', 'frederique63@mcclure.com', 1, 1, '2009-05-16 15:03:26', '1975-10-27 08:11:46'),
(66, 'Cooper Blanda', 'schamplin@bechtelar.com', 0, 0, '1976-10-26 12:06:15', '1973-03-30 04:27:29'),
(67, 'Michaela Nicolas', 'mozell.kemmer@stark.info', 0, 0, '1981-10-30 19:46:43', '2000-01-21 09:08:37'),
(68, 'Nadia Conn', 'bernhard.frances@donnelly.com', 1, 1, '2013-01-16 10:27:09', '1982-05-08 14:04:29'),
(69, 'Brennon Terry', 'lessie.herzog@hotmail.com', 1, 0, '2002-04-29 19:57:02', '1973-11-27 13:46:10'),
(70, 'Lonzo Fritsch Jr.', 'skoss@yahoo.com', 1, 1, '1970-05-24 16:04:13', '2019-04-21 11:13:49'),
(71, 'Rashad Abernathy', 'shana96@larson.biz', 1, 0, '2004-03-11 18:54:57', '1984-08-16 15:19:53'),
(72, 'Reynold Schaden', 'schneider.urban@medhurst.com', 1, 0, '1978-03-02 13:16:49', '2011-02-25 12:47:26'),
(73, 'Vivian Boyle', 'harold25@wiza.info', 1, 0, '2004-08-10 12:20:24', '1997-09-17 10:06:57'),
(74, 'Dulce Jenkins', 'vivien52@gmail.com', 1, 0, '2009-02-11 11:26:33', '2019-11-06 02:51:35'),
(75, 'Vince Rogahn', 'daniel.quinn@emmerich.com', 0, 1, '1998-08-26 14:42:35', '2018-10-31 02:34:16'),
(76, 'Dr. Ryley Kautzer Jr.', 'runolfsson.issac@hotmail.com', 1, 0, '1973-07-20 12:45:52', '1994-03-30 21:42:33'),
(77, 'Mr. Gerson Carter', 'llewellyn95@yahoo.com', 1, 0, '1993-04-22 20:11:23', '2010-02-27 20:09:14'),
(78, 'Prof. Korey Shanahan', 'gabrielle19@lebsack.biz', 0, 1, '2001-09-11 18:36:14', '1994-04-12 08:06:58'),
(79, 'Vida O\'Kon', 'lexie.kuphal@murazik.com', 1, 0, '2011-12-16 10:49:03', '1992-07-12 14:49:33'),
(80, 'Lonie Hermiston', 'alison70@weissnat.com', 1, 1, '1985-09-09 22:22:24', '1974-07-30 13:52:04'),
(81, 'Doris Tillman', 'heller.karli@simonis.com', 0, 0, '1971-07-20 20:17:12', '1992-05-02 03:11:58'),
(82, 'Mr. Zachery Dooley', 'olson.trent@oconner.info', 1, 1, '2009-03-05 05:14:26', '1989-03-08 01:41:57'),
(83, 'Jeanette Larkin', 'tavares72@gmail.com', 1, 1, '2009-09-25 00:08:42', '1971-12-04 19:10:21'),
(84, 'Dr. Florian Torp Jr.', 'jammie.weissnat@hotmail.com', 0, 1, '2008-10-11 23:31:54', '1971-11-11 09:12:21'),
(85, 'Dr. Osbaldo Luettgen', 'tatyana.corkery@mante.org', 1, 0, '2011-09-18 03:43:19', '2001-06-02 00:36:44'),
(86, 'David Murazik II', 'durgan.marvin@marks.com', 1, 1, '1974-03-30 03:54:24', '1989-10-03 20:55:03'),
(87, 'Jermey Streich', 'ena14@bashirian.info', 1, 0, '1991-03-23 00:32:25', '1990-06-17 03:42:27'),
(88, 'Ms. Mariela Kunze Jr.', 'jcarter@gmail.com', 1, 0, '1999-01-16 15:55:37', '1972-08-27 21:57:01'),
(89, 'Zora Gusikowski', 'nico.miller@yahoo.com', 0, 0, '2008-01-21 04:21:44', '2013-10-15 02:50:23'),
(90, 'Dr. Tyrell Abbott', 'giles87@yahoo.com', 1, 0, '1970-11-20 22:48:19', '2012-05-07 21:02:50'),
(91, 'Roberto Bruen', 'nick40@gmail.com', 1, 1, '2017-10-01 21:20:53', '1999-11-24 10:25:21'),
(92, 'Prof. Jackson DuBuque MD', 'hilma.kessler@dickinson.com', 1, 1, '2011-08-05 15:47:09', '2011-05-20 03:34:22'),
(93, 'Samanta Kuhlman', 'mayer.gretchen@willms.net', 0, 0, '1992-06-04 10:23:40', '2006-06-13 18:16:50'),
(94, 'Mr. Devan Conn I', 'ehermann@lesch.com', 1, 0, '1996-02-23 20:50:27', '1987-09-19 12:01:04'),
(95, 'Keith Torphy', 'claude.nader@ruecker.com', 1, 1, '1983-02-07 11:06:51', '2019-02-22 16:28:34'),
(96, 'Mr. Grayson Hermiston Sr.', 'murphy09@gmail.com', 0, 0, '1987-02-01 21:41:14', '2018-11-06 11:51:25'),
(97, 'Mr. Jerel Jaskolski DDS', 'kborer@gmail.com', 0, 0, '1973-06-27 11:19:09', '1970-12-09 21:40:23'),
(98, 'Francesco Hayes', 'mozelle.ortiz@murphy.net', 0, 1, '1973-12-03 01:49:20', '1975-01-07 01:26:15'),
(99, 'Miss Wendy Pouros Sr.', 'beatrice.bartoletti@hotmail.com', 0, 1, '1994-11-18 18:34:57', '2001-02-20 20:33:01'),
(100, 'Isaiah Schoen', 'fmclaughlin@gmail.com', 1, 1, '2001-04-14 06:06:17', '1987-08-16 20:56:52'),
(101, 'Rory Shields', 'mraz.ethelyn@hotmail.com', 0, 0, '1982-07-23 12:36:20', '1973-12-23 05:55:57'),
(102, 'Jayson Larson', 'tchristiansen@dare.com', 1, 0, '2002-02-09 07:16:30', '1977-09-12 11:37:13'),
(103, 'Raven Ferry', 'paige.conn@rempel.org', 0, 0, '1983-12-16 16:13:22', '1976-01-20 07:52:15'),
(104, 'Ms. Hosea Stehr', 'vkunze@harber.biz', 0, 0, '2001-10-16 08:34:11', '1993-01-10 18:31:30'),
(105, 'Rhianna Hand', 'bennett.sipes@gmail.com', 0, 1, '2019-02-27 10:05:37', '2003-10-01 07:54:19'),
(106, 'Jadon Herman', 'casper.greenfelder@witting.com', 0, 1, '1986-03-07 12:06:56', '2018-01-09 01:47:25'),
(107, 'Annie Shanahan', 'cathryn26@gmail.com', 0, 1, '2016-09-22 05:16:35', '1995-03-05 05:51:27'),
(108, 'Miss Loren Osinski III', 'turcotte.elmira@yahoo.com', 1, 0, '2016-04-03 15:02:44', '2005-03-05 07:58:01'),
(109, 'Tremaine Nikolaus', 'ayana.wiegand@schumm.biz', 1, 1, '2012-10-06 16:09:38', '2001-10-20 07:42:06'),
(110, 'Alex Ledner', 'kacey46@yahoo.com', 0, 0, '2007-09-24 05:01:56', '1978-03-05 12:44:32'),
(111, 'Wilford Mayert', 'grady.dedrick@hotmail.com', 1, 1, '2016-02-18 23:11:09', '2001-12-21 06:57:15'),
(112, 'Mr. Quentin O\'Hara DDS', 'bechtelar.alysha@gmail.com', 0, 1, '2005-08-02 00:02:37', '2015-05-03 03:40:58'),
(113, 'Mrs. Kasey Grady', 'osinski.reina@kessler.info', 0, 1, '2008-09-30 02:05:25', '2016-09-28 05:58:30'),
(114, 'Prof. Breanna Boyer', 'jerrod.haley@schultz.biz', 0, 1, '1982-01-20 23:33:29', '2019-10-27 03:57:10'),
(115, 'Virgie Jerde', 'hagenes.madaline@gmail.com', 1, 1, '1979-01-08 18:16:57', '2019-04-05 03:57:01'),
(116, 'Roslyn Ebert', 'antwon97@gmail.com', 0, 1, '2003-02-21 01:01:28', '1972-07-30 04:27:14'),
(117, 'Gladyce VonRueden', 'henry.luettgen@homenick.com', 0, 1, '1987-03-27 12:47:44', '2015-04-26 23:23:56'),
(118, 'America Schoen', 'laura.eichmann@koss.net', 1, 1, '1970-02-09 20:32:45', '2003-10-05 04:56:44'),
(119, 'Melisa Stark', 'sokon@dach.com', 0, 1, '2010-09-21 09:24:30', '1986-11-10 12:19:05'),
(120, 'Dean Russel', 'gulgowski.monique@armstrong.biz', 1, 0, '2013-07-12 12:38:52', '1996-07-12 00:23:45'),
(121, 'Amaya Renner', 'cydney30@hartmann.com', 0, 1, '1976-04-29 00:45:08', '1998-08-26 19:40:40'),
(122, 'Nadia Murazik', 'plind@torphy.com', 1, 0, '2000-07-24 11:17:55', '1990-10-02 13:26:43'),
(123, 'Prof. Mozelle Jacobson', 'walker.katherine@hotmail.com', 1, 1, '2006-06-21 05:31:44', '1985-02-05 05:43:39'),
(124, 'Eleonore Rath', 'michelle.crooks@hotmail.com', 1, 1, '1998-01-06 05:06:57', '1976-01-03 02:41:52'),
(125, 'Dr. Buddy Braun', 'tbruen@yahoo.com', 1, 1, '1973-05-11 02:29:29', '2020-02-21 22:30:16'),
(126, 'Ms. Edna McClure', 'samantha00@ward.biz', 1, 1, '1980-07-05 05:23:16', '2005-02-24 00:34:34'),
(127, 'Lennie Borer', 'doris.batz@jones.biz', 1, 0, '2012-10-19 11:57:33', '2019-04-13 17:29:58'),
(128, 'Mr. Chauncey Jacobs I', 'amaya.wilderman@bashirian.info', 0, 1, '2009-07-28 12:16:23', '2002-04-04 11:49:40'),
(129, 'Velda Bruen', 'forrest02@yahoo.com', 1, 0, '1990-01-03 12:05:20', '1997-07-23 03:56:06'),
(130, 'Zoe Adams', 'macejkovic.otha@gislason.com', 1, 1, '1975-10-09 01:58:48', '1982-07-09 23:55:09'),
(131, 'Mr. Amari Hahn', 'cronin.elise@gmail.com', 0, 1, '2005-08-10 19:39:42', '2000-04-10 17:07:59'),
(132, 'Leslie Friesen', 'kenny.crist@toy.biz', 0, 0, '1973-01-17 18:26:28', '1998-06-03 06:13:50'),
(133, 'Benny Conroy', 'jeramy.crist@gmail.com', 1, 1, '2014-06-22 00:37:58', '1998-05-10 21:41:01'),
(134, 'Tiana Rice', 'qpowlowski@gmail.com', 1, 0, '2006-10-10 02:57:00', '1981-12-06 06:23:05'),
(135, 'Jennings DuBuque IV', 'bwolf@wolf.com', 1, 1, '2003-03-03 09:30:40', '1998-11-30 05:26:42'),
(136, 'Prof. Oral Thompson', 'botsford.junior@hotmail.com', 0, 1, '2007-11-18 12:30:59', '2010-05-09 15:56:25'),
(137, 'Dr. Lori Braun', 'orville.schmeler@johnson.com', 1, 0, '2002-03-22 02:11:29', '1976-06-24 10:11:52'),
(138, 'Ms. Estrella Pfannerstill', 'eda.dach@gmail.com', 1, 1, '2002-12-06 23:53:29', '2002-05-03 12:10:47'),
(139, 'Conner Batz', 'douglas65@metz.com', 0, 0, '1977-11-07 16:28:18', '1986-10-26 20:46:41'),
(140, 'Alexandro Huels', 'casper.chaim@hotmail.com', 1, 1, '1998-07-09 15:58:08', '2017-07-31 07:09:56'),
(141, 'Constance Pacocha', 'imorissette@mcglynn.com', 1, 0, '2004-11-11 03:47:01', '1972-09-12 13:15:24'),
(142, 'Nicholaus Koch', 'lesch.lelah@yahoo.com', 1, 0, '1988-09-10 06:09:10', '2006-03-20 08:16:10'),
(143, 'Chad Osinski', 'hschamberger@jaskolski.net', 1, 0, '2016-05-09 01:09:44', '2019-01-10 16:38:14'),
(144, 'Jennie Spencer V', 'jveum@yahoo.com', 0, 1, '2007-07-02 14:31:47', '1974-11-15 04:30:48'),
(145, 'Dannie Spinka', 'qschinner@fisher.info', 1, 1, '1993-01-25 18:20:44', '1984-09-08 07:12:14'),
(146, 'Mr. Jovani Reichel MD', 'travis68@ryan.com', 0, 1, '1977-05-12 11:16:25', '1987-02-02 10:34:58'),
(147, 'Daphney Christiansen', 'wilma48@yahoo.com', 0, 1, '1985-11-08 03:14:47', '1992-01-10 03:02:07'),
(148, 'Nora Wolff', 'vhill@gmail.com', 1, 0, '1985-11-22 12:10:17', '1974-04-21 14:47:14'),
(149, 'Brian Pfeffer', 'mkuhn@lockman.com', 1, 1, '2001-12-31 04:07:03', '1995-06-15 02:31:21'),
(150, 'Delpha Block', 'daryl30@gmail.com', 0, 1, '2011-01-26 06:00:09', '1987-06-07 04:34:30'),
(151, 'Merritt Rempel', 'thaddeus.cruickshank@yahoo.com', 1, 1, '2001-09-28 14:35:34', '2004-04-30 17:26:27'),
(152, 'Mr. Lester Hudson', 'izaiah.prohaska@rolfson.com', 0, 1, '1970-03-11 19:36:07', '2015-08-04 20:29:19'),
(153, 'Dr. Boyd Crona', 'kristina.pfannerstill@schuppe.org', 1, 1, '1986-08-07 05:52:24', '1972-06-06 05:28:01'),
(154, 'Dr. Clement Kuphal', 'schmitt.dennis@yahoo.com', 1, 0, '2019-12-16 17:52:13', '1981-07-03 21:07:07'),
(155, 'Dr. Jena Murray', 'xbreitenberg@mueller.biz', 1, 1, '1978-09-15 23:54:54', '1987-03-08 16:21:10'),
(156, 'Rodrigo Macejkovic', 'vreynolds@dare.com', 1, 0, '2012-08-01 01:52:15', '2020-02-11 23:04:15'),
(157, 'Janet Schinner', 'christiansen.simeon@kub.net', 1, 1, '1978-11-30 04:46:14', '2004-06-17 00:05:15'),
(158, 'Kari Cormier', 'gracie.hills@yahoo.com', 1, 0, '1976-09-07 09:22:31', '2014-01-31 14:33:56'),
(159, 'Hilbert Ziemann', 'melba77@yahoo.com', 1, 0, '1994-01-08 10:01:46', '2015-11-05 03:49:15'),
(160, 'Dr. Laura Little I', 'xlehner@olson.biz', 0, 0, '2018-12-05 20:00:06', '1978-08-15 20:47:12'),
(161, 'Miss Edythe Pfeffer MD', 'deja28@yahoo.com', 0, 1, '1972-08-18 06:37:34', '1996-06-07 16:38:07'),
(162, 'Aleen Mante', 'uoberbrunner@kuhlman.com', 1, 1, '2015-01-19 15:38:24', '2018-12-12 00:39:34'),
(163, 'Kaylie Sauer MD', 'elisabeth55@kessler.com', 1, 0, '2008-04-19 10:14:08', '1995-08-29 02:43:01'),
(164, 'Alene Murazik', 'grady.allie@heller.com', 0, 1, '1989-03-25 21:13:17', '1986-08-08 15:18:18'),
(165, 'Arnoldo Ullrich IV', 'nbogan@mertz.org', 1, 0, '2012-01-10 17:27:55', '2015-12-31 09:32:54'),
(166, 'Mrs. Lauren Nienow', 'verda15@bartell.com', 1, 1, '2011-10-27 04:31:32', '1977-10-02 03:11:07'),
(167, 'Julia Blanda MD', 'qgrant@torp.com', 0, 1, '2019-10-28 19:29:07', '1975-07-23 18:39:08'),
(168, 'Prof. Deanna Smith', 'micaela88@gmail.com', 0, 0, '1990-11-02 05:36:29', '1985-05-08 21:33:25'),
(169, 'Miss Amanda Yundt', 'caesar.kessler@yahoo.com', 0, 0, '1972-07-20 22:45:10', '2011-10-05 15:23:55'),
(170, 'Kaylah Smith', 'kilback.alfredo@ziemann.com', 1, 0, '1990-09-08 22:04:38', '2016-02-07 11:28:20'),
(171, 'Prof. Rey Armstrong DVM', 'botsford.jo@hotmail.com', 1, 1, '1994-11-10 11:09:40', '1975-08-30 09:56:43'),
(172, 'Prof. Nicole Jacobs', 'khalid.mckenzie@osinski.com', 0, 0, '2006-08-17 20:01:41', '2015-10-08 04:31:39'),
(173, 'Mario Shanahan', 'grady.antone@yahoo.com', 0, 0, '1985-09-17 01:38:24', '2012-02-08 07:30:23'),
(174, 'Mr. Lemuel Anderson I', 'serenity77@hotmail.com', 0, 1, '1986-06-24 12:56:46', '1989-12-19 05:05:34'),
(175, 'Mr. Dario Hoeger', 'alanna53@yahoo.com', 1, 0, '1997-10-24 04:14:32', '2018-06-30 06:59:49'),
(176, 'Ms. Claudine Cassin', 'schamberger.dessie@gmail.com', 1, 0, '1976-08-18 06:01:23', '1997-05-06 01:22:44'),
(177, 'Zita Baumbach', 'webster54@upton.biz', 0, 1, '2014-07-21 17:27:21', '1973-08-02 14:10:10'),
(178, 'Amari Beier', 'kbatz@robel.info', 0, 1, '1999-10-14 23:53:49', '2010-04-05 04:53:31'),
(179, 'Alfonzo Steuber DVM', 'strosin.curt@gmail.com', 0, 0, '2017-06-10 08:58:28', '1977-02-25 15:18:18'),
(180, 'Prof. Keegan Kirlin Sr.', 'chyna28@yahoo.com', 0, 0, '1971-04-07 08:16:21', '1981-09-23 00:57:02'),
(181, 'Talon Heathcote', 'sally.connelly@gmail.com', 0, 0, '2000-12-03 19:05:10', '1995-10-27 09:15:01'),
(182, 'Lavinia Boyle', 'stanton.garnett@wisoky.info', 0, 1, '1975-01-16 09:58:35', '2004-03-27 02:13:04'),
(183, 'Reginald Schneider', 'ylowe@hotmail.com', 0, 0, '2008-06-15 03:47:07', '1983-12-09 16:28:12'),
(184, 'Giovanna Rodriguez', 'domenico.quigley@buckridge.biz', 1, 1, '1970-11-27 20:51:45', '2017-07-03 15:16:14'),
(185, 'Prof. Thea Jenkins', 'williamson.letitia@yahoo.com', 1, 0, '2009-02-18 23:04:13', '1974-01-29 20:11:16'),
(186, 'Alford Walter', 'schroeder.stuart@hotmail.com', 1, 1, '1996-04-20 22:45:05', '2018-05-27 21:23:19'),
(187, 'Scotty Reilly', 'hartmann.donavon@collier.info', 1, 1, '2001-01-12 19:01:41', '2013-05-30 16:19:30'),
(188, 'Isabella Buckridge', 'pietro28@mosciski.org', 1, 0, '2005-10-15 02:03:14', '1975-07-25 11:23:17'),
(189, 'Jack Balistreri', 'cornell03@yahoo.com', 1, 1, '1991-01-29 17:04:37', '2018-09-27 02:13:10'),
(190, 'Beryl Doyle', 'onie.cummings@mohr.net', 1, 0, '1971-07-16 16:27:26', '2018-08-21 12:10:40'),
(191, 'Abe Senger', 'labshire@christiansen.com', 1, 0, '1983-05-18 03:49:20', '2005-06-06 02:58:13'),
(192, 'Miss Tyra Kemmer Jr.', 'bpagac@reichel.net', 0, 0, '2003-02-02 16:35:14', '2013-10-02 06:12:18'),
(193, 'Dane King', 'maggio.gavin@dickinson.com', 1, 1, '2000-11-01 20:13:29', '1981-08-06 14:27:18'),
(194, 'Kaylie Conroy', 'frederic28@gmail.com', 1, 1, '2017-11-05 00:58:38', '1971-09-05 08:27:19'),
(195, 'Lera Raynor', 'dustin27@hotmail.com', 1, 0, '1983-08-22 18:16:28', '2010-11-29 20:41:25'),
(196, 'Mr. Jaiden Abernathy', 'omorissette@gislason.info', 0, 1, '1991-08-05 08:12:46', '1985-12-28 10:43:29'),
(197, 'Ariane O\'Keefe', 'chanel82@oconnell.org', 1, 1, '1985-07-25 01:18:26', '1991-08-09 02:11:37'),
(198, 'Melyna Tillman', 'ymitchell@cruickshank.com', 1, 1, '2017-04-12 12:57:31', '1983-07-06 02:58:40'),
(200, 'Marianna Hane', 'chyatt@dibbert.com', 1, 1, '1999-05-21 10:14:51', '1971-03-11 18:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
