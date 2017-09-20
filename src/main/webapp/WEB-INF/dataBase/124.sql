-- MySQL dump 10.13  Distrib 5.5.27, for Win64 (x86)
--
-- Host: localhost    Database: host9723253
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `ID` varchar(40) NOT NULL,
  `USERNAME` varchar(40) DEFAULT NULL,
  `PHONE` varchar(40) DEFAULT NULL,
  `PARENTID` varchar(40) DEFAULT NULL,
  `APPLY_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` (`ID`, `USERNAME`, `PHONE`, `PARENTID`, `APPLY_TIME`) VALUES ('2','李四','151256','1','2017-05-11 07:19:52'),('87bb23e4-83f7-451b-a85d-fe2d1a58cc79','jhjh','65165165','42c1e429-e463-4dc3-b030-047ccc804bc1','2017-06-05 03:06:32'),('f50b38a2-ef3b-41b1-8abd-7c5c44bae445','刘晓光','13294099983','42c1e429-e463-4dc3-b030-047ccc804bc1','2017-06-11 09:04:16'),('fa4d9fa9-4de3-4a8c-a14c-ebdf042e7204','柴','4151456','1','2017-05-17 16:27:22');
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv` (
  `ID` varchar(40) NOT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `SEX` int(40) DEFAULT NULL,
  `AGE` varchar(40) DEFAULT NULL,
  `INDUSTRY` varchar(40) DEFAULT NULL,
  `POSITION` varchar(40) DEFAULT NULL,
  `MONEY` varchar(40) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `PHONE` varchar(40) DEFAULT NULL,
  `QQ` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `WORKING_EXPERIENCE` varchar(500) DEFAULT NULL,
  `EDUCATION_EXPERIENCE` varchar(500) DEFAULT NULL,
  `SKILLS_EXPERTISE` varchar(500) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
INSERT INTO `cv` (`ID`, `NAME`, `SEX`, `AGE`, `INDUSTRY`, `POSITION`, `MONEY`, `ADDRESS`, `PHONE`, `QQ`, `EMAIL`, `WORKING_EXPERIENCE`, `EDUCATION_EXPERIENCE`, `SKILLS_EXPERTISE`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`) VALUES ('066dc7a8-1cb7-44e7-91bc-dd8f9c876dbe','dfs ',0,'','','','51.0','','49815819819sadfsdafewr ','','sdf@qq.com','','','','2017-06-04 16:00:00','dfs ',NULL,'2017-06-05 02:49:34'),('4eb52378-6b74-43a7-9a80-5d21882b7768','电视费盖饭的是',0,'','','','41.0','','1651919891898918','','2@qq.com','ddsgret','tyt hgf','tyytyt','2017-06-04 16:00:00','电视费盖饭的是',NULL,'2017-06-05 02:49:02'),('586a2dd2-38d2-484d-91c6-d86579655583','fdg ',1,'','','','0.0','','f三德歌范德萨','','12@qq.com','','','','2017-06-04 16:00:00','fdg ',NULL,'2017-06-05 02:45:34'),('6b7cbaa1-dc34-4518-bb9f-5e02fdc589d8','3245',0,'546','35','456','64.0','64','45',NULL,'4','5','sfdk\r\n    ksdfjdks','465','2017-05-06 16:00:00',NULL,'admin','2017-05-09 02:47:30'),('8e696268-329a-4659-8eb8-8d90e221f89f','建刚',0,'23','四级','it','500.0','北京','1534543','1546','123@qq.com','的','大耳朵','读取','2017-05-16 16:00:00','建刚',NULL,'2017-05-16 16:58:33'),('96098e10-f40c-4b6a-a1cd-d1e838247728','哈哈',0,'24','','','900.0','','12','','123@qq.com','','','','2017-06-05 16:00:00','哈哈',NULL,'2017-06-06 14:54:24');
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img` (
  `ID` varchar(40) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `PARENTID` varchar(40) DEFAULT NULL,
  `SUBPERSON` varchar(40) DEFAULT NULL,
  `SUB_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ORDERNO` varchar(40) DEFAULT NULL,
  `ISCROSS` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` (`ID`, `ADDRESS`, `PARENTID`, `SUBPERSON`, `SUB_TIME`, `ORDERNO`, `ISCROSS`) VALUES ('0dc9b253-0137-4754-b77e-cc79f7fee9cd','/upload/764043c5-124c-46a8-8b0a-6967752527c6logo_07.png','22d976c5-1ab8-4c44-aa69-80e7e92ac9bd','admin','2017-05-20 05:53:16','6',1),('14e66dd6-36bc-4723-ac8e-085ac8a4cd1d','/upload/53695a5e-4f96-4050-aebd-8d08ebbdc001logo_09.png','f3a7e11a-663e-49cb-b670-ec7af40a0e57','admin','2017-05-20 12:40:27','11',1),('19afa674-de62-4822-8558-c46e6e228efc','/upload/612a2999-1bdc-45ee-9340-b53a8af1f3b6rsdl.jpg','25','admin','2017-05-21 01:54:22','1',1),('19d38c11-b6f8-47be-95df-ab90bd4c3cf9','/upload/2c074729-253d-4ad6-b329-31f0254f78f7rczp.jpg','24','admin','2017-05-21 01:54:01','1',1),('1d0e14c4-da3c-4bc4-b477-6f01219ea05d','/upload/95db5b71-0a37-4b8b-a2dc-b29285bf69f71245.jpg','15','admin','2017-05-15 10:49:48','1',1),('22801c14-9b3e-440a-94ae-9fffcf21056b','/upload/c5b0e1ce-4bea-4f92-ba4c-735465a1b3e258D51C0875861C994A87D6C1F6C1D519.png','14','admin','2017-05-13 11:15:43','2',1),('2526bc1b-cef0-4939-ac14-1f1b83281a22','/upload/aae9007d-e65d-4dd4-87f8-c24c80c92852logo_09.png','2a02e411-24f8-4e64-8e23-b00e6415d917','admin','2017-05-20 12:33:18','8',1),('3096016d-b5ee-41a1-bb1e-1ac8c6378268','/upload/79513db5-13f9-42f6-8ec5-4d371944d7f8logo_07.png','504ccfe2-f83c-4915-9916-699b2bc90a7d','admin','2017-05-20 05:52:18','4',1),('3f4597c3-30d2-4b3e-94e8-8c650b76aa1d','/upload/2f82fa22-53f3-43c2-9e0e-6d12c9a932a3zxpx.jpg','26','admin','2017-05-21 01:54:42','1',1),('4ae126ed-dfb7-416c-9ec6-faf129c4b3e5','/upload/c7af85f6-7a57-4f8b-9095-b034556702fegwyy.jpg','23','admin','2017-05-21 01:53:44','1',1),('4befaeca-e0a6-4be8-9ebd-d0c411c50b39','/upload/42e6f7b1-d17e-45ac-a586-4611e9cdef6alogo_09.png','2dbf23ed-1bca-4835-9f21-ba12efb05289','admin','2017-05-20 12:40:04','10',1),('504805ba-3382-45e8-9fbd-d46bd6cd319e','/upload/9dbeb0d7-0f31-4dbf-be30-3d10579ec39abananr-3.jpg','0c12e6fa-c4b2-4693-9537-2c7035642a2f','admin','2017-05-23 08:26:15','1',1),('5204ae4d-c497-4bec-b418-0732749623fa','/upload/d35cfde6-8686-4ff5-9f92-dfff1f726d19logo_07.png','60ab62a8-5f53-4998-9626-2ce4463aef63','admin','2017-05-20 05:51:21','2',1),('715b15a9-8510-42f5-9755-b93ce7c24f2e','/upload/ca1ea073-6844-490a-a35a-4f3f88c3858ebananr-3.jpg','1','admin','2017-05-20 17:02:46','5',1),('74bc27e6-2519-4cfd-ac2a-a342abe255a3','/upload/4d75f9c7-5703-4487-a4ee-a28a5741d28alogo_09.png','7cef39be-9eee-4d8c-8612-1fd0d12c10ff','admin','2017-05-20 12:40:42','12',1),('787b5785-0068-4e47-ab5b-014afade5d6d','/upload/911e70cb-1957-4fd0-bade-5d4cf2fed20alwwb.jpg','21','admin','2017-05-21 01:53:01','1',1),('8128dee8-ae03-4622-a66a-fea7846aa51e','/upload/df188e4e-ad8a-4381-9a1d-a5057ee68ce0logo_09.png','d7a3555a-8788-4152-bb9a-3e34217236d7','admin','2017-05-20 12:39:42','9',1),('920e2b8a-c3f6-41c1-8ef6-22f6fe850dd5','/upload/5236eb75-dfb1-4435-a6c9-965047055b94logo_07.png','efdf9663-c1d8-43ad-86b1-8448a08cefa5','admin','2017-05-20 05:51:51','3',1),('99854f1b-2b9d-4db3-9995-342b9019c965','/upload/a59198f9-9ff4-4d2e-9bd2-d38c04d888dflogo_09.png','8f6dbf29-5c4c-41b2-9f98-8bc51d189f8f','admin','2017-05-20 12:32:45','7',1),('9a59c4e1-57c9-499a-9d26-61b4d3449624','/upload/c4b91153-1e64-48ff-97a7-788705041033img_bg.png','1','admin','2017-05-20 17:00:52','1',1),('9ce5b9d5-a12d-433e-89f5-21849977b921','/upload/a2ba4723-69f8-4a92-b42d-8220c0c58076bananr.jpg','1','admin','2017-05-20 17:01:10','2',1),('cba00065-d32d-4716-8f6c-a73906cef1b6','/upload/3fb21aa4-bcce-43f2-870e-ad6eb64b77abbananr-2.jpg','1','admin','2017-05-20 17:01:40','3',1),('cef40823-4597-4783-8073-7357df5ea111','/upload/13276c3d-c190-4928-8ac9-0582c8666774197687394812938312.jpg','15','admin','2017-05-15 10:44:52','2',1),('d7357294-75f5-4a70-bdd8-cfc7dacc32a0','/upload/6c015010-e79c-44c9-8bcd-c699f0237b50timg1.jpg','12','admin','2017-05-13 08:42:33','1',1),('de87fcdc-35de-4455-9a55-dde4f467eeaf','/upload/8270a1a0-d506-41bc-9302-aa31cf1f4b2clwpq.jpg','22','admin','2017-05-21 01:53:21','1',1),('e17ee19c-867d-421e-af0c-a41f89ca8ffb','/upload/0c4f46b4-802f-4279-ad71-e3b7592d808d0C7FA02B40832900D69C6C13C7FE3010.png','14','admin','2017-05-13 11:14:17','1',1),('e24e2fd8-975a-42ca-9a9c-9dc503b310d3','/upload/1f82ccb6-7ed9-46ec-8ed4-1e909e78d60etimg.jpg','11','admin','2017-05-13 08:11:11','1',1),('ede881d3-b742-4724-a78e-3621b11569be','/upload/590e3124-35de-4579-9d48-e6891d83a764logo_07.png','51','admin','2017-05-20 01:27:14','1',1),('f9728560-627e-4ec5-a2e6-296769adbd80','/upload/41376f6d-a48e-4ebb-b3fa-cfef74ceefd2zhici.jpg','13','admin','2017-05-13 11:04:48','1',1),('fa09e6f5-b699-426f-8c7b-3b8645017934','/upload/27b91be6-79e1-4e33-8bf9-db588b38efcabananr1.jpg','1','admin','2017-05-20 17:01:23','3',1);
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavemsg`
--

DROP TABLE IF EXISTS `leavemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavemsg` (
  `ID` varchar(40) NOT NULL,
  `USERNAME` varchar(40) DEFAULT NULL,
  `PHONE` varchar(40) DEFAULT NULL,
  `QQ` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `SUBJECT` varchar(40) DEFAULT NULL,
  `CONTENT` longtext,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavemsg`
--

LOCK TABLES `leavemsg` WRITE;
/*!40000 ALTER TABLE `leavemsg` DISABLE KEYS */;
INSERT INTO `leavemsg` (`ID`, `USERNAME`, `PHONE`, `QQ`, `EMAIL`, `ADDRESS`, `SUBJECT`, `CONTENT`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`) VALUES ('90d65950-d57c-40e0-b7da-c186b2a7331e','的双方各','','','dcsdaf@qq.com','','最近干嘛呢','吃饭呢','2017-06-05 02:29:51','的双方各',NULL,'2017-06-05 02:29:51'),('93204fd0-1956-433f-84f7-1c16d6dd000b','ter','te','tre','156@qq.com','hfg','tre ','ter','2017-05-27 13:23:38','ter',NULL,'2017-05-27 13:23:38');
/*!40000 ALTER TABLE `leavemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part` (
  `ID` varchar(40) NOT NULL,
  `TITLE` varchar(40) DEFAULT NULL,
  `PARENTID` varchar(40) DEFAULT NULL,
  `CONTENT` longtext,
  `ORDERNO` varchar(40) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` (`ID`, `TITLE`, `PARENTID`, `CONTENT`, `ORDERNO`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`) VALUES ('06c01e26-1028-4993-947d-614b9841cc65','h富士康等方面','42','夹克雷锋精神快递费','1','2017-05-18 13:09:06','admin',NULL,'2017-05-18 13:09:06'),('0c12e6fa-c4b2-4693-9537-2c7035642a2f','雷能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','3','2017-05-20 01:29:11','admin',NULL,'2017-05-20 01:29:12'),('1','首页幻灯片','0',NULL,NULL,'2017-05-12 03:47:59','admin','admin','2017-05-12 03:47:59'),('11','公司简介','1',' 张家口“聚优”是专注于提供人力资源服务的机构，目前由张家口市聚优人力资源服务有限公司和张家口聚优企业运营管理服务有限公司组成。聚优人力资源服务有限公司成立于2012年8月，在公司快速发展的同时，为顺应当前政策法规相关要求以及能够更深入、更广泛的满足各行业用工需求，于2015年4月成立了张家口聚优企业运营管理服务有限公司。两家公司均由工商行政管理部门注册登记，具有独立法人资格，注册资金共计400万。<br> 聚优人力资源服务有限公司是张家口市首家获得劳务派遣资质的人力资源公司，聚优企业运营管理服务有限公司也是河北省首家获得企业运营资质的服务公司。公司凭借先进的运营模式，以及专业的管理团队，在国内众多领域提供优质的人力资源服务。','1','2017-05-02 16:00:00','admin','admin','2017-05-05 21:08:32'),('12','成长历程','1','聚优人力资源服务有限公司成立于2012年8月，在公司快速发展的同时，为顺应当前政策法规相关要求以及能够更深入、更广泛的满足各行业用工需求，于2015年4月成立了张家口聚优企业运营管理服务有限公司。两家公司均由工商行政管理部门注册登记，具有独立法人资格，注册资金共计400万。<br> 聚优人力资源服务有限公司是张家口市首家获得劳务派遣资质的人力资源公司，聚优企业运营管理服务有限公司也是河北省首家获得企业运营资质的服务公司。公司凭借先进的运营模式，以及专业的管理团队，在国内众多领域提供优质的人力资源服务。<br><STRONG>经营目标：</STRONG>公司致力于政策引导、改革创新，以满足企业用工需求为己任，优化企业内部人才结构，提高企业核心竞争力。<BR><BR><STRONG>服务理念：“</STRONG>聚优”立足于踏踏实实做人、认认真真做事的服务宗旨，坚持深入细致的调查研究，为企业提供科学的人力资源服务方案，凭借专业的办公设备、完善的管理体系、优秀的管理团队，为企业提供“一站式”服务。<BR><BR><STRONG>服务特色：</STRONG>卓越、创新、朝气、担当、共赢<BR><BR><STRONG>服务项目：</STRONG>岗位运营、劳务派遣、人事代理、人才招聘、猎头、培训&nbsp;、咨询.','2','2017-05-05 21:39:12','admin','admin','2017-05-05 21:39:12'),('13','经理致辞','1','尊敬的客户：<BR> 您好！<BR> 首先感谢您在百忙之中打开我公司网站，当您进入网站的时候，您可能已经为我们的合作打开了第一扇大门，在这短短的时间里，您也对我们“聚优”有了一定的了解。<BR>“聚优”是一家致力于人力资源和企业运营管理的服务公司。公司成立于2012年，我们是一个踏实、认真的团队，在公司成立短短两年多的时间里，我们取得了不小的成果，与国内多家人力资源公司达成合作伙伴关系，服务企业几十家，服务员工数千人，在未来的一年里，公司计划与多家网络平台形成营销战略联盟。<BR>最后，再次感谢您能够进入我公司网站，您的意见和建议会给我们带来巨大的帮助，希望在您方便的时候能得到与您面谈的机会，期待与您合作！','3','2017-05-05 21:43:44','admin','admin','2017-05-05 21:43:44'),('14','公司荣誉','1',NULL,'4','2017-05-05 21:45:57','admin','admin','2017-05-05 21:45:57'),('15','工作环境','1',NULL,'5','2017-05-06 03:24:53','admin','admin','2017-05-06 03:24:53'),('21','劳务外包','2','企业管理服务是指运用各种方法，帮助企业对人员，机器，原材料，资产，信息，品牌， 销售渠道等进行科学管理服务。涵盖人力资源管理，行政管理，采购管理，财务管理，研发管理，生产管理，营销管理等。服务对象分为业务管理和行为管理，业务管理侧重对组织各种资源的管理，比如：财务，材料，产品等。而行为管理侧重对组织成员行为的管理，比如组织构建，机制变革，激励，工作计划，个人与团队协作，文化等。','1','2017-05-05 16:00:00','admin','admin','2017-05-06 07:27:24'),('22','劳务派遣','2','运营服务，水电工程，网络服务，绿化工程，环保工程，石油化工工程的施工；代办电信，移动，联通业务，通信工程维护；电器工程维护检修。','2','2017-05-05 16:00:00','admin','admin','2017-05-06 07:40:09'),('22d976c5-1ab8-4c44-aa69-80e7e92ac9bd','电能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','4','2017-05-20 01:29:43','admin',NULL,'2017-05-20 01:29:43'),('23','岗位运营','2','岗位外包是指企业将自己业务或岗位、职能等整体外包给第三方机构，由第三方机构安排人员、调配资源按照企业的要求完成相应的业务、岗位或职能工作内容，企业不承当劳务人员的劳动关系，只负责支付相关劳务外包费用。 （岗位外包也称为：业务外包、劳务外包、工作外包）','3','2017-05-05 16:00:00','admin','admin','2017-05-06 07:56:44'),('24','人才招聘','2','劳务派遣指劳务派遣单位分别与劳动者签订劳动合同，建立合法的劳务派遣关系，与用工单位签订劳务派遣协议，建立劳务派遣合作关系。用工单位提供劳动岗位，只会，管理被派遣劳动者工作，并向劳务派遣单位支付劳动者工资，社会保险，劳务派遣管理费等相关费用。','4','2017-05-05 16:00:00','admin','admin','2017-05-06 09:37:13'),('25','人事代理','2','人事代理服务是指对企业的人事管理进行代理，其中包括社会保险代理，以及住房公积金的代理，和对企业的人事招聘代理。','5','2017-05-05 16:00:00','admin','admin','2017-05-06 11:37:04'),('26','资讯培训','2','我公司结合不同发展阶段的客户实际状况，致力于全面的了解行业、准确分析和定位客户的需求，利用专业的人才网络渠道和高端人才资源库，进行人才寻访，面试，测评，精准高效为客户寻访到最合适的顶尖人才，建立长期的跟踪服务体系和稳固的企业战略合作关系。','6','2017-05-06 16:00:00','admin','admin','2017-05-07 03:46:09'),('261','优势','26','快速，准确，优秀，企业的满意为宗旨，人才的接受为根本。','1','2017-05-07 03:48:05','admin','admin','2017-05-07 03:48:05'),('2a02e411-24f8-4e64-8e23-b00e6415d917','木','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','8','2017-05-20 12:29:07','admin',NULL,'2017-05-20 12:29:07'),('2dbf23ed-1bca-4835-9f21-ba12efb05289','火','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','10','2017-05-20 12:29:40','admin',NULL,'2017-05-20 12:29:40'),('31','会计人员','3','会计人员是指从事会计工作的专职人员。<br>主要职责:一是进行会计核算；二是实行会计监督；三是拟订本单位办理会计事务的具体办法；四是参与拟订经济计划、业务计划，考核、分析预算、财务计划的执行情况；五是办理其它会计事务。<br>要求:会计人员必须有相应的会计从业资格。而会计从业证则是会计人员从事会计工作的必备资格证书，也是从事会计行业所必须的唯一合法的有效证件。是会计人员进入会计行业的门槛。属地管理，全国通用。会计从业资格证也是考会计职称的前提条件。','1','2017-05-06 16:00:00','admin','admin','2017-05-07 06:43:03'),('33','司机','3','负责公司的运输，以及车辆的维修以及保养。','3','2017-05-07 05:41:39','admin','admin','2017-05-07 05:41:39'),('34','销售','3','负责公司产品的销售','4','2017-05-07 05:47:51','admin','admin','2017-05-07 05:47:51'),('35','普工','3','普通工人','5','2017-05-07 05:49:00','admin','admin','2017-05-07 05:49:00'),('41','公司新闻','4','和公司相关的新闻','1','2017-05-08 05:36:24','admin','admin','2017-05-08 05:36:24'),('42','行业资讯','4','行业相关的资讯','2','2017-05-08 05:37:44','admin','admin','2017-05-08 05:37:44'),('43','政策问答','4','与政策相关的问答','3','2017-05-08 05:38:33','admin','admin','2017-05-08 05:38:33'),('504ccfe2-f83c-4915-9916-699b2bc90a7d','雪能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','5','2017-05-20 01:30:03','admin',NULL,'2017-05-20 01:30:03'),('51','风能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','1','2017-05-10 08:55:13','admin','admin','2017-05-10 08:55:13'),('60ab62a8-5f53-4998-9626-2ce4463aef63','雨能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','2','2017-05-20 01:28:50','admin',NULL,'2017-05-20 01:28:50'),('61','张家口聚优','6','http://www.zjkjyrl.icoc.in/','1','2017-05-11 09:00:08','admin','admin','2017-05-11 09:00:08'),('7b6128ca-3ebf-4a1c-bfa4-6d692e716447','放假撒','43','放假啊商品房\r\n房间爱上咖啡\r\n放假啊上岛咖啡\r\n附近的书房里','2','2017-05-18 13:28:57','admin',NULL,'2017-05-18 13:28:57'),('7cef39be-9eee-4d8c-8612-1fd0d12c10ff','墙','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','12','2017-05-20 12:30:20','admin',NULL,'2017-05-20 12:30:20'),('7dd1a578-0881-469e-8169-ad3ca929bd38','分手卡了','43','发生DNF哪里看&nbsp;','3','2017-05-18 13:29:24','admin',NULL,'2017-05-18 13:29:24'),('8396fe07-8391-49df-be8f-0b314700ed99','人力资源社会保障部财政部关于失业保险支持参保职工提升职业技能有关问题的通知','42','各省、自治区、直辖市及新疆生产建设兵团人力资源社会保障厅（局）、财政（财务）厅（局）：\r\n　　为贯彻落实《国务院关于做好当前和今后一段时期就业创业工作的意见》（国发〔2017〕28号）关于“依法参加失业保险3年以上、当年取得职业资格证书或职业技能等级证书的企业职工，可申请参保职工技能提升补贴，所需资金按规定从失业保险基金中列支”的要求，提升参加失业保险职工的职业技能，发挥失业保险促进就业作用，现就有关问题通知如下：\r\n　　一、申领条件\r\n　　同时符合以下条件的企业职工，可申领技能提升补贴：\r\n　　（一）依法参加失业保险，累计缴纳失业保险费36个月（含36个月）以上的。\r\n　　（二）自2017年1月1日起取得初级（五级）、中级（四级）、高级（三级）职业资格证书或职业技能等级证书的。\r\n　　二、审核程序\r\n　　（一）职工应在职业资格证书或职业技能等级证书核发之日起12个月内，到本人失业保险参保地失业保险经办机构，申领技能提升补贴。\r\n　　（二）失业保险经办机构通过职业资格证书或职业技能等级证书联网查询、与失业保险参保信息比对等方式进行审核。\r\n　　（三）失业保险经办机构按照规定程序对申请审核通过后，应直接将补贴资金发放至申请人本人的个人银行账户或社会保障卡。\r\n　　技能提升补贴申请、审核的具体程序和操作办法，由各省级人力资源社会保障部门、财政部门根据本地实际，本着方便、快捷、安全、审慎的原则制定，并主动向社会公开。\r\n　　三、补贴标准\r\n　　技能提升补贴的标准由省级人力资源社会保障部门、财政部门根据本地失业保险基金运行情况、职业技能培训、鉴定收费标准等因素综合确定，并适时调整。\r\n　　补贴标准应根据取得职业资格证书或职业技能等级证书有所区别。职工取得初级（五级）职业资格证书或职业技能等级证书的，补贴标准一般不超过1000元；职工取得中级（四级）职业资格证书或职业技能等级证书的，补贴标准一般不超过1500元；职工取得高级（三级）职业资格证书或职业技能等级证书的，补贴标准一般不超过2000元。\r\n　　各省（自治区、直辖市）可根据本地产业发展方向和人力资源市场需求，研究制定本地区紧缺急需的职业（工种）目录。技能提升补贴标准可向地区紧缺急需职业（工种）予以倾斜。\r\n　　同一职业（工种）同一等级只能申请并享受一次技能提升补贴。\r\n　　四、 资金使用\r\n　　在失业保险基金科目中设立技能提升补贴科目，所需资金从失业保险基金技能提升补贴科目中列支。\r\n　　各省（自治区、直辖市）要将技能提升补贴支出纳入失业保险基金预算管理，规范运作，切实保证基金有效使用和安全运行。要重点关注基金支付能力相对较弱的统筹地区，发挥省级调剂金的作用，确保每个地区符合条件的职工都能享受到政策。\r\n　　五、工作要求\r\n　　（一）加强组织领导。失业保险基金用于参保职工技能提升补贴，有利于引导职工提高职业技能水平和职业转换能力，从源头上减少失业、稳定就业；有利于弘扬工匠精神，推动我国由人力资源大国向人力资源强国迈进，为我国产业转型升级提供强有力的人才支撑。各级人力资源社会保障部门、财政部门要高度重视，将其作为失业保险预防失业、稳定就业的重要举措，精心组织、狠抓落实。要尽快制定实施办法，在6月30日前报人力资源社会保障部、财政部备案。\r\n　　（二）提高审核效率。以“规范、安全、便捷”为原则，整合利用现有资源，将受理、审核、发放、监督等工作纳入信息化管理，简化申报材料，优化审核流程，强化信息共享，完善服务标准，创新服务模式，提高经办服务质量。有条件的地区，可以运用电子政务手段，探索实行技能提升补贴网络在线申请、审核。\r\n　　（三）强化监督管理。职业技能鉴定机构要严格鉴定标准，严把证书发放质量。失业保险经办机构要建立与职业技能鉴定机构的信息共享、沟通协调机制，通过信息比对有效甄别证书的真实性，严防冒领、骗取补贴。制订补贴资金的审核、公示、拨付、监督等制度，严格财务管理和资金监管，防范廉洁风险。公示补贴发放情况，畅通投诉举报渠道，发挥社会监督作用。对违法违规行为，按规定追究相关责任。\r\n　　（四）加大宣传力度。设计编印通俗易懂的宣传材料，深入企业、街道、社区，开展形式多样的政策解读和集中宣传活动；在失业保险经办机构、职业技能鉴定机构、人力资源市场等场所，悬挂、张贴、发放宣传材料；运用广播电视、报纸期刊、微博微信等渠道宣传申领条件、申请办法、受理部门、办理时限。通过广泛宣传，使参保职工了解政策内容，熟悉办理程序，知晓办事场所，更方便更快捷地享受政策。\r\n　　本《通知》自印发之日起开始施行。各地在政策执行中遇到的重大问题应及时向人力资源社会保障部、财政部报告。人力资源社会保障部、财政部适时组织开展政策绩效评估，根据实际调整完善政策。\r\n\r\n                                                                                                                                           人力资源社会保障部\r\n                                                                                                                                                   财政部','3','2017-05-24 16:37:50','admin','admin','2017-05-18 15:04:59'),('8621dc94-9f48-4d00-b96d-283db09688fe','方式的非','43','阿斯蒂芬','5','2017-05-18 13:30:04','admin',NULL,'2017-05-18 13:30:04'),('8f6dbf29-5c4c-41b2-9f98-8bc51d189f8f','金','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','7','2017-05-20 12:28:45','admin',NULL,'2017-05-20 12:28:45'),('95bd1dc9-e1d6-4114-9d5a-06703a65d5bd','很反感','41','鬼地方个三、设计方案 四、网站结构设置 五、财务制度 六、网站管理 七、网站目标与进度安排v 一、需求分析 1、概述 ————大学是一所拥有约两万人的大学，这里面汇集了一大批年轻人，他们是这一代人中的姣姣者，他们的思想，他们的活动在很大程度上反映了当代年轻人的生存状态。把他们的活动，他们的思想整理发布出来，应该是一件很有意义的事，不管对我们年轻人，还是对其他人，都会有一定的影响。 因此，我们想建立一个网站，作为————大学最快最及时的信息资讯平台。','2','2017-05-18 15:13:23','admin','admin','2017-05-18 15:05:24'),('a20ca0b5-73ed-4405-8ecc-2b945c48b360','带惩戒','42','三、设计方案 四、网站结构设置 五、财务制度 六、网站管理 七、网站目标与进度安排v 一、需求分析 1、概述 ————大学是一所拥有约两万人的大学，这里面汇集了一大批年轻人，他们是这一代人中的姣姣者，他们的思想，他们的活动在很大程度上反映了当代年轻人的生存状态。把他们的活动，他们的思想整理发布出来，应该是一件很有意义的事，不管对我们年轻人，还是对其他人，都会有一定的影响。 因此，我们想建立一个网站，作为————大学最快最及时的信息资讯平台。','2','2017-05-18 15:13:48','admin','admin','2017-05-18 15:04:43'),('b3f270bc-6ae4-4589-be98-a586e72f37f5','sfwe','41','etwrtert','136','2017-05-08 16:00:00','',NULL,'2017-05-09 14:21:37'),('ce4721af-4484-4454-9dfa-9aee37c6c228','瑞文群恩乔哥','43','&nbsp;佛挡杀佛','6','2017-05-18 13:30:18','admin',NULL,'2017-05-18 13:30:18'),('d7a3555a-8788-4152-bb9a-3e34217236d7','水','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','9','2017-05-20 12:29:26','admin',NULL,'2017-05-20 12:29:26'),('efdf9663-c1d8-43ad-86b1-8448a08cefa5','霜能','5','2013年三月，聚优人力资源与沽源风电、康保风电、蔚州风电达成岗位运营合作，2015年3月再与之前三家风电单位顺利续签的同时，又与国投张家口风电达成岗位运营合作。 2016年1月，聚优企业运营管理服务有限公司与张家口兴唐电力检修有限公司达成合作。','6','2017-05-20 01:30:21','admin',NULL,'2017-05-20 01:30:21'),('f181f76b-fec5-4a0f-a649-626cdbe2cb6e','发的','41','三、设计方案 四、网站结构设置 五、财务制度 六、网站管理 七、网站目标与进度安排v 一、需求分析 1、概述 ————大学是一所拥有约两万人的大学，这里面汇集了一大批年轻人，他们是这一代人中的姣姣者，他们的思想，他们的活动在很大程度上反映了当代年轻人的生存状态。把他们的活动，他们的思想整理发布出来，应该是一件很有意义的事，不管对我们年轻人，还是对其他人，都会有一定的影响。 因此，我们想建立一个网站，作为————大学最快最及时的信息资讯平台。','3','2017-05-18 15:14:08','admin','admin','2017-05-18 15:05:37'),('f23bb27a-3781-463c-8cde-f952f72d40c5','找到','43','发货撒代理费吉林省地方吗\r\n     辅导费扩散发送到如来佛，','1','2017-05-18 13:05:04',NULL,NULL,'2017-05-18 13:05:04'),('f3a7e11a-663e-49cb-b670-ec7af40a0e57','土','5','你的意思是from表单get方式，然后在action=“”后面加上参数吗？这样出过去几个参数，不是要在action写几个接收参数的属性了吗？','11','2017-05-20 12:30:03','admin',NULL,'2017-05-20 12:30:03'),('fbc30dc7-af59-4a65-98cc-7c9be0de9e0e','放假撒都看了','43','发多少','4','2017-05-18 13:29:46','admin','admin','2017-05-18 13:29:36');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit`
--

DROP TABLE IF EXISTS `recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit` (
  `ID` varchar(40) NOT NULL,
  `TITLE` varchar(40) DEFAULT NULL,
  `RECRUITING` varchar(40) DEFAULT NULL,
  `NUM` varchar(40) DEFAULT NULL,
  `MONEY` varchar(40) DEFAULT NULL,
  `CONTENT` longtext,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REQUIREDDATE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit`
--

LOCK TABLES `recruit` WRITE;
/*!40000 ALTER TABLE `recruit` DISABLE KEYS */;
INSERT INTO `recruit` (`ID`, `TITLE`, `RECRUITING`, `NUM`, `MONEY`, `CONTENT`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`, `REQUIREDDATE`) VALUES ('1','家教','学生','1','1001','啥地方萨芬人当时','2017-05-10 16:00:00','admin','admin','2017-05-11 01:39:02','12'),('42c1e429-e463-4dc3-b030-047ccc804bc1','司机','有驾驶证的人','5','1200','黑手党机房呢','2017-05-10 16:00:00','admin','2017-05-11 10:50:19','2017-05-11 02:50:19','fsd');
/*!40000 ALTER TABLE `recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `ID` varchar(40) NOT NULL,
  `PARENTID` varchar(40) DEFAULT NULL,
  `CONTENT` longtext,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` (`ID`, `PARENTID`, `CONTENT`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`) VALUES ('0092cd8e-ef0a-4284-a070-a0cef025e860','1','qweqwe','2017-05-10 06:26:16','admin','admin','2017-05-10 07:05:23');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `ID` varchar(40) NOT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` (`ID`, `NAME`, `REMARK`) VALUES ('1','公司信息',NULL),('2','服务项目',NULL),('3','人才中心',NULL),('4','新闻管理',NULL),('5','留言管理',NULL),('6','案例管理',NULL),('7','招聘信息',NULL),('8','友情链接',NULL);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` varchar(40) NOT NULL,
  `USERNAME` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `ROLE` int(40) DEFAULT NULL,
  `LOSTLOGINIP` varchar(40) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `LOSTLOGIN_TIME` timestamp NULL DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `TIMES` int(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`USER_ID`, `USERNAME`, `PASSWORD`, `ROLE`, `LOSTLOGINIP`, `CREATE_TIME`, `CREATE_BY`, `LOSTLOGIN_TIME`, `UPDATE_BY`, `TIMES`, `UPDATE_TIME`) VALUES ('1','admin','02a608a35371242f58847c50a5078d45',1,'172.24.179.7','2017-04-14 08:12:16',NULL,'2017-06-18 04:28:51',NULL,397,'2017-04-14 08:21:12'),('166864bb-b131-4376-8d36-7286abf45bc1','柴晓雪','52ca5ba68de181848fb7abc86bf2303c',0,'127.0.0.1','2017-06-14 08:26:22','admin','2017-06-18 09:42:35',NULL,7,'2017-06-14 08:26:22'),('17aa66de-762d-431f-a920-feb637e165b1','马云飞','fc39da2259d075cdc199bac220d6a6ca',0,NULL,'2017-06-17 03:04:21','柴晓雪',NULL,NULL,0,'2017-06-17 03:04:21'),('31b03df3-d56f-45a1-9699-52cccae5ba40','admin2','bc8afb4744629c70e5aabbeef7ab31dc',1,NULL,'2017-05-27 13:35:32','',NULL,NULL,0,'2017-05-27 13:35:32'),('a1689bee-2471-4a17-9664-0957cd643789','admin1','e90b2968a9e19a986909f739c34110b9',0,'192.168.0.107','2017-05-27 15:47:17','admin','2017-05-27 15:47:34',NULL,1,'2017-05-27 15:47:17');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_set`
--

DROP TABLE IF EXISTS `web_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_set` (
  `ID` varchar(40) NOT NULL,
  `TITLE` varchar(40) DEFAULT NULL,
  `DESCRIPTION` varchar(40) DEFAULT NULL,
  `WEB_ADDRESS` varchar(40) DEFAULT NULL,
  `COM_ADDRESS` varchar(40) DEFAULT NULL,
  `PHONE` varchar(40) DEFAULT NULL,
  `FAX` varchar(40) DEFAULT NULL,
  `AFTER_SALE` varchar(40) DEFAULT NULL,
  `QQ_1` varchar(40) DEFAULT NULL,
  `QQ_2` varchar(40) DEFAULT NULL,
  `QQ_3` varchar(40) DEFAULT NULL,
  `QQ_4` varchar(40) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COPYRIGHT_INFORMATION` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_set`
--

LOCK TABLES `web_set` WRITE;
/*!40000 ALTER TABLE `web_set` DISABLE KEYS */;
INSERT INTO `web_set` (`ID`, `TITLE`, `DESCRIPTION`, `WEB_ADDRESS`, `COM_ADDRESS`, `PHONE`, `FAX`, `AFTER_SALE`, `QQ_1`, `QQ_2`, `QQ_3`, `QQ_4`, `CREATE_TIME`, `CREATE_BY`, `UPDATE_BY`, `UPDATE_TIME`, `COPYRIGHT_INFORMATION`, `EMAIL`) VALUES ('1','  张家口市聚优人力资源服务有限公司','张家口市聚优人力资源服务有限公司','http://www.jy0313.com','河北省张家口市桥东区报业大厦10层','0313-2017699','0313-2017699','13803130588','7877276','526112841','526112841','7877276','2017-04-16 04:11:58','admin','admin','2017-04-16 04:11:58','张家口市聚优人力资源服务有限公司备案号：冀ICP备14023456号-1','zjkjuyou@sina.com4');
/*!40000 ALTER TABLE `web_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'host9723253'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-18 17:42:48
