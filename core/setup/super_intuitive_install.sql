-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 01:53 AM
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
-- Database: `super_intuitive`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `statusreason` enum('live','test','dev') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dev',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-order` int(11) NOT NULL,
  `live-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live-style` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live-html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live-modified` datetime NOT NULL,
  `test-order` int(11) NOT NULL,
  `test-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `test-script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test-style` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test-html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test-modified` datetime NOT NULL,
  `dev-order` int(11) NOT NULL,
  `dev-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dev-script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dev-style` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dev-html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dev-modified` datetime NOT NULL,
  `rollback-order` int(11) NOT NULL,
  `rollback-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rollback-script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rollback-style` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rollback-html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rollback-modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"blocks", "SN":"block"}';

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `status`, `statusreason`, `createdon`, `modifiedon`, `entity_id`, `name`, `live-order`, `live-options`, `live-script`, `live-style`, `live-html`, `live-modified`, `test-order`, `test-options`, `test-script`, `test-style`, `test-html`, `test-modified`, `dev-order`, `dev-options`, `dev-script`, `dev-style`, `dev-html`, `dev-modified`, `rollback-order`, `rollback-options`, `rollback-script`, `rollback-style`, `rollback-html`, `rollback-modified`) VALUES
(_SI_GUID_0, 'active', 'live', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Header', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1001px\"}}', 'console.log(\'Header Script Load Succeeded\');\n\n\n', '#mybox {\n	width:147px;\n}\n', '<div  id=\"div_beachbackground\" style=\"width: 100%; height: inherit; overflow: hidden; position: static; top: 0px; left: 118px; background-color: rgb(145, 221, 197); color: rgb(68, 138, 70); background-image: url(&quot;media/images/background-sunset.jpg&quot;); background-size: cover;\"> <img  id=\"img_mainlogo\" style=\"width: 313px; height: 155px; resize: both; overflow: hidden; position: absolute; left: 61px; background-size: contain; user-select: none; top: 6px;\" src=\"media/images/logo.png\" onclick=\"window.location.href = &quot;/&quot;;\"></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1001px\"}}', 'console.log(\'Header Script Load Succeeded\');\n\n\n', '#mybox {\n	width:147px;\n}\n', '<div  id=\"div_beachbackground\" style=\"width: 100%; height: inherit; overflow: hidden; position: static; top: 0px; left: 118px; background-color: rgb(145, 221, 197); color: rgb(68, 138, 70); background-image: url(&quot;media/images/background-sunset.jpg&quot;); background-size: cover;\"> <img  id=\"img_mainlogo\" style=\"width: 313px; height: 155px; resize: both; overflow: hidden; position: absolute; left: 61px; background-size: contain; user-select: none; top: 6px;\" src=\"media/images/logo.png\" onclick=\"window.location.href = &quot;/&quot;;\"></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1001px\"}}', 'console.log(\'Header Script Load Succeeded\');\n\n\n', '#mybox {\n	width:147px;\n}\n', '<div class=\"si-editable-element\" id=\"div_beachbackground\" style=\"width: 100%; height: inherit; overflow: hidden; position: static; top: 0px; left: 118px; background-color: rgb(145, 221, 197); color: rgb(68, 138, 70); background-image: url(&quot;media/images/background-sunset.jpg&quot;); background-size: cover;\"> <img class=\"si-editable-element\" id=\"img_mainlogo\" style=\"width: 313px; height: 155px; resize: both; overflow: hidden; position: absolute; left: 61px; background-size: contain; user-select: none; top: 6px;\" src=\"media/images/logo.png\" onclick=\"window.location.href = &quot;/&quot;;\"></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1001px\"}}', 'console.log(\'Header Script Load Succeeded\');\n\n\n', '#mybox {\n	width:147px;\n}\n', '<div  id=\"div_beachbackground\" style=\"width: 100%; height: inherit; overflow: hidden; position: static; top: 0px; left: 118px; background-color: rgb(145, 221, 197); color: rgb(68, 138, 70); background-image: url(&quot;media/images/background-sunset.jpg&quot;); background-size: cover;\"> <img  id=\"img_mainlogo\" style=\"width: 313px; height: 155px; resize: both; overflow: hidden; position: absolute; left: 61px; background-size: contain; user-select: none; top: 6px;\" src=\"media/images/logo.png\" onclick=\"window.location.href = &quot;/&quot;;\"></div>', '0000-00-00 00:00:00'),
(_SI_GUID_2, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Footer', 0, '', 'console.log(\'Footer loaded\');', '.Footer { }', '<!-- Footer block --><span id=\"span_I6bWnud\"  style=\"position: absolute; top: 65px; color: rgb(209, 213, 87); left: 75%;\" data-m-off-x=\"23\" data-m-off-y=\"12\" title=\"Change me to your company\">©2020 Super Intuitive</span>', '0000-00-00 00:00:00', 0, '', 'console.log(\'Footer loaded\');', '.Footer { }', '<!-- Footer block --><span id=\"span_I6bWnud\"  style=\"position: absolute; top: 65px; color: rgb(209, 213, 87); left: 75%;\" data-m-off-x=\"23\" data-m-off-y=\"12\" title=\"Change me to your company\">©2020 Super Intuitive</span>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\"}}', 'console.log(\'Footer loaded\');', '.Footer { }', '<!-- Footer block --><span id=\"span_I6bWnud\" class=\"si-editable-element\" style=\"position: absolute; top: 65px; color: rgb(209, 213, 87); left: 75%;\" data-m-off-x=\"23\" data-m-off-y=\"12\" title=\"Change me to your company\">©2020 Super Intuitive</span>', '0000-00-00 00:00:00', 0, '', 'console.log(\'Footer loaded\');', '.Footer { }', '<!-- Footer block --><span id=\"span_I6bWnud\"  style=\"position: absolute; top: 65px; color: rgb(209, 213, 87); left: 75%;\" data-m-off-x=\"23\" data-m-off-y=\"12\" title=\"Change me to your company\">©2020 Super Intuitive</span>', '0000-00-00 00:00:00'),
(_SI_GUID_3, 'active', 'live', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Login', 1, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"80%\",\"top\":\"0px\",\"width\":\"360px\",\"height\":\"120px\"}}', '\nLogin={ 	\n	Init:function(){\n		if(typeof LoggedInUser != \"undefined\"){\n			document.getElementById(\'si_loggedinname\').innerHTML = \"Logged In: \"+LoggedInUser.name;\n			document.getElementById(\'si_loginbox\').style.display = \'none\';\n			document.getElementById(\'si_loggedinbox\').style.display = \'block\';\n			\n		}else{\n			document.getElementById(\'si_loggedinbox\').style.display = \'none\';\n			document.getElementById(\'si_loginbox\').style.display = \'block\';\n		}	\n	},\n	Attempt:function(){\n 		let email = document.getElementById(\'si_login_email\').value; \n		let password = document.getElementById(\'si_login_password\').value; \n        let rememberme = document.getElementById(\'si_login_remember_me\').checked; \n		SI.Tools.Ajax({Data:{KEY:\'LoginAttempt\',email:email, password:password,rememberme:rememberme}}); \n	},\n	RememberMe:function(self){\n		if(self.checked == true){\n			//let expire = new Date(new Date().setFullYear(new Date().getFullYear() + 1))\n			//document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n		else{\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + -1))\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n	},\n	Logout:function(){\n\n		SI.Tools.Ajax({Data:{KEY:\'Logout\'}}); \n	}	\n}\nLogin.Init();\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '#si_loginbox {\n	width:400px;\n	height:200px;\n}\n#si_loggedinbox {\n	width:400px;\n	height:200px;\n}\n\n\n\n', '<div id=\"si_loginbox\"  style=\"user-select: none; height: 100%; padding-left: 26px; padding-top: 1px; display: none;\" data-boxshadow=\"\">\n<form id=\"form_login\"  style=\"\">\n	<h3  id=\"h3_gDw9Iad\" data-boxshadow=\"\" style=\"color: rgb(255, 255, 136); font-variant: small-caps;\">Login</h3>\n	<span  id=\"span_kTrkNtL\" data-boxshadow=\"\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n\">email</span>\n	<input type=\"email\" id=\"si_login_email\"  style=\"margin-left: 28px; background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"si_loginspace01\">\n	<span  id=\"span_2onGXZx\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n  \n\">password</span>\n	<input type=\"password\"  id=\"si_login_password\" style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"br_pxC1By3\">\n	<span  id=\"span_3IldTVD\" style=\"\n    font-variant: small-caps;\n    color: #FFFF88;\n\">remember me</span>\n	<input type=\"checkbox\" onclick=\"Login.RememberMe(this);\"  id=\"si_login_remember_me\" style=\"\">\n	<button onclick=\"Login.Attempt(this);\"  id=\"button_LgnO8ic\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Login</button>\n<a id=\"a_forgot\"  style=\"position: static; color: rgb(2, 2, 204); text-decoration: none; margin-left: 22px;\" data-m-off-x=\"1\" data-m-off-y=\"6\" href=\"/forgot\">forgot</a></form>\n</div>\n<div id=\"si_loggedinbox\"  style=\"display: block;\" data-boxshadow=\"\">\n	<span  id=\"si_loggedinname\" style=\"margin-right: 10px; user-select: none; font-variant: small-caps; color: rgb(255, 255, 128);\" data-boxshadow=\"\">Logged In: admin</span>\n	<button onclick=\"Login.Logout(this);\"  id=\"si_logoutbutton\" data-boxshadow=\"\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Logout</button>\n</div>', '0000-00-00 00:00:00', 1, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"80%\",\"top\":\"0px\",\"width\":\"360px\",\"height\":\"120px\"}}', '\nLogin={ 	\n	Init:function(){\n		if(typeof LoggedInUser != \"undefined\"){\n			document.getElementById(\'si_loggedinname\').innerHTML = \"Logged In: \"+LoggedInUser.name;\n			document.getElementById(\'si_loginbox\').style.display = \'none\';\n			document.getElementById(\'si_loggedinbox\').style.display = \'block\';\n			\n		}else{\n			document.getElementById(\'si_loggedinbox\').style.display = \'none\';\n			document.getElementById(\'si_loginbox\').style.display = \'block\';\n		}	\n	},\n	Attempt:function(){\n 		let email = document.getElementById(\'si_login_email\').value; \n		let password = document.getElementById(\'si_login_password\').value; \n        let rememberme = document.getElementById(\'si_login_remember_me\').checked; \n		SI.Tools.Ajax({Data:{KEY:\'LoginAttempt\',email:email, password:password,rememberme:rememberme}}); \n	},\n	RememberMe:function(self){\n		if(self.checked == true){\n			//let expire = new Date(new Date().setFullYear(new Date().getFullYear() + 1))\n			//document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n		else{\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + -1))\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n	},\n	Logout:function(){\n\n		SI.Tools.Ajax({Data:{KEY:\'Logout\'}}); \n	}	\n}\nLogin.Init();\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '#si_loginbox {\n	width:400px;\n	height:200px;\n}\n#si_loggedinbox {\n	width:400px;\n	height:200px;\n}\n\n\n\n', '<div id=\"si_loginbox\"  style=\"user-select: none; height: 100%; padding-left: 26px; padding-top: 1px; display: none;\" data-boxshadow=\"\">\n<form id=\"form_login\"  style=\"\">\n	<h3  id=\"h3_gDw9Iad\" data-boxshadow=\"\" style=\"color: rgb(255, 255, 136); font-variant: small-caps;\">Login</h3>\n	<span  id=\"span_kTrkNtL\" data-boxshadow=\"\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n\">email</span>\n	<input type=\"email\" id=\"si_login_email\"  style=\"margin-left: 28px; background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"si_loginspace01\">\n	<span  id=\"span_2onGXZx\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n  \n\">password</span>\n	<input type=\"password\"  id=\"si_login_password\" style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"br_pxC1By3\">\n	<span  id=\"span_3IldTVD\" style=\"\n    font-variant: small-caps;\n    color: #FFFF88;\n\">remember me</span>\n	<input type=\"checkbox\" onclick=\"Login.RememberMe(this);\"  id=\"si_login_remember_me\" style=\"\">\n	<button onclick=\"Login.Attempt(this);\"  id=\"button_LgnO8ic\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Login</button>\n<a id=\"a_forgot\"  style=\"position: static; color: rgb(2, 2, 204); text-decoration: none; margin-left: 22px;\" data-m-off-x=\"1\" data-m-off-y=\"6\" href=\"/forgot\">forgot</a></form>\n</div>\n<div id=\"si_loggedinbox\"  style=\"display: block;\" data-boxshadow=\"\">\n	<span  id=\"si_loggedinname\" style=\"margin-right: 10px; user-select: none; font-variant: small-caps; color: rgb(255, 255, 128);\" data-boxshadow=\"\">Logged In: admin</span>\n	<button onclick=\"Login.Logout(this);\"  id=\"si_logoutbutton\" data-boxshadow=\"\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Logout</button>\n</div>', '0000-00-00 00:00:00', 2, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"80%\",\"top\":\"0px\",\"width\":\"360px\",\"height\":\"120px\"}}', '\nLogin={ 	\n	Init:function(){\n		if(typeof LoggedInUser != \"undefined\"){\n			document.getElementById(\'si_loggedinname\').innerHTML = \"Logged In: \"+LoggedInUser.name;\n			document.getElementById(\'si_loginbox\').style.display = \'none\';\n			document.getElementById(\'si_loggedinbox\').style.display = \'block\';\n			\n		}else{\n			document.getElementById(\'si_loggedinbox\').style.display = \'none\';\n			document.getElementById(\'si_loginbox\').style.display = \'block\';\n		}	\n	},\n	Attempt:function(){\n 		let email = document.getElementById(\'si_login_email\').value; \n		let password = document.getElementById(\'si_login_password\').value; \n        let rememberme = document.getElementById(\'si_login_remember_me\').checked; \n		SI.Tools.Ajax({Data:{KEY:\'LoginAttempt\',email:email, password:password,rememberme:rememberme}}); \n	},\n	RememberMe:function(self){\n		if(self.checked == true){\n			//let expire = new Date(new Date().setFullYear(new Date().getFullYear() + 1))\n			//document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n		else{\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + -1))\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n	},\n	Logout:function(){\n\n		SI.Tools.Ajax({Data:{KEY:\'Logout\'}}); \n	}	\n}\nLogin.Init();\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '#si_loginbox {\n	width:400px;\n	height:200px;\n}\n#si_loggedinbox {\n	width:400px;\n	height:200px;\n}\n\n\n\n', '<div id=\"si_loginbox\" class=\"si-editable-element\" style=\"user-select: none; height: 100%; padding-left: 26px; padding-top: 1px; display: none;\" data-boxshadow=\"\">\n<form id=\"form_login\" class=\"si-editable-element\" style=\"\">\n	<h3 class=\"si-editable-element\" id=\"h3_gDw9Iad\" data-boxshadow=\"\" style=\"color: rgb(255, 255, 136); font-variant: small-caps;\">Login</h3>\n	<span class=\"si-editable-element\" id=\"span_kTrkNtL\" data-boxshadow=\"\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n\">email</span>\n	<input type=\"email\" id=\"si_login_email\" class=\"si-editable-element\" style=\"margin-left: 28px; background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br class=\"si-editable-element\" id=\"si_loginspace01\">\n	<span class=\"si-editable-element\" id=\"span_2onGXZx\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n  \n\">password</span>\n	<input type=\"password\" class=\"si-editable-element\" id=\"si_login_password\" style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br class=\"si-editable-element\" id=\"br_pxC1By3\">\n	<span class=\"si-editable-element\" id=\"span_3IldTVD\" style=\"\n    font-variant: small-caps;\n    color: #FFFF88;\n\">remember me</span>\n	<input type=\"checkbox\" onclick=\"Login.RememberMe(this);\" class=\"si-editable-element\" id=\"si_login_remember_me\" style=\"\">\n	<button onclick=\"Login.Attempt(this);\" class=\"si-editable-element\" id=\"button_LgnO8ic\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Login</button>\n<a id=\"a_forgot\" class=\"si-editable-element\" style=\"position: static; color: rgb(2, 2, 204); text-decoration: none; margin-left: 22px;\" data-m-off-x=\"1\" data-m-off-y=\"6\" href=\"/forgot\">forgot</a></form>\n</div>\n<div id=\"si_loggedinbox\" class=\"si-editable-element\" style=\"display: block;\" data-boxshadow=\"\">\n	<span class=\"si-editable-element\" id=\"si_loggedinname\" style=\"margin-right: 10px; user-select: none; font-variant: small-caps; color: rgb(255, 255, 128);\" data-boxshadow=\"\">Logged In: admin</span>\n	<button onclick=\"Login.Logout(this);\" class=\"si-editable-element\" id=\"si_logoutbutton\" data-boxshadow=\"\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Logout</button>\n</div>', '0000-00-00 00:00:00', 1, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"80%\",\"top\":\"0px\",\"width\":\"360px\",\"height\":\"120px\"}}', '\nLogin={ 	\n	Init:function(){\n		if(typeof LoggedInUser != \"undefined\"){\n			document.getElementById(\'si_loggedinname\').innerHTML = \"Logged In: \"+LoggedInUser.name;\n			document.getElementById(\'si_loginbox\').style.display = \'none\';\n			document.getElementById(\'si_loggedinbox\').style.display = \'block\';\n			\n		}else{\n			document.getElementById(\'si_loggedinbox\').style.display = \'none\';\n			document.getElementById(\'si_loginbox\').style.display = \'block\';\n		}	\n	},\n	Attempt:function(){\n 		let email = document.getElementById(\'si_login_email\').value; \n		let password = document.getElementById(\'si_login_password\').value; \n        let rememberme = document.getElementById(\'si_login_remember_me\').checked; \n		SI.Tools.Ajax({Data:{KEY:\'LoginAttempt\',email:email, password:password,rememberme:rememberme}}); \n	},\n	RememberMe:function(self){\n		if(self.checked == true){\n			//let expire = new Date(new Date().setFullYear(new Date().getFullYear() + 1))\n			//document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n		else{\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + -1))\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\n		}\n	},\n	Logout:function(){\n\n		SI.Tools.Ajax({Data:{KEY:\'Logout\'}}); \n	}	\n}\nLogin.Init();\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '#si_loginbox {\n	width:400px;\n	height:200px;\n}\n#si_loggedinbox {\n	width:400px;\n	height:200px;\n}\n\n\n\n', '<div id=\"si_loginbox\"  style=\"user-select: none; height: 100%; padding-left: 26px; padding-top: 1px; display: none;\" data-boxshadow=\"\">\n<form id=\"form_login\"  style=\"\">\n	<h3  id=\"h3_gDw9Iad\" data-boxshadow=\"\" style=\"color: rgb(255, 255, 136); font-variant: small-caps;\">Login</h3>\n	<span  id=\"span_kTrkNtL\" data-boxshadow=\"\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n\">email</span>\n	<input type=\"email\" id=\"si_login_email\"  style=\"margin-left: 28px; background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"si_loginspace01\">\n	<span  id=\"span_2onGXZx\" style=\"\n    color: #FFFF88;\n    font-variant: small-caps;\n  \n\">password</span>\n	<input type=\"password\"  id=\"si_login_password\" style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3);\">\n	<br  id=\"br_pxC1By3\">\n	<span  id=\"span_3IldTVD\" style=\"\n    font-variant: small-caps;\n    color: #FFFF88;\n\">remember me</span>\n	<input type=\"checkbox\" onclick=\"Login.RememberMe(this);\"  id=\"si_login_remember_me\" style=\"\">\n	<button onclick=\"Login.Attempt(this);\"  id=\"button_LgnO8ic\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Login</button>\n<a id=\"a_forgot\"  style=\"position: static; color: rgb(2, 2, 204); text-decoration: none; margin-left: 22px;\" data-m-off-x=\"1\" data-m-off-y=\"6\" href=\"/forgot\">forgot</a></form>\n</div>\n<div id=\"si_loggedinbox\"  style=\"display: block;\" data-boxshadow=\"\">\n	<span  id=\"si_loggedinname\" style=\"margin-right: 10px; user-select: none; font-variant: small-caps; color: rgb(255, 255, 128);\" data-boxshadow=\"\">Logged In: admin</span>\n	<button onclick=\"Login.Logout(this);\"  id=\"si_logoutbutton\" data-boxshadow=\"\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\">Logout</button>\n</div>', '0000-00-00 00:00:00'),
(_SI_GUID_4, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Documentation', 0, '', 'console.log(\'Documentation loaded\');', '.Documentation { }', '<!-- Documentation block --><h2 id=\"si_block_Documentation\"  style=\"position: absolute; left: 758px; top: 59px; color: rgb(182, 186, 7);\" data-m-off-x=\"43\" data-m-off-y=\"11\">Documentation... </h2>', '0000-00-00 00:00:00', 0, '', 'console.log(\'Documentation loaded\');', '.Documentation { }', '<!-- Documentation block --><h2 id=\"si_block_Documentation\"  style=\"position: absolute; left: 758px; top: 59px; color: rgb(182, 186, 7);\" data-m-off-x=\"43\" data-m-off-y=\"11\">Documentation... </h2>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\"}}', 'console.log(\'Documentation loaded\');', '.Documentation { }', '<!-- Documentation block --><h2 id=\"si_block_Documentation\" class=\"si-editable-element\" style=\"position: absolute; left: 758px; top: 59px; color: rgb(182, 186, 7);\" data-m-off-x=\"43\" data-m-off-y=\"11\">Documentation... </h2>', '0000-00-00 00:00:00', 0, '', 'console.log(\'Documentation loaded\');', '.Documentation { }', '<!-- Documentation block --><h2 id=\"si_block_Documentation\"  style=\"position: absolute; left: 758px; top: 59px; color: rgb(182, 186, 7);\" data-m-off-x=\"43\" data-m-off-y=\"11\">Documentation... </h2>', '0000-00-00 00:00:00'),
(_SI_GUID_5, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_1, 'About', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', NULL, NULL, '<div  id=\"div_W3Dfyfx\" style=\"border: 1px solid black; width: 1016px; height: 896px; overflow: hidden; position: relative; background-color: rgba(50, 75, 56, 0.753); margin-left: auto; margin-right: auto; top: -500px;\"> <span id=\"div_W3Dfyfx\"  style=\"position: absolute; top: 47px; left: 85px; margin-right: 83px; background-color: rgba(225, 225, 225, 0.776); margin-left: 0px; padding-left: 16px; padding-right: 16px; font-family: &quot;Trebuchet MS&quot;, Helvetica, sans-serif; user-select: none;\" data-m-off-x=\"376\" data-m-off-y=\"61\"><p id=\"p_0XlFtS9\"  style=\"\">Super Intuitive came from a feeling that there just had to be a better way to mitigate the complexity of web programming.</p>\n<p id=\"p_KNtYYii\"  style=\"\">\nI was looking for a very easy way for a non-programmer to put together a website with most of the keywords available to programmers but from a drag and drop interface. Something that is super intuitive.</p>\n<p id=\"p_EgcyTjB\"  style=\"\">SI is a simple way to create a website, add pages at will, add elements to the pages and style them with most of the tools available to programmers.   \n</p>\n<p id=\"p_F57fZoN\"  style=\"\">To use it, login as admin and simply right click. The entire editor stems from one simple to navigate context menu. Select add, select the html element you would like to add  and drag it onto the page. Once added, you can then double click it to select it, then select edit from the main menu. If you are attempting to select a button or other clickable element, hold alt and mouse over to select the element. </p>\n<p id=\"p_FaZIuSL\"  style=\"\">\nThe edit menu has three tabs. The main tab, the attributes tab, the style tab. If you have familiarity with html you will know that tags can be modified by 2 things, attributes and styles. The attributes and style tabs let you modify all of the attributes and styles without needing to know what to type. All of the choices are available, or at least that is the ongoing goal a si_edit_main_menu s the languages evolve. The main tab has a few other options as well as several often used attributes and styles for convenience.</p>\n<p id=\"p_4FtwO4Q\"  style=\"\">\nThe tools menu has several windowed tools that can be used to edit the site.</p>\n<p id=\"p_qC2jx8W\"  style=\"\">The page tools let you set the url, title, meta, and edit blocks. A SI site is built of blocks. Each block can be saved and deployed independently.   \n</p>\n<p id=\"p_92CS4bV\"  style=\"\">\nThe media tool lets you upload and view images, sounds, video, documents, or whatever kind of media files you like. Once uploaded they can then be added to your website.</p>\n<p id=\"p_CHWWPak\" >\nThe Styler tool lets you build and edit CSS style sheets in a point and click, fashion. You can build and edit selectors, as well as add and edit properties without needing to remember what the choices are.\n</p>\n<p id=\"p_EhDhd1p\" >\nThe goal of the Scripter tool is to allow the user to make complicated front end logic using simple drag and drop tools. It is still very much in development.</p>\n<p id=\"p_dZpw3UP\" >\nThe language tool allows you to build your site in your native language and deploy your site across multiple languages.</p>\n<p id=\"p_C5zEKFW\"  style=\"\">\nThe site tools allow you to create and manage the pages in your site. \n</p><p id=\"p_C5zEKFW\"  style=\"\">SI is still a work in progress and you will find issues. Sometimes they have to do with the element\'s attributes <span style=\"font-size:xx-small;\" id=\"span_OKv8nCg\" >(try checking the parent, display, position, and clearing top and left)</span> and need better code solutions, some are just bugs. Anyway I encourage you to submit issues or even better fixes, on github.</p></span></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', NULL, NULL, '<div  id=\"div_W3Dfyfx\" style=\"border: 1px solid black; width: 1016px; height: 896px; overflow: hidden; position: relative; background-color: rgba(50, 75, 56, 0.753); margin-left: auto; margin-right: auto; top: -500px;\"> <span id=\"div_W3Dfyfx\"  style=\"position: absolute; top: 47px; left: 85px; margin-right: 83px; background-color: rgba(225, 225, 225, 0.776); margin-left: 0px; padding-left: 16px; padding-right: 16px; font-family: &quot;Trebuchet MS&quot;, Helvetica, sans-serif; user-select: none;\" data-m-off-x=\"376\" data-m-off-y=\"61\"><p id=\"p_0XlFtS9\"  style=\"\">Super Intuitive came from a feeling that there just had to be a better way to mitigate the complexity of web programming.</p>\n<p id=\"p_KNtYYii\"  style=\"\">\nI was looking for a very easy way for a non-programmer to put together a website with most of the keywords available to programmers but from a drag and drop interface. Something that is super intuitive.</p>\n<p id=\"p_EgcyTjB\"  style=\"\">SI is a simple way to create a website, add pages at will, add elements to the pages and style them with most of the tools available to programmers.   \n</p>\n<p id=\"p_F57fZoN\"  style=\"\">To use it, login as admin and simply right click. The entire editor stems from one simple to navigate context menu. Select add, select the html element you would like to add  and drag it onto the page. Once added, you can then double click it to select it, then select edit from the main menu. If you are attempting to select a button or other clickable element, hold alt and mouse over to select the element. </p>\n<p id=\"p_FaZIuSL\"  style=\"\">\nThe edit menu has three tabs. The main tab, the attributes tab, the style tab. If you have familiarity with html you will know that tags can be modified by 2 things, attributes and styles. The attributes and style tabs let you modify all of the attributes and styles without needing to know what to type. All of the choices are available, or at least that is the ongoing goal a si_edit_main_menu s the languages evolve. The main tab has a few other options as well as several often used attributes and styles for convenience.</p>\n<p id=\"p_4FtwO4Q\"  style=\"\">\nThe tools menu has several windowed tools that can be used to edit the site.</p>\n<p id=\"p_qC2jx8W\"  style=\"\">The page tools let you set the url, title, meta, and edit blocks. A SI site is built of blocks. Each block can be saved and deployed independently.   \n</p>\n<p id=\"p_92CS4bV\"  style=\"\">\nThe media tool lets you upload and view images, sounds, video, documents, or whatever kind of media files you like. Once uploaded they can then be added to your website.</p>\n<p id=\"p_CHWWPak\" >\nThe Styler tool lets you build and edit CSS style sheets in a point and click, fashion. You can build and edit selectors, as well as add and edit properties without needing to remember what the choices are.\n</p>\n<p id=\"p_EhDhd1p\" >\nThe goal of the Scripter tool is to allow the user to make complicated front end logic using simple drag and drop tools. It is still very much in development.</p>\n<p id=\"p_dZpw3UP\" >\nThe language tool allows you to build your site in your native language and deploy your site across multiple languages.</p>\n<p id=\"p_C5zEKFW\"  style=\"\">\nThe site tools allow you to create and manage the pages in your site. \n</p><p id=\"p_C5zEKFW\"  style=\"\">SI is still a work in progress and you will find issues. Sometimes they have to do with the element\'s attributes <span style=\"font-size:xx-small;\" id=\"span_OKv8nCg\" >(try checking the parent, display, position, and clearing top and left)</span> and need better code solutions, some are just bugs. Anyway I encourage you to submit issues or even better fixes, on github.</p></span></div>', '0000-00-00 00:00:00', 3, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', NULL, NULL, '<div class=\"si-editable-element\" id=\"div_W3Dfyfx\" style=\"border: 1px solid black; width: 1016px; height: 896px; overflow: hidden; position: relative; background-color: rgba(50, 75, 56, 0.753); margin-left: auto; margin-right: auto; top: -500px;\"> <span id=\"div_W3Dfyfx\" class=\"si-editable-element\" style=\"position: absolute; top: 47px; left: 85px; margin-right: 83px; background-color: rgba(225, 225, 225, 0.776); margin-left: 0px; padding-left: 16px; padding-right: 16px; font-family: &quot;Trebuchet MS&quot;, Helvetica, sans-serif; user-select: none;\" data-m-off-x=\"376\" data-m-off-y=\"61\"><p id=\"p_0XlFtS9\" class=\"si-editable-element\" style=\"\">Super Intuitive came from a feeling that there just had to be a better way to mitigate the complexity of web programming.</p>\n<p id=\"p_KNtYYii\" class=\"si-editable-element\" style=\"\">\nI was looking for a very easy way for a non-programmer to put together a website with most of the keywords available to programmers but from a drag and drop interface. Something that is super intuitive.</p>\n<p id=\"p_EgcyTjB\" class=\"si-editable-element\" style=\"\">SI is a simple way to create a website, add pages at will, add elements to the pages and style them with most of the tools available to programmers.   \n</p>\n<p id=\"p_F57fZoN\" class=\"si-editable-element\" style=\"\">To use it, login as admin and simply right click. The entire editor stems from one simple to navigate context menu. Select add, select the html element you would like to add  and drag it onto the page. Once added, you can then double click it to select it, then select edit from the main menu. If you are attempting to select a button or other clickable element, hold alt and mouse over to select the element. </p>\n<p id=\"p_FaZIuSL\" class=\"si-editable-element\" style=\"\">\nThe edit menu has three tabs. The main tab, the attributes tab, the style tab. If you have familiarity with html you will know that tags can be modified by 2 things, attributes and styles. The attributes and style tabs let you modify all of the attributes and styles without needing to know what to type. All of the choices are available, or at least that is the ongoing goal a si_edit_main_menu s the languages evolve. The main tab has a few other options as well as several often used attributes and styles for convenience.</p>\n<p id=\"p_4FtwO4Q\" class=\"si-editable-element\" style=\"\">\nThe tools menu has several windowed tools that can be used to edit the site.</p>\n<p id=\"p_qC2jx8W\" class=\"si-editable-element\" style=\"\">The page tools let you set the url, title, meta, and edit blocks. A SI site is built of blocks. Each block can be saved and deployed independently.   \n</p>\n<p id=\"p_92CS4bV\" class=\"si-editable-element\" style=\"\">\nThe media tool lets you upload and view images, sounds, video, documents, or whatever kind of media files you like. Once uploaded they can then be added to your website.</p>\n<p id=\"p_CHWWPak\" class=\"si-editable-element\">\nThe Styler tool lets you build and edit CSS style sheets in a point and click, fashion. You can build and edit selectors, as well as add and edit properties without needing to remember what the choices are.\n</p>\n<p id=\"p_EhDhd1p\" class=\"si-editable-element\">\nThe goal of the Scripter tool is to allow the user to make complicated front end logic using simple drag and drop tools. It is still very much in development.</p>\n<p id=\"p_dZpw3UP\" class=\"si-editable-element\">\nThe language tool allows you to build your site in your native language and deploy your site across multiple languages.</p>\n<p id=\"p_C5zEKFW\" class=\"si-editable-element\" style=\"\">\nThe site tools allow you to create and manage the pages in your site. \n</p><p id=\"p_C5zEKFW\" class=\"si-editable-element\" style=\"\">SI is still a work in progress and you will find issues. Sometimes they have to do with the element\'s attributes <span style=\"font-size:xx-small;\" id=\"span_OKv8nCg\" class=\"si-editable-element\">(try checking the parent, display, position, and clearing top and left)</span> and need better code solutions, some are just bugs. Anyway I encourage you to submit issues or even better fixes, on github.</p></span></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', NULL, NULL, '<div  id=\"div_W3Dfyfx\" style=\"border: 1px solid black; width: 1016px; height: 896px; overflow: hidden; position: relative; background-color: rgba(50, 75, 56, 0.753); margin-left: auto; margin-right: auto; top: -500px;\"> <span id=\"div_W3Dfyfx\"  style=\"position: absolute; top: 47px; left: 85px; margin-right: 83px; background-color: rgba(225, 225, 225, 0.776); margin-left: 0px; padding-left: 16px; padding-right: 16px; font-family: &quot;Trebuchet MS&quot;, Helvetica, sans-serif; user-select: none;\" data-m-off-x=\"376\" data-m-off-y=\"61\"><p id=\"p_0XlFtS9\"  style=\"\">Super Intuitive came from a feeling that there just had to be a better way to mitigate the complexity of web programming.</p>\n<p id=\"p_KNtYYii\"  style=\"\">\nI was looking for a very easy way for a non-programmer to put together a website with most of the keywords available to programmers but from a drag and drop interface. Something that is super intuitive.</p>\n<p id=\"p_EgcyTjB\"  style=\"\">SI is a simple way to create a website, add pages at will, add elements to the pages and style them with most of the tools available to programmers.   \n</p>\n<p id=\"p_F57fZoN\"  style=\"\">To use it, login as admin and simply right click. The entire editor stems from one simple to navigate context menu. Select add, select the html element you would like to add  and drag it onto the page. Once added, you can then double click it to select it, then select edit from the main menu. If you are attempting to select a button or other clickable element, hold alt and mouse over to select the element. </p>\n<p id=\"p_FaZIuSL\"  style=\"\">\nThe edit menu has three tabs. The main tab, the attributes tab, the style tab. If you have familiarity with html you will know that tags can be modified by 2 things, attributes and styles. The attributes and style tabs let you modify all of the attributes and styles without needing to know what to type. All of the choices are available, or at least that is the ongoing goal a si_edit_main_menu s the languages evolve. The main tab has a few other options as well as several often used attributes and styles for convenience.</p>\n<p id=\"p_4FtwO4Q\"  style=\"\">\nThe tools menu has several windowed tools that can be used to edit the site.</p>\n<p id=\"p_qC2jx8W\"  style=\"\">The page tools let you set the url, title, meta, and edit blocks. A SI site is built of blocks. Each block can be saved and deployed independently.   \n</p>\n<p id=\"p_92CS4bV\"  style=\"\">\nThe media tool lets you upload and view images, sounds, video, documents, or whatever kind of media files you like. Once uploaded they can then be added to your website.</p>\n<p id=\"p_CHWWPak\" >\nThe Styler tool lets you build and edit CSS style sheets in a point and click, fashion. You can build and edit selectors, as well as add and edit properties without needing to remember what the choices are.\n</p>\n<p id=\"p_EhDhd1p\" >\nThe goal of the Scripter tool is to allow the user to make complicated front end logic using simple drag and drop tools. It is still very much in development.</p>\n<p id=\"p_dZpw3UP\" >\nThe language tool allows you to build your site in your native language and deploy your site across multiple languages.</p>\n<p id=\"p_C5zEKFW\"  style=\"\">\nThe site tools allow you to create and manage the pages in your site. \n</p><p id=\"p_C5zEKFW\"  style=\"\">SI is still a work in progress and you will find issues. Sometimes they have to do with the element\'s attributes <span style=\"font-size:xx-small;\" id=\"span_OKv8nCg\" >(try checking the parent, display, position, and clearing top and left)</span> and need better code solutions, some are just bugs. Anyway I encourage you to submit issues or even better fixes, on github.</p></span></div>', '0000-00-00 00:00:00'),
(_SI_GUID_6, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Menu', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"100px\",\"width\":\"300px\",\"height\":\"60px\"}}', 'console.log(\'Menu Script Load Succeeded\');\n\n\n', NULL, '<div id=\"div_aboutbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.573); width: 130px; height: inherit; overflow: hidden; position: static; top: 0px; left: 0px; background-color: rgba(70, 66, 51, 0.33); color: rgb(243, 255, 26); user-select: none; display: inline-block;\" onclick=\"window.location.href = &quot;/about&quot;;\" > <span id=\"span_aboutlbl\" style=\"position: absolute; top: 21px; left: 45px; width: 48px; font-variant: small-caps;\" class=\" si-multilingual-UYGIKUYLLBIUBTFNJUDB si-multilingual\" data-si_ml_index=\"1\" data-si_ml_token=\"UYGIKUYLLBIUBTFNJUDB\">SI_MULTILANG_UYGIKUYLLBIUBTFNJUDB</span></div><div id=\"div_documentationbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.537); height: inherit; overflow: hidden; position: relative; display: inline-block; background-color: rgba(70, 66, 51, 0.353); width: 150px;\" onclick=\"window.location = &quot;/documentation&quot;;\" ><span id=\"span_documentationlbl\" style=\"position: relative; top: 21px; left: 24px; color: rgb(255, 255, 128); resize: none; font-variant: small-caps; user-select: none;\" >Documentation</span></div><div id=\"div_contactbtn\"  style=\"border: 1px solid black; width: 120px; height: inherit; position: absolute; background-color: rgba(70, 66, 51, 0.357); display: inline-block;\" data-m-off-x=\"55\" data-m-off-y=\"43\" onclick=\"window.location.href = &quot;/contact&quot;;\"> <span id=\"div_contactlbl\"  style=\"position: relative; top: 21px; left: 27px; color: rgb(255, 255, 128); font-variant: small-caps;\" data-m-off-x=\"35\" data-m-off-y=\"6\">Contact</span></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"100px\",\"width\":\"300px\",\"height\":\"60px\"}}', 'console.log(\'Menu Script Load Succeeded\');\n\n\n', NULL, '<div id=\"div_aboutbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.573); width: 130px; height: inherit; overflow: hidden; position: static; top: 0px; left: 0px; background-color: rgba(70, 66, 51, 0.33); color: rgb(243, 255, 26); user-select: none; display: inline-block;\" onclick=\"window.location.href = &quot;/about&quot;;\" > <span id=\"span_aboutlbl\" style=\"position: absolute; top: 21px; left: 45px; width: 48px; font-variant: small-caps;\" class=\" si-multilingual-UYGIKUYLLBIUBTFNJUDB si-multilingual\" data-si_ml_index=\"1\" data-si_ml_token=\"UYGIKUYLLBIUBTFNJUDB\">SI_MULTILANG_UYGIKUYLLBIUBTFNJUDB</span></div><div id=\"div_documentationbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.537); height: inherit; overflow: hidden; position: relative; display: inline-block; background-color: rgba(70, 66, 51, 0.353); width: 150px;\" onclick=\"window.location = &quot;/documentation&quot;;\" ><span id=\"span_documentationlbl\" style=\"position: relative; top: 21px; left: 24px; color: rgb(255, 255, 128); resize: none; font-variant: small-caps; user-select: none;\" >Documentation</span></div><div id=\"div_contactbtn\"  style=\"border: 1px solid black; width: 120px; height: inherit; position: absolute; background-color: rgba(70, 66, 51, 0.357); display: inline-block;\" data-m-off-x=\"55\" data-m-off-y=\"43\" onclick=\"window.location.href = &quot;/contact&quot;;\"> <span id=\"div_contactlbl\"  style=\"position: relative; top: 21px; left: 27px; color: rgb(255, 255, 128); font-variant: small-caps;\" data-m-off-x=\"35\" data-m-off-y=\"6\">Contact</span></div>', '0000-00-00 00:00:00', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"100px\",\"width\":\"300px\",\"height\":\"60px\"}}', 'console.log(\'Menu Script Load Succeeded\');\n\n\n', NULL, '<div id=\"div_aboutbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.573); width: 130px; height: inherit; overflow: hidden; position: static; top: 0px; left: 0px; background-color: rgba(70, 66, 51, 0.33); color: rgb(243, 255, 26); user-select: none; display: inline-block;\" onclick=\"window.location.href = &quot;/about&quot;;\" class=\"si-editable-element\"> <span id=\"span_aboutlbl\" style=\"position: absolute; top: 21px; left: 45px; width: 48px; font-variant: small-caps;\" class=\"si-editable-element si-multilingual-UYGIKUYLLBIUBTFNJUDB si-multilingual\" data-si_ml_index=\"1\" data-si_ml_token=\"UYGIKUYLLBIUBTFNJUDB\">SI_MULTILANG_UYGIKUYLLBIUBTFNJUDB</span></div><div id=\"div_documentationbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.537); height: inherit; overflow: hidden; position: relative; display: inline-block; background-color: rgba(70, 66, 51, 0.353); width: 150px;\" onclick=\"window.location = &quot;/documentation&quot;;\" class=\"si-editable-element\"><span id=\"span_documentationlbl\" style=\"position: relative; top: 21px; left: 24px; color: rgb(255, 255, 128); resize: none; font-variant: small-caps; user-select: none;\" class=\"si-editable-element\">Documentation</span></div><div id=\"div_contactbtn\" class=\"si-editable-element\" style=\"border: 1px solid black; width: 120px; height: inherit; position: absolute; background-color: rgba(70, 66, 51, 0.357); display: inline-block;\" data-m-off-x=\"55\" data-m-off-y=\"43\" onclick=\"window.location.href = &quot;/contact&quot;;\"> <span id=\"div_contactlbl\" class=\"si-editable-element\" style=\"position: relative; top: 21px; left: 27px; color: rgb(255, 255, 128); font-variant: small-caps;\" data-m-off-x=\"35\" data-m-off-y=\"6\">Contact</span></div>', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"100px\",\"width\":\"700px\",\"height\":\"60px\"}}', 'console.log(\'Menu Script Load Succeeded\');\n\n\n', NULL, '<div id=\"div_aboutbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.573); width: 130px; height: inherit; overflow: hidden; position: static; top: 0px; left: 0px; background-color: rgba(70, 66, 51, 0.33); color: rgb(243, 255, 26); user-select: none; display: inline-block;\" onclick=\"window.location.href = &quot;/about&quot;;\" > <span id=\"span_aboutlbl\" style=\"position: absolute; top: 21px; left: 45px; width: 48px; font-variant: small-caps;\" class=\" si-multilingual-UYGIKUYLLBIUBTFNJUDB si-multilingual\" data-si_ml_index=\"1\" data-si_ml_token=\"UYGIKUYLLBIUBTFNJUDB\">SI_MULTILANG_UYGIKUYLLBIUBTFNJUDB</span></div><div id=\"div_documentationbtn\" style=\"border: 1px solid rgba(0, 0, 0, 0.537); height: inherit; overflow: hidden; position: relative; display: inline-block; background-color: rgba(70, 66, 51, 0.353); width: 150px;\" onclick=\"window.location = &quot;/documentation&quot;;\" ><span id=\"span_documentationlbl\" style=\"position: relative; top: 21px; left: 24px; color: rgb(255, 255, 128); resize: none; font-variant: small-caps; user-select: none;\" >Documentation</span></div><div id=\"div_contactbtn\"  style=\"border: 1px solid black; width: 120px; height: inherit; position: absolute; background-color: rgba(70, 66, 51, 0.357); display: inline-block;\" data-m-off-x=\"55\" data-m-off-y=\"43\" onclick=\"window.location.href = &quot;/contact&quot;;\"> <span id=\"div_contactlbl\"  style=\"position: relative; top: 21px; left: 27px; color: rgb(255, 255, 128); font-variant: small-caps;\" data-m-off-x=\"35\" data-m-off-y=\"6\">Contact</span></div>', '0000-00-00 00:00:00'),
(_SI_GUID_7, 'active', 'live', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Page Not Found', 0, '{\"tag\":\"header\",\"name\":\"Page Not Found\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', 'PageNotFound = {}', '.pagenotfound{}', '<h1>Not Found</h1>\r\n<p>The requested URL was not found on this server.</p>', '0000-00-00 00:00:00', 0, '{\"tag\":\"header\",\"name\":\"Page Not Found\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', 'PageNotFound = {}', '.pagenotfound{}', '<h1>Page Not Found</h1>', '0000-00-00 00:00:00', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', 'PageNotFound = {}', '.pagenotfound{}', '<h1 class=\"si-editable-element\" id=\"h1_hrurQBj\" style=\"background-color: rgb(41, 55, 180); top: 24px; position: absolute; left: 100px; padding: 10px 15px; color: rgb(225, 254, 255);\">  Page not found </h1>', '0000-00-00 00:00:00', 0, '', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(_SI_GUID_8, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_1, 'Forgot', 0, '', 'console.log(\'Forgot loaded\');\nForgot={\n	Submit:function(self){\n\n		let email = self.previousSibling.value;\n		let options = {\n			data:{\n				\"KEY\":\"ForgotPassword\",\n				\"email\":email\n			}\n		}\n		Tools.Ajax(options);\n		\n\n	}\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, '<!-- Forgot block --><span id=\"span_emaillbl\"  style=\"position: static; font-variant: small-caps; color: rgb(255, 255, 0); font-size: large; display: block;\">Enter Your Email To Reset Your Password</span><input id=\"input_KC4ruuL\"  style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3); width: 277px; height: 21px;\"><input id=\"input_nLw0qH9\"  style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\" type=\"button\" value=\"Submit\" onclick=\"Forgot.Submit(this);\">', '0000-00-00 00:00:00', 0, '', 'console.log(\'Forgot loaded\');\nForgot={\n	Submit:function(self){\n\n		let email = self.previousSibling.value;\n		let options = {\n			data:{\n				\"KEY\":\"ForgotPassword\",\n				\"email\":email\n			}\n		}\n		Tools.Ajax(options);\n		\n\n	}\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, '<!-- Forgot block --><span id=\"span_emaillbl\"  style=\"position: static; font-variant: small-caps; color: rgb(255, 255, 0); font-size: large; display: block;\">Enter Your Email To Reset Your Password</span><input id=\"input_KC4ruuL\"  style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3); width: 277px; height: 21px;\"><input id=\"input_nLw0qH9\"  style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\" type=\"button\" value=\"Submit\" onclick=\"Forgot.Submit(this);\">', '0000-00-00 00:00:00', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\"}}', 'console.log(\'Forgot loaded\');\nForgot={\n	Submit:function(self){\n\n		let email = self.previousSibling.value;\n		let options = {\n			Data:{\n				\"KEY\":\"ForgotPassword\",\n				\"email\":email\n			}\n		}\n		Tools.Ajax(options);\n		\n\n	}\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '.Forgot { }', '<!-- Forgot block --><span id=\"span_emaillbl\" class=\"si-editable-element\" style=\"position: static; font-variant: small-caps; color: rgb(255, 255, 0); font-size: large; display: block;\">Enter Your Email To Reset Your Password</span><input id=\"input_KC4ruuL\" class=\"si-editable-element\" style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3); width: 277px; height: 21px;\"><input id=\"input_nLw0qH9\" class=\"si-editable-element\" style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\" type=\"button\" value=\"Submit\" onclick=\"Forgot.Submit(this);\">', '0000-00-00 00:00:00', 0, '', 'console.log(\'Forgot loaded\');\nForgot={\n	Submit:function(self){\n\n		let email = self.previousSibling.value;\n		let options = {\n			data:{\n				\"KEY\":\"ForgotPassword\",\n				\"email\":email\n			}\n		}\n		Tools.Ajax(options);\n		\n\n	}\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, '<!-- Forgot block --><span id=\"span_emaillbl\"  style=\"position: static; font-variant: small-caps; color: rgb(255, 255, 0); font-size: large; display: block;\">Enter Your Email To Reset Your Password</span><input id=\"input_KC4ruuL\"  style=\"background-color: rgba(128, 128, 128, 0.08); padding: 3px; border: 1px solid rgba(0, 0, 0, 0.3); width: 277px; height: 21px;\"><input id=\"input_nLw0qH9\"  style=\"background-color: rgba(0, 0, 0, 0.08); padding: 6px; border: 1px solid rgba(0, 0, 0, 0.3); color: rgb(234, 234, 92); font-variant: small-caps;\" type=\"button\" value=\"Submit\" onclick=\"Forgot.Submit(this);\">', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blocktemplates`
--

CREATE TABLE `blocktemplates` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `statusreason` enum('live','test','dev') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dev',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"blocktemplates", "SN":"blocktemplate"}';

--
-- Dumping data for table `blocktemplates`
--

INSERT INTO `blocktemplates` (`id`, `status`, `statusreason`, `createdon`, `modifiedon`, `entity_id`, `name`, `options`, `html`, `style`, `script`, `thumb`, `category`, `order`) VALUES
(_SI_GUID_9, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_10, 'Login Form', '{\"tag\":\"div\",\"name\":\"Login\",\"style\":{\"position\":\"absolute\",\"left\":\"80%\",\"top\":\"0px\",\"width\":\"360px\",\"height\":\"120px\"}}', '<div id=\"si_loginbox\" class=\"si-editable-element\" style=\"user-select: none; height: 100%; padding-left: 26px; padding-top: 1px; display: none;\">\r\n	<h3 class=\"si-editable-element\" id=\"h3_gDw9Iad\">Login</h3>\r\n	<span class=\"si-editable-element\" id=\"span_kTrkNtL\">email</span>\r\n	<input type=\"email\" id=\"si_login_email\" class=\"si-editable-element\" style=\"margin-right: 30px; margin-left: 25px;\">\r\n	<br class=\"si-editable-element\" id=\"br_1s2x4el\">\r\n	<span class=\"si-editable-element\" id=\"span_2onGXZx\">password</span>\r\n	<input type=\"password\" class=\"si-editable-element\" id=\"si_login_password\">\r\n	<br class=\"si-editable-element\" id=\"br_pxC1By3\">\r\n	<span class=\"si-editable-element\" id=\"span_3IldTVD\">remember me</span>\r\n	<input type=\"checkbox\" onclick=\"Login.RememberMe(this);\" class=\"si-editable-element\" id=\"input_pcH5SF4\">\r\n	<button onclick=\"Login.Attempt(this);\" class=\"si-editable-element\" id=\"button_LgnO8ic\">Login</button>\r\n</div>\r\n<div id=\"si_loggedinbox\" class=\"si-editable-element\" style=\"display: block;\">\r\n	<span class=\"si-editable-element\" id=\"si_loggedinname\" style=\"margin-right: 10px;\">Logged In: Bob Allen</span>\r\n	<button onclick=\"Login.Logout(this);\" class=\"si-editable-element\" id=\"si_logoutbutton\">Logout</button>\r\n</div>', '#si_loginbox{\r\n	color:white;\r\n    width:300px;\r\n	height:200px;\r\n	padding:30px;\r\n}\r\n#si_loggedinbox{\r\n	color:white;\r\n    width:300px;\r\n	height:200px;\r\n	padding:30px;\r\n}', 'let Login={ 	\r\n	Init:function(){\r\n		if(typeof LoggedInUser != \"undefined\"){\r\n			document.getElementById(\'si_loggedinname\').innerHTML = \"Logged In: \"+LoggedInUser.name;\r\n			document.getElementById(\'si_loginbox\').style.display = \'none\';\r\n			document.getElementById(\'si_loggedinbox\').style.display = \'block\';\r\n			\r\n		}else{\r\n			document.getElementById(\'si_loggedinbox\').style.display = \'none\';\r\n			document.getElementById(\'si_loginbox\').style.display = \'block\';\r\n		}	\r\n	},\r\n	Attempt:function(){\r\n 		let email = document.getElementById(\'si_login_email\').value; \r\n		let password = document.getElementById(\'si_login_password\').value; \r\n		Tools.Ajax({Data:{Key:\'LoginAttempt\',email:email, password:password}}); \r\n	},\r\n	RememberMe:function(self){\r\n		if(self.checked == true){\r\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + 1))\r\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\r\n		}\r\n		else{\r\n			let expire = new Date(new Date().setFullYear(new Date().getFullYear() + -1))\r\n			document.cookie = \"rememberme=true; expires=\"+expire+\";path=/\";\r\n		}\r\n	},\r\n	Logout:function(){\r\n\r\n		Tools.Ajax({Data:{Key:\'Logout\'}}); \r\n	}	\r\n}\r\nLogin.Init();', 'V8AhYlVX0Ib', 'Security,Login', 1);

-- --------------------------------------------------------

--
-- Table structure for table `businessunits`
--

CREATE TABLE `businessunits` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `domain_id` binary(16) NOT NULL COMMENT 'entity:domains',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"businessunits", "SN":"businessunit"}';

--
-- Dumping data for table `businessunits`
--

INSERT INTO `businessunits` (`id`, `status`, `createdon`, `modifiedon`, `domain_id`, `name`) VALUES
(_SI_GUID_11, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, '');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"domains", "SN":"domain"}';

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `status`, `createdon`, `modifiedon`, `name`) VALUES
(_SI_GUID_12, 'active', _SI_NOWTIME_, NULL, '__SI_DOMAIN_NAME__');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `statusreason` enum('live','test','dev') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dev',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='{"EN":"emails", "SN":"email","global":"false"}';

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `domain_id` binary(16) NOT NULL COMMENT 'entity:domains',
  `businessunit_id` binary(16) NOT NULL COMMENT 'entity:businessunits',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `status`, `createdon`, `modifiedon`, `domain_id`, `businessunit_id`, `name`, `quantity`, `options`) VALUES
(_SI_GUID_13, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'users', 0, ''),
(_SI_GUID_14, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'relations', 0, ''),
(_SI_GUID_15, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'securityroles', 0, ''),
(_SI_GUID_16, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'preferences', 0, ''),
(_SI_GUID_10, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'blocktemplates', 0, ''),
(_SI_GUID_17, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'settings', 0, ''),
(_SI_GUID_18, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'localtext', 0, ''),
(_SI_GUID_19, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'sessions', 0, ''),
(_SI_GUID_1, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'blocks', 0, ''),
(_SI_GUID_20, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'pages', 0, ''),
(_SI_GUID_21, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'pagetemplates', 0, ''),
(_SI_GUID_22, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'media', 0, ''),
(_SI_GUID_23, 'active', _SI_NOWTIME_, NULL, _SI_GUID_12, _SI_GUID_11, 'libraries', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dev-css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dev-js` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-js` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `svn` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"libraries", "SN":"library"}';

-- --------------------------------------------------------

--
-- Table structure for table `localtext`
--

CREATE TABLE `localtext` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Arabic (Standard)"}',
  `_zh` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Chinese"}',
  `_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"English"}',
  `_fr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"French (Standard)"}',
  `_de` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"German (Standard)"}',
  `_hi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Hindi"}',
  `_it` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Italian (Standard)"}',
  `_ja` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Japanese"}',
  `_ko` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Korean"}',
  `_es` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"Name":"Spanish"}'  __SI_DEFAULT_LANGUAGE_COLUMN__
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localtext`
--

INSERT INTO `localtext` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `name`, `options`, `_ar`, `_zh`, `_en`, `_fr`, `_de`, `_hi`, `_it`, `_ja`, `_ko`, `_es`, `_en-us`) VALUES
(_SI_GUID_24, 'active', _SI_NOWTIME_, NULL, _SI_GUID_18, 'UYGIKUYLLBIUBTFNJUDB', '{}', 'حول', '关于', 'About', 'Sur', 'Über', 'के बारे में', 'Di', '約', '약', 'Acerca de', NULL),
(_SI_GUID_25, 'active', _SI_NOWTIME_, NULL, _SI_GUID_18, 'JHVBUYSDVCSDMDJGFNYT', '{}', 'أدوات', '关于', 'Tools', 'Outils', 'Werkzeuge', 'उपकरण', 'Utensili', '道具', '도구', 'Herramientas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `hash` binary(20) NOT NULL,
  `mime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetype_id` binary(16) NOT NULL COMMENT 'entity:mimetypes',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"media", "SN":"media"}';

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `hash`, `mime`, `mimetype_id`, `name`, `path`, `meta`) VALUES
(_SI_GUID_26, 'active', _SI_NOWTIME_, NULL, _SI_GUID_22, 0x42727bc1ec17021b233eac156f19ecc26ce498ee, 'image/png', _SI_GUID_27, 'Favicon', 'favicon.png', ''),
(_SI_GUID_28, 'active', _SI_NOWTIME_, NULL, _SI_GUID_22, 0xf173dca31d8180a604a2ee199f96e9e9138663f2, 'image/jpeg', _SI_GUID_29, 'background-sunset.jpg', 'background-sunset.jpg', ''),
(_SI_GUID_30, 'active', _SI_NOWTIME_, NULL, _SI_GUID_22, 0xb243412905822b13425dcb4bf9b45f61cdda1fd1, 'image/png', _SI_GUID_27, 'Main Logo', 'logo.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `statusreason` enum('live','test','dev') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dev',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirecttopage_id` binary(16) DEFAULT NULL COMMENT 'entity:pages',
  `dev-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `test-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"pages", "SN":"page"}';

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `status`, `statusreason`, `createdon`, `modifiedon`, `entity_id`, `name`, `path`, `redirecttopage_id`, `dev-options`, `test-options`, `live-options`) VALUES
(_SI_GUID_31, 'active', 'live', _SI_NOWTIME_, NULL, _SI_GUID_20, '', '', NULL, '{\"head\":{\"title\":\"Home Page\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Home Page\",\"keywords\":\"cms,website,free\",\"language\":\"english\",\"author\":\"webmaster\",\"designer\":\"webmaster\",\"publisher\":\"My Company\",\"subject\":\"Consulting\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2020\",\"classification\":\"Software to build a website without programming\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"webmaster@mydomain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x15794950286C0B3F5CFF82FDBEFBACB9\"}}}', '{\"head\":{\"title\":\"Home Page\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Home Page\",\"keywords\":\"cms,website,free\",\"language\":\"english\",\"author\":\"webmaster\",\"designer\":\"webmaster\",\"publisher\":\"My Company\",\"subject\":\"Consulting\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2020\",\"classification\":\"Software to build a website without programming\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"webmaster@mydomain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x15794950286C0B3F5CFF82FDBEFBACB9\"}}}', '{\"head\":{\"title\":\"Home Page\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Home Page\",\"keywords\":\"cms,website,free\",\"language\":\"english\",\"author\":\"webmaster\",\"designer\":\"webmaster\",\"publisher\":\"My Company\",\"subject\":\"Consulting\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2020\",\"classification\":\"Software to build a website without programming\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"webmaster@mydomain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x15794950286C0B3F5CFF82FDBEFBACB9\"}}}'),
(_SI_GUID_32, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_20, 'contact', 'contact', NULL, '{\"head\":{\"title\":\"Contact\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"border\":\"0\",\"height\":\"100%\",\"padding\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"position\":\"relative\"},\"data\":{\"guid\":\"0x157949502885E4FB9F7FE6E884B18248\"}}}', '{\"head\":{\"title\":\"Page Title\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"height\":\"100%\",\"position\":\"relative\"},\"data\":{\"guid\":\"0x15589728439C5585BA291065900D910A\"}}}', '{\"head\":{\"title\":\"Page Title\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"height\":\"100%\",\"position\":\"relative\"},\"data\":{\"guid\":\"0x15589728439C5585BA291065900D910A\"}}}'),
(_SI_GUID_33, 'active', 'live', _SI_NOWTIME_, NULL, _SI_GUID_20, '404', '404', NULL, '{\"head\":{\"title\":\"Page Not Found\", \"favicon\":\"media/images/favicon.png\", \"meta\": { \"name\":{ \"description\":\"page not found 404\", \"keywords\":\"cms,website,free\", \"language\":\"english\", \"author\":\"boston\", \"designer\":\"boston\", \"publisher\":\"My Publishing Company\", \"subject\":\"Web Authoring\", \"distribution\":\"web\", \"rating\":\"general\", \"copyright\":\"Copyright __NOW.YEAR__\", \"classification\":\"Software to build a website without programming\", \"no-email-collection\": \"http://www.unspam.com/noemailcollection/\", \"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\", \"reply-to\":\"webmaster@localhost.com\", \"city\":\"Anytown\", \"country\":\"USA\", \"viewport\":\"width=device-width, initial-scale=1.0\" }, \"charset\":\"utf-8\", \"http-equiv\":{ \"content-type\":\"text/html\", \"refresh\":\"\", \"content-style-type\":\"text/css\", \"content-script-type\":\"text/javascript\" } } },  \"body\":{ \"style\":{ \"margin\":0, \"padding\":0, \"border\":0, \"background-color\":\"cornflowerblue\",\"height\":\"100%\" }, \"data\":{  } } }', '{ \"head\":{     \"title\":\"Page Not Found\", \"favicon\":\"media/images/favicon.png\", \"meta\": { \"name\":{\"description\":\"page not found 404\",\"keywords\":\"cms,website,free\",\"language\":\"english\",\"author\":\"boston\",\"designer\":\"boston\",\"publisher\":\"My Publishing Company\",\"subject\":\"Web Authoring\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright __NOW.YEAR__\",\"classification\":\"Software to build a website without programming\",\"no-email-collection\": \"http://www.unspam.com/noemailcollection/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"bob.t.allen@gmail.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\" }, \"charset\":\"utf-8\", \"http-equiv\":{\"content-type\":\"text/html\",\"refresh\":\"\",\"content-style-type\":\"text/css\",\"content-script-type\":\"text/javascript\" } } },  \"body\":{ \"style\":{ \"margin\":0, \"padding\":0, \"border\":0, \"background-color\":\"cornflowerblue\" }, \"data\":{  } } }', '{ \"head\":{     \"title\":\"Page Not Found\", \"favicon\":\"media/images/favicon.png\", \"meta\": { \"name\":{\"description\":\"page not found 404\",\"keywords\":\"cms,website,free\",\"language\":\"english\",\"author\":\"boston\",\"designer\":\"boston\",\"publisher\":\"My Publishing Company\",\"subject\":\"Web Authoring\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright __NOW.YEAR__\",\"classification\":\"Software to build a website without programming\",\"no-email-collection\": \"http://www.unspam.com/noemailcollection/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"bob.t.allen@gmail.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\" }, \"charset\":\"utf-8\", \"http-equiv\":{\"content-type\":\"text/html\",\"refresh\":\"\",\"content-style-type\":\"text/css\",\"content-script-type\":\"text/javascript\" } } },  \"body\":{ \"style\":{ \"margin\":0, \"padding\":0, \"border\":0, \"background-color\":\"cornflowerblue\" }, \"data\":{  } } }'),
(_SI_GUID_34, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_20, 'about', 'about', NULL, '{\"head\":{\"title\":\"About\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Change Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x1579495028E59D728765703AC69C755E\"}}}', '{\"head\":{\"title\":\"Home Page\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Change Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x15589678553BE7C7FF70400550EBE9A4\"}}}', '{\"head\":{\"title\":\"Home Page\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Change Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"padding\":\"0\",\"border\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x15589678553BE7C7FF70400550EBE9A4\"}}}'),
(_SI_GUID_35, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_20, 'forgot', 'forgot', NULL, '{\"head\":{\"title\":\"Forgot Password\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"border\":\"0\",\"padding\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x157949502959986B55B7FA24135579C3\"}}}', '{\"head\":{\"title\":\"Forgot Password\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"border\":\"0\",\"padding\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x157949502959986B55B7FA24135579C3\"}}}', '{\"head\":{\"title\":\"Forgot Password\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"border\":\"0\",\"padding\":\"0\",\"background-color\":\"rgba(33,23,22,1)\"},\"data\":{\"guid\":\"0x157949502959986B55B7FA24135579C3\"}}}'),
(_SI_GUID_36, 'active', 'dev', _SI_NOWTIME_, NULL, _SI_GUID_20, 'documentation', 'documentation', NULL, '{\"head\":{\"title\":\"Documentation\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"padding\":\"0\",\"height\":\"100%\",\"border\":\"0\"},\"data\":{\"guid\":\"0x1579495029EE1EA73F9C85A2FCD02822\"}}}', '{\"head\":{\"title\":\"Documentation\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"padding\":\"0\",\"height\":\"100%\",\"border\":\"0\"},\"data\":{\"guid\":\"0x1579495029EE1EA73F9C85A2FCD02822\"}}}', '{\"head\":{\"title\":\"Documentation\",\"favicon\":\"favicon.png\",\"meta\":{\"name\":{\"description\":\"My Description\",\"keywords\":\"Change Me\",\"language\":\"english\",\"author\":\"me\",\"designer\":\"me\",\"publisher\":\"me\",\"subject\":\"Chnage Me\",\"distribution\":\"web\",\"rating\":\"general\",\"copyright\":\"Copyright 2019\",\"classification\":\"Stuff\",\"no-email-collection\":\"http:\\/\\/www.unspam.com\\/noemailcollection\\/\",\"robots\":\"nofollow,noindex\",\"revisit-after\":\"7 days\",\"reply-to\":\"me@domain.com\",\"city\":\"Los Gatos\",\"country\":\"USA\",\"viewport\":\"width=device-width, initial-scale=1.0\"},\"charset\":\"utf-8\",\"httpEquiv\":{\"content-type\":\"text\\/html\",\"content-style-type\":\"text\\/css\",\"content-script-type\":\"text\\/javascript\"}}},\"body\":{\"style\":{\"margin\":\"0\",\"background-color\":\"rgba(33,23,22,1)\",\"padding\":\"0\",\"height\":\"100%\",\"border\":\"0\"},\"data\":{\"guid\":\"0x1579495029EE1EA73F9C85A2FCD02822\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `pagetemplates`
--

CREATE TABLE `pagetemplates` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"pagetemplates", "SN":"pagetemplate"}';

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '\'{}\'' COMMENT '{desc:"json data with setup options"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"settings", "SN":"setting"}';

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `parententity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `childentity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `parent_id` binary(16) NOT NULL COMMENT 'entity:*',
  `child_id` binary(16) NOT NULL COMMENT 'entity:*',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `live-order` int(11) NOT NULL,
  `live-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `test-order` int(11) NOT NULL,
  `test-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dev-order` int(11) NOT NULL,
  `dev-options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_options` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `parententity_id`, `childentity_id`, `parent_id`, `child_id`, `note`, `live-order`, `live-options`, `test-order`, `test-options`, `dev-order`, `dev-options`, `json_options`) VALUES
(_SI_GUID_37, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_32, _SI_GUID_2, 'pages_blocks', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"-1px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"-1px\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"-1px\"},\"options\":[]}', '{}'),
(_SI_GUID_38, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_23, _SI_GUID_31, _SI_GUID_39, 'page__library_jquery', 0, '', 0, '', 0, '', '{}'),
(_SI_GUID_40, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_6, 'pages_blocks', 1, '{\"tag\":\"nav\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"nav\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"nav\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', '{}'),
(_SI_GUID_41, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_34, _SI_GUID_0, 'pages_blocks', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', '{}'),
(_SI_GUID_42, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_23, _SI_GUID_31, _SI_GUID_43, 'page__library_jqueryui', 1, '', 1, '', 1, '', '{}'),
(_SI_GUID_44, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_0, 'page__block_Header', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":{\"cxcvxcv\":\"erterterte\",\"dfgdfg\":\"fgwsadfer\",\"trhrfdgt\":\"dsfvsf\"}}', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":{\"cxcvxcv\":\"erterterte\",\"dfgdfg\":\"fgwsadfer\",\"trhrfdgt\":\"dsfvsf\"}}', 0, '{\"tag\":\"header\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":{\"cxcvxcv\":\"erterterte\",\"dfgdfg\":\"fgwsadfer\",\"trhrfdgt\":\"dsfvsf\"}}', '{\"tag\":\"header\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"},\"options\":{\"cxcvxcv\":\"erterterte\",\"dfgdfg\":\"fgwsadfer\",\"trhrfdgt\":\"dsfvsf\"}}'),
(_SI_GUID_45, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_46, 'pages_blocks', 0, '', 0, '', 3, '{\"tag\":\"div\",\"style\":{\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"Black\"},\"options\":[]}', '{}'),
(_SI_GUID_47, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_6, 'page__block_Menu', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"200px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"200px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"200px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"100px\",\"width\":\"300px\",\"height\":\"60px\"},\"options\":[]}'),
(_SI_GUID_48, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_13, _SI_GUID_15, _SI_GUID_49, _SI_GUID_50, 'user__role_Admin', 0, '', 0, '', 0, '', '{}'),
(_SI_GUID_51, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_32, _SI_GUID_6, 'pages_blocks', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"53%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"53%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"53%\",\"top\":\"150px\",\"width\":\"413px\",\"height\":\"60px\"},\"options\":[]}', '{}'),
(_SI_GUID_52, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_34, _SI_GUID_6, 'pages_blocks', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"52%\",\"top\":\"150px\",\"width\":\"410px\",\"height\":\"60px\"},\"options\":[]}', '{}'),
(_SI_GUID_53, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_33, _SI_GUID_0, 'pages_blocks', 0, '', 0, '', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\"}}', '{}'),
(_SI_GUID_54, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_34, _SI_GUID_2, 'pages_blocks', 3, '{\"tag\":\"footer\",\"style\":{\"position\":\"relative\",\"width\":\"100%\",\"height\":\"100px\",\"bottom\":\"0px\",\"background-color\":\"rgba(0,0,0,1)\"},\"options\":[]}', 3, '{\"tag\":\"footer\",\"style\":{\"position\":\"relative\",\"width\":\"100%\",\"height\":\"100px\",\"bottom\":\"0px\",\"background-color\":\"rgba(0,0,0,1)\"},\"options\":[]}', 3, '{\"tag\":\"footer\",\"style\":{\"position\":\"relative\",\"width\":\"100%\",\"height\":\"100px\",\"bottom\":\"0px\",\"background-color\":\"rgba(0,0,0,1)\"},\"options\":[]}', '{}'),
(_SI_GUID_55, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_32, _SI_GUID_0, 'pages_blocks', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"height\":\"1000px\"},\"options\":[]}', '{}'),
(_SI_GUID_56, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_0, 'pages_blocks', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', '{}'),
(_SI_GUID_57, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_35, _SI_GUID_2, 'pages_blocks', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(0,0,0,1)\",\"bottom\":\"0px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(0,0,0,1)\",\"bottom\":\"0px\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(0,0,0,1)\",\"bottom\":\"0px\"},\"options\":[]}', '{}'),
(_SI_GUID_58, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_4, 'pages_blocks', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(125,222,61,0.082)\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(125,222,61,0.082)\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(125,222,61,0.082)\"},\"options\":[]}', '{}'),
(_SI_GUID_59, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_34, _SI_GUID_46, 'pages_blocks', 4, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"400px\"}}', 4, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"400px\"}}', 4, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"400px\",\"background-color\":\"rgba(6,6,6,1)\"},\"options\":[]}', '{}'),
(_SI_GUID_60, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_46, 'pages_blocks', 5, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(8,8,8,1)\",\"position\":\"relative\"},\"options\":[]}', 5, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(8,8,8,1)\",\"position\":\"relative\"},\"options\":[]}', 5, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"500px\",\"background-color\":\"rgba(8,8,8,1)\",\"position\":\"relative\"},\"options\":[]}', '{}'),
(_SI_GUID_61, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_34, _SI_GUID_5, 'pages_blocks', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"-600px\",\"width\":\"100%\",\"height\":\"600px\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"-600px\",\"width\":\"100%\",\"height\":\"600px\"},\"options\":[]}', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"-600px\",\"width\":\"100%\",\"height\":\"600px\"},\"options\":[]}', '{}'),
(_SI_GUID_62, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_2, 'pages_blocks', 3, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"0px\"},\"options\":[]}', 3, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"0px\"},\"options\":[]}', 3, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"bottom\":\"0px\"},\"options\":[]}', '{}'),
(_SI_GUID_63, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_2, 'pages_blocks', 3, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"position\":\"absolute\",\"bottom\":\"0px\"},\"options\":[]}', 3, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"position\":\"absolute\",\"bottom\":\"0px\"},\"options\":[]}', 3, '{\"tag\":\"footer\",\"style\":{\"width\":\"100%\",\"height\":\"100px\",\"background-color\":\"rgba(1,1,1,1)\",\"position\":\"absolute\",\"bottom\":\"0px\"},\"options\":[]}', '{}'),
(_SI_GUID_64, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_3, 'page__block_Login', 2, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"75%\",\"top\":\"15px\",\"width\":\"300px\",\"height\":\"120px\"},\"options\":[]}', 2, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"75%\",\"top\":\"15px\",\"width\":\"300px\",\"height\":\"120px\"},\"options\":[]}', 2, '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"75%\",\"top\":\"15px\",\"width\":\"300px\",\"height\":\"120px\"},\"options\":[]}', '{\"tag\":\"section\",\"style\":{\"position\":\"absolute\",\"left\":\"75%\",\"top\":\"20px\",\"width\":\"250px\",\"height\":\"120px\"},\"options\":[]}'),
(_SI_GUID_65, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_35, _SI_GUID_0, 'pages_blocks', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"relative\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"1000px\"},\"options\":[]}', '{}'),
(_SI_GUID_66, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_36, _SI_GUID_67, 'pages_blocks', 0, '', 0, '', 2, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"900px\"}}', '{}'),
(_SI_GUID_68, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_31, _SI_GUID_69, 'pages_blocks', 0, '', 0, '', 4, '{\"tag\":\"div\",\"style\":{\"position\":\"static\",\"left\":\"0px\",\"top\":\"0px\",\"width\":\"100%\",\"height\":\"500px\"}}', '{}'),
(_SI_GUID_70, 'active', _SI_NOWTIME_, NULL, _SI_GUID_14, _SI_GUID_20, _SI_GUID_1, _SI_GUID_35, _SI_GUID_8, 'pages_blocks', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"25%\",\"top\":\"200px\",\"width\":\"50%\",\"height\":\"150px\"},\"options\":[]}', 0, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"25%\",\"top\":\"200px\",\"width\":\"50%\",\"height\":\"150px\"},\"options\":[]}', 1, '{\"tag\":\"div\",\"style\":{\"position\":\"absolute\",\"left\":\"25%\",\"top\":\"200px\",\"width\":\"50%\",\"height\":\"150px\"},\"options\":[]}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `securityroles`
--

CREATE TABLE `securityroles` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT '{"entity":"entities"}',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"securityroles", "SN":"securityrole"}';

--
-- Dumping data for table `securityroles`
--

INSERT INTO `securityroles` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `name`, `rules`) VALUES
(_SI_GUID_71, 'active', _SI_NOWTIME_, NULL, _SI_GUID_15, 'Guest', '{\"_SI_GUID_1\":{\"name\":\"blocks\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_18\":{\"name\":\"localtext\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_22\":{\"name\":\"media\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_20\":{\"name\":\"pages\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_21\":{\"name\":\"pagetemplates\",\"create\":\"false\",\"read\":\"false\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_16\":{\"name\":\"preferences\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_14\":{\"name\":\"relations\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_15\":{\"name\":\"securityroles\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_19\":{\"name\":\"sessions\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_17\":{\"name\":\"settings\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_13\":{\"name\":\"users\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"}}'),
(_SI_GUID_50, 'active', _SI_NOWTIME_, NULL, _SI_GUID_15, 'Admin', '{\"_SI_GUID_1\":{\"name\":\"blocks\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_18\":{\"name\":\"localtext\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_22\":{\"name\":\"media\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_20\":{\"name\":\"pages\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_21\":{\"name\":\"pagetemplates\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_16\":{\"name\":\"preferences\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_14\":{\"name\":\"relations\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_15\":{\"name\":\"securityroles\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_19\":{\"name\":\"sessions\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_17\":{\"name\":\"settings\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"},\r\n\"_SI_GUID_13\":{\"name\":\"users\",\"create\":\"true\",\"read\":\"true\",\"write\":\"true\",\"append\":\"true\",\"appendTo\":\"true\",\"delete\":\"true\"}}'),
(_SI_GUID_72, 'active', _SI_NOWTIME_, NULL, _SI_GUID_15, 'Tester', '{\"_SI_GUID_1\":{\"name\":\"blocks\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_18\":{\"name\":\"localtext\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_22\":{\"name\":\"media\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_20\":{\"name\":\"pages\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_21\":{\"name\":\"pagetemplates\",\"create\":\"false\",\"read\":\"false\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_16\":{\"name\":\"preferences\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_14\":{\"name\":\"relations\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_15\":{\"name\":\"securityroles\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_19\":{\"name\":\"sessions\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_17\":{\"name\":\"settings\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"},\"_SI_GUID_13\":{\"name\":\"users\",\"create\":\"false\",\"read\":\"true\",\"write\":\"false\",\"append\":\"false\",\"appendTo\":\"false\",\"delete\":\"false\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` binary(16) NOT NULL,
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `sessionid` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `user_id` binary(16) DEFAULT NULL COMMENT 'entity:users',
  `ipaddress` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `mibdirs` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mysql_home` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openssl_conf` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `php_pear_sysconf_dir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phprc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_host` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_connection` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_pragma` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_cache_control` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_upgrade_insecure_requests` int(11) DEFAULT NULL,
  `http_user_agent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_accept` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_accept_encoding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_accept_language` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_cookie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systemroot` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comspec` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `windir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_signature` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_software` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_addr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_port` int(11) DEFAULT NULL,
  `remote_addr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_root` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_scheme` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context_prefix` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context_document_root` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_admin` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_filename` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_port` int(11) DEFAULT NULL,
  `gateway_interface` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_protocol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_string` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_name` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `php_self` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time_float` decimal(15,4) DEFAULT NULL,
  `request_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"sessions", "SN":"session"}';

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) NOT NULL COMMENT 'entity:entities',
  `settingname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settingvalue` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"settings", "SN":"setting"}';

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `settingname`, `settingvalue`) VALUES
(_SI_GUID_73, 'active', _SI_NOWTIME_, NULL, _SI_GUID_17, 'DefaultTimeZone', '__SI_DEFAULT_TIMEZONE__'),
(_SI_GUID_74, 'active', _SI_NOWTIME_, NULL, _SI_GUID_17, 'DefaultLanguage', '__SI_DEFAULT_LANGUAGE__'),
(_SI_GUID_75, 'active', _SI_NOWTIME_, NULL, _SI_GUID_17, 'DefaultCurrency', '__SI_DEFAULT_CURRENCY__'),
(_SI_GUID_76, 'active', _SI_NOWTIME_, NULL, _SI_GUID_17, 'NotificationEmail', '__SI_DEFAULT_NOTEEMAIL__');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` binary(16) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdon` datetime NOT NULL DEFAULT current_timestamp(),
  `modifiedon` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `entity_id` binary(16) DEFAULT NULL COMMENT 'entity:entities',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remembertoken` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remembertime` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='{"EN":"users", "SN":"user"}';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `status`, `createdon`, `modifiedon`, `entity_id`, `name`, `email`, `password`, `remembertoken`, `remembertime`) VALUES
(_SI_GUID_49, 'active', _SI_NOWTIME_, NULL, _SI_GUID_13, '__SI_USER_NAME__', '__SI_USER_EMAIL__', '__SI_USER_PASSWORD__', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`);

--
-- Indexes for table `blocktemplates`
--
ALTER TABLE `blocktemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`);

--
-- Indexes for table `businessunits`
--
ALTER TABLE `businessunits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain_id` (`domain_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entityid` (`entity_id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain_id` (`domain_id`),
  ADD KEY `businessunit_id` (`businessunit_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localtext`
--
ALTER TABLE `localtext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityid` (`entity_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityid` (`entity_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entityid` (`entity_id`),
  ADD KEY `redirecttopage_id` (`redirecttopage_id`);

--
-- Indexes for table `pagetemplates`
--
ALTER TABLE `pagetemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`),
  ADD KEY `entity_id` (`entity_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settingname` (`name`),
  ADD KEY `entityid` (`entity_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `parententity_id` (`parententity_id`),
  ADD KEY `childentity_id` (`childentity_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `securityroles`
--
ALTER TABLE `securityroles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `entityid` (`entity_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessionid` (`sessionid`),
  ADD KEY `ipaddress` (`ipaddress`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sessions_ibfk_1` (`entity_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settingname` (`settingname`),
  ADD KEY `status` (`status`),
  ADD KEY `entityid` (`entity_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `entityid` (`entity_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
