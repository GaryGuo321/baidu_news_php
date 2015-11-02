-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?09 �?25 �?12:10
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `baidu_news`
--
CREATE DATABASE IF NOT EXISTS `baidu_news` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `baidu_news`;

-- --------------------------------------------------------

--
-- 表的结构 `common`
--

CREATE TABLE IF NOT EXISTS `common` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_img` varchar(200) NOT NULL,
  `news_content` text NOT NULL,
  `news_source` varchar(20) NOT NULL,
  `add_times` date NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `common`
--

INSERT INTO `common` (`news_id`, `news_title`, `news_img`, `news_content`, `news_source`, `add_times`) VALUES
(1, '互联网也难抵大势所“曲”', 'http://t10.baidu.com/it/u=http://c.hiphotos.baidu.com/news/crop%3D53%2C1%2C504%2C303%3Bw%3D638/sign=dd6a8a8533fae6cd18fbf12132863c08/810a19d8bc3eb13579bbdc09a01ea8d3fd1f4407.jpg&fm=36', '由于上述几点都是传统显示器难以企及的，因此毫不夸张的说，曲面技术堪称显示器的自我颠覆之路。', '新浪热点', '2015-09-23'),
(2, '美国广播偶像首度自曝，如何做火新媒体', 'http://t10.baidu.com/it/u=http://c.hiphotos.baidu.com/news/crop%3D0%2C2%2C768%2C461%3Bw%3D638/sign=fb7b7e4c30d3d539d572558307b7c562/48540923dd54564ea0c9ba8bb5de9c82d0584fd7.jpg&fm=36', '看美国广播偶像，如何打造全球最棒的新媒体公司之一Gimlet，为你呈现真实媒体人背后的故事。', '腾讯网', '2015-09-23'),
(3, '《第三种爱情》：有情有肉停不下来', 'http://t10.baidu.com/it/u=http://a.hiphotos.baidu.com/news/w%3D638/sign=f2bf959db8096b6381195d5334328733/5243fbf2b21193134887ad0263380cd790238db8.jpg&fm=36', '什么才是第三种爱情，正是影片要和观众探讨的。', '凤凰热点', '2015-09-23'),
(4, '[独家]李涛:亚洲最快“独角兽”的三个必杀技', 'http://t10.baidu.com/it/u=http://g.hiphotos.baidu.com/news/crop%3D0%2C43%2C549%2C330%3Bw%3D638/sign=6be49e78a951f3ded7fde324a9dedc2b/3bf33a87e950352a30ae73ba5543fbf2b3118bb1.jpg&fm=36', '这是APUS创始人李涛在9月18日的爆品大课上，最引发现场热度的问题。', '凤凰头条', '2015-09-23'),
(5, '变革时代，微商持续发展的根在哪里？', 'http://t10.baidu.com/it/u=http://c.hiphotos.baidu.com/news/w%3D638/sign=e9f57fce570fd9f9a017566a1d2cd42b/902397dda144ad345b8fd735d6a20cf431ad854b.jpg&fm=36', '本文尝试从微商的本质问题出发，结合目前行业中一些新的变化探讨微商持续发展的根本性问题。', '网易要闻', '2015-09-23'),
(6, '生鲜O2O 速度和品质是关键', 'http://t10.baidu.com/it/u=http://h.hiphotos.baidu.com/news/crop%3D11%2C1%2C441%2C265%3Bw%3D638/sign=a02b40958c82b90129e299734ebc985b/8694a4c27d1ed21b61234557ab6eddc450da3f9d.jpg&fm=36', '一米鲜的模式基本上成功解决了生鲜电商O2O行业的痛点，以提高物流速度和保证产品品质为撬动点，所...', '腾讯网', '2015-09-23'),
(7, '《龙在哪里？》：呆萌欢享着“解救龙先生”', 'http://t10.baidu.com/it/u=http://g.hiphotos.baidu.com/news/w%3D638/sign=4aaf6a78e0cd7b89e96c398037254291/cefc1e178a82b901d438a981758da9773812efef.jpg&fm=36', '这是一个有着深厚好莱坞背景的技术特效型导演，其参与打造的经典佳作包括《蜘蛛侠》系列、《黑衣人》...', '新浪头条', '2015-09-23'),
(8, '月收入不到万元，应该怎么理财？', 'http://t12.baidu.com/it/u=http://e.hiphotos.baidu.com/news/crop%3D35%2C0%2C831%2C499%3Bw%3D638/sign=a9d86a51d339b600598155f7d4630006/e824b899a9014c08d21041170c7b02087bf4f45d.jpg&fm=36', '几乎都有过这样的困惑，所以话题总是很火，长期霸占理财社区的榜首。', '腾讯网', '2015-09-23'),
(9, '在中国打人的老外为何被网友频频点赞？', 'http://t11.baidu.com/it/u=http://h.hiphotos.baidu.com/news/crop%3D0%2C1%2C498%2C299%3Bw%3D638/sign=edd68d940f24ab18f459bb7708cacafc/6f061d950a7b0208c444575364d9f2d3562cc8f7.jpg&fm=36', '老外这一回打的不是老人，而是对恶习累累的所有中国司机的一场正义暴打，他们属于早该收拾的一个劣等群体。', '网易热点', '2015-09-23'),
(10, '亚锦赛之男篮名单解读：易建联为核，引年轻风暴', 'http://t10.baidu.com/it/u=http://g.hiphotos.baidu.com/news/w%3D638/sign=678c6c90b51bb0518f24b02b0e7bda77/f3d3572c11dfa9ec44e836a564d0f703908fc1ba.jpg&fm=36', '男篮现状：亚锦15冠，亚洲第二。', '凤凰要闻', '2015-09-23'),
(12, '游戏圈”人才急缺”？高薪也难招到合意人选?', 'http://t12.baidu.com/it/u=http://f.hiphotos.baidu.com/news/w%3D638/sign=113b0d7ee0cd7b89e96c398037254291/cefc1e178a82b9018facce87758da9773912ef05.jpg&fm=36', '人才推动着产业的发展，游戏行业之所以能发展这么快速，与一堆在背后默默耕耘的游戏人密不可分。', '网易新闻', '2015-09-24');

-- --------------------------------------------------------

--
-- 表的结构 `entertainment`
--

CREATE TABLE IF NOT EXISTS `entertainment` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_img` varchar(200) NOT NULL,
  `news_content` text NOT NULL,
  `add_times` date NOT NULL,
  `news_source` varchar(20) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `entertainment`
--

INSERT INTO `entertainment` (`news_id`, `news_title`, `news_img`, `news_content`, `add_times`, `news_source`) VALUES
(1, '黄晓明暗示婚礼捧花留给范爷:就怕她不敢接', 'http://t12.baidu.com/it/u=http://n1.itc.cn/img7/adapt/wb/smccloud/2015/09/23/144296962857229207_620_1000.PNG&fm=36', '黄晓明暗示婚礼捧花留给范冰冰  	【搜狐视频娱乐播报】搜狐娱乐讯 （千一/文 马森/图 远辉/...', '2015-09-23', '新浪娱乐'),
(2, '曝赵丽颖加盟《极限》大电影', 'http://t11.baidu.com/it/u=http://img6.cache.netease.com/ent/2015/9/23/20150923124020ca2c6.jpg&fm=36', '有网友爆料赵丽颖已签约加盟，搭档极限六男成为该片唯一的女主角。', '2015-09-23', '网易娱乐'),
(3, '黄子韬发声明反击SM起诉：身体精神受害', 'http://t11.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0920/8c/c/33552360/500x748.jpg&fm=36', '声称“已对黄子韬及其音乐专辑制作方提起了诉讼，且北京法院已于9月18日正式立案”。', '2015-09-23', '网易娱乐'),
(4, '伊能静谈与哈林婚姻:很痛苦', 'http://t10.baidu.com/it/u=http://img4.cache.netease.com/ent/2015/9/23/20150923114922f1973.jpg&fm=36', '伊能静却被曝出在禅修课上，表达自己对前一段婚姻的不愉快。', '2015-09-23', '腾讯娱乐'),
(5, '韩记者否认金秀贤耍大牌传闻', 'http://t10.baidu.com/it/u=http://img2.cache.netease.com/ent/2015/9/23/2015092311362518247.jpg&fm=36', '在某娱乐谈话类节目中，韩国名嘴金九拉提到了关于金秀贤在成名后变得傲慢的传言，但遭到嘉宾记者的否认。', '2015-09-23', '百度娱乐'),
(6, '罗志祥节目表现努力 炫耀:网友不再骂我了', 'http://t11.baidu.com/it/u=http://n1.itc.cn/img7/adapt/wb/smccloud/fetch/2015/09/22/132098555181301162_620_1000.JPEG&fm=36', '罗志祥在微博发文，坦言，在这个节目之前，我在很多人的心中形象都是负面的。', '2015-09-23', '凤凰娱乐'),
(7, '锋菲摆宴庆生贴面吻 请佛归家疑好事将近', 'http://t10.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/e3/9/53553254/auto.jpg&fm=36', '8月29日谢霆锋生日之际，锋菲摆宴两场招待各自好友，两人关系亲密，在席间更是甜蜜亲吻。', '2015-09-23', '新浪娱乐'),
(8, '谢娜：可能录完《偶像来了》就准备生孩子', 'http://t12.baidu.com/it/u=http://p3.v.iask.com/11/336/138743131_2.jpg&fm=36', 'zw=entonmouseover="WeiboCard.show"class="wt_art...', '2015-09-23', '百度娱乐'),
(9, '林志玲吃早餐嘟嘴送吻 深V上衣仍不见胸', 'http://t12.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/21/b/55553536/426x640.jpg&fm=36', '林志玲在微博分享了一张自己嘟嘴吃早餐的照片，亲切提醒道“Morning~记得吃早餐喔”。', '2015-09-23', '腾讯网'),
(10, '冯德伦晒与吴彦祖谢霆锋旧照:新鲜过的鲜肉', 'http://t11.baidu.com/it/u=http://n1.itc.cn/img7/adapt/wb/smccloud/fetch/2015/09/23/38124258319675494_620_1000.JPEG&fm=36', '旧照一曝光，网友们纷纷表示“回忆太戳人”，留言评论道，现在也很鲜。', '2015-09-23', '网易娱乐'),
(11, '蔡少芬晒素颜起床照比耶 网友：何老师早', 'http://t10.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0924/05/f/13554634/550x412.jpg&fm=36', '更有网友发现这张照片和何炅撞脸度极高，纷纷调侃道，何老师早，何老师今天不忙啊，何老师别闹了呗，...', '2015-09-24', '新浪娱乐');

-- --------------------------------------------------------

--
-- 表的结构 `localtion`
--

CREATE TABLE IF NOT EXISTS `localtion` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_img` varchar(200) NOT NULL,
  `news_content` text NOT NULL,
  `add_times` date NOT NULL,
  `news_source` varchar(20) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `localtion`
--

INSERT INTO `localtion` (`news_id`, `news_title`, `news_img`, `news_content`, `add_times`, `news_source`) VALUES
(1, '北京食药监局：哈尔滨红肠等多种食品不合格', 'http://t10.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/94/5/31548589/auto.jpg&fm=36', '【[子路芝麻酱、聪明岛烤鱼片、夏乐明泡豇豆等不合格】北京市食药监局通报：子路芝麻酱、聪明岛烤鱼...', '2015-09-23', '腾讯网'),
(2, '分析：为何风等来了 超市O2O却病了？', 'http://t12.baidu.com/it/u=http://imgs.ebrun.com/resources/2015_09/2015_09_23/201509236731442985453812.jpg&fm=36', '由于先天不足，超市很难向O2O公开核心资源，没有深度联姻，超市O2O品牌难以长久，或许只有BA...', '2015-09-23', '新浪头条'),
(3, '6家门店5家关停 乙十六阵痛中转型大众餐饮', 'http://t11.baidu.com/it/u=http://pic.chinasspp.com/News/u/592514/image/201509/23125303_4440.jpg&fm=36', '目前除了乙十六地坛总店外，原有的另外5家门店已全部关停。', '2015-09-23', '网易头条'),
(4, '莫里斯正式与北京完成续约手续 5月达成协议', 'http://t11.baidu.com/it/u=http://gb.cri.cn/mmsource/images/2015/09/23/sb2015092300068.jpg&fm=36', '北京男篮与内线外援莫里斯正式完成了签约，双方签的是一份2+1的合同，最后一年是球队选项。', '2015-09-23', '腾讯网'),
(5, '昌平线二期昌平新区站率先亮相 建工装饰获好评', 'http://t11.baidu.com/it/u=http://images.qianlong.com/mmsource/images/2015/09/23/szzc20150923002-1.jpg&fm=36', '地铁昌平线二期第十标段装饰工程率先通过验收，昌平新区站成为地铁昌平线二期首个亮相站台。', '2015-09-23', '凤凰热点'),
(6, '通鼎产品方阵精彩亮相北京通信展 各路嘉宾驻足检阅', 'http://t11.baidu.com/it/u=http://mmbiz.qpic.cn/mmbiz/Koyy8szHVMnDoH9NSCdpKZ0KZjnyZyiccYNYUIhFjGro6O8OlKdY9FtzTMnDJImbYvMicbh29icxsicYLSNCwORAQQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&fm=36', '中国国际信息通信展览会正式开幕，为期四天。', '2015-09-23', '新浪热点'),
(7, '北京国土局原局长安家盛受审', 'http://t12.baidu.com/it/u=http://inews.gtimg.com/newsapp_ls/0/66527632_150120/0&fm=36', '今年春节前夕，安家盛夫妇与市国土局原同事约定去以色列旅游时，在机场安家盛被告知限制出境。', '2015-09-23', '新浪要闻'),
(8, '北京辅路小于6米 试点取消路侧停车位', 'http://t12.baidu.com/it/u=http://www.people.com.cn/mediafile/pic/20150923/76/5745091924157094576.jpg&fm=36', '在具体的慢行整治项目中，优先保障自行车路权，辅路宽度不足6米的取消路侧停车位。', '2015-09-23', '腾讯网'),
(9, '北京“一环八区”慢行系统将连成片 ', 'http://t11.baidu.com/it/u=http://www.chinanews.com/cr/2015/0923/533754109.jpg&fm=36', '也是中国城市第九个“无车日”，王府井大街、南锣鼓巷、奥林匹克中心区是3个倡导无车区。', '2015-09-23', '网易热点'),
(10, '北京消防战士杜宝珠：战友走好 咱爸妈还有我', 'http://t10.baidu.com/it/u=http://news.jwb.com.cn/picture/-1/150923124034327167.jpg&fm=36', '从第一声“干爹”叫出口，杜宝珠就决定替自己牺牲的好战友、好兄弟尽到一个儿子应尽的责任。', '2015-09-23', '凤凰要闻'),
(11, '阿里启用杭州+北京双中心战略 天猫迁至北京 ', 'http://t11.baidu.com/it/u=http://image.tianjimedia.com/uploadImages/2015/267/09/TI6CP8KGD0J3_6_600.jpg&fm=36', '阿里巴巴集团正式宣布启动杭州+北京双中心战略，将在北京成立新总部。', '2015-09-24', '腾讯网');

-- --------------------------------------------------------

--
-- 表的结构 `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_img` varchar(400) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `picture`
--

INSERT INTO `picture` (`news_id`, `news_img`, `news_title`) VALUES
(1, 'http://timg01.baidu-img.cn/timg?tc&size=b634_356&sec=0&quality=100&cut_x=0&cut_y=0&cut_h=356&cut_w=0&di=e5a30baa7fd30d27d0288fdb3dc35c58&src=http%3A%2F%2Ft12.baidu.com%2Fit%2Fu%3Dhttp%3A%2F%2Fimg1.gtimg.com%2Fnews%2Fpics%2Fhv1%2F17%2F214%2F1930%2F125552837.jpg%26fm%3D94', '难民带宠物狗逃亡500公里不抛弃'),
(2, 'http://timg01.baidu-img.cn/timg?tc&size=b842_474&sec=0&quality=100&cut_x=52&cut_y=0&cut_h=0&cut_w=842&di=67b19c37944c0be862d34044ad08d621&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C137%252C948%252C474%2Fsign%3Dd2a81648d7c8a786aa65104e5a39e50c%2F203fb80e7bec54e7c166acacbf389b504ec26afe.jpg', '郑州最贵洗车行邀请“比基尼”美女'),
(3, 'http://timg01.baidu-img.cn/timg?tc&size=b707_398&sec=0&quality=100&cut_x=44&cut_y=0&cut_h=0&cut_w=707&di=aefbf1c1cbca91a6ef8a33c7f73c5e84&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C54%252C796%252C398%2Fsign%3Db0ec68d2332ac65c734a3c33c6c29e24%2Fdbb44aed2e738bd439770683a78b87d6277ff92a.jpg', '金正恩参观日用品展喜笑颜开'),
(4, 'http://timg01.baidu-img.cn/timg?tc&size=b869_489&sec=0&quality=100&cut_x=54&cut_y=0&cut_h=0&cut_w=869&di=d550910cbe59c08f97c46e1784b920a7&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C27%252C978%252C489%2Fsign%3D3c9ecd40d362853586af8861addf5af4%2F63d0f703918fa0ecaf34d3bf209759ee3c6ddb95.jpg', '意大利小姐选美 18岁篮球运动员夺冠'),
(5, 'http://timg01.baidu-img.cn/timg?tc&size=b980_551&sec=0&quality=100&cut_x=0&cut_y=72&cut_h=551&cut_w=0&di=10dfcdc3519dabf930e02b56803b7ea5&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F66543950%2F1000', '俄罗斯青少年冒死徒手扒火车取乐'),
(6, 'http://timg01.baidu-img.cn/timg?tc&size=b887_499&sec=0&quality=100&cut_x=55&cut_y=0&cut_h=0&cut_w=887&di=b0513ba42cc6631e8a8620055a0ac8bc&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C51%252C998%252C499%2Fsign%3D18461cad010828387c42865485a98534%2Fbba1cd11728b4710862b4a7ec5cec3fdfc03237f.jpg', '习近平在西雅图出席晚宴并演讲'),
(7, 'http://timg01.baidu-img.cn/timg?tc&size=b567_319&sec=0&quality=100&cut_x=35&cut_y=0&cut_h=0&cut_w=567&di=fdd3db0607e8010799371d417749d871&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C37%252C638%252C319%2Fsign%3D32e2895364d9f2d3345e7eaf94dca620%2Fd53f8794a4c27d1e9b0d8d761dd5ad6eddc4385c.jpg', '又虐轩轩…诺一夏天牵手两小无猜'),
(8, 'http://timg01.baidu-img.cn/timg?tc&size=b640_360&sec=0&quality=100&cut_x=0&cut_y=48&cut_h=360&cut_w=0&di=b33e8a9022cf0890a467b6c3cd02bcc9&src=http%3A%2F%2Ft11.baidu.com%2Fit%2Fu%3D3676592563%2C62242523%26fm%3D32%26s%3D09A26A954A1334C806B5C5650300A013%26w%3D640%26h%3D457%26img.JPEG', '香港地铁9男子追砍3人 血肉横飞'),
(9, 'http://timg01.baidu-img.cn/timg?tc&size=b474_267&sec=0&quality=100&cut_x=30&cut_y=0&cut_h=0&cut_w=474&di=92324fd994dcd3b78b23e6d7c2462734&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fnews%2Fcrop%253D0%252C140%252C535%252C267%2Fsign%3D6dba9b5aba3eb1355088edfb9b2e84e2%2F30adcbef76094b36411fac5fa5cc7cd98c109df7.jpg', '探秘比尔·盖茨将宴请习大大吃饭之地'),
(10, 'http://timg01.baidu-img.cn/timg?tc&size=b1000_562&sec=0&quality=100&cut_x=0&cut_y=97&cut_h=562&cut_w=0&di=e2b157291fc10715e1baa2cae554add8&src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3Dhttp%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F66828163%2F1000%26fm%3D94', '习近平参观波音公司获赠礼物');

-- --------------------------------------------------------

--
-- 表的结构 `recommend`
--

CREATE TABLE IF NOT EXISTS `recommend` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_img` varchar(200) NOT NULL,
  `news_content` text NOT NULL,
  `add_times` date NOT NULL,
  `news_source` varchar(20) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `recommend`
--

INSERT INTO `recommend` (`news_id`, `news_title`, `news_img`, `news_content`, `add_times`, `news_source`) VALUES
(1, '习近平给中美工商大佬上六堂生意课', 'http://t10.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0924/60/a/15553970/auto.jpg&fm=36', '第三课：中国开放像芝麻开门，开了就关不上。', '2015-09-24', '置顶'),
(2, '习近平访美首单落定 工银租赁签波音737飞机订单', 'http://t10.baidu.com/it/u=http://e.hiphotos.baidu.com/news/q%3D100/sign=a724f872f136afc3080c3b658318eb85/562c11dfa9ec8a13c74ce252f103918fa0ecc02a.jpg&fm=36', '中国的航空公司和飞机租赁公司将与美国波音公司签署总数为300架的飞机采购协议。', '2015-09-23', '腾讯网'),
(3, '中国高超音速飞机用途揭秘：可引导东风26打航母', 'http://t11.baidu.com/it/u=http://y1.ifengimg.com/ifengimcp/pic/20150918/8d55787c543521cf486b_size68_w614_h439.jpg&fm=36', '试飞时间长达数小时，或为轰-6携至高空投放的无人机。', '2015-09-23', '凤凰要闻'),
(4, '杨振宁演讲 学生：最想见翁帆', 'http://t12.baidu.com/it/u=http://img1.cache.netease.com/3g/2015/9/23/2015092313190220df6.jpg&fm=36', '发现原本能容纳200多人的报告厅挤满了上千名学生。', '2015-09-23', '网易要闻'),
(5, '天津爆炸现场启动市容恢复', 'http://t11.baidu.com/it/u=http://img3.cache.netease.com/3g/2015/9/23/20150923101922bddbf.jpg&fm=36', '滨海新区已启动事故区域周边环境市容清整恢复，尽快将事故区域周边的市容环境恢复原貌。', '2015-09-23', '网易要闻'),
(6, '外媒：中信证券涉嫌利用救市措施牟利 被官方查出', 'http://t12.baidu.com/it/u=http://d.ifengimg.com/w150_h106/y2.ifengimg.com/ifengimcp/pic/20150923/d994321abf2be12e049c_size145_w821_h586.jpg&fm=36', '有证据表明，中信证券涉嫌存在利用事先获悉的政府救市措施为自身牟利的行为，还涉嫌引导救市资金为其...', '2015-09-23', '凤凰头条'),
(7, '北京国土局原局长今天上午受审 ', 'http://t10.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/d5/7/56550257/550x359.jpg&fm=36', '记者。', '2015-09-23', '新浪要闻'),
(8, '武汉高校为教学采购130颗钻石', 'http://t11.baidu.com/it/u=http://img1.cache.netease.com/catchpic/D/D2/D221F2366C71E5E25CD4097054E3E5A8.jpg&fm=36', '该校订购的一批钻石，本学期正式用于宝石材料工艺和珠宝鉴定专业教学，观察、触摸这些钻石，就是学生...', '2015-09-23', '网易要闻'),
(9, '俄专家：朝鲜5年后或拥有50枚核弹', 'http://t12.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/0e/6/89547564/auto.jpg&fm=36', '如果继续实行挑衅朝鲜的政策，比如举行大规模演习，那么朝鲜研制核武器的工作甚至可能加速。', '2015-09-23', '新浪要闻'),
(10, '安倍获莫迪祝福 回复时谢错人', 'http://t10.baidu.com/it/u=http://img1.cache.netease.com/catchpic/3/33/335B03DF821C09695278411759FE5BE4.jpg&fm=36', '由于输入莫迪的网名时中间空了一格，结果发给了一位与莫迪同名的毫不相识的人。', '2015-09-23', '网易要闻'),
(17, '大学生找工作面试被问“多久洗一次头”', 'http://t11.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0924/f3/9/51554317/337x600.jpg&fm=36', '几名大四学生就在朋友圈中分别吐槽了自己碰到的“奇葩”面试题。', '2015-09-24', '新浪要闻');

-- --------------------------------------------------------

--
-- 表的结构 `sociology`
--

CREATE TABLE IF NOT EXISTS `sociology` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_img` varchar(200) NOT NULL,
  `news_content` text NOT NULL,
  `add_times` date NOT NULL,
  `news_source` varchar(20) NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_title` (`news_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `sociology`
--

INSERT INTO `sociology` (`news_id`, `news_title`, `news_img`, `news_content`, `add_times`, `news_source`) VALUES
(1, '湖北厨师2年创作200余件面塑', 'http://t12.baidu.com/it/u=http://img1.cache.netease.com/catchpic/C/CA/CAAD59B6A7A76B0D35E43210321C4367.jpg&fm=36', '谈起自己的梦想，艾民表示，希望通过自己的努力，影响更多身边的人，把面塑这门手艺继承发扬下去。', '2015-09-23', '新浪要闻'),
(2, '夫妻凌晨吵架妻子转身跳楼', 'http://t12.baidu.com/it/u=http://inews.gtimg.com/newsapp_ls/0/66604563_150120/0&fm=36', '万一自己和同事发现晚了，万一当时悬在7楼的女子没被抓牢……。', '2015-09-23', '网易头条'),
(3, '男子街头被骗 学骗术行骗被擒', 'http://t10.baidu.com/it/u=http://img3.cache.netease.com/cnews/2015/9/22/201509221818120736c.png&fm=36', '年轻男子刘某在街边玩猜瓜子被骗，讨教骗术后摆摊开始骗别人。', '2015-09-23', '百度新闻'),
(4, '男子持斧头杀妻 用棉被捂尸体', 'http://t11.baidu.com/it/u=http://img5.cache.netease.com/cnews/2015/9/23/2015092313212684fcb.png&fm=36', '哪有舌头不碰牙的，夫妻之间，为生活中一些琐碎事儿拌嘴很正常，比如孩子教育问题、老人养老问题等等。', '2015-09-23', '腾讯网'),
(5, '母亲为90后女儿征婚 在校园贴"寻亲家"启事', 'http://t12.baidu.com/it/u=http://n1.itc.cn/img7/adapt/wb/smccloud/2015/09/23/144295519048058023_620_1000.JPEG&fm=36', '视频：大学校园“寻亲家”渭南一母亲为女贴征婚广告  	 	 	   	漫画图  	“女儿，90...', '2015-09-23', '凤凰新闻'),
(6, '京沪大妈鸟巢齐跳《小苹果》', 'http://t11.baidu.com/it/u=http://img2.cache.netease.com/cnews/2015/9/23/2015092313114340e1d.png&fm=36', '大妈们一舞比完再接一曲，兴致高昂，原本定为20分钟的比赛时间延长至1个小时。', '2015-09-23', '新浪头条'),
(7, '大学生见明星后报警求被带走', 'http://t12.baidu.com/it/u=http://img3.cache.netease.com/cnews/2015/9/23/20150923132952db15c.png&fm=36', '合肥警方接到一个年轻男子报警，辖区井岗警出警到达，找到报警人，发现其一切正常，男子虽然自称干了...', '2015-09-23', '网易头条'),
(8, '男子当街猥亵幼女被路过行人飞腿踹倒(图)', 'http://t11.baidu.com/it/u=http://r3.sinaimg.cn/10230/2015/0923/a7/4/17547239/300x287.jpg&fm=36', '涉嫌猥亵犯罪的男子已被移交当地刑警大队。', '2015-09-23', '腾讯网'),
(9, '湖北学生坠亡教学楼 死前失踪', 'http://t12.baidu.com/it/u=http://img1.cache.netease.com/cnews/2015/9/23/20150923104017cfdda_550.jpg&fm=36', '新洲一名高中新生因为没去教室上晚自习，老师发现后和学生一起寻找，直至晚上10时左右，一名老师才...', '2015-09-23', '凤凰要闻'),
(10, '男子中10米高木瓜树 欲申纪录', 'http://t10.baidu.com/it/u=http://img5.cache.netease.com/cnews/2015/9/24/20150924134513c82ab.jpg&fm=36', '我家种的两棵木瓜树长得老高了，不知道能不能申请吉尼斯世界纪录。', '2015-09-24', '凤凰新闻');

-- --------------------------------------------------------

--
-- 表的结构 `user_message`
--

CREATE TABLE IF NOT EXISTS `user_message` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user_message`
--

INSERT INTO `user_message` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
