-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2016 at 04:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `email`, `password`, `image_path`) VALUES
(14, 'Arafat', 'shariful@gmail.com', '139171fad78cfb750862d199c90193938cef0091', 'Asset/img/avatar.jpg'),
(16, 'Shariful Islam', 'sharifultroublesome@gmail.com', '139171fad78cfb750862d199c90193938cef0091', 'Asset/img/avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`spot_id`, `user_id`, `text`) VALUES
(1, 14, 'কক্সবাজার আমার খুব ভাল্লাগে, শহর এর যান্ত্রিক জীবন থেকে পরিত্রাণ পাওয়ার জন্য বারবার ছুটে যায় সেখানে।'),
(7, 16, 'ছুটি কাটানোর জন্য উপযুক্ত স্থান।'),
(8, 16, 'I <3 this place!!');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `spot_id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`spot_id`, `image_path`) VALUES
(1, 'কক্সবাজার সমুদ্র সৈকত1.jpg'),
(1, 'কক্সবাজার সমুদ্র সৈকত2.jpg'),
(1, 'কক্সবাজার সমুদ্র সৈকত3.jpg'),
(2, 'ইনানী সি বীচ1.jpg'),
(2, 'ইনানী সি বীচ2.jpg'),
(2, 'ইনানী সি বীচ3.jpg'),
(3, 'হিমছড়ি1.jpg'),
(3, 'হিমছড়ি2.jpg'),
(3, 'হিমছড়ি3.jpg'),
(4, 'রাডার স্টেশন1.jpg'),
(5, 'ডুলাহাজরা সাফারি পার্ক1.png'),
(5, 'ডুলাহাজরা সাফারি পার্ক2.jpg'),
(5, 'ডুলাহাজরা সাফারি পার্ক3.jpg'),
(6, 'মাহাসিংদোগ্রী বৌদ্ধ মন্দির1.jpg'),
(7, 'সেন্টমাটিন প্রবালদ্বীপ1.jpg'),
(7, 'সেন্টমাটিন প্রবালদ্বীপ2.jpg'),
(7, 'সেন্টমাটিন প্রবালদ্বীপ3.jpg'),
(8, 'ছেঁড়াদ্বীপ সেন্টমার্টিন টেকনাফ1.jpg'),
(8, 'ছেঁড়াদ্বীপ সেন্টমার্টিন টেকনাফ2.jpg'),
(8, 'ছেঁড়াদ্বীপ সেন্টমার্টিন টেকনাফ3.jpg'),
(9, 'বড় রাখাইন পাড়া বৌদ্ধ মন্দির1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

CREATE TABLE `spot` (
  `id` int(11) NOT NULL,
  `zilla_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spot`
--

INSERT INTO `spot` (`id`, `zilla_id`, `name`, `description`) VALUES
(1, 12, 'কক্সবাজার সমুদ্র সৈকত', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n\r\nকক্সবাজার সমুদ্র সৈকত: \r\n\r\n\r\nকক্সবাজার সমুদ্র সৈকতটি পৃথিবীর দীর্ঘতম অখন্ডিত সমুদ্র সৈকত। ১২০ কিঃমিঃ দৈর্ঘ্য বিশিষ্ট এ সমুদ্র সৈকতে বৈশিষ্ট হলো পুরো সমুদ্র সৈকতটি বালুকাময়, কাদা অস্তিত্ব পাওয়া যায় না। বালিয়াড়ি সৈকত সংলগ্ন শামুক ঝিনুক নানা প্রজাতির প্রবাল সমৃদ্ধ বিপণি বিতান, অত্যাধুনিক হোটেল মোটেল কটেজ, নিত্য নব সাজে সজ্জিত বার্মিজ মার্কেট সমূহে পর্যটকদের বিচরণে কক্সবাজার শহর পর্যটন মৌসুমে প্রাণচাঞ্চল্য থাকে। সুইজারল্যান্ডের ''New Seven Wonderers Foundation'' নামীয় বার্নাড ওয়েবার এর ব্যক্তি মালিকানাধীন প্রতিষ্ঠান কর্তৃক ২০০০ সালে ২য় বারের মত বিশ্বের প্রাকৃতিক নতুন সপ্তাশ্চার্য নির্বাচন প্রতিযোগিতায় কক্সবাজার সমুদ্র সৈকতটি কয়েকবার শীর্ষ স্থানে ছিল। শীর্ষ স্থান ধরে রাখার জন্য প্রচার প্রচারণা কম ছিল বলে অনেকে মনে করে থাকেন। কক্সবাজার সমুদ্র সৈকতে চ্যানেল আই আদিবাসী মেলা আয়োজন করে সরাসরি সম্প্রচার করেও দেশি-বিদেশি ভোটারদের ভোট অর্জন করতে সক্ষম হয়নি। ফলশ্রুতিতে মায়াবী সমুদ্র সৈকতটি শীর্ষ স্থান কেন, কোন স্থানই অর্জন করতে সক্ষম হয়নি। তাই বলে কক্সবাজার সমুদ্র সৈকতের মান সম্মান হানি হয়েছে? নিশ্চয়ই নয়। কক্সবাজার সমুদ্র সৈকতটি তার স্ব-মহিমায় সমুজ্জ্বল রয়েছে। এর সৌন্দর্য কোনভাবে কোনদিন হানি করা যাবে না। বাংলাদেশ পর্যটন কর্পোরেশন ও চ্যানেল আই যৌথ উদ্যোগে ২য় বারের মতো ১২ ফেব্রুয়ারি, ২০১০ খ্রিস্টাব্দ তারিখ লাবনী সৈকতে আয়োজিত আদিবাসী মেলায় অন্যতম ইভেন্ট আদিবাসী সুন্দরী প্রতিযোগিতায় কক্সবাজারের রাখাইন মেয়ে মিস ফ্রুমাসে সেরা প্রিয়দর্শিনী নির্বাচিত হন।কক্সবাজার সমুদ্র সৈকতকে অপরূপ সাজে সজ্জিত করার জন্য বাংলাদেশ পর্যটন কর্পোরেশন ও স্থানীয় সী-বীচ ম্যানেজমেন্ট কমিটির কার্যক্রম দৃশ্যমান। পুরনো ঝিনুক মার্কেট ভেংগে আটটি রঙ্গের ছাতার আদলে নতুনভাবে নির্মিত আধুনিক ঝিনুক মার্কেট ‘বীচ পার্ক মার্কেট’ সত্যি দেখার মতো। প্রতিটি মার্কেটে আটটি করে দোকান নির্মাণের স্পেস থাকলেও দোকানীরা নিজেদের সমঝোতার মাধ্যমে আটটি দোকানকে ষোলটি, ক্ষেত্রবিশেষে বিশটি দোকান ঘর তৈরী করেছে।  পাশে অনুরূপ আরো তিনটি\r\n\r\nছাতা মার্কেট নির্মাণাধীন রয়েছে। শামুক-ঝিনুক ও  প্রবালের দোকানের পাশাপাশি বার্মিজ পণ্যসামগ্রী, কস্মেটিক, ফাস্টফুড, কুলিং কর্ণার, শুটকি, স্টুডিও, মোবাইল সপসহ নানা দোকানের সমাহার রয়েছে এসব মাকের্টে। সমুদ্র সৈকতে প্রবেশ মুখে কক্সবাজার জেলা পরিষদের আর্থিক পৃষ্ঠপোষকতায় দৃষ্টিনন্দন বীচ গার্ডেন কাম পার্ক ও ২৬ টি দোকান সমৃদ্ধ ঝিনুক মার্কেট নির্মাণ করা হয়েছে। বাগানের সম্মুখে লাবনী পয়েন্টে জেলা পরিষদের অর্থায়নে ও বীচ ম্যানেজমেন্ট কমিটির তত্ত্বাবধানে দু’তলা বিশিষ্ট পর্যবেক্ষণ টাওয়ার ও জেলা প্রশাসনের স্থায়ী মুক্ত মঞ্চ নির্মাণ করা রয়েছে। \r\n\r\n \r\n কক্সবাজার সমুদ্র সৈকত একটি মায়াবী ও রূপময়ী সমুদ্র সৈকত। প্রতিদিন প্রতিক্ষণ এর রূপ পরিবর্তন করে। শীত-বর্ষা-বসন্ত-গ্রীস্ম এমন কোন সীজন নেই সমুদ্র সৈকতের চেহারা মিল খুঁজে পাওয়া যায়। প্রত্যুষে এক রকম তো মধ্যাহ্নে এর রূপ অন্য রকম। গোধুলি বেলার বীচের হাওয়া-অবস্থা আর রাতের বেলার আবহাওয়া-অবস্থার মধ্যে বিস্তর ফারাক। তাই তো দেশি-বিদেশি পর্যটকদের জন্য ক্যাপ্টেন কক্স এর সমুদ্র সৈকত এত কদরের, এত পছন্দের। বিদেশি পর্যটকদের ইদানিং তেমন চোখে না পড়ার অনেকগুলো কারণের মধ্যে এখানে সুযোগ সুবিধা তাদের জন্য আহামরি তেমন কিছুই নেই। পর্যটকরা সী বীচে কোন ধর্মীয় সমাবেশে অংশগ্রহণ করতে আসে না। তারা আসে সী-বীচের সাথে আলিঙ্গন করতে, স্নান করতে, এর সৌন্দর্য পুরোপুরি উপভোগ করতে আর নির্ভেজাল নির্ঝঞ্জাট ও নিরাপদ পরিবেশে বিশুদ্ধ বাতাস খেতে। অপমান কিংবা অপদস্ত হতে নিশ্চয় কেউ বীচে গমন করে না। কর্তৃপক্ষ সী-বীচের জনপ্রিয়তা ক্রমান্বয়ে বৃদ্ধির জন্য বিভিন্ন্ জাতীয় ও গুরুত্বপূর্ণ দিবসে ওপেন কনসার্ট, জাতীয় ও আন্তর্জাতিক বীচ-ফুটবল, বীচ-ভলিবল, বীচ-ক্রিকেট প্রতিযোগিতা, জাতীয় ঘুরি উত্তোলনের উৎসব, বালু স্কালপ্চার নির্মাণসহ অনেক অনুষ্ঠান আয়োজন করে থাকে। বাংলাদেশে সার্ফিং-কে জনপ্রিয়  খেলা হিসেবে  গড়ে তোলার জন্য স্থানীয় প্রশাসন সী-বীচের  লাবণী  পয়েন্টে সার্ফিং  ক্লাবের  জন্য  অস্থায়ী  সার্ফিং  কুটির  স্থাপনের  জন্য সাময়িক অনুমতি প্রদান করা হয়েছে। সমুদ্র সৈকতে পর্যটকদের নিরাপত্তার জন্য সম্প্রতি বীচ পুলিশ সংযোজন নিঃসন্দেহে সরকারের প্রশংসনীয় উদ্যোগ। ছলনাময়ী ও মায়াবী সমুদ্র সৈকতে স্নান করতে গিয়ে প্রতি বছর মৃত্যুর ঘটনা সত্যি বেদনাদায়ক। স্নান করতে নামা পর্যটকদের আরো সতর্ক হওয়া প্রয়োজনীয়তা অনস্বীকার্য। জোয়ার ও ভাটার সময় প্রদর্শনের জন্য জেলা প্রশাসন ও জেলা পরিষদের উদ্যোগে রয়েছে স্থায়ী-অস্থায়ী বিলবোর্ড ও ব্যানার। এছাড়া স্থানীয় প্রশাসন কর্তৃক ঘূর্ণিঝড় ও জোয়ার-ভাটার জনসচেতনতা ও  শিক্ষামূলক  বিজ্ঞাপন প্রচারের জন্য সমুদ্র সৈকতে কলাতলী, সুগন্ধা ও লাবনী পয়েন্টে এলসিডি টিভি মনিটর স্থাপনের জন্য কয়েকটি বেসরকারী প্রতিষ্ঠানকে শর্তসাপেক্ষে সাময়িক অনুমতি প্রদান করা হয়েছে। ইয়াসীর লাইফ গার্ড ও ওয়াচ বে লাইফ গার্ড এর সাহসী কর্মীরা অনেক পর্যটকের জীবন রক্ষা করেছে। জীবন রক্ষাকারী এ ধরনের জনমানব সেবামূলক আরো প্রতিষ্ঠান গড়ে তোলা যেতে পারে।  কক্সবাজার রূপালী সমুদ্র সৈকতে বীচ বাইক, জেট স্কী, ঘোড়ার গাড়ি বা ঘোড়া পর্যটকদের  জন্য আনন্দের খোরাক যোগায়। সমুদ্র সৈকতে অনেক চেঞ্জিংরুম, বাথরুম, টয়লেট স্থাপনের কারণে পর্যটকদের প্রাকৃতিক ডাকে সাড়া দিতে কোন অসুবিধে হচ্ছে না যা কয়েক বছর আগেও পর্যটকদের জন্য কল্পনাতীত ছিল।\r\n\r\n\r\nহিন্দু ধর্মাবলম্বীদের প্রধান ধর্মোৎসব শারদীয় দূর্গা পূজার মহান বিজয়া দশমীতে প্রতিমা বিসর্জনের সময় সমুদ্র সৈকতে লাখো মানুষের পদচারণায় সমুদ্র সৈকতটি ব্যতিব্যস্ত হয়ে পড়ে। কক্সবাজার জেলাসহ পার্শ্ববর্তী বান্দরবান পাবর্ত্য জেলা থেকেও প্রতিমা বিসর্জন দিতে এখানে সমাবেত হয়। আবহমানকাল থেকে ধর্ম বর্ণ নির্বিশেষে বিসর্জন অনুষ্ঠান উপভোগের নিমিত্তে লক্ষাধিক পূজারী ও পর্যটকের অসাম্প্রদায়িক মিলনমেলা ঘটে সমুদ্র সৈকতে। এ উপলেক্ষে স্থানীয় প্রশাসন ও পুলিশ বিভাগকে গুরুত্ব সহকারে নিরাপত্তা ব্যবস্থা জোরদার করতে হয়। এছাড়া বৌদ্ধ ধর্মাবলম্বীদের বর্ষাবাস আরম্ভ হওয়ার আগে বর্ষা মৌসুমে রাখাইন সম্প্রদায়ের লোকজন সমুদ্র সৈকতের পাশে স্থিত ঝাউবিথির ভেতরে গ্রুপে গ্রুপে পিকনিক আয়োজন করার দৃশ্য প্রত্যক্ষ করে পর্যটকদের ধারণা হতে পারে যে, সমুদ্র সৈকতে কোন উৎসব হচ্ছে কিনা। এটি কোন সামাজিক উৎসব নয়, ধর্মীয় উৎসবতো অবশ্যই নয়। অতি উৎসাহী কতিপয় সংবাদকর্মী এটিকে রাখাইন সম্প্রদায়ের উৎসব হিসেবে প্রচার করে থাকে। বছরে এক থেকে দেড় মাস সময়কালে (জুন-জুলাই) সাপ্তাহিক বন্ধের   দিনে  এ ধরনের  পিকনিক   তথা  বর্ষার   উৎসব   আয়োজন   চলে আসছে\r\n\r\n\r\n কক্সবাজার সমুদ্র সৈকতে সে অনেক দিন আগে থেকে। আনন্দের আতিশয্যে পিকনিকের নামে যাতে কেউ অনাকাঙ্খিত ও অপ্রীতিকর ঘটনা অবতারণা করে পিকনিকের আনন্দঘন পরিবেশকে কলূষিত করতে না পারে এ বিষয়ে সচেতন থাকার দায়িত্ব সংশ্লিষ্ট সকলেরই।'),
(2, 12, 'ইনানী সি বীচ', 'কিভাবে যাওয়া যায়: উখিয়া থেকে সিএনজি এবং মাইক্রো নিয়ে যাওয়া যায়।\r\n\r\nইনানী সি বীচ:\r\n\r\n\r\nকক্সবাজার জেলার পর্যটন সেক্টরে ইমাজিং টাইগার হচ্ছে ইনানী। বিশ্বের দীর্ঘতম বালকাময় সৈকত কক্সবাজার যার দূরত্ব প্রায় ১২০০ কিলোমিটার। কক্সবাজার থেকে টেকনাফ পর্যন্ত দীর্ঘ একশো বিশ কিলোমিটার সমুদ্র সৈকতের মধ্যে সবচেয়ে সুন্দর,আকর্ষণীয় ও নয়নাভিরাম হচ্ছে ইনানী বীচ। এককথায় ইনানীকে প্রকৃতির ভূস্বর্গ বলা চলে। ইনানী সৈকত থেকে শুরু করে টেকনাফ পর্যন্ত এর প্রাকৃতিক প্রবাল এবং পাথর সমুদ্রের ভাঙ্গন থেকে সৈকতকে রক্ষা করছে।  আবার, এসব পাথর ইনানী সৈকতকে দিয়েছে বাড়তি সৌন্দর্য।\r\n\r\nকক্সবাজার শহর থেকে প্রায় ৩৩ কিঃমিঃ দক্ষিণে ইনানী সমুদ্র সৈকত অবস্থিত। প্রবাল পাথরের সমারোহে ইনানী সমুদ্র সৈকত এখন আগের চেয়ে অনেক সুন্দর সাজানো গোছানো বলা যায়। একদা ইনানী যেতে হতো কক্সবাজার-টেকনাফ সড়ক হয়ে সোনারপাড়া আধাপাকা ও কাঁচা রাস্তার দিয়ে। সে সময় এখন আর নেই। বাংলাদেশ সেনাবাহিনীর ইঞ্জিনিয়ারিং কোর কর্তৃক ১৯৯২ সালে নির্মিত কলাতলী থেকে টেকনাফ ৮৪ কিঃমিঃ দীর্ঘ মেরিন ড্রাইভ রোড দিয়ে যে কোন যানে এখন ইনানী সমুদ্র সৈকতে যাওয়া যায়। বৈজ্ঞানিক পদ্ধতিতে চিংড়ি পোনা উৎপাদনের অনেক হ্যাচারি রয়েছে ইনানীতে। সুপারি গাছের সারি সারি ইনানীকে আরো মহিমান্বিত করে রেখেছে। বন বিভাগের একটি সুন্দর রেস্ট হাউসটি এক সময় একমাত্র রেস্টহাউস হলেও এখন ব্যক্তি মালিকানায় অনেক রেস্টহাউস ও হোটেল-মোটেল-কটেজ রয়েছে। পর্যটকরা অনায়াসে এখন ইনানী সমুদ্র সৈকতে পিকনিক করতে স্বাচ্ছন্দ্য বোধ করেন। পর্যটন মৌসুমে পর্যটকদের ভিড়ের চাপে স্থানীয়দের পিকনিক আয়োজন করতে হিমসিম পোহাতে হয়। এমন কোন বছর নেই যেখানে কক্সবাজার শহরে কোন স্কুল কলেজ বার্ষিক বনভোজন ও সাংস্কৃতিক অনুষ্ঠান আয়োজন করে না।\r\n\r\n\r\nইনানী সমুদ্র সৈকত যাওয়ার পথে বনবনানীতে পাহাড়ঘেরা পাখির কলকাকলী ও সাগর বেস্টিত সমুদ্রের গর্জন স্বকর্ণে শোনা ও শুভ্র রঙ্গের সাগরের ঊর্মি, সারি সারি ঝাউবাগান এবং কক্সাবাজার জেলার নৈসর্গিক দৃশ্য উপভোগ করার মজাই আলাদা। সিনেমা ও নাট্য পরিচালকদের শুটিং করার জন্য এ সমুদ্র সৈকতসহ আশে পাশে অনেক পিকনিক স্পট এখন অনেক লোভনীয় শুটি স্পট।                                                     '),
(3, 12, 'হিমছড়ি', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n\r\nহিমছড়ি, কক্সবাজার:\r\n \r\n\r\nজেলা সদর হতে ৯ কিঃমিঃ দূরে হিমছড়ি অবস্থিত। পাহাড়, সমুদ্র ও ঝর্ণা সমন্বিত হিমছড়ি অপরূপ প্রাকৃতিক সৌন্দর্যের লীলাভূমি এক পর্যটন স্পট। পর্যটন মৌসুমে এখানে পর্যটকদের আনাগোণা বেশি পরীলক্ষিত হয়। এখানে কয়েকটি প্রাকৃতিক ঝর্ণা (প্রসবণ) রয়েছে। কক্সবাজার জেলায় পিকনিক করতে আসলে হিমছড়ি ঝর্ণা পর্যটকদের একবার দেখা চায়। ২৯ এপ্রিল, ১৯৯১ সালে প্রলয়ংকরী ঘূর্ণিঝড় ও জলোচ্ছ্বাসে হিমছড়িসহ আশে পাশে অনেক পর্যটন স্পট দারুণভাবে ক্ষতিসাধন হয়। বর্তমানে হিমছড়ি এলাকাটি অনেক সংস্কার করা হয়েছে। সিঁড়ি বেয়ে উঁচু পাহাড়ে উঠে সাগর, পাহাড় ও কক্সবাজারের নৈসর্গিক সৌর্ন্দয অতিসহজে উপভোগ করা যায়। হিমছড়ি যাওয়ার পথিমধ্যে দরিয়ানগরসহ (ভাংগামোড়া) অনেক পিকনিক স্পট আছে। ছোট ছোট সুরেলা ঝর্ণার পানি প্রবাহ অবলোকন করতে চাইলে পর্যটকদের ভরা পর্যটন মৌসুম ব্যতীত বর্ষা মৌসুমে আসতে হবে। '),
(4, 12, 'রাডার স্টেশন', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n \r\nরাডার স্টেশন, কক্সবাজারঃ\r\n\r\n \r\n১৯৬৯ সালে সুইডিশ শিশুকল্যাণ সংস্থা ও রেডক্রিসেন্ট সোসাইটির সহযোগিতায় কক্সবাজার রাডার স্টেশনটি স্থাপন করা হয়। ২২ এপ্রিল, ২০০৭ সালে জাপান সরকারের আর্থিক সহযোগিতায় রাডার সিস্টেমের উন্নয়ন সাধন করে উদ্বোধন করা হয়।   রাডার স্টেশনটি হিলটপ  সার্কিট হাউজের  পাশে অবস্থিত। ৪০০ কিঃমিঃ ব্যাসার্ধের মধ্যে এ রাডার স্টেশনটি কার্যকর। রাডার স্টেশন সংলগ্ন পাহাড়ের চূঁড়ায় স্থাপিত লাইট হাউসটি গভীর সমুদ্রে চলাচলরত জাহাজ, নৌকা ও মাঝিমাল্লাদের দিক নির্দেশনাসহ নানাভাবে উপকারে আসে। Radio Detection And Range এর সংক্ষিপ্ত নাম রাডার (Rader)। সমতল ভূমি থেকে ৬০ ফুট উচুঁ পাহাড়ের চূঁড়ায় প্রায় ৯৯ ফুট উচ্চতা বিশিষ্ট ভবনের উপর রাডারটি স্থাপন করা হয়। জাপান ও বাংলাদেশ যৌথ কারিগরী সহযোগিতায় রাডার কেন্দ্র নির্মাণ ও রাডার স্থাপনে ৮ মাস সময় লাগে। প্রকল্পটি বাস্তবায়নে ব্যয় হয় ৫১ কোটি ৯ লাখ ৪০ হাজার টাকা। ডপলার রাডারটি জাপান-বাংলাদেশের মানুষের সম্পর্ক উন্নয়নে ভূমিকা রাখার পাশাপাশি এদেশের মানুষের জানমাল রক্ষার্থে সহায়ক হবে। এ রাডারের মাধ্যমে প্রাপ্ত তথ্য ভি সেটের মাধ্যমে সাথে সাথে ঢাকাস্থ কেন্দ্রীয় আবহাওয়া দপ্তর জানতে পারে।'),
(5, 12, 'ডুলাহাজরা সাফারি পার্ক', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n\r\nডুলাহাজারা সাফারি পার্ক, চকরিয়া:\r\n\r\n \r\nজেলা শহরে কোন পার্ক না থাকায় পর্যটন নগরী কক্সবাজারের শতভাগ জনগণ ‘পার্ক’ নামীয় শব্দের সাথে এখনো অপরিচিত। পর্যটন রাজধানী নামে খ্যাত কক্সবাজারের শিশুদের চিত্ত বিনোদনের জন্য শিশু পার্ক, ভ্রমণ পিপাসুদের জন্য খোলামেলা প্রশস্ত জায়গা ও বোটানিকেল গার্ডেন থাকার কথা। বৈশ্বিক উষ্ণতার কারণে ঘনঘন প্রাকৃতিক দূর্যোগ ভূমিকম্প, সুনামি, ঘূর্ণিঝড়, জলোচ্ছ্বাস থেকে পরিত্রাণের জন্য অভয়ারন্য বনাঞ্চল থাকাও আবশ্যক। সময়ের প্রয়োজনে হয়তো এসব একদিন হবে কিন্ত দ্রুত হলে মন্দ কি। তবে চকরিয়া উপজেলার ডুলাহাজারা নামক স্থানে মনোরম প্রাকৃতিক পরিবেশে প্রচুর গাছ গাছালিতে ভরপুর দৃষ্টিনন্দন একটি বড় পার্ক রয়েছে। আটটি ব্লকে ভাগ করে গড়ে তোলা এ পার্কে মুক্ত পরিবেশে হাঁটাচলা করা যায়, পরিবারের সদস্যদের নিয়ে অনায়াসে বেড়ানো যায়। এ পার্কে ঢাকায় মিরপুরের জাতীয় চিড়িয়াখানার মতো বেশি সংখ্যক পশু পাখি না থাকলেও কোন পশু পাখি কমতি নেই। আছে সিংহ, রয়েল বেঙ্গল টাইগার, নানা প্রজাতির হরিণ, হনুমান, বাঁশ ভল্লুক, ময়ুর, বন্য শুকর, নানা প্রজাতির পাখি, সাপ, কুমির, জলহস্তি, বানর, হরিণ, হাতি, বনগরু ইত্যাদি। এখানে স্থাপিত একাধিক পর্যবেক্ষণ টাওয়ারের মাধ্যমে নয়নাভিরাম সৌর্ন্দয ও পশু পাখিদের বিচরণ নিরাপদে পর্যবেক্ষণ করা যায়। নানা প্রজাতির বড় বড় বৃক্ষ, মূল্যবান গাছ গাছালি আর দুর্লভ ও ঔষধী লতা পাতা গুল্ম রয়েছে এ পার্কে। চকরিয়া বাসষ্টেশন থেকে এর দূরত্ব প্রায় ১০ কিলোমিটার আর জেলা শহর থেকে এর দূরত্ব প্রায় ৪৫ কিলোমিটার। প্রায় নয়শ হেক্টর জমির উপর প্রতিষ্ঠিত দেশের একমাত্র সাফারি পার্কটি নাম বাংলাদেশের স্থপতি জাতির জনক বঙ্গবন্ধু’র নামে ‘বঙ্গবন্ধু শেখ মুজিব সাফারি পার্ক’ রাখা হয়েছে। কিছু পশুপাখি খাঁচায় বন্দি হলেও এ পার্কে অবস্থারত অধিকাংশ পশুপাখিদের বিচরনের জন্য প্রচুর উন্মুক্ত জায়গা রয়েছে। পর্যটকদের জন্য রয়েছে বিশ্রামাগার ও ডরমেটরী। অকস্মাৎ বন্যহাতির পাল পার্কে অযাচিত ও অবৈধ প্রবেশ করে সাফারি পার্ক কর্তৃপক্ষকে অবশ্য টেনশনে রাখে। পার্কে অবস্থানরত পশু পাখিদের এহেন অসুবিধার দিক বিবেচনায় সাফারি পার্ক কর্তৃপক্ষকে আরো সাবধানতা অবলম্বন করা উচিত বলে প্রাণি বিশেষজ্ঞরা মনে করেন। হরিণ প্রজনন কেন্দ্রটি পার্কের সাথে অন্তর্ভূক্ত করা হয়েছে। এখানে রয়েছে ন্যাচারাল হিস্ট্রি মিউজিয়াম ও বাংলাদেশের সর্বপ্রথম প্রকৃতি বীক্ষণ কেন্দ্র। সাফারি পার্কের প্রবেশ মুখে রয়েছে ইট কংক্রিট দিয়ে নির্মিত বিশালাকৃতি ডাইনোসর, হাতি প্রতিকৃতি। মূল ফটকের বামে রয়েছে ত্রিশ লক্ষের বিনিময়ে অর্জিত সুজলা-সুফলা সবুজ শস্য-শ্যামলায় প্রিয় মাতৃভূমি বাংলাদেশের মানচিত্র (ডিসপ্লে ম্যাপ) ও পার্কের বিভিন্ন স্থানের বর্ণনা। সাফারি পার্ক দিনে দিনে জনপ্রিয়তা পাচ্ছে আর পর্যটন মৌসুমে পর্যটকদের একটি অংশ পার্কের বিভিন্ন লোকেশনে পিকনিক আয়োজন করে থাকে।'),
(6, 12, 'মাহাসিংদোগ্রী বৌদ্ধ মন্দির', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n\r\nমাহাসিংদোগ্রী বৌদ্ধ মন্দির:\r\n \r\nমাহাসিংদোগ্রী বৌদ্ধ মন্দির কক্সবাজার সদর উপজেলা পরিষদ থেকে ৫ কিঃ মিঃ দুরে অবস্থিত। এই বৌদ্ধমন্দির কক্সবাজার বায়তুশ শরফ কম্পপ্লেক্স এর পাশে রাখাইন পল্লীতে অবস্থিত। রিক্সা ও ব্যাটারী চালিত গাড়ী যোগে যাওয়া যায়। যাতায়াত ভাড়া প্রায় ৩০-৪০ টাকা।\r\n১৭৯৯ ইং সালে লেঃ হিরেম কক্স দশ হাজার (১০,০০০) আরাকানী শরণণার্থী পুনর্বাসনের জন্য ''''অংখোঁছা'''' গ্রামটি পুনঃ নির্মাণ করেন এবং লেঃ হিরেম কক্স তাঁর নামানুসারে উক্ত গ্রামটির নামকরণ করেন ''''কক্সবাজার''''। সকল আরাকানী শরণার্থীরা বর্মী বা বার্মিজ কর্তৃক আরাকান দখলের পর অত্যাচার নিপীড়ন চালাতে শুরু করলে আশ্রয়ে সন্ধানে অংখোঁছা সহ বিভিন্ন জায়গায় বসতি গড়ে তুলেছিল। এলাকাবাসীর সাথে উক্তস্থানে সম্মিলিতভাবে একটি বুদ্ধমুর্তি প্রতিষ্ঠার সিদ্ধান্ত নেন এবং স্থানীয় ধর্মপ্রাণ উপাসকদের সহায়তায় একটি স্থানীয় বৌদ্ধ ধর্মীয় প্রতিষ্ঠান নির্মানের কাজ শুরু করেন। এর মধ্যে কক্স সাহেব মারা গেলে বাকী অসমাপ্ত কাজ পরবর্তী বছর স্থানীয় বাসিন্দাবৃন্দ (রাখাইন বৌদ্ধরা) সমাপ্ত করেন। তখন সেই বৌদ্ধ ধর্মীয় প্রতিষ্ঠানটির নামকরণ করা হয় ''''মাহাসিংদোগ্রী'''' স্থানীয় ধর্মপ্রাণ রাখাইন বৌদ্ধরা একটি বুদ্ধমুর্তি সেখানে স্থাপন করে। এই বুদ্ধমুর্তিটি মিঃ কক্স সাহেবের প্রত্যক্ষ সহায়তায় আরাকান থেকে এখানে আনা হয়। এর নাম ''''কাথেট আসান'''' এখনও পর্যন্ত অতি পবিত্র বলে গণ্য করা হয়। প্রতিবছর হাজার হাজার ধর্মপ্রাণ বৌদ্ধ ধর্মাবলম্বী লোকেরা এ বুদ্ধের পবিত্র মুর্তিকে পূজা ও শ্রদ্ধা প্রদর্শন করে।'),
(7, 12, 'সেন্টমাটিন প্রবালদ্বীপ', 'কিভাবে যাওয়া যায়: নৌ পথে\r\n\r\nসেন্টমার্টিন প্রবালদ্বীপ, টেকনাফঃ\r\n\r\n \r\n\r\nটেকনাফ উপজেলা হতে ৩৮ কিলোমিটার দক্ষিণে বঙ্গোপসাগরে অবস্থিত সেন্টমার্টিন প্রবালদ্বীপ। বাংলাদেশের একমাত্র প্রবালদ্বীপ সেন্টমার্টিন ১৯৮৩ সালে ইউনিয়ন হিসেবে উন্নীত হয়। আট কিলোমিটার আয়তন বিশিষ্ট সেন্টমার্টিনের দৈর্ঘ্য প্রায় চার কিলোমিটার আর প্রস্থ দুই কিলোমিটার। পূর্বে এর নাম ছিল নারিকেল জিনজিরা। ৭ম-৮ম শতাব্দীতে সুদূর মধ্যপ্রাচ্য থেকে আরব বণিকরা জাহাজযোগে আকিয়াব ও রেঙ্গুন যাতায়াতের সময় এ দ্বীপে সাময়িক বিশ্রাম নিতেন। আরবি শব্দ জাজিরা অর্থ দ্বীপ। এ দ্বীপে প্রচুর নারিকেল গাছ রয়েছে। প্রায় ত্রিশ হাজার নারিকেল গাছ রয়েছে বলে এলাকাবাসীরা প্রচার করে থাকেন। তবে ১৯৯১, ১৯৯৪ ও ১৯৯৭ খ্রিস্টাব্দে উপর্যুপরি ঘূর্ণিঝড় ও জলোচ্ছ্বাসে প্রচুর নারিকেল গাছ ক্ষতিসাধন\r\n\r\nঘূর্ণিঝড়োত্তর এলাকার লোকজন সেন্টমার্টিনের পর্যটন ও পর্যটকদের স্বার্থে প্রচুর নারিকেল চারা রোপন করে। সেন্টমার্টিন নামে এলাকাটি বহুল প্রচার হলেও সরকারি কাগজপত্র, রেকর্ডপত্র, মানচিত্র ও দলিল দস্তাবেজে নারিকেল জিনজিরা লিপিবদ্ধ রয়েছে। এখানে একটি লাইট হাউস রয়েছে যা গভীর সমুদ্রে চলাচলরত জাহাজ, নৌকা ও নাবিকদের দিক নির্দেশনা দিয়ে আসছে। সেন্টমার্টিন নামে জনৈক ধর্মযাজক জাহাজযোগে এ দ্বীপে কিছুদিন অবস্থান করেছিলেন বলে জনশ্রুতি আছে। তাঁর নামানুসারে এলাকাটি নামকরণ বলে মনে করা হয়। একদা টেকনাফ হতে সেন্টমার্টিন যেতে হতো কাঠের নৌকা কিংবা রেসকিউ বোটের মাধ্যমে। ২০০২ খ্রিস্টাব্দের দিকে পর্যটকদের কথা বিবেচনা করে বাংলাদেশ অভ্যন্তরীণ নৌ পরিবহন কর্পোরেশন (BIWTC) টেকনাফ হতে সমুদ্র পথে ‘খিজির-৩’ নামে দ্বিতল বিশিষ্ট একটি সী ট্রাক চালু করে। ইদানিং এরূপ ব্যক্তিমালিকানায় অনেক সী-ট্রাক আছে যা দিয়ে পর্যটকরা অনায়াসে প্রবাল দ্বীপ বেরিয়ে আসতে পারেন। কেয়ারী সিন্দাবাদ, ঈগল, এলসিটি কুতুবদিয়া, সী-ট্রাক, কাজল, সোনারগাঁ নামে ছয়টি জাহাজযোগে পর্যটকরা টেকনাফ-সেন্টমার্টিনদ্বীপে যাতায়াত করছেন। আড়াই ঘন্টার মধ্যে বঙ্গোপসাগর পাড়ি দিয়ে টেকনাফ হতে সেন্টমার্টিনে পৌঁছা যায়। বর্ষা মৌসুমে কোন অবস্থাতে এ দ্বীপে যাওয়া নিরাপদ নয়। পর্যটন মৌসুমেও আবহাওয়া পর্যবেক্ষণ করে সেন্টমার্টিন যাওয়া উত্তম। চারদিকে নীল জলরাশি পরিবেষ্টিত ও নীল আকাশ সমৃদ্ধ সেন্টমার্টিন দ্বীপটি বর্তমানে দেশি-বিদেশি পর্যটকদের নিকট এক অপূর্ব সুন্দরী পর্যটন এলাকা হিসেবে দিনে দিনে জনপ্রিয়তা পাচ্ছে। পর্যটকদের আবাসনের জন্য কক্সবাজার জেলা পরিষদ কর্তৃক নির্মিত রেস্টহাউজ ছাড়াও ইদানিং অনেক ব্যক্তি মালিকানাধীন রিসোর্ট  রয়েছে। জোস্নার রাতে সেন্টমার্টিন দ্বীপে অবস্থান করার মজাই আলাদা। সমুদ্রের কুল ঘেঁষে নির্মিত কটেজ সমূহের জানালার স্বচ্ছ কাঁচ থেকে সাগরের তালমাতাল ঢেউ সহজে অবলোকন করা যায়। পটুয়াখালী জেলার কুয়াকাটা সী-বীচের ন্যায় সেন্টমার্টিন বীচ থেকেও সূর্যোদয় ও সূর্যাস্ত উপভোগ করা যায়।\r\n        '),
(8, 12, 'ছেঁড়াদ্বীপ সেন্টমার্টিন টেকনাফ', 'কিভাবে যাওয়া যায়: নৌ পথে\r\n\r\nছেঁড়াদ্বীপ, সেন্টমার্টিন, টেকনাফ:\r\n\r\n \r\n\r\nসেন্টমার্টিন থেকে কয়েক কিলো দূরে এ দ্বীপের অবস্থান। এটি বাংলাদেশের সর্বদক্ষিণে অবস্থিত একটি ভূখন্ড। জোয়ারের সময় সেন্টমার্টিন হতে ছেঁড়াদ্বীপটি বিচ্ছিন্ন হয়ে যায়। দ্বীপকে স্থানীয়রা দিয়া দ্বীপ অর্থাৎ ছেঁড়াদিয়া দ্বীপ বলে সম্বোধন করে থাকেন। এ দ্বীপে মানুষ বসবাস করেন না। তবে জেলেরা দিনের বেলা মৎস্য আহরণ করে রাতে নিজ নিজ গৃহে প্রত্যাবর্তন করেন। ছেঁড়াদিয়ার স্বচ্ছ জলের অনেক গভীরে অবস্থানরত নানা প্রজাতি ও ভিন্ন আকৃতির প্রবাল ও সামুদ্রিক শৈবাল অতিসহজে স্বচক্ষে প্রত্যক্ষ করে শরীর আনমনে পুলকিত হবে ও মন আনন্দে অজান্তে ঢোলা দেবে।'),
(9, 12, 'বড় রাখাইন পাড়া বৌদ্ধ মন্দির', 'কিভাবে যাওয়া যায়: সড়ক পথে\r\n\r\nবড় রাখাইন পাড়া বৌদ্ধ মন্দির:\r\n\r\n\r\nঢাকা ঢাকা-চট্রগ্রাম-কক্সবাজার হতে আরাকান মহাসড়ক পথে সরাসরি চকরিয়া থানা রাস্তার মাথা হয়ে বদরখালী ব্রীজ পার হয়ে কালারমা ছড়া অথবা শাপলাপুর রাস্তা দিয়ে সরাসরি মহেশখালী উপজেলা প্রশাসকের কার্যালয়/উপজেলা পরিষদ । কক্সবাজার সদর হতে কস্তুরা ঘাট / ৬নং ঘাটা / উত্তর নুনিয়া ছড়া সরকারী জেটী ঘাট হতে স্প্রীট বোট বা কাটের বোটে করে মহেশখালী জেটিঘাটা/আদিনাথ জেটিঘাট সেখান থেকে রিক্স/ মটর গাড়ী যোগে উক্ত দর্শনীয় স্থান সমূহে যাওয়া যায়। জলপথে ঢাকা-চট্রগ্রাম-খুলনা-নারায়নগঞ্জ- চাদপুর-কক্সবাজার হতে জলপথে নৌকা,ইঞ্জিন বোট ও ট্রলারের মাধ্যমে মহেশখালী জেটিঘাট/আদিনাথ জেটিঘাট সেখান থেকে রিক্সা/ মটর গাড়ী যোগে উক্ত দর্শনীয় স্থান সমূহে যাওয়া যায়। বিঃদ্রঃ-রেল পথে মহেশখালী উপজেলা পরিষদ এর সাথে কোন যোগাযোগ নাই।\r\nমহেশখালীতে অনেক দর্শনীয় স্থানের মধ্যে অন্যতম শতাব্দীর পুরানো ঐতিহাসিক বৌদ্ধ মন্দির। রাখাইন সম্প্রদায়ের বৌদ্ধ মন্দির দেখার জন্য মহেশখালীতে প্রতিনিয়ত পর্যটকদের সমাগম ঘটে।মূল মন্দির আনুমানিক প্রায় ২৮৩ বৎসর পূর্বে নির্মিত হয়। পর্যায়ক্রমে প্রয়োজন অনুসারে মন্দিরের সংস্কার এবং মেরামত কাজ করা হয়। সর্বশেষ গত ২০০৪ সালে ডিসেম্বর মাসের ০৭ তারিখে বর্তমান মন্দিরটি পূনঃনির্মাণ করা হয়।বড় পিতলের মুর্তিটি ১০১ বৎসর পূর্বে এটি বাংলাদেশের মধ্যে ২য় বৃহত্তম বৌদ্ধমুর্তি, দায়ক স্বর্গীয় উ থৈংঅংক্য এবং দায়িকা স্বর্গীয় দো নেং ওয়ে স্থাপন করেন। সীমা মন্দিরের দাড়ানো মুর্তি সম্পূর্ণ একটি গাছকে খোদাই করে বানানো, বিরল এই মুর্তিটি আনুমানিক প্রায় ১১২ বৎসর পূর্বে স্থাপন করা হয়। গাছের খোদাই করা আর কোন বৌদ্ধমুর্তি বাংলাদেশে নেই।এ মন্দিরের দায়ক স্বর্গীয় কো হলা রি দায়িকা স্বর্গীয় দো নিংমা। এ ছাড়াও এখানে রয়েছে ন্যাশনাল পিছ প্যাগোডা, কো না ওয়াং প্যাকোডা (রাশি চক্রের প্যাকোডা)। মুং জা লিংদা ধর্মীয় পুকুর-গৌতম বুদ্ধ বৌদ্ধত্ব লাভের পর ০৭ টি পূণ্য স্থানে ০৭ দিন করে ধ্যানেরত ছিলেন। তিনি ৬ষ্ঠ সপ্তাহ অতিবাহিতকালে এই মুং জা লিংদা পুকুরে ধ্যানমগ্ন থাকাকালীন প্রবল ঝড় বৃষ্টি হয়। এই সময় গৌতম বুদ্ধের দেহটিকে ঝড় বৃষ্টি থেকে রক্ষার জন্য নাগরাজ নিজ দেহকে আশ্রম তৈরী করে গৌতম বুদ্ধের মস্তকের উপর ফণা আকৃতি করে এক সপ্তাহ ব্যাপি অবস্থান করেছিলেন। এ থেকে গৌতম বুদ্ধের সন্তুষ্টি অর্জনের জন্য প্রতি বছর রাখাইনরা মুং জা লিংদা পুকুরে বর্ষাব্রত পালন করে থাকেন।\r\n\r\n \r\n\r\n২০১১ সালের আদম শুমারীর হিসাব অনুযায়ী মহেশখালীতে বৌদ্ধধর্মাবলম্বীর সংখ্যা ৭৫০০ (সাত হাজার পাঁচশত) জন এবং ৫টি বৌদ্ধ মন্দির। রাখাইন আবাসিক এলাকা গুলো যথা মহেশখালী পৌরসভা, শাপলাপুর ও ছোট মহেশখালীর ঠাকুরতলায় রাখাইন ধর্মাবলম্বীরা যুগ যুগ ধরে শান্তিপূর্ণভাবে বসবাস ও ধর্ম পালন করে আছে। তাদের মধ্যে নারী-পুরুষ উভয়ই কর্মঠ। ছেলে মেয়ে কাঁধে কাঁধ মিলিয়ে প্রতিনিয়ত পরিবারের ভরণ পোষনের লক্ষ্যে কাজ করে যাচ্ছে। মূলত তারা স্বর্ণ ব্যবসায়ী ও মহাজনী কারবারী। তাছাড়া টেইলার্স, ছোট ছোট মুদির দোকান, তাঁতের কাপড় তৈরি এবং কিছু লোক জেলের কাজ করেন। তারা বেশির ভাগ স্বচ্ছল। মহেশখালীর রাখাইন নারী পুরুষ ধর্মের প্রতিও সচেতন। পার্বনের সময় বিভিন্ন দোকান-পাঠ বন্ধ করে ধর্মীয় আচারে মন দেয়। বৌদ্ধ ধর্মাবলম্বীদের ধর্মীয় উৎসবগুলোর মধ্যে সবচেয়ে বড় উৎসব হলো বৌদ্ধ পূর্ণিমা-তার আচরিত দিক হলো যেদিন পুজা আরম্ভ হবে সেদিন তারা বিভিন্ন পুজা ঘরে গিয়ে সুগন্ধি পরিবেশন করে এবং গোলাপ জল দিয়ে ছোট বড় বৌদ্ধমূর্তি স্নান করায়। ছোট বড় রাখাইন বৌদ্ধ ধর্মাবলম্বী সকলে বৌদ্ধ মূর্তির সামনে দু’হাত জোড় করে প্রার্থনায় রত হয়। কারণ সেদিন গৌতমবুদ্ধের জন্ম দিন, নির্বাণ লাভের দিন ও সমাধির দিন। তাদের আর একটি বড় উৎসব হলো ফানুস বাতি উড্ডয়নের দিন, এই পুজার অর্থ হলো দেশের মধ্যে কোন ঝড়-তুফান, খরা, আপদ-বালাই দুর করার উদ্দেশ্যে নারী পুরুষ মিলে ফানুস বাতি উড্ডয়ন করে। এ সময়ে হাজার হাজার রাখাইন তরুন-তরুনী নতুন রুপে সাজে লে-লে মাইও মাইও (হেপি পুরে হেপি পুরে) শ্লোগানে শ্লোগানে বিভিন্ন দলে দলে সব রাখাইন এলাকা মুখরিত করে। পুজাটি হয় অক্টোবর-নভেম্বর এর দিকে। তাদের ফানুস বাতি গুলো যদি সঠিক ভাবে উড্ডয়ন হয় তাহলে তাদের মন খুব ভাল হয়ে যায়। পুজার সময় তাদের বাড়ীতে বাড়ীতে অতিথি আপ্যায়ন হয়। রাখাইনদের আর একটি উৎসব রাখাইন ভাষায় সাংগ্রাই বা নববর্ষের উৎসব। এই সাংগ্রাই উৎসব (এপ্রিল মাসের ১৩-১৪) জলকেলি অনুষ্টিত হয়। জলকেলি অনুষ্ঠানটি তাদের অন্যরকম খেলা। ১৪ হতে ২০ বছরের তরুণ-তরুণী নিজেদের মধ্যে জল নিক্ষেপের মাধ্যমে হৃদয় বিনিময় হয়। তরুণ তরুণীরা বিভিন্ন ঢংয়ে পোষাক পরিধান করে নাচ গানে মেতে উঠে। তরুণীরা ও বিভিন্ন রকমের ফুলের লাল থামি আঁল্পনা আঁকা ফতুয়া পরিধান করে হাতে পানির পাত্র নিয়ে ছেলেদের পানি নিক্ষেপ করে। এই তিন দিনের অনুষ্ঠানে উভয় লিঙ্গের মধ্যে অন্য রকম ভাবের সৃষ্টি হয়। তাদের বৈচিত্র্যময় ও মধুময় গান যেমন- তেঘ্রাংশে (লোকগীতি)। এছাড়াও অসংখ্য সংগীত রয়েছে।\r\n\r\n \r\n\r\nরাখাইনরা নিজের মাতৃ ভাষায় কথা বলে। ভাষা সংস্কৃতি ও সত্ত্বার দিক থেকে তারা বাংলাদেশের অন্যান্য সম্প্রদায় থেকে সম্পূর্ণ আলাদা এবং তাদের সাংস্কৃতিকে বিভিন্ন ভাগে ভাগ করা হয়েছে। যেমন-১) আমোদ-প্রমোদ, ২) রাখাইন জেপোয়া (যাত্রা), ৩) রাখাইন এয়ইন পোয়া (জলসা), ৪) রাখাইন প্রানেই (নাটক), ৫) রাখাইন ছাখাং (গান), ৬) রাখাইন আকাহ্ (নৃত্য)। এদিকে রাখাইন এয়ইন পোয়ে (জলসা) জলসা অনুষ্ঠান একমাত্র বৌদ্ধ ভিক্ষুর শবদাহ ও অন্তোষ্টিক্রিয়া উপলক্ষে আয়োজন করা হয়। আকাহ্, সিমিং, ব্রজ্য আকাহ্, নেহ আকাহ্, তায় পাং আকা ইত্যাদি অনুষ্ঠান গুলো মহেশখালীর সকল শ্রেণীর রাখাইনরা ঐতিহাসিক বড় রাখাইন পাড়ার শতাব্দীর পুরানো মন্দির মাঠে অনুষ্ঠিত হয়। রাখাইন তরুণীরা বিভিন্ন অনুষ্ঠানে ভিন্ন পোশাক ও সোনার গয়না থামি হাফ ফতুয়া পড়ে অনুষ্ঠান উদযাপন করে থাকে। \r\n\r\n \r\n\r\nরাখাইন সম্প্রদায়ের বিভিন্ন ধর্মীয় অনুষ্ঠানসমূহঃ\r\n\r\n** রাখাইন নববর্ষ (জলকেলী উৎসব):\r\n\r\nএপ্রিল মাসের ১৩ অথবা ১৪ তারিখে ০৪ (চার) দিন ব্যাপি ধর্মীয় অনুষ্ঠান পরবর্তীতে ০৩ (তিন) দিন ব্যাপি জলকেলী উৎসব।\r\n\r\n** বৌদ্ধ পূর্ণিমা:\r\n\r\nমে মাসে অনুষ্ঠান হয় (চাঁদ দেখার উপর নির্ভরশীল)\r\n\r\n** আষাঢ়ী পূর্ণিমা:\r\n\r\nজুলাই মাসে অনুষ্ঠান হয় (চাঁদ দেখার উপর নির্ভরশীল)\r\n\r\n** প্রবারনা পূর্ণিমা:\r\n\r\nঅক্টোবর মাসে অনুষ্ঠিত হয় (চাঁদ দেখার উপর নির্ভরশীল)\r\n\r\nফানুশ বাতি উড়ানো অনুষ্ঠান এবং জাহাজ ভাসানো অনুষ্ঠান\r\n\r\n** কার্তিক পূর্ণিমা:\r\n\r\nনভেম্বর মাসে অনুষ্ঠিত হয় (চাঁদ দেখার উপর নির্ভরশীল)\r\n\r\nপুরো কার্তিক মাস ব্যাপি “কঠিন চিরব দান” উৎসব অনুষ্ঠান');

-- --------------------------------------------------------

--
-- Table structure for table `zilla`
--

CREATE TABLE `zilla` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zilla`
--

INSERT INTO `zilla` (`id`, `name`) VALUES
(12, 'কক্সবাজার'),
(22, 'কিশোরগঞ্জ'),
(55, 'কুড়িগ্রাম'),
(11, 'কুমিল্লা'),
(36, 'কুষ্টিয়া'),
(14, 'খাগড়াছড়ি'),
(35, 'খুলনা'),
(54, 'গাইবান্ধা'),
(20, 'গাজীপুর'),
(21, 'গোপালগঞ্জ'),
(10, 'চট্টগ্রাম'),
(9, 'চাঁদপুর'),
(32, 'চুয়াডাঙ্গা'),
(46, 'জয়পুরহাট'),
(41, 'জামালপুর'),
(4, 'ঝালকাঠি'),
(34, 'ঝিনাইদহ'),
(30, 'টাঙ্গাইল'),
(60, 'ঠাকুরগাঁও'),
(18, 'ঢাকা'),
(53, 'দিনাজপুর'),
(47, 'নওগাঁ'),
(49, 'নওয়াবগঞ্জ'),
(39, 'নড়াইল'),
(27, 'নরসিংদী'),
(48, 'নাটোর'),
(26, 'নারায়ণগঞ্জ'),
(57, 'নীলফামারী'),
(43, 'নেত্রকোনা'),
(16, 'নোয়াখালী'),
(58, 'পঞ্চগড়'),
(5, 'পটুয়াখালী'),
(50, 'পাবনা'),
(6, 'পিরোজপুর'),
(19, 'ফরিদপুর'),
(13, 'ফেনী'),
(45, 'বগুড়া'),
(1, 'বরগুনা'),
(2, 'বরিশাল'),
(31, 'বাগেরহাট'),
(7, 'বান্দরবান'),
(8, 'ব্রাহ্মণবাড়ীয়া'),
(3, 'ভোলা'),
(42, 'ময়মনসিংহ'),
(37, 'মাগুরা'),
(23, 'মাদারীপুর'),
(24, 'মানিকগঞ্জ'),
(25, 'মুন্সীগঞ্জ'),
(38, 'মেহেরপুর'),
(62, 'মৌলভীবাজার'),
(33, 'যশোর'),
(59, 'রংপুর'),
(17, 'রাঙ্গামাটি'),
(28, 'রাজবাড়ী'),
(51, 'রাজশাহী'),
(15, 'লক্ষ্মীপুর'),
(56, 'লালমনিরহাট'),
(29, 'শরীয়তপুর'),
(44, 'শেরপুর'),
(40, 'সাতক্ষিরা'),
(52, 'সিরাজগঞ্জ'),
(64, 'সিলেট'),
(63, 'সুনামগঞ্জ'),
(61, 'হবিগঞ্জ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`spot_id`,`image_path`);

--
-- Indexes for table `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zilla`
--
ALTER TABLE `zilla`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `spot`
--
ALTER TABLE `spot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `zilla`
--
ALTER TABLE `zilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
