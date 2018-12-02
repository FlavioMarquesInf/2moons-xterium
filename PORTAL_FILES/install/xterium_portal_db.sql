-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 28 nov. 2018 à 18:16
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `admin_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE `emails` (
  `email` varchar(500) NOT NULL,
  `username` text NOT NULL,
  `language` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%changelogs`
--

CREATE TABLE `%PREFIX%changelogs` (
  `revId` int(11) UNSIGNED NOT NULL,
  `userName` varchar(128) CHARACTER SET utf8 NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8 NOT NULL,
  `universe` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%config`
--

CREATE TABLE `%PREFIX%config` (
  `uni` int(11) NOT NULL,
  `VERSION` varchar(8) NOT NULL,
  `sql_revision` int(11) NOT NULL DEFAULT '0',
  `users_amount` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uni_name` varchar(30) NOT NULL,
  `game_name` varchar(30) NOT NULL,
  `game_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `close_reason` text NOT NULL,
  `forum_url` varchar(128) NOT NULL DEFAULT 'http://2moons.cc',
  `adm_attack` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `debug` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `reg_closed` tinyint(1) NOT NULL DEFAULT '0',
  `OverviewNewsFrame` tinyint(1) NOT NULL DEFAULT '1',
  `OverviewNewsText` text NOT NULL,
  `mail_active` tinyint(1) NOT NULL DEFAULT '0',
  `mail_use` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_host` varchar(64) NOT NULL DEFAULT '',
  `smtp_port` smallint(5) NOT NULL DEFAULT '0',
  `smtp_user` varchar(64) NOT NULL DEFAULT '',
  `smtp_pass` varchar(32) NOT NULL DEFAULT '',
  `smtp_ssl` enum('','ssl','tls') NOT NULL DEFAULT '',
  `smtp_sendmail` varchar(64) NOT NULL DEFAULT '',
  `smail_path` varchar(30) NOT NULL DEFAULT '/usr/sbin/sendmail',
  `user_valid` tinyint(1) NOT NULL DEFAULT '0',
  `moduls` varchar(100) NOT NULL DEFAULT '',
  `ttf_file` varchar(128) NOT NULL DEFAULT 'styles/resource/fonts/DroidSansMono.ttf',
  `del_oldstuff` tinyint(3) UNSIGNED NOT NULL DEFAULT '3',
  `del_user_manually` tinyint(3) UNSIGNED NOT NULL DEFAULT '7',
  `del_user_automatic` tinyint(3) UNSIGNED NOT NULL DEFAULT '30',
  `del_user_sendmail` tinyint(3) UNSIGNED NOT NULL DEFAULT '21',
  `sendmail_inactive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `silo_factor` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `timezone` varchar(32) NOT NULL DEFAULT 'Europe/London',
  `dst` enum('0','1','2') NOT NULL DEFAULT '2',
  `energySpeed` smallint(6) NOT NULL DEFAULT '1',
  `disclamerAddress` text NOT NULL,
  `disclamerPhone` text NOT NULL,
  `disclamerMail` text NOT NULL,
  `disclamerNotice` text NOT NULL,
  `darkmatter_reduc` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cronInstant` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cronInstantStep` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `cronBot` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `usersOnline` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `usersOnline2` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `domain_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `%PREFIX%config`
--

INSERT INTO `%PREFIX%config` (`uni`, `VERSION`, `sql_revision`, `users_amount`, `uni_name`, `game_name`, `game_disable`, `close_reason`, `forum_url`, `adm_attack`, `debug`, `lang`, `reg_closed`, `OverviewNewsFrame`, `OverviewNewsText`, `mail_active`, `mail_use`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `smtp_ssl`, `smtp_sendmail`, `smail_path`, `user_valid`, `moduls`, `ttf_file`, `del_oldstuff`, `del_user_manually`, `del_user_automatic`, `del_user_sendmail`, `sendmail_inactive`, `silo_factor`, `timezone`, `dst`, `energySpeed`, `disclamerAddress`, `disclamerPhone`, `disclamerMail`, `disclamerNotice`, `darkmatter_reduc`, `cronInstant`, `cronInstantStep`, `cronBot`, `usersOnline`, `usersOnline2`, `domain_name`) VALUES
(1, '1.7.git', 0, 2887, '#WOG', 'War Of Galaxyz', 1, '', 'https://forum.warofgalaxyz.com', 1, 0, 'en', 0, 1, 'We are activly looking for membres being able to translate corectly some parts of the game in their language (deutsche, spanish, turkish, polish, portugues (currently closed))\r\n<font color=\"green\">We are looking for beta testers speaking english and one of the other ingame languages, contact me via skype @ xterium.support </font>', 1, 0, 'mail.warofgalaxyz.com', 465, 'info@warofgalaxyz.com', 'aOqj$29HG3ipangk', '', 'info@warofgalaxyz.com', '/usr/sbin/sendmail', 0, '1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1', 'styles/resource/fonts/DroidSansMono.ttf', 3, 7, 30, 21, 1, 1, 'Europe/Brussels', '0', 1, '', '', '', '', 0, 1466465402, 1, 1466544301, 11, 12, '%URL%');

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%fakeemails`
--

CREATE TABLE `%PREFIX%fakeemails` (
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%ip_multimod`
--

CREATE TABLE `%PREFIX%ip_multimod` (
  `suspectId` int(11) NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `ipadress` varchar(40) NOT NULL DEFAULT '',
  `resolution` varchar(40) NOT NULL DEFAULT '',
  `opsystem` varchar(500) CHARACTER SET utf16 NOT NULL DEFAULT '',
  `isp` varchar(500) DEFAULT NULL,
  `proxies` varchar(500) DEFAULT NULL,
  `cookies` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%lostpassword`
--

CREATE TABLE `%PREFIX%lostpassword` (
  `userID` int(10) UNSIGNED NOT NULL,
  `key` varchar(32) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `hasChanged` tinyint(1) NOT NULL DEFAULT '0',
  `fromIP` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%media_post`
--

CREATE TABLE `%PREFIX%media_post` (
  `mediaId` int(11) UNSIGNED NOT NULL,
  `mediaTitle` varchar(255) DEFAULT NULL,
  `mediaLocation` varchar(255) DEFAULT NULL,
  `mediaDescription` varchar(255) DEFAULT NULL,
  `mediaLocation2` varchar(255) DEFAULT NULL,
  `imageBlock` varchar(255) DEFAULT NULL,
  `mediaType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%news`
--

CREATE TABLE `%PREFIX%news` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` varchar(64) NOT NULL,
  `date` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `top_news` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%session`
--

CREATE TABLE `%PREFIX%session` (
  `sessionID` varchar(32) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `userIP` varchar(40) NOT NULL,
  `lastonline` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%users`
--

CREATE TABLE `%PREFIX%users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `email_2` varchar(64) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT 'de',
  `authattack` tinyint(1) NOT NULL DEFAULT '0',
  `authlevel` tinyint(1) NOT NULL DEFAULT '0',
  `chat_oper` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `gm` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `id_planet` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `universe` tinyint(3) UNSIGNED NOT NULL,
  `galaxy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `system` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `planet` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `encodage` varchar(32) NOT NULL DEFAULT '',
  `onlinetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastip` varchar(40) NOT NULL DEFAULT '',
  `ip_at_reg` varchar(40) NOT NULL DEFAULT '',
  `register_time` int(11) NOT NULL DEFAULT '0',
  `dpath` varchar(20) NOT NULL DEFAULT 'gow',
  `timezone` varchar(32) NOT NULL DEFAULT 'Europe/London',
  `uctime` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ref_bonus` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `setmail` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `isActivared` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `isMailSend` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `validationKey` varchar(32) DEFAULT NULL,
  `mailListed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fbToken` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `deviceId` varchar(500) DEFAULT NULL,
  `accessBeta` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isMailVerified` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `validationMailAdress` varchar(55) DEFAULT NULL,
  `isVerifySend` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `facebookToken` varchar(1000) DEFAULT NULL,
  `facebookId` double(50,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `%PREFIX%users_valid`
--

CREATE TABLE `%PREFIX%users_valid` (
  `validationID` int(11) UNSIGNED NOT NULL,
  `userName` varchar(64) NOT NULL,
  `validationKey` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(64) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `language` varchar(3) NOT NULL,
  `universe` tinyint(3) UNSIGNED NOT NULL,
  `referralID` int(11) DEFAULT NULL,
  `externalAuthUID` varchar(128) DEFAULT NULL,
  `externalAuthMethod` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emails`
--
ALTER TABLE `emails`
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `%PREFIX%config`
--
ALTER TABLE `%PREFIX%config`
  ADD PRIMARY KEY (`uni`);

--
-- Index pour la table `%PREFIX%fakeemails`
--
ALTER TABLE `%PREFIX%fakeemails`
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `%PREFIX%ip_multimod`
--
ALTER TABLE `%PREFIX%ip_multimod`
  ADD UNIQUE KEY `suspectId` (`suspectId`);

--
-- Index pour la table `%PREFIX%session`
--
ALTER TABLE `%PREFIX%session`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `sessionID` (`sessionID`);

--
-- Index pour la table `%PREFIX%users`
--
ALTER TABLE `%PREFIX%users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authlevel` (`authlevel`),
  ADD KEY `universe` (`universe`,`username`,`password`,`authlevel`);

--
-- Index pour la table `%PREFIX%users_valid`
--
ALTER TABLE `%PREFIX%users_valid`
  ADD PRIMARY KEY (`validationID`,`validationKey`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `%PREFIX%config`
--
ALTER TABLE `%PREFIX%config`
  MODIFY `uni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `%PREFIX%ip_multimod`
--
ALTER TABLE `%PREFIX%ip_multimod`
  MODIFY `suspectId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `%PREFIX%users`
--
ALTER TABLE `%PREFIX%users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `%PREFIX%users_valid`
--
ALTER TABLE `%PREFIX%users_valid`
  MODIFY `validationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
