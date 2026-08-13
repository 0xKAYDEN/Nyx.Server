----------------------------------------------------------------------------
--Name:		[征服][基础数据]活动时间表.lua
--Purpose:	活动时间数据
--Creator: 	郑鋆
--Created:	2017/06/07
----------------------------------------------------------------------------

-- 命名前缀
-- ActivityTime_

-- 活动时间表
tActivityTime = {}

-- 坐标表
tNpcPos = {}

------------------------------------------------------------------ 跨服组队PK赛------------------------------------------------------------------
tActivityTime["ServerTeamPk"] = {}
-- 送门票的时间
tActivityTime["ServerTeamPk"]["Ticket"] = "2020-06-25 00:00 2020-07-15 23:59"
-- 门票使用时间
tActivityTime["ServerTeamPk"]["UseTicket"] = "2020-06-25 00:00 2020-07-20 23:59"
-- 比赛的时间
tActivityTime["ServerTeamPk"]["Match"] = "2020-07-16 00:00 2020-07-16 23:59"

-- 夏日大作战
tActivityTime["Summer"] = {}
tActivityTime["Summer"]["BigBattle"] = "2017-11-18 00:00 2017-12-13 23:59"
-- 物品使用时间以及兑换商店时间
tActivityTime["Summer"]["UseItem"] = "2017-11-18 00:00 2017-12-13 23:59"
-- 领取排行版奖励的时间
tActivityTime["Summer"]["Rank"] = "2017-07-21 00:00 2017-08-02 23:59"
-- 领取魅力总榜的奖励时间
tActivityTime["Summer"]["TotalRank"] = "2017-08-03 00:00 2017-08-03 23:59"
-- 新的兑换商店时间
tActivityTime["Summer"]["NewExchange"] ="2020-06-25 00:00 2020-07-20 23:59"

-------------------------------------英文征服9月VS活动-----------------------------
tActivityTime["SeptemberMakerActivity"] = {}
tActivityTime["SeptemberMakerActivity"]["BeforeTime"] = "2017-01-01 00:00 2017-08-31 23:59"
tActivityTime["SeptemberMakerActivity"]["SubmitTime"] = "2017-09-01 00:00 2017-09-10 10:00"
tActivityTime["SeptemberMakerActivity"]["ChargeTime"] = "2017-09-11 00:00 2017-09-15 23:59"
tActivityTime["SeptemberMakerActivity"]["ChargeTimeA"] = "2017-09-11 01:00 2017-09-15 23:59"
tActivityTime["SeptemberMakerActivity"]["CaculateTicket"] = "2017-09-10 10:01 2017-09-10 23:59"
tActivityTime["SeptemberMakerActivity"]["CaculateTicketA"] = "2017-09-10 10:01 2017-09-11 00:59"
tActivityTime["SeptemberMakerActivity"]["ActivityTime"] = "2017-09-01 00:00 2017-09-15 23:59"
tActivityTime["SeptemberMakerActivity"]["ChargeGoods"] = "2017-09-01 00:00 2017-09-15 23:59"
tActivityTime["SeptemberMakerActivity"]["Broadcast"] = {}
tActivityTime["SeptemberMakerActivity"]["Broadcast"][1] = "2017-9-11 01:00 2017-9-11 01:00"
tActivityTime["SeptemberMakerActivity"]["Broadcast"][2] = "2017-9-10 00:00 2017-9-10 00:00"

-------------------------------12月老玩家回归活动奖品及发奖action制作-------------
tActivityTime["DecOldPlayerReward"] = {}
tActivityTime["DecOldPlayerReward"]["PackTime"] = "2017-09-07 00:00 2018-01-31 23:59"




------------------------------------------------------------------ 170815[英文征服][活动脚本]9月德州赛事新增------------------------------------------------------------------
tActivityTime["NewPoker"] = {}
tActivityTime["NewPoker"]["ActTime"] = "2017-01-01 00:00 2017-09-30 23:59"
tActivityTime["NewPoker"]["ActTimeDilog"] = "2017-09-01 00:00 2017-09-30 23:59"
tActivityTime["NewPoker"]["ActTime1"] = "2017-01-01 00:00 2017-10-30 23:59"

------------------------------------------------------------------ 家园赌桌众筹活动需求 ------------------------------------------------------------------
tActivityTime["Crowdfunding"] = {}
tActivityTime["Crowdfunding"]["ActivityTime"] = "2017-09-01 00:00 2017-09-30 23:59"
tActivityTime["Crowdfunding"]["RefundTime"] = "2017-10-12 00:00 2017-11-12 23:59"

------------------------------------------------------------------ 七夕节活动制作------------------------------------------------------------------
tActivityTime["ChineseValentinesDay"] = {}
-- 活动时间
tActivityTime["ChineseValentinesDay"]["ActivityTime"] = "2017-09-07 00:00 2017-09-20 23:59"
-- 部分物品过期删除时间
tActivityTime["ChineseValentinesDay"]["Deadline"] = "2017-09-07 00:00 2017-10-20 23:59"
------------------------------------------------------------------ 9月版本活跃礼包活动------------------------------------------------------------------
tActivityTime["SeptActivity"] ={}
--上线获取礼包时间
tActivityTime["SeptActivity"]["Item"] = "2017-10-17 00:00 2017-11-17 23:59"
------------------------------------------------------------------ 精炼提升免费福利包------------------------------------------------------------------
tActivityTime["Refined"] = {}
tActivityTime["Refined"]["ActiveTimes"] = "2017-10-17 00:00 2017-11-15 23:59"

tActivityTime["Refined"]["ItemTimesUseTimes"] = "2017-10-17 00:00 2017-12-07 23:59"

------------------------------------------------------------------ 德州新增道具第二期------------------------------------------------------------------
tActivityTime["SecondNewProps"] = {}
-- 活动时间
tActivityTime["SecondNewProps"]["ActivityTime"] = "2017-10-17 00:00 2017-11-18 23:59"

------------------------------------------------------------------ 埃及队球衣礼包------------------------------------------------------------------
tActivityTime["EgyptTeamJersey"] = {}
-- 活动时间
tActivityTime["EgyptTeamJersey"]["ActivityTime"] ="2017-10-19 00:00 2017-11-01 23:59"

------------------------------------------------------------------ 转职圣殿 ------------------------------------------------------------------
tActivityTime["MayChangePro"] = {}
tActivityTime["MayChangePro"]["ActivityTime"] = "2017-11-02 00:00 2017-12-02 23:59"
----------------------------------------------------------------- 感恩月-以旧换新活动制作-------------------------------------------------------------------
	--活动时间 
	tActivityTime["ThankGivingExchange"]={}
	tActivityTime["ThankGivingExchange"]["BeforeActiveTime"]= "2017-01-01 00:00 2017-11-08 23:59"
	tActivityTime["ThankGivingExchange"]["ActiveTime"]="2017-11-09 00:00 2017-11-30 23:59"
------------------------------------------------------------11月感恩月赌博分场活动------------------------------------------------------------
tActivityTime["GratefulActivity"] = {}
tActivityTime["GratefulActivity"]["BeforeTime"] = "2017-10-01 00:00 2017-11-08 23:59"
tActivityTime["GratefulActivity"]["ActivityTime"] = "2017-11-09 00:00 2017-11-28 23:59"
tActivityTime["GratefulActivity"]["PeopleTime"] = "2017-11-09 00:00 2017-11-16 23:59"
tActivityTime["GratefulActivity"]["CoatTime"] = "2017-11-17 00:00 2017-11-23 23:59"
tActivityTime["GratefulActivity"]["EquipTime"] = "2017-11-24 00:00 2017-11-30 23:59"
tActivityTime["GratefulActivity"]["AllTime"] = "2017-11-09 00:00 2017-11-28 23:59"
tActivityTime["GratefulActivity"]["ExchangeTime"] = "2017-11-29 00:00 2017-12-30 23:59"

------------------------------------------------------------------ 感恩月促销------------------------------------------------------------------
tActivityTime["Grateful"] = {}
-- 活动时间1
tActivityTime["Grateful"]["ActivityTime"] = {}
tActivityTime["Grateful"]["ActivityTime"][1] ="2017-11-11 14:00 2017-11-11 14:19"
tActivityTime["Grateful"]["ActivityTime"][2] ="2017-11-11 18:00 2017-11-11 18:19"
tActivityTime["Grateful"]["ActivityTime"][3] ="2017-11-11 21:00 2017-11-11 21:19"
tActivityTime["Grateful"]["ActivityTime"][4] ="2017-11-17 14:00 2017-11-17 14:19"
tActivityTime["Grateful"]["ActivityTime"][5] ="2017-11-17 18:00 2017-11-17 18:19"
tActivityTime["Grateful"]["ActivityTime"][6] ="2017-11-17 21:00 2017-11-17 21:19"
tActivityTime["Grateful"]["ActivityTime"][7] ="2017-11-24 14:00 2017-11-24 14:19"
tActivityTime["Grateful"]["ActivityTime"][8] ="2017-11-24 18:00 2017-11-24 18:19"
tActivityTime["Grateful"]["ActivityTime"][9] ="2017-11-24 21:00 2017-11-24 21:19"
--活动时间2
tActivityTime["Grateful"]["ActivityTime11"]= "2017-11-11 00:00 2017-11-16 23:59"
tActivityTime["Grateful"]["ActivityTime12"]="2017-11-17 00:00 2017-11-23 23:59"
tActivityTime["Grateful"]["ActivityTime13"]="2017-11-24 00:00 2017-11-30 23:59"
--总活动时间
tActivityTime["Grateful"]["AllActTime"]="2017-11-11 00:00 2017-11-30 23:59"

--属性道具促销时间
tActivityTime["Grateful"][22266]={}
tActivityTime["Grateful"][22266]["BeforeActivityTime"] = "2017-01-01 00:00 2017-11-10 23:59"
tActivityTime["Grateful"][22266]["ActivityTime"] = "2017-11-11 00:00 2017-11-16 23:59"
--套促销时间
tActivityTime["Grateful"][22267]={}
tActivityTime["Grateful"][22267]["BeforeActivityTime"] = "2017-01-01 00:00 2017-11-16 23:59"
tActivityTime["Grateful"][22267]["ActivityTime"] = "2017-11-17 00:00 2017-11-23 23:59"
--装备促销时间
tActivityTime["Grateful"][22268]={}
tActivityTime["Grateful"][22268]["BeforeActivityTime"] = "2017-01-01 00:00 2017-11-23 23:59"
tActivityTime["Grateful"][22268]["ActivityTime"] = "2017-11-24 00:00 2017-11-30 23:59"

------------------------------------------------------------------ 感恩回馈签到礼盒------------------------------------------------------------------
tActivityTime["ThanksGivingPack"] = {}
-- 活动时间
tActivityTime["ThanksGivingPack"]["ActivityTime"] ="2017-11-16 00:00 2017-11-30 23:59"

tActivityTime["ThanksGivingPack"][1]="2017-11-16 00:00 2017-11-16 23:59"
tActivityTime["ThanksGivingPack"][2]="2017-11-17 00:00 2017-11-17 23:59"
tActivityTime["ThanksGivingPack"][3]="2017-11-18 00:00 2017-11-18 23:59"
tActivityTime["ThanksGivingPack"][4]="2017-11-19 00:00 2017-11-19 23:59"
tActivityTime["ThanksGivingPack"][5]="2017-11-20 00:00 2017-11-20 23:59"
tActivityTime["ThanksGivingPack"][6]="2017-11-21 00:00 2017-11-21 23:59"
tActivityTime["ThanksGivingPack"][7]="2017-11-22 00:00 2017-11-22 23:59"
tActivityTime["ThanksGivingPack"][8]="2017-11-23 00:00 2017-11-23 23:59"
tActivityTime["ThanksGivingPack"][9]="2017-11-24 00:00 2017-11-24 23:59"
tActivityTime["ThanksGivingPack"][10]="2017-11-25 00:00 2017-11-25 23:59"
tActivityTime["ThanksGivingPack"][11]="2017-11-26 00:00 2017-11-26 23:59"
tActivityTime["ThanksGivingPack"][12]="2017-11-27 00:00 2017-11-27 23:59"
tActivityTime["ThanksGivingPack"][13]="2017-11-28 00:00 2017-11-28 23:59"
tActivityTime["ThanksGivingPack"][14]="2017-11-29 00:00 2017-11-29 23:59"
tActivityTime["ThanksGivingPack"][15]="2017-11-30 00:00 2017-11-30 23:59"


------------------------------------------------------------------ 1天石赌活动制作------------------------------------------------------------------
tActivityTime["OneCpGamble"] = {}
-- 活动时间
tActivityTime["OneCpGamble"]["Beftime"] = "2017-01-01 00:00 2017-11-15 23:59" --活动前
tActivityTime["OneCpGamble"]["Nowtime"] = "2017-11-16 00:00 2017-11-30 23:59" --活动中
tActivityTime["OneCpGamble"]["Afttime"] = "2017-12-01 00:00 2020-12-31 23:59" --活动后

-------------------------------------------德州赛季比赛及礼包制作-----------------------------------------
tActivityTime["NovTexasPokerAndBag"] = {}
tActivityTime["NovTexasPokerAndBag"][1] = {}
tActivityTime["NovTexasPokerAndBag"][1]["ActivityTime"] ="2017-11-21 00:00 2017-12-04 23:59"
tActivityTime["NovTexasPokerAndBag"][1]["ItemOpen"] ="2017-11-21 00:00 2018-01-03 23:59"
tActivityTime["NovTexasPokerAndBag"][2] = {}
tActivityTime["NovTexasPokerAndBag"][2]["ActivityTime"] ="2017-12-28 00:00 2018-01-10 23:59"
tActivityTime["NovTexasPokerAndBag"][2]["ItemOpen"] ="2017-12-28 00:00 2018-02-09 23:59"
tActivityTime["NovTexasPokerAndBag"][3] = {}
tActivityTime["NovTexasPokerAndBag"][3]["ActivityTime"] ="2018-05-24 00:00 2018-06-13 23:59"
tActivityTime["NovTexasPokerAndBag"][3]["ItemOpen"] ="2018-05-24 00:00 2018-07-13 23:59"

------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]多米诺版本测试
--Purpose:	多米诺版本测试
--Creator: 	严振飞
--Created:	2017/11/06
------------------------------------------------------------------------------------
tActivityTime["DominoNpc"] = {}
tActivityTime["DominoNpc"]["WebTime"] = {}
tActivityTime["DominoNpc"]["WebTime"][1] = "2017-11-21 00:00 2017-11-23 23:59"
tActivityTime["DominoNpc"]["WebTime"][2] = "2017-11-24 00:00 2017-11-26 23:59"



------------------------------------------------------------------ 玉米煎饼怀恩情------------------------------------------------------------------

tActivityTime["CornPancakeThanks"] = {}
tActivityTime["CornPancakeThanks"]["Activity"] = "2017-11-23 00:00 2017-11-29 23:59"
tActivityTime["CornPancakeThanks"]["ItemUse"] = "2017-11-23 00:00 2017-12-06 23:59"

------------------------------------------------------------------------------------
--Name：            171127[英文征服][活动脚本]补偿感恩回馈礼包
--Creator:      王贤
--Created:     2017/11/27
------------------------------------------------------------------------------------
-- 感恩回馈礼包
tActivityTime["ThanksgivingFeedbackPackage"] = {}
tActivityTime["ThanksgivingFeedbackPackage"]["AwardItem"] = "2017-11-27 00:00 2017-12-10 23:59"
tActivityTime["ThanksgivingFeedbackPackage"]["UseItem"] = "2017-11-27 00:00 2017-12-31 23:59"
------------------------------------------------------------------ 赠品大狂欢（12.1）------------------------------------------------------------------
-- 180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5)(不上四月新服)
--2月赠品大狂欢制作(2.22-2.28)
tActivityTime["BoundCarnival"] = {}
tActivityTime["BoundCarnival"]["ActivityTime"] = "2020-08-04 00:00 2020-08-31 23:59"
tActivityTime["BoundCarnival"]["BeforeActivityTime"] = "2020-01-01 00:00 2020-08-03 23:59"
tActivityTime["BoundCarnival"]["OldActivityTime"] = "2020-05-12 00:00 2020-05-31 23:59"
tActivityTime["BoundCarnival"]["OldBeforeActivityTime"] = "2020-01-01 00:00 2020-05-11 23:59"
tActivityTime["BoundCarnival"]["ChrismasActivityTime"] = "2019-03-12 00:00 2019-04-30 23:59"

------------------------------------------------------------------------------------
--Name：            170721[英文征服][活动脚本]8月星陨石轮盘赌
--Creator:      丁雨浩
--Created:     2017/07/21
------------------------------------------------------------------------------------
tActivityTime["StoneRoulette"] = {}
tActivityTime["StoneRoulette"]["BeforeTime"] = "2017-07-22 00:00 2017-12-04 23:59"
tActivityTime["StoneRoulette"]["AcitveTime"] = "2017-12-05 00:00 2017-12-20 23:59"
tActivityTime["StoneRoulette"]["UseGiftTime"] = "2017-12-05 00:00 2017-12-27 23:59"

------------------------------------------------------------------------------------
--Name：       170720[英文征服][活动脚本]星陨石大促销活动制作
--Creator:     潘云锋
--Modified:    潘云锋
--Created:     2017/07/20
--Updated:     2017/09/27
------------------------------------------------------------------------------------
tActivityTime["StarStonePackage"] = {}
tActivityTime["StarStonePackage"]["BeforeActivityTime"] = "2017-07-22 00:00 2017-12-04 23:59"
tActivityTime["StarStonePackage"]["ActivityTime"] = "2017-12-05 00:00 2017-12-20 23:59"



------------------------------------------------------------------------------------
--Name：            171106[英文征服][活动脚本]日活礼包制作（12.14）
--Creator:      杨艳
--Created:     2017/11/06
------------------------------------------------------------------------------------
tActivityTime["DailyPackge"]={}
	tActivityTime["DailyPackge"]["ActivityTime"] = "2017-12-14 00:00 2017-12-25 23:59"
	tActivityTime["DailyPackge"]["UseTime"] = "2017-12-14 00:00 2017-12-31 23:59"

---------------------------------------------------------------------------------------------
--Name:		171110[简体征服][活动脚本]12月琳琅嘉年华活动制作
--Creator: 	王贤
--Created:		2017/11/10
---------------------------------------------------------------------------------------------
tActivityTime["LinLang"] = {}
tActivityTime["LinLang"]["ActivityTime"] = "2017-12-14 00:00 2017-12-27 23:59"
tActivityTime["LinLang"]["BeforeTime"] = "2017-11-15 00:00 2017-12-13 23:59"
tActivityTime["LinLang"]["AfterTime"] = "2017-12-28 00:00 2017-12-31 23:59"
tActivityTime["LinLang"]["ExchangeTime"] = "2017-12-28 00:00 2018-01-03 23:59"
tActivityTime["LinLang"]["ChangeTime"] = "2017-12-14 00:00 2018-01-03 23:59"

------------------------------------------------------------------------------------
---171113[英文征服][活动脚本]12月琳琅嘉年华活动制作
---SQL BY:丁雨浩
---DATE:2017-11-13
------------------------------------------------------------------------------------
tActivityTime["MMO"] = {}
tActivityTime["MMO"]["ActivityTime"] = "2017-12-14 00:00 2017-12-27 23:59"
tActivityTime["MMO"]["UseTime"] =  "2017-12-14 00:00 2018-01-27 23:59"


------------------------------------------------------------------------------------
--Name:			161027[简体征服][活动脚本]大型MMO活动制作-趣味积分部分-跨服世界BOSS
--Purpose:		跨服世界BOSS
--Creator: 		严振飞
--Created:		2016/10/27
------------------------------------------------------------------------------------
tActivityTime["MMOServiceBoss"] = {}
tActivityTime["MMOServiceBoss"]["NowTime"] = "2017-12-14 00:00 2017-12-27 23:59"
tActivityTime["MMOServiceBoss"]["DelMont"] = "2017-12-14 00:00 2017-12-28 23:59"

------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]你画我猜活动
--Purpose:	你画我猜活动
--Creator: 	张磊
--Created:	2016/10/31
------------------------------------------------------------------------------------
tActivityTime["YouDrawMeGuess"] = {}
tActivityTime["YouDrawMeGuess"]["ActivityTime"] = "2018-03-08 00:00 2018-03-22 23:59"
tActivityTime["YouDrawMeGuess"]["SandMailTime"] = "2018-03-08 00:00 2018-03-23 23:59"
tActivityTime["YouDrawMeGuess"]["FurnitureTime"] = "2018-03-08 00:00 2018-04-22 23:59"



------------------------------------------------------------------------------------
--Name:		171114[英文征服][活动脚本]12月圣诞大促活动(12.21-12.31)
--Purpose:	12月圣诞大促活动
--Creator: 	傅伟龙
--Created:	2017/11/14
------------------------------------------------------------------------------------
tActivityTime["DecChristmasPromotion"] = {}
tActivityTime["DecChristmasPromotion"]["BefTime"] = "2017-01-01 00:00 2017-12-20 23:59"
tActivityTime["DecChristmasPromotion"]["ActTime"]= "2017-12-21 00:00 2017-12-31 23:59"
tActivityTime["DecChristmasPromotion"]["LastActTime"] = "2018-01-01 00:00 2018-01-11 23:59"
tActivityTime["DecChristmasPromotion"]["TotalActTime"] = "2017-12-21 00:00 2018-01-11 23:59"

------------------------------------------------------------------------------------
--Name:		171218[英文征服][活动脚本]圣诞卡片
--Purpose:	圣诞卡片
--Creator: 	黄啸
--Created:	2017/12/18
------------------------------------------------------------------------------------
tActivityTime["ChristmasDay"] = {}
tActivityTime["ChristmasDay"]["ActivityTime"] = "2017-12-20 00:00 2018-01-06 23:59"

------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]德州圣诞抽奖NPC及道具制作
--Creator:      杨艳
--Created:     2017/12/11
------------------------------------------------------------------------------------
tActivityTime["TexasChristmasDraw"] = {}
tActivityTime["TexasChristmasDraw"]["ActivityTime"] = "2017-12-25 00:00 2018-01-21 23:59"
tActivityTime["TexasChristmasDraw"]["AfterTime"] = "2017-12-21 00:00 2018-01-25 23:59"

------------------------------------------------------------------------------------
--Name：            171218[英文征服][活动脚本]星陨石优惠购(01.02-01.08)
--Creator:      吴燕柚
--Created:     2017/12/18
------------------------------------------------------------------------------------
tActivityTime["BuyAsteroids"] = {}
tActivityTime["BuyAsteroids"]["Bef_Time"] = "2017-12-18 00:00 2018-01-01 23:59"
tActivityTime["BuyAsteroids"]["Now_Time"] = "2018-01-02 00:00 2018-01-08 23:59"

------------------------------------------------------------- 新天石雨活动------------------------------------------------------------------
tActivityTime["NewCPsRain"] = {}
tActivityTime["NewCPsRain"]["BefTime"] = "2018-01-01 00:00 2018-01-03 23:59"
tActivityTime["NewCPsRain"]["NowTime"] = "2018-01-04 00:00 2018-01-08 23:59"
tActivityTime["NewCPsRain"]["MailTime"] = "2018-01-09 00:00 2018-01-09 23:59"

-- 每天开启时间段
tActivityTime["NewCPsRain"]["OpenTime"] = "07:00 23:59"

----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]一月促销
--Purpose:	一月促销
--Creator: 	洪聪敏
--Created:	2017/12/13
----------------------------------------------------------------------------
tActivityTime["JanuaPro"] = {}
--允许打开礼包时间
tActivityTime["JanuaPro"]["OpenTime"] = "2018-03-08 00:00 2018-04-31 23:59"
--活动前
tActivityTime["JanuaPro"]["BefTime"] = "2018-01-01 00:00 2018-01-08 00:00"
tActivityTime["JanuaPro"]["ActTime"] = "2018-01-09 00:00 2018-01-22 23:59"
tActivityTime["JanuaPro"]["ActDayTime"] = "08:00 23:59"

--------------------------------------------------------------------帮派斗地主----------------------------------------------------------------
tActivityTime["GangsLandlord"] = {}
tActivityTime["GangsLandlord"]["BeforeActivityTime"] = "2017-01-01 00:00 2019-05-13 23:59"
tActivityTime["GangsLandlord"]["ActivityTime"] = "2019-05-14 00:00 2019-06-13 23:59"
tActivityTime["GangsLandlord"]["ItemOutTime"] = "2019-05-14 00:00 2019-06-13 23:59"
tActivityTime["GangsLandlord"]["FirstBeforeTime"] = "2019-05-14 00:00 2019-05-15 21:29"

------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]1月新年赠品转盘活动
--Creator:      蔡颖静
--Created:     2017/12/11
------------------------------------------------------------------------------------
tActivityTime["NewYearRoulette"] = {}
tActivityTime["NewYearRoulette"]["BeforeActivityTime"] = "2017-01-01 00:00 2018-01-17 23:59"
tActivityTime["NewYearRoulette"]["ActivityTime"] = "2018-01-18 00:00 2018-02-08 23:59"

------------------------------------------------------------------------------------
--Name:		180108[英文征服][活动脚本]一月份德州锦标赛+SNG长期赛事配置
--Creator: 	兰瑞妹
--Created:	2018/01/08
------------------------------------------------------------------------------------
tActivityTime["TexasProps"] = {}
-- 更新包后直接删除
tActivityTime["TexasProps"]["UpdateAfterTime"] = "2018-01-08 00:00 2018-01-08 23:59"
-- 更新后门票删除时间
tActivityTime["TexasProps"]["ItemUseTime"] = "2018-01-08 00:00 2018-01-25 23:59"

------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]打怪掉宝活动
--Creator: 	兰瑞妹
--Created:	2017/12/19
------------------------------------------------------------------------------------
tActivityTime["KillMonsterDropItem"] = {}
tActivityTime["KillMonsterDropItem"]["BeforeActivityTime"] = "2015-05-11 00:00 2018-01-17 23:59"
tActivityTime["KillMonsterDropItem"]["ActivityTime"] = "2018-01-18 00:00 2018-01-23 23:59"
tActivityTime["KillMonsterDropItem"]["ExchangeTime"] = "2018-01-18 00:00 2018-01-26 23:59"

------------------------------------------------------------------------------------
-- Name:		171215[英文征服][活动脚本]1月新年进阶之路
-- Purpose:		进阶之路
-- Creator:		wzh
-- Created:		2017/12/15
----------------------------------------------------------------------------------
tActivityTime["AdvancedRoad"] = {}
tActivityTime["AdvancedRoad"]["BeforeTime"] = "2017-12-15 00:00 2018-01-24 23:59"
tActivityTime["AdvancedRoad"]["ActivityTime"] = "2018-01-25 00:00 2018-02-08 23:59"

------------------------------------------------------------------------------------
--Name:		171214[英文征服][活动脚本]祝福神纹降世
--Creator: 	黄啸
--Created:	2017/12/14
------------------------------------------------------------------------------------
-- 新征服预热活动
tActivityTime["WarmUp"]= {}
tActivityTime["WarmUp"]["BeforeActivityTime"] = "2017-06-03 00:00 2018-01-24 23:59"
tActivityTime["WarmUp"]["ActivityTime"] = "2018-01-25 00:00 2018-01-31 23:59"


----------------------------------------------------------------------------
--Name:		180117[英文征服][活动脚本]二月情人节促销
--Creator: 	黄啸
--Created:	2018/01/17
----------------------------------------------------------------------------
tActivityTime["ValentineDayPromation"] = {}
tActivityTime["ValentineDayPromation"]["ActivityTime"] = "2018-01-25 00:00 2018-02-10 23:59"

------------------------------------------------------------------------------------
--Name：            180110[英文征服][活动脚本]老玩家回归福利活动礼包及发奖action
--Creator:      杨艳
--Created:    2018-01-10
------------------------------------------------------------------------------------
tActivityTime["OldPlayerWelfarePackage"] = {}
tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"] = "2018-01-25 00:00 2018-03-31 23:59"

------------------------------------------------------------------------------------
--Name：            171113[简体征服][活动脚本]神纹版本更新奖励及商店配置
--Creator:      蔡颖静
--Created:     2017/11/13
------------------------------------------------------------------------------------
--活动时间
tActivityTime["RuneVersionUpdate"] = "2018-02-06 00:00 2018-02-26 23:59"

------------------------------------------------------------------------------------
--Name：            180110[英文征服][活动脚本]神纹答题
--Creator:      游若楠
--Created:     2018/01/10
------------------------------------------------------------------------------------
tActivityTime["RuneVersionQuestioning"] = {}
tActivityTime["RuneVersionQuestioning"]["ActiveTime"] = "2018-02-06 00:00 2018-02-15 23:59"
tActivityTime["RuneVersionQuestioning"]["AfterTime"] = "2018-02-16 00:00 2018-12-31 23:59"

------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]玄宝功能NPC制作
--Purpose:	玄宝功能NPC制作
--Creator: 	吴文鑫
--Created:	2018/01/05
------------------------------------------------------------------------------------

tActivityTime["XuanBaoFuncNpc"] = {}
tActivityTime["XuanBaoFuncNpc"]["Activity"] = "2018-01-08 00:00 2030-12-31 23:59"
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]天下第一武道会
--Creator:		翁清海
--Created:		2017/09/28
------------------------------------------------------------------------------------
tActivityTime["FirstWorldBudokai"] = {}
tActivityTime["FirstWorldBudokai"]["ActivityTime"] = "2020-04-02 00:00 2020-04-20 23:59"
tActivityTime["FirstWorldBudokai"]["LastDay"] = "2020-04-21 00:00 2020-04-21 23:59"
tActivityTime["FirstWorldBudokai"]["ItemUse"] = "2020-04-02 00:00 2020-04-20 23:59"

------------------------------------------------------------------------------------
--Name：            180111[英文征服][活动脚本]符文版本上线礼包（02.01）
--Creator:      杨艳
--Created:     2018/01/11
------------------------------------------------------------------------------------
tActivityTime["RuneVersionOlinePackge"] = {}
tActivityTime["RuneVersionOlinePackge"]["ActivityTime"] = "2018-02-06 00:00 2018-02-15 23:59"
------------------------------------------新服狂欢活动制作-新服任务狂欢(新服地图打宝活动------------------------------------------
tActivityTime["LookForTreasure"] = {}
tActivityTime["LookForTreasure"]["Beftime"] = "2020-01-01 00:00 2020-08-12 23:59"
tActivityTime["LookForTreasure"]["Nowtime"] = "2020-08-13 00:00 2020-08-19 23:59"
tActivityTime["LookForTreasure"]["Hourtime"] = "00:00 00:00"

------------------------------------------天机果活动------------------------------------------
tActivityTime["PeachaGardenActive"] = {}
tActivityTime["PeachaGardenActive"]["ActivityTime"] = "2020-08-13 00:00 2020-09-10 23:59"
tActivityTime["PeachaGardenActive"]["ExchangeTime"] = "2020-08-13 00:00 2020-09-20 23:59"
------------------------------------------神域新服活动------------------------------------------
tActivityTime["ShenYuElitePK"] = {}
tActivityTime["ShenYuElitePK"]["ActivityTime"] = "2020-08-13 00:00 2020-09-10 23:59"

------------------------------------------南宫促衣------------------------------------------
tActivityTime["CoatWarehouse_Sale"] = {}
tActivityTime["CoatWarehouse_Sale"]["BeforeTime"] = "2019-01-01 00:00 2020-08-03 23:59"
tActivityTime["CoatWarehouse_Sale"]["ActivityTime"] = "2020-08-04 00:00 2020-08-24 23:59" 
-- 新增打宝区掉落（指的是古神灵境）：每天限制20个岫山玉碎片，概率3%掉落
-- 复用请注意，这段看看要不要复用掉落
tActivityTime["CoatWarehouse_Sale"]["MonsterDrop"] = "2020-06-11 00:00 2020-07-01 23:59"
------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]德州新地图春节红包雨活动(2.13-2.17)
--Purpose:	德州新地图春节红包雨活动
--Creator: 	严振飞
--Created:	2018/01/12
------------------------------------------------------------------------------------
tActivityTime["RedPackRain"] = {}
tActivityTime["RedPackRain"]["BefTime"] = "2018-01-01 00:00 2018-02-12 23:59"
tActivityTime["RedPackRain"]["ActTime"] = "2018-02-13 00:00 2018-02-17 23:59"

------------------------------------------------------------------------------------
--Name：        180117[简体征服][活动脚本]狗年年兽活动制作(2.8)
--Creator:      陈莺
--Created:     2018/01/17
------------------------------------------------------------------------------------
tActivityTime["DogYear"] = {}
tActivityTime["DogYear"]["BefTime"] = "2018-01-01 00:00 2018-02-12 23:59"
tActivityTime["DogYear"]["NowTime"] = "2018-02-13 00:00 2018-03-12 23:59"
-----------------------------------------------------------------------------------------------------
--Name:		180126[简体征服][活动脚本]狗年年兽活动-跟随技能相关
--Creator: 	严振飞
--Created:	2018/01/26
------------------------------------------------------------------------------------------------------
tActivityTime["DogUpItem"] = {}
tActivityTime["DogUpItem"]["ActTime"] = "2018-02-13 00:00 2018-04-25 23:59"
tActivityTime["DogUpItem"]["LearnMagic"] = "2018-02-13 00:00 2018-04-25 23:59"

----------------------------------------------------- 180109[英文征服][活动脚本]2月情人节大作战
tActivityTime["ChineseValentinesOperation"] = {}
tActivityTime["ChineseValentinesOperation"]["ActivityTime"] = "2018-03-01 00:00 2018-03-20 23:59" -- 活动时间
tActivityTime["ChineseValentinesOperation"]["AdvancePartyTime"] = "2018-03-01 00:00 2018-03-07 23:59" -- Party可提前开启时间
tActivityTime["ChineseValentinesOperation"]["PartyTime"] = "2018-03-08 00:00 2018-03-20 23:59" -- Party最晚开启时间
tActivityTime["ChineseValentinesOperation"]["PartyEndTime"] = "2018-03-01 00:00 2018-03-21 00:30" -- Party最晚结束时间
tActivityTime["ChineseValentinesOperation"]["Official"] = "21:00 21:30" -- 官方Party开启时间
tActivityTime["ChineseValentinesOperation"]["Personal"] = "20:30 21:30" -- 私人Party不可开启时间
tActivityTime["ChineseValentinesOperation"]["InTheMap"] = "2018-03-01 00:00 2018-03-26 23:59" -- 传送npc时间
-- 宴会时间延长
tActivityTime["ChineseValentinesOperation"]["NewActivityTime"] = "2018-03-01 00:00 2018-04-30 23:59"
tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"] = "2018-03-01 00:00 2018-05-01 00:30" -- Party最晚结束时间

------------------------------------------------------------------------------------
--Name：            180208[英文征服][活动脚本]英文征服3月全职业成长宝活动
--Creator:      李甲
--Created:     2018/02/08
------------------------------------------------------------------------------------
tActivityTime["MarchGrowthPackage"] = {}
tActivityTime["MarchGrowthPackage"]["ActivityTime"] = "2018-03-06 00:00 2018-03-20 23:59"
tActivityTime["MarchGrowthPackage"]["BeforeTime"] = "2018-01-01 00:00 2018-03-05 23:59"
tActivityTime["MarchGrowthPackage"]["AfterTime"] = "2018-03-21 00:00 2018-12-31 23:59"
------------------------------------------------------------------------------------
--Name:		180209[英文征服][活动脚本]3月促销活动制作(3.08-3.22)
--Purpose:	3月促销活动制作
--Creator: 	傅伟龙
--Created:	2018/02/09
------------------------------------------------------------------------------------

tActivityTime["MarPromotionAct"] = {}
tActivityTime["MarPromotionAct"]["BefTime"] = "2018-01-01 00:00 2018-03-07 23:59"
tActivityTime["MarPromotionAct"]["ActTime"] = "2018-03-08 00:00 2018-03-22 23:59"
------------------------------------------------------------------------------------
--Name：            170921[简体征服][活动脚本]史诗武器新服
--Creator:      吴帆
--Created:     2017/09/21
------------------------------------------------------------------------------------
tActivityTime["EpicWeaponsSoul"] = {}
-- tActivityTime["EpicWeaponsSoul"]["BeforeActivity"] = "2017-01-01 00:00 2019-04-01 23:59"
tActivityTime["EpicWeaponsSoul"]["Activity"] = "2020-06-04 00:00 2020-06-17 23:59"
-- tActivityTime["EpicWeaponsSoul"]["AfterActivity"] = "2019-04-30 00:00 2027-10-11 23:59"
tActivityTime["EpicWeaponsSoul"]["HandInTime"] = "12:00 23:59"
tActivityTime["EpicWeaponsSoul"]["ZhuanPanHandInTime"] = "00:02 23:59"

------------------------------------------------------------------------------------
--Name：            161104[简体征服][活动脚本]春节元宵节小活动
--Creator:      丁雨浩
--Created:     2016/11/04
------------------------------------------------------------------------------------
tActivityTime["SpringActivity"] = {}
tActivityTime["SpringActivity"]["BeforeTime"] = "2016-11-01 00:00 2019-02-01 23:59"
tActivityTime["SpringActivity"]["AfterTime"] = "2019-02-24 00:00 2020-02-28 23:59"
tActivityTime["SpringActivity"]["NowTime"] = "2019-02-02 00:00 2019-02-23 23:59"
tActivityTime["SpringActivity"]["UseTime"] = "2019-02-02 00:00 2019-02-23 23:59"
tActivityTime["SpringActivity"]["ChunJieTime"] = "2019-02-02 00:00 2019-02-15 23:59"
tActivityTime["SpringActivity"]["YuanXiaoTime"] = "2019-02-16 00:00 2019-02-23 23:59"
tActivityTime["SpringActivity"]["RewardRed"] = "2019-02-06 00:00 2019-02-12 23:59"
tActivityTime["SpringActivity"]["oldUseTime"] = "2018-02-08 00:00 2018-03-07 23:59"
------------------------------------------------------------------------------------
--Name：            171102[简体征服][活动脚本]新版节日欢庆礼包制作
--Creator:      李甲
--Created:     2017/11/02
------------------------------------------------------------------------------------
tActivityTime["NewFestiveCelebrations"] = {}
tActivityTime["NewFestiveCelebrations"]["AfterTime"] = "2019-01-01 00:00 2019-12-31 23:59"

--------------------------------------- 180111[英文征服][活动脚本]2018年复活节小活动修改复用
tActivityTime["Easter"] = {}
tActivityTime["Easter"]["ActivityTime"] = "2019-04-18 00:00 2019-05-02 23:59"

-- 180314[英文征服][活动脚本]]4月彩蛋收集活动(4.1-4.10)
tActivityTime["EasterEggPainting"] = {}
-- 活动全长
tActivityTime["EasterEggPainting"]["ActivityTime"] = "2018-04-01 00:00 2018-04-10 23:59"

----------------------------------------------------- 180315[英文征服][活动脚本]4月一对一提升活动
tActivityTime["AprilOneToOneAdvance"] = {}
tActivityTime["AprilOneToOneAdvance"]["ActivityTime"] = "2018-04-05 00:00 2018-04-19 23:59"

------------------------------------------------------------------------------------
--Name：            180314[英文征服][活动脚本]4月超级帮战（4.5-5.11）
--Creator:      杨艳
--Created:     2018/03/14
------------------------------------------------------------------------------------

tActivityTime["AprilHelpingFight"] = {}
tActivityTime["AprilHelpingFight"]["ActivityTime"] = "2020-08-20 00:00 2020-09-24 23:59"

------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]海盗翻身Quiz任务制作
--Creator:      潘云锋
--Created:     2018/03/19
------------------------------------------------------------------------------------
tActivityTime["PirateQuiz"] = {}
tActivityTime["PirateQuiz"]["BeforeTime"] = "2018-01-01 00:00 2018-04-04 23:59"
tActivityTime["PirateQuiz"]["ActivityTime"] = "2018-04-05 00:00 2018-04-23 23:59"


------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
tActivityTime["SmashPot"] = {}
tActivityTime["SmashPot"]["ActivityTime"] = "2020-08-11 00:00 2020-08-31 23:59"
tActivityTime["SmashPot"]["AfterActivityTime"] = "2020-09-01 00:00 2020-09-01 23:59"

------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]百宝轮盘大促销
--Creator:      李甲
--Created:     2018/03/19
------------------------------------------------------------------------------------
tActivityTime["BaibaoRouletteSales"] = {}
tActivityTime["BaibaoRouletteSales"]["Activity"] = "2018-04-25 00:00 2018-05-02 23:59"

------------------------------------------------------------------------------------
--Name：            180320[英文征服][活动脚本]四月新服活动
--Creator:      潘云锋
--Created:     2018/03/20
------------------------------------------------------------------------------------
tActivityTime["AprilAcitve"] = {}
tActivityTime["AprilAcitve"]["BeforeActivity"] = "2018-01-01 00:00 2018-04-11 23:59"
tActivityTime["AprilAcitve"]["ActivityTime"] = "2018-04-12 00:00 2018-05-12 23:59"

------------------------------------------------------------------------------------
--Name:		180320[英文征服][活动脚本]海盗成品装备促销制作(4.12-4.28)
--Purpose:	海盗成品装备促销制作
--Creator: 	傅伟龙
--Created:	2018/03/20
------------------------------------------------------------------------------------
tActivityTime["PiratePromotion"] = {}
tActivityTime["PiratePromotion"]["ActivityTime"] = "2018-04-12 00:00 2018-04-28 23:59"

------------------------------------------------------------------------------------
--Name：            180314[英文征服][活动脚本]海盗翻身版本上线礼包制作
--Creator:      杨艳
--Created:     2018/03/14
------------------------------------------------------------------------------------
tActivityTime["PirateOnlinePackage"] = {}
tActivityTime["PirateOnlinePackage"]["ActivityTime"] = "2018-04-12 00:00 2018-04-23 23:59"

---------------------------------------------海盗翻身特权月---------------------------------------
tActivityTime["PrivilegeMonth"] = {}
tActivityTime["PrivilegeMonth"]["ActivityTime"] = "2018-04-12 00:00 2018-05-11 23:59"



------------------------------------------------------------------------------------
--Name:			180321[英文征服][活动脚本]周年许愿活动
--Purpose:		周年许愿
--Creator:		wzh
--Created:		2018/03/21
------------------------------------------------------------------------------------
tActivityTime["SpringFestivalWishes"] = {}
tActivityTime["SpringFestivalWishes"]["BeforeTime"] = "2018-01-01 00:00 2019-01-09 23:59"
tActivityTime["SpringFestivalWishes"]["ActivityTime"] = {}
tActivityTime["SpringFestivalWishes"]["ActivityTime"][1] = "2019-01-10 00:00 2019-02-10 23:59"
tActivityTime["SpringFestivalWishes"]["ActivityTime"][2] = "2019-01-10 00:00 2019-01-21 23:59"
tActivityTime["SpringFestivalWishes"]["ActivityTime"][3] = "2019-01-22 00:00 2019-02-02 23:59"
tActivityTime["SpringFestivalWishes"]["ActivityTime"][4] = "2019-02-03 00:00 2019-02-10 23:59"
tActivityTime["SpringFestivalWishes"]["AfterTime"] = "2019-02-11 00:00 2020-12-31 23:59"

------------------------------------------------------------------------------------
--Name:		180423[英文征服][活动脚本]5月赠品转盘活动制作
--Purpose:	5月赠品转盘活动制作
--Creator: 	傅伟龙
--Created:	2018/04/23
------------------------------------------------------------------------------------
tActivityTime["MayCoronaProduction"] = {}
tActivityTime["MayCoronaProduction"]["BefTime"] = "2018-01-01 00:00 2018-05-02 23:59"
tActivityTime["MayCoronaProduction"]["ActTime"] = "2018-05-03 00:00 2018-05-09 23:59"

------------------------------------------------------------------------------------
--Name:			180502[英文征服][任务脚本]游戏内红灯笼，15周年庆地贴制作（05.03-06.31）
--Purpose:		周年庆
--Creator:		wzh
--Created:		2018/05/02
------------------------------------------------------------------------------------
tActivityTime["Anniversary"] = {}
tActivityTime["Anniversary"]["TrapActTime"] = "2018-05-03 00:00 2018-06-31 23:59"

------------------------------------------------------------------------------------
--Name：            180420[英文征服][活动脚本]5月周年庆促销制作
--Creator:      王贤
--Created:     2018/04/20
------------------------------------------------------------------------------------
tActivityTime["AnniversaryPromotion"] = {}
tActivityTime["AnniversaryPromotion"]["BeforeTime"] = "2018-04-10 00:00 2018-05-09 23:59"
tActivityTime["AnniversaryPromotion"]["ActivityTime"] = "2018-05-10 00:00 2018-06-20 23:59"
tActivityTime["AnniversaryPromotion"]["DayTime"] = "20:00 21:00"

------------------------------------------------------------------------------------
--Name:			180422[英文征服][活动脚本]周年庆蛋糕发奖
--Creator:		黄啸
--Created:		2018/04/22
------------------------------------------------------------------------------------
tActivityTime["nUniversity_Cakebag"] = {}
tActivityTime["nUniversity_Cakebag"]["ActivityTime"] = "2018-04-22 00:00 2018-06-30 23:59"

--天阶赛开启时间（积分开放时间）
tActivityTime["TianjieSai"]= {}
tActivityTime["TianjieSai"]["ActivityTime"] = "2020-05-12 00:00 2020-06-01 23:59"
tActivityTime["TianjieSai"]["NewActivityTime"] = "2020-06-11 00:00 2020-07-10 23:59"


------------------------------------------------------------------------------------
--Name:			180508[英文征服][活动脚本]五月冲刺活动
--Creator:		黄啸
--Created:		2018/05/08
------------------------------------------------------------------------------------
tActivityTime["MaygrowupGo"] = {}
tActivityTime["MaygrowupGo"]["BeforeTime"] = "2018-05-08 00:00 2020-01-20 23:59"
tActivityTime["MaygrowupGo"]["ActivityTime"] = "2020-01-21 00:00 2020-02-17 23:59"
tActivityTime["MaygrowupGo"][3308745] = "2020-01-28 00:00 2020-01-28 23:59"
tActivityTime["MaygrowupGo"][3308847] = "2020-01-29 00:00 2020-01-29 23:59"
tActivityTime["MaygrowupGo"][3308848] = "2020-01-30 00:00 2020-01-30 23:59"
tActivityTime["MaygrowupGo"][3308849] = "2020-01-31 00:00 2020-01-31 23:59"
tActivityTime["MaygrowupGo"][3308850] = "2020-02-01 00:00 2020-02-01 23:59"
tActivityTime["MaygrowupGo"][3308851] = "2020-02-02 00:00 2020-02-02 23:59"
tActivityTime["MaygrowupGo"][3308852] = "2020-02-03 00:00 2020-02-03 23:59"

tActivityTime["MaygrowupGo"][3308746] = "2020-01-28 00:00 2020-01-28 23:59"
tActivityTime["MaygrowupGo"][3308853] = "2020-01-29 00:00 2020-01-29 23:59"
tActivityTime["MaygrowupGo"][3308854] = "2020-01-30 00:00 2020-01-30 23:59"
tActivityTime["MaygrowupGo"][3308855] = "2020-01-31 00:00 2020-01-31 23:59"
tActivityTime["MaygrowupGo"][3308856] = "2020-02-01 00:00 2020-02-01 23:59"
tActivityTime["MaygrowupGo"][3308857] = "2020-02-02 00:00 2020-02-02 23:59"
tActivityTime["MaygrowupGo"][3308858] = "2020-02-03 00:00 2020-02-03 23:59"

------------------------------------------------------------------------------------
--Name：        170321[简体征服][活动脚本]NBA活动制作(4.13-4.26)
--Creator:      陈莺
--Created:     2017/03/21
------------------------------------------------------------------------------------
tActivityTime["ActivityOfNBA"] = {}
tActivityTime["ActivityOfNBA"]["Bef_Time"] = "2019-01-01 00:00 2019-04-10 23:59"
tActivityTime["ActivityOfNBA"]["Now_Time"] = "2019-04-11 00:00 2019-04-30 23:59"
tActivityTime["ActivityOfNBA"]["Aft_Time"] = "2019-05-01 00:00 2019-05-07 23:59"
tActivityTime["ActivityOfNBA"]["OneDay_Time"] = "2019-04-12 00:00 2019-04-30 23:59"
tActivityTime["ActivityOfNBA"]["RewardTime"] = "2019-05-21 00:00 2030-06-10 23:59"  --冠军礼包打开时间
tActivityTime["ActivityOfNBA"]["NpcTime"] = "2019-04-11 00:00 2019-05-07 23:59"
tActivityTime["ActivityOfNBA"]["ItemTime"] = "2019-04-11 00:00 2019-05-15 23:59"  --特饮时间
tActivityTime["ActivityOfNBA"]["MailTime"] = "2019-05-01 07:00 2019-05-15 23:59"

--------------------------------------------- 180423[英文征服][活动脚本]5月斋月祈福树活动制作
tActivityTime["RamadanActivity"] = {}
tActivityTime["RamadanActivity"]["ActivityTime"] = "2018-11-15 00:00 2018-11-19 23:59"
tActivityTime["RamadanActivity"]["MailTime"] = "2018-11-16 00:00 2018-11-20 23:59"



---------------------------------------------儿童节小活动---------------------------------------
tActivityTime["ChildrenCandy"] = {}
tActivityTime["ChildrenCandy"]["BeforeActivity"] = "2015-10-27 00:00 2019-05-29 23:59"
tActivityTime["ChildrenCandy"]["Activity"] = "2019-05-30 00:00 2019-06-05 23:59"


------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------
tActivityTime["RiotOfNether"] = {}
tActivityTime["RiotOfNether"]["Activity"] = "2020-07-23 00:00 2020-08-10 23:59"
tActivityTime["RiotOfNether"]["DailyRewardTime"] = "2020-07-23 00:00 2020-08-11 23:59"
tActivityTime["RiotOfNether"]["DelTime"] = "2020-07-23 00:00 2020-08-13 23:59"


------------------------------------------------------------------------------------
--Name:		180417[简体征服][活动脚本]通天塔返气力活动（4.21-4.30）
--Creator: 	姚曦宇
--Created:	2018/14/17
------------------------------------------------------------------------------------
tActivityTime["BabelRewardStrength"] = {}
tActivityTime["BabelRewardStrength"]["ActivityTime"] = "2019-03-07 00:00 2019-03-11 23:59"
tActivityTime["BabelRewardStrength"]["DelTime"] = "2019-03-07 00:00 2019-03-20 23:59"
tActivityTime["BabelRewardStrength"]["NewDelTime"] = "2019-03-07 00:00 2019-03-20 23:59"
-----------------埃及球衣上架-----------------------
tActivityTime["ItemTime"] = {}
tActivityTime["ItemTime"]["ActivityTime"] = "2018-05-22 00:00 2018-06-11 23:59"

------------------------------------------------------------------------------------
--Name：            180515[英文征服][活动脚本]6月世界杯竞猜活动线上部分制作
--Creator:      吴帆
--Created:     2018/05/15
------------------------------------------------------------------------------------
tActivityTime["WorldCupGambling"] = {}
tActivityTime["WorldCupGambling"]["ActivityTime"] = "2018-06-07 00:00 2018-07-15 23:59"
tActivityTime["WorldCupGambling"]["LoginActivityTime"] = "2018-06-07 00:00 2018-07-11 23:59"
tActivityTime["WorldCupGambling"]["ScheduleTime"] = "2018-06-29 00:00 2018-07-15 23:59"
------------------------------------------------------------------------------------
--Name:		180528[英文征服][活动脚本]6月以旧换新活动制作
--Purpose:	6月以旧换新活动制作
--Creator: 	傅伟龙
--Created:	2018/05/28
------------------------------------------------------------------------------------
tActivityTime["OldForNewServiceAct"] ={}
tActivityTime["OldForNewServiceAct"]["BefTime"] = "2018-01-01 00:00 2018-06-18 23:59"
tActivityTime["OldForNewServiceAct"]["ActTime"] = "2018-06-19 00:00 2018-07-03 23:59"

-- 180315[简体征服][活动脚本]2018父亲节小活动(6.14-6.20)
tActivityTime["FathersDaySmallActivity"] = {}
tActivityTime["FathersDaySmallActivity"]["ActivityTime"] = "2018-06-14 00:00 2018-06-20 23:59"
tActivityTime["FathersDaySmallActivity"]["ItemUseTime"] = "2018-06-14 00:00 2018-06-30 23:59"


------------------------------------------------------------------------------------
--Name:		180504[简体征服][活动脚本]2018世界杯活动制作
--Creator: 	兰瑞妹
--Created:	2018/05/06
------------------------------------------------------------------------------------
tActivityTime["WorldCupActivities"] = {}
-- 活动时间
tActivityTime["WorldCupActivities"]["ActivityTime"] = "2018-06-19 00:00 2018-07-10 23:59"
-- 物品时间
tActivityTime["WorldCupActivities"]["ItemUseTime"] = "2018-06-19 00:00 2018-07-17 23:59"
-- 领奖时间
tActivityTime["WorldCupActivities"]["RewardTime"] = "2018-07-11 00:00 2018-07-11 23:59"
-- 第一天
tActivityTime["WorldCupActivities"]["FirstDayTime"] = "2018-06-19 00:00 2018-06-19 23:59"
------------------------------------------------------------------------------------
--Name:		180514[英文征服][活动脚本]6月金币转盘活动
--Purpose:	6月金币转盘活动
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
tActivityTime["JuneMoneyTurntableAct"] = {}
tActivityTime["JuneMoneyTurntableAct"]["BefTime"] = "2018-01-01 00:00 2018-06-20 23:59"
tActivityTime["JuneMoneyTurntableAct"]["ActTime"] = "2018-06-21 00:00 2018-07-05 23:59"


------------------------------------------------------------------------------------
--Name:			180619[英文征服][活动脚本]暑期星陨石促销制作
--Purpose:		星陨石促销
--Creator:		wzh
--Created:		2018/06/19
------------------------------------------------------------------------------------
tActivityTime["StarStoneSale"] = {}
tActivityTime["StarStoneSale"]["BeforeTime"] = "2018-01-01 00:00 2018-06-27 23:59"
tActivityTime["StarStoneSale"]["ActivityTime"] = "2018-06-28 00:00 2018-07-02 23:59"
tActivityTime["StarStoneSale"]["AfterTime"] = "2018-07-03 00:00 2019-12-31 23:59"



------------------------------------------------------------------------------------
--Name:		180614[英文征服][活动脚本]聚宝盆活动复用(7.5-7.12)
--Purpose:	聚宝盆活动复用
--Creator: 	傅伟龙
--Created:	2018/06/14
------------------------------------------------------------------------------------
tActivityTime["TreasureBowlAct"] = {}
tActivityTime["TreasureBowlAct"]["ActTime"] = "2019-03-28 00:00 2019-03-31 23:59"

------------------------------------------------------------------------------------
--Name：		180514[简体征服][活动脚本]暑期小活动制作
--Creator:		wzh
--Created:		2018/05/17
------------------------------------------------------------------------------------
tActivityTime["SummerActivityShop"] = {}
tActivityTime["SummerActivityShop"]["ActivityTime"] = "2018-07-05 00:00 2018-07-18 23:59"
tActivityTime["SummerActivityShop"]["PackActivityTime"] = "2018-07-05 00:00 2018-07-21 23:59"

------------------------------------------------------------------------------------
--Name:		180620[英文征服][活动脚本]暑期签到有礼活动制作
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
tActivityTime["SummerSignInAct"] = {}
tActivityTime["SummerSignInAct"]["BefTime"] = "2018-01-01 00:00 2018-09-30 23:59"
tActivityTime["SummerSignInAct"]["ActTime"] = "2018-10-01 00:00 2018-10-03 23:59"


------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]练气狂欢周
--Creator:		翁清海
--Created:		2018/06/14
------------------------------------------------------------------------------------
tActivityTime["StrengthCrazyWeek"] = {}
tActivityTime["StrengthCrazyWeek"]["ActivityTime"] = "2018-07-03 00:00 2018-07-18 23:59"
tActivityTime["StrengthCrazyWeek"]["NpcTime"] = "2018-07-03 00:00 2018-07-09 23:59"
tActivityTime["StrengthCrazyWeek"]["ItemTime"] = "2018-07-03 00:00 2018-07-30 23:59"

------------------------------------------------------------------------------------
--Name:		180606[简体征服][活动脚本]点石成金活动
--Creator: 	黄啸
--Created:	2018/06/06
------------------------------------------------------------------------------------
tActivityTime["Goldstone"] = {}
tActivityTime["Goldstone"]["ActTime"] = "2019-04-16 00:00 2019-05-06 23:59"
tActivityTime["GoldServeGoldstone"] = {}
tActivityTime["GoldServeGoldstone"]["ActTime"] = "2020-08-13 00:00 2020-09-09 23:59"
------------------------------------------------------------------------------------
--Name:		180624[英文征服][活动脚本]暑期赠品大狂欢（7.19-7.31）
--Purpose:	暑期赠品大狂欢
--Creator: 	黄啸
--Created:	2018/06/24
------------------------------------------------------------------------------------
tActivityTime["SummerbigCharge"] = {}
tActivityTime["SummerbigCharge"]["BefTime"] = "2018-01-01 00:00 2018-07-18 23:59"
tActivityTime["SummerbigCharge"]["ActTime"] = "2018-07-19 00:00 2018-07-31 23:59"

------------------------------------------------------------------------------------
--Name:		180718[英文征服][任务脚本]微端domino邀请函制作
--Creator: 	许乐
--Created:	2018/07/18
------------------------------------------------------------------------------------
tActivityTime["DominuoLetter"] = {}
tActivityTime["DominuoLetter"]["ActTime"] = "2018-07-18 00:00 2018-07-24 23:59"
------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]盛夏特惠大狂欢
--Purpose:	盛夏特惠大狂欢
--Creator: 	茅志伟
--Created:	2018/06/23
------------------------------------------------------------------------------------
tActivityTime["SummerSpecialBenefit"] = {}
tActivityTime["SummerSpecialBenefit"]["BeforeTime"] = "2018-01-01 00:00 2018-07-25 23:59"
tActivityTime["SummerSpecialBenefit"]["ActivityTime"] = "2018-07-26 00:00 2018-08-15 23:59"
tActivityTime["SummerSpecialBenefit"]["AfterTime"] = "2018-08-16 00:00 2019-08-15 23:59"
tActivityTime["SummerSpecialBenefit"]["MoveTime"] = "2018-07-26 00:00 2018-08-15 23:59"
tActivityTime["SummerSpecialBenefit"]["DeleteTime"] = "2018-07-26 00:00 2018-08-30 23:59"
------------------------------------------------------------------------------------
--Name:		180702[英文征服][活动脚本]7月第一届CO地图争霸活动
--Purpose:	7月第一届CO地图争霸活动
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
tActivityTime["CoMapCompetition"] = {}
tActivityTime["CoMapCompetition"]["BefTime"] = "2018-01-01 00:00 2018-07-23 23:59"
tActivityTime["CoMapCompetition"]["ActTime"] = "2018-07-24 00:00 2018-08-16 23:59"
tActivityTime["CoMapCompetition"]["EUActTime"] = "2018-07-24 00:00 2018-08-17 08:00"
tActivityTime["CoMapCompetition"]["ThumbsUpActTime"] = "2018-09-09 00:00 2019-02-20 08:00"

------------------------------------------------------------------------------------
--Name：            180703[英文征服][活动脚本]捐赠冲刺周线上制作
--Creator:      杨艳
--Created:     2018/07/03
------------------------------------------------------------------------------------
tActivityTime["DonateWeek"] = {}
tActivityTime["DonateWeek"]["ActivityTime"] = "2018-07-26 00:00 2018-08-01 23:59"
tActivityTime["DonateWeek"]["ItemUseTime"] = "2018-07-26 00:00 2018-07-31 23:59"


------------------------------------------------------------------------------------
--Name:		180720[英文征服][活动脚本]7月新服活动制作 --货币商人
--Purpose:	7月新服活动制作
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
tActivityTime["Currencytraders"] = {}
tActivityTime["Currencytraders"]["BefTime"] = "2019-01-01 00:00 2019-01-07 23:59"
tActivityTime["Currencytraders"]["ActTime"] = "2019-01-08 00:00 2029-09-07 23:59"



------------------------------------------------------------------------------------
--Name:		180420[简体征服][活动脚本]新赌神活动制作
--Creator: 	姚曦宇
--Created:	2018/04/20
------------------------------------------------------------------------------------
tActivityTime["NewGodOfGamblers"] = {}
tActivityTime["NewGodOfGamblers"]["NewActivity"] = "2018-07-13 00:00 2028-07-13 23:59"
tActivityTime["NewGodOfGamblers"]["Activity"] = "2019-10-29 00:00 2019-11-18 23:59"
tActivityTime["NewGodOfGamblers"]["DelTime"] = "2019-10-29 00:00 2019-12-18 23:59"

tNpcPos["NewGodOfGamblers"] = {}
-- 骰宝游戏
tNpcPos["NewGodOfGamblers"][21481] = {1002,355,384}
-- 兑换商店
tNpcPos["NewGodOfGamblers"][21491] = {1002,360,392}
-- 高进
tNpcPos["NewGodOfGamblers"][22865] = {1002,373,384}
-- 卡牌大师
tNpcPos["NewGodOfGamblers"][22866] = {1002,368,392}
-- 转盘
tNpcPos["NewGodOfGamblers"][21482] = {10340,35,35}
tNpcPos["NewGodOfGamblers"][21485] = {10340,35,40}
tNpcPos["NewGodOfGamblers"][21486] = {10340,35,44}
tNpcPos["NewGodOfGamblers"][21487] = {10340,35,48}
tNpcPos["NewGodOfGamblers"][21488] = {10340,40,35}
tNpcPos["NewGodOfGamblers"][21489] = {10340,44,35}
tNpcPos["NewGodOfGamblers"][21490] = {10340,48,35}
-- 活动面板
tNpcPos["NewGodOfGamblers"][315] = {1002,375,442}
-- 地图落脚点
tNpcPos["NewGodOfGamblers"][10339] = {57,58}
tNpcPos["NewGodOfGamblers"][1002] = {363,391}
-- 炮台位置
tNpcPos["NewGodOfGamblers"][22867] = {}
tNpcPos["NewGodOfGamblers"][22867][1] = {302,310}
tNpcPos["NewGodOfGamblers"][22867][2] = {304,312}
tNpcPos["NewGodOfGamblers"][22867][3] = {304,314}
tNpcPos["NewGodOfGamblers"][22868] = {}
tNpcPos["NewGodOfGamblers"][22868][1] = {309,315}
tNpcPos["NewGodOfGamblers"][22868][2] = {311,318}
tNpcPos["NewGodOfGamblers"][22868][3] = {313,320}
tNpcPos["NewGodOfGamblers"][22869] = {}
tNpcPos["NewGodOfGamblers"][22869][1] = {320,327}
tNpcPos["NewGodOfGamblers"][22869][2] = {322,327}
tNpcPos["NewGodOfGamblers"][22869][3] = {324,327}
-- 陷阱“转盘转转乐”
tNpcPos["NewGodOfGamblers"][1972] = {1002,358,385}
-- 陷阱“百宝抢红包”
tNpcPos["NewGodOfGamblers"][1973] = {1002,363,385}
-- 陷阱“捕鱼达人秀”
tNpcPos["NewGodOfGamblers"][1974] = {1002,368,385}
-- 陷阱“头号玩家”
tNpcPos["NewGodOfGamblers"][1986] = {1002,364,392}

------------------------------------------------------------------------------------
--Name:			180627[英文征服][活动脚本]7月新服活动寻宝
--Creator: 		黄啸
--Created:		2018/06/27
------------------------------------------------------------------------------------
tActivityTime["JulyNewserveAct"] = {}
tActivityTime["JulyNewserveAct"]["BeforeTime"] = "2019-01-01 00:00 2019-03-11 23:59"
tActivityTime["JulyNewserveAct"]["ActiveTime"] = "2019-03-12 00:00 2019-04-11 23:59"
tActivityTime["JulyNewserveAct"]["ActiveItemTime"] = "2019-03-12 00:00 2019-04-13 23:59"
tActivityTime["JulyNewserveAct"]["LongActiveTime"] = "2018-07-12 00:00 2028-08-11 23:59"



------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		幸运树活动
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
tActivityTime["LuckyTree"] = {}
tActivityTime["LuckyTree"]["BeforeTime"] = "2018-01-01 00:00 2020-03-02 23:59"
tActivityTime["LuckyTree"]["ActivityTime"] = "2020-03-03 00:00 2020-03-16 23:59"
tActivityTime["LuckyTree"]["RankActivityTime"] = "2020-03-03 00:00 2020-03-17 23:59"
tActivityTime["LuckyTree"]["AfterTime"] = "2020-03-17 00:00 2021-12-31 23:59"
tActivityTime["LuckyTree"]["TrapTime"] = "2018-08-09 00:00 2022-01-01 23:59"

------------------------------------------------------------------------------------
--Name:		180718[英文征服][活动脚本]抽奖目标榜活动
--Creator: 	茅志伟
--Created:	2018/07/18
------------------------------------------------------------------------------------
tActivityTime["tTargetList"] = {}
tActivityTime["tTargetList"]["ActivityTime"] = "2019-08-01 00:00 2019-08-21 23:59"

------------------------------------------------------------------------------------
--Name:			170703[简体征服][活动脚本]七夕节小活动（8.16-8.22）
--Purpose:		七夕节小活动
--Creator:		cy
--Created:		2018/6/19
------------------------------------------------------------------------------------
tActivityTime["QixiActivity"] = {}
tActivityTime["QixiActivity"]["ActivityTime"] = "2018-08-16 00:00 2018-08-22 23:59"

------------------------------------------------------------------------------------
--Name：            180313[简体征服][活动脚本]神器重铸活动
--Creator:      李甲
--Created:     2018/03/13
------------------------------------------------------------------------------------
tActivityTime["tNormalXuanBaoActivity"] = {}
tActivityTime["tNormalXuanBaoActivity"]["ActivityTime"] = "2019-11-05 00:00 2019-11-25 23:59"

------------------------------------------------------------------------------------
--Name:		180802[英文征服][活动脚本]8月充值炼金（8.09-8.28）
--Creator: 	黄啸
--Created:	2018/08/02
------------------------------------------------------------------------------------
tActivityTime["AugustStonetime"] = {}
tActivityTime["AugustStonetime"]["Activitytime"] = "2018-08-14 00:00 2018-09-09 23:59"

------------------------------------------------------------------------------------
--Name:		[英文征服][任务脚本]战旗之王积分赛复用
--Purpose:	战旗之王积分赛复用
--Creator: 	茅志伟
--Created:	2018/07/14
------------------------------------------------------------------------------------
tActivityTime["tKingsOfTheFlagActivity"] = {}
tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"] = "2018-08-23 00:00 2018-09-20 23:59"
tActivityTime["tKingsOfTheFlagActivity"]["DeleteTime"] = "2018-08-23 00:00 2018-10-23 23:59"

------------------------------------------------------------------------------------
--Name:			161231[英文征服][活动脚本]连环夺宝活动
--Creator:		兰瑞妹
--Created:		2016/12/31
------------------------------------------------------------------------------------
tActivityTime["SerialIndiana"] = {} 
-- 活动持续时间
tActivityTime["SerialIndiana"]["Activity"] = "2018-08-28 00:00 2018-09-10 23:59"
-- 邮件物品使用时间
tActivityTime["SerialIndiana"]["MailUseItem"] = "2018-08-28 00:00 2018-09-14 23:59"
-- 竞技挑战时间
tActivityTime["SerialIndiana"]["BeforSpecialTime"] = "18:55 18:59" -- 活动前5分钟无法进行练习赛
tActivityTime["SerialIndiana"]["SpecialTime"] = "19:00 19:30" -- 活动期间
tActivityTime["SerialIndiana"]["SpecialNewTime"] = "19:00 19:31" -- 对白需要活动期间
tActivityTime["SerialIndiana"]["EndSpecialTime"] = "19:30 23:59" -- 正式赛活动结束
-- 排行榜相关
-- 排行榜可刷新时间
tActivityTime["SerialIndiana"]["DayTime"] = "00:00 23:59"
-- 总榜发奖时间
tActivityTime["SerialIndiana"]["TotalRankTime"] = "2018-09-10 23:00 2018-09-11 00:00"
tActivityTime["SerialIndiana"]["TotalRankReward"] = "23:55 23:59"--总榜发奖时间
-- 日榜发奖时间
tActivityTime["SerialIndiana"]["DayRankTime"] = "19:32 19:35"--日榜发奖时间
tActivityTime["SerialIndiana"]["DayRankReset"] = "19:30 19:31"--日榜重置时间
--每日清理动态码时间
tActivityTime["SerialIndiana"]["ClearTime"] = "00:00 00:02"
tActivityTime["SerialIndiana"]["ClearGlobalTime"] = "00:00 00:05" 



---------------------------------------------劳工节活动---------------------------------------
tActivityTime["Laborday"] = {}
tActivityTime["Laborday"]["Bef_Time"] = "2016-01-01 00:00 2019-08-28 23:59"
tActivityTime["Laborday"]["Now_Time"] = "2019-08-29 00:00 2019-09-04 23:59"
tActivityTime["Laborday"][1] = "2019-08-29 00:00 2019-08-30 23:59"
tActivityTime["Laborday"][2] = "2019-08-31 00:00 2019-09-02 23:59"
tActivityTime["Laborday"][3] = "2019-09-03 00:00 2019-09-03 23:59"
tActivityTime["Laborday"][4] = "2019-09-04 00:00 2019-09-04 23:59"



------------------------------------------------------------------------------------
--Name：            180720[英文征服][活动脚本]8月金币冲爵位
--Creator:      蔡颖静
--Created:     2018/07/20
------------------------------------------------------------------------------------
tActivityTime["AugustCoinDuck"] = {}
tActivityTime["AugustCoinDuck"]["BeforeTime"] = "2018-01-01 00:00 2020-08-12 23:59"
tActivityTime["AugustCoinDuck"]["ActTime"] = "2020-08-13 00:00 2020-08-31 23:59"
tActivityTime["AugustCoinDuck"]["AfterTime"] = "2020-09-01 00:00 2022-09-13 23:59"

------------------------------------------------------------------------------------
--Name：            180820[英文征服][活动脚本]阿拉丁神灯活动制作
--Creator:      蔡颖静
--Created:     2018/08/20
------------------------------------------------------------------------------------
tActivityTime["LampofAladdin"] = {}
tActivityTime["LampofAladdin"]["BeforeTime"] = "2018-01-01 00:00 2019-04-17 23:59"
tActivityTime["LampofAladdin"]["ActTime"] = "2019-04-18 00:00 2019-04-25 23:59"
tActivityTime["LampofAladdin"]["AfterTime"] = "2019-04-26 00:00 2020-09-13 23:59"
------------------------------------------------------------------------------------
--Name：            180816[英文征服][活动脚本]9月月卡包（09.04-09.20）
--Creator:      王贤
--Created:     2018/08/16
------------------------------------------------------------------------------------
tActivityTime["SeptemberParce"] = {}
tActivityTime["SeptemberParce"]["AtivityTime"] = "2019-04-23 00:00 2019-04-30 23:59"
tActivityTime["SeptemberParce"]["TimeOut"] = "2019-04-23 00:00 2019-05-30 23:59"
-----------------------------------------------[征服][活动脚本]伊历新年活动-----------------------------------
tActivityTime["ArabicNewYear"] = {}
tActivityTime["ArabicNewYear"]["BeforeActiveTime"] = "2018-01-01 00:00 2018-09-05 23:59"
tActivityTime["ArabicNewYear"]["AcitveTime"] = "2018-09-06 00:00 2018-09-12 23:59"

------------------------------------------------------------------------------------
--Name:			180701[简体征服][活动脚本]帮派矿洞玩法
--Purpose:		帮派矿洞
--Creator:		wzh
--Created:		2018-07-01
------------------------------------------------------------------------------------
tActivityTime["FactionHoleFight"] = {}
-- 活动时间
tActivityTime["FactionHoleFight"]["ActivityTime"] = "00:00 20:59"
tActivityTime["FactionHoleFight"]["ActivityTotalTime"] = "00:00 22:30"
-- 争霸赛时间
tActivityTime["FactionHoleFight"]["FightTime"] = {}
tActivityTime["FactionHoleFight"]["FightTime"]["Week"] = {}
tActivityTime["FactionHoleFight"]["FightTime"]["Week"][1] = "1 00:00 1 23:59"
tActivityTime["FactionHoleFight"]["FightTime"]["Week"][2] = "4 00:00 4 23:59"
tActivityTime["FactionHoleFight"]["FightTime"]["Choose"] = "00:00 19:59"
tActivityTime["FactionHoleFight"]["FightTime"][1] = "21:00 21:29"
tActivityTime["FactionHoleFight"]["FightTime"][2] = "21:30 21:59"
tActivityTime["FactionHoleFight"]["FightTime"][3] = "22:00 22:29"
-- 抢红包时间
tActivityTime["FactionHoleFight"]["RobTime"] = {}
tActivityTime["FactionHoleFight"]["RobTime"][1] = "21:20 21:29"
tActivityTime["FactionHoleFight"]["RobTime"][2] = "21:50 21:59"
tActivityTime["FactionHoleFight"]["RobTime"][3] = "22:20 22:29"
-- 每日活动时间后，争霸赛前
tActivityTime["FactionHoleFight"]["Middle"] = {}
tActivityTime["FactionHoleFight"]["Middle"][1] = "20:00 20:59"
tActivityTime["FactionHoleFight"]["Middle"][2] = "20:00 21:29"
tActivityTime["FactionHoleFight"]["Middle"][3] = "20:00 21:59"
-- 发邮件奖励时间
tActivityTime["FactionHoleFight"]["MailTime"] = {}
tActivityTime["FactionHoleFight"]["MailTime"][1] = "21:30 21:31"
tActivityTime["FactionHoleFight"]["MailTime"][2] = "22:00 22:01"
tActivityTime["FactionHoleFight"]["MailTime"][3] = "22:30 22:31"



------------------------------------------------------------------------------------
--Name：            180626[简体征服][活动脚本]调整版本6-帮派矿洞玩法-其他NPC
--Creator:      王贤
--Created:     2018/06/26
------------------------------------------------------------------------------------
tActivityTime["FactionHole"] = {}
-- 矿山摇摇乐活动时间
tActivityTime["FactionHole"]["KiddieRideTime"] = "00:00 21:00"
-- 矿车换开采值
tActivityTime["FactionHole"]["MineralOnMiner"] = "00:00 23:00"
-- 流浪商人活动时间
tActivityTime["FactionHole"]["BusinessmanTime"] = "21:00 21:59"
tActivityTime["FactionHole"]["BusinessmanTime2"] = "22:00 23:59"
-- 矿山活动时间
tActivityTime["FactionHole"]["AcitveTime"] = "2019-04-23 00:00 2029-03-06 23:59"

------------------------------------------------------------------------------------
--Name:		180823[英文征服][活动脚本]9月促销活动
--Purpose:	9月促销活动
--Creator: 	茅志伟
--Created:	2018/08/23
------------------------------------------------------------------------------------
tActivityTime["FallPromotion"] = {}
tActivityTime["FallPromotion"]["ActivityTime"] = "2018-09-13 00:00 2018-09-19 23:59"


------------------------------------------------------------------------------------
--Name：            180831[英文征服][活动脚本]伊斯兰新年礼物雨活动
--Creator:      王贤
--Created:     2018/08/31
------------------------------------------------------------------------------------
tActivityTime["IslamNewYearGift"] = {}
tActivityTime["IslamNewYearGift"]["ActiveTimes"] = "2018-09-13 00:00 2018-09-15 23:59"
-- 10月内功秘籍首卖活动
tActivityTime["IslamNewYearGift"]["BeforeSell"] = "2018-10-08 00:00 2018-10-22 23:59"
tActivityTime["IslamNewYearGift"]["SellTime"] = "2018-10-23 00:00 2018-11-06 23:59"
-- 激情服大额赌博类玩法
tActivityTime["IslamNewYearGift"]["GamblingTime"] = "2018-12-15 00:00 2029-12-15 23:59"

------------------------------------------------------------------------------------
--Name:		171211[简体征服][任务脚本]新跨服赛马活动
--Creator: 	兰瑞妹
--Created:	2017/12/15
------------------------------------------------------------------------------------
tActivityTime["CrossServerRacing"] = {}
tActivityTime["CrossServerRacing"]["ActivityTime"] = "2018-09-18 00:00 2018-10-01 23:59"
-- 首日时间
tActivityTime["CrossServerRacing"]["FirstTime"] = "2018-09-18 00:00 2018-09-18 23:59"
-- 活动后
tActivityTime["CrossServerRacing"]["AfterTime"] = "2018-10-02 00:00 2029-03-14 23:59"

---------------------------------------- 血炼大乱斗-------------------------------------------------
tActivityTime["PkActivity"]="2018-09-20 00:00 2018-10-03 23:59"

------------------------------------------------------------------------------------
--Name:		180919[英文征服][任务脚本]大都市宣传npc
--Creator: 	黄啸
--Created:	2018/09/19
------------------------------------------------------------------------------------
tActivityTime["NewBigcitybroadcast"] = {}
tActivityTime["NewBigcitybroadcast"]["ActivityTime"] = "2018-09-21 00:00 2018-10-07 23:59"

------------------------------------------------------------------------------------
--Name：            180917[英文征服][任务脚本]大都市宣传地标制作
--Creator:      黄啸
--Created:     2018/09/17
------------------------------------------------------------------------------------
tActivityTime["Bigcitybroadcast"] = {}
tActivityTime["Bigcitybroadcast"]["TrapTime"] = "2018-09-21 00:00 2018-10-07 23:59"



------------------------------------------------------------------------------------
--Name：            180827[英文征服][活动脚本]10月节后防流失礼包活动
--Creator:      蔡颖静
--Created:     2018/08/27
------------------------------------------------------------------------------------
tActivityTime["OctAvoidLost"]={}
tActivityTime["OctAvoidLost"]["AwardTime"]= "2018-09-27 00:00 2018-10-26 23:59"
tActivityTime["OctAvoidLost"]["NormalPackTime"]= "2018-09-27 00:00 2018-10-26 23:59"
tActivityTime["OctAvoidLost"]["GradientPackTime"]= "2018-10-09 00:00 2018-10-26 23:59"
tActivityTime["OctAvoidLost"]["VIPPackTime"]= "2018-10-09 00:00 2018-10-26 23:59"

---------------------------------------------百层塔---------------------------------------
tActivityTime["BossHunderdTower"] = {}
tActivityTime["BossHunderdTower"]["Activity"] = "2020-5-12 00:00 2020-06-01 23:59"


------------------------------------------------------------------------------------
--Name:		180820[英文征服][活动脚本]9月自创福利包（9.29-9.30）
--Creator: 	黄啸
--Created:	2018/08/02
------------------------------------------------------------------------------------
tActivityTime["SeptemberLuckybagtime"] = {}
tActivityTime["SeptemberLuckybagtime"]["Activitytime"] = "2018-09-29 00:00 2018-09-30 23:59"
tActivityTime["SeptemberLuckybagtime"]["BeActivitytime"] = "2018-01-01 00:00 2018-09-28 23:59"
tActivityTime["SeptemberLuckybagtime"]["PackActivitytime"] = "2018-09-12 00:00 2018-10-02 23:59"


------------------------------------------------------------------------------------
--Name：            180821[英文征服][活动脚本]英文征服9月帮派PVP活动
--Creator:      杨艳
--Created:     2018/08/21
------------------------------------------------------------------------------------
tActivityTime["BigGangFight"] = {}
tActivityTime["BigGangFight"]["ActivityTime"] = "2019-03-28 00:00 2019-04-20 23:59"

----------------------------------------------------------------------------
--Name:180910[英文征服][活动脚本]开洞宝石低价促(9.27-10.9)
--Creator:兰冬梅
--Created:2018/09/10
----------------------------------------------------------------------------
tActivityTime["GemStoneSales"] = {}
tActivityTime["GemStoneSales"]["BeforeTime"] = "2018-01-01 00:00 2018-09-28 23:59"
tActivityTime["GemStoneSales"]["ActivityTime"] = "2018-09-29 00:00 2018-10-11 23:59"
tActivityTime["GemStoneSales"]["ItemTime"] = "2018-09-29 00:00 2018-11-11 23:59"


------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
tActivityTime["ValentinesDay2018"] = {}
-- 七夕活动时间
tActivityTime["ValentinesDay2018"]["BeforeTime"] = "2018-08-01 00:00 2019-07-31 23:59"
tActivityTime["ValentinesDay2018"]["ActivityTime"] = "2019-08-01 00:00 2019-08-21 23:59"
-- 授课时间
tActivityTime["ValentinesDay2018"]["LectureTime"] = "2019-08-01 00:00 2019-08-14 23:59"
-- 排行榜发奖时间
tActivityTime["ValentinesDay2018"]["LetterSendTime"] = "2019-08-15 00:00 2019-08-15 00:10"
-- 竞选时间
tActivityTime["ValentinesDay2018"]["CampaignTime"] = "2019-08-15 00:00 2019-08-21 23:59"
-- 参观活动事件
tActivityTime["ValentinesDay2018"]["VisitTime"] = "2018-09-20 00:00 2018-10-10 23:59"
-- 鹊桥仙移动时间
tActivityTime["ValentinesDay2018"]["QueMoveTime"] = "2018-08-17 00:00 2018-08-31 23:59"
-- 礼包使用时间
tActivityTime["ValentinesDay2018"]["PackageOutTime"] = "2019-08-14 00:00 2019-10-14 23:59"
-- 种植时间
tActivityTime["ValentinesDay2018"]["SeedPlantTime"] = "08:00 23:59"
-- 结算时间
tActivityTime["ValentinesDay2018"]["SeedSettlementTime"] = "00:00 02:00"
-- 爱神维纳斯移动时间
tActivityTime["ValentinesDay2018"]["WNSMoveTime"] = "2019-08-15 00:00 2019-08-27 23:59"
tActivityTime["ValentinesDay2018"]["RankTime"] = "2019-08-01 00:00 2019-08-27 23:59"
-- 花魁同服奖励领取时间
tActivityTime["ValentinesDay2018"]["GetReward"] = "2019-09-24 00:00 2019-10-23 23:59"

-- 每日情话时间
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"] = {}
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][1]  = "2019-08-01 00:00 2019-08-01 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][2]  = "2019-08-02 00:00 2019-08-02 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][3]  = "2019-08-03 00:00 2019-08-03 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][4]  = "2019-08-04 00:00 2019-08-04 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][5]  = "2019-08-05 00:00 2019-08-05 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][6]  = "2019-08-06 00:00 2019-08-06 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][7]  = "2019-08-07 00:00 2019-08-07 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][8]  = "2019-08-08 00:00 2019-08-08 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][9]  = "2019-08-09 00:00 2019-08-09 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][10] = "2019-08-10 00:00 2019-08-10 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][11] = "2019-08-11 00:00 2019-08-11 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][12] = "2019-08-12 00:00 2019-08-12 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][13] = "2019-08-13 00:00 2019-08-13 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][14] = "2019-08-14 00:00 2019-08-14 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][15] = "2019-08-15 00:00 2019-08-15 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][16] = "2019-08-16 00:00 2019-08-16 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][17] = "2019-08-17 00:00 2019-08-17 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][18] = "2019-08-18 00:00 2019-08-18 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][19] = "2019-08-19 00:00 2019-08-19 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][20] = "2019-08-20 00:00 2019-08-20 23:59"
tActivityTime["ValentinesDay2018"]["DayWordsOfLove"][21] = "2019-08-21 00:00 2019-08-21 23:59"

------------------------------------------------------------------------------------
--Name:			180918[英文征服][活动脚本]10月追加大狂欢线上部分制作
--Purpose:		追加大狂欢
--Creator:		wzh
--Created:		2018/09/18
------------------------------------------------------------------------------------
tActivityTime["StoneCarnival"] = {}
tActivityTime["StoneCarnival"]["ActTime"] = "2020-04-21 00:00 2020-05-05 23:59"
tActivityTime["StoneCarnival"]["PackTime"] = "2020-04-21 00:00 2020-05-08 23:59"


------------------------------------------------------------------------------------
--Name：            180705[英文征服][任务脚本]PC转入赌城服测试npc
--Creator:      许乐
--Created:     2018/07/07
------------------------------------------------------------------------------------
tActivityTime["KOKNPC"] = {}
tActivityTime["KOKNPC"]["ActTime"] = "2018-10-12 00:00 2020-12-30 23:59"

------------------------------------------------------------------------------------
--Name：            170821[简体征服][活动脚本]万圣节小活动
--Creator:      cy
--Created:     2017/08/21
------------------------------------------------------------------------------------
tActivityTime["Halloween_Activity"] = {}
tActivityTime["Halloween_Activity"]["BeforeActiveTime"] = "2018-01-01 00:00 2018-10-24 23:59"
tActivityTime["Halloween_Activity"]["ActiveTime"] = "2018-10-25 00:00 2018-10-31 23:59"

------------------------------------------------------------------------------------
--Name:			181014[英文征服][活动脚本]寻矿觅宝发奖礼包和action制作
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018/10/14
------------------------------------------------------------------------------------
tActivityTime["MineAndTreasurePack"] = {}
tActivityTime["MineAndTreasurePack"]["BeforeTime"] = "2018-01-01 00:00 2018-11-19 23:59"
tActivityTime["MineAndTreasurePack"]["UseTime"] = "2018-11-20 00:00 2018-12-15 23:59"
tActivityTime["MineAndTreasurePack"]["AfterTime"] = "2018-12-16 00:00 2020-12-15 23:59"

------------------------------------------------------------------------------------
--Name：            180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
--Creator:      杨艳
--Created:     2018/08/22
------------------------------------------------------------------------------------
tActivityTime["ShenLiangMaLiangOnLineAct"] = {}
tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime"] = "2018-11-08 00:00 2018-12-19 23:59"
tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"] = "2018-11-08 00:00 2018-12-17 23:59"
------------------------------------------------------------------------------------
--Name:			181014[英文征服][活动脚本]寻矿觅宝NPC制作（11.08-11.19）
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018/10/14
------------------------------------------------------------------------------------
tActivityTime["MineAndTreasureNpc"] = {}
tActivityTime["MineAndTreasureNpc"]["BeforeTime"] = "2018-01-01 00:00 2018-11-07 23:59"
tActivityTime["MineAndTreasureNpc"]["ActTime"] = "2018-11-08 00:00 2018-11-19 23:59"
tActivityTime["MineAndTreasureNpc"]["EUActTime"] = "2018-11-08 00:00 2018-11-20 07:59"
tActivityTime["MineAndTreasureNpc"]["AfterTime"] = "2018-11-20 00:00 2020-11-19 23:59"
tActivityTime["MineAndTreasureNpc"]["EUAfterTime"] = "2018-11-20 08:00 2020-11-19 23:59"


------------------------------------------------------------------------------------
--Name:			181020[英文征服][活动脚本]11月线上累充返利
--Purpose:		黑五预热周
--Creator:		吴志宏
--Created:		2018/10/29
------------------------------------------------------------------------------------
tActivityTime["BlackFriPack"] = {}
tActivityTime["BlackFriPack"]["BeforeTime"] = "2018-01-01 00:00 2018-11-19 23:59"
tActivityTime["BlackFriPack"]["UseTime"] = "2018-11-20 00:00 2018-11-30 23:59"
tActivityTime["BlackFriPack"]["AfterTime"] = "2018-12-01 00:00 2020-01-01 23:59"

------------------------------------------------------------------------------------
--Name：        181015[英文征服][活动脚本]黑五狂欢周活跃活动
--Creator:      茅志伟
--Created:      2018/10/15
------------------------------------------------------------------------------------
tActivityTime["BlackFiveCarnivalWeek"] = {}
tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"] = "2018-11-20 00:00 2018-11-30 23:59"
tActivityTime["BlackFiveCarnivalWeek"]["StarBagTime"] = "2018-11-20 00:00 2018-12-02 23:59"

------------------------------------------------------------------------------------
--Name：            181015[英文征服][活动脚本]黑五狂欢周促销（11.20-11.30）
--Creator:      杨艳
--Created:     2018/10/22
------------------------------------------------------------------------------------
tActivityTime["BlackFiveDayAct"] = {}
tActivityTime["BlackFiveDayAct"]["ActivityTime"] = "2018-11-20 00:00 2018-12-01 07:59"
tActivityTime["BlackFiveDayAct"]["ItemUse"] = "2018-11-20 00:00 2018-12-05 23:59"
tActivityTime["BlackFiveDayAct"]["PackUse"] = "2018-11-20 00:00 2018-12-11 23:59"

----------------------------------------------------------------------------
--Name:			181023[英文征服][活动脚本]练气+1和练气券上交NPC制作
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018-11-23
-------------------------------------------------------------------------
tActivityTime["MineAndTreasureHandIn"] = {}
tActivityTime["MineAndTreasureHandIn"]["ActTime"] = "2019-04-30 00:00 2029-05-30 23:59"

------------------------------------------------------------------------------------
--Name:			181120[英文征服][活动脚本]2018感恩节活动
--Purpose:		2018感恩节活动
--Creator:		洪聪敏
--Created:		2018/11/20
------------------------------------------------------------------------------------
tActivityTime["Thanksgiving2018"] = {}
tActivityTime["Thanksgiving2018"]["BeforeTime"] = "2017-01-01 00:00 2018-11-26 23:59"
tActivityTime["Thanksgiving2018"]["ActivityTime"] = "2018-11-27 00:00 2018-12-03 23:59"
tActivityTime["Thanksgiving2018"]["AfterTime"] = "2018-12-04 00:00 2019-10-01 23:59"

tActivityTime["Thanksgiving2018"]["FirstDay"] = "2018-11-27 00:00 2018-11-27 23:59"
tActivityTime["Thanksgiving2018"]["LastDay"] = "2018-12-04 00:00 2018-12-04 23:59"
tActivityTime["Thanksgiving2018"]["Festival_203Time"] = "2018-11-27 00:00 2018-12-04 23:59"
tActivityTime["Thanksgiving2018"]["Delay"] = "2018-11-28 00:00 2018-12-04 23:59"

------------------------------------------------------------------------------------
--Name:			180827[英文征服][活动脚本]时装盛会活动
--Purpose:		外套活动
--Creator:		wzh
--Created:		2018-08-27
------------------------------------------------------------------------------------
-- 活动相关时间
tActivityTime["FashionEvent"] = {}
tActivityTime["FashionEvent"]["BeforeTime"] = "2018-01-01 00:00 2018-11-28 23:59"
tActivityTime["FashionEvent"]["ActTime"] = "2018-11-29 00:00 2018-12-12 23:59"
tActivityTime["FashionEvent"]["AfterTime"] = "2018-12-13 00:00 2020-11-28 23:59"
tActivityTime["FashionEvent"]["MailTime"] = "2018-12-13 00:00 2018-12-13 23:59"
-- 每日时间
tActivityTime["FashionEvent"]["AuctionTime"] = "19:00 19:54"
tActivityTime["FashionEvent"]["ShowTime"] = "19:55 19:59"
tActivityTime["FashionEvent"]["GetTime"] = "19:55 23:59"
tActivityTime["FashionEvent"]["NotHandInTime"] = "18:55 19:05"

------------------------------------------------------------------------------------
--Name:			181107[英文征服][活动脚本]12月日签有礼活动制作
--Creator:		江宇君
--Created:		2018/11/09
------------------------------------------------------------------------------------
-- 活动时间
tActivityTime["DaySignGift"] = {}
tActivityTime["DaySignGift"]["ActivityTime"] = "2018-12-06 00:00 2019-01-05 23:59"
------------------------------------------------------------------------------------
--Name:			181217[英文征服][活动脚本]无赠点服
--Creator:		黄啸
--Created:		2018/11/09
------------------------------------------------------------------------------------
-- 活动时间
tActivityTime["NoGiftTime"] = {}
tActivityTime["NoGiftTime"]["ActivityTime"] = "2018-12-25 00:00 2028-12-25 23:59"

------------------------------------------------------------------------------------
--Name:		[181121[简体征服][活动脚本]熔炼炉引导任务
--Purpose:	熔炼炉引导任务
--Creator: 	严振飞
--Created:	2018/11/21
------------------------------------------------------------------------------------
tActivityTime["MeltingStove"] = {}
tActivityTime["MeltingStove"]["ActivityTime"] = "2018-12-18 00:00 2018-12-31 23:59"
tActivityTime["MeltingStove"]["Daily"] = "2018-12-18 00:00 2028-12-19 23:59"

------------------------------------------------------------------------------------
--Name:			181201[英文征服][活动脚本]12月互通服上线领取礼包
--Purpose:		互通服上线礼包
--Creator:		吴志宏
--Created:		2018-12-04
------------------------------------------------------------------------------------
-- 互通服上线给礼包时间
tActivityTime["InterflowGift"] = {}
tActivityTime["InterflowGift"]["ActTime"] = "2018-12-21 00:00 2019-01-03 23:59"


------------------------------------------------------------------------------------
--Name：            181123[英文征服][活动脚本]圣诞大促非赠消费（12.18）
--Creator:      杨艳
--Created:     2018/11/23
------------------------------------------------------------------------------------
tActivityTime["ChristmasRush"] = {}
tActivityTime["ChristmasRush"]["ActivityTime"] = "2018-12-18 00:00 2019-01-04 23:59"



------------------------------------------------------------------------------------
--Name：        181126[简体征服][活动脚本]复用圣诞元旦小活动（12.20-1.2）
--Creator:      江宇君
--Created:      2018/12/05
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]2017圣诞元旦活动
--Creator:      王贤
--Created:     2017/10/31
------------------------------------------------------------------------------------
tActivityTime["DoubleEgg"] = {}
-- 对白时间
tActivityTime["DoubleEgg"]["ActivityTime"] = {}
tActivityTime["DoubleEgg"]["ActivityTime"]["BeforeTime"] = "2018-11-01 00:00 2018-12-19 23:59"
tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"] = "2018-12-20 00:00 2019-01-02 23:59" -- 活动时间
tActivityTime["DoubleEgg"]["ActivityTime"]["ExchangeTime"] = "2019-01-03 00:00 2019-01-05 23:59" -- 兑换商店的时间
tActivityTime["DoubleEgg"]["ActivityTime"]["DanDanMove"] = "2018-12-20 00:00 2019-01-05 23:59" -- 诞诞可以传送玩家的时间段

-- 圣诞节  元旦节
tActivityTime["DoubleEgg"]["ChristmasTime"] = "2018-12-25 00:00 2018-12-25 23:59"
tActivityTime["DoubleEgg"]["NewYearTime"] = "2019-01-01 00:00 2019-01-01 23:59"
-- 双蛋节红包
tActivityTime["DoubleEgg"]["RedPacket"] = {}
tActivityTime["DoubleEgg"]["RedPacket"][1] = "2018-12-20 00:00 2018-12-25 23:59"
tActivityTime["DoubleEgg"]["RedPacket"][2] = "2018-12-20 00:00 2019-01-01 23:59"
-- 双蛋节烟花
tActivityTime["DoubleEgg"]["FireWork"] = {}
tActivityTime["DoubleEgg"]["FireWork"]["UseTime"] = "2018-12-20 00:00 2019-01-02 23:59" -- 烟花使时间
-- 怪物
tActivityTime["DoubleEgg"]["Monster"] = {}
tActivityTime["DoubleEgg"]["Monster"]["FireWorkTime"] = "2018-12-28 00:00 2019-01-02 23:59"

-- 其他
tActivityTime["DoubleEgg"]["DoubleEggUseTime"] = "2018-12-20 00:00 2019-01-05 23:59"
tActivityTime["DoubleEgg"]["DoubleEggBagTime"] = "2018-12-20 00:00 2019-01-13 23:59"
-- 移动NPC
tActivityTime["DoubleEgg"]["MoveTomTime"] = "2018-12-20 00:00 2019-01-05 23:59"

tActivityTime["DoubleEgg"]["MoveHappySnowMan1"] = "2018-12-20 00:00 2018-12-24 23:59"
tActivityTime["DoubleEgg"]["MoveHappySnowMan2"] = "2018-12-26 00:00 2018-12-31 23:59"
tActivityTime["DoubleEgg"]["MoveHappySnowMan3"] = "2019-01-02 00:00 2019-01-05 23:59"
tActivityTime["DoubleEgg"]["MoveHappySnowMan4"] = "2018-12-25 00:00 2018-12-25 23:59"
tActivityTime["DoubleEgg"]["MoveHappySnowMan5"] = "2019-01-01 00:00 2019-01-01 23:59"
------------------------------------------------------------------------------------
--Name：            20181219[英文征服][活动脚本]上线获得气力值
--Creator:      王贤
--Created:     2018/12/19
------------------------------------------------------------------------------------
tActivityTime["ChiReward"] = {}
tActivityTime["ChiReward"]["ActivityTime"] = "2018-12-19 00:00 2018-12-21 23:59"

------------------------------------------------------------------------------------
--Name：            181220[英文征服][活动脚本]新年月卡包（1.3-1.31）
--Creator:      王贤
--Created:     2018-12-20
------------------------------------------------------------------------------------
tActivityTime["2019JanMonthlyCard"] = {}
tActivityTime["2019JanMonthlyCard"]["ActivityTime"] = "2019-01-03 00:00 2019-01-31 23:59"
tActivityTime["2019JanMonthlyCard"]["SpringTime"] = "2019-03-01 00:00 2019-04-15 23:59"

------------------------------------------------------------------------------------
--Name：            181217[英文征服][活动脚本]1月神纹提升月
--Creator:      蔡颖静
--Created:     2018/12/17
------------------------------------------------------------------------------------
tActivityTime["JanRuneImproveMon"] = {}
tActivityTime["JanRuneImproveMon"]["ActivityTime"] = "2020-06-04 00:00 2020-06-27 23:59"
------------------------------------------------------------------------------------
--Name:			190102[简体征服][活动脚本]年初大促销
--Creator:		黄啸
--Created:		2019/01/07
------------------------------------------------------------------------------------
-- 活动时间
tActivityTime["YearBeginPromotion"] = {}
tActivityTime["YearBeginPromotion"]["ActivityTime"] = "2019-01-16 00:00 2019-01-31 23:59"
tActivityTime["YearBeginPromotion"]["BeforeActivityTime"] = "2019-01-01 00:00 2019-01-15 23:59"

------------------------------------------------------------------------------------
--Name：            181213[英文征服][活动脚本]1月新版本预热活动制作
--Creator:      蔡颖静
--Created:     2018/12/13
------------------------------------------------------------------------------------
tActivityTime["NewVersionWarmUp"] = {}
tActivityTime["NewVersionWarmUp"]["ActivityTime"] = "2019-01-22 00:00 2019-02-06 23:59"


------------------------------------------------------------------------------------
--Name：            190108[英文征服][活动脚本]情人节充值礼包及发奖action
--Creator:      杨艳
--Created:     2019/01/08
------------------------------------------------------------------------------------

tActivityTime["ValentineRechargeAction"] = {}
tActivityTime["ValentineRechargeAction"]["ActivityTime"] = "2019-02-02 00:00 2019-03-31 23:59"

------------------------------------------------------------------------------------
--Name：            190114[英文征服][活动脚本]2月促销活动线上部分制作
--Creator:      王贤
--Created:     2019-01-14
------------------------------------------------------------------------------------
tActivityTime["SalesPromotionOnlinePart"] = {}
tActivityTime["SalesPromotionOnlinePart"]["ActivityTime"] = "2019-02-02 00:00 2019-02-13 23:59"

------------------------------------------------------------------------------------
--Name:			190115[英文征服][活动脚本]在线根据时长领福利（2.2-2.28）
--Creator:		吴志宏
--Created:		2019/01/15
------------------------------------------------------------------------------------
tActivityTime["OnLineReward"] = {}
tActivityTime["OnLineReward"]["ActivityTime"] = "2019-02-02 00:00 2019-02-28 23:59"


------------------------------------------------------------------------------------
--Name：            190128[英文征服][活动脚本]调查问卷NPC制作
--Creator:      林旭
--Created:     2019/01/28
------------------------------------------------------------------------------------
tActivityTime["SurveyEnvoyNpc"] = {}
tActivityTime["SurveyEnvoyNpc"]["ActivityTime"] = "2019-01-31 00:00 2019-02-19 23:59"
tActivityTime["SurveyEnvoyNpc"]["ActivityTimeCop"] = "2020-06-20 00:00 2020-06-27 23:59"

------------------------------------------------------------------------------------
--Name：       190107[简体征服][活动脚本]2月情人节花魁赛活动
--Creator:     姚曦宇
--Created:     2019/01/07
------------------------------------------------------------------------------------
tActivityTime["ValentinesDay2019NPC"] = {}
tActivityTime["ValentinesDay2019NPC"]["ActivityTime"] = "2019-02-14 00:00 2019-03-14 23:59"
tActivityTime["ValentinesDay2019NPC"]["RankTime"] = "2019-03-15 00:00 2019-03-15 23:59"
tActivityTime["ValentinesDay2019NPC"]["DayTime"] = "01:00 23:59"
tActivityTime["ValentinesDay2019NPC"]["DateMapRefresh"] = "00:00 00:05"

tNpcPos["ValentinesDay2019NPC"] = {}
tNpcPos["ValentinesDay2019NPC"][23682] = {1002,345,466}
tNpcPos["ValentinesDay2019NPC"][23709] = {1002,350,466}
-- tNpcPos["ValentinesDay2019NPC"][23683] = {1002,363,436}
tNpcPos["ValentinesDay2019NPC"][23684] = {1002,341,462}
tNpcPos["ValentinesDay2019NPC"][23685] = {1002,345,462}
-- tNpcPos["ValentinesDay2019NPC"][23686] = {1002,375,436}
tNpcPos["ValentinesDay2019NPC"][23687] = {1002,350,462}
tNpcPos["ValentinesDay2019NPC"][23688] = {1002,354,462}
tNpcPos["ValentinesDay2019NPC"][23710] = {1002,341,471}
tNpcPos["ValentinesDay2019NPC"][23738] = {1002,354,471}

tNpcPos["ValentinesDay2019NPC"][2235] = {1002,345,466}



------------------------------------------------------------------------------------
--Name：            190107[简体征服][活动脚本]2月情人节花魁赛活动制作-物品部分
--Creator:      陈莺

--Created:     2019-01-07
------------------------------------------------------------------------------------
tActivityTime["FlowerChiefItem"] = {}
tActivityTime["FlowerChiefItem"]["Now_Time"] = "2019-02-14 00:00 2019-03-14 23:59"
tActivityTime["FlowerChiefItem"]["ItemNow_Time"] = "2019-08-01 00:00 2019-08-21 23:59"



------------------------------------------------------------------------------------
--Name：            190116[英文征服][活动脚本]道士强化节促销及发奖action(2.21-3.6)
--Creator:      蔡颖静
--Created:     2019/01/16
------------------------------------------------------------------------------------
tActivityTime["TaoistImproveSales"] = {}
tActivityTime["TaoistImproveSales"]["ActTime"] = "2019-02-21 00:00 2019-03-06 23:59"

------------------------------------------------------------------------------------
--Name：            190102[简体征服][活动脚本]雷神预热活动制作
--Creator:      蔡颖静
--Created:     2019/01/02
------------------------------------------------------------------------------------
tActivityTime["ThorWarmUp"] = {}
tActivityTime["ThorWarmUp"]["ActivityTime"] = "2019-02-26 00:00 2019-03-11 23:59"
tActivityTime["ThorWarmUp"]["MainNPCTime"] = "2019-02-26 00:00 2019-03-15 23:59"
tActivityTime["ThorWarmUp"]["EWeaponPackTime"] = "2019-03-12 09:00 2030-02-20 23:59"
tActivityTime["ThorWarmUp"]["UWeaponPackTime"] = "2019-03-12 01:00 2030-02-20 23:59"
tActivityTime["ThorWarmUp"]["Broadcast"] = "2019-03-12 00:00 2019-03-12 23:59"
tActivityTime["ThorWarmUp"]["MailTime"] = "2019-03-12 00:00 2019-03-12 00:05"

------------------------------------------------------------------------------------
--Name：        190221[英文征服][活动脚本]3月版本宣传图上线
--Creator:      耿力兀
--Created:     2019-02-21
------------------------------------------------------------------------------------
tActivityTime["AdvertisingMap"] = {}
tActivityTime["AdvertisingMap"]["ActiveTime"] = "2019-03-05 00:00 2019-03-19 23:59"

------------------------------------------------------------------------------------
--Name：           190213[英文征服][活动脚本]任务-英文征服3月SVIP特权月制作-专属副本部分
--Creator:      杨艳
--Created:     2019/02/15
------------------------------------------------------------------------------------
tActivityTime["ShuraBattleGround"] = {}
tActivityTime["ShuraBattleGround"]["ActivityTime"] = "2019-01-31 00:00 2030-12-19 23:59"


------------------------------------------------------------------------------------
--Name：    190218[英文征服][活动脚本]3月准点在线博奖(3.7-3.11)
--Creator:  吴燕柚
--Created:  2019/02/25
------------------------------------------------------------------------------------

tActivityTime["OnTimeGamble"] = {}
tActivityTime["OnTimeGamble"]["ActTime"] = "2019-03-07 00:00 2019-03-11 23:59"
tActivityTime["OnTimeGamble"]["DayTime"] = "18:30 18:45"--NPC出现可领道具时间
tActivityTime["OnTimeGamble"][3312057] = "2019-03-12 18:50 2019-03-12 19:10"--幸运星转盘可用时间
tActivityTime["OnTimeGamble"]["WheelDelTime"] = "2019-03-07 00:00 2019-03-31 23:59"--超过这个时间删除幸运转盘
tActivityTime["OnTimeGamble"]["BigRewardDelTime"] = "2019-03-07 00:00 2019-04-05 23:59"--超过这个时间删除幸运凭证

------------------------------------------------------------------------------------
--Name：    190306[英文征服][活动脚本]藏宝阁
--Creator:  黄啸
--Created:  2019/03/06
------------------------------------------------------------------------------------
tActivityTime["SaveBaohu"] = {}
tActivityTime["SaveBaohu"]["ActiveTime"] = "2019-03-06 00:00 2019-05-30 23:59"

------------------------------------------------------------------------------------
--Name：    190306[英文征服][活动脚本]天石雨
--Creator:  黄啸
--Created:  2019/03/06
------------------------------------------------------------------------------------
tActivityTime["StoneRain"] = {}
tActivityTime["StoneRain"]["ActivityTime"] = "2019-10-15 00:00 2019-10-18 23:59"


---------------------------------------------雷神特权月---------------------------------------
tActivityTime["ThorPrivilegeMonth"] = {}
tActivityTime["ThorPrivilegeMonth"]["ActivityTime"] = "2019-03-12 00:00 2019-04-11 23:59"

------------------------------------------------------------------------------------
--Name：	190124[简体征服][活动脚本]尾兽相关调整-材料产出
--Creator:	林旭
--Created:	2019/01/24
------------------------------------------------------------------------------------
tActivityTime["GiveBijuuMaterial"] = {}
tActivityTime["GiveBijuuMaterial"]["ActivityTime"] = "2019-03-12 00:00 2019-04-11 23:59"

------------------------------------------------------------------------------------
--Name：            190213[简体征服][活动脚本]烦请制作斗神公测全民福利礼包
--Creator:      蔡颖静
--Created:     2019/02/13
------------------------------------------------------------------------------------
tActivityTime["ThorPack"] = {}
tActivityTime["ThorPack"]["ActivityTime"] = "2019-03-12 00:00 2019-04-11 23:59"

------------------------------------------------------------------------------------
--Name：       190130[简体征服][活动脚本]烦请内嵌新资料片雷神冲榜活动页面
--Creator:     洪聪敏
--Created:     2019-01-30
------------------------------------------------------------------------------------
-- tActivityTime["ThorH5Act"] = {}
-- tActivityTime["ThorH5Act"]["ActivityTime"] = "2019-03-12 00:00 2019-04-11 23:59"

------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]雷神版本上线内容补充
--Creator:      耿力兀
--Created:     2019-02-18
------------------------------------------------------------------------------------
tActivityTime["ContentSupplement"] = {}
tActivityTime["ContentSupplement"]["ActiveTime"] = "2019-03-12 00:00 2019-04-11 23:59"


------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]春节天石雨
--Creator:		翁清海
--Created:		2019/01/31
------------------------------------------------------------------------------------

tActivityTime["SpringFestivalEmoney"] = {}
tActivityTime["SpringFestivalEmoney"]["ActiveTime"] = "2019-10-10 00:00 2019-10-30 23:59"
tActivityTime["SpringFestivalEmoney"]["DayTime"] = {}
tActivityTime["SpringFestivalEmoney"]["DayTime"][1] = "04:00 05:59"
tActivityTime["SpringFestivalEmoney"]["DayTime"][2] = "10:00 11:59"
tActivityTime["SpringFestivalEmoney"]["DayTime"][3] = "18:00 19:59"

---灵珠天降福禄
tActivityTime["FortuneHeaven"] = {}
tActivityTime["FortuneHeaven"]["DragonAtivityTime"] = "2019-03-12 00:00 2019-03-18 23:59"


------------------------------------------------------------------------------------
--Name：       190211[英文征服][活动脚本]3月普天同庆活动
--Creator:      茅志伟
--Created:     2019/02/11
------------------------------------------------------------------------------------
tActivityTime["MarchSpringGiftBag"] = {}
tActivityTime["MarchSpringGiftBag"]["ActionTime"] = "2019-03-12 00:00 2019-04-01 23:59"

------------------------------------------------------------------------------------
--Name：       190213[英文征服][活动脚本]新手简单优化（3.12）
--Creator:     茅志伟
--Created:     2019/02/13
------------------------------------------------------------------------------------
tActivityTime["IntroductionOfNovice"] = {}
tActivityTime["IntroductionOfNovice"]["ActTime"] = "2019-03-12 00:00 2029-03-06 23:59"

------------------------------------------------------------------------------------
--Name:			190215[英文征服][活动脚本]灵珠兑换商店线上部分制作
--Purpose:		灵珠兑换商店线上部分制作
--Creator:		茅志伟
--Created:		2019/02/15
------------------------------------------------------------------------------------
tActivityTime["DragonSpiritWithdrawal"] = {}
tActivityTime["DragonSpiritWithdrawal"]["ActionTime"] = "2019-03-12 00:00 2019-06-12 23:59"   ---活动时间

------------------------------------------------------------------------------------
--Name：         190227[英文征服][活动脚本]雷神成品装备促销（3.19-4.19）
--Creator:      茅志伟
--Created:     2019/02/27
------------------------------------------------------------------------------------
tActivityTime["RaytheonEquipmentPromotion"] = {}
tActivityTime["RaytheonEquipmentPromotion"]["ActivityTime"] = "2019-03-12 00:00 2019-04-11 23:59"


------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]玩雷神有好礼（3.12-3.18）
--Creator:      杨艳
--Created:     2019/02/14
------------------------------------------------------------------------------------

tActivityTime["RaytheonGoodPack"] = {}
tActivityTime["RaytheonGoodPack"]["ActivityTime"] = "2019-03-12 00:00 2019-03-18 23:59"
tActivityTime["RaytheonGoodPack"]["ItemUseTime"] = "2019-03-12 00:00 2019-04-18 23:59"

------------------------------------------------------------------------------------
--Name：      190202[简体征服][活动脚本]3月老玩家回归制作
--Creator:    江宇君
--Created:    2019/02/02
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            180710[简体征服][活动脚本]烦请制作7月暑假促活活动线上部分
--Creator:      陈莺
--Created:     2018/07/10
------------------------------------------------------------------------------------
tActivityTime["SummerSalesPromotion"] = {}
tActivityTime["SummerSalesPromotion"]["Bef_Time"] = "2018-05-01 00:00 2020-07-15 23:59" --活动前时间
tActivityTime["SummerSalesPromotion"]["Now_Time"] = "2020-07-16 00:00 2020-08-12 23:59" --活动时间
tActivityTime["SummerSalesPromotion"]["Item_Time"] = "2019-05-09 00:00 2019-06-01 23:59" --物品使用时间

------------------------------------------------------------------------------------
--Name:		181019[口袋征服][任务脚本]24小时循环任务细化逻辑部分
--Creator: 	兰瑞妹
--Created:	2018/12/06
------------------------------------------------------------------------------------
tActivityTime["CyclicTaskLogic"] = {}
tActivityTime["CyclicTaskLogic"]["ActivityTime"] = "2019-03-07 00:00 2029-03-15 23:59"

------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]金币礼包大促销（3.12-4.1）
--Creator:      杨艳
--Created:     2019/02/18
------------------------------------------------------------------------------------
tActivityTime["GoldBagPromotion"] = {}
tActivityTime["GoldBagPromotion"]["ActivityTime"] = "2019-03-14 00:00 2019-04-01 23:59"

------------------------------------------------------------------------------------
--Name：        190318[英文征服][活动脚本]金币商城4月2日
--Creator:      叶方琪
--Created:     2019/03/21
------------------------------------------------------------------------------------
tActivityTime["GoldCoinMall"] = {}
tActivityTime["GoldCoinMall"]["ActivityTime"] = "2019-04-02 00:00 2029-04-02 23:59"

------------------------------------------------------------------------------------
--Name：        190325[英文征服][活动脚本]4月线下活动相关发奖action制作
--Creator:      耿力兀
--Created:     2019-03-25
------------------------------------------------------------------------------------
tActivityTime["AprilOfflineActivities"] = {}
tActivityTime["AprilOfflineActivities"]["ActivityTime"] = "2019-03-28 00:00 2019-09-30 23:59"

-----------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]战斗力爬塔活动
--Creator:		翁清海
--Created:		2019/02/26
------------------------------------------------------------------------------------
tActivityTime["BattleChallenge"] = {}
--活动时间
tActivityTime["BattleChallenge"]["ActiveTime"] = "2019-03-28 00:00 2019-04-10 23:59"
--排行榜NPC存在时间
tActivityTime["BattleChallenge"]["RankTime"] = "2019-03-28 00:00 2019-04-11 23:59"
--总排行发奖时间，活动时间后一天
tActivityTime["BattleChallenge"]["RankAwardTime"] = "2019-04-11 00:00 2019-04-11 23:59"
--每天排行发奖总时间，整体比活动时间延后一天
tActivityTime["BattleChallenge"]["DayAwardTime"] = "2019-03-29 00:00 2019-04-11 23:59"
--礼包开启时间
tActivityTime["BattleChallenge"]["ItemUseTime"] = "2019-03-28 00:00 2019-04-13 23:59"

------------------------------------------------------------------------------------
--Name:			181220[简体征服][活动脚本]锁妖丹BOSS活动制作
--Purpose:		锁妖丹活动
--Creator:		吴志宏
--Created:		2018/12/20
------------------------------------------------------------------------------------
tActivityTime["BossForSuoYaoPill"] = {}
tActivityTime["BossForSuoYaoPill"]["ActTime"] = "2019-03-14 00:00 2025-01-16 23:59"

------------------------------------------------------------------------------------
--Name：            190327[简体征服][活动脚本]熔炼炉优化版本上线相关修改
--Creator:      叶方琪
--Created:     2019/03/27
------------------------------------------------------------------------------------
tActivityTime["SmeltingFurnaceOptimization"] = {}
tActivityTime["SmeltingFurnaceOptimization"]["ActivityTime"] = "2019-04-16 00:00 2019-05-16 23:59"

------------------------------------------------------------------------------------
--Name:			190324[英文征服][活动脚本]4月幸运日活动4.16-5.6
--Creator:		吴志宏
--Created:		2019/03/24
------------------------------------------------------------------------------------
tActivityTime["LuckyDayAct"] = {}
tActivityTime["LuckyDayAct"]["ActTime"] = "2019-04-16 00:00 2019-05-07 07:59"
tActivityTime["LuckyDayAct"]["LastDay"] = "2019-05-06 08:00 2019-05-07 07:59"
tActivityTime["LuckyDayAct"]["StartHour"] = 8


------------------------------------------------------------------------------------
--Name：            190326[英文征服][活动脚本]4月灵珠排行榜线上部分制作
--Creator:      洪聪敏
--Created:     2019/03/26
------------------------------------------------------------------------------------
tActivityTime["DragonSoulWeb"] = {}
tActivityTime["DragonSoulWeb"]["ActiveTime"] = "2019-04-18 00:00 2019-04-30 23:59"

------------------------------------------------------------------------------------
--Name：            190320[英文征服][活动脚本]4月全球江湖实力排行榜NPC制作
--Creator:      蔡颖静
--Created:     2019/03/20
------------------------------------------------------------------------------------
tActivityTime["CareerDevelopmentNPC"] = {}
tActivityTime["CareerDevelopmentNPC"]["ActivityTime"] = "2019-04-23 00:00 2025-04-01 23:59"


------------------------------------------------------------------------------------
--Name：       190212[简体征服][活动脚本]周年庆小活动复用
--Creator:     江宇君
--Created:     2019/02/12
------------------------------------------------------------------------------------
tActivityTime["AnniversaryActivity"] = {}
tActivityTime["AnniversaryActivity"]["ActivityTime"] = "2019-04-18 00:00 2019-05-01 23:59"

------------------------------------------------------------------------------------
--Name：        190416[英文征服][活动脚本]线下送祝福发奖物品和action制作
--Creator:      耿力兀
--Created:     2019-04-16
------------------------------------------------------------------------------------
tActivityTime["BlessedGift"] = {}
tActivityTime["BlessedGift"]["ActivityTime"] = "2019-04-30 00:00 2019-06-30 23:59"
--------------------------------------------------------------------------------
--190404[简体征服][活动脚本]幸运抽奖活动(4.11-4.25)
-- 幸运抽奖活动
--Creator: 	傅伟龙
--Created:	2019-03-22
--------------------------------------------------------------------------------
tActivityTime["LuckyDrawAct"] = {}
tActivityTime["LuckyDrawAct"]["BefTime"] = "2019-01-01 00:00 2019-04-29 23:59" 
tActivityTime["LuckyDrawAct"]["ActTime"] = "2019-04-30 00:00 2019-05-13 23:59" 
------------------------------------------------------------------------------------
--Name：       190321[简体征服][活动脚本]周年庆活动副本-活动时间部分
--Creator:     吴燕柚
--Created:     2019/03/21
------------------------------------------------------------------------------------
tActivityTime["AnniversaryInstance"] = {}
tActivityTime["AnniversaryInstance"]["ActivityTime"] = "2019-05-07 00:00 2019-05-15 23:59"
tActivityTime["AnniversaryInstance"]["RankDayTime"] = "00:00 23:59"--排行榜可记录的时间
tActivityTime["AnniversaryInstance"]["ResetTime"] = "23:55 23:56"--日排行榜重置时间
tActivityTime["AnniversaryInstance"]["DayMailActiveTime"] = "2019-05-07 00:00 2019-05-15 23:59"--日榜可发邮件的时间
tActivityTime["AnniversaryInstance"]["TotalMailActiveTime"] = "2019-05-16 00:00 2019-05-16 23:59"--总榜可发邮件的时间
tActivityTime["AnniversaryInstance"]["MailRewardTime"] = "23:57 23:59"--发邮件的日时间
tActivityTime["AnniversaryInstance"]["TotalMailRewardTime"] = "00:01 00:03"--发总榜奖励邮件的日时间
tActivityTime["AnniversaryInstance"]["RankNpcTime"] = "2019-05-07 00:00 2019-05-16 23:59"

------------------------------------------------------------------------------------
--Name：           190416[英文征服][活动脚本]上线活跃有好礼（5.7-5.20）
--Creator:      杨艳
--Created:     2019/04/19
------------------------------------------------------------------------------------
tActivityTime["ActiveOnline"] = {}
tActivityTime["ActiveOnline"]["ActTime"] = "2019-05-07 00:00 2019-05-20 23:59"
tActivityTime["ActiveOnline"]["ItemUseTime"] = "2019-05-07 00:00 2019-05-31 23:59"

------------------------------------------------------------------------------------
--Name：        190421[英文征服][活动脚本]地推新手卡奖励兑换制作需求(5.5-6.30)
--Creator:      耿力兀
--Created:     2019-04-21
------------------------------------------------------------------------------------
tActivityTime["NovicesReward"] = {}
tActivityTime["NovicesReward"]["ActivityTime"] = "2019-08-01 00:00 2019-10-30 23:59"

------------------------------------------------------------------------------------
--Name:			190311[ios英文征服][活动脚本]制作4月藏宝阁发奖礼包和action（4.9）
--Creator: 		茅志伟
--Created:		2019/03/11
------------------------------------------------------------------------------------
tActivityTime["MayTreasurePavilionAction"] = {}
tActivityTime["MayTreasurePavilionAction"]["ActionTime"] = "2019-05-07 00:00 2019-09-30 23:59"

------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]烦请内嵌天机转盘促销活动页面
--Creator:      江宇君
--Created:      2019-02-18
------------------------------------------------------------------------------------
tActivityTime["TurntableLuck"] = {}
tActivityTime["TurntableLuck"]["ActivityTime"] = "2019-05-07 00:00 2019-05-27 23:59"

------------------------------------------------------------------------------------
--Name：            181206[简体征服][活动脚本]12月消费活动
--Creator:      吴燕柚
--Created:     2018-12-06
------------------------------------------------------------------------------------
tActivityTime["DecMovieAct"] = {}
tActivityTime["DecMovieAct"]["ActivityTime"] = "2019-05-09 00:00 2019-05-29 23:54"
tActivityTime["DecMovieAct"]["DayTime"] = "00:00 23:59"
tActivityTime["DecMovieAct"]["ResetTime"] = "23:58 23:59"
tActivityTime["DecMovieAct"]["MailActiveTime"] = "2019-05-29 00:00 2019-05-29 23:59"
tActivityTime["DecMovieAct"]["MailRewardTime"] = "23:55 23:59"


------------------------------------------------------------------------------------
--Name:			190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:		吴燕柚
--Created:		2019/03/12
------------------------------------------------------------------------------------
tActivityTime["TrojanAwakenI"] = {}
tActivityTime["TrojanAwakenI"]["ActivityTime"] = "2019-05-09 00:00 2019-05-15 23:59"
tActivityTime["TrojanAwakenI"]["ExchangeTime"] = "2019-05-09 00:00 2019-06-10 23:59"
tActivityTime["TrojanAwakenI"]["NewExchangeTime"] = "2019-05-16 00:00 2019-06-10 23:59"

------------------------------------------------------------------------------------
--Name：       190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
--Creator:     江宇君
--Created:     2019-03-06
------------------------------------------------------------------------------------
tActivityTime["TrojanAwakenPhaseII"] = {}
tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"] = "2019-05-16 00:00 2019-05-22 23:59"

-----------------------------------------练气轮盘赌活动-------------------------------------------

tActivityTime["StrengthWheelGambling"] = {}
tActivityTime["StrengthWheelGambling"]["ActivityTime"] = "2019-05-14 00:00 2019-05-27 23:59"



------------------------------------------------------------------------------------
--Name：            190404[简体征服][活动脚本]BattlePass积分任务
--Creator:      蔡颖静
--Created:     2019/04/04
------------------------------------------------------------------------------------
tActivityTime["BattlePassSeason"] = {}
tActivityTime["BattlePassSeason"]["ActivityTime"]="2020-08-18 00:00 2020-09-14 23:59"  

------------------------------------------------------------------------------------
--Name：         190505[英文征服][活动脚本]CO猫活动背包信和游戏内弹窗制作
--Creator:      耿力兀
--Created:     2019-05-05
------------------------------------------------------------------------------------
tActivityTime["COLuckyCat"] = {}
tActivityTime["COLuckyCat"]["ActivityTime"] = "2019-05-09 00:00 2019-05-13 23:59" 
tActivityTime["COLuckyCat"]["LetterTime"] = "2019-05-09 00:00 2019-05-31 23:59" 
tActivityTime["COLuckyCat"]["LetterUseTime"] = "2019-05-09 00:00 2019-06-07 23:59" 

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]点石成金
--Creator:		翁清海
--Created:		2018/12/01
------------------------------------------------------------------------------------

tActivityTime["MidasTouch"] = {}
tActivityTime["MidasTouch"]["ActTime"] = "2019-01-03 00:00 2028-12-31 23:59"

------------------------------------------------------------------------------------
--Name:		181121[英文征服][活动脚本]激情服宣传npc
--Creator: 	黄啸
--Created:	2019/05/05
------------------------------------------------------------------------------------
tActivityTime["PassionAnnounce"] = {}
tActivityTime["PassionAnnounce"]["BeforeActTime"] = "2019-01-01 00:00 2019-05-15 23:59"
tActivityTime["PassionAnnounce"]["ActTime"] = "2019-05-16 00:00 2019-05-22 23:59"

------------------------------------------------------------------------------------
--Name:			190327[ios英文征服][活动脚本]4月新服夺宝玩法制作(物品部分)
--Purpose:		4月新服夺宝玩法制作(物品部分)
--Creator:		茅志伟
--Created:		2019/03/27
------------------------------------------------------------------------------------
tActivityTime["AprilTreasureActivityItem"] = {}
tActivityTime["AprilTreasureActivityItem"]["ActivityTime"] = "2019-05-16 00:00 2019-06-13 23:59"
tActivityTime["AprilTreasureActivityItem"]["UseItemTime"] = "2019-05-16 00:00 2019-05-30 23:59"
tActivityTime["AprilTreasureActivityItem"]["MoveMap1"] = "5 22:00 5 22:30 "
tActivityTime["AprilTreasureActivityItem"]["MoveMap2"] = "6 22:00 6 22:30 "

tActivityTime["AprilTreasureActivityItem"]["SkyMap1"] = "12:00 12:29"
tActivityTime["AprilTreasureActivityItem"]["SkyMap2"] = "18:00 18:29"
tActivityTime["AprilTreasureActivityItem"]["SkyMap3"] = "21:00 21:29"

------------------------------------------------------------------------------------
--Name:			190410[简体征服][活动脚本]周年庆气氛布置
--Creator:		耿力兀
--Created:		2019-04-11
------------------------------------------------------------------------------------
tActivityTime["DecorationAndAtmosphere"] = {}
tActivityTime["DecorationAndAtmosphere"]["ActivityTime"] = "2019-11-21 00:00 2019-12-11 23:59" 

------------------------------------------------------------------------------------
--Name：            190401[ios英文征服][活动脚本]4月新服夺宝玩法制作
--Creator:      杨艳
--Created:     2019/04/08
------------------------------------------------------------------------------------
tActivityTime["GangRevels"] = {}
tActivityTime["GangRevels"]["ActivityTime"] = "2019-05-14 00:00 2019-06-14 23:59"

------------------------------------------------------------------------------------
--Name：        190409[ios英文征服][活动脚本]新服夺宝-空中花园部分
--Creator:      吴燕柚
--Created:      2019-04-09
------------------------------------------------------------------------------------
tActivityTime["IndianaEventSkyGarden"] = {}
tActivityTime["IndianaEventSkyGarden"]["ActivityTime"] = "2019-05-14 00:00 2019-06-13 23:59"

------------------------------------------------------------------------------------
--Name：            190425[英文征服][活动脚本]全球同服预热
--Creator:      洪聪敏
--Created:     2019/04/25
--------------------------------------------------------------------------------------
tActivityTime["GlobalServerNpc"] = {}
tActivityTime["GlobalServerNpc"]["ActivityTime"] = "2019-05-16 00:00 2019-05-29 23:59"


------------------------------------------------------------------------------------
--Name：            190417[英文征服][活动脚本]英文征服5月驯龙高手(5月16日-6月12日)
--Creator:      蔡颖静
--Created:     2019/04/17
------------------------------------------------------------------------------------
tActivityTime["DragonMaster"] = {}
tActivityTime["DragonMaster"]["ActTime"] = "2019-05-16 00:00 2019-06-12 23:59"

------------------------------------------------------------------------------------
--Name:			190426[英文征服][活动脚本]博弈赤练石活动（5.21-6.11）
--Creator: 		茅志伟
--Created:		2019/04/26
------------------------------------------------------------------------------------
tActivityTime["StoneGames"] = {}
tActivityTime["StoneGames"]["ActivityTime"] = "2019-05-21 00:00 2019-06-11 23:59"
------------------------------------------------------------------------------------
--Name:		190422[英文征服][活动脚本]扑克收集活动
--Purpose:	扑克收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
tActivityTime["CollectionSqueezer"] = {}
tActivityTime["CollectionSqueezer"]["BefTime"] = "2019-01-01 00:00 2019-05-22 23:59"
tActivityTime["CollectionSqueezer"]["ActTime"] = "2019-05-23 00:00 2019-06-05 23:59"
tActivityTime["CollectionSqueezer"]["RankActTime"] = "2019-05-23 00:00 2019-06-06 23:59"
------------------------------------------------------------------------------------
--Name：            190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动(5.9-5.27)-第三阶段
--Creator:      陈莺
--Created:     2019-03-11
------------------------------------------------------------------------------------
tActivityTime["WarriorsThirdPart"] = {}
tActivityTime["WarriorsThirdPart"]["Now_Time"] = "2019-05-23 00:00 2019-06-10 23:59" 
tActivityTime["WarriorsThirdPart"]["AtNow_Time"] = "2019-05-23 00:00 2019-06-13 23:59"  
tActivityTime["WarriorsThirdPart"]["RankTime"] = "2019-06-11 00:00 2019-06-13 23:59"  
tActivityTime["WarriorsThirdPart"]["RankItem"] = "2019-06-11 00:00 2019-06-11 23:59"  
tActivityTime["WarriorsThirdPart"]["ActivityTime"] = {}
tActivityTime["WarriorsThirdPart"]["ActivityTime"][1] = "10:00 10:59"  
tActivityTime["WarriorsThirdPart"]["ActivityTime"][2] = "13:00 13:59"  
tActivityTime["WarriorsThirdPart"]["ActivityTime"][3] = "17:00 17:59"  
tActivityTime["WarriorsThirdPart"]["ActivityTime"][4] = "21:00 21:59"  



------------------------------------------------------------------------------------
--Name:		190425[英文征服][任务脚本]跨服天下第一活动(5.21-6.9)
--Creator: 	许乐
--Created:	2019/4/25
------------------------------------------------------------------------------------
tActivityTime["CrossServerBestHero"] = {}
tActivityTime["CrossServerBestHero"]["Activity"] = "2019-05-28 00:00 2019-06-16 23:59"
tActivityTime["CrossServerBestHero"]["RankActivityTime"] = "2019-06-17 00:00 2019-06-17 23:59"
tActivityTime["CrossServerBestHero"]["NpcTime"] = "2019-05-28 00:00 2019-06-17 23:59"

tActivityTime["CrossServerBestHero"]["ActivityTime"] = {}		-- 活动时间点
tActivityTime["CrossServerBestHero"]["ActivityTime"][1] = "12:40 13:00"
tActivityTime["CrossServerBestHero"]["ActivityTime"][2] = "17:40 18:00"
tActivityTime["CrossServerBestHero"]["ActivityTime"][3] = "21:40 22:00"

tActivityTime["CrossServerBestHero"]["StartTime"] = {}
tActivityTime["CrossServerBestHero"]["StartTime"][1] = "12:35 12:40"
tActivityTime["CrossServerBestHero"]["StartTime"][2] = "17:35 17:40"
tActivityTime["CrossServerBestHero"]["StartTime"][3] = "21:35 21:40"

tActivityTime["CrossServerBestHero"]["EndingTime"] = "12:40 23:59"	--当天第一场擂台结束，且0点前

tActivityTime["CrossServerBestHero"]["RankingTime"] = {}		--当天第一场擂台开始到下一场开始清除排行榜前
tActivityTime["CrossServerBestHero"]["RankingTime"][1] = "12:40 17:30"
tActivityTime["CrossServerBestHero"]["RankingTime"][2] = "17:40 21:30"
tActivityTime["CrossServerBestHero"]["RankingTime"][3] = "21:40 23:59"


-----------------------------------------------------------------------------------------------------
--Name:		151014[简体征服][活动脚本]天下第一活动制作物品制作
--Purpose:	跨服天下第一活动物品制作
--Creator: 	黄啸
--Created:		2019/04/28
------------------------------------------------------------------------------------------------------

tActivityTime["CrossServerBestHeroPackage"] = {}
tActivityTime["CrossServerBestHeroPackage"]["BeActivityTime"] = "2019-01-01 00:00 2019-05-27 23:59"
tActivityTime["CrossServerBestHeroPackage"]["ActivityTime"] = "2019-05-28 00:00 2019-06-16 23:59"

------------------------------------------------------------------------------------
--Name：           190417[英文征服][活动脚本]5月玩灵珠有好礼（5月28日-6月10日）
--Creator:      杨艳
--Created:     2019/04/28
------------------------------------------------------------------------------------
tActivityTime["DragonGift"] = {}
tActivityTime["DragonGift"]["ActivityTime"] = "2019-05-28 00:00 2019-06-10 23:59"
tActivityTime["DragonGift"]["ItemUseTime"] = "2019-05-28 00:00 2019-06-10 23:59"
tActivityTime["DragonGift"]["RankActivityTime"] = "2019-05-28 00:00 2019-06-11 23:59"

------------------------------------------------------------------------------------
--Name：        190523[英文征服][活动脚本]1对1促销礼包 5.30
--Creator:      耿力兀
--Created:     2019-05-24
------------------------------------------------------------------------------------
tActivityTime["MayOneToOne"] = {}
tActivityTime["MayOneToOne"]["ActivityTime"] = "2019-05-30 00:00 2019-05-31 23:59"

---------------------------------------------------------------------------------------------------
-- Name:			190513[英文征服][活动脚本]开斋节福利礼包(6.4-6.8)
-- Purpose:			开斋节福利礼包
-- Creator: 			戴鑫海
-- Created:			2019/5/13
------------------------------------------------------------------------------------------------------
tActivityTime["LesserBairam"] = {}
tActivityTime["LesserBairam"]["ActivityTime"] = "2019-06-04 00:00 2019-06-08 23:59"

------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
tActivityTime["NewFoxAct"] = {}
tActivityTime["NewFoxAct"]["BefTime"] = "2019-01-01 00:00 2019-06-03 23:59"
tActivityTime["NewFoxAct"]["ActiveTime"] = "2019-06-04 00:00 2019-07-01 23:59"
tActivityTime["NewFoxAct"]["AfterActivity"] = "2019-07-02 00:00 2022-07-02 23:59"
--删除饱腹奖励时间
tActivityTime["NewFoxAct"]["DelTime"] = "2019-06-04 00:00 2019-07-08 23:59"
--保留给玩家兑换狐狸时间
tActivityTime["NewFoxAct"]["ChgCoatTime"] = "2019-06-04 00:00 2019-07-04 23:59"

------------------------------------------------------------------------------------
--Name：            190531[英文征服][活动脚本]ERP296328【英文征服】用户工资调查（6.4）
--Creator:      蔡颖静
--Created:     2019/05/31
------------------------------------------------------------------------------------
tActivityTime["SalaryQuestionnaireNpc"] = {}
tActivityTime["SalaryQuestionnaireNpc"]["ActivityTime"] = "2019-06-04 00:00 2019-06-04 23:59"
------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月全球同服SLG发奖action制作制作6.11
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
tActivityTime["JuneNewServer"] = {}
tActivityTime["JuneNewServer"]["ActivityTime"] = "2019-06-07 00:00 2019-06-16 23:59"
------------------------------------------------------------------------------------
--Name:		190523[英文征服][活动脚本]6月灵珠觅宝活动制作6.04-7.01
--Creator: 	戴鑫海
--Created:	2019/05/23
------------------------------------------------------------------------------------
tActivityTime["Pearl"] = {}
tActivityTime["Pearl"]["ActivityTime"] = "2020-07-21 00:00 2020-07-27 23:59"
tActivityTime["Pearl"]["ActivityTime2"] = "2020-07-28 00:00 2020-08-05 23:59"
tActivityTime["Pearl"]["ActivityTime3"] = "2020-07-21 00:00 2020-08-04 23:59"
tActivityTime["Pearl"]["ActivityTime4"] = "2020-07-21 00:00 2020-08-04 23:59"
tActivityTime["Pearl"]["ActivityTime5"] = "2020-07-21 00:00 2020-08-04 23:59"
------------------------------------------------------------------------------------
--Name：            190520[英文征服][活动脚本]英文征服六月周卡月卡(6月11日-7月8日)
--Creator:      郑洵
--Created:     2019/05/20
------------------------------------------------------------------------------------
tActivityTime["JuneWeekCards"] = {}
tActivityTime["JuneWeekCards"]["ActivityTime"] = "2019-06-11 00:00 2019-07-08 23:59"
tActivityTime["JuneWeekCards"]["UseWeekTime"] = "2019-06-11 00:00 2019-08-15 23:59"
tActivityTime["JuneWeekCards"]["UseMonthTime"] = "2019-06-11 00:00 2019-09-15 23:59"



------------------------------------------------------------------------------------
--Name:			190521[英文征服][活动脚本]强PK服赛事奖励增加(6.17)
--Creator: 		吴燕柚
--Created:		2019/05/22
------------------------------------------------------------------------------------
tActivityTime["MatchRewardDouble"] = {}
tActivityTime["MatchRewardDouble"]["ActivityTime"] = "2019-06-17 00:00 2019-06-30 23:59"
------------------------------------------------------------------------------------
--Name：       190529[英文征服][活动脚本]并服补偿方案6.20
--Creator:     吴燕柚
--Created:     2019-05-29
------------------------------------------------------------------------------------

tActivityTime["ComBineServerReward"] = {}
tActivityTime["ComBineServerReward"]["ActTime"] = "2019-11-01 00:00 2019-11-02 23:59"
----------------------------------------测试背包信邮箱打开率活动--------------------------------------------

tActivityTime["CommonPackage"] = {}
tActivityTime["CommonPackage"]["Login"] = "2019-06-18 00:00 2019-06-30 23:59"
------------------------------------------------------------------------------------
--Name：            190611[英文征服][活动脚本]游戏内弹窗制作(6.13-6.20)
--Creator:      蔡颖静
--Created:     2019/06/11
------------------------------------------------------------------------------------
tActivityTime["PopUpWindow"] = {}
tActivityTime["PopUpWindow"]["ActivityTime"] = "2019-07-04 00:00 2019-07-05 23:59"
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            190617[英文征服][活动脚本]6月月度首充包
--Creator:      蔡颖静
--Created:     2019/06/17
------------------------------------------------------------------------------------
tActivityTime["JuneRebateGift"] = {}
tActivityTime["JuneRebateGift"]["ActivityTime"] = "2019-06-20 00:00 2019-06-30 23:59"

------------------------------------------------------------------------------------
--Name：190620[英文征服][活动脚本]游戏内弹窗制作
--Creator:      洪聪敏
--Created:     209/06/20
------------------------------------------------------------------------------------
tActivityTime["LoginPopup"] = {}
tActivityTime["LoginPopup"]["ActivityTime"] = "2019-06-20 00:00 2019-06-26 23:59"

------------------------------------------------------------------------------------
--Name：        190619[英文征服][活动脚本]6月精准推送活动
--Creator:      洪聪敏
--Created:     2019-06-19
------------------------------------------------------------------------------------
tActivityTime["Accuratepush"] = {}
tActivityTime["Accuratepush"]["ActivityTime"] = "2019-06-25 00:00 2019-07-03 23:59"


------------------------------------------------------------------------------------
--Name：         190417[简体征服][功能脚本]勇士百兵谱支线任务
--Creator:      茅志伟
--Created:     2019/04/17
------------------------------------------------------------------------------------
tActivityTime["WeaponsSpectrumStick"] = {}
tActivityTime["WeaponsSpectrumStick"]["ActionTime"] = "2019-05-14 00:00 2029-05-27 23:59"   ---活动时间

------------------------------------------------------------------------------------
--Name：       190418[简体征服][活动脚本]勇士百兵谱-杵
--Creator:     吴燕柚
--Created:     2019/04/18
------------------------------------------------------------------------------------
tActivityTime["TrojanWeaponChu"] = {}
tActivityTime["TrojanWeaponChu"]["ActTime"] = "2019-01-01 00:00 2035-04-15 23:59" 

------------------------------------------------------------------------------------
--Name：      190514[简体征服][活动脚本]勇士觉醒特权月线上任务（5.28）-特权福利、装备促销 
--Creator:    陈莺
--Created:    2019/05/16
------------------------------------------------------------------------------------
tActivityTime["WarriorPrivilege"] = {}
tActivityTime["WarriorPrivilege"]["ActivityTime"] = "2019-07-02 00:00 2019-08-01 23:59" --活动时间
tActivityTime["TrojanPrivilegeMonth"] = {}
tActivityTime["TrojanPrivilegeMonth"]["ActivityTime"] = "2019-07-02 00:00 2019-08-01 23:59"
------------------------------------------------------------------------------------
--Name：            190425[简体征服][活动脚本]内嵌勇士觉醒系列
--Creator:      林嘉鑫
--Created:     2019-04-25
------------------------------------------------------------------------------------
tActivityTime["WarriorAwakenWeb"] = {}
tActivityTime["WarriorAwakenWeb"]["ActivityTime"] = {}
-- 集字符NPC屏蔽
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24164] = "2018-06-05 15:00 2018-07-02 23:59"
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24165] = "2019-06-05 15:00 2019-06-25 23:59"
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24166] = "2019-06-05 15:00 2019-07-04 23:59"
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24167] = "2019-06-05 15:00 2019-06-25 20:00"
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24168] = "2019-06-05 15:00 2019-06-10 23:59"
-- 微信内嵌NPC还未上
tActivityTime["WarriorAwakenWeb"]["ActivityTime"][24220] = "2018-05-28 15:00 2018-06-10 23:59"

------------------------------------------------------------------------------------
--Name：            190528[简体征服][活动脚本]勇士版本上线礼包增加内容
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
tActivityTime["WarriorPackage"] = {}
tActivityTime["WarriorPackage"]["PackageTime"] = "2018-07-02 00:00 2018-07-21 23:59"
tActivityTime["WarriorPackage"]["ActivityTime"] = "2018-07-02 00:00 2018-07-31 23:59"
tActivityTime["WarriorPackage"]["TimeLimit"] = "10:00 22:00"
tActivityTime["WarriorPackage"]["OpenPingTimeLimit"] = "2019-07-02 00:00 2019-08-02 23:59"

------------------------------------------------------------------------------------
--Name：            190617[英文征服][活动脚本]游戏活跃礼包（7.2-8.1）
--Creator:      林嘉鑫
--Created:     2019-06-17
------------------------------------------------------------------------------------
tActivityTime["ActivePackage"] = {}
tActivityTime["ActivePackage"]["ActivityTime"] = "2019-08-06 00:00 2019-09-02 23:59"

------------------------------------------------------------------------------------
--Name：            190530[英文征服][活动脚本]6月勇士觉醒上线普天同庆活动制作6.17-7.16
--Creator:      蔡颖静
--Created:     2019/05/30
------------------------------------------------------------------------------------
tActivityTime["CelebrationActivity"] = {}
tActivityTime["CelebrationActivity"]["ActTime"] = "2019-07-02 00:00 2019-08-01 23:59"
tActivityTime["CelebrationActivity"]["DayTime"]={}
tActivityTime["CelebrationActivity"]["DayTime"][1]="04:00 05:59"
tActivityTime["CelebrationActivity"]["DayTime"][2]="10:00 11:59"
tActivityTime["CelebrationActivity"]["DayTime"][3]="18:00 19:59"

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌灵兽成长基金活动页面（5.14）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
tActivityTime["MonsterFund"] = {}
tActivityTime["MonsterFund"]["NPCActivityTime"] = "2019-07-04 01:00 2019-08-03 09:00"
tActivityTime["MonsterFund"]["AMActivityTime"] = "2019-07-04 01:00 2019-08-02 23:59"
tActivityTime["MonsterFund"]["EUActivityTime"] = "2019-07-04 09:00 2019-08-03 07:59"
tActivityTime["MonsterFund"]["UseItemTime"] = "2019-07-04 07:00 2019-09-30 23:59"

------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌中英联合世界版图探索活动活动页面及线上部分（5.21）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
tActivityTime["MapExploration"] = {}
tActivityTime["MapExploration"]["EUActivityTime"] = "2019-07-04 09:00 2019-08-03 07:59"
tActivityTime["MapExploration"]["AMActivityTime"] = "2019-07-04 01:00 2019-08-02 23:59"
tActivityTime["MapExploration"]["ActivityTime"] = "2019-07-04 00:00 2019-08-10 23:59"

------------------------------------------------------------------------------------
--Name：          190606[英文征服][活动脚本]7月德州玩家MMO活动
--Creator:      杨艳
--Created:     2019/06/11
--------------------------------------------------------------------------------------
tActivityTime["TexasMomoAct"] = {}
tActivityTime["TexasMomoAct"]["ActivityTime"] = "2019-08-08 00:00 2019-08-31 23:59"

------------------------------------------------------------------------------------
--Name：       [简体征服][活动脚本]灵珠锻造轮盘玩法
--Creator:     郑鋆
--Created:     2019/04/29
------------------------------------------------------------------------------------
tActivityTime["DragonSoulRoulette"] = {}
tActivityTime["DragonSoulRoulette"]["ActivityTime"] = "2019-07-09 00:00 2019-07-31 23:59"
tActivityTime["DragonSoulRoulette"]["UseItemTime"] = "2019-07-09 00:00 2019-08-30 23:59"

------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]暑期新服(7.11)
--Creator:      黄啸
--Created:     2019-07-06
------------------------------------------------------------------------------------
tActivityTime["SummerVacationActivity"] = {}
tActivityTime["SummerVacationActivity"]["Shuang"] = {}
tActivityTime["SummerVacationActivity"]["Shuang"]["BeforeActivityTime"] = "2019-01-01 09:00 2019-07-10 23:59"
tActivityTime["SummerVacationActivity"]["Shuang"]["ActivityTime"] = "2019-07-11 00:00 2019-09-10 23:59"
tActivityTime["SummerVacationActivity"]["Shuang"]["LongTime"] = "2019-07-11 00:00 2029-09-10 23:59"
tActivityTime["SummerVacationActivity"]["NewShuang"] = {}
tActivityTime["SummerVacationActivity"]["NewShuang"]["BeforeActivityTime"] = "2019-01-01 09:00 2020-07-29 23:59"
tActivityTime["SummerVacationActivity"]["NewShuang"]["ActivityTime"] = "2020-07-30 00:00 2020-08-12 23:59"
tActivityTime["SummerVacationActivity"]["Old"] = {}
tActivityTime["SummerVacationActivity"]["Old"]["ActivityTime"] = "2019-07-11 09:00 2019-08-01 23:59"
tActivityTime["SummerVacationActivity"]["AugustActivity"] = "2020-08-13 00:00 2020-09-09 23:59"


------------------------------------------------------------------------------------
--Name：            190613[简体征服][活动脚本]南宫促衣会魂版
--Creator:      王贤

--Created:     2019-06-13
------------------------------------------------------------------------------------
tActivityTime["ClothingPromotionForAnima"] = {}
tActivityTime["ClothingPromotionForAnima"]["ActivityTime"] = "2020-08-04 00:00 2020-08-24 23:59" 



------------------------------------------------------------------------------------
--Name:			190627[ios英文征服][活动脚本]7月COP上线奖励礼包及发奖action制作
--Creator: 		茅志伟
--Created:		2019/06/27
------------------------------------------------------------------------------------
tActivityTime["COPGoOnlinePack"] = {}
tActivityTime["COPGoOnlinePack"]["ActivityTime"] = "2019-07-16 00:00 2019-07-25 23:59"
------------------------------------------------------------------------------------
--Name：            190619[英文征服][活动脚本]7月德州豪客赛(7.19-7.26)
--Creator:      翁清海
--Created:     2019-07-02
------------------------------------------------------------------------------------
tActivityTime["AugTexasActivity"] = {}
tActivityTime["AugTexasActivity"]["ActivityTime"] = "2019-09-17 00:00 2019-09-28 23:59"
tActivityTime["AugTexasActivity"]["Buy"] = {}
tActivityTime["AugTexasActivity"]["Buy"][1] = "2019-09-17 00:00 2019-09-20 23:59"
tActivityTime["AugTexasActivity"]["Buy"][2] = "2019-09-25 00:00 2019-09-27 23:59"
------------------------------------------------------------------------------------
--Name：            190507[简体征服][活动脚本]最强勇士职业PK赛
--Creator:      江宇君
--Created:     2019-05-07
------------------------------------------------------------------------------------
tActivityTime["TrojanCompetition"] = {}
tActivityTime["TrojanCompetition"]["ActivityTime"] = "2019-12-17 00:00 2019-12-31 23:59" -- npc移出时间
tActivityTime["TrojanCompetition"]["PreliminariesTime"] = "2019-12-17 00:00 2019-12-30 23:59" -- 预选赛的时间
tActivityTime["TrojanCompetition"]["CompetitionTime"] = "2019-12-31 00:00 2019-12-31 23:59" -- 决赛日期
tActivityTime["TrojanCompetition"]["AdmissionTime"] = "2019-12-31 19:15 2019-12-31 19:29" -- 决赛入场时间
tActivityTime["TrojanCompetition"]["MatchTime"] = "19:30 20:29" -- 决赛时间
tActivityTime["TrojanCompetition"]["NoBuyTime"] = "2019-12-31 19:30 2019-12-31 23:59" -- 不允许购买令牌的时间

------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]COP宣传NPC和背包信制作
--Creator:      茅志伟
--Created:     2019/07/03
------------------------------------------------------------------------------------
tActivityTime["COPBackpackLetter"] = {}
tActivityTime["COPBackpackLetter"]["ActionTime"] = "2020-06-09 00:00 2020-06-30 23:59"   ---活动时间

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]增加神兵灵魄的促销
--Creator:		翁清海
--Created:		2019/07/03
------------------------------------------------------------------------------------
tActivityTime["LegendaryEssence"] = {}
tActivityTime["LegendaryEssence"]["ActivityTime"] = "2019-07-25 00:00 2019-08-24 23:59"

------------------------------------------------------------------------------------
--Name：            190701[英文征服][活动脚本]7月精准推送活动
--Creator:      洪聪敏
--Created:     2019/07/03
------------------------------------------------------------------------------------
tActivityTime["JulyAccuratePush"] = {}
tActivityTime["JulyAccuratePush"]["ActivityTime"] = "2019-07-25 00:00 2019-08-01 23:59"

------------------------------------------------------------------------------------
--Name:			190705[英文征服][活动脚本]8月发奖id第一期（7.25）
--Creator: 		茅志伟
--Created:		2019/06/11
------------------------------------------------------------------------------------
tActivityTime["AugustActionUp"] = {}
tActivityTime["AugustActionUp"]["ActionTime"] = "2019-07-25 00:00 2019-10-15 23:59"   ---活动时间

------------------------------------------------------------------------------------
--Name:		190430[简体征服][活动脚本]新龙塔玩法--爬塔玩法
--Purpose:	新龙塔玩法--爬塔玩法
--Creator: 	严振飞
--Created:	2019/04/30
------------------------------------------------------------------------------------
tActivityTime["DragonSoulFloor"] = {}
tActivityTime["DragonSoulFloor"]["ActivityTime"] = "2019-07-23 00:00 2019-08-12 23:59"

------------------------------------------------------------------------------------
--Name:		190630[简体征服][活动脚本]生存大作战
--Purpose:	吃鸡
--Creator: 	黄啸
--Created:	2019/06/30
------------------------------------------------------------------------------------
tActivityTime["JulyEatchicken"] = {}
tActivityTime["JulyEatchicken"]["BeforeActivity"] = "2019-01-01 00:00 2020-08-05 23:59"
tActivityTime["JulyEatchicken"]["ActiveTime"] = "2020-08-06 00:00 2020-08-26 23:59"
tActivityTime["JulyEatchicken"]["ActiveNpc"] = "2020-08-06 00:00 2020-08-26 23:59"
tActivityTime["JulyEatchicken"]["ActivActiveAwardGeteNpc"] = "2020-08-27 00:00 2020-08-27 23:59"

------------------------------------------------------------------------------------
--Name：        190719[英文征服][活动脚本]8月精准推送活动
--Creator:      洪聪敏
--Created:     2019-07-19
------------------------------------------------------------------------------------
tActivityTime["AugustPush"] = {}
tActivityTime["AugustPush"]["ActivityTime"] = "2019-08-01 00:00 2019-08-31 23:59"  

------------------------------------------------------------------------------------
--Name:		190718[英文征服][活动脚本]7月战令版本二期-商店
--Creator: 	陈莺
--Created:	2019/07/30
------------------------------------------------------------------------------------
tActivityTime["Battle"] = {}
tActivityTime["Battle"]["ActivityTime"] = "2019-08-01 00:00 2019-08-21 23:59"

------------------------------------------------------------------------------------
--Name:		190625[简体征服][任务脚本]上古神器--功能开启引导
--Creator: 	傅伟龙
--Created:	2019/06/25
------------------------------------------------------------------------------------
tActivityTime["ArtifactFunctionGuide"] = {}
tActivityTime["ArtifactFunctionGuide"]["ActTime"] = "2019-08-05 00:00 2019-08-18 23:59"
------------------------------------------------------------------------------------
--Name:			[ios英文征服][活动脚本]每日寻宝副本（7.16-8.15）
--Creator:		翁清海
--Created:		2019/07/01
------------------------------------------------------------------------------------
tActivityTime["FivePagoda"] = {}
tActivityTime["FivePagoda"]["ActTime"] = "2019-08-08 00:00 2019-09-06 23:59"


------------------------------------------------------------------------------------
--Name:			190715[英文征服][活动脚本]拼多多模式拉新活动（上古神器）（8.06-9.04）
--Creator:		郑洵
--Created:		2019/07/15
------------------------------------------------------------------------------------
tActivityTime["RelicRecruitvH5"] = {}
tActivityTime["RelicRecruitvH5"]["ActivityTime"] = "2019-09-05 00:00 2019-10-08 23:59"

------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
tActivityTime["ValentineCompetition"] = {}
tActivityTime["ValentineCompetition"]["ActivityTime"] = "2019-08-06 00:00 2019-09-02 23:59"
tActivityTime["ValentineCompetition"]["OnLineTime"] = "2019-08-06 00:00 2019-09-02 23:59"
tActivityTime["ValentineCompetition"]["NotRatingTime"] = "00:00 07:59"
tActivityTime["ValentineCompetition"]["LetterSendTime"] = "2019-09-03 00:00 2019-09-03 00:10"
tActivityTime["ValentineCompetition"]["PackUseTime"] = "2019-08-06 00:00 2019-09-08 23:59"

------------------------------------------------------------------------------------
--Name：            190705[英文征服][活动脚本]金币大狂欢（8.6-8.31）
--Creator:      蔡颖静
--Created:     2019/07/05
------------------------------------------------------------------------------------
tActivityTime["CoinCarnival"] = {}
tActivityTime["CoinCarnival"]["ActTime"] = "2020-03-05 00:00 2020-03-23 23:59"


------------------------------------------------------------------------------------
--Name：	190725[英文征服][活动脚本]德州金币雨
--Creator:	洪聪敏
--Created:	2019/07/25
------------------------------------------------------------------------------------
tActivityTime["CoinRain"] = {}
tActivityTime["CoinRain"]["ActiveTime"] = "2020-04-13 00:00 2020-05-29 23:59"

------------------------------------------------------------------------------------
--Name：   190726[英文征服][活动脚本]8月聚宝阁活动NPC制作)
--Creator:      傅伟龙
--Created:     2018/09/13
------------------------------------------------------------------------------------
tActivityTime["AugCornucopia"] = {}
tActivityTime["AugCornucopia"]["Bef_Time"] = "2018-01-01 00:00 2019-12-18 23:59"
tActivityTime["AugCornucopia"]["Now_Time"] = "2019-12-19 00:00 2019-12-19 23:59"

------------------------------------------------------------------------------------
--Name:			190716[英文征服][活动脚本]8月渠道充值活动（8.16-8.25）
--Creator:		郑洵
--Created:		2019/07/16
------------------------------------------------------------------------------------
tActivityTime["AugustChannelRecharge"] = {}
tActivityTime["AugustChannelRecharge"]["ActivityTime"] = "2019-08-16 00:00 2019-08-25 23:59"

------------------------------------------------------------------------------------
--Name：      190725[英文征服][活动脚本]赛季服-王者服（8.06-9.12）
--Creator:    吴燕柚
--Created:    190725
------------------------------------------------------------------------------------

tActivityTime["KingServer"] = {}
tActivityTime["KingServer"]["ActTime"] = "2019-08-15 00:00 2019-09-20 23:59"

------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月投资理财（6.4-7.2）
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
tActivityTime["SurpriseInvestment"] = {}
tActivityTime["SurpriseInvestment"]["ActivityTime"] = "2020-05-21 00:00 2020-06-12 23:59"
tActivityTime["SurpriseInvestment"]["InvestmentTime"] = "2020-05-21 00:00 2020-05-31 23:59"
tActivityTime["SurpriseInvestment"]["BackTime"] = "2020-06-01 00:00 2020-06-12 23:59"

------------------------------------------------------------------------------------
--Name：            190524[英文征服][活动脚本]征服金币互通
--Creator:      蔡颖静
--Created:     2019/05/24
------------------------------------------------------------------------------------
tActivityTime["MoneyInterflow"] = {}
tActivityTime["MoneyInterflow"]["ActTime"] = "2019-06-25 00:00 2019-07-12 23:59"

---------------------------------------八月促销---------------------------------------------
tActivityTime["SudokuTreasure"] = {}
tActivityTime["SudokuTreasure"]["BeforeActivityTime"] = "2018-08-01 00:00 2019-08-26 23:59"
tActivityTime["SudokuTreasure"]["ActivityTime"] = "2019-08-27 00:00 2019-09-09 23:59"
tActivityTime["SudokuTreasure"]["AfterActivityTime"] = "2019-09-10 00:00 2019-10-16 23:59"
tActivityTime["SudokuTreasure"]["RankActivityTime"] = "2019-08-27 00:00 2019-09-10 23:59"
tActivityTime["SudokuTreasure"]["ClearTime"] = "09-10 00:00 09-10 00:05"
------------------------------------------------------------------------------------
--Name：            190806[英文征服][活动脚本]9月耗赠点活动（9.5-9.25）
--Creator:      杨艳
--Created:     2019/08/09
------------------------------------------------------------------------------------
tActivityTime["SepMoMoAct"] = {}
tActivityTime["SepMoMoAct"]["ActivityTime"] = "2020-08-13 00:00 2020-09-09 23:59"
tActivityTime["SepMoMoAct"]["ItemUseTime"] = "2020-08-13 00:00 2020-09-16 23:59"
------------------------------------------------------------------------------------
--Name:		190812[英文征服][活动脚本]9月开学防流失礼包（9.5-10.9）
--Creator: 	兰瑞妹
--Created:	2019/08/12
------------------------------------------------------------------------------------
tActivityTime["BackSchoolAntiDrainGift"] = {}
tActivityTime["BackSchoolAntiDrainGift"]["ActivityTime"] = "2019-09-05 00:00 2019-10-09 23:59"

------------------------------------------------------------------------------------
--Name：	190820[英文征服][活动脚本]内嵌招财进宝促销活动页面及线上预存天石
--Creator:	耿力兀
--Created:	2019/08/20
------------------------------------------------------------------------------------
tActivityTime["DepositEmoney"] = {}
tActivityTime["DepositEmoney"]["BefTime"] = "2018-09-01 00:00 2020-02-20 14:59"
tActivityTime["DepositEmoney"]["ActTime"] = "2020-02-20 00:00 2020-02-29 23:59"
tActivityTime["DepositEmoney"]["BeginTime"] = "2020-02-20 15:00 2020-02-29 23:59"

------------------------------------------------------------------------------------
-- Name：	190819[英文征服][活动脚本]手拉手拉新活动-线上制作 （9.5-11.05）
-- Creator:	林旭
-- Created:	2019-08-19
------------------------------------------------------------------------------------
tActivityTime["NewHandInHand"] = {}
tActivityTime["NewHandInHand"]["ActivityTime"] = "2019-10-15 00:00 2019-10-18 23:59"

------------------------------------------------------------------------------------
--Name:		190816[英文征服][活动脚本]9月答题活动（9.3-9.29）
--Creator: 	郑飞
--Created:	2019/08/17
------------------------------------------------------------------------------------
tActivityTime["SepAnswerActivity"] = {}
tActivityTime["SepAnswerActivity"]["ActivityTime"] = "2019-09-03 00:00 2019-9-29 23:59"

----------------------------------------------------------------------------
--Name：            170920[简体征服][活动脚本]博饼活动制作
--Creator:      傅伟龙
--Created:     2017/09/20
----------------------------------------------------------------------------
tActivityTime["MidAutumnDay_BoBing"] = {}
tActivityTime["MidAutumnDay_BoBing"]["BefTime"] = "2019-08-01 00:00 2019-09-11 23:59"
tActivityTime["MidAutumnDay_BoBing"]["ActTime"] = "2019-09-12 00:00 2019-09-30 23:59"
tActivityTime["MidAutumnDay_BoBing"]["KingActTime"] = "2019-09-24 00:00 2019-09-30 23:59"
------------------------------------------------------------------------------------
--Name：            190823[英文征服][活动脚本]中秋博饼由来（9.10~9.30）
--Creator:      郑洵
--Created:     2019/08/23
------------------------------------------------------------------------------------
tActivityTime["ZhongQiu2019Origin"] = {}
tActivityTime["ZhongQiu2019Origin"]["ActivityTime"] = "2019-09-12 00:00 2019-09-30 23:59"
------------------------------------------------------------------------------------
--Name：       190815[简体征服][活动脚本]全球中秋博饼活动-活动二（9.10-9.23）
--Creator:      陈莺
--Created:     2019-08-15
------------------------------------------------------------------------------------
tActivityTime["MidAutumn2019Two"] = {}
tActivityTime["MidAutumn2019Two"]["Bef_Time"] = "2019-08-01 00:00 2019-09-09 23:59"
tActivityTime["MidAutumn2019Two"]["Now_Time"] = "2019-09-10 00:00 2019-09-30 23:59"
tActivityTime["MidAutumn2019Two"]["Open_Time1"] = "10:00 23:59"
tActivityTime["MidAutumn2019Two"]["Open_Time2"] = "00:00 06:00"
------------------------------------------------------------------------------------
--Name：            190821[英文征服][活动脚本]全球共赏月
--Creator:      戴鑫海
--Created:     2019/08/21
------------------------------------------------------------------------------------
--2019中秋
tActivityTime["ZhongQiu"] = {}
tActivityTime["ZhongQiu"]["BeforeTime"] = "2019-08-01 00:00 2019-09-11 23:59"
tActivityTime["ZhongQiu"]["ActivityTime"] = "2019-09-12 00:00 2019-09-30 23:59"
tActivityTime["ZhongQiu"]["UseTime"] = "2019-10-11 00:00 2019-10-15 23:59"
tActivityTime["ZhongQiu"]["GiftUseTime"] = "2019-09-10 00:00 2019-10-15 23:59"
tActivityTime["ZhongQiu"]["CountryUseTime"] = "2019-10-01 00:00 2019-10-10 23:59"

------------------------------------------------------------------------------------
--Name：       190705[简体征服][活动脚本]BOSS之家玩法制作
--Creator:      陈莺
--Created:     2019-07-05
------------------------------------------------------------------------------------
tActivityTime["PublicBOSS"] = {}
tActivityTime["PublicBOSS"]["ActivityTime"] = "2020-07-02 00:00 2020-07-18 23:59"
tActivityTime["PublicBOSS"]["MoneyTime"] = {}
tActivityTime["PublicBOSS"]["MoneyTime"][1] = "08:00 08:59"
tActivityTime["PublicBOSS"]["MoneyTime"][2] = "15:00 15:59"

------------------------------------------------------------------------------------
--Name:		190625[简体征服][活动脚本]换色筋斗云活动
--Creator:	林旭
--Created:	2019/06/25
------------------------------------------------------------------------------------
tActivityTime["MMOJindowin"] = {}
tActivityTime["MMOJindowin"]["BeforeTime"] = "2016-03-10 00:00 2019-09-16 23:59"
tActivityTime["MMOJindowin"]["NowTime"] = "2019-09-17 00:00 2019-10-21 23:59"
tActivityTime["MMOJindowin"]["AfterTime"] = "2019-10-22 00:00 2019-11-21 23:59"

------------------------------------------------------------------------------------
--Name：            190906[简体征服][活动脚本]全球金秋博饼
--Creator:      江宇君
--Created:     2019/09/06
------------------------------------------------------------------------------------
tActivityTime["GlobalMidAutumn"] = {}
tActivityTime["GlobalMidAutumn"]["ActivityTime"] = "2019-09-19 00:00 2019-09-30 23:59"

------------------------------------------------------------------------------------
--Name：            190517[简体征服][活动脚本]掷飞镖小游戏发奖ID制作
--Creator:      杨艳
--Created:     2019/05/17
------------------------------------------------------------------------------------
tActivityTime["DartAct"] = {}
tActivityTime["DartAct"]["ActivityTime"] = "2019-11-21 00:00 2019-12-04 23:59"

------------------------------------------------------------------------------------
--Name：            190917[英文征服][活动脚本]游戏内弹窗制作(9.19-10.19)
--Creator:      江宇君
--Created:     2019/09/17
------------------------------------------------------------------------------------
tActivityTime["PopUpWebPage"] = {}
tActivityTime["PopUpWebPage"]["ActivityTime"] = "2019-09-19 00:00 2019-10-19 23:59"

------------------------------------------------------------------------------------
--Name：       180831[简体征服][活动脚本]寻宝魔塔活动
--Creator:     fwl
--Created:     2018-09-04
------------------------------------------------------------------------------------
tActivityTime["TreasureHuntPagodas"] = {}
tActivityTime["TreasureHuntPagodas"]["BefTime"] = "2019-08-01 00:00 2019-09-23 23:59"
tActivityTime["TreasureHuntPagodas"]["ActTime"] = "2019-09-24 00:00 2019-10-14 23:59"
tActivityTime["TreasureHuntPagodas"]["RankActTime"] = "2019-09-24 00:00 2019-10-14 23:59"
tActivityTime["TreasureHuntPagodas"]["LastActTime"] = "2019-10-15 00:00 2019-10-15 23:59"

------------------------------------------------------------------------------------
--Name:		190819[英文征服][活动脚本]以旧换新活动（9.26-10.16）
--Creator: 	兰瑞妹
--Created:	2019/08/19
------------------------------------------------------------------------------------
tActivityTime["TradeNewGoodForOld"] = {}
tActivityTime["TradeNewGoodForOld"]["ActivityTime"] = "2020-08-20 00:00 2020-09-09 23:59"
tActivityTime["TradeNewGoodForOld"]["ItemUseTime"] = "2020-08-20 00:00 2020-10-09 23:59"

------------------------------------------------------------------------------------
--Name：            190827[英文征服][活动脚本]百日畅玩消费包
--Creator:      洪聪敏
--Created:     2018/08/27
------------------------------------------------------------------------------------

tActivityTime["HundredDayPack"] = {}
tActivityTime["HundredDayPack"]["ActivityTime"] = "2019-09-26 00:00 2019-10-08 23:59"
------------------------------------------------------------------------------------
--Name：	190725[英文征服][活动脚本]德州礼物雨
--Creator:	洪聪敏
--Created:	2019/07/25
------------------------------------------------------------------------------------
tActivityTime["SilverPackRain"] = {}
tActivityTime["SilverPackRain"]["ActivityTime"] = "2019-11-07 00:00 2019-11-29 23:59"
------------------------------------------------------------------------------------
--Name:		190904[英文征服][活动脚本]10月日卡包(10.10-10.31）
--Creator: 	冯子鑫
--Created:	2019/09/05
------------------------------------------------------------------------------------
tActivityTime["OctoberDayCards"] = {}
tActivityTime["OctoberDayCards"]["ActivityTime"] = "2019-10-10 00:00 2019-10-31 23:59"
------------------------------------------------------------------------------------
--Name:		190907[英文征服][活动脚本]10月科普答题活动（10.10-10.31）
--Creator: 	郑飞
--Created:	2019/09/07
------------------------------------------------------------------------------------
tActivityTime["OctPopularScience"] = {}
tActivityTime["OctPopularScience"]["ActivityTime"] = "2019-10-10 00:00 2019-10-31 23:59"

------------------------------------------------------------------------------------
--Name：            190916[简体征服][活动脚本]中秋节活动专属家具
--Creator:      黄啸
--Created:     2019-09-16
------------------------------------------------------------------------------------
tActivityTime["CommonPackageFurniture"] = {}
tActivityTime["CommonPackageFurniture"]["BeforeActivityTime"] = "2019-09-01 00:00 2019-10-09 23:59"
tActivityTime["CommonPackageFurniture"]["ActivityTime"] = "2019-10-10 00:00 2019-10-31 23:59"
tActivityTime["CommonPackageFurniture"]["ToolActivityTime"] = "2019-10-10 00:00 2019-12-16 23:59"

------------------------------------------------------------------------------------
--Name：       190816[英文征服][活动脚本]副职业提升月（9.12-10.9）
--Creator:     吴燕柚
--Created:     2019/08/20
------------------------------------------------------------------------------------
tActivityTime["SecondProGrowth"] = {}
tActivityTime["SecondProGrowth"]["ActTime"] = "2019-10-12 00:00 2019-11-08 23:59"



------------------------------------------------------------------------------------
--Name：            190917[英文征服][活动脚本]10月新服1（10.10-11.10）
--Creator:      蔡颖静
--Created:     2019/09/17
------------------------------------------------------------------------------------
tActivityTime["OctNewServer"] = {}
tActivityTime["OctNewServer"]["ActivityTime"] = "2019-10-15 00:00 2019-11-15 23:59"


------------------------------------------------------------------------------------
--Name：           190917[英文征服][活动脚本]德州红包活动（10.15-10.25）
--Creator:      杨艳
--Created:     2019/09/17
------------------------------------------------------------------------------------

tActivityTime["TexRedBag"] = {}
tActivityTime["TexRedBag"]["ActivityTime"] = "2019-10-15 00:00 2019-10-25 23:59"


------------------------------------------------------------------------------------
--Name：            190904[英文征服][活动脚本]10月冲刺大对决（10.17-11.6）
--Creator:      周洋
--Created:     2019/09/04
------------------------------------------------------------------------------------
tActivityTime["SprintDuel"] = {}
tActivityTime["SprintDuel"]["ActivityTime"] = "2019-10-17 00:00 2019-11-06 23:59"
tActivityTime["SprintDuel"]["AfterTime"] = "2019-11-07 00:00 2019-11-07 23:59"
tActivityTime["SprintDuel"]["OnlineTime"] = "2019-10-17 00:00 2019-11-07 23:59"


------------------------------------------------------------------------------------
--Name:			191008[英文征服][活动脚本]10.19组队PK赛和战旗争霸赛奖励双倍
--Creator: 		吴燕柚
--Created:		2019/10/08
------------------------------------------------------------------------------------
tActivityTime["AmericanMatchRewardDouble"] = {}
tActivityTime["AmericanMatchRewardDouble"]["ActivityTime"] = "2019-10-19 00:00 2019-10-25 23:59"

------------------------------------------------------------------------------------
--Name:		190926[简体征服][活动脚本]10月征服暖暖线上部分(10.24-11.11)
--Purpose:	暖暖
--Creator: 	黄啸
--Created:	2019/09/29
------------------------------------------------------------------------------------
tActivityTime["ExchangeCoat"] = {}
tActivityTime["ExchangeCoat"]["BeforeActivity"] = "2019-01-01 00:00 2019-10-28 23:59"
tActivityTime["ExchangeCoat"]["ActiveTime"] = "2019-10-29 00:00 2019-11-16 23:59"
tActivityTime["ExchangeCoat"]["ActiveNpc"] = "2019-10-29 00:00 2019-11-19 23:59"

------------------------------------------------------------------------------------
--Name：            190909[英文征服][活动脚本]10与赠点消耗活动（10.22-11.12）
--Creator:      杨艳
--Created:     2019/09/11
------------------------------------------------------------------------------------
tActivityTime["OctMoMoAct"] = {}
tActivityTime["OctMoMoAct"]["ActivityTime"] = "2020-08-13 00:00 2020-09-09 23:59"
tActivityTime["OctMoMoAct"]["RankActivityTime"] = "2020-08-13 00:00 2020-09-10 23:59"


------------------------------------------------------------------------------------
--Name：            191010[英文征服][活动脚本]服务器问题补偿-礼包放送（10.24）
--Creator:      林嘉鑫
--Created:     2019-10-10
------------------------------------------------------------------------------------
tActivityTime["CompensatePack"] = {}
tActivityTime["CompensatePack"]["ActiveTime"] = "2019-10-24 00:00 2019-10-31 23:59"

------------------------------------------------------------------------------------
--Name:		190422[简体征服][活动脚本]麻将收集活动
--Purpose:	麻将收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
tActivityTime["CollectionMahjongr"] = {}
tActivityTime["CollectionMahjongr"]["BefTime"] = '2019-01-01 00:00 2019-10-23 23:59'
tActivityTime["CollectionMahjongr"]["ActTime"] = '2019-10-24 00:00 2019-11-07 23:59'

------------------------------------------------------------------------------------
--Name:		191011[英文征服][活动脚本]10月新服2（10.24-11.23）
--Creator: 	黄啸
--Created:	2019/10/11
------------------------------------------------------------------------------------
tActivityTime["OctoberNewServer"] = {}
tActivityTime["OctoberNewServer"]["BeforeActivityTime"] = "2019-01-01 00:00 2019-10-23 23:59"
tActivityTime["OctoberNewServer"]["ActivityTime"] = "2019-10-24 00:00 2019-11-23 23:59"
tActivityTime["OctoberNewServer"]["ActiveItemTime"] = "2019-10-24 00:00 2019-11-26 23:59"
tActivityTime["OctoberNewServer"]["HundredActivityTime"] = "2019-10-24 00:00 2019-11-22 23:59"
tActivityTime["OctoberNewServer"]["ThemeActivityTime"] = "2019-10-24 00:00 2019-11-20 23:59"
tActivityTime["OctoberNewServer"]["LongActivityTime"] = "2019-10-24 00:00 2029-11-20 23:59"

------------------------------------------------------------------------------------
--Name：        190926[简体征服][活动脚本]老服自由转服NPC制作
--Creator:      吴燕柚
--Created:      2019/10/16
------------------------------------------------------------------------------------
tActivityTime["FreeTransServer"] = {}
tActivityTime["FreeTransServer"]["ActTime"] = "2019-01-01 00:00 2020-01-01 23:59"
------------------------------------------------------------------------------------
--Name:		190916[英文征服][活动脚本]万圣惊喜特卖会
--Creator: 	郑飞
--Created:	2019/09/16
-----------------------------------------------------------------------------------
tActivityTime["HalloweenSale"] = {}
tActivityTime["HalloweenSale"]["ActivityTime"] = "2019-10-29 00:00 2019-11-05 23:59"
tActivityTime["HalloweenSale"]["ItemAct"] = "2019-10-29 00:00 2019-11-30 23:59"

------------------------------------------------------------------------------------
--Name：       190917[英文征服][活动脚本]金币消耗活动-777机（10.29-11.18）
--Creator:      杨志翔
--Created:     2019-09-17
------------------------------------------------------------------------------------
tActivityTime["ConsumeGold777"]={}
tActivityTime["ConsumeGold777"]["ActivityTime"] = "2020-06-11 00:00 2020-07-08 23:59"

------------------------------------------------------------------------------------
--Name：            191022[英文征服][活动脚本]服务器被攻击补偿方案-礼包制作发奖（10.31）
--Creator:      林嘉鑫
--Created:     2019-10-22
------------------------------------------------------------------------------------
tActivityTime["CompensatoryPack"] = {}
tActivityTime["CompensatoryPack"]["ActivityTime"] = "2019-10-31 00:00 2019-11-07 23:59"

------------------------------------------------------------------------------------
--Name：        190926[简体征服][活动脚本]全球万圣节活动(奖励部分)(10.29-11.12)
--Creator:      耿力兀
--Created:     2019-09-26
------------------------------------------------------------------------------------
tActivityTime["HalloweenReward"] = {}
tActivityTime["HalloweenReward"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"
------------------------------------------------------------------------------------
--Name：	190929[简体征服][活动脚本]全球万圣节活动-鬼怪收集
--Creator:	林旭
--Created:	2019/09/29
------------------------------------------------------------------------------------
tActivityTime["CollectGhost"] = {}
tActivityTime["CollectGhost"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"
tActivityTime["CollectGhost"]["FirstWeek"] = "2019-10-31 00:00 2019-11-06 23:59"
-----------------------------------------------------------------------------------
--190929[简体征服][活动脚本]全球万圣节活动怪物玩法
--SQL BY:洪聪敏
--DATE：2019-09-29
-----------------------------------------------------------------------------------
tActivityTime["SaintResurrection"] = {}
tActivityTime["SaintResurrection"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"

------------------------------------------------------------------------------------
--Name：            190918[简体征服][活动脚本]全球万圣节活动-月光光心慌慌
--Creator:      冯子鑫
--Created:     2019/09/18
------------------------------------------------------------------------------------
tActivityTime["GlobalHalloween"] = {}
tActivityTime["GlobalHalloween"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"

------------------------------------------------------------------------------------
--Name：        190923[简体征服][活动脚本]全球万圣节活动-鬼怪好感度(10.24-11.5)
--Creator:      陈莺
--Created:     2019-09-23
------------------------------------------------------------------------------------
tActivityTime["HalloweenHappiness"] = {}
tActivityTime["HalloweenHappiness"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"

------------------------------------------------------------------------------------
--Name:		190923[简体征服][活动脚本]全球万圣节活动-南瓜大作战(10.24-11.5)
--Creator: 	戴鑫海
--Created:	2019/09/23
------------------------------------------------------------------------------------
tActivityTime["HalloweenPumpkin"] = {}
tActivityTime["HalloweenPumpkin"]["ActivityTime"] = "2019-10-31 00:00 2019-11-14 23:59"
tActivityTime["HalloweenPumpkin"]["MailTime"] = "2019-11-15 00:00 2019-11-15 23:59"
tActivityTime["HalloweenPumpkin"]["ToolActivityTime"] = "2019-10-31 00:00 2020-01-30 23:59"
tActivityTime["HalloweenPumpkin"]["ActTime"] = "2019-11-19 00:00 2019-11-26 23:59"

------------------------------------------------------------------------------------
--Name：            190926[简体征服][活动脚本]全球万圣节活动_Partytime
--Creator:      周洋
--Created:     2019/09/26
------------------------------------------------------------------------------------
tActivityTime["HalloweenPartytime"] = {}
tActivityTime["HalloweenPartytime"]["ActivityTime"] = "2019-10-29 00:00 2019-11-14 23:59"
tActivityTime["HalloweenPartytime"]["MapOpenTime"] = "2019-10-31 00:00 2019-11-14 23:59"
tActivityTime["HalloweenPartytime"]["OpenTime1"] = "04:00 06:00"
tActivityTime["HalloweenPartytime"]["OpenTime2"] = "10:00 12:00"
tActivityTime["HalloweenPartytime"]["OpenTime3"] = "13:00 15:00"
tActivityTime["HalloweenPartytime"]["OpenTime4"] = "18:00 20:00"


------------------------------------------------------------------------------------
--Name：            190926[简体征服][活动脚本]全球万圣节活动-万圣男爵
------------------------------------------------------------------------------------
tActivityTime["HalloweenCarnivalBaron"] = {}
tActivityTime["HalloweenCarnivalBaron"]["ActTime"] = "2019-10-31 00:00 2019-11-14 23:59"
tActivityTime["HalloweenCarnivalBaron"]["LetterTime"] = "2019-10-31 00:00 2019-11-14 23:59"
tActivityTime["HalloweenCarnivalBaron"]["FenWeiTime"] = "2019-10-31 00:00 2019-11-14 23:59"

------------------------------------------------------------------------------------
--Name：        191028[简体征服][活动脚本]万圣节延迟更新奖励
--Creator:      耿力兀
--Created:     2019-10-28
------------------------------------------------------------------------------------
tActivityTime["HalloweenCompensation"] = {}
tActivityTime["HalloweenCompensation"]["ActivityTime"] = "2019-10-31 00:00 2019-11-02 23:59"

------------------------------------------------------------------------------------
--Name：     190930[英文征服][活动脚本]11月首充（11.5-11.30）
--Creator:      冯子鑫
--Created:     2019/09/30
------------------------------------------------------------------------------------
tActivityTime["NovemberRecharge"] = {}
tActivityTime["NovemberRecharge"]["ActivityTime"] = "2019-11-05 00:00 2019-11-30 23:59"
------------------------------------------------------------------------------------
--Name：            191011[英文征服][活动脚本]11月感恩宴会厅(11.5-12.2)
--Creator:      蔡颖静
--Created:     2019/10/11
------------------------------------------------------------------------------------
tActivityTime["ThanksGiving2019Dinner"] = {}
tActivityTime["ThanksGiving2019Dinner"]["ActTime"] = "2019-11-05 00:00 2019-12-02 23:59"

tActivityTime["ThanksGiving2019Dinner"]["DayTime"] = {}
tActivityTime["ThanksGiving2019Dinner"]["DayTime"][1]="04:00 05:59"
tActivityTime["ThanksGiving2019Dinner"]["DayTime"][2]="10:00 11:59"
tActivityTime["ThanksGiving2019Dinner"]["DayTime"][3]="13:00 14:59"
tActivityTime["ThanksGiving2019Dinner"]["DayTime"][4]="18:00 19:59"
------------------------------------------------------------------------------------
--Name:		191016[英文征服][活动脚本]11月科普答题+活跃礼包（11.7-11.30）
--Creator: 	郑飞
--Created:	2019/10/16
------------------------------------------------------------------------------------
tActivityTime["NovPopularScience"] = {}
tActivityTime["NovPopularScience"]["ActivityTime"] = "2019-11-07 00:00 2019-11-30 23:59"
------------------------------------------------------------------------------------
--Name：            191011[英文征服][活动脚本]11月感恩宴会厅(11.5-12.2)
--Creator:      蔡颖静
--Created:     2019/10/11
------------------------------------------------------------------------------------
tActivityTime["ThanksGiving2019MapGuess"] = {}
tActivityTime["ThanksGiving2019MapGuess"]["NogiftTime"]="2019-11-05 00:00 2019-11-10 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["ActTime"]="2019-11-05 00:00 2019-11-14 23:59"

tActivityTime["ThanksGiving2019MapGuess"]["DayTime"] = {}
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][5]="2019-11-05 00:00 2019-11-05 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][6]="2019-11-06 00:00 2019-11-06 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][7]="2019-11-07 00:00 2019-11-07 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][8]="2019-11-08 00:00 2019-11-08 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][9]="2019-11-09 00:00 2019-11-09 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][10]="2019-11-10 00:00 2019-11-10 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][11]="2019-11-11 00:00 2019-11-11 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][12]="2019-11-12 00:00 2019-11-12 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][13]="2019-11-13 00:00 2019-11-13 23:59"
tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][14]="2019-11-14 00:00 2019-11-14 23:59"
------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]巅峰竞速争霸赛(9.17-9.30)
--Creator:		翁清海
--Created:		2019/09/01
------------------------------------------------------------------------------------
tActivityTime["SingleBattleChallenge"] = {}
tActivityTime["SingleBattleChallenge"]["ActivityTime"] = "2019-11-05 00:00 2019-11-18 23:59"
tActivityTime["SingleBattleChallenge"]["RankAwardTime"] = "2019-11-19 00:00 2019-11-19 23:59"


------------------------------------------------------------------------------------
--Name：        191022[英文征服][活动脚本]11月新服1金币天石大爆服（11.7-12.7）
--Creator:      耿力兀
--Created:     2019-10-20
------------------------------------------------------------------------------------
tActivityTime["NovServer"] = {}
tActivityTime["NovServer"]["ActivityTime"] = "2019-11-07 00:00 2019-12-07 23:59"

------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
tActivityTime["NewPetsCultivate"] = {}
tActivityTime["NewPetsCultivate"]["ActivityTime"] = "2019-11-12 00:00 2019-12-02 23:59"
tActivityTime["NewPetsCultivate"]["ActivityShopTime"] = "2019-11-12 00:00 2019-12-03 23:59"

------------------------------------------------------------------------------------
--Name：       191105[简体征服][活动脚本]BP二期活动-商店
--Creator:     陈莺
--Created:     2019-10-28
------------------------------------------------------------------------------------
tActivityTime["BattlePass"] = {}
tActivityTime["BattlePass"]["ActivityTime"] = "2019-11-12 00:00 2019-11-25 23:59"


------------------------------------------------------------------------------------
--Name:		191103[简体征服][任务脚本]全球万圣节调查问卷
--Creator: 	兰瑞妹
--Created:	2019/11/03
------------------------------------------------------------------------------------
tActivityTime["HalloweenQuestionnaire"] = {}
tActivityTime["HalloweenQuestionnaire"]["ActivityTime"] = "2020-05-19 00:00 2020-05-26 23:59"

------------------------------------------------------------------------------------
--Name：            180410[简体征服][活动脚本]周年庆促销活动-赠点奖池抽奖
--Creator:      兰瑞妹
--Created:     2019/10/12
------------------------------------------------------------------------------------
tActivityTime["AnniversaryPromotionLuckDraw"] = {}
tActivityTime["AnniversaryPromotionLuckDraw"]["BeforeTime"] = "2018-04-12 00:00 2019-11-18 23:59"
tActivityTime["AnniversaryPromotionLuckDraw"]["AtivityTime"] = "2019-11-19 00:00 2019-12-09 23:59"

------------------------------------------------------------------------------------
--Name：            191101[简体征服][活动脚本]全球感恩节活动预热
--Creator:      郑飞
--Created:     2019-11-01
------------------------------------------------------------------------------------
tActivityTime["ThanksPreheat"] = {}
tActivityTime["ThanksPreheat"]["ActivityTime"] = "2019-11-21 00:00 2019-11-28 23:59"

------------------------------------------------------------------------------------
--Name：        191014[英文征服][活动脚本]累计消费有礼活动（11.21-12.11）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
tActivityTime["CumulativeConsumptionReward"] = {}
tActivityTime["CumulativeConsumptionReward"]["ActivityTime"] = "2019-11-21 00:00 2019-12-11 23:59"
tActivityTime["CumulativeConsumptionReward"]["MailTime"] = "2019-12-12 00:00 2019-12-12 23:59"
tActivityTime["CumulativeConsumptionReward"]["DeleteTime"] = "2019-11-21 00:00 2019-12-15 23:59"

------------------------------------------------------------------------------------
--Name:			191031[英文征服][活动脚本]PK赛奖励翻倍（11.19-12.2）
--Creator: 		兰瑞妹
--Created:		2019/11/01
------------------------------------------------------------------------------------
tActivityTime["AllPkRewardDouble"] = {}
tActivityTime["AllPkRewardDouble"]["ActivityTime"] = "2019-11-19 00:00 2019-12-02 23:59"
------------------------------------------------------------------------------------
--Name：         191118[简体征服][活动脚本]全球万圣节气氛布置下架&线下部分奖励发放
--Creator:      耿力兀
--Created:     2019-11-18
------------------------------------------------------------------------------------
tActivityTime["HalloweenAction"] = {}
tActivityTime["HalloweenAction"]["ActivityTime"] = "2019-11-21 00:00 2019-11-25 23:59"
------------------------------------------------------------------------------------
--Name：            191105[英文征服][活动脚本]11月火鸡盛宴(11.26-12.2)
--Creator:      周洋
--Created:     2019/09/26
------------------------------------------------------------------------------------
tActivityTime["TurkeyFeast"] = {}
tActivityTime["TurkeyFeast"]["ActivityTime"] = "2019-11-26 00:00 2019-12-02 23:59"
tActivityTime["TurkeyFeast"]["EffectiveTime"] = "2019-11-26 00:00 2019-12-05 23:59"

------------------------------------------------------------------------------------
--Name：        191028[简体征服][活动脚本]全球感恩节活动-宴会舞蹈(11.26-12.11)
--Creator:      陈莺
--Created:     2019-10-28
------------------------------------------------------------------------------------
tActivityTime["BanquetBance"] = {}
tActivityTime["BanquetBance"]["Bef_Time"] = "2019-10-01 00:00 2019-11-25 23:59"
tActivityTime["BanquetBance"]["ActivityTime"] = "2019-11-26 00:00 2019-12-11 23:59"
tActivityTime["BanquetBance"]["NpcActivityTime"] = "2019-11-26 00:00 2019-12-18 23:59"
tActivityTime["BanquetBance"]["AfTime"] = "2019-11-27 00:00 2019-12-19 23:59"

tActivityTime["BanquetBance"][1] = "00:00 00:01"
------------------------------------------------------------------------------------
--Name：            191026[简体征服][活动脚本]全球感恩节活动-跨服祈福
--Creator:      郑洵
--Created:     2019/10/26
------------------------------------------------------------------------------------
tActivityTime["ThanksgivingPray"] = {}
tActivityTime["ThanksgivingPray"]["ActTime"] = "2019-11-26 00:00 2019-12-11 23:59"
tActivityTime["ThanksgivingPray"]["NpcTime"] = "2019-11-26 00:00 2019-12-11 23:59"

-----------------------------------------------------------------------------------------------------
--Name:		191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
--Purpose:		感恩节---活动三小鸡快跑部分
--Creator: 	洪聪敏
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------
tActivityTime["ThanksChickenTantivy"] = {}
tActivityTime["ThanksChickenTantivy"]["ActTime"] = "2019-11-26 00:00 2019-12-11 23:59"
tActivityTime["ThanksChickenTantivy"]["RankAwardTime"] = "2019-12-12 00:00 2019-12-12 23:59"
tActivityTime["ThanksChickenTantivy"]["ActTime1"]  = "2019-11-26 00:00 2019-12-12 23:59"
tActivityTime["ThanksChickenTantivy"]["DayTime"]  = "08:00 23:59"

------------------------------------------------------------------------------------
--Name：            191028[英文征服][活动脚本]11月征服大富翁(11.15-11.30)
--Creator:      蔡颖静
--Created:     2019/10/28
------------------------------------------------------------------------------------
tActivityTime["ThanksGiving2019Monopoly"]={}
tActivityTime["ThanksGiving2019Monopoly"]["ActTime"] = "2019-11-26 00:00 2019-12-10 23:59"

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]年终盛典-集字嘉年华(12.5-12.24)
--Creator:		翁清海
--Created:		2019/11/12
------------------------------------------------------------------------------------
tActivityTime["CharacterCarnival"] = {}
tActivityTime["CharacterCarnival"]["ActivityTime"] = "2019-12-05 00:00 2019-12-24 23:59"

------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月MMO金币消耗活动（12.5-1.1）
--Creator:      兰瑞妹
--Created:     2019-11-07
------------------------------------------------------------------------------------
tActivityTime["MMOGoldConsumption"] = {}
tActivityTime["MMOGoldConsumption"]["ActivityTime"] = "2019-12-05 00:00 2020-01-01 23:59"
-----------------------------------------------------------------------------------------------------
--Name:		190809[简体征服][活动脚本]家族争霸赛
--Purpose:		家族争霸赛
--Creator: 	洪聪敏
--Created:		2019/08/09
------------------------------------------------------------------------------------------------------
tActivityTime["Familychampions"] = {}
tActivityTime["Familychampions"]["ActivityTime"] = "2019-12-05 00:00 2020-01-10 23:59"
tActivityTime["Familychampions"]["SingleTime"] = "22:45 23:00"
tActivityTime["Familychampions"]["CrossTime"] = "23:05 23:20"
------------------------------------------美服
--本服比赛时间
tActivityTime["Familychampions"]["championTime"] = {}
tActivityTime["Familychampions"]["championTime"][1]="2019-12-05 22:40 2019-12-05 22:44"
tActivityTime["Familychampions"]["championTime"][2]="2019-12-12 22:40 2019-12-12 22:44"
tActivityTime["Familychampions"]["championTime"][3]="2019-12-19 22:40 2019-12-19 22:44"
tActivityTime["Familychampions"]["championTime"][4]="2019-12-26 22:40 2019-12-26 22:44"
tActivityTime["Familychampions"]["championTime"][5]="2020-01-02 22:40 2020-01-02 22:44"
--跨服比赛时间
tActivityTime["Familychampions"]["CrosschampionTime"] = {}
tActivityTime["Familychampions"]["CrosschampionTime"][1]="2019-12-05 23:00 2019-12-05 23:04"
tActivityTime["Familychampions"]["CrosschampionTime"][2]="2019-12-12 23:00 2019-12-12 23:04"
tActivityTime["Familychampions"]["CrosschampionTime"][3]="2019-12-19 23:00 2019-12-19 23:04"
tActivityTime["Familychampions"]["CrosschampionTime"][4]="2019-12-26 23:00 2019-12-26 23:04"
tActivityTime["Familychampions"]["CrosschampionTime"][5]="2020-01-02 23:00 2020-01-02 23:04"
--本服领奖时间
tActivityTime["Familychampions"]["ClearingTime"] = {}
tActivityTime["Familychampions"]["ClearingTime"][1]="2019-12-05 22:59 2019-12-05 23:01"
tActivityTime["Familychampions"]["ClearingTime"][2]="2019-12-12 22:59 2019-12-12 23:01"
tActivityTime["Familychampions"]["ClearingTime"][3]="2019-12-19 22:59 2019-12-19 23:01"
tActivityTime["Familychampions"]["ClearingTime"][4]="2019-12-26 22:59 2019-12-26 23:01"
tActivityTime["Familychampions"]["ClearingTime"][5]="2020-01-02 22:59 2020-01-02 23:01"
--跨服领奖时间
tActivityTime["Familychampions"]["CrossClearingTime"] = {}
tActivityTime["Familychampions"]["CrossClearingTime"][1]="2019-12-05 23:20 2019-12-05 23:30"
tActivityTime["Familychampions"]["CrossClearingTime"][2]="2019-12-12 23:20 2019-12-12 23:30"
tActivityTime["Familychampions"]["CrossClearingTime"][3]="2019-12-19 23:20 2019-12-19 23:30"
tActivityTime["Familychampions"]["CrossClearingTime"][4]="2019-12-26 23:20 2019-12-26 23:30"
tActivityTime["Familychampions"]["CrossClearingTime"][5]="2020-01-02 23:20 2020-01-02 23:30"

------------------------------------------欧服
--本服比赛时间
tActivityTime["Familychampions"]["EuropeanchampionTime"] = {}
tActivityTime["Familychampions"]["EuropeanchampionTime"][1]="2019-12-06 06:40 2019-12-06 06:44"
tActivityTime["Familychampions"]["EuropeanchampionTime"][2]="2019-12-13 06:40 2019-12-13 06:44"
tActivityTime["Familychampions"]["EuropeanchampionTime"][3]="2019-12-20 06:40 2019-12-20 06:44"
tActivityTime["Familychampions"]["EuropeanchampionTime"][4]="2019-12-27 06:40 2019-12-27 06:44"
tActivityTime["Familychampions"]["EuropeanchampionTime"][5]="2020-01-03 06:40 2020-01-03 06:44"

--跨服比赛时间
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"] = {}
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"][1]="2019-12-06 07:00 2019-12-06 07:04"
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"][2]="2019-12-13 07:00 2019-12-13 07:04"
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"][3]="2019-12-20 07:00 2019-12-20 07:04"
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"][4]="2019-12-27 07:00 2019-12-27 07:04"
tActivityTime["Familychampions"]["EuropeanCrosschampionTime"][5]="2020-01-03 07:00 2020-01-03 07:04"

--本服领奖时间
tActivityTime["Familychampions"]["EuropeanClearingTime"] = {}
tActivityTime["Familychampions"]["EuropeanClearingTime"][1]="2019-12-06 06:59 2019-12-06 07:01"
tActivityTime["Familychampions"]["EuropeanClearingTime"][2]="2019-12-13 06:59 2019-12-13 07:01"
tActivityTime["Familychampions"]["EuropeanClearingTime"][3]="2019-12-20 06:59 2019-12-20 07:01"
tActivityTime["Familychampions"]["EuropeanClearingTime"][4]="2019-12-27 06:59 2019-12-27 07:01"
tActivityTime["Familychampions"]["EuropeanClearingTime"][5]="2020-01-03 06:59 2020-01-03 07:01"

--跨服领奖时间
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"] = {}
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"][1]="2019-12-06 07:20 2019-12-06 20:30"
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"][2]="2019-12-13 07:20 2019-12-13 20:30"
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"][3]="2019-12-20 07:20 2019-12-20 20:30"
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"][4]="2019-12-27 07:20 2019-12-27 20:30"
tActivityTime["Familychampions"]["EuropeanCrossClearingTime"][5]="2020-01-03 07:20 2020-01-03 20:30"
------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月年终盛典-回顾以往，展望2020年新年（12.10-12.23）
--Creator:      杨志翔
--Created:     2019-11-07
------------------------------------------------------------------------------------
tActivityTime["Lookingforward2020NewYear"] = {}
tActivityTime["Lookingforward2020NewYear"]["ActivityTime"] = "2019-12-10 00:00 2019-12-23 23:59"
------------------------------------------------------------------------------------
--Name:		191118[英文征服][活动脚本]12月德州消费活动（12.12-1.8）
--Creator: 	杨艳
--Created:	2019/11/18
------------------------------------------------------------------------------------
tActivityTime["DecTexasCost"] = {}
tActivityTime["DecTexasCost"]["ActTime"] = "2019-12-12 00:00 2020-01-08 23:59"



------------------------------------------------------------------------------------
--Name:		191118[英文征服][活动脚本]12月德州消费活动（12.12-1.8）
--Creator: 	王贤
--Created:	2019/11/18
------------------------------------------------------------------------------------
tActivityTime["LightingEternity"] = {}
tActivityTime["LightingEternity"]["ActTime"] = "2019-12-10 00:00 2019-12-30 23:59"


------------------------------------------------------------------------------------
--Name：        191111[英文征服][活动脚本]12月线下充值返利（12.17-1.2）
--Creator:      郑洵
--Created:     2019-11-11
------------------------------------------------------------------------------------
tActivityTime["DecemberRecharge2019"] = {}
tActivityTime["DecemberRecharge2019"]["ActivityTime"] = "2019-12-17 00:00 2020-01-02 23:59"
------------------------------------------------------------------------------------
--Name：        191112[英文征服][活动脚本]新的TTT活动-团队TTT（12.17-1.06）
--Creator:      茅志伟
--Created:      2019/11/12
------------------------------------------------------------------------------------
tActivityTime["NewTeamPet"] = {}
tActivityTime["NewTeamPet"]["ActivityTime"] = "2019-12-17 00:00 2020-01-06 23:59"
tActivityTime["NewTeamPet"]["ActivityShopTime"] = "2019-12-17 00:00 2020-01-07 23:59"
------------------------------------------------------------------------------------
--Name：            191113[英文征服][活动脚本]12月新服专属金币促销（12.17-长期）
--Creator:      冯子鑫
--Created:     2019/11/13
------------------------------------------------------------------------------------
tActivityTime["GoldSalesPromotion"] = {}
tActivityTime["GoldSalesPromotion"]["ActivityTime"] = "2019-12-17 00:00 2030-12-17 23:59"--长期活动

------------------------------------------------------------------------------------
--Name：            191126[英文征服][活动脚本]12月转服功能季度卡（12.19-12.31）
--Creator:      江宇君
--Created:     2019-11-26
------------------------------------------------------------------------------------
tActivityTime["TransferServerToken"] = {}
tActivityTime["TransferServerToken"]["ActivityTime"] = "2020-03-19 00:00 2020-03-31 23:59"

tActivityTime["TransferServerToken"]["UseItemTime"] = {}
tActivityTime["TransferServerToken"]["UseItemTime"][3314622] = "2019-12-19 00:00 2019-12-31 23:59"
-- 2020.2.20 新增复用
tActivityTime["TransferServerToken"]["UseItemTime"][3315520] = "2020-03-19 00:00 2020-07-30 23:59"


------------------------------------------------------------------------------------
--Name：            191129[简体征服][活动脚本]全球圣诞活动预热
--Creator:      冯子鑫
--Created:     2019-11-29
------------------------------------------------------------------------------------
tActivityTime["ChristmasPreheat"] = {}
tActivityTime["ChristmasPreheat"]["ActivityTime"] = "2019-12-19 00:00 2019-12-24 23:59" 
tActivityTime["ChristmasPreheat"]["AtmosphereActivityTime"] = "2019-12-19 00:00 2020-01-09 23:59" 

------------------------------------------------------------------------------------
--Name：            191112[简体征服][活动脚本]全球圣诞元旦活动-放烟花（12.24-1.8）
--Creator:      兰瑞妹
--Created:     2019-11-12
------------------------------------------------------------------------------------
tActivityTime["GlobalChristmas"] = {}
tActivityTime["GlobalChristmas"]["ActivityTime"] = "2019-12-24 00:00 2020-01-08 23:59"
tActivityTime["GlobalChristmas"]["RankTime"] = "2020-01-08 00:00 2020-01-08 23:59"
tActivityTime["GlobalChristmas"]["PlaySnowBallTime"] = "2019-12-24 00:00 2020-01-07 23:59"

------------------------------------------------------------------------------------
--Name:			191122[简体征服][活动脚本]全球圣诞元旦活动--引导NPC制作
--Creator:		郑飞
--Created:		2019/11/22
------------------------------------------------------------------------------------
tActivityTime["GuidePlayers"] = {}
tActivityTime["GuidePlayers"]["ActivityTime"] = "2019-12-24 17:00 2020-01-08 23:59"
tActivityTime["GuidePlayers"]["GodTime"] = "2019-12-24 00:00 2020-01-09 23:59"
----------------------------------------------------------------------------
--Name:		[征服][活动脚本]双旦活动之收集礼物.lua
--Purpose:	双旦活动之收集礼物
--Creator: 	洪聪敏
--Created:	2019/11/24
----------------------------------------------------------------------------
tActivityTime["DoubleEggCollectGif"] = {}
tActivityTime["DoubleEggCollectGif"]["ActivityTime"] = "2019-12-24 00:00 2020-02-27 23:59"
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]团购灵珠赢好礼(12.24-1.13)
--Creator:		翁清海
--Created:		2019/11/14
------------------------------------------------------------------------------------
tActivityTime["AnimaGroupPurchase"] = {}
tActivityTime["AnimaGroupPurchase"]["ActivityTime"] = "2019-12-24 00:00 2020-01-13 23:59"
tActivityTime["AnimaGroupPurchase"]["ReturnTime"] = "2020-01-14 00:00 2020-01-14 23:59"
------------------------------------------------------------------------------------
--Name：            191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
--Creator:      冯子鑫
--Created:     2019/12/02
------------------------------------------------------------------------------------
tActivityTime["SpringActiveWelfare"]={}
tActivityTime["SpringActiveWelfare"]["ActivityTime"] = "2020-01-02 00:00 2020-01-31 23:59"

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]充值玩家配置挂机刷掉灵珠（12.31-1.31）
--Creator:		江宇君
--Created:		2019/12/27
------------------------------------------------------------------------------------
tActivityTime["MonsterWelfare"] = {}
tActivityTime["MonsterWelfare"]["ActivityTime"] = "2020-02-01 00:00 2020-02-29 23:59"


------------------------------------------------------------------------------------
--Name:		191107[简体征服][活动脚本]新深海活动（12.10-12.23）
--Creator: 	兰瑞妹
--Created:	2019/11/07
------------------------------------------------------------------------------------
-- 191211[英文征服][活动脚本]1月深海寻宝活动优化版（1.07-1.20）
tActivityTime["NewDeepSea"] = {}
tActivityTime["NewDeepSea"]["ActivityTime"] = "2020-01-07 00:00 2020-01-20 23:59"
tActivityTime["NewDeepSea"]["LimitExchange"] = "00:00 23:50"
tActivityTime["NewDeepSea"]["ItemExchange"] = "10:00 22:00"


------------------------------------------------------------------------------------
--Name：      191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
--Creator:      郑洵
--Created:     2019/12/11
------------------------------------------------------------------------------------
tActivityTime["RecallOfOldPlayers"] = {}
tActivityTime["RecallOfOldPlayers"]["ActivityTime"] = "2020-01-07 00:00 2020-01-31 23:59"
tActivityTime["RecallOfOldPlayers"]["ItemUseTime"] = "2020-01-07 00:00 2020-01-31 23:59"

------------------------------------------------------------------------------------
--Name：            191217[简体征服][活动脚本]2020年全球中国年活动预热
--Creator:      王贤
--Created:     2019-12-17
------------------------------------------------------------------------------------
tActivityTime["pringFestival2020Preheat"] = {}
tActivityTime["pringFestival2020Preheat"]["RewardTime"] = "2020-01-14 00:00 2020-01-16 23:59"
tActivityTime["pringFestival2020Preheat"]["UseTime"] = "2020-01-20 08:00 2020-02-07 23:59"

------------------------------------------------------------------------------------
--Name：            200113[简体征服][活动脚本]电商背包信（1.14-1.20）
--Creator:      黄啸
--Created:     2020-01-13
------------------------------------------------------------------------------------
tActivityTime["PUBGbusiniess"] = {}
tActivityTime["PUBGbusiniess"]["ActivityTime"] = "2020-01-14 00:00 2020-01-23 23:59"


------------------------------------------------------------------------------------
--Name：        191213[英文征服][活动脚本]博弈玩法集合（1.16-2.5）
--Creator:      耿力兀
--Created:     2019-12-13
------------------------------------------------------------------------------------
tActivityTime["GameCollection"] = {}
tActivityTime["GameCollection"]["ActivityTime"] = "2020-05-07 00:00 2020-05-27 23:59"


------------------------------------------------------------------------------------
--Name：            200106[英文征服][任务脚本]海外圣诞元旦活动问题处理(1.9)
--Creator:      郑飞
--Created:     2020-01-06
------------------------------------------------------------------------------------
tActivityTime["ChristmasStocking"] = {}
tActivityTime["ChristmasStocking"]["ActivityTime"] = "2019-12-24 00:00 2020-01-23 23:59"


------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]2020全球中国年(1.17-2.2)
--Creator:		翁清海
--Created:		2019/12/18
------------------------------------------------------------------------------------
tActivityTime["SpringFestival2020Nian"] = {}
tActivityTime["SpringFestival2020Nian"]["ActivityTime"] = "2020-01-20 00:00 2020-02-06 23:59"
tActivityTime["SpringFestival2020Nian"]["StoveTime"] = "2020-01-22 00:00 2020-02-06 23:59"
tActivityTime["SpringFestival2020Nian"]["RankTime"] = "2020-02-07 00:00 2020-02-07 23:59"

------------------------------------------------------------------------------------
--Name：            191216[简体征服][活动脚本]春节活动制作主线2020
--Creator:      黄啸
--Created:     2019/12/16
------------------------------------------------------------------------------------
tActivityTime["SpringFestivalMainLine2020"] = {}
tActivityTime["SpringFestivalMainLine2020"]["BeforeActivityTime"] = "2019-12-19 00:00 2020-01-19 23:59" 
tActivityTime["SpringFestivalMainLine2020"]["ActivityTime"] = "2020-01-20 00:00 2020-02-06 23:59"

------------------------------------------------------------------------------------
--Name：            191216[简体征服][活动脚本]2020全球中国年活动
--Creator:      王贤
--Created:     2019-12-16
------------------------------------------------------------------------------------
tActivityTime["Spring2020Other"] = {}
tActivityTime["Spring2020Other"]["ActivityTime"] = "2020-01-20 00:00 2020-02-06 23:59"
tActivityTime["Spring2020Other"]["EnterCross"] = "2020-01-20 00:00 2020-02-06 23:59"
tActivityTime["Spring2020Other"]["PackageTime"] = {}
tActivityTime["Spring2020Other"]["PackageTime"][1] = "2020-01-20 00:00 2020-01-27 23:59"
tActivityTime["Spring2020Other"]["PackageTime"][2] = "2020-01-28 00:00 2020-02-05 23:59"
tActivityTime["Spring2020Other"]["PackageTime"][3] = "2020-02-06 00:00 2020-02-12 23:59"
-----------------------------------------------------------------------------------
--Name：           191105[简体征服][活动脚本]小极品回收玩法-1、小极品回收分解
--Creator:      杨艳
--Created:     2019/11/11
------------------------------------------------------------------------------------
tActivityTime["GiddyRrecycle"] = {}
tActivityTime["GiddyRrecycle"]["ActivityTime"] = "2020-01-21 00:00 2020-02-21 23:59"
------------------------------------------------------------------------------------
--Name：            191126[英文征服][活动脚本]限时周卡基金消费返利（1.21-2.5）
--Creator:      方政
--Created:     2019/11/26
------------------------------------------------------------------------------------
tActivityTime["WeeklyFundConsumptionRebate"] = {}
tActivityTime["WeeklyFundConsumptionRebate"]["ActivityTime"] = "2020-01-21 00:00 2020-02-5 23:59"
tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"] = "2020-01-21 00:00 2020-01-28 23:59"
tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"] = "2020-01-29 00:00 2020-02-05 23:59"
------------------------------------------------------------------------------------
--Name：		200217[英文征服][任务脚本]宣传背包信制作
--Purpose:		宣传背包信制作
--Creator:		洪聪敏
--Created:		2020-02-17
------------------------------------------------------------------------------------
tActivityTime["ServerConnection"] = {}
tActivityTime["ServerConnection"]["ActivityTime"] = "2020-02-24 00:00 2020-03-02 23:59"
------------------------------------------------------------------------------------
--Name：            200102[英文征服][活动脚本]2月针对大R的博弈类活动（2.25-3.10）
--Creator:      杨志翔
--Created:     2020-01-02
------------------------------------------------------------------------------------
tActivityTime["DragonSoulRouletteGame"] = {}
tActivityTime["DragonSoulRouletteGame"]["ActivityTime"] = "2020-02-25 00:00 2020-03-10 23:59"


------------------------------------------------------------------------------------
--Name：            200109[简体征服][活动脚本]全球情人节活动预热
--Creator:      郑飞
--Created:     2020-01-09
------------------------------------------------------------------------------------
tActivityTime["ValentinePreheat"] = {}
tActivityTime["ValentinePreheat"]["ActivityTime"] = "2020-02-25 00:00 2020-03-02 23:59"
tActivityTime["ValentinePreheat"]["NpcTime"] = "2020-02-25 00:00 2020-03-16 23:59"
tActivityTime["ValentinePreheat"]["RewardTime"] = "2020-03-03 00:00 2020-03-16 23:59"
tActivityTime["ValentinePreheat"]["Open"] = "2020-03-04 00:00 2020-03-04 23:59"

------------------------------------------------------------------------------------
--Name：            200218[英文征服][活动脚本]线下充值返利(3.05-3.16)
--Creator:      戴鑫海
--Created:     2020-02-18
------------------------------------------------------------------------------------
tActivityTime["LuckyScratcht"] = {}
tActivityTime["LuckyScratcht"]["ActivityTime"] = "2020-03-05 00:00 2020-03-16 23:59"

------------------------------------------------------------------------------------
--Name：	191231[简体征服][活动脚本]全球情人节活动-部分玩法
--Creator:	林旭
--Created:	2019-12-31
------------------------------------------------------------------------------------
tActivityTime["ValDayFW"] = {}
tActivityTime["ValDayFW"]["FirstDay"] = "2020-03-03 00:00 2020-03-03 23:59"
tActivityTime["ValDayFW"]["1Week1Stage"] = "2020-03-03 00:00 2020-03-05 23:59"
tActivityTime["ValDayFW"]["1Week2Stage"] = "2020-03-06 00:00 2020-03-08 23:59"
tActivityTime["ValDayFW"]["1Week3Stage"] = "2020-03-09 00:00 2020-03-09 23:59"
tActivityTime["ValDayFW"]["1Week"] = "2020-03-03 00:00 2020-03-09 23:59"
tActivityTime["ValDayFW"]["2Week"] = "2020-03-10 00:00 2020-04-01 23:59"
tActivityTime["ValDayFW"]["ActivityTime"] = "2020-03-03 00:00 2020-04-01 23:59"
------------------------------------------------------------------------------------
--Name：          191230[简体征服][活动脚本]全球情人节活动
--Creator:      杨艳
--Created:     2020/01/06
--------------------------------------------------------------------------------------
tActivityTime["ValentinePart2"] = {}
tActivityTime["ValentinePart2"]["MoveNpcTime"] = "2020-03-26 00:00 2020-04-01 23:59"
tActivityTime["ValentinePart2"]["ActTime"] = "2020-03-26 00:00 2020-04-01 23:59"
tActivityTime["ValentinePart2"]["RankTime"] = "2020-03-17 00:00 2020-03-17 23:59"
tActivityTime["ValentinePart2"]["RankNpcTime"] = "2020-03-26 00:00 2020-04-01 23:59"

tActivityTime["ValentinePart2"]["Week"] = {}
tActivityTime["ValentinePart2"]["Week"][1] = "2020-03-26 00:00 2020-03-26 23:59"
tActivityTime["ValentinePart2"]["Week"][2] = "2020-03-27 00:00 2020-03-27 23:59"
tActivityTime["ValentinePart2"]["Week"][3] = "2020-03-28 00:00 2020-03-28 23:59"
tActivityTime["ValentinePart2"]["Week"][4] = "2020-03-29 00:00 2020-03-29 23:59"
tActivityTime["ValentinePart2"]["Week"][5] = "2020-03-30 00:00 2020-03-30 23:59"
tActivityTime["ValentinePart2"]["Week"][6] = "2020-03-31 00:00 2020-03-31 23:59"
tActivityTime["ValentinePart2"]["Week"][7] = "2020-04-01 00:00 2020-04-01 23:59"
------------------------------------------------------------------------------------
--Name:		200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
--Purpose:	跨服互动活动
--Creator: 	傅伟龙
--Created:	2020/01/03
------------------------------------------------------------------------------------
tActivityTime["ValentineDayAct_2019"] = {}
tActivityTime["ValentineDayAct_2019"]["BefTime"] = "2020-01-01 00:00 2020-03-25 23:59"
tActivityTime["ValentineDayAct_2019"]["ActTime"] = "2020-03-26 00:00 2020-04-01 23:59"
tActivityTime["ValentineDayAct_2019"]["ItemActTime"] = "2020-03-26 00:00 2020-04-03 23:59"
tActivityTime["ValentineDayAct_2019"]["NpcActTime"] = "2020-04-02 00:00 2020-04-03 23:59"

------------------------------------------------------------------------------------
--Name:			191216[简体征服][活动脚本]职业觉醒预热活动
--Creator: 		茅志伟
--Created:		2019/12/16
------------------------------------------------------------------------------------
tActivityTime["AwakenPreheat"] = {}
tActivityTime["AwakenPreheat"]["ActivityTime1"] = "2020-03-17 00:00 2020-03-30 23:59"
tActivityTime["AwakenPreheat"]["ActivityTime2"] = "2020-04-04 00:00 2020-04-10 23:59"
tActivityTime["AwakenPreheat"]["ActivityTime2new"] = "2020-04-04 00:00 2020-04-13 23:59"
tActivityTime["AwakenPreheat"]["ActivityTime3"] = "2020-04-14 00:00 2020-04-20 23:59"
tActivityTime["AwakenPreheat"]["ActivityTimeAll"] = "2020-03-17 00:00 2020-04-20 23:59"
tActivityTime["AwakenPreheat"]["MailTime"] = "2020-03-31 00:00 2020-03-31 23:59"

------------------------------------------------------------------------------------
--Name：      200225[英文征服][活动脚本]3月德州锦标赛（3.12-4.12）
--Creator:      王贤
--Created:     2020/02/25
------------------------------------------------------------------------------------
tActivityTime["TexasChampionship_"] = {}
tActivityTime["TexasChampionship_"]["ActivityTime"] = "2020-03-12 00:00 2020-04-12 23:59"


------------------------------------------------------------------------------------
--Name:     200224[英文征服][活动脚本]3月金币博弈新服活动（3.12-4.12）
--Creator:  郑飞
--Created:  2020-02-24
------------------------------------------------------------------------------------
tActivityTime["CoinGame"] = {}
tActivityTime["CoinGame"]["ActivityTime"] = "2020-03-12 00:00 2020-04-22 23:59"

------------------------------------------------------------------------------------
--Name：            200219[英文征服][活动脚本]3月金币博弈新服（3.12-4.12）金币促销
--Creator:      冯子鑫
--Created:     2020/2/24
------------------------------------------------------------------------------------
tActivityTime["GoldSalesGame"] = {}
tActivityTime["GoldSalesGame"]["ActivityTime"] = "2020-03-12 00:00 2020-04-22 23:59"

------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月金币博弈新服（3.12-4.12）
--Creator:      耿力兀
--Created:     2020-02-25
------------------------------------------------------------------------------------
tActivityTime["GoldServer"] = {}
tActivityTime["GoldServer"]["ActivityTime"] = "2020-03-12 00:00 2020-04-22 23:59"
------------------------------------------------------------------------------------
--Name：        200217[英文征服][活动脚本]3月职业成长之路（3.19-4.10）
--Creator:      茅志伟
--Created:      DATE：2020-02-17
------------------------------------------------------------------------------------
tActivityTime["GrowthInMarch"] = {}
tActivityTime["GrowthInMarch"]["ActivityTime"] = "2020-03-19 00:00 2020-04-10 23:59"
tActivityTime["GrowthInMarch"]["RankMailTime"] = "2020-03-20 00:00 2020-04-11 23:59"
tActivityTime["GrowthInMarch"]["RankActTime"] = "2020-03-19 00:00 2020-04-11 23:59"
tActivityTime["GrowthInMarch"]["RankTime"] = "00:00 00:06"
------------------------------------------------------------------------------------
--Name：            200318[英文征服][活动脚本]地推新手礼包宣传NPC制作
--Creator:      洪聪敏
--Created:     2020-03-18
------------------------------------------------------------------------------------
tActivityTime["NewcomersCarnivalEnvoy"] = {}
tActivityTime["NewcomersCarnivalEnvoy"]["ActivityTime"] = "2020-03-19 00:00 2020-05-20 23:59"
------------------------------------------------------------------------------------
-- Name:		200323[英文征服][活动脚本]请安排在双龙城新增一个NPC（3.26）
-- Purpose:		
-- Creator:		杨艳
-- Created:		2020/03/23
----------------------------------------------------------------------------------
tActivityTime["CoDoctor"] = {}
tActivityTime["CoDoctor"]["ActivityTime"] = "2020-03-26 00:00 2020-04-13 23:59"



------------------------------------------------------------------------------------
--Name：            200206[简体征服][更新包]6605更新包
--Creator:      王贤
--Created:     2020-02-06
------------------------------------------------------------------------------------
tActivityTime["AtivityForPray"] = {}
tActivityTime["AtivityForPray"]["ActivityTime"] = "2020-02-10 00:00 2020-02-16 23:59"

tActivityTime["AtivityForPray"]["ActivityTime2"] = "2020-03-26 00:00 2020-04-01 23:59"

------------------------------------------------------------------------------------
--Name:		200305[简体征服][活动脚本]全球愚人节活动整合(3.31-4.13)
--Creator: 	兰瑞妹
--Created:	2020-03-05
------------------------------------------------------------------------------------
tActivityTime["AprilFoolsDay"] = {}
tActivityTime["AprilFoolsDay"]["ActivityTime"] = "2020-03-31 00:00 2020-04-13 23:59"
tActivityTime["AprilFoolsDay"]["EnterActivityTime"] = "2020-03-31 17:00 2020-04-13 23:59"
-- 主npc时间延长--jyj
tActivityTime["AprilFoolsDay"]["NpcActivityTime"] = "2020-03-31 00:00 2020-04-16 23:59"
-- 排行领奖时间--cy
tActivityTime["AprilFoolsDay"]["RankRewardTime"] = "2020-04-14 00:00 2020-04-14 23:59"
-- 补偿奖励发放时间--fzx
tActivityTime["AprilFoolsDay"]["CompensationTime"] = "2020-04-09 00:00 2020-04-13 23:59"
------------------------------------------------------------------------------------
--Name：        200305[英文征服][活动脚本]4月发奖action制作（3.31）
--Creator:      杨志翔
--Created:      DATE：2020-02-17
------------------------------------------------------------------------------------
tActivityTime["AprilMoneyMerge"] = {}
tActivityTime["AprilMoneyMerge"]["ActTime"] = "2020-06-11 00:00 2020-07-10 23:59"

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]龙宫至宝
--Creator:		翁清海
--Created:		2020/02/20
------------------------------------------------------------------------------------
tActivityTime["DragonSoulTreasure"] = {}
tActivityTime["DragonSoulTreasure"]["ActivityTime"] = "2020-03-31 00:00 2020-04-13 23:59"

------------------------------------------------------------------------------------
---Name:161201[英文征服][活动脚本]PC玩家玩移动新服送好礼
--Creator: 		杨晓晓
--Created:		2016-12-01
------------------------------------------------------------------------------------------
tActivityTime["GiftGiving"] = {}
tActivityTime["GiftGiving"]["ActivityTime"] = "2020-04-02 00:00 2020-04-22 23:59"

------------------------------------------------------------------------------------
--Name:		170418[英文征服][活动脚本]精准推送图片更新
--Purpose:	精准推送图片更新
--Creator: 	陈琳
--Created:	2017/04/18
------------------------------------------------------------------------------------

tActivityTime["MobileCO"] = {}
tActivityTime["MobileCO"]["ActivityTime"] = "2020-04-02 00:00 2020-04-16 23:59"

------------------------------------------------------------------------------------
--Name:     200227[英文征服][活动脚本]忍者觉醒普天同庆【初阶】（答题模式）（3.24-4.6）
--Creator:  郑飞
--Created:  2020-02-24
------------------------------------------------------------------------------------
tActivityTime["NinjaAnswer"] = {}
tActivityTime["NinjaAnswer"]["ActivityTime"] = "2020-04-07 00:00 2020-04-21 23:59"

------------------------------------------------------------------------------------
--Name：            200309[英文征服][活动脚本]4月精准营销（4.9-4.30）
--Creator:      林嘉鑫
--Created:     2020-03-09
------------------------------------------------------------------------------------
tActivityTime["AprPrecisionPush"] = {}
tActivityTime["AprPrecisionPush"]["ActivityTime"] = "2020-04-09 00:00 2020-04-21 23:59"

------------------------------------------------------------------------------------
--Name：	200216[简体征服][活动脚本]忍者觉醒前瞻任务
--Creator:	杨志翔
--DATE：2020-02-16
------------------------------------------------------------------------------------
tActivityTime["NAForward"] = {}
tActivityTime["NAForward"]["ActivityTime"] = "2020-04-07 00:00 2020-04-28 23:59"
tActivityTime["NAForward"]["ActivityTime1"] = "2020-04-29 00:00 2020-05-01 23:59"

------------------------------------------------------------------------------------
--Name:		200331[英文征服][活动脚本]60天签到礼包
--Purpose:	
--Creator: 	杨志翔
--Created:	
------------------------------------------------------------------------------------
tActivityTime["Signin60P"] = {}
tActivityTime["Signin60P"]["ActivityTime"] = "2020-03-01 23:59 2020-06-07 23:59"
------------------------------------------------------------------------------------
--Name：            200331[英文征服][活动脚本]4月德州红包活动（4.14-5.28）
--Creator:      蔡颖静
--Created:     2020-03-31
------------------------------------------------------------------------------------
tActivityTime["AprilTexasRedBag"] = {}
tActivityTime["AprilTexasRedBag"]["ActivityTime"] = "2020-08-20 00:00 2020-09-10 23:59"

------------------------------------------------------------------------------------
--Name：      200324[英文征服][活动脚本]4月COP预热活动（4.14-5.28）
--Creator:      郑洵
--Created:     2020-03-23
------------------------------------------------------------------------------------
tActivityTime["AprilCOPPreheat"] = {}
tActivityTime["AprilCOPPreheat"]["ActivityTime"] = {}
tActivityTime["AprilCOPPreheat"]["ActivityTime"][1] = "2020-04-14 00:00 2020-04-27 23:59"
tActivityTime["AprilCOPPreheat"]["ActivityTime"][2] = "2020-04-28 00:00 2020-05-28 23:59"

------------------------------------------------------------------------------------
--Name：      200310[简体征服][活动脚本]17周年庆预热活动-祈福灵兽
--Creator:      郑洵
--Created:     2020-03-10
------------------------------------------------------------------------------------
tActivityTime["PrayForKirin"] = {}
tActivityTime["PrayForKirin"]["ActivityTime"] = "2020-04-14 00:00 2020-04-27 23:59"
tActivityTime["PrayForKirin"]["NpcTime"] = "2020-04-11 00:00 2020-04-27 23:59"
tActivityTime["PrayForKirin"]["ActivityTime1"] = "2020-04-14 00:00 2020-04-20 23:59"
tActivityTime["PrayForKirin"]["ActivityTime2"] = "2020-04-21 00:00 2020-04-27 23:59"
tActivityTime["PrayForKirin"]["CleanTime"]  = "2020-04-21 00:00 2020-04-21 23:59"
------------------------------------------------------------------------------------
--Name:		200317[简体征服][活动脚本]周年庆预热-充能水晶
--Creator: 	戴鑫海
--Created:	2020/03/17
------------------------------------------------------------------------------------
tActivityTime["PrayForCharge"] = {}
tActivityTime["PrayForCharge"]["ActivityTime"] = "2020-04-14 00:00 2020-04-20 23:59"


------------------------------------------------------------------------------------
--Name：      200203[简体征服][活动脚本]制作忍者觉醒特权月线上任务（3.5-4.4）
--Creator:    江宇君
--Created:    2020/02/03
------------------------------------------------------------------------------------
tActivityTime["NanjaPrivilege"] = {}
tActivityTime["NanjaPrivilege"]["ActivityTime"] = "2020-04-21 00:00 2020-05-21 23:59" --活动时间

------------------------------------------------------------------------------------
--Name：            200224[英文征服][活动脚本]3月忍者觉醒新服-15次签到卡（3.24-4.23）
--Creator:      方政
--Created:     2020-02-24
------------------------------------------------------------------------------------
tActivityTime["NinjaSign"] = {}
tActivityTime["NinjaSign"]["ActivityTime"] = "2020-04-21 00:00 2020-05-21 23:59"

------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月新服忍者觉醒预约活动（3.24-4.23）
--Creator:      蔡颖静
--Created:     2020-02-25
------------------------------------------------------------------------------------
tActivityTime["NinjaSignInActivity"] = {}
tActivityTime["NinjaSignInActivity"]["ActTime"] = "2020-04-21 00:00 2020-05-21 23:59"
tActivityTime["NinjaSignInActivity"]["SignInActTime"] = "2020-04-21 00:00 2020-04-28 23:59"
------------------------------------------------------------------------------------
--Name：            200408[英文征服][活动脚本]3月新服-忍者版促销商城
--Creator:      洪聪敏
--Created:     2020/04/08
---------------------------------------------------------------------------------
tActivityTime["NinjaPromotion"] = {}
tActivityTime["NinjaPromotion"]["ActivityTime"] = "2020-08-13 00:00 2020-09-10 23:59"
------------------------------------------------------------------------------------
--Name：            200302[英文征服][活动脚本]忍者觉醒普天同庆【终阶】(4.14-5.1)
--Creator:      蔡颖静
--Created:     2020-03-02
------------------------------------------------------------------------------------
tActivityTime["NinjaFinalCelebration"] = {}
tActivityTime["NinjaFinalCelebration"]["ActTime"] = "2020-04-21 00:00 2020-05-08 23:59"

------------------------------------------------------------------------------------
---200120[简体征服][活动脚本]实力验证-爬塔副本
---SQL BY:江宇君
---DATE：2020-01-20
------------------------------------------------------------------------------------
tActivityTime["ClimbingTower"] = {}
tActivityTime["ClimbingTower"]["ActivityTime"] = "2020-04-21 00:00 2030-04-21 23:59"

------------------------------------------------------------------------------------
--Name:		180519[简体征服][活动脚本]制作帐号鉴定活动礼包发奖ID
--Purpose:	制作帐号鉴定活动礼包发奖ID
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
tActivityTime["IdAuthenticateAction"] = {}
tActivityTime["IdAuthenticateAction"]["ActTime"] = "2018-01-01 00:00 2018-10-15 23:59"
------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆剧情
--Creator:      蔡颖静
--Created:     2020-03-19
------------------------------------------------------------------------------------
tActivityTime["Anniversary2020"]={}
tActivityTime["Anniversary2020"]["ActivityTime"] = "2020-04-23 00:00 2020-05-22 23:59"
tActivityTime["Anniversary2020"]["FireworksTime"] = "2020-04-23 00:00 2020-05-06 23:59"
tActivityTime["Anniversary2020"]["BossTime"] = "2020-05-07 00:00 2020-05-22 23:59"
tActivityTime["Anniversary2020"]["RankTime"] = "2020-04-23 00:00 2020-05-23 23:59"
tActivityTime["Anniversary2020"]["MailTime"] = "2020-05-23 00:00 2020-05-23 23:59"
tActivityTime["Anniversary2020"]["FirstWeekTime"] = "2020-04-23 00:00 2020-04-29 23:59"
tActivityTime["Anniversary2020"]["SecondWeekTime"] = "2020-04-30 00:00 2020-05-06 23:59"
tActivityTime["Anniversary2020"]["OtherWeekTime"] = "2020-05-07 00:00 2020-05-23 23:59"
tActivityTime["Anniversary2020"]["EnterTime"] = "2020-04-23 17:00 2020-05-22 23:59"
tActivityTime["Anniversary2020"]["ItemTime"] = "2020-04-23 00:00 2020-05-31 23:59"
tActivityTime["Anniversary2020"]["SkillTime"] = "2020-04-23 00:00 2020-06-30 23:59"
tActivityTime["Anniversary2020"]["LastTime"] = "2020-05-23 00:00 2020-05-23 23:59"

------------------------------------------------------------------------------------
--Name：            200329[英文征服][活动脚本]5月发奖ID第一波（4.28）-老玩家回归
--Creator:      江宇君
--Created:     2020/03/29
------------------------------------------------------------------------------------
tActivityTime["MayAction"] = {}
tActivityTime["MayAction"]["ActivityTime"] = "2020-05-07 00:00 2020-06-01 23:59"
------------------------------------------------------------------------------------
--Name：            191217[简体征服][活动脚本]装备副本（困难难度）
--Creator:      江宇君
--Created:     2019-12-17
------------------------------------------------------------------------------------
tActivityTime["EquipCopyDifficulty"] = {}
tActivityTime["EquipCopyDifficulty"]["ActivityTime"] = "2020-04-28 00:00 2020-05-18 23:59"
-- 开奖道具使用时间
tActivityTime["EquipCopyDifficulty"]["UseItemDayTime"] = "09:00 23:25"
-- 开奖道具开奖时间
tActivityTime["EquipCopyDifficulty"]["OpenRewardTime"] = "23:30 23:35"

------------------------------------------------------------------------------------
--Name：            181031[简体征服][活动脚本]双11活动制作-天降福禄
--Creator:      陈莺
--Created:     2018/11/05
------------------------------------------------------------------------------------
tActivityTime["DoubleActivity"] = {}
tActivityTime["DoubleActivity"]["Now_Time"] = "2020-05-07 00:00 2020-05-31 23:59"

------------------------------------------------------------------------------------
--Name：            200225[简体征服][活动脚本]坐骑外套换神佑
--Creator:      黄啸
--Created:     2020-02-25
------------------------------------------------------------------------------------
tActivityTime["SpingFestvialcharge"] = {}
tActivityTime["SpingFestvialcharge"]["Activity"] = "2020-05-07 00:00 2020-05-31 23:59"

------------------------------------------------------------------------------------
--Name:		200117[简体征服][活动脚本]百鬼夜行活动制作
--Purpose:	百鬼新功能活动
--Creator: 	黄啸
--Created:	2020/01/17
------------------------------------------------------------------------------------
tActivityTime["HundredMonsterGo"] = {}
tActivityTime["HundredMonsterGo"]["BeforActivity"] = "2020-02-16 00:00 2020-05-06 23:59"
tActivityTime["HundredMonsterGo"]["NowActivity"] = "2020-05-07 00:00 2020-05-20 23:59"

------------------------------------------------------------------------------------
--Name：        200416[简体征服][活动脚本]全球儿童节
--Creator:      耿力兀
--Created:     2020-04-16
------------------------------------------------------------------------------------
tActivityTime["ChildrenDay2020"] = {}
tActivityTime["ChildrenDay2020"]["ActivityTime"] = "2020-05-26 00:00 2020-06-09 23:59"
tActivityTime["ChildrenDay2020"]["EmailTime"] = "2020-06-10 00:00 2020-06-10 23:59"
------------------------------------------------------------------------------------
--Name:		200417[简体征服][活动脚本]全球儿童节--扭蛋机+妖精快跑+九宫采玉
--Creator: 	洪聪敏
--Created:	2020/04/17
-----------------------------------------------------------------------------------
tActivityTime["Children2020TwistedEgg"] = {}
tActivityTime["Children2020TwistedEgg"][26508] = {}
tActivityTime["Children2020TwistedEgg"][26508][1] = "2020-05-26 00:00 2020-05-26 23:59"
tActivityTime["Children2020TwistedEgg"][26508][2] = "2020-05-30 00:00 2020-05-30 23:59"
tActivityTime["Children2020TwistedEgg"][26508][3] = "2020-06-03 00:00 2020-06-03 23:59"
tActivityTime["Children2020TwistedEgg"][26508][4] = "2020-06-07 00:00 2020-06-07 23:59"

tActivityTime["Children2020TwistedEgg"][26509] = {}
tActivityTime["Children2020TwistedEgg"][26509][1] = "2020-05-27 00:00 2020-05-27 23:59"
tActivityTime["Children2020TwistedEgg"][26509][2] = "2020-05-31 00:00 2020-05-31 23:59"
tActivityTime["Children2020TwistedEgg"][26509][3] = "2020-06-04 00:00 2020-06-04 23:59"
tActivityTime["Children2020TwistedEgg"][26509][4] = "2020-06-08 00:00 2020-06-08 23:59"

tActivityTime["Children2020TwistedEgg"][26510] = {}
tActivityTime["Children2020TwistedEgg"][26510][1] = "2020-05-28 00:00 2020-05-28 23:59"
tActivityTime["Children2020TwistedEgg"][26510][2] = "2020-06-01 00:00 2020-06-01 23:59"
tActivityTime["Children2020TwistedEgg"][26510][3] = "2020-06-05 00:00 2020-06-05 23:59"
tActivityTime["Children2020TwistedEgg"][26510][4] = "2020-06-09 00:00 2020-06-09 23:59"

tActivityTime["Children2020TwistedEgg"][26511] = {}
tActivityTime["Children2020TwistedEgg"][26511][1] = "2020-05-29 00:00 2020-05-29 23:59"
tActivityTime["Children2020TwistedEgg"][26511][2] = "2020-06-02 00:00 2020-06-02 23:59"
tActivityTime["Children2020TwistedEgg"][26511][3] = "2020-06-06 00:00 2020-06-06 23:59"
------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
--Creator:		翁清海
--Created:		2020/04/16
------------------------------------------------------------------------------------
tActivityTime["SmeltingRecovery"] = {}
tActivityTime["SmeltingRecovery"]["ActivityTime"] = "2020-05-26 00:00 2020-06-08 23:59"
tActivityTime["SmeltingRecovery"]["ItemTime"] = "2020-05-26 00:00 2020-06-15 23:59"

------------------------------------------------------------------------------------
--Name:		200506[英文征服][活动脚本]6月夏日祭-花火大会
--Purpose:	6月夏日祭-花火大会（6.2-6.20）
--Creator: 	杨志翔
--Created:	2020/05/06
------------------------------------------------------------------------------------
tActivityTime["HanabiTaiKai"] = {}
tActivityTime["HanabiTaiKai"]["ActivityTime"] = "2020-06-02 00:00 2020-06-20 23:59"

------------------------------------------------------------------------------------
--Name：        200506[英文征服][活动脚本]6月神兵驾到全民集结（6.2-6.30）
--Creator:      冯子鑫
--Created:     2020-05-08
------------------------------------------------------------------------------------
tActivityTime["LegendArrivedWeb"] = {}
tActivityTime["LegendArrivedWeb"]["ActivityTime"] = "2020-06-02 00:00 2020-06-30 23:59"

--Name:		200506[英文征服][活动脚本]6月新服
--Creator: 	杨志翔
--Created:	2020/05/06
------------------------------------------------------------------------------------
tActivityTime["JuneNewServerDouble"] = {}
tActivityTime["JuneNewServerDouble"]["Activity"] = "2020-06-11 00:00 2020-06-24 23:59"



------------------------------------------------------------------------------------
--Name:			200506[简体征服][活动脚本]忍者主题PK活动
--Creator:		杨志翔
--Created:		2020/05/06
------------------------------------------------------------------------------------

tActivityTime["NjThPk"] = {}
tActivityTime["NjThPk"]["ActivityTime"] = "2020-06-18 00:00 2020-07-01 23:59"
tActivityTime["NjThPk"]["PKtime"] = "20:00 20:30"
tActivityTime["NjThPk"]["PostTime"] = "2020-06-18 00:00 2020-07-04 23:59"

------------------------------------------------------------------------------------
--Name：            200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
--Creator:      江宇君
--Created:     2020/05/14
------------------------------------------------------------------------------------
tActivityTime["IrrigateSacredTree"] = {}
tActivityTime["IrrigateSacredTree"]["ActivityTime"] = "2020-06-23 00:00 2020-07-07 23:59"
tActivityTime["IrrigateSacredTree"]["RankingTime"] = "2020-07-08 00:00 2020-07-08 23:59"
------------------------------------------------------------------------------------
--Name：        200528[英文征服][活动脚本]7月暑期+宰牲节活跃福利活动（7.14-7.31）
--Creator:      李瑞恒
--Created:     2020-05-28
------------------------------------------------------------------------------------
tActivityTime["tSummerCorbanFestival"] = {}
tActivityTime["tSummerCorbanFestival"]["ActivityTime"] = "2020-07-14 00:00 2020-07-31 23:59"

------------------------------------------------------------------------------------
--Name:			200512[简体征服][活动脚本]全球暑期活动(7.7-7.20)
--Creator:		兰瑞妹
--Created:		2020/05/12
------------------------------------------------------------------------------------
tActivityTime["SummerActive"] = {}
tActivityTime["SummerActive"]["Preheat"] = '2020-07-14 00:00 2020-07-16 23:59'
tActivityTime["SummerActive"]["ActivityTime"] = "2020-07-17 00:00 2020-07-29 23:59"
tActivityTime["SummerActive"]["EnterActivityTime"] = "2020-07-17 17:00 2020-07-29 23:59"
tActivityTime["SummerActive"]["RankTime"] ="2020-07-17 00:00 2020-07-30 23:59"
tActivityTime["SummerActive"]["MailTime"] ="2020-07-30 00:00 2020-07-30 23:59"
tActivityTime["SummerActive"]["ALLTime"] ="2020-07-14 00:00 2020-07-30 23:59"

------------------------------------------------------------------------------------
--Name：        200615[简体征服][活动脚本]辅助号加强版本内容制作
--Creator:      黄啸
--Created:     2020-06-17
------------------------------------------------------------------------------------
tActivityTime["ArtifactTool"] = {}
tActivityTime["ArtifactTool"]["ActivityTime"] = "2020-06-17 00:00 2022-07-01 23:59"

------------------------------------------------------------------------------------
--Name：            200520[阿语征服][活动脚本]碎片777玩法
--Creator:      王贤
--Created:     2020-05-20
------------------------------------------------------------------------------------
-- 老虎机、水果机 兑换商店时间
tActivityTime["ExchangeShop777"] = {}
tActivityTime["ExchangeShop777"]["ActivityTime"] = "2020-07-01 00:00 2030-07-01 23:59"

------------------------------------------------------------------------------------
--Name：            200706[英文征服][活动脚本]果园狂欢玩法推广地效
--Creator:      江宇君
--Created:     2020-07-06
------------------------------------------------------------------------------------
tActivityTime["FruitMachine"] = {}
tActivityTime["FruitMachine"]["ActivityTime"] = {}
tActivityTime["FruitMachine"]["ActivityTime"]["MoveTrap"] = "2020-07-16 00:00 2020-08-30 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26694] = "2020-07-01 00:00 2030-07-01 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26695] = "2020-07-01 00:00 2030-07-01 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26696] = "2020-07-01 00:00 2030-07-01 23:59"
-- tActivityTime["FruitMachine"]["ActivityTime"][26697] = "2020-07-01 00:00 2030-07-01 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26698] = "2020-07-01 00:00 2030-07-01 23:59"
-- tActivityTime["FruitMachine"]["ActivityTime"][26699] = "2020-07-01 00:00 2030-07-01 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26700] = "2020-07-01 00:00 2030-07-01 23:59"
tActivityTime["FruitMachine"]["ActivityTime"][26701] = "2020-07-01 00:00 2030-07-01 23:59"

--Name:			200728[英文征服][活动脚本]水果机优化活动（8.11-8.31）
-- 物品水果机
tActivityTime["FruitMachine"]["ActivityTime"][26714] = "2020-08-18 00:00 2020-09-07 23:59"
-- 兑换商店
tActivityTime["FruitMachine"]["ActivityTime"][27059] = "2020-08-18 00:00 2020-09-10 23:59"

------------------------------------------------------------------------------------
--Name：      200615[英文征服][活动脚本]海外果园狂欢背包信
--Creator:      郑洵
--Created:     2020-06-15
------------------------------------------------------------------------------------
tActivityTime["OrchardCarnivalLetter"] = {}
tActivityTime["OrchardCarnivalLetter"]["ActivityTime"] = "2020-07-16 00:00 2020-07-30 23:59"

------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]十八变功能
--Creator:		郑鋆
--Created:		2019/12/08
------------------------------------------------------------------------------------
tActivityTime["EighteenChanges"] = {}
tActivityTime["EighteenChanges"]["ActivityTime"] = "2020-08-20 00:00 2020-09-16 23:59"

------------------------------------------------------------------------------------
--Name:		200720[简体征服][活动脚本]全球七夕活动预热+七夕抽奖(8.13-8.17)
--Creator: 	兰瑞妹
--Created:	2020/07/20
------------------------------------------------------------------------------------
tActivityTime["PreheatingAndDraw"] = {}
tActivityTime["PreheatingAndDraw"]["MonsterActivityTime"] = "2020-08-12 00:00 2020-08-17 23:59"
tActivityTime["PreheatingAndDraw"]["ActivityTime"] = "2020-08-13 00:00 2020-08-17 23:59"
tActivityTime["PreheatingAndDraw"]["LastTime"] = "2020-08-17 00:00 2020-08-17 23:59"
tActivityTime["PreheatingAndDraw"]["BeforeTime"] = "2020-08-18 00:00 2020-08-18 07:00"
tActivityTime["PreheatingAndDraw"]["AllTime"] = "2020-08-13 00:00 2020-08-31 23:59"
tActivityTime["PreheatingAndDraw"]["AllNpcTime"] = "2020-08-13 00:00 2020-09-03 23:59"

------------------------------------------------------------------------------------
--Name：            200628[简体征服][活动脚本]全球七夕花魁活动（剧情）
--Creator:      耿力兀
--Created:     2020-06-28
------------------------------------------------------------------------------------
tActivityTime["QixiFestivalNPC"] = {}
tActivityTime["QixiFestivalNPC"]["ActivityTime"] = "2020-08-18 00:00 2020-08-31 23:59"
tActivityTime["QixiFestivalNPC"]["NPCTime"] = "2020-08-18 00:00 2020-09-06 23:59"
tActivityTime["QixiFestivalNPC"]["EmailTime"] = "2020-09-01 00:00 2020-09-01 23:59"


------------------------------------------------------------------------------------
--Name：       200726[英文征服][活动脚本]精炼神纹专题战令  
--Creator:      杨志翔
--Created:     2020-07-26
------------------------------------------------------------------------------------
tActivityTime["RuneThemeBPInc"] = {}
tActivityTime["RuneThemeBPInc"]["ActivityTime"] = "2020-08-18 00:00 2020-09-14 23:59"
tActivityTime["RuneThemeBPInc"]["CleanTime"] = "2020-09-15 00:00 2020-09-15 23:59"

------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]神纹副本门票产出
--Creator:      耿力兀
--Created:     2020-06-09
------------------------------------------------------------------------------------
tActivityTime["TicketsOutput"] = {}
tActivityTime["TicketsOutput"]["ActivityTime"] = "2020-08-18 00:00 2020-09-14 23:59"