-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2016 at 11:04 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fdx`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_info`
--

CREATE TABLE `billing_info` (
  `billing_id` varchar(20) NOT NULL,
  `billing_address` varchar(20) DEFAULT NULL,
  `billing_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(20) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `picture`, `description`) VALUES
('GJ1', 'Gujarat Namkeen', 'images/baked_chakalis.jpg', NULL),
('GJ2', 'Gujarat Dessert', 'images/gujrat_sweets.jpg', NULL),
('IND', 'Indore Special', 'images/indori_special.jpg', NULL),
('MBB', 'Milk Based Beverages', 'images/chaach.jpg', NULL),
('OB', 'Other Beverages', 'images/kalakhatta.jpg', NULL),
('RAJ1', 'Rajasthan Namkeen', 'images/rajasthan_namkeen.jpg', NULL),
('RAJ2', 'Rajasthan Dessert', 'images/ghevr.jpg', NULL),
('SI', 'South Indian', 'images/cat1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `full_name` varchar(20) DEFAULT NULL,
  `address` text,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email_id` varchar(200) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`full_name`, `address`, `mobile_number`, `email_id`, `password`) VALUES
('', '', 0, '', ''),
('Mohan', '111', 111, '111', '111'),
('aditya', '121', 121, '121', '121'),
('aditya', '1211', 1211, '1211', '1211'),
('Mohit', 'mohit', 123, '123', 'mohit'),
('asd', '1234', 1234, '1234', '1234'),
('firehawk', '12343', 12343, '12343', '12343'),
('Dhruv', '1234', 12345, '12345', '1234'),
('Saurabh', 'Mah Place', 100, '545', 'Kumar'),
('da', '785', 785, '785', '785'),
('Lal', '789', 789, '789', '789'),
('surya', 'surya', 1234513, 'a#b.com', 'surya'),
('surya', 'guguyg', 12312311, 'a@b.com', 'surdws'),
('Aditya Jain', '07-Mohini, Chinar Fortune City,\r\nHoshangabad Road, Bhopal', 9179514610, 'adityajain.aj10@gmail.com', 'okay123'),
('aditya', '123', 9993154997, 'adityajain.gmail', '123'),
('Aditya Jain', 'Bhopal', 741852963, 'adityajain@gmail.com', '147'),
('gh', 'gh', 12111, 'gh', 'gh'),
('new', 'haha', 9090, 'haha', 'new'),
('jaiho', 'haiho', 6789, 'jaiho!!!', 'jaiho'),
('kaka', '147', 147, 'kaka', '147'),
('Kg', 'Kg', 89, 'Kg', 'Kg'),
('mad', '753', 753, 'mad', '753'),
('mmm', 'mmm', 7894, 'mmm', 'mmm'),
('Mohit', 'Teliwara', 9950814448, 'mohtmohit@gmail.com', '121'),
('Tayal', 'indore', 123456789, 'tayal', '07121997'),
('Tayal', 'mars', 911, 'tayal@tayal.com', 'idontknow');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_number` int(20) NOT NULL,
  `order_date` date NOT NULL,
  `shipper_id` varchar(20) NOT NULL,
  `email_id` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_number`, `order_date`, `shipper_id`, `email_id`, `address`) VALUES
(1, '2016-11-01', '123', 'a@b.com', NULL),
(2, '2012-12-13', 'a', 'mad', 'add'),
(3, '2016-11-06', 'a', 'mad', '753'),
(4, '2016-11-06', 'a', 'mmm', 'mmm'),
(5, '2016-11-06', 'a', 'mmm', 'mmm'),
(6, '2016-11-06', 'a', 'mmm', 'mmm'),
(7, '2016-11-06', 'a', 'mmm', 'mmm'),
(8, '2016-11-06', 'a', 'mmm', 'mmm'),
(9, '2016-11-06', 'a', 'mmm', 'mmm'),
(10, '2016-11-06', 'a', 'mmm', 'mmm'),
(11, '2016-11-06', 'a', 'mmm', 'mmm'),
(12, '2016-11-06', 'a', 'mmm', 'mmm'),
(13, '2016-11-06', 'a', 'mmm', 'mmm'),
(14, '2016-11-06', 'a', 'mmm', 'mmm'),
(15, '2016-11-06', 'a', '', ''),
(16, '2016-11-06', 'a', '', ''),
(17, '2016-11-06', 'a', '', ''),
(18, '2016-11-06', 'a', '', ''),
(19, '2016-11-06', 'a', 'mmm', 'mmm'),
(20, '2016-11-06', 'a', 'mmm', 'mmm'),
(21, '2016-11-06', 'a', 'mmm', 'mmm'),
(22, '2016-11-06', 'a', 'mmm', 'mmm'),
(23, '2016-11-06', 'a', 'mmm', 'mmm'),
(24, '2016-11-06', 'a', 'mmm', 'mmm'),
(25, '2016-11-06', 'a', 'Kg', 'Kg'),
(26, '2016-11-06', 'a', 'Kg', 'sadd'),
(27, '2016-11-06', 'a', 'Kg', 'Kg'),
(28, '2016-11-06', 'a', 'Kg', 'Kg'),
(29, '2016-11-06', 'a', 'Kg', 'Kg'),
(30, '2016-11-06', 'a', 'Kg', 'Kg'),
(31, '2016-11-06', 'a', 'Kg', 'Kg'),
(32, '2016-11-06', 'a', 'Kg', 'Kg'),
(33, '2016-11-06', 'a', 'Kg', 'Kg'),
(34, '2016-11-06', 'a', 'Kg', 'Kg'),
(35, '2016-11-06', 'a', 'Kg', 'Kg'),
(36, '2016-11-06', 'a', 'Kg', 'Kg'),
(37, '2016-11-06', 'a', 'Kg', 'Kg'),
(38, '2016-11-06', 'a', 'Kg', 'Kg'),
(39, '2016-11-06', 'a', 'Kg', 'Kg'),
(40, '2016-11-06', 'a', 'Kg', 'Kg'),
(41, '2016-11-06', 'a', '', ''),
(42, '2016-11-06', 'a', 'Kg', 'hwdiuwyqd'),
(43, '2016-11-06', 'a', 'Kg', 'Kg'),
(44, '2016-11-06', 'a', 'Kg', 'Kg'),
(45, '2016-11-06', 'a', 'Kg', 'jjfheuhfwefw'),
(46, '2016-11-06', 'a', 'mohtmohit@gmail.com', '123'),
(47, '2016-11-06', 'a', 'mohtmohit@gmail.com', 'Teliwara'),
(48, '2016-11-07', 'a', 'adityajain@gmail.com', 'sadjjdo'),
(49, '2016-11-07', 'a', 'Tayal', 'indore'),
(50, '2016-11-07', 'a', 'Tayal', 'indore'),
(51, '2016-11-07', 'a', '545', 'Mah Place'),
(52, '2016-11-07', 'a', '545', 'no where'),
(53, '2016-11-07', 'a', '545', 'no where'),
(54, '2016-11-07', 'a', 'tayal@tayal.com', 'pluto'),
(55, '2016-11-07', 'a', 'tayal@tayal.com', 'mars'),
(56, '2016-11-07', 'a', 'tayal@tayal.com', 'mars'),
(57, '2016-11-07', 'a', 'mohtmohit@gmail.com', 'Teliwara'),
(58, '2016-11-07', 'a', 'mohtmohit@gmail.com', 'Teliwara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_description` text NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `unit_weight` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `supplier_id` varchar(20) DEFAULT NULL,
  `category_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `unit_price`, `unit_weight`, `discount`, `picture`, `supplier_id`, `category_id`) VALUES
(1, 'Chatpati Daal', '', 160, 400, NULL, 'images/chatpati_daal.jpg', 'IN0001', 'IND'),
(2, 'Daal Moth', 'Daal Moth is a traditional snack. It consists of fine sev mixed wih masoor dal and dry fruits.', 150, 400, 0, 'images/daal_moth.jpg', 'IN0001', 'IND'),
(3, 'Methi Thepla', 'Methi Thepla is another healthiest meal which stays fresh for longer period of time. It has goodness of fenugreek leaves, besan, flours and spices which are packed with vitamins and minerals and will keep you satiated from hunger pangs. Kids will love to eat it and will not crib on you to buy packaged food.', 10, 20, 0, 'images/methi_thepla.jpg\r\n', 'GJ0001', 'GJ1'),
(4, 'Suhali', 'Fried Mathri’s known as “Suhaali” in a Marwari house is one of the favourite snack of kids. It is made of refined flour or wheat flour with spices , is kneaded stiff, then it is made into round flatbread and deep fried into oil till its crisp and crunchy. It is stored into an airtight container and can be relished with tea/coffee over breakfast or as an evening snack. Kids love to eat it with pickle and would keep asking for more till you stop offering them more.', 50, 100, 0, 'images/suhaali.jpg\r\n', 'RJ0001', 'RAJ1'),
(5, 'Thick Sev', 'Enjoy the enhanced indori sev. It is thickened and the flavour is enhanced.', 130, 400, 0, 'images/thick_sev.jpg', 'IN0001', 'IND'),
(6, 'Chivda Mixture', 'Beaten rice flakes also known as “Poha/Chiva” tastes really good stir fried, and combined with peanuts. It is a healthy snack which is full of healthy fats and carbohydrates keeping you full for longer hours. Also its crispy and crunchy taste will keep you wanting more so make sure you prepare it in good quantity while travelling.\r\n\r\nPlease note: You can cut onions and mix it with this mixture to make it tastier to eat. Also make sure to mix it only when you intend to eat it else the mixture will lose its crunchiness.', 35, 100, 0, 'images/chivda_mixture.jpg', 'GJ0001', 'GJ1'),
(7, 'Kurmura Mixture', 'Puffed rice flaxes also known as “Kurmura/Mudhi” is another healthiest option to prepare and carry. There are many ways in which one can eat it, some people like eating it only with salt and bit of mustard oil flavor into it, while some like to toss it with fried groundnuts, oil, curry leaves with a dash of turmeric powder to it. You can also put cut tomatoes, onions and cucumber to it to make it more healthier and tasty to eat.\r\nIf you want to avoid the pain of cutting veggies and mixing try this recipe and carry with you in an airtight container and relish over a cup of tea.', 35, 100, 0, 'images/kurmura_mixture.jpg', 'GJ0002', 'GJ1'),
(8, 'Double Laung Sev', 'Laung Sev is sev madee with laung poweder in it. Laung Powder makes this sev extremely flavorful and slightly spicy. For those who love to try something new, this is the perfect snack to try.', 130, 400, 0, 'images/dls.jpg', 'IN0001', 'IND'),
(9, 'Indori Mixture', 'Indori Misture is one of the delicious namekeens with a sweet-n-sour taste. It is also called the \'khatta mitha\' namkeen.', 130, 400, 0, 'images/indori_mix.jpg', 'IN0001', 'IND'),
(10, 'Lahsun Sev', 'Indori Sev with a garlic flavour and added red chilli to make it the hottest sev available out there!', 160, 400, 0, 'images/lahsun_sev.jpg', 'IN0001', 'IND'),
(11, 'Ujjaini Sev', 'The Ujjani Sev is prepared using gram flour, vegetable oil, black pepper, cloves, cumin, salt and other select spices and condiments for a crunchy namkeen experience. This is best suited for sprinkling on poha. It has an unbeatable taste. Compared to the other varieties of sev, ujjani sev is little soft, little more spicy and little crispy, therefore haveing a lot of taste.', 130, 400, 0, 'images/ujjani_sev.jpg', 'IN0001', 'IND'),
(12, 'Gajak', 'Gajak is a dry sweet made of sesame seeds , and Ground nut, as they are known in Hindi, and jaggery. The til is cooked in sugar syrup and set in thin layers, which can be stored for months. Gajak is prepared with sesame seeds and jaggery (or cane sugar) with a method of preparation which is time consuming.', 70, 250, 0, 'images/peanut_butter_chocolate_granola_bar.jpg', 'RJ0002', 'RAJ2'),
(13, 'Baked Chakli', 'This simple and delicious recipe is a real treat for weight watchers. Chaklis, the popular indian snack, is usually deep-fried and contains loads of calories. Here\'s how to make them with 1 tsp of oil to near perfection by baking them in an oven. Munch them at anytime of the day when hunger strikes.', 35, 100, 0, 'images/baked_chakalis.jpg', 'GJ0002', 'GJ1'),
(14, 'Falahari Mixture', 'Falahari Mixture is a special snack which contains mixture of falahari ingredients. Thus this snack can be enjoyed even on fast days as per Hindu beliefs.', 160, 400, 0, 'images/falahari.jpg', 'IN0001', 'IND'),
(15, 'Mini Samosa', 'Mini samosas are spicy and crispy triangles stuffed with dry mixture of crushed gathiya, snacks and dry fruits. It is a perfect light and tasty snack that can satisfy your urge for something spicy and stomach filling whenever you are hungry.', 130, 400, 0, 'images/mini-samosa.jpg', 'IN0001', 'IND'),
(16, 'Gathiya', 'Gathiya is a popular Gujarati tea time snacks. Gathiya is made of gramflour moulded into strips and deep fried. Here is the recipe for how to make gathiya. It is an easy to make savoury which can be served during Holi.', 35, 100, 0, 'images/gathiya.jpg ', 'GJ0001', 'GJ1'),
(17, 'Khakhra', 'Khakhra, a famous Gujarati snack is made from whole wheat flour, salt, oil and water. The dough is rolled out and cooked on a tava with pressure applied till crisp. \r\n		Khakhras are healthy, quick to make and go with curds, chutney, Jeera Aloo and Methia Keri Sambhaar . Basically khakhra is a crispy version of roti.\r\n', 100, 300, 0, 'images/khakhra.jpg', 'GJ0001', 'GJ1'),
(18, 'Papdi', 'Papdi is a special snack made in Madhya Pradesh. It is thicker than a khakara and is made of besan. This papdi is added with special spices to make it tastier and spicy.', 130, 400, 0, 'images/besan_papdi.jpg', 'IN0001', 'IND'),
(19, 'Ratlami Sev', 'Ratlami sev is a popular fried and crisp snack made in the city of Ratlam in Madhya Pradesh. The addition of the special spice blend, makes this spicy and gives a unique taste.', 150, 400, 0, 'images/ratlami_sev.jpg', 'IN0001', 'IND'),
(20, 'Tomato Sev', 'The delicious Indori Sev with the goodness of juicy tomatoes! Enjoy this tasty tomato flavoured snack and kill hunger!', 180, 400, 0, 'images/tom_sev.jpg', 'IN0001', 'IND'),
(21, 'Green Pea Panki', 'Green pea panki is a popular Gujarati snack made of a rice flour batter that is cooked between 2 banana leaves. Green peas added to the panki batter make it look more appealing and enhance its fibre value. Serve these steamed hot pankis with green chutney.', 100, 300, 0, 'images/green_pea_panki.jpg', 'GJ0001', 'GJ2'),
(22, 'Spicy Pudina Khakhra', 'This Gujarati staple is traditionally made and served with a lot of ghee. Here is a healthier version made using just 1 teaspoon of oil. \r\n		Mint and chillies add flavour to this popular snack. You can use innovative toppings for added taste. Carry them with you on your travels and you\'ll find it much easier to make new friends!\r\n		For added flavour spread some Mint and Onion Chutney or Garlic Tomato Chutney on the khakhras and enjoy it as a tea time snack.\r\n', 120, 280, 0, 'images/spicy_pudina_khakara.jpg\r\n', 'GJ0001', 'GJ1'),
(23, 'Banana Chips', 'Banana chips also called banana wafers is one of the most famous south Indian snack. Banana is sliced and fried in pure coconut oil with added sugar/ salt or spices to get that extra mouth watering taste. They are mixed with a pinch of salt to get a salty and spicy feel. Banana chips are most famous and highly produced and consumed in Kerala. Malayalis often refer banana chips with the name Upperi. Apart from being a snack, banana wafers are also served during special occasions like Marriage.', 200, 250, 0, 'images/banana_chipz.jpg', 'TN0001', 'SI'),
(24, 'Paniyaram', 'Paniyaram is a south indian dish made by steaming batter using a mould. The batter is made of black lentils and rice and is similar in composition to the batter used to make idli and dosa. It is known by various names across south india, including paddu, appe, guliappa, ponganalu etc.\r\n', 200, 250, 0, 'images/paniyaram.jpg', 'TN0001', 'SI'),
(25, 'Aate Ka Seera', 'A smooth sweet pudding made with whole wheat flour. heat the ghee in a kadai or pan. ... keep this pan on a medium to high flame and let the solution come to a boil. after keeping the sugar and water in the other pan, add the whole wheat flour to the hot ghee in the kadai or pan.', 275, 1000, 0, 'images/atta_halwa.jpg', 'J0001', 'RAJ2'),
(26, 'Gol Papadi', 'This dish is also called sukhadi in some parts of Gujarat. This is a version of Golpapdi, that is served warm and not cut into the traditional diamond shaped cubes. The trick to making this version is to add the gur after the wheat and ghee mixture has cooled to a comfortable temperature and yet allows the gur to melt and caramelize thus giving it a characteristic', 200, 250, 0, 'images/garam_golpapdi.jpg ', 'TN0001', 'GJ2'),
(27, 'Peanut PohaPatties', 'Peanut Poha patties are a healty snack. It can be served as starter or as an evening snack. It goes well with a variety of rice also.', 100, 250, 0, 'images/Peanut-Poha-Patties.jpg', 'TN0001', 'SI'),
(28, 'Green GramAdai', 'Adai is a south indian dish made using dals and rice which are soaked in water and ground as a course batter with mild species. It can be considered as a close cousin to dosa. It is served with chutney, sambhar and avial. This adai is made using whole green moong and hence it is rich in protein.', 50, 100, 0, 'images/green_gram_adai.jpg', 'TN0001', 'SI'),
(29, 'Mohanthal', 'Mohanthal is a dish that is typically made in all Gujarati households. It is made with lots of dry fruits making it rich in taste and a healthier option than other fried sweets.', 300, 200, 0, 'images/mohanthal.jpg', 'GJ0002', 'GJ2'),
(30, 'Magaj', 'Magaj is delicious sweet delicacy from the Gujarati cuisine. It is one of the favorite sweet dishes of the Gujarati’s and specially made during Diwali festival or on the Bengali New Year. Magaj is made with nicely roasted aromatic chickpea flour mixed with khoya or mawa blended well in sugar syrup, ghee, almonds, and pistachios and flavored with cardamom.\r\n		Dishes from Gujarat are immensely popular throughout the world ranging from a variety of sweet to savory recipes. Magaj is a Gujarati speciality and also commonly known as Besan Ladoo. This dish is prepared by most of us during the Diwali festival.', 300, 250, 0, 'images/magaj.jpg', 'GJ0002', 'GJ2'),
(31, 'Aval Vada', 'Poha is mashed into smooth pulp and is mixed with besan, turmeric, rice flour, red chilli powder, ginger garlic paste, amchoor. This mix is used to form vada. It comes with tamarind chutney.', 30, 200, 0, 'images/poha_whatever.jpg', 'TN0001', 'SI'),
(32, 'Ragi Murukku', 'Ragi or finger milet is one of the most nutritious and healthy cereaks. Raagi has many heealth benefits. Chaklis (called as Murruku in South India) are made out of Ragi paste.', 80, 200, 0, 'images/ragi_murukku.jpg', 'TN0001', 'SI'),
(33, 'Moong Murukku', 'South Indian version of the Gujarati Chakalis.', 50, 200, 0, 'images/moong_murukku.jpg', 'TN0001', 'SI'),
(34, 'Magilampoo Murukku', 'South Indian version of the Gujarati Chakalis.', 45, 200, 0, 'images/magilampoo_murukku.jpg', 'TN0001', 'SI'),
(35, 'Laapsi', 'This fabulously tasty Gujarati sweet features the goodness of broken wheat and the tantalising aroma of cardamom. It is a hot favourite across the world!\r\n\r\nIn Gujarat Lapsi is usually made to celebrate special occasions .\r\n', 300, 250, 0, 'images/laapshi.jpg', 'GJ0002', 'GJ2'),
(36, 'Shreekhand', 'This is a traditional sweet from gujarat. It is made from hung or strained curd and sugar. Chopped nuts are also added. It has thick, creamy and smooth consistency. It is rich and sweet.', 100, 250, 0, 'images/shreekhand.jpg\r\n', 'GJ0001', 'GJ2'),
(37, 'Besan Ke Ladoo', 'Besan ke Ladoo is sweet dessert, mainly made during festival or happy occasions. It is rich in taste and nutritious and easy to made also.', 330, 750, 0, 'images/besan_ladoo.jpg', 'GJ0001', 'GJ2'),
(38, 'Kalami Vada', 'Perfect accompaniment for tea on a cold winter’s day, this Rajasthani delicacy is also surprisingly very easy to prepare. Made with a coarsely blended batter of chana dal, perked up with green chillies, onions, dhania seeds, etc., Kalmi Vada has a wonderfully crunchy texture and stimulating flavour, which make it a challenge to stop with one serving!', 200, 500, 0, 'images/kalmiVada.jpg', 'RJ0002', 'RAJ1'),
(39, 'AlmondFlavoured Milk', 'The classic indian \'badam\' milk redefined.', 45, 200, 0, 'images/almond_milk.jpg', 'PB0001', 'MBB'),
(40, 'Lassi', 'It is a popular traditional yogurt based drink from the Indian Subcontinent and originates from punjab.\r\n', 30, 200, 0, 'images/lassi.jpg', 'PB0001', 'MBB'),
(41, 'Masala Chaach', 'It is Indian skimmed buttermilk with added salt and spices. ', 25, 200, 0, 'images/chaach.jpg', 'GJ0002', 'MBB'),
(42, 'Sweet Kesar Fini', 'Sweet Kesar Fini\r\nIngredients - Saffron,Cardamon,Maida,Sugar,Pure Ghee. Packings - 500 Gms, 1 Kg.', 400, 500, 0, 'images/finii.jpg', 'RJ0002', 'RAJ1'),
(43, 'Bikaner Bhujia', 'Bikaner is known for this savoury snack. Deep-fried bhujia is usually made of gram flour but a variety of flours like moong, moath and even mashed potatoes are used to make different kinds of bhujia. A large number of shops all over the country sell Bikaneri bhujia which are as famous as the Rasgullas of Bengal. Bikaneri Bhujia is spicy - usually black pepper is used to add fire to this preparation. A large quantity of bhujia can be made and stored for several days in air-tight containers.', 35, 150, 0, 'images/bikaneri_bhujia_1.jpg', 'RJ0001', 'RAJ1'),
(44, 'Mango Shake', 'Mango Shake (Mango Milkshake) is a cool and tempting fruit drink prepared by simply blending ripe mango pieces, milk and sugar.', 70, 200, 0, 'images/mango_shake.jpg', 'IN0001', 'MBB'),
(45, 'Masala Mathri', 'Mathi is popular Indian sytle tea time snack. Stiff dough is kneaded from all purpose flour and wheat flour adding various spices to it and then deep fried.', 50, 150, 0, 'images/masala-mathi.jpg', 'RJ0001', 'RAJ1'),
(46, 'Matar Ki Kachori', 'Matar ki kachori is a very popular version of kachoris. These deep-fried delicious dough balls stuffed with a spicy green pea mixture are a great snack any time of the year. The flavour of desi ghee in these kachoris really takes things to another level. Serve with any chutney of your choice – even ketchup works.', 100, 350, 0, 'images/mutter-ki-kachori.jpg', 'RJ0001', 'RAJ1'),
(47, 'Cold Coffee', 'Iced coffee is called cold coffee. We use the cold brew method for brewing cold coffee.', 70, 200, 0, 'images/cold_coffee.jpg', 'GJ0001', 'MBB'),
(48, 'Chocolate Milk', 'Goodness of milk with the taste of choclate.\r\n', 50, 200, 0, 'images/choc_milk.jpg', 'J0001', 'MBB'),
(49, 'Moong Dal Ki Kachori', 'Khasta kachori is a delicious, spicy, fried puffed pastry. Khasta Kachori is filled with spicy moong dal mixture and then deep fried. Kachori is flakey from outside and hollow inside. Kachori should be fried on low heat so it can cook through to have a nice crunch. Khasta kachori is one of the dish you can eat for any meal! Serve them for breakfast with potato curry with yogurt. kachori makes a mouthwatering appetizer and can be served with, Green Chutney, and tamarind chutney. How about serving for dinner with Aloo Dum. This is one of those recipe you make when you want to impress someone.', 100, 400, 0, 'images/moong_dal_kachori.jpg', 'PB0001', 'RAJ1'),
(50, 'Papaad Ki Choori', 'Indian food is almost incomplete without accompaniments . But fat-laden ones aren\'t the only option. Here is a healthy accompaniment with a remarkably lower calorie and fat count, so you can binge on it without any guilt.', 35, 150, 0, 'images/papad_churi.jpg', 'RJ0001', 'RAJ1'),
(51, 'KesarElaichi Milk', 'The classic Indian Kesar Elaichi Milk.', 65, 200, 0, 'images/kesar_elaichi_milk.jpg', 'RJ0001', 'MBB'),
(52, 'Aate Ka Malpua', 'Atte ka Malpua is just what you need to warm your heart on a cold, winter’s day. It is not surprising then that this is a traditional favourite in Rajasthani households, especially during the unrelenting winter days. The smell of sugary, spicy whole wheat batter deep-frying in ghee, especially the prominent accents of fennel and pepper, is enough to make one drool!', 100, 210, 0, 'images/atta-malpua.jpg', 'RJ0002', 'RAJ2'),
(53, 'Badam Ka Halwa', 'A delicacy rooted in Indian tradition, Badam Halwa is indispensable for celebrations of any kind. It is good to have on normal days too! Infact, grandmas unfailingly advice their grandchildren to have a spoonful of this wholesome halwa every morning, all through the winter. This is one delicious morning ritual nobody would want to skip! This all-time favourite winter recipe is, of course, a bit rich, so you cannot have more than a few spoons at a time. Worry not, you can stash this safely into the freezer and have some everyday, especially in the winters.', 50, 200, 0, 'images/badam_halwa.jpg', 'RJ0002', 'RAJ2'),
(54, 'Milk Rose', 'The classic Rose Sherbat blended with the goodness of milk.', 70, 200, 0, 'images/milk_rose.jpg', 'IN0001', 'MBB'),
(57, 'Aam Panna', 'Avoid unhealthy soft cola drinks in the summers and take recourse in the bountiful blessings that mother nature gives us. The drink is slightly sour and sweet to taste with a hint of cardamom and black salt. ', 20, 200, 0, 'images/aam_panna.jpg', 'TN0001', 'OB'),
(58, 'Ghevar', 'A Rajasthani sweet traditionally associated with the Teej Festival. It is disc-shaped sweet made with all-purpose flour and soaked in sugar syrup. There are many varieties of Ghevar, including plain, mawa and malai ghevar. Ghevar traces it roots to Jaipur, the capital city of Rajasthan.', 410, 500, 0, 'images/ghevr.jpg', 'RJ0002', 'RAJ2'),
(59, 'Coconut Water', 'Coconut ateer is the clear liquid found inside a young, green coconut. Ideally young coconuts are harvested at 5-7 months of age.', 45, 200, 0, 'images/coco_water.jpg', 'IN0001', 'OB'),
(60, 'Goond Ke Ladoo', '', 200, 500, 0, 'images/gaund_ke_ladoo.jpg', 'RJ0002', 'RAJ2'),
(61, 'Kala Khatta', 'A dark purple, sweet tangy sherbet! This is made from the fruit of the blackberry (jamun) bush.', 50, 200, 0, 'images/kalakhatta.jpg', 'IN0001', 'OB'),
(62, 'Kesar Peda', 'Kesar Peda is a classic sweet made for festive occasions. They are delicious and made with very few ingredients, milk and sugar, flavored with cardamom and saffron.', 378, 500, 0, 'images/kesar_peda.jpg', 'RJ0002', 'RAJ2'),
(63, 'Nimbu Pani', 'Nimbu Pani is a delcious thirst quencher made from freshly squeezed lemons, salt and sugar.', 20, 200, 0, 'images/nimbupani.jpg', 'GJ0001', 'OB'),
(64, 'Dilkushaal', 'This divine mithai is also called "Besan ki Chakki" or "Mohanthal". This is usually made at weddings and on special occasions.\r\n 	It is traditionally made with coarsely ground besan, so that the barfi has a nice chewy texture.', 350, 700, 0, 'images/dilkushar.jpg', 'RJ0002', 'RAJ2'),
(65, 'Mango Iced Tea', 'Mango Iced tea is a delicious, tropical summer beverage that combines two great ingredients, tea and ripe mango puree. A winning combination with a feeel good factor. ', 50, 200, 0, 'images/mango-iced-tea.jpg', 'IN0001', 'OB'),
(66, 'Rose Sharbat', 'Sharbat is a popular West and South Asian prepared from fruits and flower petals. Its sweet and is served chilled. Rose sharbat has a sweet rose flavour made using rose water.', 35, 200, 0, 'images/sharbat_rose.jpg', 'GJ0002', 'OB'),
(67, 'Sandalwood Sharbat', 'Sandalwood has many health benefits. Sandalwood sharbat has a cooling and calming effect on the body, both externally and internally.', 60, 200, 0, 'images/sandal.jpg', 'GJ0002', 'OB'),
(68, 'Khus Sharbat', 'Khus is beautifully fragrant cooling herb. these perennial grasses have a lovely woody aroma. The aroma is reminiscent of sandalwood. Khus is considered to heal the doshas (vata, pitta and kapha) as per the ayurveda.\r\n', 45, 200, 0, 'images/khus.jpg', 'IN0001', 'OB');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `shipper_id` varchar(20) NOT NULL,
  `shipper_name` varchar(20) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`shipper_id`, `shipper_name`, `mobile_number`) VALUES
('IN01', 'FedEx', 9993275551),
('IN02', 'Bharat Courier', 9932674441),
('IN03', 'European Post', 9983647751),
('JK01', 'JK Postal Service', 9798275695),
('RJ01', 'Akashganga', 7758947785),
('UK01', 'British Courier', 7752168884),
('US01', 'US Postal Service', 8826501114);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` varchar(20) NOT NULL,
  `supplier_name` varchar(20) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `mobile_number`) VALUES
('GJ0001', 'Gujju King', 9352932548),
('GJ0002', 'Gujrat Mart', 9950852227),
('IN0001', 'Vijay Sweets', 8862549997),
('J0001', 'Chunnilal Sharbat', 9966325887),
('PB0001', 'Papa Bakery', 9856875551),
('RJ0001', 'Kishan Sweets', 7785624567),
('RJ0002', 'Ram G Mali Pvt. Ltd.', 9863458791),
('TN0001', 'Food Tamilnadu', 7698245568);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_info`
--
ALTER TABLE `billing_info`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_number`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_number` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
