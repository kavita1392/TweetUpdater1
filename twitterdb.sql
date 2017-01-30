-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2017 at 04:51 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tweets` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hashtags`
--

INSERT INTO `hashtags` (`id`, `name`, `tweets`) VALUES
(43, 'anna hazare', '823131472433467393'),
(44, 'iitbhu', '825804854002073606, 825350356578111489, 825350138784739328, 824929534919208960, 823624948274974720, 823278734237171712, 823266101932867584, 823246883544043521'),
(45, 'hashtag', '826094733709578241, 826094673810833408, 826094554210304000, 826094308008787969, 826094121303543809, 826093675809746945, 826093506510872576, 826093455394951169, 826093365913649153, 826093228185128960, 826092972814905344, 826092361432363008, 826092022633267202, 826091942773661697, 826091584664006656'),
(46, 'traxn', ''),
(47, 'tracxn', '825677651813625856, 825677492472082434, 825677336351690755, 825677180491309056, 825677024714846209, 825176820760838144, 824977578138034176, 824977266098663424, 824977110502551552, 824976954910662656, 824976799855620096, 824976643881988102, 824953711025745920, 824953555517739008, 824953400118751232'),
(48, 'virat kohli', '826093092113629184, 826090124802945026, 826089590087884802, 826089402908737539, 826072107327045633, 826060013886140416, 826000784882016257, 825928716249346049, 825812944579604482, 825775210909478912, 825749803380375553, 825747766907318272, 825736389048283138, 825726528793174017, 825702281958014976');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` varchar(50) NOT NULL,
  `text` varchar(300) NOT NULL,
  `createdAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `text`, `createdAt`) VALUES
('823131472433467393', 'RT @SushilK83628950: Anna Hazare ne Naam Badal karðŸ˜‰ Anna do Hazare  rak diya hai #Anna doo hazare @ANNAHAZARE \n@KapilSharmaK9', 'Sun Jan 22 11:33:30 +0000 2017'),
('823246883544043521', '#Sachin_Jigar #IITBHU #Varanasi\n#Dance #Masti\n#Baba_Ji_Ki_Booti\n#Bejubaan #ABCD_2\n#Jeena_Jeena\n#Samjhawan... https://t.co/KPecDMtaNQ', 'Sun Jan 22 19:12:06 +0000 2017'),
('823266101932867584', 'First Live Concert..ThankYou #kashiyatra #iitbhu #sachinJigar', 'Sun Jan 22 20:28:28 +0000 2017'),
('823278734237171712', '@SachinJigarLive \nThanku Guys for #IITBHU\nnext time please sing #Puranijeans', 'Sun Jan 22 21:18:40 +0000 2017'),
('823624948274974720', '#IITBHU done.\nDB size == 97 KB\n#KanpurNext :D\n#Profalaya', 'Mon Jan 23 20:14:24 +0000 2017'),
('824929534919208960', '#Nagpurâ€™s top cop pens book on #internalsecurity help #civilservice aspirants exams! https://t.co/mQOKp87pZH #IITBHU #Varanasi @iitbhuglobal', 'Fri Jan 27 10:38:22 +0000 2017'),
('824953400118751232', '#Tracxn Johnson &amp; Johnson to acquire Actelion in $30B deal - BioPharma Daily # 164. Read Blog: https://t.co/d73GSSaO4S', 'Fri Jan 27 12:13:12 +0000 2017'),
('824953555517739008', '#Tracxn Report: Music Tech in 2016 Hits the High Notes [179 Pages] . Read Blog: https://t.co/wG62ws1SZe', 'Fri Jan 27 12:13:49 +0000 2017'),
('824953711025745920', '#Tracxn Report: In 2016, Late Stage Investments Fell By 55% in Smart Grid Sector [109 Pages]. Read Blog: https://t.co/Nmw30iXboz', 'Fri Jan 27 12:14:26 +0000 2017'),
('824976643881988102', '#Tracxn Report: Five IPOs and 40 Acquisitions in the Diagnostics Sector in 2016 [340 Pages]. Read Blog: https://t.co/41yRz1YhHw', 'Fri Jan 27 13:45:33 +0000 2017'),
('824976799855620096', '#Tracxn Report: 2016 Was a Year of Significant Acquisition Activity in Online Retail Sector [11... Read Blog: https://t.co/yZh56706jm', 'Fri Jan 27 13:46:11 +0000 2017'),
('824976954910662656', '#Tracxn - Energy Newsletter # 89 - Energy Storage. Read Blog: https://t.co/G2LBv3Tq94', 'Fri Jan 27 13:46:48 +0000 2017'),
('824977266098663424', '#Tracxn Stocktwits,Tradelt strike partnership for in-app trading from major brokerages - FinTec... Read Blog: https://t.co/frNB34B81Y', 'Fri Jan 27 13:48:02 +0000 2017'),
('824977578138034176', '#Tracxn US DoE spends $9.8M on funding companies under its HydroNext program - Energy Daily # 147. Read Blog: https://t.co/af6hDiccpV', 'Fri Jan 27 13:49:16 +0000 2017'),
('825176820760838144', 'RT @_it_services: #Tracxn Alibaba affiliate Ant Financial to acquire MoneyGram for $880M - FinTech Daily # 178. Read Blog: https://t.co/9dEâ€¦', 'Sat Jan 28 03:00:59 +0000 2017'),
('825350138784739328', 'RT @shrikrishnagaut: #CAT2016 #IITBHU #Varanasi https://t.co/2gfPeefqhf', 'Sat Jan 28 14:29:42 +0000 2017'),
('825677024714846209', '#Tracxn Weekend Reads - 29th January, 2017. Read Blog: https://t.co/dYhcb6mh9m', 'Sun Jan 29 12:08:37 +0000 2017'),
('825677336351690755', '#Tracxn EasyMile raises $15M in series A funding from Alstom - Energy Daily # 148. Read Blog: https://t.co/kFGXUUToYc', 'Sun Jan 29 12:09:51 +0000 2017'),
('825677492472082434', '#Tracxn MDB Capital leads I-O startup Cue Biopharma in $26M raise - BioPharma Daily # 163. Read Blog: https://t.co/SCaxxbYaST', 'Sun Jan 29 12:10:29 +0000 2017'),
('825726528793174017', 'The bond between #mahirat #viratians #kohlianforever #kohli #vk #vk18 #virat #viratkohli #msâ€¦ https://t.co/c21Sc2clto', 'Sun Jan 29 15:25:20 +0000 2017'),
('825736389048283138', 'Time machine is currently run by #virat #kohli @sirjadeja', 'Sun Jan 29 16:04:31 +0000 2017'),
('825747766907318272', 'You gotta catch those #Virat #Kohli ðŸ˜‚ðŸ˜‚ðŸ˜‚ðŸ˜‚ðŸ˜‚ #IndvsEng #T20', 'Sun Jan 29 16:49:43 +0000 2017'),
('825749803380375553', '#à¤œà¥€à¤¤_à¤—à¤¯à¥‡ à¤¹à¤¾à¤ à¤¹à¤® à¤œà¥€à¤¤ à¤—à¤¯à¥‡ #Captain_Kohli à¤•à¥‡ à¤µà¤¿à¤¶à¥à¤µà¤¾à¤¸ à¤•à¥€ à¤œà¥€à¤¤ #INDvENG Oh My God! Well Played Team India! #Virat... https://t.co/exkTStO59g', 'Sun Jan 29 16:57:49 +0000 2017'),
('825775210909478912', 'At which position Virat Kohli batted in his first One Day International against Sri Lanka?\n#Virat #Kohli #Cricket... https://t.co/29N7dipcHx', 'Sun Jan 29 18:38:47 +0000 2017'),
('825804854002073606', '#IITBHU no net sunday!\n#routine things :(', 'Sun Jan 29 20:36:34 +0000 2017'),
('825928716249346049', '#PadmaShri @imVkohli ðŸ˜ðŸ˜ #ViratKohli #Virat #Kohli https://t.co/cGMRRPRNCq', 'Mon Jan 30 04:48:45 +0000 2017'),
('826000784882016257', '@Sachin_rt_10 @imVkohli lovely..childhood #virat kohli', 'Mon Jan 30 09:35:08 +0000 2017'),
('826060013886140416', 'Anushka sharma and virat kohli romance in sydney https://t.co/kmdKCOHqVS  #anushka #sharma #and #virat #kohliâ€¦ https://t.co/Ybk1pr83s7', 'Mon Jan 30 13:30:29 +0000 2017'),
('826072107327045633', 'Anushka sharma and virat kohli romance in sydney https://t.co/kmdKCOHqVS  #anushka #sharma #and #virat #kohliâ€¦ https://t.co/Vh6WrKzujy', 'Mon Jan 30 14:18:32 +0000 2017'),
('826089402908737539', '#news #summary:  #virat  #kohli joins hands with hong kong-based  #zeeva to  #launch  #muve #acoustics https://t.co/k2r0OBPFsi', 'Mon Jan 30 15:27:16 +0000 2017'),
('826091942773661697', '#SouthBy LocalsOnly Secret\nTip 2 #FindMyBootleg I invented a #Hashtag @ @twitter\nJewelry daydream power nap\nQuiet Secrets Not #20confessions', 'Mon Jan 30 15:37:21 +0000 2017'),
('826092022633267202', 'RT @edsheeran: GQ worst dressed 2012 to 2016 cover, i am wearing a hoodie as i type this  #inspiration #hashtag', 'Mon Jan 30 15:37:40 +0000 2017'),
('826092972814905344', 'Nothing happening . #Bored #SomeoneHelpMe #HalfAlive #SOS #Hashtag', 'Mon Jan 30 15:41:27 +0000 2017'),
('826093228185128960', 'RT @V2Cinemas: What You did After Your BreakUp ðŸ’” ?\n\nReply Here By Using of #Hashtag of #BreakupSenjittale\n\n#SEK Contest  #Senjittale @SBCHEâ€¦', 'Mon Jan 30 15:42:28 +0000 2017'),
('826093365913649153', 'RT @edsheeran: GQ worst dressed 2012 to 2016 cover, i am wearing a hoodie as i type this  #inspiration #hashtag', 'Mon Jan 30 15:43:01 +0000 2017'),
('826093455394951169', 'Bots be laser lemon daisies be darkslateblue a seed could be sweet and so on #hashtag @cdl7307', 'Mon Jan 30 15:43:22 +0000 2017'),
('826093506510872576', 'RT @edsheeran: GQ worst dressed 2012 to 2016 cover, i am wearing a hoodie as i type this  #inspiration #hashtag', 'Mon Jan 30 15:43:34 +0000 2017'),
('826093675809746945', 'RT @edsheeran: GQ worst dressed 2012 to 2016 cover, i am wearing a hoodie as i type this  #inspiration #hashtag', 'Mon Jan 30 15:44:15 +0000 2017'),
('826094308008787969', 'Luster - #Instagram #hashtag generated printing and mosaics. Cool. https://t.co/kfbrkJMp3Y', 'Mon Jan 30 15:46:45 +0000 2017'),
('826094673810833408', 'RT @BHANWARLALSUTH7: #Tweeples #give #mass #support on #RespectQueenPadmavati âˆšâˆšâˆš #hashtag #Jauhar #Chottoregarh #Rajasthan @Karni_Sena ðŸ™ hâ€¦', 'Mon Jan 30 15:48:12 +0000 2017'),
('826094733709578241', 'å°†æ£‹å¥½ãã¯å¿…è¦‹!!\nã“ã®å°†æ£‹ã‚²ãƒ¼ãƒ ãŒãŠã‚‚ã—ã‚ã„!!\nâ†’https://t.co/gJ0lOaHiYI #å°†æ£‹ #è©°ã‚å°†æ£‹Lv99 #HANAUTA #hashtag', 'Mon Jan 30 15:48:27 +0000 2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
