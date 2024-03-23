SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE TABLE `books` (
  `book_id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `publisher` varchar(300) NOT NULL,
  `edition` int(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pages` int(100) NOT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `books` (`book_id`, `user_id`, `genre`, `title`, `author`, `publisher`, `edition`, `isbn`, `pages`, `date_issued`) VALUES
(1, 10, 'Programming', 'HTML and CSS complete reference', 'Mc Graw Hill', 'Nazrul Publications', 5, 'jfklsgsdlg5qw7q87w', 800, '2018-07-10'),
(3, 0, 'Cryptography', 'Principles and practice', 'George R. R. Martin', 'Pearson', 8, 'has23dadh123427', 1200, '2018-07-11'),
(4, 5, 'Web Technologies', 'php:complete reference', 'J.K Rowling', 'Mc Graw Hill Publications', 1, '31ghf1jk24kjb3l4l1gjh', 667, '2018-07-10'),
(5, 2, 'object orinted sofware engineeriing', 'Integrated apporach to oose', 'Pankaj jalote', 'Springers Publications', 3, 'agsh32gqkj12bkl134', 798, '2018-07-10'),
(11, 0, 'Cryptography', 'network security', 'R.S agrwal', 'Pearson', 8, '2j3nsd235habh3dfkj', 2215, '2018-07-11');


CREATE TABLE `books_request` (
  `request_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `genre` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `edition` int(10) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `books_request` (`request_id`, `user_id`, `genre`, `title`, `author`, `edition`, `isbn`, `date`) VALUES
(1, 2, 'Mystery', 'Murder on the Orient Express', 'Agatha Christie', 3, '12gf3gj1jhr3jklj1ugjkb', '2018-07-10'),
(2, 5, 'Mystery', 'The Mysterious Affair at Styles', 'Agatha Christie', 3, '4zgdhdv2dfh81v31sdgj', '2018-07-10'),
(3, 4, 'Web Technologies', 'php:complete reference', 'Steven Holzer', 3, '4zgdhdv2dfh81v31sdgj', '2024-07-13');


CREATE TABLE `issue_date` (
  `issue_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `issue_date` (`issue_id`, `book_id`, `user_id`, `date`) VALUES
(1, 1, 2, '2018-07-10'),
(2, 5, 2, '2018-07-10'),
(3, 3, 2, '2018-07-10'),
(4, 4, 5, '2018-07-10'),
(5, 1, 2, '2018-07-10'),
(6, 5, 5, '2018-07-10'),
(7, 1, 5, '2018-07-10'),
(8, 4, 5, '2018-07-10'),
(9, 3, 5, '2018-07-10'),
(10, 5, 5, '2018-07-10'),
(11, 3, 5, '2018-07-10'),
(12, 3, 5, '2018-07-10'),
(13, 3, 5, '2018-07-10'),
(14, 3, 5, '2018-07-10'),
(15, 3, 4, '2018-07-10'),
(16, 1, 5, '2018-07-10'),
(17, 3, 5, '2018-07-10'),
(18, 5, 2, '2018-07-10'),
(19, 3, 4, '2018-07-11'),
(20, 7, 4, '2018-07-11'),
(21, 7, 5, '2018-07-11'),
(22, 3, 4, '2018-07-11');


CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `is_admin`, `password`, `address`, `gender`) VALUES
(1, 'Likhitha Varma', '01711568524', 'likhithav5265@gmail.com', 1, '1234', 'Bheemili,visakhapatnam', 'Female'),
(2, 'Thota Pavani', '8753884659', 'thotapavani@gmail.com', 0, '5555', 'akkayapalme,visakhapatnam', 'Female'),
(4, 'Patnala kusuma', '9241849410', 'kusuma@outlook.com', 0, '2020', 'Bheemili,visakhapatnam', 'Female'),
(5, 'Monika Singam', '723645289', 'mounika@gmail.com', 0, 'abcd', 'Gajuwaka,visakhapatnam', 'Female'),
(6, 'Kommana jayasree', '782963175', 'jayasree@gmail.com', 0, '3131', 'Bheemili,visakhapatnam', 'Female'),
(7, 'Istiak', '01932478293', 'istiakisha69@gmail.com', 0, 'istiak', 'Baily Road', 'Male'),
(8, 'Fahim Ahmed', '01726972364', 'fahim152@gmail.com', 0, 'fahimma', 'Kallayanpur', 'Male');


ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `user_id` (`user_id`);


ALTER TABLE `books_request`
  ADD PRIMARY KEY (`request_id`);


ALTER TABLE `issue_date`
  ADD PRIMARY KEY (`issue_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `books`
  MODIFY `book_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `books_request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `issue_date`
  MODIFY `issue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

