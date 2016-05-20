SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `User` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO `User` (`UserId`, `UserName`, `Password`) VALUES
(1, 'shahid', 'shahid');


CREATE TABLE IF NOT EXISTS `UserComment` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(11) NOT NULL,
  `Comment` text NOT NULL,
  `PostId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `UserComment` (`UserId`, `UserName`, `Comment`, `PostId`) VALUES
(1, 'shahid', '\n			\n			\n			\n			\n		', 0),
(1, 'shahid', '\n			\n			\n			\n			\n		', 0),
(1, 'shahid', '\n			\n			\n			\n			\n		', 0),
(1, 'shahid', '\n			\n			\n			\n			\n		', 0),
(1, 'shahid', '\n			\n			\n			\n			\n		', 0),
(1, 'shahid', '\n			\n			\n			\n			\n		', 0);


CREATE TABLE IF NOT EXISTS `UserPost` (
  `UserPostId` int(11) NOT NULL,
  `UserPostContent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO `UserPost` (`UserPostId`, `UserPostContent`) VALUES
(1, 'This is test comment.');


ALTER TABLE `User`
  ADD PRIMARY KEY (`UserName`),
  ADD KEY `UserIdIndex` (`UserId`);


ALTER TABLE `UserComment`
  ADD KEY `UserIdIndexComment` (`UserId`),
  ADD KEY `PostIdIndex` (`PostId`);


ALTER TABLE `UserPost`
  ADD PRIMARY KEY (`UserPostId`);

ALTER TABLE `User`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

 ALTER TABLE `UserPost`
  MODIFY `UserPostId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
       