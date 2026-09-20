-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl34626181
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl34626181`
--

/*!40000 DROP DATABASE IF EXISTS `cl34626181`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl34626181` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl34626181`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenxibaogao`
--

DROP TABLE IF EXISTS `fenxibaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenxibaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fenxijianjie` longtext COMMENT '分析简介',
  `fenxixiangqing` longtext COMMENT '分析详情',
  `fenxishijian` datetime DEFAULT NULL COMMENT '分析时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='分析报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenxibaogao`
--

LOCK TABLES `fenxibaogao` WRITE;
/*!40000 ALTER TABLE `fenxibaogao` DISABLE KEYS */;
INSERT INTO `fenxibaogao` VALUES (171,'2024-03-14 07:30:38','用户账号1','用户姓名1','年龄1','性别1','分析简介1','分析详情1','2024-03-14 15:30:38'),(172,'2024-03-14 07:30:38','用户账号2','用户姓名2','年龄2','性别2','分析简介2','分析详情2','2024-03-14 15:30:38'),(173,'2024-03-14 07:30:38','用户账号3','用户姓名3','年龄3','性别3','分析简介3','分析详情3','2024-03-14 15:30:38'),(174,'2024-03-14 07:30:38','用户账号4','用户姓名4','年龄4','性别4','分析简介4','分析详情4','2024-03-14 15:30:38'),(175,'2024-03-14 07:30:38','用户账号5','用户姓名5','年龄5','性别5','分析简介5','分析详情5','2024-03-14 15:30:38'),(176,'2024-03-14 07:30:38','用户账号6','用户姓名6','年龄6','性别6','分析简介6','分析详情6','2024-03-14 15:30:38');
/*!40000 ALTER TABLE `fenxibaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jibingjilu`
--

DROP TABLE IF EXISTS `jibingjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jibingjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `shengao` varchar(200) NOT NULL COMMENT '身高',
  `tizhong` varchar(200) NOT NULL COMMENT '体重',
  `xuexing` varchar(200) NOT NULL COMMENT '血型',
  `shuimian` varchar(200) NOT NULL COMMENT '睡眠',
  `shiyu` varchar(200) NOT NULL COMMENT '食欲',
  `jiwangbingshi` longtext COMMENT '既往病史',
  `jiazubingshi` longtext COMMENT '家族病史',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='疾病记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jibingjilu`
--

LOCK TABLES `jibingjilu` WRITE;
/*!40000 ALTER TABLE `jibingjilu` DISABLE KEYS */;
INSERT INTO `jibingjilu` VALUES (111,'2024-03-14 07:30:38','2024-03-14','用户账号1','用户姓名1','性别1','年龄1','身高1','体重1','血型1','睡眠1','食欲1','既往病史1','家族病史1'),(112,'2024-03-14 07:30:38','2024-03-14','用户账号2','用户姓名2','性别2','年龄2','身高2','体重2','血型2','睡眠2','食欲2','既往病史2','家族病史2'),(113,'2024-03-14 07:30:38','2024-03-14','用户账号3','用户姓名3','性别3','年龄3','身高3','体重3','血型3','睡眠3','食欲3','既往病史3','家族病史3'),(114,'2024-03-14 07:30:38','2024-03-14','用户账号4','用户姓名4','性别4','年龄4','身高4','体重4','血型4','睡眠4','食欲4','既往病史4','家族病史4'),(115,'2024-03-14 07:30:38','2024-03-14','用户账号5','用户姓名5','性别5','年龄5','身高5','体重5','血型5','睡眠5','食欲5','既往病史5','家族病史5'),(116,'2024-03-14 07:30:38','2024-03-14','用户账号6','用户姓名6','性别6','年龄6','身高6','体重6','血型6','睡眠6','食欲6','既往病史6','家族病史6');
/*!40000 ALTER TABLE `jibingjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-14 07:30:38','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\",\"热量\"],\"menu\":\"运动记录\",\"menuJump\":\"列表\",\"tableName\":\"yundongjilu\"},{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"运动热量\",\"menuJump\":\"列表\",\"tableName\":\"yundongreliang\"}],\"fontClass\":\"icon-common42\",\"menu\":\"运动管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\",\"建议\",\"睡眠分析\",\"首页总数\",\"首页统计\"],\"menu\":\"睡眠管理\",\"menuJump\":\"列表\",\"tableName\":\"shuimianguanli\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"睡眠建议\",\"menuJump\":\"列表\",\"tableName\":\"shuimianjianyi\"}],\"fontClass\":\"icon-common47\",\"menu\":\"睡眠管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"删除\",\"热量记录\"],\"menu\":\"饮食记录\",\"menuJump\":\"列表\",\"tableName\":\"yinshijilu\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"饮食热量\",\"menuJump\":\"列表\",\"tableName\":\"yinshireliang\"}],\"fontClass\":\"icon-common23\",\"menu\":\"饮食管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"疾病记录\",\"menuJump\":\"列表\",\"tableName\":\"jibingjilu\"}],\"fontClass\":\"icon-common23\",\"menu\":\"疾病记录管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"分析报告\",\"menuJump\":\"列表\",\"tableName\":\"fenxibaogao\"}],\"fontClass\":\"icon-common11\",\"menu\":\"分析报告管理\",\"unicode\":\"&#xeded;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"饮食推荐\",\"menuJump\":\"列表\",\"tableName\":\"yinshituijian\"},{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"食物类型\",\"menuJump\":\"列表\",\"tableName\":\"shiwuleixing\"}],\"fontClass\":\"icon-common29\",\"menu\":\"饮食推荐管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"运动推荐\",\"menuJump\":\"列表\",\"tableName\":\"yundongtuijian\"},{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"运动类型\",\"menuJump\":\"列表\",\"tableName\":\"yundongleixing\"}],\"fontClass\":\"icon-common26\",\"menu\":\"运动推荐管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common19\",\"menu\":\"公告资讯管理\",\"unicode\":\"&#xee00;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common11\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xeded;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"运动记录\",\"menuJump\":\"列表\",\"tableName\":\"yundongjilu\"},{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"运动热量\",\"menuJump\":\"列表\",\"tableName\":\"yundongreliang\"}],\"fontClass\":\"icon-common42\",\"menu\":\"运动管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"睡眠管理\",\"menuJump\":\"列表\",\"tableName\":\"shuimianguanli\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"睡眠建议\",\"menuJump\":\"列表\",\"tableName\":\"shuimianjianyi\"}],\"fontClass\":\"icon-common47\",\"menu\":\"睡眠管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"饮食记录\",\"menuJump\":\"列表\",\"tableName\":\"yinshijilu\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"饮食热量\",\"menuJump\":\"列表\",\"tableName\":\"yinshireliang\"}],\"fontClass\":\"icon-common23\",\"menu\":\"饮食管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"疾病记录\",\"menuJump\":\"列表\",\"tableName\":\"jibingjilu\"}],\"fontClass\":\"icon-common23\",\"menu\":\"疾病记录管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"分析报告\",\"menuJump\":\"列表\",\"tableName\":\"fenxibaogao\"}],\"fontClass\":\"icon-common11\",\"menu\":\"分析报告管理\",\"unicode\":\"&#xeded;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common12\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedf4;\"}],\"frontMenu\":[],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2024-03-14 07:30:38','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(62,'2024-03-14 07:30:38','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(63,'2024-03-14 07:30:38','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(64,'2024-03-14 07:30:38','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(65,'2024-03-14 07:30:38','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(66,'2024-03-14 07:30:38','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwuleixing`
--

DROP TABLE IF EXISTS `shiwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwuleixing` varchar(200) NOT NULL COMMENT '食物类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shiwuleixing` (`shiwuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='食物类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwuleixing`
--

LOCK TABLES `shiwuleixing` WRITE;
/*!40000 ALTER TABLE `shiwuleixing` DISABLE KEYS */;
INSERT INTO `shiwuleixing` VALUES (131,'2024-03-14 07:30:38','食物类型1'),(132,'2024-03-14 07:30:38','食物类型2'),(133,'2024-03-14 07:30:38','食物类型3'),(134,'2024-03-14 07:30:38','食物类型4'),(135,'2024-03-14 07:30:38','食物类型5'),(136,'2024-03-14 07:30:38','食物类型6');
/*!40000 ALTER TABLE `shiwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuimianguanli`
--

DROP TABLE IF EXISTS `shuimianguanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuimianguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `rushuishijian` datetime DEFAULT NULL COMMENT '入睡时间',
  `qichuangshijian` datetime DEFAULT NULL COMMENT '起床时间',
  `shuimianshizhang` int(11) DEFAULT NULL COMMENT '睡眠时长',
  `tongjishijian` datetime DEFAULT NULL COMMENT '统计时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='睡眠管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuimianguanli`
--

LOCK TABLES `shuimianguanli` WRITE;
/*!40000 ALTER TABLE `shuimianguanli` DISABLE KEYS */;
INSERT INTO `shuimianguanli` VALUES (51,'2024-03-14 07:30:38','用户账号1','用户姓名1','2024-03-14 15:30:38','2024-03-14 15:30:38',1,'2024-03-14 15:30:38',1),(52,'2024-03-14 07:30:38','用户账号2','用户姓名2','2024-03-14 15:30:38','2024-03-14 15:30:38',2,'2024-03-14 15:30:38',2),(53,'2024-03-14 07:30:38','用户账号3','用户姓名3','2024-03-14 15:30:38','2024-03-14 15:30:38',3,'2024-03-14 15:30:38',3),(54,'2024-03-14 07:30:38','用户账号4','用户姓名4','2024-03-14 15:30:38','2024-03-14 15:30:38',4,'2024-03-14 15:30:38',4),(55,'2024-03-14 07:30:38','用户账号5','用户姓名5','2024-03-14 15:30:38','2024-03-14 15:30:38',5,'2024-03-14 15:30:38',5),(56,'2024-03-14 07:30:38','用户账号6','用户姓名6','2024-03-14 15:30:38','2024-03-14 15:30:38',6,'2024-03-14 15:30:38',6);
/*!40000 ALTER TABLE `shuimianguanli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuimianjianyi`
--

DROP TABLE IF EXISTS `shuimianjianyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuimianjianyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shuimianshizhang` int(11) DEFAULT NULL COMMENT '睡眠时长',
  `shuimianjianyi` longtext COMMENT '睡眠建议',
  `shuimianzhiliang` varchar(200) DEFAULT NULL COMMENT '睡眠质量',
  `jianyishijian` datetime DEFAULT NULL COMMENT '建议时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='睡眠建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuimianjianyi`
--

LOCK TABLES `shuimianjianyi` WRITE;
/*!40000 ALTER TABLE `shuimianjianyi` DISABLE KEYS */;
INSERT INTO `shuimianjianyi` VALUES (101,'2024-03-14 07:30:38','用户账号1','用户姓名1',1,'睡眠建议1','睡眠质量1','2024-03-14 15:30:38'),(102,'2024-03-14 07:30:38','用户账号2','用户姓名2',2,'睡眠建议2','睡眠质量2','2024-03-14 15:30:38'),(103,'2024-03-14 07:30:38','用户账号3','用户姓名3',3,'睡眠建议3','睡眠质量3','2024-03-14 15:30:38'),(104,'2024-03-14 07:30:38','用户账号4','用户姓名4',4,'睡眠建议4','睡眠质量4','2024-03-14 15:30:38'),(105,'2024-03-14 07:30:38','用户账号5','用户姓名5',5,'睡眠建议5','睡眠质量5','2024-03-14 15:30:38'),(106,'2024-03-14 07:30:38','用户账号6','用户姓名6',6,'睡眠建议6','睡眠质量6','2024-03-14 15:30:38');
/*!40000 ALTER TABLE `shuimianjianyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710403219874 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1710403210714,'2024-03-14 08:00:10',123,'yinshituijian','食物名称3','file/yinshituijianTupian3.jpg','1','食物类型3',NULL,31),(1710403219873,'2024-03-14 08:00:19',142,'yundongtuijian','运动名称2','file/yundongtuijianTupian2.jpg','1','运动类型2',NULL,31);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'用户账号1','yonghu','用户','hpt3rftxeot4d3n46jt4g3ooseyjkr4s','2024-03-14 07:59:57','2024-03-14 08:59:58'),(2,1,'admin','users','管理员','vbmoxmvm1z8b5un7wcg33k9tvmfsotlc','2024-03-14 08:02:09','2024-03-14 09:02:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-14 07:30:38','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinshijilu`
--

DROP TABLE IF EXISTS `yinshijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinshijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiluriqi` date DEFAULT NULL COMMENT '记录日期',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '食物名称',
  `yinshixiangqing` longtext COMMENT '饮食详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='饮食记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinshijilu`
--

LOCK TABLES `yinshijilu` WRITE;
/*!40000 ALTER TABLE `yinshijilu` DISABLE KEYS */;
INSERT INTO `yinshijilu` VALUES (71,'2024-03-14 07:30:38','2024-03-14','食物名称1','饮食详情1','用户账号1',1),(72,'2024-03-14 07:30:38','2024-03-14','食物名称2','饮食详情2','用户账号2',2),(73,'2024-03-14 07:30:38','2024-03-14','食物名称3','饮食详情3','用户账号3',3),(74,'2024-03-14 07:30:38','2024-03-14','食物名称4','饮食详情4','用户账号4',4),(75,'2024-03-14 07:30:38','2024-03-14','食物名称5','饮食详情5','用户账号5',5),(76,'2024-03-14 07:30:38','2024-03-14','食物名称6','饮食详情6','用户账号6',6);
/*!40000 ALTER TABLE `yinshijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinshireliang`
--

DROP TABLE IF EXISTS `yinshireliang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinshireliang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiluriqi` date DEFAULT NULL COMMENT '记录日期',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '食物名称',
  `reliang` varchar(200) DEFAULT NULL COMMENT '热量',
  `danbaizhi` varchar(200) DEFAULT NULL COMMENT '蛋白质',
  `zhifang` varchar(200) DEFAULT NULL COMMENT '脂肪',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='饮食热量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinshireliang`
--

LOCK TABLES `yinshireliang` WRITE;
/*!40000 ALTER TABLE `yinshireliang` DISABLE KEYS */;
INSERT INTO `yinshireliang` VALUES (81,'2024-03-14 07:30:38','2024-03-14','食物名称1','热量1','蛋白质1','脂肪1','用户账号1'),(82,'2024-03-14 07:30:38','2024-03-14','食物名称2','热量2','蛋白质2','脂肪2','用户账号2'),(83,'2024-03-14 07:30:38','2024-03-14','食物名称3','热量3','蛋白质3','脂肪3','用户账号3'),(84,'2024-03-14 07:30:38','2024-03-14','食物名称4','热量4','蛋白质4','脂肪4','用户账号4'),(85,'2024-03-14 07:30:38','2024-03-14','食物名称5','热量5','蛋白质5','脂肪5','用户账号5'),(86,'2024-03-14 07:30:38','2024-03-14','食物名称6','热量6','蛋白质6','脂肪6','用户账号6');
/*!40000 ALTER TABLE `yinshireliang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinshituijian`
--

DROP TABLE IF EXISTS `yinshituijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinshituijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '食物名称',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '食物类型',
  `tupian` longtext COMMENT '图片',
  `reliang` varchar(200) DEFAULT NULL COMMENT '热量',
  `danbaizhi` varchar(200) DEFAULT NULL COMMENT '蛋白质',
  `zhifang` varchar(200) DEFAULT NULL COMMENT '脂肪',
  `heshirenqun` longtext COMMENT '合适人群',
  `shiwujieshao` longtext COMMENT '食物介绍',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='饮食推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinshituijian`
--

LOCK TABLES `yinshituijian` WRITE;
/*!40000 ALTER TABLE `yinshituijian` DISABLE KEYS */;
INSERT INTO `yinshituijian` VALUES (121,'2024-03-14 07:30:38','食物名称1','食物类型1','file/yinshituijianTupian1.jpg,file/yinshituijianTupian2.jpg,file/yinshituijianTupian3.jpg','热量1','蛋白质1','脂肪1','合适人群1','食物介绍1',1,'2024-03-14 15:30:38',1),(122,'2024-03-14 07:30:38','食物名称2','食物类型2','file/yinshituijianTupian2.jpg,file/yinshituijianTupian3.jpg,file/yinshituijianTupian4.jpg','热量2','蛋白质2','脂肪2','合适人群2','食物介绍2',2,'2024-03-14 16:00:30',3),(123,'2024-03-14 07:30:38','食物名称3','食物类型3','file/yinshituijianTupian3.jpg,file/yinshituijianTupian4.jpg,file/yinshituijianTupian5.jpg','热量3','蛋白质3','脂肪3','合适人群3','食物介绍3',4,'2024-03-14 16:00:08',4),(124,'2024-03-14 07:30:38','食物名称4','食物类型4','file/yinshituijianTupian4.jpg,file/yinshituijianTupian5.jpg,file/yinshituijianTupian6.jpg','热量4','蛋白质4','脂肪4','合适人群4','食物介绍4',4,'2024-03-14 15:30:38',4),(125,'2024-03-14 07:30:38','食物名称5','食物类型5','file/yinshituijianTupian5.jpg,file/yinshituijianTupian6.jpg,file/yinshituijianTupian7.jpg','热量5','蛋白质5','脂肪5','合适人群5','食物介绍5',5,'2024-03-14 15:30:38',5),(126,'2024-03-14 07:30:38','食物名称6','食物类型6','file/yinshituijianTupian6.jpg,file/yinshituijianTupian7.jpg,file/yinshituijianTupian8.jpg','热量6','蛋白质6','脂肪6','合适人群6','食物介绍6',6,'2024-03-14 15:30:38',6);
/*!40000 ALTER TABLE `yinshituijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-14 07:30:38','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','年龄1','身高1','体重1'),(32,'2024-03-14 07:30:38','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','年龄2','身高2','体重2'),(33,'2024-03-14 07:30:38','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','年龄3','身高3','体重3'),(34,'2024-03-14 07:30:38','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','年龄4','身高4','体重4'),(35,'2024-03-14 07:30:38','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','年龄5','身高5','体重5'),(36,'2024-03-14 07:30:38','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','年龄6','身高6','体重6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongjilu`
--

DROP TABLE IF EXISTS `yundongjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongmingcheng` varchar(200) DEFAULT NULL COMMENT '运动名称',
  `yundongshizhang` int(11) DEFAULT NULL COMMENT '运动时长',
  `yundongxiangqing` longtext COMMENT '运动详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='运动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongjilu`
--

LOCK TABLES `yundongjilu` WRITE;
/*!40000 ALTER TABLE `yundongjilu` DISABLE KEYS */;
INSERT INTO `yundongjilu` VALUES (41,'2024-03-14 07:30:38','运动名称1',1,'运动详情1','用户账号1','用户姓名1'),(42,'2024-03-14 07:30:38','运动名称2',2,'运动详情2','用户账号2','用户姓名2'),(43,'2024-03-14 07:30:38','运动名称3',3,'运动详情3','用户账号3','用户姓名3'),(44,'2024-03-14 07:30:38','运动名称4',4,'运动详情4','用户账号4','用户姓名4'),(45,'2024-03-14 07:30:38','运动名称5',5,'运动详情5','用户账号5','用户姓名5'),(46,'2024-03-14 07:30:38','运动名称6',6,'运动详情6','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `yundongjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongleixing`
--

DROP TABLE IF EXISTS `yundongleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongleixing` varchar(200) NOT NULL COMMENT '运动类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yundongleixing` (`yundongleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='运动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongleixing`
--

LOCK TABLES `yundongleixing` WRITE;
/*!40000 ALTER TABLE `yundongleixing` DISABLE KEYS */;
INSERT INTO `yundongleixing` VALUES (151,'2024-03-14 07:30:38','运动类型1'),(152,'2024-03-14 07:30:38','运动类型2'),(153,'2024-03-14 07:30:38','运动类型3'),(154,'2024-03-14 07:30:38','运动类型4'),(155,'2024-03-14 07:30:38','运动类型5'),(156,'2024-03-14 07:30:38','运动类型6');
/*!40000 ALTER TABLE `yundongleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongreliang`
--

DROP TABLE IF EXISTS `yundongreliang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongreliang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongmingcheng` varchar(200) DEFAULT NULL COMMENT '运动名称',
  `yundongshizhang` int(11) DEFAULT NULL COMMENT '运动时长',
  `xiaohaoreliang` varchar(200) DEFAULT NULL COMMENT '消耗热量',
  `yundongjianyi` varchar(200) DEFAULT NULL COMMENT '运动建议',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='运动热量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongreliang`
--

LOCK TABLES `yundongreliang` WRITE;
/*!40000 ALTER TABLE `yundongreliang` DISABLE KEYS */;
INSERT INTO `yundongreliang` VALUES (91,'2024-03-14 07:30:38','运动名称1',1,'消耗热量1','运动建议1','用户账号1','用户姓名1'),(92,'2024-03-14 07:30:38','运动名称2',2,'消耗热量2','运动建议2','用户账号2','用户姓名2'),(93,'2024-03-14 07:30:38','运动名称3',3,'消耗热量3','运动建议3','用户账号3','用户姓名3'),(94,'2024-03-14 07:30:38','运动名称4',4,'消耗热量4','运动建议4','用户账号4','用户姓名4'),(95,'2024-03-14 07:30:38','运动名称5',5,'消耗热量5','运动建议5','用户账号5','用户姓名5'),(96,'2024-03-14 07:30:38','运动名称6',6,'消耗热量6','运动建议6','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `yundongreliang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongtuijian`
--

DROP TABLE IF EXISTS `yundongtuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongtuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongmingcheng` varchar(200) DEFAULT NULL COMMENT '运动名称',
  `yundongleixing` varchar(200) DEFAULT NULL COMMENT '运动类型',
  `tupian` longtext COMMENT '图片',
  `yundongshizhang` varchar(200) DEFAULT NULL COMMENT '运动时长',
  `yundongmubiao` varchar(200) DEFAULT NULL COMMENT '运动目标',
  `heshirenqun` varchar(200) DEFAULT NULL COMMENT '合适人群',
  `yundongxiangqing` longtext COMMENT '运动详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='运动推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongtuijian`
--

LOCK TABLES `yundongtuijian` WRITE;
/*!40000 ALTER TABLE `yundongtuijian` DISABLE KEYS */;
INSERT INTO `yundongtuijian` VALUES (141,'2024-03-14 07:30:38','运动名称1','运动类型1','file/yundongtuijianTupian1.jpg,file/yundongtuijianTupian2.jpg,file/yundongtuijianTupian3.jpg','运动时长1','运动目标1','合适人群1','运动详情1',1,'2024-03-14 15:30:38',1),(142,'2024-03-14 07:30:38','运动名称2','运动类型2','file/yundongtuijianTupian2.jpg,file/yundongtuijianTupian3.jpg,file/yundongtuijianTupian4.jpg','运动时长2','运动目标2','合适人群2','运动详情2',3,'2024-03-14 16:00:34',4),(143,'2024-03-14 07:30:38','运动名称3','运动类型3','file/yundongtuijianTupian3.jpg,file/yundongtuijianTupian4.jpg,file/yundongtuijianTupian5.jpg','运动时长3','运动目标3','合适人群3','运动详情3',3,'2024-03-14 15:30:38',3),(144,'2024-03-14 07:30:38','运动名称4','运动类型4','file/yundongtuijianTupian4.jpg,file/yundongtuijianTupian5.jpg,file/yundongtuijianTupian6.jpg','运动时长4','运动目标4','合适人群4','运动详情4',4,'2024-03-14 15:30:38',4),(145,'2024-03-14 07:30:38','运动名称5','运动类型5','file/yundongtuijianTupian5.jpg,file/yundongtuijianTupian6.jpg,file/yundongtuijianTupian7.jpg','运动时长5','运动目标5','合适人群5','运动详情5',5,'2024-03-14 15:30:38',5),(146,'2024-03-14 07:30:38','运动名称6','运动类型6','file/yundongtuijianTupian6.jpg,file/yundongtuijianTupian7.jpg,file/yundongtuijianTupian8.jpg','运动时长6','运动目标6','合适人群6','运动详情6',6,'2024-03-14 15:30:38',6);
/*!40000 ALTER TABLE `yundongtuijian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-14 19:25:46
