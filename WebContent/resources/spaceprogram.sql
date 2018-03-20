-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2014 at 11:54 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spaceprogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `shuttlemissions`
--

DROP DATABASE IF EXISTS spaceprogram;
CREATE DATABASE IF NOT EXISTS spaceprogram;
USE spaceprogram;

CREATE TABLE IF NOT EXISTS `shuttlemissions` (
  `id` int(5) NOT NULL,
  `orbitor` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `launch` varchar(40) NOT NULL,
  `landing` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shuttlemissions`
--

INSERT INTO `shuttlemissions` (`id`, `orbitor`, `name`, `launch`, `landing`) VALUES
(1, 'Atlantis', 'STS-135', '11:29 a.m. EDT - July 8, 2011', '5:57 a.m. EDT - July 21, 2011'),
(2, 'Endeavor', 'STS-134', '8:56 a.m. EDT - May 16, 2011', '2:34 a.m. EDT - June 1, 2011'),
(3, 'Discovery', 'STS-133', '4:53:24 p.m. EST - Feb. 24, 2011', '11:57:17 a.m. EST - March 9, 2011'),
(4, 'Columbia', 'STS-107', 'January 16, 2003, 10:39 a.m. EST', 'Vehicle and crew lost on Feb. 1, 2003 '),
(5, 'Challenger', 'STS-51L', 'Jan. 28, 1986, 11:38:00 a.m. EST', 'Vehicle and crew lost 73 seconds after liftoff'),
(6, 'Atlantis', 'STS-132', '2:20 p.m. EDT - May 14, 2010', '8:48 a.m. EDT - May 26, 2010'),
(7, 'Discovery', 'STS-131', '6:21 a.m. EDT - April 5, 2010', '9:08 a.m. EDT - April 20, 2010'),
(8, 'Endeavor', 'STS-130', '4:14 a.m. EST - Feb. 8, 2010', '10:20 p.m. EST - Feb. 21, 2010'),
(9, 'Atlantis', 'STS-129', '2:28 p.m. EST - Nov. 16, 2009', '9:44 a.m. EST - Nov. 27, 2009');

-- --------------------------------------------------------

--
-- Table structure for table `shuttles`
--

CREATE TABLE IF NOT EXISTS `shuttles` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image_thumb` varchar(30) NOT NULL,
  `image_main` varchar(30) NOT NULL,
  `image_caption` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shuttles`
--

INSERT INTO `shuttles` (`id`, `name`, `image_thumb`, `image_main`, `image_caption`, `description`) VALUES
(1, 'Columbia', 'columbia_thumb.jpg', 'columbia_main.jpg', 'Columbia Launching during STS-1', 'Columbia was the first shuttle to reach space, in 1981. Columbia carried dozens of astronauts into space during the next two decades, reaching several milestones. Columbia also underwent upgrades as technology advanced. However, the shuttle and a seven-member crew were lost over Texas when Columbia burned up during re-entry on Feb. 1, 2003. Columbia''s loss prompted NASA to do extra safety checks in orbit for all future missions.\r\n\r\nColumbia was destroyed at about 0900 EST on February 1, 2003 while re-entering the atmosphere after a 16-day scientific mission. The Columbia Accident Investigation Board determined that a hole was punctured in the leading edge on one of Columbia''s wings, made of a carbon composite. The hole had formed when a piece of insulating foam from the external fuel tank peeled off during the launch 16 days earlier and struck the shuttle''s wing. During the intense heat of re-entry, hot gases penetrated the interior of the wing, destroying the support structure and causing the rest of the shuttle to break apart. The nearly 84,000 pieces of collected debris of the vessel are stored in a 16th floor office suite in the Vehicle Assembly Building at the Kennedy Space Center. The collection was opened to the media once and has since been open only to researchers.'),
(2, 'Atlantis', 'atlantis_thumb.jpg', 'atlantis_main.jpg', 'Atlantis clears the tower as it launches on mission STS-46', 'NASA''s fourth space-rated space shuttle, OV-104 "Atlantis," was named after the two-masted boat that served as the primary research vessel for the Woods Hole Oceanographic Institute in Massachusetts from 1930 to 1966. Construction of the orbiter Atlantis began on March 3, 1980. The new orbiter arrived at NASA''s Kennedy Space Center in Florida on April 9, 1985, and over the next seven months was prepared for her maiden voyage.On Oct. 3, 1985, Atlantis launched on her first space flight, STS 51-J, with a classified payload for the U.S. Department of Defense. The vehicle went on to carry four more DOD payloads on later missions.On Oct. 3, 1985, Atlantis launched on her first space flight, STS 51-J, with a classified payload for the U.S. Department of Defense. The vehicle went on to carry four more DOD payloads on later missions.In recent years, Atlantis has delivered several vital components to the International Space Station, including the U.S. laboratory module, Destiny, as well as the Joint Airlock Quest and multiple sections of the Integrated Truss structure that makes up the station''s backbone.'),
(3, 'Challenger', 'challenger_thumb.jpg', 'challenger_main.jpg', 'Challenger during mission STS-7', 'Space Shuttle orbiter Challenger was named after the British Naval research vessel HMS Challenger that sailed the Atlantic and Pacific oceans during the 1870s. The Apollo 17 lunar module also carried the name of Challenger. Like its historic predecessors, Challenger and her crews made significant scientific contributions in the spirit of exploration.\r\nChallenger launched on her maiden voyage, STS-6, on April 4, 1983. That mission saw the first spacewalk of the Space Shuttle program, as well as the deployment of the first satellite in the Tracking and Data Relay System constellation. Challenger''s service to America''s space program ended in tragedy on Jan. 28, 1986. Just 73 seconds into mission STS 51-L, a booster failure caused an explosion that resulted in the loss of seven astronauts, as well as the vehicle.'),
(4, 'Discovery', 'discovery_thumb.jpg', 'discovery_main.jpg', 'Discovery lifts off Pad B at the Kennedy Space Center on September 12, 1993, to begin STS-51', 'Discovery (OV-103) was NASA''s third space shuttle orbiter to join the fleet, arriving for the first time at the Kennedy Space Center in Florida in November 1983.After checkout and processing, it was launched on Aug. 30, 1984, for its first mission, 41-D, to deploy three communications satellites. Since that inaugural flight, Discovery has completed more than 30 successful missions, surpassing the number of flights made by any other orbiter in NASA''s fleet. Just like all of the orbiters, it has undergone some major modifications over the years. The most recent began in 2002 and was the first carried out at Kennedy. It provided 99 upgrades and 88 special tests, including new changes to make it safer for flight. Discovery carried the Hubble Space Telescope into space during mission STS-31 in April 1990, and provided both the second and third Hubble servicing missions (STS-82 in February 1997 and STS-103 in December 1999). \r\nDuring its many successful trips to space, Discovery has carried satellites aloft, ferried modules and crew to the International Space Station, and provided the setting for countless scientific experiments.\r\n'),
(5, 'Enterprise', 'enterprise_thumb.jpg', 'enterprise_main.jpg', 'Shuttle Enterprise at Center of Museum''s Space Hangar', 'On September 17, 1976, the first orbiter spacecraft, Enterprise, was rolled out. A total of thirteen test flights were performed. The Enterprise was built as a test vehicle and not equipped for space flight.\r\n\r\nFive captive flights, with the Enterprise perched atop a 747 jumbo jet with no crew and unpowered, were conducted to test the structural integrity of the craft. Three crewed captive flights followed with the crew operating the flight control systems in preparation for the first orbiter free flight. Finally, five free flights occurred with an astronaut crew separating the orbiter from the 747 shuttle carrier and maneuvering to a landing at Edwards Air Force Base.\r\nAfter numerous tests across the United States, the Enterprise was ferried across the Atlantic for several air shows across Europe. Finally, on November 18, 1985, the Enterprise was ferried from Kennedy Space Center to Washington, D.C. and became the property of the Smithsonian Institution.\r\n\r\nThe second orbiter, Columbia, was the first to fly into space. Perched atop the 747 shuttle carrier, Columbia arrived at Kennedy Space Center from Dryden Flight Research Facility on March 25, 1979 to be readied for the space shuttle''s first flight on April 12, 1981.'),
(6, 'Endeavor', 'endeavor_thumb.jpg', 'endeavor_main.jpg', 'Space Shuttle Endeavour blazes into the night sky on mission STS-113, the 19th for Endeavour.', 'Authorization to construct the fifth Space Shuttle orbiter as a replacement for Challenger was granted by Congress on August 1, 1987. Endeavour (OV-105) first arrived at KSC''s Shuttle Landing Facility May 7,1991, atop NASA''s new Shuttle Carrier Aircraft (NASA 911). The space agency''s newest orbiter  began flight operations in 1992 on mission STS-49, the Intelsat VI repair mission.\r\nOne of Endeavour''s primary assignments was to capture INTELSAT VI, an orbiting, but not functioning, communications satellite, and replace its rocket motor. Unfortunately, the Space Shuttle wasn''t designed to retrieve the satellite, which created many repair challenges.\r\n\r\nThe project sparked public interest in the mission and NASA received a deluge of suggestions on possible ways for the crew to grab onto the satellite. It took three attempts to capture the satellite for repairs to be made. An unprecedented three-person spacewalk took place after the procedure was evaluated by the astronauts and ground team.\r\nOne of Endeavour''s primary assignments was to capture INTELSAT VI, an orbiting, but not functioning, communications satellite, and replace its rocket motor. Unfortunately, the Space Shuttle wasn''t designed to retrieve the satellite, which created many repair challenges.\r\n\r\nThe project sparked public interest in the mission and NASA received a deluge of suggestions on possible ways for the crew to grab onto the satellite. It took three attempts to capture the satellite for repairs to be made. An unprecedented three-person spacewalk took place after the procedure was evaluated by the astronauts and ground team');
