-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 07:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `contactno`) VALUES
(1, 'Bhargav', 'yadavbhargav.yb@gmail.com', '4585', 9067156942),
(2, 'Maulik', 'maulikkapupara2805@gmail.com', '1234', 1111111111);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `slidertitel` varchar(255) NOT NULL,
  `sliderimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `slidertitel`, `sliderimg`) VALUES
(1, 'banner1', 'upload/banner1.jpg'),
(2, 'banner2', 'upload/banner2.jpg'),
(3, 'banner3', 'upload/banner3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blogtitle` varchar(255) NOT NULL,
  `blogdescription` text NOT NULL,
  `blogimg` varchar(255) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blogtitle`, `blogdescription`, `blogimg`, `create_date`) VALUES
(1, 'testing purpose ', 'this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.this is  a testing purpose blog.', 'upload/blog/pani puri.webp', '2022-02-01'),
(2, 'this is second blog', 'Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.', 'upload/blog/Bhel-Puri.jpg', '2022-02-02'),
(3, 'jfsfhgsdjfhsjdfhg', 'testing testing', 'upload/blog/Dosa.jpg', '2022-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_price` varchar(255) NOT NULL,
  `pro_qty` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `user_id`, `pro_id`, `pro_img`, `pro_name`, `pro_price`, `pro_qty`, `total`) VALUES
(51, 1, 2, 'upload/product/pani puri.webp', 'panipuri', '20', '1', '20'),
(52, 3, 2, 'upload/product/pani puri.webp', 'panipuri', '20', '1', '20'),
(56, 8, 2, 'upload/product/pani puri.webp', 'panipuri', '20', '1', '20'),
(57, 0, 9, 'upload/product/bread-pakoda-.jpg', 'Bread Pakoda', '20', '1', '20'),
(58, 0, 2, 'upload/product/pani puri.webp', 'panipuri', '20', '1', '20'),
(63, 9, 3, 'upload/product/aloo-tikki.jpg', 'Aloo Tikki ', '50', '1', '50');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `proqty` int(50) NOT NULL,
  `prodimg` varchar(255) NOT NULL,
  `total` int(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `user_id` int(12) NOT NULL,
  `pro_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `phone`, `proqty`, `prodimg`, `total`, `city`, `user_id`, `pro_id`) VALUES
(1, 'Maulik', 'maulikkapupara2805@gmail.com', 'Junagadh, Bus Stand', 2147483647, 1, 'upload/product/pani puri.webp', 20, 'Junagadh', 8, 2),
(2, 'Yadav Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 1, 'upload/product/bread-pakoda-.jpg', 20, 'Junagadh', 0, 9),
(3, 'Yadav Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 1, 'upload/product/pani puri.webp', 20, 'Junagadh', 4, 2),
(6, 'Yadav Bhargav', 'maulikkapupara2805@gmail.com', 'Junagadh, Bus Stand', 7984237482, 2, 'upload/product/sev-puri.jpg', 60, 'Junagadh', 4, 4),
(7, 'Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 2, 'upload/product/sev-puri.jpg', 60, 'Junagadh', 4, 4),
(8, 'Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 2, 'upload/product/sev-puri.jpg', 60, 'Junagadh', 4, 4),
(9, 'Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 2, 'upload/product/sev-puri.jpg', 60, 'Junagadh', 4, 4),
(10, 'Bhargav', 'yadavbhargav.yb@gmail.com', 'Junagadh, Bus Stand', 9067156942, 2, 'upload/product/sev-puri.jpg', 60, 'Junagadh', 4, 4),
(11, 'Umang Adodariya', 'umangadodariya1111@gmail.com', 'Bus stand', 6359108527, 1, 'upload/product/aloo-tikki.jpg', 50, 'Keshod', 9, 3),
(12, 'Umang Adodariya', 'umangadodariya1111@gmail.com', 'Bus stand', 6359108527, 1, 'upload/product/aloo-tikki.jpg', 50, 'Keshod', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `price` int(11) NOT NULL,
  `productimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productname`, `discription`, `price`, `productimg`) VALUES
(2, 'panipuri', 'Gol gappa (also known as pani puri) is a popular bite-size chaat consisting of a hollow, crispy-fried puffed ball that is filled with potato, chickpeas, onions, spices, and flavoured water, usually tamarind or mint, and popped into one’s mouth whole.', 20, 'upload/product/pani puri.webp'),
(3, 'Aloo Tikki ', 'Aloo tikki is a popular Indian street food snack made with boiled potatoes, aromatic spices and herbs. Aloo is the Hindi name for potatoes and tikki is a patty. So aloo tikki literally translates to potato patties. These Indian style potato patties are delicious, crisp and flavorful as a good amount of spices and herbs are used. They are eaten as a snack.', 50, 'upload/product/aloo-tikki.jpg'),
(4, 'Sev Puri', 'Sev puri recipe is a canape like snack – where crispy fried flour discs are topped with flavorful condiments, veggies, herbs, ground spices and more. Spicy, sweet, tangy, savory, salty, crunchy flavors – all bursting in your mouth in each bite. Learn to make this evergreen popular chaat snack with my authentic Mumbai style recipe. ', 30, 'upload/product/sev-puri.jpg'),
(5, 'Bhel Puri ', 'Bhel Puri is a very popular Mumbai street food snack made with puffed rice, puri, boiled potatoes, onions, various chutneys, herbs, ground spices and sev (fried gram flour vermicelli). This dish is easy to make at home. It is a tasty snack having a lot of flavors and textures – sour, tangy, crispy, sweet, salty, crunchy. This bhel recipe comes together in under 45 minutes with three real quick chutney recipes.', 40, 'upload/product/Bhel-Puri.jpg'),
(6, 'Samosa', 'A samosa is a fried or baked pastry with a savory filling, including ingredients such as spiced potatoes, onions, peas, chicken and/or other meats. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region', 20, 'upload/product/somaso.jpg'),
(7, 'Vada Pav', 'Vada pav, alternatively spelt wada pao, ( listen) is a vegetarian fast food dish native to the state of Maharashtra. The dish consists of a deep fried potato dumpling placed inside a bread bun (pav) sliced almost in half through the middle. It is generally accompanied with one or more chutneys and a green chili pepper.', 30, 'upload/product/Vada Pav.jpg'),
(8, 'Dabeli', 'Dabeli, kutchi dabeli or double roti is a popular snack food of India, originating in the Kutch or Kachchh region of Gujarat. It is a sweet snack made by mixing boiled potatoes with a special dabeli masala, putting the mixture in a ladi pav (burger bun), and serving it with chutneys made from tamarind, date, garlic, red chilies and other ingredients. It is garnished with pomegranate and roasted peanuts.', 30, 'upload/product/Dabeli.jpg'),
(9, 'Bread Pakoda', 'Bread pakoda is an Indian fried snack (pakoda or fritter). It is also known as bread bhaji . A common street food, it is made from bread slices, gram flour, and spices among other ingredients.', 20, 'upload/product/bread-pakoda-.jpg'),
(10, 'Pav Bhaji ', 'Pav bhaji (Marathi : पाव भाजी) is a fast food dish from India consisting of a thick vegetable curry (bhaji) served with a soft bread roll (pav). Its origins are in the state of Maharashtra.', 80, 'upload/product/Pav-Bhaji.jpg'),
(11, 'Dosa ', 'A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. ... Its main ingredients are rice and black gram, ground together in a fine, smooth batter with a dash of salt, then fermented.', 80, 'upload/product/Dosa.jpg'),
(12, 'Manchurian ', 'Manchurian is a class of Indian Chinese dishes made by roughly chopping and deep-frying ingredient such as chicken, cauliflower (gobi), prawns, fish, mutton, and paneer, and then sautéeing it in a sauce flavored with soy sauce. ... It has become a staple of Indian Chinese cuisine.', 120, 'upload/product/Manchurian.jpeg'),
(13, 'Burger ', 'A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. ... A hamburger topped with cheese is called a cheeseburger.', 50, 'upload/product/Burger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactno` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `contactno`) VALUES
(4, 'Bhargav', 'yadavbhargav.yb@gmail.com', '4585', 9067156942),
(8, 'Maulik', 'maulikkapupara2805@gmail.com', '111111', 7984237482),
(9, 'Umang Adodariya', 'umangadodariya1111@gmail.com', '123456', 6359108527);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
