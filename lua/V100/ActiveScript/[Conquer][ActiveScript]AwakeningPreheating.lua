------------------------------------------------------------------------------------
--Name:			191216[简体征服][活动脚本]职业觉醒预热活动
--Creator: 		茅志伟
--Created:		2019/12/16
------------------------------------------------------------------------------------

-- 命名前缀 tAwakenPreheat_

-- lua.ini = 41668
-- 41668 = V100\ActiveScript\[Conquer][ActiveScript]AwakeningPreheating.lua
-- 41668 = V100\活动脚本\[征服][活动脚本]职业觉醒预热活动.lua

-- LogId = 12001794

-- stc掩码
-- 记录各职业侠义牌上交数量
-- 212,24 勇士
-- 212,25 战士
-- 212,26 道士
-- 212,27 海盗
-- 212,28 铁扇
-- 212,29 斗士
-- 212,30 弓手
-- 212,31 忍者
-- 212,32 武僧
-- 212,33 小龙
-- 记录各职业积分等级
-- 212,34 勇士
-- 212,35 战士
-- 212,36 道士
-- 212,37 海盗
-- 212,38 铁扇
-- 212,39 斗士
-- 212,40 弓手
-- 212,41 忍者
-- 212,42 武僧
-- 212,43 小龙
-- 记录二阶段玩家投注积分
-- 212,44 勇士
-- 212,45 战士
-- 212,46 道士
-- 212,47 海盗
-- 212,48 铁扇
-- 212,49 斗士
-- 212,50 弓手
-- 212,51 忍者
-- 212,52 武僧
-- 212,53 小龙
--全职业总积分
-- 212,54
--记录二阶段玩家随机线索记录  一次随机之后固定不变
-- 212,55
--记录一阶段积分礼包领取及使用情况  0 未领取未使用  1 已领取未使用  2 已领取已使用
-- 212,56
--记录二阶段积分礼包领取及使用情况  0 未领取未使用  1 已领取未使用  2 已领取已使用
-- 212,57

-- GlobalId 
-- 排行榜
-- 勇士 {54037,54038,54039,54040}
-- 战士 {54041,54042,54043,54044}
-- 道士 {54045,54046,54047,54048}
-- 海盗 {54049,54050,54051,54052}
-- 铁扇 {54053,54054,54055,54056}
-- 斗士 {54057,54058,54059,54060}
-- 弓手 {54061,54062,54063,54064}
-- 忍者 {54065,54066,54067,54068}
-- 武僧 {54069,54070,54071,54072}
-- 小龙 {54073,54074,54075,54076}



local tAwakenPreheat_Stc = {}
-- 记录各职业积分
tAwakenPreheat_Stc["Profession"] = {}

tAwakenPreheat_Stc["Profession"]["EventType"] = 212
tAwakenPreheat_Stc["Profession"]["DataType"] = {}
-- 勇士
tAwakenPreheat_Stc["Profession"]["DataType"][1]  = 24
-- 战士                                         
tAwakenPreheat_Stc["Profession"]["DataType"][2]  = 25
-- 道士                                         
tAwakenPreheat_Stc["Profession"]["DataType"][3]  = 26
-- 海盗                                         
tAwakenPreheat_Stc["Profession"]["DataType"][4]  = 27
-- 铁扇                                         
tAwakenPreheat_Stc["Profession"]["DataType"][5]  = 28
-- 斗士                                         
tAwakenPreheat_Stc["Profession"]["DataType"][6]  = 29
-- 弓手                                         
tAwakenPreheat_Stc["Profession"]["DataType"][7]  = 30
-- 忍者                                         
tAwakenPreheat_Stc["Profession"]["DataType"][8]  = 31
-- 武僧                                         
tAwakenPreheat_Stc["Profession"]["DataType"][9]  = 32
-- 小龙                                     
tAwakenPreheat_Stc["Profession"]["DataType"][10] = 33
-- 各职业积分等级
tAwakenPreheat_Stc["ProLevel"] = {}
tAwakenPreheat_Stc["ProLevel"]["EventType"] = 212
tAwakenPreheat_Stc["ProLevel"]["DataType"] = {}
tAwakenPreheat_Stc["ProLevel"]["DataType"][1]  = 34
tAwakenPreheat_Stc["ProLevel"]["DataType"][2]  = 35
tAwakenPreheat_Stc["ProLevel"]["DataType"][3]  = 36
tAwakenPreheat_Stc["ProLevel"]["DataType"][4]  = 37
tAwakenPreheat_Stc["ProLevel"]["DataType"][5]  = 38
tAwakenPreheat_Stc["ProLevel"]["DataType"][6]  = 39
tAwakenPreheat_Stc["ProLevel"]["DataType"][7]  = 40
tAwakenPreheat_Stc["ProLevel"]["DataType"][8]  = 41
tAwakenPreheat_Stc["ProLevel"]["DataType"][9]  = 42
tAwakenPreheat_Stc["ProLevel"]["DataType"][10] = 43

--全职业总积分
tAwakenPreheat_Stc["TotalScore"] = {}
tAwakenPreheat_Stc["TotalScore"]["EventType"] = 212
tAwakenPreheat_Stc["TotalScore"]["DataType"] = 54

-- 各职业投注积分
tAwakenPreheat_Stc["ProBet"] = {}
tAwakenPreheat_Stc["ProBet"]["EventType"] = 212
tAwakenPreheat_Stc["ProBet"]["DataType"] = {}
tAwakenPreheat_Stc["ProBet"]["DataType"][1]  = 44
tAwakenPreheat_Stc["ProBet"]["DataType"][2]  = 45
tAwakenPreheat_Stc["ProBet"]["DataType"][3]  = 46
tAwakenPreheat_Stc["ProBet"]["DataType"][4]  = 47
tAwakenPreheat_Stc["ProBet"]["DataType"][5]  = 48
tAwakenPreheat_Stc["ProBet"]["DataType"][6]  = 49
tAwakenPreheat_Stc["ProBet"]["DataType"][7]  = 50
tAwakenPreheat_Stc["ProBet"]["DataType"][8]  = 51
tAwakenPreheat_Stc["ProBet"]["DataType"][9]  = 52
tAwakenPreheat_Stc["ProBet"]["DataType"][10] = 53

--记录二阶段玩家随机线索记录  一次随机之后固定不变
tAwakenPreheat_Stc["Stage"] = {}
tAwakenPreheat_Stc["Stage"]["EventType"] = 212
tAwakenPreheat_Stc["Stage"]["DataType"] = 55

--记录一阶段积分礼包领取及使用情况
tAwakenPreheat_Stc["LoginReward1"] = {}
tAwakenPreheat_Stc["LoginReward1"]["EventType"] = 212
tAwakenPreheat_Stc["LoginReward1"]["DataType"] = 56
--记录二阶段积分礼包领取及使用情况
tAwakenPreheat_Stc["LoginReward2"] = {}
tAwakenPreheat_Stc["LoginReward2"]["EventType"] = 212
tAwakenPreheat_Stc["LoginReward2"]["DataType"] = 57

local tAwakenPreheat_Data = {}
-- 银两价格 
tAwakenPreheat_Data["Price"] = 100000

-- 各职业侠义牌id
tAwakenPreheat_Data["ProCardId"] = {}
tAwakenPreheat_Data["ProCardId"][1]  = 3327328
tAwakenPreheat_Data["ProCardId"][2]  = 3327329
tAwakenPreheat_Data["ProCardId"][3]  = 3327330
tAwakenPreheat_Data["ProCardId"][4]  = 3327331
tAwakenPreheat_Data["ProCardId"][5]  = 3327332
tAwakenPreheat_Data["ProCardId"][6]  = 3327333
tAwakenPreheat_Data["ProCardId"][7]  = 3327334
tAwakenPreheat_Data["ProCardId"][8]  = 3327335
tAwakenPreheat_Data["ProCardId"][9]  = 3327336
tAwakenPreheat_Data["ProCardId"][10] = 3327337

-- 秘典拓本ID
tAwakenPreheat_Data["BookId"] = 3327339

-- NpcId
tAwakenPreheat_Data["NpcId"] = {}
tAwakenPreheat_Data["NpcId"][1] = 25800
tAwakenPreheat_Data["NpcId"][2] = 25801
tAwakenPreheat_Data["NpcId"][3] = 25802
tAwakenPreheat_Data["NpcId"][4] = 25803
tAwakenPreheat_Data["NpcId"][5] = 25804
tAwakenPreheat_Data["NpcId"][6] = 25805


-- 各等级所需积分
tAwakenPreheat_Data["ExeLevel"] = {}
tAwakenPreheat_Data["ExeLevel"][0] = 0
tAwakenPreheat_Data["ExeLevel"][1] = 15
tAwakenPreheat_Data["ExeLevel"][2] = 55
tAwakenPreheat_Data["ExeLevel"][3] = 125
tAwakenPreheat_Data["ExeLevel"][4] = 225
tAwakenPreheat_Data["ExeLevel"][5] = 335
tAwakenPreheat_Data["ExeLevel"][6] = 455
tAwakenPreheat_Data["ExeLevel"][7] = 605
tAwakenPreheat_Data["ExeLevel"][8] = 775
tAwakenPreheat_Data["ExeLevel"][9] = 975
tAwakenPreheat_Data["ExeLevel"][10] = 1275
tAwakenPreheat_Data["ExeLevel"][11] = 1275

-- 排行榜奖励actionId
tAwakenPreheat_Data["RankActionId"] = {}
tAwakenPreheat_Data["RankActionId"][1]  = 575816
tAwakenPreheat_Data["RankActionId"][2]  = 575817
tAwakenPreheat_Data["RankActionId"][3]  = 575818
tAwakenPreheat_Data["RankActionId"][4]  = 575819
tAwakenPreheat_Data["RankActionId"][5]  = 575820
tAwakenPreheat_Data["RankActionId"][6]  = 575821
tAwakenPreheat_Data["RankActionId"][7]  = 575822
tAwakenPreheat_Data["RankActionId"][8]  = 575823
tAwakenPreheat_Data["RankActionId"][9]  = 575824
tAwakenPreheat_Data["RankActionId"][10] = 575825

-- 升级奖励actionId
tAwakenPreheat_Data["UpgradeActionId"] = {}
tAwakenPreheat_Data["UpgradeActionId"][1]  = 575826
tAwakenPreheat_Data["UpgradeActionId"][2]  = 575827
tAwakenPreheat_Data["UpgradeActionId"][3]  = 575828
tAwakenPreheat_Data["UpgradeActionId"][4]  = 575829
tAwakenPreheat_Data["UpgradeActionId"][5]  = 575830
tAwakenPreheat_Data["UpgradeActionId"][6]  = 575831
tAwakenPreheat_Data["UpgradeActionId"][7]  = 575832
tAwakenPreheat_Data["UpgradeActionId"][8]  = 575833
tAwakenPreheat_Data["UpgradeActionId"][9]  = 575834
tAwakenPreheat_Data["UpgradeActionId"][10] = 575835

-- 阶段奖励actioId（邮件）
tAwakenPreheat_Data["LoginReward"] = {}
tAwakenPreheat_Data["LoginReward"][1] = 575836
tAwakenPreheat_Data["LoginReward"][2] = 575837

-- 排行榜id
tAwakenPreheat_Data["RankId"] = {}
tAwakenPreheat_Data["RankId"][1]  = 258011 
tAwakenPreheat_Data["RankId"][2]  = 258012 
tAwakenPreheat_Data["RankId"][3]  = 258013 
tAwakenPreheat_Data["RankId"][4]  = 258014 
tAwakenPreheat_Data["RankId"][5]  = 258015 
tAwakenPreheat_Data["RankId"][6]  = 258016 
tAwakenPreheat_Data["RankId"][7]  = 258017 
tAwakenPreheat_Data["RankId"][8]  = 258018 
tAwakenPreheat_Data["RankId"][9]  = 258019 
tAwakenPreheat_Data["RankId"][10] = 2580110

-- 秘典拓本传送坐标
tAwakenPreheat_Data["BlackNpc"] = {}
tAwakenPreheat_Data["BlackNpc"][1] = {}
tAwakenPreheat_Data["BlackNpc"][1]["MapId"] = 1002
tAwakenPreheat_Data["BlackNpc"][1]["MapX"] = 315
tAwakenPreheat_Data["BlackNpc"][1]["MapY"] = 440
tAwakenPreheat_Data["BlackNpc"][1]["Rang"] = 2
tAwakenPreheat_Data["BlackNpc"][2] = {}
tAwakenPreheat_Data["BlackNpc"][2]["MapId"] = 1036
tAwakenPreheat_Data["BlackNpc"][2]["MapX"] = 221
tAwakenPreheat_Data["BlackNpc"][2]["MapY"] = 113
tAwakenPreheat_Data["BlackNpc"][2]["Rang"] = 2

-- 发型id
tAwakenPreheat_Data["HairId"] = {}
tAwakenPreheat_Data["HairId"][3327472] = 38

-- 发型时效
tAwakenPreheat_Data["HairTime"] = {}
tAwakenPreheat_Data["HairTime"][3327472] = 43200

tAwakenPreheat_Data["GlobalId"] = {}
tAwakenPreheat_Data["GlobalId"]["GreedServer"] = 54276


-- 排行榜Global
-- tAwakenPreheat_Data["RankGlobal"] = {}
-- tAwakenPreheat_Data["RankGlobal"][1]  = {54037,54038,54039,54040}  --勇士
-- tAwakenPreheat_Data["RankGlobal"][2]  = {54041,54042,54043,54044}  --战士
-- tAwakenPreheat_Data["RankGlobal"][3]  = {54045,54046,54047,54048}  --道士
-- tAwakenPreheat_Data["RankGlobal"][4]  = {54049,54050,54051,54052}  --海盗
-- tAwakenPreheat_Data["RankGlobal"][5]  = {54053,54054,54055,54056}  --铁扇
-- tAwakenPreheat_Data["RankGlobal"][6]  = {54057,54058,54059,54060}  --斗士
-- tAwakenPreheat_Data["RankGlobal"][7]  = {54061,54062,54063,54064}  --弓手
-- tAwakenPreheat_Data["RankGlobal"][8]  = {54065,54066,54067,54068}  --忍者
-- tAwakenPreheat_Data["RankGlobal"][9]  = {54069,54070,54071,54072}  --武僧
-- tAwakenPreheat_Data["RankGlobal"][10] = {54073,54074,54075,54076}  --小龙

tAwakenPreheat_Data["RankGlobal"] = {}
--勇士
tAwakenPreheat_Data["RankGlobal"][1] = {}
tAwakenPreheat_Data["RankGlobal"][1][1]  = {54037,0}
tAwakenPreheat_Data["RankGlobal"][1][2]  = {54037,2}
tAwakenPreheat_Data["RankGlobal"][1][3]  = {54037,4}
tAwakenPreheat_Data["RankGlobal"][1][4]  = {54038,0}
tAwakenPreheat_Data["RankGlobal"][1][5]  = {54038,2}
tAwakenPreheat_Data["RankGlobal"][1][6]  = {54038,4}
tAwakenPreheat_Data["RankGlobal"][1][7]  = {54039,0}
tAwakenPreheat_Data["RankGlobal"][1][8]  = {54039,2}
tAwakenPreheat_Data["RankGlobal"][1][9]  = {54039,4}
tAwakenPreheat_Data["RankGlobal"][1][10] = {54040,0}
--战士
tAwakenPreheat_Data["RankGlobal"][2] = {}
tAwakenPreheat_Data["RankGlobal"][2][1]  = {54041,0}
tAwakenPreheat_Data["RankGlobal"][2][2]  = {54041,2}
tAwakenPreheat_Data["RankGlobal"][2][3]  = {54041,4}
tAwakenPreheat_Data["RankGlobal"][2][4]  = {54042,0}
tAwakenPreheat_Data["RankGlobal"][2][5]  = {54042,2}
tAwakenPreheat_Data["RankGlobal"][2][6]  = {54042,4}
tAwakenPreheat_Data["RankGlobal"][2][7]  = {54043,0}
tAwakenPreheat_Data["RankGlobal"][2][8]  = {54043,2}
tAwakenPreheat_Data["RankGlobal"][2][9]  = {54043,4}
tAwakenPreheat_Data["RankGlobal"][2][10] = {54044,0}
--道士
tAwakenPreheat_Data["RankGlobal"][3] = {}
tAwakenPreheat_Data["RankGlobal"][3][1]  = {54045,0}
tAwakenPreheat_Data["RankGlobal"][3][2]  = {54045,2}
tAwakenPreheat_Data["RankGlobal"][3][3]  = {54045,4}
tAwakenPreheat_Data["RankGlobal"][3][4]  = {54046,0}
tAwakenPreheat_Data["RankGlobal"][3][5]  = {54046,2}
tAwakenPreheat_Data["RankGlobal"][3][6]  = {54046,4}
tAwakenPreheat_Data["RankGlobal"][3][7]  = {54047,0}
tAwakenPreheat_Data["RankGlobal"][3][8]  = {54047,2}
tAwakenPreheat_Data["RankGlobal"][3][9]  = {54047,4}
tAwakenPreheat_Data["RankGlobal"][3][10] = {54048,0}
--海盗
tAwakenPreheat_Data["RankGlobal"][4] = {}
tAwakenPreheat_Data["RankGlobal"][4][1]  = {54049,0}
tAwakenPreheat_Data["RankGlobal"][4][2]  = {54049,2}
tAwakenPreheat_Data["RankGlobal"][4][3]  = {54049,4}
tAwakenPreheat_Data["RankGlobal"][4][4]  = {54050,0}
tAwakenPreheat_Data["RankGlobal"][4][5]  = {54050,2}
tAwakenPreheat_Data["RankGlobal"][4][6]  = {54050,4}
tAwakenPreheat_Data["RankGlobal"][4][7]  = {54051,0}
tAwakenPreheat_Data["RankGlobal"][4][8]  = {54051,2}
tAwakenPreheat_Data["RankGlobal"][4][9]  = {54051,4}
tAwakenPreheat_Data["RankGlobal"][4][10] = {54052,0}
--铁扇
tAwakenPreheat_Data["RankGlobal"][5] = {}
tAwakenPreheat_Data["RankGlobal"][5][1]  = {54053,0}
tAwakenPreheat_Data["RankGlobal"][5][2]  = {54053,2}
tAwakenPreheat_Data["RankGlobal"][5][3]  = {54053,4}
tAwakenPreheat_Data["RankGlobal"][5][4]  = {54054,0}
tAwakenPreheat_Data["RankGlobal"][5][5]  = {54054,2}
tAwakenPreheat_Data["RankGlobal"][5][6]  = {54054,4}
tAwakenPreheat_Data["RankGlobal"][5][7]  = {54055,0}
tAwakenPreheat_Data["RankGlobal"][5][8]  = {54055,2}
tAwakenPreheat_Data["RankGlobal"][5][9]  = {54055,4}
tAwakenPreheat_Data["RankGlobal"][5][10] = {54056,0}
--斗士
tAwakenPreheat_Data["RankGlobal"][6] = {}
tAwakenPreheat_Data["RankGlobal"][6][1]  = {54057,0}
tAwakenPreheat_Data["RankGlobal"][6][2]  = {54057,2}
tAwakenPreheat_Data["RankGlobal"][6][3]  = {54057,4}
tAwakenPreheat_Data["RankGlobal"][6][4]  = {54058,0}
tAwakenPreheat_Data["RankGlobal"][6][5]  = {54058,2}
tAwakenPreheat_Data["RankGlobal"][6][6]  = {54058,4}
tAwakenPreheat_Data["RankGlobal"][6][7]  = {54059,0}
tAwakenPreheat_Data["RankGlobal"][6][8]  = {54059,2}
tAwakenPreheat_Data["RankGlobal"][6][9]  = {54059,4}
tAwakenPreheat_Data["RankGlobal"][6][10] = {54060,0}
--弓手
tAwakenPreheat_Data["RankGlobal"][7] = {}
tAwakenPreheat_Data["RankGlobal"][7][1]  = {54061,0}
tAwakenPreheat_Data["RankGlobal"][7][2]  = {54061,2}
tAwakenPreheat_Data["RankGlobal"][7][3]  = {54061,4}
tAwakenPreheat_Data["RankGlobal"][7][4]  = {54062,0}
tAwakenPreheat_Data["RankGlobal"][7][5]  = {54062,2}
tAwakenPreheat_Data["RankGlobal"][7][6]  = {54062,4}
tAwakenPreheat_Data["RankGlobal"][7][7]  = {54063,0}
tAwakenPreheat_Data["RankGlobal"][7][8]  = {54063,2}
tAwakenPreheat_Data["RankGlobal"][7][9]  = {54063,4}
tAwakenPreheat_Data["RankGlobal"][7][10] = {54064,0}
--忍者
tAwakenPreheat_Data["RankGlobal"][8] = {}
tAwakenPreheat_Data["RankGlobal"][8][1]  = {54065,0}
tAwakenPreheat_Data["RankGlobal"][8][2]  = {54065,2}
tAwakenPreheat_Data["RankGlobal"][8][3]  = {54065,4}
tAwakenPreheat_Data["RankGlobal"][8][4]  = {54066,0}
tAwakenPreheat_Data["RankGlobal"][8][5]  = {54066,2}
tAwakenPreheat_Data["RankGlobal"][8][6]  = {54066,4}
tAwakenPreheat_Data["RankGlobal"][8][7]  = {54067,0}
tAwakenPreheat_Data["RankGlobal"][8][8]  = {54067,2}
tAwakenPreheat_Data["RankGlobal"][8][9]  = {54067,4}
tAwakenPreheat_Data["RankGlobal"][8][10] = {54068,0}
--武僧
tAwakenPreheat_Data["RankGlobal"][9] = {}
tAwakenPreheat_Data["RankGlobal"][9][1]  = {54069,0}
tAwakenPreheat_Data["RankGlobal"][9][2]  = {54069,2}
tAwakenPreheat_Data["RankGlobal"][9][3]  = {54069,4}
tAwakenPreheat_Data["RankGlobal"][9][4]  = {54070,0}
tAwakenPreheat_Data["RankGlobal"][9][5]  = {54070,2}
tAwakenPreheat_Data["RankGlobal"][9][6]  = {54070,4}
tAwakenPreheat_Data["RankGlobal"][9][7]  = {54071,0}
tAwakenPreheat_Data["RankGlobal"][9][8]  = {54071,2}
tAwakenPreheat_Data["RankGlobal"][9][9]  = {54071,4}
tAwakenPreheat_Data["RankGlobal"][9][10] = {54072,0}
--小龙
tAwakenPreheat_Data["RankGlobal"][10] = {}
tAwakenPreheat_Data["RankGlobal"][10][1]  = {54073,0}
tAwakenPreheat_Data["RankGlobal"][10][2]  = {54073,2}
tAwakenPreheat_Data["RankGlobal"][10][3]  = {54073,4}
tAwakenPreheat_Data["RankGlobal"][10][4]  = {54074,0}
tAwakenPreheat_Data["RankGlobal"][10][5]  = {54074,2}
tAwakenPreheat_Data["RankGlobal"][10][6]  = {54074,4}
tAwakenPreheat_Data["RankGlobal"][10][7]  = {54075,0}
tAwakenPreheat_Data["RankGlobal"][10][8]  = {54075,2}
tAwakenPreheat_Data["RankGlobal"][10][9]  = {54075,4}
tAwakenPreheat_Data["RankGlobal"][10][10] = {54076,0}

-- 页面链接
tAwakenPreheat_Data["Web"] = {}
tAwakenPreheat_Data["Web"]["stage2"] = {}
tAwakenPreheat_Data["Web"]["stage2"][1] = "https://hw.99.com/uploads/co/images/2020/march/dy.png"
tAwakenPreheat_Data["Web"]["stage2"][2] = "https://hw.99.com/uploads/co/images/2020/march/lp.png"
tAwakenPreheat_Data["Web"]["stage2"][3] = "https://hw.99.com/uploads/co/images/2020/march/mj.png"
tAwakenPreheat_Data["Web"]["stage2"][4] = "https://hw.99.com/uploads/co/images/2020/march/pb.png"
tAwakenPreheat_Data["Web"]["stage2"][5] = "https://hw.99.com/uploads/co/images/2020/march/wq.png"


tAwakenPreheat_Data["Web"]["stage3"] = "https://coevent.99.com/inspiredhero/"   -- 觉醒秘传
-- 时间
tAwakenPreheat_Data["Tiem"] = {}
tAwakenPreheat_Data["Tiem"][3327367] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
tAwakenPreheat_Data["Tiem"][3327368] = tActivityTime["AwakenPreheat"]["ActivityTime2new"]
tAwakenPreheat_Data["Tiem"][3327369] = tActivityTime["AwakenPreheat"]["ActivityTime2new"]
tAwakenPreheat_Data["Tiem"][3327370] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
tAwakenPreheat_Data["Tiem"][3327371] = tActivityTime["AwakenPreheat"]["ActivityTime3"]
tAwakenPreheat_Data["Tiem"][3327372] = tActivityTime["AwakenPreheat"]["ActivityTime3"]
tAwakenPreheat_Data["Tiem"][3327469] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
tAwakenPreheat_Data["Tiem"][3327470] = tActivityTime["AwakenPreheat"]["ActivityTime2"]
-- 混沌牌开启随机
tAwakenPreheat_Data["ProRandomNum"] = {}
tAwakenPreheat_Data["ProRandomNum"][1]  = {}
tAwakenPreheat_Data["ProRandomNum"][2]  = {}
tAwakenPreheat_Data["ProRandomNum"][3]  = {}
tAwakenPreheat_Data["ProRandomNum"][4]  = {}
tAwakenPreheat_Data["ProRandomNum"][5]  = {}
tAwakenPreheat_Data["ProRandomNum"][6]  = {}
tAwakenPreheat_Data["ProRandomNum"][7]  = {}
tAwakenPreheat_Data["ProRandomNum"][8]  = {}
tAwakenPreheat_Data["ProRandomNum"][9]  = {}
tAwakenPreheat_Data["ProRandomNum"][10] = {}

tAwakenPreheat_Data["RangText"] = {}

-- 排行榜模板
	--勇士
	tRankingFunc_Info[258011] = {}
	tRankingFunc_Info[258011]["Reset"] = 1
	tRankingFunc_Info[258011]["RankMode"] = 1
	tRankingFunc_Info[258011]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258011]["Global"] = {54037,54038,54039,54040}
	tRankingFunc_Info[258011]["RankNum"] = 10
	
	tRankingFunc_Info[258011]["Mail"] = {}
	tRankingFunc_Info[258011]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258011]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258011]["Mail"]["RewardTime"][1] = "00:00 00:05"
	
	tRankingFunc_Info[258011]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][1]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][2]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][3]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][4]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][5]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][6]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][7]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][8]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][9]["Content"] = tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258011]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)
	-- tRankingFunc_Info[258011]["Mail"]["Reward"][10]["Content"] =tAwakenPreheat_Text["Mail"][3]["NeiRong"]
	
	

	
	
	--战士
	tRankingFunc_Info[258012] = {}
	tRankingFunc_Info[258012]["Reset"] = 1
	tRankingFunc_Info[258012]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258012]["Global"] = {54041,54042,54043,54044}
	tRankingFunc_Info[258012]["RankMode"] = 1
	tRankingFunc_Info[258012]["RankNum"] = 10
	tRankingFunc_Info[258012]["Mail"] = {}
	tRankingFunc_Info[258012]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258012]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258012]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258012]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258012]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258012]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258012]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258012]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258012]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258012]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258012]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258012]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258012]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258012]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--道士
	tRankingFunc_Info[258013] = {}
	tRankingFunc_Info[258013]["Reset"] = 1
	tRankingFunc_Info[258013]["RankMode"] = 1
	tRankingFunc_Info[258013]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258013]["Global"] = {54045,54046,54047,54048}
	tRankingFunc_Info[258013]["RankNum"] = 10
	tRankingFunc_Info[258013]["Mail"] = {}
	tRankingFunc_Info[258013]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258013]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258013]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258013]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258013]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258013]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258013]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258013]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258013]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258013]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258013]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258013]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258013]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258013]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258013]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--海盗
	tRankingFunc_Info[258014] = {}
	tRankingFunc_Info[258014]["Reset"] = 1
	tRankingFunc_Info[258014]["RankMode"] = 1
	tRankingFunc_Info[258014]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258014]["Global"] = {54049,54050,54051,54052}
	tRankingFunc_Info[258014]["RankNum"] = 10
	tRankingFunc_Info[258014]["Mail"] = {}
	tRankingFunc_Info[258014]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258014]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258014]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258014]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258014]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258014]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258014]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258014]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258014]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258014]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258014]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258014]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258014]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258014]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258014]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--铁扇
	tRankingFunc_Info[258015] = {}
	tRankingFunc_Info[258015]["Reset"] = 1
	tRankingFunc_Info[258015]["RankMode"] = 1
	tRankingFunc_Info[258015]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258015]["Global"] = {54053,54054,54055,54056}
	tRankingFunc_Info[258015]["RankNum"] = 10
	tRankingFunc_Info[258015]["Mail"] = {}
	tRankingFunc_Info[258015]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258015]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258015]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258015]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258015]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258015]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258015]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258015]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258015]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258015]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258015]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258015]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258015]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258015]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258015]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--斗士
	tRankingFunc_Info[258016] = {}
	tRankingFunc_Info[258016]["Reset"] = 1
	tRankingFunc_Info[258016]["RankMode"] = 1
	tRankingFunc_Info[258016]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258016]["Global"] = {54057,54058,54059,54060}
	tRankingFunc_Info[258016]["RankNum"] = 10
	tRankingFunc_Info[258016]["Mail"] = {}
	tRankingFunc_Info[258016]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258016]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258016]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258016]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258016]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258016]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258016]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258016]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258016]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258016]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258016]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258016]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258016]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258016]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258016]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--弓手
	tRankingFunc_Info[258017] = {}
	tRankingFunc_Info[258017]["Reset"] = 1
	tRankingFunc_Info[258017]["RankMode"] = 1
	tRankingFunc_Info[258017]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258017]["Global"] = {54061,54062,54063,54064}
	tRankingFunc_Info[258017]["RankNum"] = 10
	tRankingFunc_Info[258017]["Mail"] = {}
	tRankingFunc_Info[258017]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258017]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258017]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258017]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258017]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258017]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258017]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258017]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258017]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258017]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258017]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258017]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258017]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258017]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258017]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--忍者
	tRankingFunc_Info[258018] = {}
	tRankingFunc_Info[258018]["Reset"] = 1
	tRankingFunc_Info[258018]["RankMode"] = 1
	tRankingFunc_Info[258018]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258018]["Global"] = {54065,54066,54067,54068}
	tRankingFunc_Info[258018]["RankNum"] = 10
	tRankingFunc_Info[258018]["Mail"] = {}
	tRankingFunc_Info[258018]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258018]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258018]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258018]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258018]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258018]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258018]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258018]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258018]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258018]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258018]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258018]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258018]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258018]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258018]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--武僧
	tRankingFunc_Info[258019] = {}
	tRankingFunc_Info[258019]["Reset"] = 1
	tRankingFunc_Info[258019]["RankMode"] = 1
	tRankingFunc_Info[258019]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[258019]["Global"] = {54069,54070,54071,54072}
	tRankingFunc_Info[258019]["RankNum"] = 10
	tRankingFunc_Info[258019]["Mail"] = {}
	tRankingFunc_Info[258019]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[258019]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[258019]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[258019]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[258019]["Mail"]["Reward"] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[258019]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[258019]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[258019]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[258019]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[258019]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[258019]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[258019]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[258019]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[258019]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[258019]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	--小龙
	tRankingFunc_Info[2580110] = {}
	tRankingFunc_Info[2580110]["Reset"] = 1
	tRankingFunc_Info[2580110]["RankMode"] = 1
	tRankingFunc_Info[2580110]["ActiveTime"] = tActivityTime["AwakenPreheat"]["ActivityTime1"]
	tRankingFunc_Info[2580110]["Global"] = {54073,54074,54075,54076}
	tRankingFunc_Info[2580110]["RankNum"] = 10
	tRankingFunc_Info[2580110]["Mail"] = {}
	tRankingFunc_Info[2580110]["Mail"]["ActiveTime"] = tActivityTime["AwakenPreheat"]["MailTime"]
	tRankingFunc_Info[2580110]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[2580110]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[2580110]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[2580110]["Mail"]["Reward"] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["ActionId"] = 575816
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][1]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],1)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["ActionId"] = 575817
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][2]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],2)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["ActionId"] = 575818
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][3]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],3)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["ActionId"] = 575819
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][4]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],4)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["ActionId"] = 575820
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][5]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],5)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["ActionId"] = 575821
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][6]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],6)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["ActionId"] = 575822
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][7]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],7)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["ActionId"] = 575823
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][8]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],8)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["ActionId"] = 575824
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][9]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],9)
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["ActionId"] = 575825
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["Title"] = tAwakenPreheat_Text["Mail"][3]["Zhuti"]
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["Sender"] = tAwakenPreheat_Text["Mail"][3]["Name"] 
	tRankingFunc_Info[2580110]["Mail"]["Reward"][10]["Content"] = string.format(tAwakenPreheat_Text["Mail"][3]["NeiRong"],10)

	
	
	
local tAwakenPreheat_Pack = {}
	-- ===小试牛刀礼盒
	-- ===索引:tAwakenPreheat_Pack[3327346]
	-- ===删除:3327346,1
	-- ===
	tAwakenPreheat_Pack[3327346] = {}
	tAwakenPreheat_Pack[3327346]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327346]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327346]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327346]["DeleteItem"][1]["Id"] = 3327346 -- 【库】小试牛刀礼盒[属性:8]
	tAwakenPreheat_Pack[3327346]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327346]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327346]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAwakenPreheat_Pack[3327346]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tAwakenPreheat_Pack[3327346]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327346]["RewardItem"][2]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tAwakenPreheat_Pack[3327346]["RewardItem"][2]["Attr"] = "0 1 3" -- 黄色神纹精粹（赠）*1
	tAwakenPreheat_Pack[3327346]["RewardStrengthValue"] = {}
	tAwakenPreheat_Pack[3327346]["RewardStrengthValue"]["Value"] = 30 -- 气力值, 【需求】30气力值
	tAwakenPreheat_Pack[3327346]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327346]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327346]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327347] = {}
	-- ===融会贯通礼盒
	-- ===索引:tAwakenPreheat_Pack[3327347]
	-- ===删除:3327347,1
	-- ===
	tAwakenPreheat_Pack[3327347]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327347]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327347]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327347]["DeleteItem"][1]["Id"] = 3327347 -- 【库】融会贯通礼盒[属性:8]
	tAwakenPreheat_Pack[3327347]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327347]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327347]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAwakenPreheat_Pack[3327347]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAwakenPreheat_Pack[3327347]["RewardStrengthValue"] = {}
	tAwakenPreheat_Pack[3327347]["RewardStrengthValue"]["Value"] = 30 -- 气力值, 【需求】30气力值
	tAwakenPreheat_Pack[3327347]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327347]["RewardItem"][2]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tAwakenPreheat_Pack[3327347]["RewardItem"][2]["Attr"] = "0 1 3" -- 黄色神纹精粹（赠）*1
	tAwakenPreheat_Pack[3327347]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327347]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327347]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327348] = {}
	-- ===游刃有余礼盒
	-- ===索引:tAwakenPreheat_Pack[3327348]
	-- ===删除:3327348,1
	-- ===
	tAwakenPreheat_Pack[3327348]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327348]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327348]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327348]["DeleteItem"][1]["Id"] = 3327348 -- 【库】游刃有余礼盒[属性:8]
	tAwakenPreheat_Pack[3327348]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327348]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327348]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAwakenPreheat_Pack[3327348]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tAwakenPreheat_Pack[3327348]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327348]["RewardItem"][2]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAwakenPreheat_Pack[3327348]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAwakenPreheat_Pack[3327348]["RewardItem"][3] = {}
	tAwakenPreheat_Pack[3327348]["RewardItem"][3]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tAwakenPreheat_Pack[3327348]["RewardItem"][3]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tAwakenPreheat_Pack[3327348]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327348]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327348]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327342] = {}
	-- ===登峰造极礼盒
	-- ===索引:tAwakenPreheat_Pack[3327342]
	-- ===删除:3327342,1
	-- ===
	tAwakenPreheat_Pack[3327342]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327342]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327342]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327342]["DeleteItem"][1]["Id"] = 3327342 -- 【库】登峰造极礼盒[属性:8]
	tAwakenPreheat_Pack[3327342]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327342]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327342]["RewardItem"][1]["Id"] = 4200008 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tAwakenPreheat_Pack[3327342]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tAwakenPreheat_Pack[3327342]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAwakenPreheat_Pack[3327342]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327342]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAwakenPreheat_Pack[3327342]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tAwakenPreheat_Pack[3327342]["RewardItem"][3] = {}
	tAwakenPreheat_Pack[3327342]["RewardItem"][3]["Id"] = 3321685 -- 50个万能神纹精粹（赠）[3321685][属性:9][叠加:0][金币:0], 【表格】50个万能神纹精粹（赠）
	tAwakenPreheat_Pack[3327342]["RewardItem"][3]["Attr"] = "0 1" -- 50个万能神纹精粹（赠）（赠）*1
	tAwakenPreheat_Pack[3327342]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327342]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327342]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327343] = {}
	-- ===超凡入圣礼盒
	-- ===索引:tAwakenPreheat_Pack[3327343]
	-- ===删除:3327343,1
	-- ===
	tAwakenPreheat_Pack[3327343]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327343]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327343]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327343]["DeleteItem"][1]["Id"] = 3327343 -- 【库】超凡入圣礼盒[属性:8]
	tAwakenPreheat_Pack[3327343]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327343]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327343]["RewardItem"][1]["Id"] = 4200007 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tAwakenPreheat_Pack[3327343]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tAwakenPreheat_Pack[3327343]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAwakenPreheat_Pack[3327343]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327343]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAwakenPreheat_Pack[3327343]["RewardItem"][2]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的晶莹星陨石*4
	tAwakenPreheat_Pack[3327343]["RewardItem"][3] = {}
	tAwakenPreheat_Pack[3327343]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tAwakenPreheat_Pack[3327343]["RewardItem"][3]["Attr"] = "0 2" -- 辉月果*2
	tAwakenPreheat_Pack[3327343]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327343]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327343]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327344] = {}
	-- ===神功盖世礼盒
	-- ===索引:tAwakenPreheat_Pack[3327344]
	-- ===删除:3327344,1
	-- ===
	tAwakenPreheat_Pack[3327344]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327344]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327344]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327344]["DeleteItem"][1]["Id"] = 3327344 -- 【库】神功盖世礼盒[属性:8]
	tAwakenPreheat_Pack[3327344]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327344]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327344]["RewardItem"][1]["Id"] = 4200006 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tAwakenPreheat_Pack[3327344]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*2
	tAwakenPreheat_Pack[3327344]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAwakenPreheat_Pack[3327344]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327344]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAwakenPreheat_Pack[3327344]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tAwakenPreheat_Pack[3327344]["RewardItem"][3] = {}
	tAwakenPreheat_Pack[3327344]["RewardItem"][3]["Id"] = 3321685 -- 50个万能神纹精粹（赠）[3321685][属性:9][叠加:0][金币:0], 【表格】50个万能神纹精粹（赠）
	tAwakenPreheat_Pack[3327344]["RewardItem"][3]["Attr"] = "0 1" -- 50个万能神纹精粹（赠）*1
	tAwakenPreheat_Pack[3327344]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327344]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327344]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327345] = {}
	-- ===撼天动地礼盒
	-- ===索引:tAwakenPreheat_Pack[3327345]
	-- ===删除:3327345,1
	-- ===
	tAwakenPreheat_Pack[3327345]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327345]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327345]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327345]["DeleteItem"][1]["Id"] = 3327345 -- 【库】撼天动地礼盒[属性:8]
	tAwakenPreheat_Pack[3327345]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327345]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327345]["RewardItem"][1]["Id"] = 4200005 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tAwakenPreheat_Pack[3327345]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*2
	tAwakenPreheat_Pack[3327345]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAwakenPreheat_Pack[3327345]["RewardItem"][2] = {}
	tAwakenPreheat_Pack[3327345]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAwakenPreheat_Pack[3327345]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tAwakenPreheat_Pack[3327345]["RewardItem"][3] = {}
	tAwakenPreheat_Pack[3327345]["RewardItem"][3]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAwakenPreheat_Pack[3327345]["RewardItem"][3]["Attr"] = "0 3" -- 人参果*3
	tAwakenPreheat_Pack[3327345]["RewardStrengthValue"] = {}
	tAwakenPreheat_Pack[3327345]["RewardStrengthValue"]["Value"] = 400 -- 气力值, 【需求】400气力值
	tAwakenPreheat_Pack[3327345]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327345]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327345]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327367] = {}
	-- ===微光星陨石礼盒
	-- ===索引:tAwakenPreheat_Pack[3327367]
	-- ===删除:3327367,1
	-- ===
	tAwakenPreheat_Pack[3327367]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327367]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327367]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327367]["DeleteItem"][1]["Id"] = 3327367 -- 【库】微光星陨石礼盒[属性:8]
	tAwakenPreheat_Pack[3327367]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327367]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327367]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAwakenPreheat_Pack[3327367]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tAwakenPreheat_Pack[3327367]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327367]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327367]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327368] = {}
	-- ===明亮星陨石礼盒
	-- ===索引:tAwakenPreheat_Pack[3327368]
	-- ===删除:3327368,1
	-- ===
	tAwakenPreheat_Pack[3327368]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327368]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327368]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327368]["DeleteItem"][1]["Id"] = 3327368 -- 【库】明亮星陨石礼盒[属性:8]
	tAwakenPreheat_Pack[3327368]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327368]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327368]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAwakenPreheat_Pack[3327368]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAwakenPreheat_Pack[3327368]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327368]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327368]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327369] = {}
	-- ===+3赤炼石（赠）礼盒
	-- ===索引:tAwakenPreheat_Pack[3327369]
	-- ===删除:3327369,1
	-- ===
	tAwakenPreheat_Pack[3327369]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327369]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327369]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327369]["DeleteItem"][1]["Id"] = 3327369 -- 【库】+3赤炼石（赠）礼盒[属性:8]
	tAwakenPreheat_Pack[3327369]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327369]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327369]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石
	tAwakenPreheat_Pack[3327369]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tAwakenPreheat_Pack[3327369]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327369]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327369]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327370] = {}
	-- ===+4赤炼石（赠）礼盒
	-- ===索引:tAwakenPreheat_Pack[3327370]
	-- ===删除:3327370,1
	-- ===
	tAwakenPreheat_Pack[3327370]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327370]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327370]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327370]["DeleteItem"][1]["Id"] = 3327370 -- 【库】+4赤炼石（赠）礼盒[属性:8]
	tAwakenPreheat_Pack[3327370]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327370]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327370]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】‘+4赤炼石
	tAwakenPreheat_Pack[3327370]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tAwakenPreheat_Pack[3327370]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327370]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327370]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327371] = {}
	-- ===微光星陨石礼盒
	-- ===索引:tAwakenPreheat_Pack[3327371]
	-- ===删除:3327371,1
	-- ===
	tAwakenPreheat_Pack[3327371]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327371]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327371]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327371]["DeleteItem"][1]["Id"] = 3327371 -- 【库】微光星陨石礼盒[属性:8]
	tAwakenPreheat_Pack[3327371]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327371]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327371]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAwakenPreheat_Pack[3327371]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tAwakenPreheat_Pack[3327371]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327371]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327371]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327372] = {}
	-- ===晶莹星陨石礼盒
	-- ===索引:tAwakenPreheat_Pack[3327372]
	-- ===删除:3327372,1
	-- ===
	tAwakenPreheat_Pack[3327372]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327372]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327372]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327372]["DeleteItem"][1]["Id"] = 3327372 -- 【库】晶莹星陨石礼盒[属性:8]
	tAwakenPreheat_Pack[3327372]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327372]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327372]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAwakenPreheat_Pack[3327372]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAwakenPreheat_Pack[3327372]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327372]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327372]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327338] = {}
	-- ===混沌牌--勇士
	-- ===索引: tAwakenPreheat_Pack[3327338][1]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][1] = {}
	tAwakenPreheat_Pack[3327338][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][1]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][1]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][1]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][1][1] = {}
	tAwakenPreheat_Pack[3327338][1][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][1]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][1][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][1][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][2] = {}
	tAwakenPreheat_Pack[3327338][1][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][1][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][3] = {}
	tAwakenPreheat_Pack[3327338][1][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][1][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][4] = {}
	tAwakenPreheat_Pack[3327338][1][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][1][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][5] = {}
	tAwakenPreheat_Pack[3327338][1][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][1][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][6] = {}
	tAwakenPreheat_Pack[3327338][1][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][1][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][7] = {}
	tAwakenPreheat_Pack[3327338][1][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][1][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][8] = {}
	tAwakenPreheat_Pack[3327338][1][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][1][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][9] = {}
	tAwakenPreheat_Pack[3327338][1][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][1][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][1][10] = {}
	tAwakenPreheat_Pack[3327338][1][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][1][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][1][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][1][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][1][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][1][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][2] = {}
	-- ===混沌牌--战士
	-- ===索引: tAwakenPreheat_Pack[3327338][2]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][2]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][2]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][2]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][1] = {}
	tAwakenPreheat_Pack[3327338][2][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][2][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][2][2] = {}
	tAwakenPreheat_Pack[3327338][2][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][2]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][2][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][2][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][3] = {}
	tAwakenPreheat_Pack[3327338][2][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][2][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][4] = {}
	tAwakenPreheat_Pack[3327338][2][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][2][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][5] = {}
	tAwakenPreheat_Pack[3327338][2][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][2][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][6] = {}
	tAwakenPreheat_Pack[3327338][2][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][2][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][2][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][7] = {}
	tAwakenPreheat_Pack[3327338][2][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][2][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][2][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][8] = {}
	tAwakenPreheat_Pack[3327338][2][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][2][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][2][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][9] = {}
	tAwakenPreheat_Pack[3327338][2][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][2][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][2][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][2][10] = {}
	tAwakenPreheat_Pack[3327338][2][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][2][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][2][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][2][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][2][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][2][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][2][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][3] = {}
	-- ===混沌牌--道士
	-- ===索引: tAwakenPreheat_Pack[3327338][3]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][3]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][3]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][3]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][1] = {}
	tAwakenPreheat_Pack[3327338][3][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][3][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][2] = {}
	tAwakenPreheat_Pack[3327338][3][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][3][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][3][3] = {}
	tAwakenPreheat_Pack[3327338][3][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][3]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][3][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][3][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][4] = {}
	tAwakenPreheat_Pack[3327338][3][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][3][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][3][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][5] = {}
	tAwakenPreheat_Pack[3327338][3][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][3][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][3][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][6] = {}
	tAwakenPreheat_Pack[3327338][3][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][3][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][3][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][7] = {}
	tAwakenPreheat_Pack[3327338][3][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][3][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][3][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][8] = {}
	tAwakenPreheat_Pack[3327338][3][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][3][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][3][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][9] = {}
	tAwakenPreheat_Pack[3327338][3][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][3][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][3][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][3][10] = {}
	tAwakenPreheat_Pack[3327338][3][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][3][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][3][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][3][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][3][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][3][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][3][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][4] = {}
	-- ===混沌牌--海盗
	-- ===索引: tAwakenPreheat_Pack[3327338][4]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][4]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][4]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][4]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][4]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][1] = {}
	tAwakenPreheat_Pack[3327338][4][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][4][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][2] = {}
	tAwakenPreheat_Pack[3327338][4][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][4][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][3] = {}
	tAwakenPreheat_Pack[3327338][4][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][4][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][4][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][4][4] = {}
	tAwakenPreheat_Pack[3327338][4][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][4]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][4][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][4][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][4][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][5] = {}
	tAwakenPreheat_Pack[3327338][4][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][4][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][4][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][6] = {}
	tAwakenPreheat_Pack[3327338][4][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][4][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][4][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][7] = {}
	tAwakenPreheat_Pack[3327338][4][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][4][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][4][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][8] = {}
	tAwakenPreheat_Pack[3327338][4][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][4][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][4][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][9] = {}
	tAwakenPreheat_Pack[3327338][4][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][4][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][4][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][4][10] = {}
	tAwakenPreheat_Pack[3327338][4][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][4][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][4][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][4][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][4][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][4][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][4][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][5] = {}
	-- ===混沌牌--铁扇
	-- ===索引: tAwakenPreheat_Pack[3327338][5]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][5]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][5]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][5]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][5]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][1] = {}
	tAwakenPreheat_Pack[3327338][5][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][5][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][5][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][2] = {}
	tAwakenPreheat_Pack[3327338][5][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][5][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][5][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][3] = {}
	tAwakenPreheat_Pack[3327338][5][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][5][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][5][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][4] = {}
	tAwakenPreheat_Pack[3327338][5][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][5][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][5][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][5][5] = {}
	tAwakenPreheat_Pack[3327338][5][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][5]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][5][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][5][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][5][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][6] = {}
	tAwakenPreheat_Pack[3327338][5][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][5][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][5][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][7] = {}
	tAwakenPreheat_Pack[3327338][5][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][5][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][5][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][8] = {}
	tAwakenPreheat_Pack[3327338][5][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][5][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][5][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][9] = {}
	tAwakenPreheat_Pack[3327338][5][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][5][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][5][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][5][10] = {}
	tAwakenPreheat_Pack[3327338][5][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][5][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][5][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][5][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][5][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][5][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][5][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][6] = {}
	-- ===混沌牌--斗士
	-- ===索引: tAwakenPreheat_Pack[3327338][6]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][6]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][6]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][6]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][6]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][1] = {}
	tAwakenPreheat_Pack[3327338][6][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][6][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][6][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][2] = {}
	tAwakenPreheat_Pack[3327338][6][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][6][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][6][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][3] = {}
	tAwakenPreheat_Pack[3327338][6][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][6][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][6][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][4] = {}
	tAwakenPreheat_Pack[3327338][6][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][6][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][6][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][5] = {}
	tAwakenPreheat_Pack[3327338][6][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][6][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][6][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][6][6] = {}
	tAwakenPreheat_Pack[3327338][6][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][6]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][6][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][6][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][6][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][7] = {}
	tAwakenPreheat_Pack[3327338][6][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][6][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][6][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][8] = {}
	tAwakenPreheat_Pack[3327338][6][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][6][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][6][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][9] = {}
	tAwakenPreheat_Pack[3327338][6][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][6][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][6][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][6][10] = {}
	tAwakenPreheat_Pack[3327338][6][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][6][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][6][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][6][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][6][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][6][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][6][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][7] = {}
	-- ===混沌牌--弓手
	-- ===索引: tAwakenPreheat_Pack[3327338][7]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][7]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][7]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][7]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][7]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][1] = {}
	tAwakenPreheat_Pack[3327338][7][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][7][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][7][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][2] = {}
	tAwakenPreheat_Pack[3327338][7][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][7][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][7][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][3] = {}
	tAwakenPreheat_Pack[3327338][7][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][7][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][7][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][4] = {}
	tAwakenPreheat_Pack[3327338][7][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][7][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][7][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][5] = {}
	tAwakenPreheat_Pack[3327338][7][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][7][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][7][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][6] = {}
	tAwakenPreheat_Pack[3327338][7][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][7][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][7][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][7][7] = {}
	tAwakenPreheat_Pack[3327338][7][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][7]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][7][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][7][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][7][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][8] = {}
	tAwakenPreheat_Pack[3327338][7][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][7][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][7][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][9] = {}
	tAwakenPreheat_Pack[3327338][7][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][7][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][7][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][7][10] = {}
	tAwakenPreheat_Pack[3327338][7][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][7][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][7][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][7][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][7][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][7][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][7][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][8] = {}
	-- ===混沌牌--忍者
	-- ===索引: tAwakenPreheat_Pack[3327338][8]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][8]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][8]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][8]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][8]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][1] = {}
	tAwakenPreheat_Pack[3327338][8][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][8][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][8][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][2] = {}
	tAwakenPreheat_Pack[3327338][8][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][8][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][8][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][3] = {}
	tAwakenPreheat_Pack[3327338][8][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][8][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][8][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][4] = {}
	tAwakenPreheat_Pack[3327338][8][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][8][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][8][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][5] = {}
	tAwakenPreheat_Pack[3327338][8][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][8][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][8][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][6] = {}
	tAwakenPreheat_Pack[3327338][8][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][8][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][8][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][7] = {}
	tAwakenPreheat_Pack[3327338][8][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][8][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][8][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][8][8] = {}
	tAwakenPreheat_Pack[3327338][8][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][8]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][8][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][8][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][8][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][9] = {}
	tAwakenPreheat_Pack[3327338][8][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][8][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][8][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][8][10] = {}
	tAwakenPreheat_Pack[3327338][8][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][8][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][8][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][8][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][8][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][8][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][8][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][9] = {}
	-- ===混沌牌--武僧
	-- ===索引: tAwakenPreheat_Pack[3327338][9]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][9]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][9]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][9]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][9]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][1] = {}
	tAwakenPreheat_Pack[3327338][9][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][9][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][9][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][2] = {}
	tAwakenPreheat_Pack[3327338][9][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][9][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][9][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][3] = {}
	tAwakenPreheat_Pack[3327338][9][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][9][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][9][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][4] = {}
	tAwakenPreheat_Pack[3327338][9][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][9][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][9][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][5] = {}
	tAwakenPreheat_Pack[3327338][9][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][9][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][9][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][6] = {}
	tAwakenPreheat_Pack[3327338][9][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][9][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][9][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][7] = {}
	tAwakenPreheat_Pack[3327338][9][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][9][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][9][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][8] = {}
	tAwakenPreheat_Pack[3327338][9][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][9][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][9][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][9][9] = {}
	tAwakenPreheat_Pack[3327338][9][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][9]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][9][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][9][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][9][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][9][10] = {}
	tAwakenPreheat_Pack[3327338][9][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][9][10]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][9][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][9][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][9][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][9][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][9][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327338][10] = {}
	-- ===混沌牌--小龙
	-- ===索引: tAwakenPreheat_Pack[3327338][10]
	-- ===删除:3327338,1
	-- ===
	tAwakenPreheat_Pack[3327338][10]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAwakenPreheat_Pack[3327338][10]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327338][10]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10]["DeleteItem"][1]["Id"] = 3327338 -- 【库】混沌牌[属性:8]
	tAwakenPreheat_Pack[3327338][10]["LogId"] = 12001794
	-- 勇士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][1] = {}
	tAwakenPreheat_Pack[3327338][10][1]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][1]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][1]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][1]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][1]["RewardItem"][1]["Id"] = 3327328 -- 勇士侠义牌[3327328][属性:8][叠加:10000][金币:0], 【表格】勇士侠义牌
	tAwakenPreheat_Pack[3327338][10][1]["RewardItem"][1]["Attr"] = "0 1" -- 勇士侠义牌*1
	tAwakenPreheat_Pack[3327338][10][1]["Item_1"] = 1
	-- 战士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][2] = {}
	tAwakenPreheat_Pack[3327338][10][2]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][2]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][2]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][2]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][2]["RewardItem"][1]["Id"] = 3327329 -- 战士侠义牌[3327329][属性:8][叠加:10000][金币:0], 【表格】战士侠义牌
	tAwakenPreheat_Pack[3327338][10][2]["RewardItem"][1]["Attr"] = "0 1" -- 战士侠义牌*1
	tAwakenPreheat_Pack[3327338][10][2]["Item_1"] = 2
	-- 道士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][3] = {}
	tAwakenPreheat_Pack[3327338][10][3]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][3]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][3]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][3]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][3]["RewardItem"][1]["Id"] = 3327330 -- 道士侠义牌[3327330][属性:8][叠加:10000][金币:0], 【表格】道士侠义牌
	tAwakenPreheat_Pack[3327338][10][3]["RewardItem"][1]["Attr"] = "0 1" -- 道士侠义牌*1
	tAwakenPreheat_Pack[3327338][10][3]["Item_1"] = 3
	-- 海盗侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][4] = {}
	tAwakenPreheat_Pack[3327338][10][4]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][4]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][4]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][4]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][4]["RewardItem"][1]["Id"] = 3327331 -- 海盗侠义牌[3327331][属性:8][叠加:10000][金币:0], 【表格】海盗侠义牌
	tAwakenPreheat_Pack[3327338][10][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗侠义牌*1
	tAwakenPreheat_Pack[3327338][10][4]["Item_1"] = 4
	-- 铁扇侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][5] = {}
	tAwakenPreheat_Pack[3327338][10][5]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][5]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][5]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][5]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][5]["RewardItem"][1]["Id"] = 3327332 -- 铁扇侠义牌[3327332][属性:8][叠加:10000][金币:0], 【表格】铁扇侠义牌
	tAwakenPreheat_Pack[3327338][10][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇侠义牌*1
	tAwakenPreheat_Pack[3327338][10][5]["Item_1"] = 5
	-- 斗士侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][6] = {}
	tAwakenPreheat_Pack[3327338][10][6]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][6]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][6]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][6]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][6]["RewardItem"][1]["Id"] = 3327333 -- 斗士侠义牌[3327333][属性:8][叠加:10000][金币:0], 【表格】斗士侠义牌
	tAwakenPreheat_Pack[3327338][10][6]["RewardItem"][1]["Attr"] = "0 1" -- 斗士侠义牌*1
	tAwakenPreheat_Pack[3327338][10][6]["Item_1"] = 6
	-- 弓手侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][7] = {}
	tAwakenPreheat_Pack[3327338][10][7]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][7]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][7]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][7]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][7]["RewardItem"][1]["Id"] = 3327334 -- 弓手侠义牌[3327334][属性:8][叠加:10000][金币:0], 【表格】弓手侠义牌
	tAwakenPreheat_Pack[3327338][10][7]["RewardItem"][1]["Attr"] = "0 1" -- 弓手侠义牌*1
	tAwakenPreheat_Pack[3327338][10][7]["Item_1"] = 7
	-- 忍者侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][8] = {}
	tAwakenPreheat_Pack[3327338][10][8]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][8]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][8]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][8]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][8]["RewardItem"][1]["Id"] = 3327335 -- 忍者侠义牌[3327335][属性:8][叠加:10000][金币:0], 【表格】忍者侠义牌
	tAwakenPreheat_Pack[3327338][10][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍者侠义牌*1
	tAwakenPreheat_Pack[3327338][10][8]["Item_1"] = 8
	-- 武僧侠义牌 + 给指定数值 - 8%
	tAwakenPreheat_Pack[3327338][10][9] = {}
	tAwakenPreheat_Pack[3327338][10][9]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][9]["ItemChance"] = 800
	tAwakenPreheat_Pack[3327338][10][9]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][9]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][9]["RewardItem"][1]["Id"] = 3327336 -- 武僧侠义牌[3327336][属性:8][叠加:10000][金币:0], 【表格】武僧侠义牌
	tAwakenPreheat_Pack[3327338][10][9]["RewardItem"][1]["Attr"] = "0 1" -- 武僧侠义牌*1
	tAwakenPreheat_Pack[3327338][10][9]["Item_1"] = 9
	-- 小龙侠义牌 + 给指定数值 - 28%
	tAwakenPreheat_Pack[3327338][10][10] = {}
	tAwakenPreheat_Pack[3327338][10][10]["RandomItemChanceType"] = 2
	tAwakenPreheat_Pack[3327338][10][10]["ItemChance"] = 2800
	tAwakenPreheat_Pack[3327338][10][10]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327338][10][10]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327338][10][10]["RewardItem"][1]["Id"] = 3327337 -- 小龙侠义牌[3327337][属性:8][叠加:10000][金币:0], 【表格】小龙侠义牌
	tAwakenPreheat_Pack[3327338][10][10]["RewardItem"][1]["Attr"] = "0 1" -- 小龙侠义牌*1
	tAwakenPreheat_Pack[3327338][10][10]["Item_1"] = 10


	tAwakenPreheat_Pack[3327339] = {}
	-- ===购买秘典拓本
	-- ===索引:tAwakenPreheat_Pack[3327339]
	-- ===
	tAwakenPreheat_Pack[3327339]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327339]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327339]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327339]["RewardItem"][1]["Id"] = 3327339 -- 秘典拓本[3327339][属性:8][叠加:100][金币:0], 【表格】秘典拓本
	tAwakenPreheat_Pack[3327339]["RewardItem"][1]["Attr"] = "0 1" -- 秘典拓本*1
	tAwakenPreheat_Pack[3327339]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327339]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327339]["RewardEffect"]["Effect"] = "angelwing"


	-- ===免费强炼丹礼盒
	-- ===索引:tAwakenPreheat_Pack[3327469]
	-- ===删除:3327469,1
	-- ===
	tAwakenPreheat_Pack[3327469] = {}
	tAwakenPreheat_Pack[3327469]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327469]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327469]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327469]["DeleteItem"][1]["Id"] = 3327469 -- 【库】FavoredTrainingPillPack[属性:9]
	tAwakenPreheat_Pack[3327469]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327469]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327469]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】50个免费强炼丹（赠）
	tAwakenPreheat_Pack[3327469]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill（赠）*50（[错误]物品数量超10个）
	tAwakenPreheat_Pack[3327469]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327469]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327469]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327471] = {}
	-- ===500修为值礼盒
	-- ===索引:tAwakenPreheat_Pack[3327471]
	-- ===删除:3327471,1
	-- ===
	tAwakenPreheat_Pack[3327471]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327471]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327471]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327471]["DeleteItem"][1]["Id"] = 3327471 -- 【库】500PotencyPointsPack[属性:9]
	tAwakenPreheat_Pack[3327471]["RewardRepairValue"] = {}
	tAwakenPreheat_Pack[3327471]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值礼盒
	tAwakenPreheat_Pack[3327471]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327471]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327471]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327473] = {}
	-- ===1000修为值礼盒
	-- ===索引:tAwakenPreheat_Pack[3327473]
	-- ===删除:3327473,1
	-- ===
	tAwakenPreheat_Pack[3327473]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327473]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327473]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327473]["DeleteItem"][1]["Id"] = 3327473 -- 【库】1000PotencyPointsPack[属性:9]
	tAwakenPreheat_Pack[3327473]["RewardRepairValue"] = {}
	tAwakenPreheat_Pack[3327473]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】1000修为值礼盒
	tAwakenPreheat_Pack[3327473]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327473]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327473]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800020]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1] = {}
	tAwakenPreheat_Pack[3327470][1][800020] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800020]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800020]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["RewardItem"][1]["Id"] = 800020 -- MonsterSaber[800020][属性:0][叠加:0][金币:0], 【表格】鬼狱狂刀（MonsterSaber）（赠）
	tAwakenPreheat_Pack[3327470][1][800020]["RewardItem"][1]["Attr"] = "0 1 3" -- MonsterSaber（赠）*1
	tAwakenPreheat_Pack[3327470][1][800020]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800020]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800111] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800111]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800111]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800111]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800111]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800111]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800111]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800111]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800111]["RewardItem"][1]["Id"] = 800111 -- SkyHammer[800111][属性:0][叠加:0][金币:0], 【表格】SkyHammer（赠）
	tAwakenPreheat_Pack[3327470][1][800111]["RewardItem"][1]["Attr"] = "0 1 3" -- SkyHammer（赠）*1
	tAwakenPreheat_Pack[3327470][1][800111]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800111]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800111]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800215] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800215]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800215]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800215]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800215]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800215]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800215]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800215]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800215]["RewardItem"][1]["Id"] = 800215 -- SkyHalberd[800215][属性:0][叠加:0][金币:0], 【表格】SkyHalberd（赠）
	tAwakenPreheat_Pack[3327470][1][800215]["RewardItem"][1]["Attr"] = "0 1 3" -- SkyHalberd（赠）*1
	tAwakenPreheat_Pack[3327470][1][800215]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800215]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800811] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800811]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800811]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800811]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800811]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800811]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800811]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800811]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800811]["RewardItem"][1]["Id"] = 800811 -- RepentRapier[800811][属性:0][叠加:0][金币:0], 【表格】RepentRapier（赠）
	tAwakenPreheat_Pack[3327470][1][800811]["RewardItem"][1]["Attr"] = "0 1 3" -- RepentRapier（赠）*1
	tAwakenPreheat_Pack[3327470][1][800811]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800811]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800810] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800810]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800810]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800810]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800810]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800810]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800810]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800810]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800810]["RewardItem"][1]["Id"] = 800810 -- DeathPistol[800810][属性:0][叠加:0][金币:0], 【表格】DeathPistol（赠）
	tAwakenPreheat_Pack[3327470][1][800810]["RewardItem"][1]["Attr"] = "0 1 3" -- DeathPistol（赠）*1
	tAwakenPreheat_Pack[3327470][1][800810]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800810]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800810]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800142] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800142]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800142]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800142]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800142]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800142]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800142]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800142]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800142]["RewardItem"][1]["Id"] = 800142 -- ShadowKatana[800142][属性:0][叠加:0][金币:0], 【表格】ShadowKatana（赠）
	tAwakenPreheat_Pack[3327470][1][800142]["RewardItem"][1]["Attr"] = "0 1 3" -- ShadowKatana（赠）*1
	tAwakenPreheat_Pack[3327470][1][800142]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800142]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800142]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800917] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800917]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800917]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800917]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800917]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800917]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800917]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800917]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800917]["RewardItem"][1]["Id"] = 800917 -- GhostKnife[800917][属性:0][叠加:0][金币:0], 【表格】GhostKnife（赠）
	tAwakenPreheat_Pack[3327470][1][800917]["RewardItem"][1]["Attr"] = "0 1 3" -- GhostKnife（赠）*1
	tAwakenPreheat_Pack[3327470][1][800917]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800917]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800255] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800255]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800255]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800255]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800255]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800255]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800255]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800255]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800255]["RewardItem"][1]["Id"] = 800255 -- DemonScythe[800255][属性:0][叠加:0][金币:0], 【表格】DemonScythe（赠）
	tAwakenPreheat_Pack[3327470][1][800255]["RewardItem"][1]["Attr"] = "0 1 3" -- DemonScythe（赠）*1
	tAwakenPreheat_Pack[3327470][1][800255]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800255]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800255]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800422] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800422]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800422]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800422]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800422]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800422]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800422]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800422]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800422]["RewardItem"][1]["Id"] = 800422 -- SpiritShield[800422][属性:0][叠加:0][金币:0], 【表格】SpiritShield（赠）
	tAwakenPreheat_Pack[3327470][1][800422]["RewardItem"][1]["Attr"] = "0 1 3" -- SpiritShield（赠）*1
	tAwakenPreheat_Pack[3327470][1][800422]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800422]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800522] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800522]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800522]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800522]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800522]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800522]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800522]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800522]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800522]["RewardItem"][1]["Id"] = 800522 -- TimeBacksword[800522][属性:0][叠加:0][金币:0], 【表格】TimeBacksword（赠）
	tAwakenPreheat_Pack[3327470][1][800522]["RewardItem"][1]["Attr"] = "0 1 3" -- TimeBacksword（赠）*1
	tAwakenPreheat_Pack[3327470][1][800522]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800522]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800618] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800618]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800618]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800618]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800618]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800618]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800618]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800618]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800618]["RewardItem"][1]["Id"] = 800618 -- SunBow[800618][属性:0][叠加:0][金币:0], 【表格】SunBow（赠）
	tAwakenPreheat_Pack[3327470][1][800618]["RewardItem"][1]["Attr"] = "0 1 3" -- SunBow（赠）*1
	tAwakenPreheat_Pack[3327470][1][800618]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800618]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][800725] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][800725]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][800725]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][800725]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800725]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800725]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][800725]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][800725]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][800725]["RewardItem"][1]["Id"] = 800725 -- BuddaBeads[800725][属性:0][叠加:0][金币:0], 【表格】BuddaBeads（赠）
	tAwakenPreheat_Pack[3327470][1][800725]["RewardItem"][1]["Attr"] = "0 1 3" -- BuddaBeads（赠）*1
	tAwakenPreheat_Pack[3327470][1][800725]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][800725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][800725]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][801004] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][801004]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][801004]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][801004]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][801004]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][801004]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][801004]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][801004]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][801004]["RewardItem"][1]["Id"] = 801004 -- WarCraze[801004][属性:0][叠加:0][金币:0], 【表格】WarCraze（赠）
	tAwakenPreheat_Pack[3327470][1][801004]["RewardItem"][1]["Attr"] = "0 1 3" -- WarCraze（赠）*1
	tAwakenPreheat_Pack[3327470][1][801004]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][801004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][801004]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][820073] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][820073]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][820073]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][820073]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820073]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820073]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][820073]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820073]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820073]["RewardItem"][1]["Id"] = 820073 -- MoonHeadgear[820073][属性:0][叠加:0][金币:0], 【表格】MoonHeadgear（赠）
	tAwakenPreheat_Pack[3327470][1][820073]["RewardItem"][1]["Attr"] = "0 1 3" -- MoonHeadgear（赠）*1
	tAwakenPreheat_Pack[3327470][1][820073]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][820073]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][820073]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][820074] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][820074]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][820074]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][820074]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820074]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820074]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][820074]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820074]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820074]["RewardItem"][1]["Id"] = 820074 -- SunHeadgear[820074][属性:0][叠加:0][金币:0], 【表格】SunHeadgear（赠）
	tAwakenPreheat_Pack[3327470][1][820074]["RewardItem"][1]["Attr"] = "0 1 3" -- SunHeadgear（赠）*1
	tAwakenPreheat_Pack[3327470][1][820074]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][820074]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][820074]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][820075] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][820075]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][820075]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][820075]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820075]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820075]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][820075]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820075]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820075]["RewardItem"][1]["Id"] = 820075 -- StarHeadgear[820075][属性:0][叠加:0][金币:0], 【表格】StarHeadgear（赠）
	tAwakenPreheat_Pack[3327470][1][820075]["RewardItem"][1]["Attr"] = "0 1 3" -- StarHeadgear（赠）*1
	tAwakenPreheat_Pack[3327470][1][820075]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][820075]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][820075]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][820076] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][820076]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][820076]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][820076]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820076]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820076]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][820076]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][820076]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][820076]["RewardItem"][1]["Id"] = 820076 -- IceHeadgear[820076][属性:0][叠加:0][金币:0], 【表格】IceHeadgear（赠）
	tAwakenPreheat_Pack[3327470][1][820076]["RewardItem"][1]["Attr"] = "0 1 3" -- IceHeadgear（赠）*1
	tAwakenPreheat_Pack[3327470][1][820076]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][820076]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][820076]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][822071] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][822071]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][822071]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][822071]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][822071]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][822071]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][822071]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][822071]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][822071]["RewardItem"][1]["Id"] = 822071 -- NetherArmor[822071][属性:0][叠加:0][金币:0], 【表格】NetherArmor（赠）
	tAwakenPreheat_Pack[3327470][1][822071]["RewardItem"][1]["Attr"] = "0 1 3" -- NetherArmor（赠）*1
	tAwakenPreheat_Pack[3327470][1][822071]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][822071]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][822071]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][822072] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][822072]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][822072]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][822072]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][822072]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][822072]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][822072]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][822072]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][822072]["RewardItem"][1]["Id"] = 822072 -- EclipseArmor[822072][属性:0][叠加:0][金币:0], 【表格】EclipseArmor（赠）
	tAwakenPreheat_Pack[3327470][1][822072]["RewardItem"][1]["Attr"] = "0 1 3" -- EclipseArmor（赠）*1
	tAwakenPreheat_Pack[3327470][1][822072]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][822072]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][822072]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][821034] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][821034]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][821034]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][821034]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][821034]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][821034]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][821034]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][821034]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][821034]["RewardItem"][1]["Id"] = 821034 -- FervorBag[821034][属性:0][叠加:0][金币:0], 【表格】FervorBag（赠）
	tAwakenPreheat_Pack[3327470][1][821034]["RewardItem"][1]["Attr"] = "0 1 3" -- FervorBag（赠）*1
	tAwakenPreheat_Pack[3327470][1][821034]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][821034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][821034]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][821033] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][821033]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][821033]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][821033]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][821033]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][821033]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][821033]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][821033]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][821033]["RewardItem"][1]["Id"] = 821033 -- HeavenNecklace[821033][属性:0][叠加:0][金币:0], 【表格】HeavenNecklace（赠）
	tAwakenPreheat_Pack[3327470][1][821033]["RewardItem"][1]["Attr"] = "0 1 3" -- HeavenNecklace（赠）*1
	tAwakenPreheat_Pack[3327470][1][821033]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][821033]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][821033]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][823058] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][823058]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][823058]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][823058]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823058]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823058]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][823058]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823058]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823058]["RewardItem"][1]["Id"] = 823058 -- CraneRing[823058][属性:0][叠加:0][金币:0], 【表格】CraneRing（赠）
	tAwakenPreheat_Pack[3327470][1][823058]["RewardItem"][1]["Attr"] = "0 1 3" -- CraneRing（赠）*1
	tAwakenPreheat_Pack[3327470][1][823058]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][823058]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][823058]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][823059] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][823059]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][823059]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][823059]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823059]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823059]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][823059]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823059]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823059]["RewardItem"][1]["Id"] = 823059 -- DragonRing[823059][属性:0][叠加:0][金币:0], 【表格】DragonRing（赠）
	tAwakenPreheat_Pack[3327470][1][823059]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonRing（赠）*1
	tAwakenPreheat_Pack[3327470][1][823059]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][823059]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][823059]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][823061] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][823061]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][823061]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][823061]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823061]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823061]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][823061]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823061]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823061]["RewardItem"][1]["Id"] = 823061 -- LionHeavyRing[823061][属性:0][叠加:0][金币:0], 【表格】LionHeavyRing（赠）
	tAwakenPreheat_Pack[3327470][1][823061]["RewardItem"][1]["Attr"] = "0 1 3" -- LionHeavyRing（赠）*1
	tAwakenPreheat_Pack[3327470][1][823061]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][823061]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][823061]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][823062] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][823062]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][823062]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][823062]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823062]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823062]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][823062]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823062]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823062]["RewardItem"][1]["Id"] = 823062 -- TigerHeavyRing[823062][属性:0][叠加:0][金币:0], 【表格】TigerHeavyRing（赠）
	tAwakenPreheat_Pack[3327470][1][823062]["RewardItem"][1]["Attr"] = "0 1 3" -- TigerHeavyRing（赠）*1
	tAwakenPreheat_Pack[3327470][1][823062]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][823062]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][823062]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][823060] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][823060]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][823060]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][823060]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823060]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823060]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][823060]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][823060]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][823060]["RewardItem"][1]["Id"] = 823060 -- RainbowBracelet[823060][属性:0][叠加:0][金币:0], 【表格】RainbowBracelet（赠）
	tAwakenPreheat_Pack[3327470][1][823060]["RewardItem"][1]["Attr"] = "0 1 3" -- RainbowBracelet（赠）*1
	tAwakenPreheat_Pack[3327470][1][823060]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][823060]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][823060]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][824018] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][824018]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][824018]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][824018]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824018]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824018]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][824018]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824018]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824018]["RewardItem"][1]["Id"] = 824018 -- FoxBoots[824018][属性:0][叠加:0][金币:0], 【表格】FoxBoots（赠）
	tAwakenPreheat_Pack[3327470][1][824018]["RewardItem"][1]["Attr"] = "0 1 3" -- FoxBoots（赠）*1
	tAwakenPreheat_Pack[3327470][1][824018]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][824018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][824018]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][824019] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][824019]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][824019]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][824019]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824019]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824019]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][824019]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824019]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824019]["RewardItem"][1]["Id"] = 824019 -- DragonBoots[824019][属性:0][叠加:0][金币:0], 【表格】DragonBoots（赠）
	tAwakenPreheat_Pack[3327470][1][824019]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBoots（赠）*1
	tAwakenPreheat_Pack[3327470][1][824019]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][824019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][824019]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][1][824020] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][1][824020]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][1][824020]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][1][824020]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824020]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824020]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][1][824020]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][1][824020]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][1][824020]["RewardItem"][1]["Id"] = 824020 -- CraneBoots[824020][属性:0][叠加:0][金币:0], 【表格】CraneBoots（赠）
	tAwakenPreheat_Pack[3327470][1][824020]["RewardItem"][1]["Attr"] = "0 1 3" -- CraneBoots（赠）*1
	tAwakenPreheat_Pack[3327470][1][824020]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][1][824020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][1][824020]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800020]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800020] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800020]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800020]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["RewardItem"][1]["Id"] = 800020 -- MonsterSaber[800020][属性:0][叠加:0][金币:0], 【表格】鬼狱狂刀（MonsterSaber）
	tAwakenPreheat_Pack[3327470][2][800020]["RewardItem"][1]["Attr"] = "0 1" -- MonsterSaber*1
	tAwakenPreheat_Pack[3327470][2][800020]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800020]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800111] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800111]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800111]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800111]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800111]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800111]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800111]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800111]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800111]["RewardItem"][1]["Id"] = 800111 -- SkyHammer[800111][属性:0][叠加:0][金币:0], 【表格】SkyHammer
	tAwakenPreheat_Pack[3327470][2][800111]["RewardItem"][1]["Attr"] = "0 1" -- SkyHammer*1
	tAwakenPreheat_Pack[3327470][2][800111]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800111]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800111]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800215] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800215]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800215]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800215]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800215]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800215]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800215]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800215]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800215]["RewardItem"][1]["Id"] = 800215 -- SkyHalberd[800215][属性:0][叠加:0][金币:0], 【表格】SkyHalberd
	tAwakenPreheat_Pack[3327470][2][800215]["RewardItem"][1]["Attr"] = "0 1" -- SkyHalberd*1
	tAwakenPreheat_Pack[3327470][2][800215]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800215]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800811] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800811]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800811]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800811]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800811]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800811]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800811]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800811]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800811]["RewardItem"][1]["Id"] = 800811 -- RepentRapier[800811][属性:0][叠加:0][金币:0], 【表格】RepentRapier
	tAwakenPreheat_Pack[3327470][2][800811]["RewardItem"][1]["Attr"] = "0 1" -- RepentRapier*1
	tAwakenPreheat_Pack[3327470][2][800811]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800811]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800810] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800810]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800810]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800810]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800810]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800810]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800810]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800810]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800810]["RewardItem"][1]["Id"] = 800810 -- DeathPistol[800810][属性:0][叠加:0][金币:0], 【表格】DeathPistol
	tAwakenPreheat_Pack[3327470][2][800810]["RewardItem"][1]["Attr"] = "0 1" -- DeathPistol*1
	tAwakenPreheat_Pack[3327470][2][800810]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800810]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800810]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800142] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800142]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800142]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800142]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800142]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800142]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800142]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800142]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800142]["RewardItem"][1]["Id"] = 800142 -- ShadowKatana[800142][属性:0][叠加:0][金币:0], 【表格】ShadowKatana
	tAwakenPreheat_Pack[3327470][2][800142]["RewardItem"][1]["Attr"] = "0 1" -- ShadowKatana*1
	tAwakenPreheat_Pack[3327470][2][800142]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800142]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800142]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800917] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800917]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800917]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800917]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800917]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800917]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800917]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800917]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800917]["RewardItem"][1]["Id"] = 800917 -- GhostKnife[800917][属性:0][叠加:0][金币:0], 【表格】GhostKnife
	tAwakenPreheat_Pack[3327470][2][800917]["RewardItem"][1]["Attr"] = "0 1" -- GhostKnife*1
	tAwakenPreheat_Pack[3327470][2][800917]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800917]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800255] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800255]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800255]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800255]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800255]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800255]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800255]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800255]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800255]["RewardItem"][1]["Id"] = 800255 -- DemonScythe[800255][属性:0][叠加:0][金币:0], 【表格】DemonScythe
	tAwakenPreheat_Pack[3327470][2][800255]["RewardItem"][1]["Attr"] = "0 1" -- DemonScythe*1
	tAwakenPreheat_Pack[3327470][2][800255]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800255]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800255]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800422] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800422]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800422]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800422]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800422]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800422]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800422]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800422]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800422]["RewardItem"][1]["Id"] = 800422 -- SpiritShield[800422][属性:0][叠加:0][金币:0], 【表格】SpiritShield
	tAwakenPreheat_Pack[3327470][2][800422]["RewardItem"][1]["Attr"] = "0 1" -- SpiritShield*1
	tAwakenPreheat_Pack[3327470][2][800422]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800422]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800522] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800522]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800522]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800522]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800522]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800522]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800522]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800522]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800522]["RewardItem"][1]["Id"] = 800522 -- TimeBacksword[800522][属性:0][叠加:0][金币:0], 【表格】TimeBacksword
	tAwakenPreheat_Pack[3327470][2][800522]["RewardItem"][1]["Attr"] = "0 1" -- TimeBacksword*1
	tAwakenPreheat_Pack[3327470][2][800522]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800522]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800618] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800618]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800618]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800618]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800618]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800618]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800618]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800618]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800618]["RewardItem"][1]["Id"] = 800618 -- SunBow[800618][属性:0][叠加:0][金币:0], 【表格】SunBow
	tAwakenPreheat_Pack[3327470][2][800618]["RewardItem"][1]["Attr"] = "0 1" -- SunBow*1
	tAwakenPreheat_Pack[3327470][2][800618]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800618]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][800725] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][800725]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][800725]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][800725]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800725]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800725]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][800725]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][800725]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][800725]["RewardItem"][1]["Id"] = 800725 -- BuddaBeads[800725][属性:0][叠加:0][金币:0], 【表格】BuddaBeads
	tAwakenPreheat_Pack[3327470][2][800725]["RewardItem"][1]["Attr"] = "0 1" -- BuddaBeads*1
	tAwakenPreheat_Pack[3327470][2][800725]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][800725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][800725]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][801004] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][801004]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][801004]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][801004]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][801004]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][801004]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][801004]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][801004]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][801004]["RewardItem"][1]["Id"] = 801004 -- WarCraze[801004][属性:0][叠加:0][金币:0], 【表格】WarCraze
	tAwakenPreheat_Pack[3327470][2][801004]["RewardItem"][1]["Attr"] = "0 1" -- WarCraze*1
	tAwakenPreheat_Pack[3327470][2][801004]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][801004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][801004]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][820073] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][820073]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][820073]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][820073]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820073]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820073]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][820073]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820073]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820073]["RewardItem"][1]["Id"] = 820073 -- MoonHeadgear[820073][属性:0][叠加:0][金币:0], 【表格】MoonHeadgear
	tAwakenPreheat_Pack[3327470][2][820073]["RewardItem"][1]["Attr"] = "0 1" -- MoonHeadgear*1
	tAwakenPreheat_Pack[3327470][2][820073]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][820073]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][820073]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][820074] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][820074]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][820074]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][820074]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820074]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820074]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][820074]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820074]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820074]["RewardItem"][1]["Id"] = 820074 -- SunHeadgear[820074][属性:0][叠加:0][金币:0], 【表格】SunHeadgear
	tAwakenPreheat_Pack[3327470][2][820074]["RewardItem"][1]["Attr"] = "0 1" -- SunHeadgear*1
	tAwakenPreheat_Pack[3327470][2][820074]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][820074]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][820074]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][820075] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][820075]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][820075]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][820075]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820075]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820075]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][820075]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820075]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820075]["RewardItem"][1]["Id"] = 820075 -- StarHeadgear[820075][属性:0][叠加:0][金币:0], 【表格】StarHeadgear
	tAwakenPreheat_Pack[3327470][2][820075]["RewardItem"][1]["Attr"] = "0 1" -- StarHeadgear*1
	tAwakenPreheat_Pack[3327470][2][820075]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][820075]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][820075]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][820076] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][820076]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][820076]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][820076]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820076]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820076]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][820076]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][820076]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][820076]["RewardItem"][1]["Id"] = 820076 -- IceHeadgear[820076][属性:0][叠加:0][金币:0], 【表格】IceHeadgear
	tAwakenPreheat_Pack[3327470][2][820076]["RewardItem"][1]["Attr"] = "0 1" -- IceHeadgear*1
	tAwakenPreheat_Pack[3327470][2][820076]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][820076]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][820076]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][822071] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][822071]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][822071]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][822071]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][822071]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][822071]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][822071]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][822071]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][822071]["RewardItem"][1]["Id"] = 822071 -- NetherArmor[822071][属性:0][叠加:0][金币:0], 【表格】NetherArmor
	tAwakenPreheat_Pack[3327470][2][822071]["RewardItem"][1]["Attr"] = "0 1" -- NetherArmor*1
	tAwakenPreheat_Pack[3327470][2][822071]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][822071]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][822071]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][822072] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][822072]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][822072]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][822072]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][822072]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][822072]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][822072]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][822072]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][822072]["RewardItem"][1]["Id"] = 822072 -- EclipseArmor[822072][属性:0][叠加:0][金币:0], 【表格】EclipseArmor
	tAwakenPreheat_Pack[3327470][2][822072]["RewardItem"][1]["Attr"] = "0 1" -- EclipseArmor*1
	tAwakenPreheat_Pack[3327470][2][822072]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][822072]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][822072]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][821034] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][821034]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][821034]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][821034]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][821034]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][821034]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][821034]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][821034]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][821034]["RewardItem"][1]["Id"] = 821034 -- FervorBag[821034][属性:0][叠加:0][金币:0], 【表格】FervorBag
	tAwakenPreheat_Pack[3327470][2][821034]["RewardItem"][1]["Attr"] = "0 1" -- FervorBag*1
	tAwakenPreheat_Pack[3327470][2][821034]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][821034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][821034]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][821033] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][821033]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][821033]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][821033]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][821033]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][821033]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][821033]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][821033]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][821033]["RewardItem"][1]["Id"] = 821033 -- HeavenNecklace[821033][属性:0][叠加:0][金币:0], 【表格】HeavenNecklace
	tAwakenPreheat_Pack[3327470][2][821033]["RewardItem"][1]["Attr"] = "0 1" -- HeavenNecklace*1
	tAwakenPreheat_Pack[3327470][2][821033]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][821033]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][821033]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][823058] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][823058]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][823058]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][823058]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823058]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823058]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][823058]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823058]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823058]["RewardItem"][1]["Id"] = 823058 -- CraneRing[823058][属性:0][叠加:0][金币:0], 【表格】CraneRing
	tAwakenPreheat_Pack[3327470][2][823058]["RewardItem"][1]["Attr"] = "0 1" -- CraneRing*1
	tAwakenPreheat_Pack[3327470][2][823058]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][823058]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][823058]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][823059] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][823059]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][823059]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][823059]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823059]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823059]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][823059]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823059]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823059]["RewardItem"][1]["Id"] = 823059 -- DragonRing[823059][属性:0][叠加:0][金币:0], 【表格】DragonRing
	tAwakenPreheat_Pack[3327470][2][823059]["RewardItem"][1]["Attr"] = "0 1" -- DragonRing*1
	tAwakenPreheat_Pack[3327470][2][823059]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][823059]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][823059]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][823061] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][823061]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][823061]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][823061]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823061]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823061]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][823061]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823061]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823061]["RewardItem"][1]["Id"] = 823061 -- LionHeavyRing[823061][属性:0][叠加:0][金币:0], 【表格】LionHeavyRing
	tAwakenPreheat_Pack[3327470][2][823061]["RewardItem"][1]["Attr"] = "0 1" -- LionHeavyRing*1
	tAwakenPreheat_Pack[3327470][2][823061]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][823061]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][823061]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][823062] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][823062]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][823062]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][823062]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823062]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823062]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][823062]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823062]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823062]["RewardItem"][1]["Id"] = 823062 -- TigerHeavyRing[823062][属性:0][叠加:0][金币:0], 【表格】TigerHeavyRing
	tAwakenPreheat_Pack[3327470][2][823062]["RewardItem"][1]["Attr"] = "0 1" -- TigerHeavyRing*1
	tAwakenPreheat_Pack[3327470][2][823062]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][823062]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][823062]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][823060] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][823060]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][823060]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][823060]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823060]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823060]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][823060]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][823060]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][823060]["RewardItem"][1]["Id"] = 823060 -- RainbowBracelet[823060][属性:0][叠加:0][金币:0], 【表格】RainbowBracelet
	tAwakenPreheat_Pack[3327470][2][823060]["RewardItem"][1]["Attr"] = "0 1" -- RainbowBracelet*1
	tAwakenPreheat_Pack[3327470][2][823060]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][823060]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][823060]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][824018] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][824018]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][824018]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][824018]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824018]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824018]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][824018]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824018]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824018]["RewardItem"][1]["Id"] = 824018 -- FoxBoots[824018][属性:0][叠加:0][金币:0], 【表格】FoxBoots
	tAwakenPreheat_Pack[3327470][2][824018]["RewardItem"][1]["Attr"] = "0 1" -- FoxBoots*1
	tAwakenPreheat_Pack[3327470][2][824018]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][824018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][824018]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][824019] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][824019]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][824019]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][824019]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824019]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824019]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][824019]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824019]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824019]["RewardItem"][1]["Id"] = 824019 -- DragonBoots[824019][属性:0][叠加:0][金币:0], 【表格】DragonBoots
	tAwakenPreheat_Pack[3327470][2][824019]["RewardItem"][1]["Attr"] = "0 1" -- DragonBoots*1
	tAwakenPreheat_Pack[3327470][2][824019]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][824019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][824019]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_Pack[3327470][2][824020] = {}
	-- ===7阶神魂可选包
	-- ===索引:tAwakenPreheat_Pack[3327470][2][824020]
	-- ===删除:3327470,1
	-- ===
	tAwakenPreheat_Pack[3327470][2][824020]["LogId"] = 12001794
	tAwakenPreheat_Pack[3327470][2][824020]["DeleteItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824020]["DeleteItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824020]["DeleteItem"][1]["Id"] = 3327470 -- 【库】P7SoulSelectionPack[属性:9]
	tAwakenPreheat_Pack[3327470][2][824020]["RewardItem"] = {}
	tAwakenPreheat_Pack[3327470][2][824020]["RewardItem"][1] = {}
	tAwakenPreheat_Pack[3327470][2][824020]["RewardItem"][1]["Id"] = 824020 -- CraneBoots[824020][属性:0][叠加:0][金币:0], 【表格】CraneBoots
	tAwakenPreheat_Pack[3327470][2][824020]["RewardItem"][1]["Attr"] = "0 1" -- CraneBoots*1
	tAwakenPreheat_Pack[3327470][2][824020]["RewardEffect"] = {}
	tAwakenPreheat_Pack[3327470][2][824020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Pack[3327470][2][824020]["RewardEffect"]["Effect"] = "angelwing"



local tAwakenPreheat_LoginReward = {}
	-- ===一阶段奖励
	-- ===索引:tAwakenPreheat_LoginReward[1]
	-- ===
	-- ===
	tAwakenPreheat_LoginReward[1] = {}
	tAwakenPreheat_LoginReward[1]["LogId"] = 12001794
	tAwakenPreheat_LoginReward[1]["RewardItem"] = {}
	tAwakenPreheat_LoginReward[1]["RewardItem"][1] = {}
	tAwakenPreheat_LoginReward[1]["RewardItem"][1]["Id"] = 3327349 -- 征服秘典礼包[3327349][属性:8][叠加:100][金币:0], 【表格】征服秘典礼包
	tAwakenPreheat_LoginReward[1]["RewardItem"][1]["Attr"] = "0 1" -- 征服秘典礼包*1
	tAwakenPreheat_LoginReward[1]["RewardEffect"] = {}
	tAwakenPreheat_LoginReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LoginReward[1]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LoginReward[2] = {}
	-- ===一阶段奖励
	-- ===索引:tAwakenPreheat_LoginReward[2]
	-- ===
	-- ===
	tAwakenPreheat_LoginReward[2]["LogId"] = 12001794
	tAwakenPreheat_LoginReward[2]["RewardItem"] = {}
	tAwakenPreheat_LoginReward[2]["RewardItem"][1] = {}
	tAwakenPreheat_LoginReward[2]["RewardItem"][1]["Id"] = 3327350 -- 觉醒之秘礼包[3327350][属性:8][叠加:100][金币:0], 【表格】觉醒之秘礼包
	tAwakenPreheat_LoginReward[2]["RewardItem"][1]["Attr"] = "0 1" -- 觉醒之秘礼包*1
	tAwakenPreheat_LoginReward[2]["RewardEffect"] = {}
	tAwakenPreheat_LoginReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LoginReward[2]["RewardEffect"]["Effect"] = "angelwing"


	
local tAwakenPreheat_Reward = {}
	tAwakenPreheat_Reward[1] = {}
	tAwakenPreheat_Reward[1]["LogId"] = 12001794
	tAwakenPreheat_Reward[1]["DeleteItem"] = {}
	tAwakenPreheat_Reward[1]["DeleteItem"][1] = {}
	tAwakenPreheat_Reward[1]["DeleteItem"][1]["Id"] = 0 
	tAwakenPreheat_Reward[1]["RewardItem"] = {}
	tAwakenPreheat_Reward[1]["RewardItem"][1] = {}
	tAwakenPreheat_Reward[1]["RewardItem"][1]["Id"] = 0 
	tAwakenPreheat_Reward[1]["RewardItem"][1]["Attr"] = "" 
	tAwakenPreheat_Reward[1]["RewardEffect"] = {}
	tAwakenPreheat_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Reward[1]["RewardEffect"]["Effect"] = "angelwing"

	tAwakenPreheat_Reward[2] = {}
	tAwakenPreheat_Reward[2]["LogId"] = 12001794
	tAwakenPreheat_Reward[2]["DeleteItem"] = {}
	tAwakenPreheat_Reward[2]["DeleteItem"][1] = {}
	tAwakenPreheat_Reward[2]["DeleteItem"][1]["Id"] = 0 
	tAwakenPreheat_Reward[2]["RewardItem"] = {}
	tAwakenPreheat_Reward[2]["RewardItem"][1] = {}
	tAwakenPreheat_Reward[2]["RewardItem"][1]["Id"] = 0 
	tAwakenPreheat_Reward[2]["RewardItem"][1]["Attr"] = "" 
	tAwakenPreheat_Reward[2]["RewardStrengthValue"] = {} 
	tAwakenPreheat_Reward[2]["RewardStrengthValue"]["Value"] = 0 
	tAwakenPreheat_Reward[2]["RewardEffect"] = {}
	tAwakenPreheat_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_Reward[2]["RewardEffect"]["Effect"] = "angelwing"

	local tAwakenPreheat_Drop = {}
	-- ===怪物掉落
	-- ===索引:tAwakenPreheat_Drop[1]
	-- ===
	-- ===
	tAwakenPreheat_Drop[1] = {}
	tAwakenPreheat_Drop[1]["LogId"] = 12001794
	tAwakenPreheat_Drop[1]["RewardItem"] = {}
	tAwakenPreheat_Drop[1]["RewardItem"][1] = {}
	tAwakenPreheat_Drop[1]["RewardItem"][1]["Id"] = 3327338 -- 混沌牌[3327338][属性:8][叠加:100][金币:0], 【表格】混沌牌
	tAwakenPreheat_Drop[1]["RewardItem"][1]["Attr"] = "0 1" -- 混沌牌*1
	-- tAwakenPreheat_Drop[1]["RewardEffect"] = {}
	-- tAwakenPreheat_Drop[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAwakenPreheat_Drop[1]["RewardEffect"]["Effect"] = "angelwing"

local tAwakenPreheat_LevelReward = {}
	-- ===一阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[1]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[1] = {}
	tAwakenPreheat_LevelReward[1]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[1]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[1]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[1]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[1]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[1]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[1]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[2] = {}
	-- ===二阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[2]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[2]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[2]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[2]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[2]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[2]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[2]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[2]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[3] = {}
	-- ===三阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[3]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[3]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[3]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[3]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[3]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[3]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[3]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[3]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[4] = {}
	-- ===四阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[4]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[4]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[4]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[4]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[4]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[4]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[4]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[4]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[5] = {}
	-- ===五阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[5]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[5]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[5]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[5]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[5]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[5]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[5]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[5]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[6] = {}
	-- ===六阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[6]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[6]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[6]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[6]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[6]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[6]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[6]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[6]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[7] = {}
	-- ===七阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[7]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[7]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[7]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[7]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[7]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[7]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[7]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[7]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[8] = {}
	-- ===八阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[8]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[8]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[8]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[8]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[8]["RewardItem"][1]["Id"] = 3327346 -- 小试牛刀礼盒[3327346][属性:9][叠加:0][金币:0], 【表格】小试牛刀礼盒
	tAwakenPreheat_LevelReward[8]["RewardItem"][1]["Attr"] = "0 1" -- 小试牛刀礼盒*1
	tAwakenPreheat_LevelReward[8]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[8]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[9] = {}
	-- ===九阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[9]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[9]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[9]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[9]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[9]["RewardItem"][1]["Id"] = 3327347 -- 融会贯通礼盒[3327347][属性:9][叠加:0][金币:0], 【表格】融会贯通礼盒
	tAwakenPreheat_LevelReward[9]["RewardItem"][1]["Attr"] = "0 1" -- 融会贯通礼盒*1
	tAwakenPreheat_LevelReward[9]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[9]["RewardEffect"]["Effect"] = "angelwing"


	tAwakenPreheat_LevelReward[10] = {}
	-- ===十阶奖励
	-- ===索引:tAwakenPreheat_LevelReward[10]
	-- ===
	-- ===
	tAwakenPreheat_LevelReward[10]["LogId"] = 12001794
	tAwakenPreheat_LevelReward[10]["RewardItem"] = {}
	tAwakenPreheat_LevelReward[10]["RewardItem"][1] = {}
	tAwakenPreheat_LevelReward[10]["RewardItem"][1]["Id"] = 3327348 -- 游刃有余礼盒[3327348][属性:9][叠加:0][金币:0], 【表格】游刃有余礼盒
	tAwakenPreheat_LevelReward[10]["RewardItem"][1]["Attr"] = "0 1" -- 游刃有余礼盒*1
	tAwakenPreheat_LevelReward[10]["RewardEffect"] = {}
	tAwakenPreheat_LevelReward[10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAwakenPreheat_LevelReward[10]["RewardEffect"]["Effect"] = "angelwing"

local tAwakenPreheat_Open100ProRandomPack = {}
	tAwakenPreheat_Open100ProRandomPack[1] = {}
	tAwakenPreheat_Open100ProRandomPack[1]["LogId"] = 12001794
	tAwakenPreheat_Open100ProRandomPack[1]["DeleteItem"] = {}
	tAwakenPreheat_Open100ProRandomPack[1]["DeleteItem"][1] = {}
	tAwakenPreheat_Open100ProRandomPack[1]["DeleteItem"][1]["Id"] = 3327338
	tAwakenPreheat_Open100ProRandomPack[1]["DeleteItem"][1]["ItemNum"] = 100
	tAwakenPreheat_Open100ProRandomPack[1]["RewardItem"] = {}
	-- tAwakenPreheat_Open100ProRandomPack[1]["RewardItem"][1] = {}
	-- tAwakenPreheat_Open100ProRandomPack[1]["RewardItem"][1]["Id"] = 0 
	-- tAwakenPreheat_Open100ProRandomPack[1]["RewardItem"][1]["Attr"] = "" 

local tAwakenPreheat_Random = {}
tAwakenPreheat_Random["MonsterReward"] = {}
tAwakenPreheat_Random["MonsterReward"][1] = {}
tAwakenPreheat_Random["MonsterReward"][1]["ItemChanceSum"] = 10000

tAwakenPreheat_Random["MonsterReward"][1][1] = {}
tAwakenPreheat_Random["MonsterReward"][1][1]["RandomItemChanceType"] = 2
tAwakenPreheat_Random["MonsterReward"][1][1]["ItemChance"] = 9750
tAwakenPreheat_Random["MonsterReward"][1][1]["Item_1"] = 1

tAwakenPreheat_Random["MonsterReward"][1][2] = {}
tAwakenPreheat_Random["MonsterReward"][1][2]["RandomItemChanceType"] = 2
tAwakenPreheat_Random["MonsterReward"][1][2]["ItemChance"] = 250
tAwakenPreheat_Random["MonsterReward"][1][2]["Item_1"] = 2


local tAwakenPreheat_Log = {}
tAwakenPreheat_Log["DeleteLog"] = "0,0,%d,%d,0,12001794,2,0,0"

-------------------------逻辑部分

-- -- 显示输入框
-- function AwakenPreheat_InputBox(nAwakenPreheat_NpcId,nAwakenPreheat_ProNum)  --nAwakenPreheat_ProNum 记录职业
	-- if not Sys_ChkFullTime() then
		-- -- LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-3")
		-- return
	-- end
-- end 
	

-- 上交卡片二次确认
function AwakenPreheat_TwoConfirmation()
	-- 获取输入框中的数字
	local nAwakenPreheat_AddProJF = tonumber(Get_SysAcceptStr())
	if type(nAwakenPreheat_AddProJF) ~= "number" or nAwakenPreheat_AddProJF <= 0 then
		
		return
	end
	
end 


-- 上交单职业卡片 记录个人各职业积分，计入排行榜
function AwakenPreheat_HandInCard(nAwakenPreheat_ProNum,nAwakenPreheat_Type)
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][1]
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-1")
		return
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-2")
		return
	end 
	-- 职业侠义牌id
	local nAwakenPreheat_ItemId = tAwakenPreheat_Data["ProCardId"][nAwakenPreheat_ProNum]
	-- 背包中职业侠义牌数量
	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
	local sAwakenPreheat_ItemName = Get_ItemtypeName(nAwakenPreheat_ItemId)
	-- 记录各职业积分
	local nAwakenPreheat_EventTypeProJF = tAwakenPreheat_Stc["Profession"]["EventType"]
	local nAwakenPreheat_DataTypeProJF = tAwakenPreheat_Stc["Profession"]["DataType"][nAwakenPreheat_ProNum]
	-- 记录各职业积分等级
	local nAwakenPreheat_EventTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["EventType"]
	local nAwakenPreheat_DataTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["DataType"][nAwakenPreheat_ProNum]
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	-- 背包中职业卡片不足
	if nAwakenPreheat_nItemNum == 0 and  nAwakenPreheat_Type == 0 then 
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["Not"])
		return
	end 
	if nAwakenPreheat_nItemNum == 0 then 
		return
	end 
	-- 删除侠义牌
	if nAwakenPreheat_nItemNum ~= 0 then 
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			-- 增加当前职业积分
			Task_AddStatistic(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF,nAwakenPreheat_nItemNum,1)
			Task_SetStcTimestamp(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF,0)
			-- 增加全职业总积分
			Task_AddStatistic(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore,nAwakenPreheat_nItemNum,1)
			Task_SetStcTimestamp(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore,0)
			
			-- 增加后的当前职业总积分
			local nAwakenPreheat_DataProJF = Get_UserStatisticValue(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF)
			-- 排行榜id
			-- local nAwakenPreheat_Index = tonumber(tAwakenPreheat_Data["NpcId"][2] .. nAwakenPreheat_ProNum)
			local nAwakenPreheat_Index = tAwakenPreheat_Data["RankId"][nAwakenPreheat_ProNum]
			-- 写入排行榜
			local nAwakenPreheat_UserId = Get_UserId()
			RankingFunc_SetInfo(nAwakenPreheat_Index,nAwakenPreheat_DataProJF,nAwakenPreheat_UserId)
			-- 各职业积分等级
			local nAwakenPreheat_DataProLevel = Get_UserStatisticValue(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel)
			local nAwakenPreheat_NewDataProLevel = nAwakenPreheat_DataProLevel
			for i = 1,10,1 do 
				local nAwakenPreheat_ExeLevel = tAwakenPreheat_Data["ExeLevel"][i]
				if nAwakenPreheat_ExeLevel <= nAwakenPreheat_DataProJF then 
					nAwakenPreheat_NewDataProLevel = i
				end 
			end 
			if nAwakenPreheat_NewDataProLevel > nAwakenPreheat_DataProLevel then  
				Task_SetStatistic(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel,nAwakenPreheat_NewDataProLevel,1)   --重置当前等级
				Task_SetStcTimestamp(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel,0)
				local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][nAwakenPreheat_ProNum]
				local nAwakenPreheat_Space = 3
				if User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
					local sAwakenPreheat_ProName = tAwakenPreheat_Text["ProName"][nAwakenPreheat_ProNum][nAwakenPreheat_NewDataProLevel]
					for k = nAwakenPreheat_DataProLevel+1,nAwakenPreheat_NewDataProLevel,1 do 
						RewardTemplate_UseItemAndMsg(tAwakenPreheat_LevelReward[k])
					end 
					User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["LevelReward"],sAwakenPreheat_Pro,sAwakenPreheat_ProName))
				else
					for k = nAwakenPreheat_DataProLevel+1,nAwakenPreheat_NewDataProLevel,1 do 
						-- 邮件发奖
						local sAwakenPreheat_Sender = tAwakenPreheat_Text["Mail"][1]["Name"]
						local sAwakenPreheat_Title = tAwakenPreheat_Text["Mail"][1]["Zhuti"]
						local sAwakenPreheat_ProName = tAwakenPreheat_Text["ProName"][nAwakenPreheat_ProNum][k]
						local sAwakenPreheat_Content = string.format(tAwakenPreheat_Text["Mail"][1]["NeiRong"],sAwakenPreheat_Pro,sAwakenPreheat_ProName)
						local nAwakenPreheat_UserId = Get_UserId()
						local nAwakenPreheat_MailActionId = tAwakenPreheat_Data["UpgradeActionId"][k]
						Sys_SendMail(nAwakenPreheat_UserId,0,0,nAwakenPreheat_MailActionId,0,7,sAwakenPreheat_Sender,sAwakenPreheat_Title,sAwakenPreheat_Content)
					end 
				end 
			end 
			if nAwakenPreheat_Type == 0 then 
				Sys_MsgBox(string.format(tAwakenPreheat_Text["MsgBox"]["ProCard"],nAwakenPreheat_nItemNum,sAwakenPreheat_ItemName,nAwakenPreheat_nItemNum))
			end 
		end
	end 
end 


-- 显示侠义牌对白
function AwakenPreheat_HandInCardText()
	
	-- for i = 1,10,1 do 
		-- -- 记录各职业积分
		-- local nAwakenPreheat_ItemId = tAwakenPreheat_Data["ProCardId"][i]
		-- local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		-- tNpcGossip[25800]["Text31" .. i+2] = string.format(tAwakenPreheat_Text[25800]["Text31" .. i+2],nAwakenPreheat_nItemNum)
	-- end 
	-- return true
		-- User_TalkChannel2005("a")
		for i = 1,10,1 do 
		-- 记录各职业积分
		local nAwakenPreheat_EventTypeProJF = tAwakenPreheat_Stc["Profession"]["EventType"]
		local nAwakenPreheat_DataTypeProJF = tAwakenPreheat_Stc["Profession"]["DataType"][i]
		local nAwakenPreheat_DataProJF = Get_UserStatisticValue(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF)
		-- 记录各职业积分等级
		local nAwakenPreheat_EventTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["EventType"]
		local nAwakenPreheat_DataTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["DataType"][i]
		local nAwakenPreheat_DataProLevel = Get_UserStatisticValue(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel)
		-- 升级所需总侠义值
		local nAwakenPreheat_TotalExe = tAwakenPreheat_Data["ExeLevel"][nAwakenPreheat_DataProLevel+1] 
		-- 升级还需侠义值
		local nAwakenPreheat_DiffExe = nAwakenPreheat_TotalExe - nAwakenPreheat_DataProJF
		-- 等级名称
		local sAwakenPreheat_ProName = tAwakenPreheat_Text["ProName"][i][nAwakenPreheat_DataProLevel]
		-- 职业 
		local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][i]
		
		if nAwakenPreheat_DataProLevel >= 10 then 
		local sAwakenPreheat_MaxLevel = tAwakenPreheat_Text[25800]["MaxLevel"]
			tNpcGossip[25800]["Text31" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),20,sAwakenPreheat_ProName,28,sAwakenPreheat_MaxLevel,55)
		else
			-- tNpcGossip[25800]["Text31" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,4,tostring(nAwakenPreheat_DataProJF),20,sAwakenPreheat_ProName,34,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],54)
			-- tNpcGossip[25800]["Text31" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],42)
			tNpcGossip[25800]["Text31" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),20,sAwakenPreheat_ProName,28,string.format(tAwakenPreheat_Text["lianjie"],tostring(nAwakenPreheat_DiffExe),tAwakenPreheat_Text["Dian"]),55)
		end
	end 
	return true
end 
-- 上交所有侠义牌
function AwakenPreheat_HandInAllCard()
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][1]
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-1")
		return
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-2")
		return
	end 
	local nAwakenPreheat_Num = 0
	for i = 1,10,1 do 
		-- 记录各职业积分
		-- local nAwakenPreheat_EventTypeProScore = tAwakenPreheat_Stc["Profession"]["EventType"]
		-- local nAwakenPreheat_DataTypeProScore = tAwakenPreheat_Stc["Profession"]["DataType"][i]
		local nAwakenPreheat_ItemId = tAwakenPreheat_Data["ProCardId"][i] 
		local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		-- Task_AddStatistic(nAwakenPreheat_EventTypeProScore,nAwakenPreheat_DataTypeProScore,nAwakenPreheat_nItemNum,1)
		nAwakenPreheat_Num = nAwakenPreheat_Num + nAwakenPreheat_nItemNum
		AwakenPreheat_HandInCard(i,1)
	end 
	if nAwakenPreheat_Num == 0 then 
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["Not"])
	else
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["AllProCard"])
	end 
end 

-- 显示当前总侠义值
function AwakenPreheat_TotalScoreText()
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	tNpcGossip[25800]["Text423"] = string.format(tAwakenPreheat_Text[25800]["Text423"],nAwakenPreheat_DataTotalScore)
	return true
end 

-- 显示当前各职业总侠义值
function AwakenPreheat_ProScoreText()
	
	for i = 1,10,1 do 
		-- 记录各职业积分
		local nAwakenPreheat_EventTypeProJF = tAwakenPreheat_Stc["Profession"]["EventType"]
		local nAwakenPreheat_DataTypeProJF = tAwakenPreheat_Stc["Profession"]["DataType"][i]
		local nAwakenPreheat_DataProJF = Get_UserStatisticValue(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF)
		-- 记录各职业积分等级
		local nAwakenPreheat_EventTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["EventType"]
		local nAwakenPreheat_DataTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["DataType"][i]
		local nAwakenPreheat_DataProLevel = Get_UserStatisticValue(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel)
		-- 升级所需总侠义值
		local nAwakenPreheat_TotalExe = tAwakenPreheat_Data["ExeLevel"][nAwakenPreheat_DataProLevel+1] 
		-- 升级还需侠义值
		local nAwakenPreheat_DiffExe = nAwakenPreheat_TotalExe - nAwakenPreheat_DataProJF
		-- 等级名称
		local sAwakenPreheat_ProName = tAwakenPreheat_Text["ProName"][i][nAwakenPreheat_DataProLevel]
		-- 职业 
		local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][i]
		
		if nAwakenPreheat_DataProLevel >= 10 then 
		local sAwakenPreheat_MaxLevel = tAwakenPreheat_Text[25800]["MaxLevel"]
			tNpcGossip[25800]["Text41" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,sAwakenPreheat_MaxLevel,42)
		else
			-- tNpcGossip[25800]["Text41" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,4,tostring(nAwakenPreheat_DataProJF),20,sAwakenPreheat_ProName,34,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],54)
			-- tNpcGossip[25800]["Text41" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],42)
			tNpcGossip[25800]["Text41" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,string.format(tAwakenPreheat_Text["lianjie"],tostring(nAwakenPreheat_DiffExe),tAwakenPreheat_Text["Dian"]),42)
		end
	end 
	return true
end 
-- local sText = "勇士"..Sys_Alignment(toString(i), 10, "见习XX"，20，"X点" )

--购买秘典拓本
function AwakenPreheat_BuyBook(nAwakenPreheat_NpcId)
	local nAwakenPreheat_Price = tAwakenPreheat_Data["Price"]
	local nAwakenPreheat_ItemId = tAwakenPreheat_Data["BookId"]
	if Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["BuyAgain"])
		return
	end 
	local bJudge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
	if not bJudge then
		return
	end
	-- local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][3]
	-- if User_AddMoneyNew(-nAwakenPreheat_Price,12001794) then 
		RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
		-- LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"1-3")
		-- -- local tBuyLog = tAwakenPreheat_Log["EMonyeLog"]["BuyPet"]
		-- -- Sys_SaveEmoneyBuy(tBuyLog)
	-- else
		-- Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["NoPrice"])
	-- end 
end 

function AwakenPreheat_HandInText(nAwakenPreheat_Pro)
	local nAwakenPreheat_ItemId = tAwakenPreheat_Data["ProCardId"][nAwakenPreheat_Pro]
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return false
	else
		return true
	end 
end 

function AwakenPreheat_NoHandInText()
	local nAwakenPreheat_Count = 0
	for i = 1,10,1 do 
		local nAwakenPreheat_ItemId = tAwakenPreheat_Data["ProCardId"][i]
		if Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
			nAwakenPreheat_Count = nAwakenPreheat_Count +1
		end 
	end 
	if nAwakenPreheat_Count > 0 then 
		return false
	else
		return true
	end 
end 


-- 计算总积分
function AwakenPreheat_TotalScore()
	local nAwakenPreheat_TotalScore = 0    -- 总积分初始值
	local nAwakenPreheat_EventTypeProJF = tAwakenPreheat_Stc["Profession"]["EventType"]
	for i = 1,10,1 do 
		local nAwakenPreheat_DataTypeProJF = tAwakenPreheat_Stc["Profession"]["DataType"][i]
		local nAwakenPreheat_DataProJF = Get_UserStatisticValue(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF)
		nAwakenPreheat_TotalScore = nAwakenPreheat_TotalScore + nAwakenPreheat_DataProJF
	end 
	return nAwakenPreheat_TotalScore
end



-- 显示排行榜数据
function AwakenPreheat_RankingListText(nAwakenPreheat_Pro)
	local nAwakenPreheat_ProName = tAwakenPreheat_Text["Pro"][nAwakenPreheat_Pro]
	tNpcGossip[25801]["Text211"] = string.format(tAwakenPreheat_Text[25801]["Text131"],nAwakenPreheat_ProName)
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][2]
	for i = 1,10,1 do 
		local nAwakenPreheat_GlobalId = tAwakenPreheat_Data["RankGlobal"][nAwakenPreheat_Pro][i][1]
		local nAwakenPreheat_Num = tAwakenPreheat_Data["RankGlobal"][nAwakenPreheat_Pro][i][2]
		local nAwakenPreheat_GlobalNum = Get_SysDynaGlobalData(nAwakenPreheat_GlobalId,nAwakenPreheat_Num)
		local nAwakenPreheat_GlobalName = Get_SysDynaGlobalDataStr(nAwakenPreheat_GlobalId,nAwakenPreheat_Num)
		if nAwakenPreheat_GlobalName == "" then 
			nAwakenPreheat_GlobalName = tAwakenPreheat_Text[25801]["NoName"]
		end 
		nAwakenPreheat_GlobalName = string.gsub(nAwakenPreheat_GlobalName, "<", " ")
		nAwakenPreheat_GlobalName = string.gsub(nAwakenPreheat_GlobalName, ">", " ")
		tNpcGossip[25801]["Text21" .. i+3] = string.format(tAwakenPreheat_Text[25801]["Text21" .. i+3],nAwakenPreheat_GlobalNum,nAwakenPreheat_GlobalName)
		-- tNpcGossip[25801]["Text21" .. i+3] = Sys_Alignment(tostring(i),3,tostring(nAwakenPreheat_GlobalNum),15,nAwakenPreheat_GlobalName,25,tAwakenPreheat_Text[25801]["Reward"][i],42)
		-- User_TalkChannel2005("i =" .. i)
		-- User_TalkChannel2005("nAwakenPreheat_GlobalNum =" .. nAwakenPreheat_GlobalNum)
		-- User_TalkChannel2005("nAwakenPreheat_GlobalName =" .. nAwakenPreheat_GlobalName)
		-- User_TalkChannel2005(tAwakenPreheat_Text[25801]["Reward"][i])
	end 
	tAwakenPreheat_Data["RangText"]["Pro"] = nAwakenPreheat_Pro
	LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"2-1")
end 

-- 第一层对白根据玩家职业显示排行榜数据
function AwakenPreheat_FirstRankText()
	local nAwakenPreheat_Pro = 0
	-- local nAwakenPreheat_ProId = Get_UserProfession()
	local nAwakenPreheat_ProId = Get_NewUserProfession()
	-- 职业奖励区分
	if nAwakenPreheat_ProId >= 1000 and nAwakenPreheat_ProId <= 1049 then  --勇士
		nAwakenPreheat_Pro = 1
	elseif nAwakenPreheat_ProId >= 2000 and nAwakenPreheat_ProId <= 2049 then   --战士
		nAwakenPreheat_Pro = 2
	elseif nAwakenPreheat_ProId >= 10000 and nAwakenPreheat_ProId <= 10001  or  nAwakenPreheat_ProId >= 13002 and nAwakenPreheat_ProId <= 13049 or nAwakenPreheat_ProId >= 14002 and nAwakenPreheat_ProId <= 14049 then  --道士
		nAwakenPreheat_Pro = 3
	elseif nAwakenPreheat_ProId >= 7000 and nAwakenPreheat_ProId <= 7049 then   --海盗
		nAwakenPreheat_Pro = 4
	elseif nAwakenPreheat_ProId >= 16000 and nAwakenPreheat_ProId <= 16049 then   --铁扇
		nAwakenPreheat_Pro = 5
	elseif nAwakenPreheat_ProId >= 9000 and nAwakenPreheat_ProId <= 9049 then   --斗士
		nAwakenPreheat_Pro = 6
	elseif nAwakenPreheat_ProId >= 4000 and nAwakenPreheat_ProId <= 4049 then   --弓手
		nAwakenPreheat_Pro = 7
	elseif nAwakenPreheat_ProId >= 5000 and nAwakenPreheat_ProId <= 5049 then   --忍者
		nAwakenPreheat_Pro = 8
	elseif nAwakenPreheat_ProId >= 6000 and nAwakenPreheat_ProId <= 6049 then   --武僧
		nAwakenPreheat_Pro = 9
	elseif nAwakenPreheat_ProId >= 8000 and nAwakenPreheat_ProId <= 8049 then   --小龙
		nAwakenPreheat_Pro = 10
	end 
	tAwakenPreheat_Data["RangText"]["Pro"] = nAwakenPreheat_Pro
	if nAwakenPreheat_Pro == 0 then 
		return false
	end 
	local nAwakenPreheat_ProName = tAwakenPreheat_Text["Pro"][nAwakenPreheat_Pro]
	tNpcGossip[25801]["Text131"] = string.format(tAwakenPreheat_Text[25801]["Text131"],nAwakenPreheat_ProName)
	for i = 1,10,1 do 
		local nAwakenPreheat_GlobalId = tAwakenPreheat_Data["RankGlobal"][nAwakenPreheat_Pro][i][1]
		local nAwakenPreheat_Num = tAwakenPreheat_Data["RankGlobal"][nAwakenPreheat_Pro][i][2]
		local nAwakenPreheat_GlobalNum = Get_SysDynaGlobalData(nAwakenPreheat_GlobalId,nAwakenPreheat_Num)
		local nAwakenPreheat_GlobalName = Get_SysDynaGlobalDataStr(nAwakenPreheat_GlobalId,nAwakenPreheat_Num)
		if nAwakenPreheat_GlobalName == "" then 
			nAwakenPreheat_GlobalName = tAwakenPreheat_Text[25801]["NoName"]
		end 
		nAwakenPreheat_GlobalName = string.gsub(nAwakenPreheat_GlobalName, "<", " ")
		nAwakenPreheat_GlobalName = string.gsub(nAwakenPreheat_GlobalName, ">", " ")
		-- User_TalkChannel2005(tAwakenPreheat_Text[25801]["Reward"][i])
		tNpcGossip[25801]["Text13" .. i+3] = string.format(tAwakenPreheat_Text[25801]["Text13" .. i+3],nAwakenPreheat_GlobalNum,nAwakenPreheat_GlobalName)
		-- tNpcGossip[25801]["Text13" .. i+3] = Sys_Alignment(tostring(i),3,tostring(nAwakenPreheat_GlobalNum),15,nAwakenPreheat_GlobalName,25,tAwakenPreheat_Text[25801]["Reward"][i],42)
	end 
	return true
end 
	
-- 排行榜选项显示
function AwakenPreheat_RankOptionText(nAwakenPreheat_Pro)
	-- local nAwakenPreheat_NewPro = tAwakenPreheat_Data["RangText"]["Pro"]
	-- if nAwakenPreheat_NewPro == nAwakenPreheat_Pro then 
		-- return false
	-- else
		return true
	-- end 
end 

-- 片区怪物掉落
function AwakenPreheat_MonsterReward()
	if not Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		return
	end 
	local nAwakenPreheat_Space = 1
	if not User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
		return
	end 
	local nFlag,tAward = Probabil_RandomAward(tAwakenPreheat_Random["MonsterReward"],1)
	local nItemNum = tAward[1]["tAward"][1]["Item_1"]
	if nItemNum == 2 then 
		RewardTemplate_UseItemAndMsg(tAwakenPreheat_Drop[1])
	end 
end 
	
-- 侠义值分配对白
function AwakenPreheat_DistributeText()
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][3]
	tNpcGossip[nAwakenPreheat_NpcId]["Text313"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text313"],nAwakenPreheat_DataTotalScore)
	for i = 1,10,1 do 
		-- 记录各职业积分
		local nAwakenPreheat_EventTypeProScore = tAwakenPreheat_Stc["ProBet"]["EventType"]
		local nAwakenPreheat_DataTypeProScore = tAwakenPreheat_Stc["ProBet"]["DataType"][i]
		local nAwakenPreheat_DataProScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeProScore,nAwakenPreheat_DataTypeProScore)
		tNpcGossip[nAwakenPreheat_NpcId]["Text31" .. i+3] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text31" .. i+3],nAwakenPreheat_DataProScore)
	end 
	return true
end 
	
-- 分配侠义值
function AwakenPreheat_DistributeJF(nAwakenPreheat_Pro)
	
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][3]
	Sys_DialogOptEdit(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Option321"],10,"AwakenPreheat_ConfirmDistribute</N>"..nAwakenPreheat_Pro .. "</N>" ..nAwakenPreheat_NpcId)
	LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"3-2")
	
end 
-- 二次确认分配侠义值对白
function AwakenPreheat_ConfirmDistribute(nAwakenPreheat_Pro,nAwakenPreheat_NpcId)
	-- 获取输入框中的数字
	local nAwakenPreheat_AddProBetJF = tonumber(Get_SysAcceptStr())
	if type(nAwakenPreheat_AddProBetJF) ~= "number" or nAwakenPreheat_AddProBetJF <= 0 then
		
		return
	end
	local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][nAwakenPreheat_Pro]
	tNpcGossip[nAwakenPreheat_NpcId]["Text331"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text331"],nAwakenPreheat_AddProBetJF,sAwakenPreheat_Pro)
	tNpcGossip[nAwakenPreheat_NpcId]["OptionFunc331"] = "AwakenPreheat_ConfirmDistributeAgain</N>" ..nAwakenPreheat_Pro.. "</N>" ..nAwakenPreheat_NpcId.. "</N>" ..nAwakenPreheat_AddProBetJF
	LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"3-3")
end 
-- 二次确认分配侠义值
function AwakenPreheat_ConfirmDistributeAgain(nAwakenPreheat_Pro,nAwakenPreheat_NpcId,nAwakenPreheat_AddProBetJF)
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	if nAwakenPreheat_DataTotalScore < nAwakenPreheat_AddProBetJF then 
		LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"3-5")
		return
	end 
	local nAwakenPreheat_NewDataTotalScore = nAwakenPreheat_DataTotalScore - nAwakenPreheat_AddProBetJF
	Task_SetStatistic(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore,nAwakenPreheat_NewDataTotalScore,1)
	Task_SetStcTimestamp(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore,0)
	-- 记录各职业投注积分
	local nAwakenPreheat_EventTypeProBet = tAwakenPreheat_Stc["ProBet"]["EventType"]
	local nAwakenPreheat_DataTypeProBet = tAwakenPreheat_Stc["ProBet"]["DataType"][nAwakenPreheat_Pro]
	-- 增加当前职业投注积分
	Task_AddStatistic(nAwakenPreheat_EventTypeProBet,nAwakenPreheat_DataTypeProBet,nAwakenPreheat_AddProBetJF,1)
	-- 增加后的当前职业投注积分
	local nAwakenPreheat_DataProBet = Get_UserStatisticValue(nAwakenPreheat_EventTypeProBet,nAwakenPreheat_DataTypeProBet)
	-- 职业名
	local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][nAwakenPreheat_Pro]
	tNpcGossip[nAwakenPreheat_NpcId]["Text341"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text341"],nAwakenPreheat_AddProBetJF,sAwakenPreheat_Pro)
	tNpcGossip[nAwakenPreheat_NpcId]["Text342"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text342"],nAwakenPreheat_DataProBet)
	LinkNpcGossipFunc_New(nAwakenPreheat_NpcId,"3-4")
end 

-- 查看当前侠义值
function AwakenPreheat_SeeScoreText()
		-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	local nAwakenPreheat_NpcId = tAwakenPreheat_Data["NpcId"][3]
	tNpcGossip[nAwakenPreheat_NpcId]["Text413"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text413"],nAwakenPreheat_DataTotalScore)
	for i = 1,10,1 do 
		-- 记录各职业积分
		local nAwakenPreheat_EventTypeProScore = tAwakenPreheat_Stc["ProBet"]["EventType"]
		local nAwakenPreheat_DataTypeProScore = tAwakenPreheat_Stc["ProBet"]["DataType"][i]
		local nAwakenPreheat_DataProScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeProScore,nAwakenPreheat_DataTypeProScore)
		tNpcGossip[nAwakenPreheat_NpcId]["Text41" .. i+3] = string.format(tAwakenPreheat_Text[nAwakenPreheat_NpcId]["Text41" .. i+3],nAwakenPreheat_DataProScore)
	end 
	return true
end 


-- 显示当前总侠义值
function AwakenPreheat_TotalScoreItemText(nAwakenPreheat_ItemId)
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	tItem[nAwakenPreheat_ItemId]["Text113"] = string.format(tAwakenPreheat_Text[nAwakenPreheat_ItemId]["Text113"],nAwakenPreheat_DataTotalScore)
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
		end 
		return false
	else
		return true
	end 
end 

-- 显示当前各职业总侠义值
function AwakenPreheat_ProScoreItemText(nAwakenPreheat_ItemId)
	
	for i = 1,10,1 do 
		-- 记录各职业积分
		local nAwakenPreheat_EventTypeProJF = tAwakenPreheat_Stc["Profession"]["EventType"]
		local nAwakenPreheat_DataTypeProJF = tAwakenPreheat_Stc["Profession"]["DataType"][i]
		local nAwakenPreheat_DataProJF = Get_UserStatisticValue(nAwakenPreheat_EventTypeProJF,nAwakenPreheat_DataTypeProJF)
		-- 记录各职业积分等级
		local nAwakenPreheat_EventTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["EventType"]
		local nAwakenPreheat_DataTypeProLevel = tAwakenPreheat_Stc["ProLevel"]["DataType"][i]
		local nAwakenPreheat_DataProLevel = Get_UserStatisticValue(nAwakenPreheat_EventTypeProLevel,nAwakenPreheat_DataTypeProLevel)
		-- 记录各职业投注积分
		local nAwakenPreheat_EventTypeProBet = tAwakenPreheat_Stc["ProBet"]["EventType"]
		local nAwakenPreheat_DataTypeProBet = tAwakenPreheat_Stc["ProBet"]["DataType"][i]
		local nAwakenPreheat_DataProBet = Get_UserStatisticValue(nAwakenPreheat_EventTypeProBet,nAwakenPreheat_DataTypeProBet)
		-- 升级所需总侠义值
		local nAwakenPreheat_TotalExe = tAwakenPreheat_Data["ExeLevel"][nAwakenPreheat_DataProLevel+1] 
		-- 升级还需侠义值
		local nAwakenPreheat_DiffExe = nAwakenPreheat_TotalExe - nAwakenPreheat_DataProJF
		-- 等级名称
		local sAwakenPreheat_ProName = tAwakenPreheat_Text["ProName"][i][nAwakenPreheat_DataProLevel]
		-- 职业 
		local sAwakenPreheat_Pro = tAwakenPreheat_Text["Pro"][i]
		
		if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
			tItem[nAwakenPreheat_ItemId]["Text213"] = tAwakenPreheat_Text[nAwakenPreheat_ItemId]["Text213"]
			if nAwakenPreheat_DataProLevel >= 10 then 
			local sAwakenPreheat_MaxLevel = tAwakenPreheat_Text[25800]["MaxLevel"]
				tItem[nAwakenPreheat_ItemId]["Text21" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,sAwakenPreheat_MaxLevel,42)
			else
				-- tNpcGossip[25800]["Text41" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,4,tostring(nAwakenPreheat_DataProJF),20,sAwakenPreheat_ProName,34,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],54)
				-- tItem[nAwakenPreheat_ItemId]["Text21" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,tostring(nAwakenPreheat_DiffExe) .. tAwakenPreheat_Text["Dian"],42)
				tItem[nAwakenPreheat_ItemId]["Text21" .. i+3] = Sys_Alignment(sAwakenPreheat_Pro,1,tostring(nAwakenPreheat_DataProJF),17,sAwakenPreheat_ProName,26,string.format(tAwakenPreheat_Text["lianjie"],tostring(nAwakenPreheat_DiffExe),tAwakenPreheat_Text["Dian"]),42)
			end
		elseif Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
			tItem[nAwakenPreheat_ItemId]["Text213"] = tAwakenPreheat_Text[nAwakenPreheat_ItemId]["Text313"]
			tItem[nAwakenPreheat_ItemId]["Text21" .. i+3] = string.format(tAwakenPreheat_Text[nAwakenPreheat_ItemId]["Text31" .. i+3],nAwakenPreheat_DataProBet)
		end 
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
		end 
		return false
	else
		return true
	end 
	
end 
-- 过期删除
function AwakenPreheat_ChkItem(nAwakenPreheat_ItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
		end 
	else
		LinkItemGossipFunc_New(nAwakenPreheat_ItemId,"1-1")
	end 
end 
-- 随机线索
function AwakenPreheat_RandomWeb()
	local nAwakenPreheat_EventTypeStage = tAwakenPreheat_Stc["Stage"]["EventType"]
	local nAwakenPreheat_DataTypeStage = tAwakenPreheat_Stc["Stage"]["DataType"]
	local nAwakenPreheat_DataStage = Get_UserStatisticValue(nAwakenPreheat_EventTypeStage,nAwakenPreheat_DataTypeStage)
	if nAwakenPreheat_DataStage == 0 then 
		local nAwakenPreheat_RandomWeb = math.random(1,5)
		Task_SetStatistic(nAwakenPreheat_EventTypeStage,nAwakenPreheat_DataTypeStage,nAwakenPreheat_RandomWeb,1)
		Task_SetStcTimestamp(nAwakenPreheat_EventTypeStage,nAwakenPreheat_DataTypeStage,0)
	end 
	local nAwakenPreheat_NewDataStage = Get_UserStatisticValue(nAwakenPreheat_EventTypeStage,nAwakenPreheat_DataTypeStage)
	User_SendWebPage(tAwakenPreheat_Data["Web"]["stage2"][nAwakenPreheat_NewDataStage])
end 

function AwakenPreheat_OpenWeb()
	User_SendWebPage(tAwakenPreheat_Data["Web"]["stage3"])
end 

function AwakenPreheat_OpenTiemPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	local tAwakenPreheat_Tiem = tAwakenPreheat_Data["Tiem"][nAwakenPreheat_ItemId]
	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
	if CommonFunc_GetAfterActivityTime(tAwakenPreheat_Tiem) then 
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then 
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
			return
		end 
	end
	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
 
	RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
end 

-- 混沌牌过期删除
function AwakenPreheat_ChkProRandomPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
			return
		end 
	else
		LinkItemGossipFunc_New(nAwakenPreheat_ItemId,"1-1")
	end
end 
	
-- 混沌牌
function AwakenPreheat_OpenProRandomPack(nAwakenPreheat_ItemId,nAwakenPreheat_Num)
	local nAwakenPreheat_Pro = 0
	-- local nAwakenPreheat_ProId = Get_UserProfession()
	local nAwakenPreheat_ProId = Get_NewUserProfession()
	-- 职业奖励区分
	if nAwakenPreheat_ProId >= 1000 and nAwakenPreheat_ProId <= 1049 then  --勇士
		nAwakenPreheat_Pro = 1
	elseif nAwakenPreheat_ProId >= 2000 and nAwakenPreheat_ProId <= 2049 then   --战士
		nAwakenPreheat_Pro = 2
	elseif nAwakenPreheat_ProId >= 10000 and nAwakenPreheat_ProId <= 10001  or  nAwakenPreheat_ProId >= 13002 and nAwakenPreheat_ProId <= 13049 or nAwakenPreheat_ProId >= 14002 and nAwakenPreheat_ProId <= 14049 then  --道士
		nAwakenPreheat_Pro = 3
	elseif nAwakenPreheat_ProId >= 7000 and nAwakenPreheat_ProId <= 7049 then   --海盗
		nAwakenPreheat_Pro = 4
	elseif nAwakenPreheat_ProId >= 16000 and nAwakenPreheat_ProId <= 16049 then   --铁扇
		nAwakenPreheat_Pro = 5
	elseif nAwakenPreheat_ProId >= 9000 and nAwakenPreheat_ProId <= 9049 then   --斗士
		nAwakenPreheat_Pro = 6
	elseif nAwakenPreheat_ProId >= 4000 and nAwakenPreheat_ProId <= 4049 then   --弓手
		nAwakenPreheat_Pro = 7
	elseif nAwakenPreheat_ProId >= 5000 and nAwakenPreheat_ProId <= 5049 then   --忍者
		nAwakenPreheat_Pro = 8
	elseif nAwakenPreheat_ProId >= 6000 and nAwakenPreheat_ProId <= 6049 then   --武僧
		nAwakenPreheat_Pro = 9
	elseif nAwakenPreheat_ProId >= 8000 and nAwakenPreheat_ProId <= 8049 then   --小龙
		nAwakenPreheat_Pro = 10
	end 
	if nAwakenPreheat_Pro == 0 then 
		return
	end 
	-- local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
	-- if not bJanuaryFirstCharger20_Judge then
		-- return
	-- end
	local nAwakenPreheat_Space = nAwakenPreheat_Num
	if nAwakenPreheat_Num == 0 then 
		local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		nAwakenPreheat_Num = nAwakenPreheat_nItemNum
		nAwakenPreheat_Space = 10
	end 
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,nAwakenPreheat_Num) then
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["NoCard1"])
		return
	end 
	if not User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
		Sys_MsgBox(string.format(tAwakenPreheat_Text["MsgBox"]["NoSpace2"],nAwakenPreheat_Space))
		return
	end 
	for i = 1,nAwakenPreheat_Num,1 do 
		RewardTemplate_RandomReward(tAwakenPreheat_Pack[nAwakenPreheat_ItemId],nAwakenPreheat_Pro)
	end 
end 

-- 一阶段积分礼包
function AwakenPreheat_ScorePack1(nAwakenPreheat_ItemId)
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return
	end 
	local nAwakenPreheat_Space = 1
	if not User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["NoSpace"])
		return
	end 
	-- 普通兑换道具奖励数量
	local AwakenPreheat_OrdinaryNum = 0
	-- 气力值数量
	local AwakenPreheat_ChiNum = 0
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	for i = 1,10,1 do 
		local nAwakenPreheat_EventTypeProfen = tAwakenPreheat_Stc["ProBet"]["EventType"]
		local nAwakenPreheat_DataTypeProfen = tAwakenPreheat_Stc["ProBet"]["DataType"][i]
		local nAwakenPreheat_DataProfen = Get_UserStatisticValue(nAwakenPreheat_EventTypeProfen,nAwakenPreheat_DataTypeProfen)
		nAwakenPreheat_DataTotalScore = nAwakenPreheat_DataTotalScore + nAwakenPreheat_DataProfen
	end 
	if nAwakenPreheat_DataTotalScore <= 0 then 
		return
	end 
		-- 记录一阶段积分礼包领取及使用情况
	local nAwakenPreheat_EventTypeLoginReward = tAwakenPreheat_Stc["LoginReward1"]["EventType"]
	local nAwakenPreheat_DataTypeLoginReward = tAwakenPreheat_Stc["LoginReward1"]["DataType"]
	local nAwakenPreheat_DataLoginReward = Get_UserStatisticValue(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward)
	if nAwakenPreheat_DataLoginReward >= 2 then 
		return
	end 
	if nAwakenPreheat_DataTotalScore <= 3000 then 
		AwakenPreheat_OrdinaryNum = nAwakenPreheat_DataTotalScore
	elseif nAwakenPreheat_DataTotalScore > 3000 and nAwakenPreheat_DataTotalScore <= 8000 then 
		AwakenPreheat_OrdinaryNum = 3000
		AwakenPreheat_ChiNum = nAwakenPreheat_DataTotalScore - 3000 
	elseif nAwakenPreheat_DataTotalScore > 8000 then 
		AwakenPreheat_OrdinaryNum = 3000
		AwakenPreheat_ChiNum = 5000
	end 
	local sAwakenPreheat_Attr = "0 %d"
	if Task_SetStatistic(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,2,1) then   --记录开启
		Task_SetStcTimestamp(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,0)
		-- 重写奖励表
		if nAwakenPreheat_DataTotalScore ~= 0 and AwakenPreheat_ChiNum == 0 then 
			local tAwakenPreheat_Synthesis = CommonFunc_Copy(tAwakenPreheat_Reward[1])
			tAwakenPreheat_Synthesis["DeleteItem"][1]["Id"] = nAwakenPreheat_ItemId 
			tAwakenPreheat_Synthesis["RewardItem"][1]["Id"] = 3327340
			tAwakenPreheat_Synthesis["RewardItem"][1]["Attr"] = string.format(sAwakenPreheat_Attr,AwakenPreheat_OrdinaryNum)
			RewardTemplate_UseItemAndMsg(tAwakenPreheat_Synthesis)
		elseif nAwakenPreheat_DataTotalScore ~= 0 and AwakenPreheat_ChiNum ~= 0 then 
			local tAwakenPreheat_Synthesis = CommonFunc_Copy(tAwakenPreheat_Reward[2])
			tAwakenPreheat_Synthesis["DeleteItem"][1]["Id"] = nAwakenPreheat_ItemId 
			tAwakenPreheat_Synthesis["RewardItem"][1]["Id"] = 3327340
			tAwakenPreheat_Synthesis["RewardItem"][1]["Attr"] = string.format(sAwakenPreheat_Attr,AwakenPreheat_OrdinaryNum)
			tAwakenPreheat_Synthesis["RewardStrengthValue"]["Value"] = AwakenPreheat_ChiNum
			RewardTemplate_UseItemAndMsg(tAwakenPreheat_Synthesis)
		end 
	end 
end 

-- 二阶段积分礼包
function AwakenPreheat_ScorePack2(nAwakenPreheat_ItemId)
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return
	end 
	local nAwakenPreheat_Space = 1
	if not User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["NoSpace"])
		return
	end 
	-- 普通兑换道具奖励数量
	local AwakenPreheat_OrdinaryNum = 0
	-- 气力值数量
	local AwakenPreheat_ChiNum = 0
	-- 记录忍者职业投注积分
	local nAwakenPreheat_EventTypeRZScore = tAwakenPreheat_Stc["ProBet"]["EventType"]
	local nAwakenPreheat_DataTypeRzScore = tAwakenPreheat_Stc["ProBet"]["DataType"][8]
	local nAwakenPreheat_DataRzScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeRZScore,nAwakenPreheat_DataTypeRzScore)
	if nAwakenPreheat_DataRzScore <= 0 then 
		return
	end 
	-- 记录二阶段积分礼包领取及使用情况
	local nAwakenPreheat_EventTypeLoginReward = tAwakenPreheat_Stc["LoginReward2"]["EventType"]
	local nAwakenPreheat_DataTypeLoginReward = tAwakenPreheat_Stc["LoginReward2"]["DataType"]
	local nAwakenPreheat_DataLoginReward = Get_UserStatisticValue(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward)
	if nAwakenPreheat_DataLoginReward >= 2 then 
		return
	end 
	
	if nAwakenPreheat_DataRzScore <= 1500 then 
		AwakenPreheat_OrdinaryNum = nAwakenPreheat_DataRzScore
	elseif nAwakenPreheat_DataRzScore > 1500 and nAwakenPreheat_DataRzScore <= 6500 then 
		AwakenPreheat_OrdinaryNum = 1500
		AwakenPreheat_ChiNum = nAwakenPreheat_DataRzScore - 1500 
	elseif nAwakenPreheat_DataRzScore > 6500 then 
		AwakenPreheat_OrdinaryNum = 1500
		AwakenPreheat_ChiNum = 5000
	end 
	local sAwakenPreheat_Attr = "0 %d"
	if Task_SetStatistic(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,2,1) then  --记录开启
		Task_SetStcTimestamp(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,0)
		-- 重写奖励表
		if nAwakenPreheat_DataRzScore ~= 0 and AwakenPreheat_ChiNum == 0 then 
			local tAwakenPreheat_Synthesis = CommonFunc_Copy(tAwakenPreheat_Reward[1])
			tAwakenPreheat_Synthesis["DeleteItem"][1]["Id"] = nAwakenPreheat_ItemId 
			tAwakenPreheat_Synthesis["RewardItem"][1]["Id"] = 3327341
			tAwakenPreheat_Synthesis["RewardItem"][1]["Attr"] = string.format(sAwakenPreheat_Attr,AwakenPreheat_OrdinaryNum)
			RewardTemplate_UseItemAndMsg(tAwakenPreheat_Synthesis)
		elseif nAwakenPreheat_DataRzScore ~= 0 and AwakenPreheat_ChiNum ~= 0 then 
			local tAwakenPreheat_Synthesis = CommonFunc_Copy(tAwakenPreheat_Reward[2])
			tAwakenPreheat_Synthesis["DeleteItem"][1]["Id"] = nAwakenPreheat_ItemId 
			tAwakenPreheat_Synthesis["RewardItem"][1]["Id"] = 3327341
			tAwakenPreheat_Synthesis["RewardItem"][1]["Attr"] = string.format(sAwakenPreheat_Attr,AwakenPreheat_OrdinaryNum)
			tAwakenPreheat_Synthesis["RewardStrengthValue"]["Value"] = AwakenPreheat_ChiNum
			RewardTemplate_UseItemAndMsg(tAwakenPreheat_Synthesis)
		end 
	end 
end 


function AwakenPreheat_Login1()
	if not Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		return
	end 
	-- 记录全职业总积分
	local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
	local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
	local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
	if nAwakenPreheat_DataTotalScore <= 0 then 
		return
	end 
	-- 记录一阶段积分礼包领取及使用情况
	local nAwakenPreheat_EventTypeLoginReward = tAwakenPreheat_Stc["LoginReward1"]["EventType"]
	local nAwakenPreheat_DataTypeLoginReward = tAwakenPreheat_Stc["LoginReward1"]["DataType"]
	local nAwakenPreheat_DataLoginReward = Get_UserStatisticValue(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward)
	if nAwakenPreheat_DataLoginReward > 0 then 
		return
	end 

	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_LoginReward[1])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	-- RewardTemplate_UseItemAndMsg(tAwakenPreheat_LoginReward[1])
	if Task_SetStatistic(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,1,1) then   --记录领取
		Task_SetStcTimestamp(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,0)
		local sAwakenPreheat_Sender = tAwakenPreheat_Text["Mail"][2]["Name"]
		local sAwakenPreheat_Title = tAwakenPreheat_Text["Mail"][2]["Zhuti"]
		local sAwakenPreheat_Content = tAwakenPreheat_Text["Mail"][2]["NeiRong"]
		local nAwakenPreheat_MailActionId = tAwakenPreheat_Data["LoginReward"][1]
		local nAwakenPreheat_UserId = Get_UserId()
		Sys_SendMail(nAwakenPreheat_UserId,0,0,nAwakenPreheat_MailActionId,0,7,sAwakenPreheat_Sender,sAwakenPreheat_Title,sAwakenPreheat_Content)
	end 
	
end 
	
function AwakenPreheat_Login2()
	if not Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime3"]) then 
		return
	end 
	-- 记录忍者职业投注积分
	local nAwakenPreheat_EventTypeRZScore = tAwakenPreheat_Stc["ProBet"]["EventType"]
	local nAwakenPreheat_DataTypeRzScore = tAwakenPreheat_Stc["ProBet"]["DataType"][8]
	local nAwakenPreheat_DataRzScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeRZScore,nAwakenPreheat_DataTypeRzScore)
	if nAwakenPreheat_DataRzScore <= 0 then 
		return
	end 
	-- 记录二阶段积分礼包领取及使用情况
	local nAwakenPreheat_EventTypeLoginReward = tAwakenPreheat_Stc["LoginReward2"]["EventType"]
	local nAwakenPreheat_DataTypeLoginReward = tAwakenPreheat_Stc["LoginReward2"]["DataType"]
	local nAwakenPreheat_DataLoginReward = Get_UserStatisticValue(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward)
	if nAwakenPreheat_DataLoginReward > 0 then 
		return
	end 

	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_LoginReward[1])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	-- RewardTemplate_UseItemAndMsg(tAwakenPreheat_LoginReward[1])
	if Task_SetStatistic(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,1,1) then  --记录领取
		Task_SetStcTimestamp(nAwakenPreheat_EventTypeLoginReward,nAwakenPreheat_DataTypeLoginReward,0)
		local sAwakenPreheat_Sender = tAwakenPreheat_Text["Mail"][4]["Name"]
		local sAwakenPreheat_Title = tAwakenPreheat_Text["Mail"][4]["Zhuti"]
		local sAwakenPreheat_Content = tAwakenPreheat_Text["Mail"][4]["NeiRong"]
		local nAwakenPreheat_MailActionId = tAwakenPreheat_Data["LoginReward"][2]
		local nAwakenPreheat_UserId = Get_UserId()
		Sys_SendMail(nAwakenPreheat_UserId,0,0,nAwakenPreheat_MailActionId,0,7,sAwakenPreheat_Sender,sAwakenPreheat_Title,sAwakenPreheat_Content)
	end 
	
end 

-- 一阶段物品寻路及过期删除
function AwakenPreheat_FindNpc1(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		local nAwakenPreheat_ItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum) then 
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
		end 
		return
	end 
	NpcPosition_PathFind(tAwakenPreheat_Data["NpcId"][1])
end 

-- 二阶段物品寻路及过期删除
function AwakenPreheat_FindNpc2(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		local nAwakenPreheat_ItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum) then 
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
		end 
		return
	end 
	NpcPosition_PathFind(tAwakenPreheat_Data["NpcId"][3])
end 

-- 三阶段物品寻路及过期删除
function AwakenPreheat_FindNpc3(nAwakenPreheat_ItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime3"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime3"]) then 
		local nAwakenPreheat_ItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum) then 
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
		end 
		return
	end 
	NpcPosition_PathFind(tAwakenPreheat_Data["NpcId"][5])
end 

-- 显示购买秘典拓本选项
function AwakenPreheat_ChkBook()
	local nAwakenPreheat_ItemId = tAwakenPreheat_Data["BookId"]
	if Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return false
	else
		return true
	end 
end 

-- 秘典拓本传送至九天玄女
function AwakenPreheat_BlackNpc()
	local nAwakenPreheat_MapId
	local nAwakenPreheat_MapX 
	local nAwakenPreheat_MapY 
	local nAwakenPreheat_Rang 
	
	if SpecialServer_ChkNoGiftServer() then 
		nAwakenPreheat_MapId = tAwakenPreheat_Data["BlackNpc"][2]["MapId"]
		nAwakenPreheat_MapX  = tAwakenPreheat_Data["BlackNpc"][2]["MapX"] 
		nAwakenPreheat_MapY  = tAwakenPreheat_Data["BlackNpc"][2]["MapY"] 
		nAwakenPreheat_Rang  = tAwakenPreheat_Data["BlackNpc"][2]["Rang"] 
	else
		nAwakenPreheat_MapId = tAwakenPreheat_Data["BlackNpc"][1]["MapId"]
		nAwakenPreheat_MapX  = tAwakenPreheat_Data["BlackNpc"][1]["MapX"] 
		nAwakenPreheat_MapY  = tAwakenPreheat_Data["BlackNpc"][1]["MapY"] 
		nAwakenPreheat_Rang  = tAwakenPreheat_Data["BlackNpc"][1]["Rang"] 
	end 
	
	if Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		User_UserRandBoundTrans(nAwakenPreheat_MapId,nAwakenPreheat_MapX,nAwakenPreheat_MapY,nAwakenPreheat_Rang,nAwakenPreheat_Rang,1)
	elseif Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		User_UserRandBoundTrans(nAwakenPreheat_MapId,nAwakenPreheat_MapX,nAwakenPreheat_MapY,nAwakenPreheat_Rang,nAwakenPreheat_Rang,1)
	else
		return
	end 
end 

-- 活动中对白显示侠义总值
function AwakenPreheat_TotalText()
	if Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime1"]) then 
		-- 记录全职业总积分
		local nAwakenPreheat_EventTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["EventType"]
		local nAwakenPreheat_DataTypeTotalScore = tAwakenPreheat_Stc["TotalScore"]["DataType"]
		local nAwakenPreheat_DataTotalScore = Get_UserStatisticValue(nAwakenPreheat_EventTypeTotalScore,nAwakenPreheat_DataTypeTotalScore)
		tNpcGossip[25800]["Text136"] = string.format(tAwakenPreheat_Text[25800]["Text136"],nAwakenPreheat_DataTotalScore)
		return true
	else
		return false
	end 
end 

-- 混沌牌100张开启
function AwakenPreheat_Open100ProRandomPack(nAwakenPreheat_ItemId,nAwakenPreheat_Num)
		local nAwakenPreheat_Pro = 0
	-- local nAwakenPreheat_ProId = Get_UserProfession()
	local nAwakenPreheat_ProId = Get_NewUserProfession()
	-- 职业奖励区分
	if nAwakenPreheat_ProId >= 1000 and nAwakenPreheat_ProId <= 1049 then  --勇士
		nAwakenPreheat_Pro = 1
	elseif nAwakenPreheat_ProId >= 2000 and nAwakenPreheat_ProId <= 2049 then   --战士
		nAwakenPreheat_Pro = 2
	elseif nAwakenPreheat_ProId >= 10000 and nAwakenPreheat_ProId <= 10001  or  nAwakenPreheat_ProId >= 13002 and nAwakenPreheat_ProId <= 13049 or nAwakenPreheat_ProId >= 14002 and nAwakenPreheat_ProId <= 14049 then  --道士
		nAwakenPreheat_Pro = 3
	elseif nAwakenPreheat_ProId >= 7000 and nAwakenPreheat_ProId <= 7049 then   --海盗
		nAwakenPreheat_Pro = 4
	elseif nAwakenPreheat_ProId >= 16000 and nAwakenPreheat_ProId <= 16049 then   --铁扇
		nAwakenPreheat_Pro = 5
	elseif nAwakenPreheat_ProId >= 9000 and nAwakenPreheat_ProId <= 9049 then   --斗士
		nAwakenPreheat_Pro = 6
	elseif nAwakenPreheat_ProId >= 4000 and nAwakenPreheat_ProId <= 4049 then   --弓手
		nAwakenPreheat_Pro = 7
	elseif nAwakenPreheat_ProId >= 5000 and nAwakenPreheat_ProId <= 5049 then   --忍者
		nAwakenPreheat_Pro = 8
	elseif nAwakenPreheat_ProId >= 6000 and nAwakenPreheat_ProId <= 6049 then   --武僧
		nAwakenPreheat_Pro = 9
	elseif nAwakenPreheat_ProId >= 8000 and nAwakenPreheat_ProId <= 8049 then   --小龙
		nAwakenPreheat_Pro = 10
	end 
	if nAwakenPreheat_Pro == 0 then 
		return
	end 
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,nAwakenPreheat_Num) then
		Sys_MsgBox(tAwakenPreheat_Text["MsgBox"]["NoCard1"])
		return
	end 
	local nAwakenPreheat_Space = 10 
	if not User_CheckLeftSpace(nAwakenPreheat_Space) then     -- 背包空间不足
		Sys_MsgBox(string.format(tAwakenPreheat_Text["MsgBox"]["NoSpace2"],nAwakenPreheat_Space))
		return
	end 
	local nAwakenPreheat_UserId = Get_UserId()
	tAwakenPreheat_Data["ProRandomNum"][1][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][2][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][3][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][4][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][5][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][6][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][7][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][8][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][9][nAwakenPreheat_UserId]  = 0
	tAwakenPreheat_Data["ProRandomNum"][10][nAwakenPreheat_UserId] = 0
	
	for i = 1,nAwakenPreheat_Num,1 do
		local nAwakenPreheat_flat,tAwakenPreheat_Award = Probabil_RandomAward(tAwakenPreheat_Pack[nAwakenPreheat_ItemId],nAwakenPreheat_Pro)
		local nAwakenPreheat_Item = tAwakenPreheat_Award[1]["tAward"][1]["Item_1"]
		tAwakenPreheat_Data["ProRandomNum"][nAwakenPreheat_Item][nAwakenPreheat_UserId] = tAwakenPreheat_Data["ProRandomNum"][nAwakenPreheat_Item][nAwakenPreheat_UserId] + 1
	end 
	local nAwakenPreheat_RewardSY = 0
	local tAwakenPreheat_Synthesis = CommonFunc_Copy(tAwakenPreheat_Open100ProRandomPack[1])
	for k = 1,10,1 do
		local tAwakenPreheat_RewardNum = tAwakenPreheat_Data["ProRandomNum"][k][nAwakenPreheat_UserId]
		if tAwakenPreheat_RewardNum ~= 0 then 
			nAwakenPreheat_RewardSY = nAwakenPreheat_RewardSY +1
			local tAwakenPreheat_RewardId = tAwakenPreheat_Data["ProCardId"][k]
			local sAwakenPreheat_Attr = "0 %d"
			tAwakenPreheat_Synthesis["RewardItem"][nAwakenPreheat_RewardSY] = {}
			tAwakenPreheat_Synthesis["RewardItem"][nAwakenPreheat_RewardSY]["Id"] = tAwakenPreheat_RewardId
			tAwakenPreheat_Synthesis["RewardItem"][nAwakenPreheat_RewardSY]["Attr"] = string.format(sAwakenPreheat_Attr,tAwakenPreheat_RewardNum)
		end 
	end 
	RewardTemplate_UseItemAndMsg(tAwakenPreheat_Synthesis)
	
end 

-- 发型礼包
function AwakenPreheat_HairPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime3"]) then 
		local nAwakenPreheat_ItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_ItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
			return
		end 
	end 
	local nAwakenPreheat_HairId = tAwakenPreheat_Data["HairId"][nAwakenPreheat_ItemId]
	local nAwakenPreheat_Time = tAwakenPreheat_Data["HairTime"][nAwakenPreheat_ItemId]
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return
	end 
	if Item_DelItem(nAwakenPreheat_ItemId) then 
		local tTextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,1)
		Sys_SaveActionFestivalLog(tTextLog)
		User_NotifyChgHairstyle(nAwakenPreheat_HairId,nAwakenPreheat_Time)
	end 
end 

-- P7神魂礼包
function AwakenPreheat_P7OpenPack(nAwakenPreheat_ItemId,nAwakenPreheat_RewardId)
	if not Item_ChkMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,1) then
		return
	end 

	local nAwakenPreheat_nItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		-- if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_nItemNum)) then 
			-- local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_nItemNum)
			-- Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			-- User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
			-- return
		-- end 
	-- end 

	local nAwakenPreheat_GlobalId = tAwakenPreheat_Data["GlobalId"]["GreedServer"]
	local nJanuaryFirstCharger20_GloData0 = Get_SysDynaGlobalData(nAwakenPreheat_GlobalId,0)
	if nJanuaryFirstCharger20_GloData0 == 1 then 

		local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId][2][nAwakenPreheat_RewardId])
		if not bJanuaryFirstCharger20_Judge then
			return
		end
		RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId][2][nAwakenPreheat_RewardId])
	else

		local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId][1][nAwakenPreheat_RewardId])
		if not bJanuaryFirstCharger20_Judge then
			return
		end

		RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId][1][nAwakenPreheat_RewardId])

	end 
end 

---------------------------------------------------------NPC对白
--九天玄女(一阶段)
tNpcFace[6460] = 184
tNpcGossip[25800] = tNpcGossip[25800] or DefaultNpc:new{}
tNpcGossip[25800]["OptionHidden"] = 1
tNpcGossip[25800]["DialogueText"] = tAwakenPreheat_Text[25800]
--活动前
tNpcGossip[25800]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25800]["tOption1-1"] = {111}
tNpcGossip[25800]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"])
end
--活动后
tNpcGossip[25800]["Text1-2"] = {121,122}
tNpcGossip[25800]["tOption1-2"] = {121}
tNpcGossip[25800]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"])
end
--活动中 
tNpcGossip[25800]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25800]["tOption1-3"] = {132,135}
tNpcGossip[25800]["ChkFunc1-3"] = function ()
	return AwakenPreheat_TotalText()
end
-- tNpcGossip[25800]["OptionPoint131"] = "2-1"   -- 秘典规则
tNpcGossip[25800]["OptionPoint132"] = "3-1"   -- 上交侠义牌
-- tNpcGossip[25800]["OptionPoint133"] = "4-2"   -- 查看当前侠义值
-- tNpcGossip[25800]["OptionPoint134"] = "5-1"   -- 查看升阶奖励
tNpcGossip[25800]["OptionPoint135"] = "6-1"   -- 购买秘典拓本
tNpcGossip[25800]["OptionChkFunc135"] = function ()
	return AwakenPreheat_ChkBook()
end 

-- 接1、秘典规则
tNpcGossip[25800]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25800]["tOption2-1"] = {211}
tNpcGossip[25800]["OptionPoint211"] = "1-3"

-- 接2、上交侠义牌
tNpcGossip[25800]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
tNpcGossip[25800]["tOption3-1"] = {311,312,313}
tNpcGossip[25800]["ChkFunc3-1"] = function ()
	return AwakenPreheat_HandInCardText()
end
tNpcGossip[25800]["OptionFunc311"] = "AwakenPreheat_HandInAllCard"   -- 上交所有侠义牌
tNpcGossip[25800]["OptionPoint312"] = "3-2"   -- 上交单职业侠义牌
tNpcGossip[25800]["OptionPoint313"] = "5-1"   -- 查看升阶奖励

-- 接2-2、上交单职业侠义牌
tNpcGossip[25800]["Text3-2"] = {321}
tNpcGossip[25800]["tOption3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211}
tNpcGossip[25800]["OptionFunc321"]  = "AwakenPreheat_HandInCard</N>1</N>0"    --勇士
tNpcGossip[25800]["OptionChkFunc321"] = function ()
	return AwakenPreheat_HandInText(1)
end 
tNpcGossip[25800]["OptionFunc322"]  = "AwakenPreheat_HandInCard</N>2</N>0"    --战士
tNpcGossip[25800]["OptionChkFunc322"] = function ()
	return AwakenPreheat_HandInText(2)
end 
tNpcGossip[25800]["OptionFunc323"]  = "AwakenPreheat_HandInCard</N>3</N>0"    --道士
tNpcGossip[25800]["OptionChkFunc323"] = function ()
	return AwakenPreheat_HandInText(3)
end 
tNpcGossip[25800]["OptionFunc324"]  = "AwakenPreheat_HandInCard</N>4</N>0"    --海盗
tNpcGossip[25800]["OptionChkFunc324"] = function ()
	return AwakenPreheat_HandInText(4)
end 
tNpcGossip[25800]["OptionFunc325"]  = "AwakenPreheat_HandInCard</N>5</N>0"    --铁扇
tNpcGossip[25800]["OptionChkFunc325"] = function ()
	return AwakenPreheat_HandInText(5)
end 
tNpcGossip[25800]["OptionFunc326"]  = "AwakenPreheat_HandInCard</N>6</N>0"    --斗士
tNpcGossip[25800]["OptionChkFunc326"] = function ()
	return AwakenPreheat_HandInText(6)
end 
tNpcGossip[25800]["OptionFunc327"]  = "AwakenPreheat_HandInCard</N>7</N>0"    --弓手
tNpcGossip[25800]["OptionChkFunc327"] = function ()
	return AwakenPreheat_HandInText(7)
end 
tNpcGossip[25800]["OptionFunc328"]  = "AwakenPreheat_HandInCard</N>8</N>0"    --忍者
tNpcGossip[25800]["OptionChkFunc328"] = function ()
	return AwakenPreheat_HandInText(8)
end 
tNpcGossip[25800]["OptionFunc329"]  = "AwakenPreheat_HandInCard</N>9</N>0"    --武僧
tNpcGossip[25800]["OptionChkFunc329"] = function ()
	return AwakenPreheat_HandInText(9)
end 
tNpcGossip[25800]["OptionFunc3210"] = "AwakenPreheat_HandInCard</N>10</N>0"    --小龙
tNpcGossip[25800]["OptionChkFunc3210"] = function ()
	return AwakenPreheat_HandInText(10)
end 
tNpcGossip[25800]["OptionPoint3211"] = "1-3"    --没有
tNpcGossip[25800]["OptionChkFunc3211"] = function ()
	return AwakenPreheat_NoHandInText()
end 


-- 接3、查看当前侠义值
tNpcGossip[25800]["Text4-2"] = {421,422,423,424}
tNpcGossip[25800]["tOption4-2"] = {421,422}
tNpcGossip[25800]["ChkFunc4-2"] = function ()
	return AwakenPreheat_TotalScoreText()
end
tNpcGossip[25800]["OptionPoint421"] = "4-1" 
tNpcGossip[25800]["OptionPoint422"] = "1-3" 

-- 接3-1、查看各职业侠义值
tNpcGossip[25800]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112,4113,4114}
tNpcGossip[25800]["tOption4-1"] = {411}
tNpcGossip[25800]["ChkFunc4-1"] = function ()
	return AwakenPreheat_ProScoreText()
end
tNpcGossip[25800]["OptionPoint411"] = "1-3" 

-- 接4、查看升阶奖励
tNpcGossip[25800]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
tNpcGossip[25800]["tOption5-1"] = {511}
-- tNpcGossip[25800]["ChkFunc5-1"] = function ()
	-- return 
-- end
tNpcGossip[25800]["OptionPoint511"] = "1-3" 

-- 接5、购买秘典拓本
tNpcGossip[25800]["Text6-1"] = {611}
tNpcGossip[25800]["tOption6-1"] = {611,612}
tNpcGossip[25800]["OptionFunc611"] = "AwakenPreheat_BuyBook</N>25800"
tNpcGossip[25800]["OptionPoint612"] = "1-3" 

--极武榜
tNpcFace[2225] = 2698
tNpcGossip[25801] = tNpcGossip[25801] or DefaultNpc:new{}
tNpcGossip[25801]["OptionHidden"] = 1
-- tNpcGossip[25801]["nPageNum"]=10
tNpcGossip[25801]["DialogueText"] = tAwakenPreheat_Text[25801]
--活动前
tNpcGossip[25801]["Text1-1"] = {111,112,113}
tNpcGossip[25801]["tOption1-1"] = {111}
tNpcGossip[25801]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"])
end
--活动后
tNpcGossip[25801]["Text1-2"] = {121}
tNpcGossip[25801]["tOption1-2"] = {121}
tNpcGossip[25801]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime1"])
end
--活动中 
tNpcGossip[25801]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1314,1315,1316}
tNpcGossip[25801]["ChkFunc1-3"] = function ()
	return AwakenPreheat_FirstRankText()
end
tNpcGossip[25801]["tOption1-3"] = {131,132,133,134,135,136,137,138,139,1310}
tNpcGossip[25801]["OptionFunc131"] = "AwakenPreheat_RankingListText</N>1" 
tNpcGossip[25801]["OptionChkFunc131"] = function ()
	return AwakenPreheat_RankOptionText(1)
end 
tNpcGossip[25801]["OptionFunc132"] = "AwakenPreheat_RankingListText</N>2" 
tNpcGossip[25801]["OptionChkFunc132"] = function ()
	return AwakenPreheat_RankOptionText(2)
end 
tNpcGossip[25801]["OptionFunc133"] = "AwakenPreheat_RankingListText</N>3" 
tNpcGossip[25801]["OptionChkFunc133"] = function ()
	return AwakenPreheat_RankOptionText(3)
end 
tNpcGossip[25801]["OptionFunc134"] = "AwakenPreheat_RankingListText</N>4" 
tNpcGossip[25801]["OptionChkFunc134"] = function ()
	return AwakenPreheat_RankOptionText(4)
end 
tNpcGossip[25801]["OptionFunc135"] = "AwakenPreheat_RankingListText</N>5" 
tNpcGossip[25801]["OptionChkFunc135"] = function ()
	return AwakenPreheat_RankOptionText(5)
end 
tNpcGossip[25801]["OptionFunc136"] = "AwakenPreheat_RankingListText</N>6" 
tNpcGossip[25801]["OptionChkFunc136"] = function ()
	return AwakenPreheat_RankOptionText(6)
end 
tNpcGossip[25801]["OptionFunc137"] = "AwakenPreheat_RankingListText</N>7" 
tNpcGossip[25801]["OptionChkFunc137"] = function ()
	return AwakenPreheat_RankOptionText(7)
end 
tNpcGossip[25801]["OptionFunc138"] = "AwakenPreheat_RankingListText</N>8" 
tNpcGossip[25801]["OptionChkFunc138"] = function ()
	return AwakenPreheat_RankOptionText(8)
end 
tNpcGossip[25801]["OptionFunc139"] = "AwakenPreheat_RankingListText</N>9" 
tNpcGossip[25801]["OptionChkFunc139"] = function ()
	return AwakenPreheat_RankOptionText(9)
end 
tNpcGossip[25801]["OptionFunc1310"] = "AwakenPreheat_RankingListText</N>10" 
tNpcGossip[25801]["OptionChkFunc1310"] = function ()
	return AwakenPreheat_RankOptionText(10)
end 

-- 接1~10、查看【职业名】极武榜
tNpcGossip[25801]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116}
tNpcGossip[25801]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,2110}
-- tNpcGossip[25801]["OptionPoint211"] = "1-3" 
tNpcGossip[25801]["OptionFunc211"] = "AwakenPreheat_RankingListText</N>1" 
tNpcGossip[25801]["OptionChkFunc211"] = function ()
	return AwakenPreheat_RankOptionText(1)
end 
tNpcGossip[25801]["OptionFunc212"] = "AwakenPreheat_RankingListText</N>2" 
tNpcGossip[25801]["OptionChkFunc212"] = function ()
	return AwakenPreheat_RankOptionText(2)
end 
tNpcGossip[25801]["OptionFunc213"] = "AwakenPreheat_RankingListText</N>3" 
tNpcGossip[25801]["OptionChkFunc213"] = function ()
	return AwakenPreheat_RankOptionText(3)
end 
tNpcGossip[25801]["OptionFunc214"] = "AwakenPreheat_RankingListText</N>4" 
tNpcGossip[25801]["OptionChkFunc214"] = function ()
	return AwakenPreheat_RankOptionText(4)
end 
tNpcGossip[25801]["OptionFunc215"] = "AwakenPreheat_RankingListText</N>5" 
tNpcGossip[25801]["OptionChkFunc215"] = function ()
	return AwakenPreheat_RankOptionText(5)
end 
tNpcGossip[25801]["OptionFunc216"] = "AwakenPreheat_RankingListText</N>6" 
tNpcGossip[25801]["OptionChkFunc216"] = function ()
	return AwakenPreheat_RankOptionText(6)
end 
tNpcGossip[25801]["OptionFunc217"] = "AwakenPreheat_RankingListText</N>7" 
tNpcGossip[25801]["OptionChkFunc217"] = function ()
	return AwakenPreheat_RankOptionText(7)
end 
tNpcGossip[25801]["OptionFunc218"] = "AwakenPreheat_RankingListText</N>8" 
tNpcGossip[25801]["OptionChkFunc218"] = function ()
	return AwakenPreheat_RankOptionText(8)
end 
tNpcGossip[25801]["OptionFunc219"] = "AwakenPreheat_RankingListText</N>9" 
tNpcGossip[25801]["OptionChkFunc219"] = function ()
	return AwakenPreheat_RankOptionText(9)
end 
tNpcGossip[25801]["OptionFunc2110"] = "AwakenPreheat_RankingListText</N>10" 
tNpcGossip[25801]["OptionChkFunc2110"] = function ()
	return AwakenPreheat_RankOptionText(10)
end 

--九天玄女(二阶段)
tNpcFace[6461] = 184
tNpcGossip[25802] = tNpcGossip[25802] or DefaultNpc:new{}
tNpcGossip[25802]["OptionHidden"] = 1
tNpcGossip[25802]["DialogueText"] = tAwakenPreheat_Text[25802]
--活动前
tNpcGossip[25802]["Text1-1"] = {111,112,113,114}
tNpcGossip[25802]["tOption1-1"] = {111}
tNpcGossip[25802]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"])
end
--活动后
tNpcGossip[25802]["Text1-2"] = {121,122}
tNpcGossip[25802]["tOption1-2"] = {121}
tNpcGossip[25802]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"])
end
--活动中 
tNpcGossip[25802]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25802]["tOption1-3"] = {132,134,135}
tNpcGossip[25802]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime2"])
end
-- tNpcGossip[25802]["OptionPoint131"] = "2-1"   -- 秘典规则
tNpcGossip[25802]["OptionPoint132"] = "3-1"   -- 侠义值分配
-- tNpcGossip[25802]["OptionPoint133"] = "4-1"   -- 查看当前侠义值
tNpcGossip[25802]["OptionFunc134"] = "AwakenPreheat_RandomWeb"   -- 查看觉醒线索
tNpcGossip[25802]["OptionPoint135"] = "5-1"   -- 购买秘典拓本
tNpcGossip[25802]["OptionChkFunc135"] = function ()
	return AwakenPreheat_ChkBook()
end 

-- 接1、秘典规则
tNpcGossip[25802]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25802]["tOption2-1"] = {211}
tNpcGossip[25802]["OptionPoint211"] = "1-3"

-- 接2、侠义值分配
tNpcGossip[25802]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
tNpcGossip[25802]["tOption3-1"] = {311,312,313,314,315,316,317,318,319,3110}
tNpcGossip[25802]["ChkFunc3-1"] = function ()
	return AwakenPreheat_DistributeText()
end
tNpcGossip[25802]["OptionFunc311"]  = "AwakenPreheat_DistributeJF</N>1"
tNpcGossip[25802]["OptionFunc312"]  = "AwakenPreheat_DistributeJF</N>2"
tNpcGossip[25802]["OptionFunc313"]  = "AwakenPreheat_DistributeJF</N>3"
tNpcGossip[25802]["OptionFunc314"]  = "AwakenPreheat_DistributeJF</N>4"
tNpcGossip[25802]["OptionFunc315"]  = "AwakenPreheat_DistributeJF</N>5"
tNpcGossip[25802]["OptionFunc316"]  = "AwakenPreheat_DistributeJF</N>6"
tNpcGossip[25802]["OptionFunc317"]  = "AwakenPreheat_DistributeJF</N>7"
tNpcGossip[25802]["OptionFunc318"]  = "AwakenPreheat_DistributeJF</N>8"
tNpcGossip[25802]["OptionFunc319"]  = "AwakenPreheat_DistributeJF</N>9"
tNpcGossip[25802]["OptionFunc3110"] = "AwakenPreheat_DistributeJF</N>10"

-- 接2-1~10、分配为【职业名】侠义值
tNpcGossip[25802]["Text3-2"] = {321}
tNpcGossip[25802]["tOption3-2"] = {321,322}
tNpcGossip[25802]["OptionPoint322"] = "3-1"
-- 接2-X-1、[  ]答
tNpcGossip[25802]["Text3-3"] = {331,332}
tNpcGossip[25802]["tOption3-3"] = {331,332}
-- tNpcGossip[25802]["OptionFunc331"] = ""
tNpcGossip[25802]["OptionPoint332"] = "3-1"
-- 【成功】
tNpcGossip[25802]["Text3-4"] = {341,342}
tNpcGossip[25802]["tOption3-4"] = {341,342}
tNpcGossip[25802]["OptionPoint341"] = "3-1"
-- 【失败，侠义值不足】
tNpcGossip[25802]["Text3-5"] = {351}
tNpcGossip[25802]["tOption3-5"] = {351}
tNpcGossip[25802]["OptionPoint351"] = "1-3"

-- 接3、查看当前侠义值
tNpcGossip[25802]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112,4113,4114}
tNpcGossip[25802]["tOption4-1"] = {411}
tNpcGossip[25802]["ChkFunc4-1"] = function ()
	return AwakenPreheat_SeeScoreText()
end
tNpcGossip[25802]["OptionPoint411"] = "1-3"

-- 接5、购买秘典拓本
tNpcGossip[25802]["Text5-1"] = {511}
tNpcGossip[25802]["tOption5-1"] = {511,512}
tNpcGossip[25802]["OptionFunc511"] = "AwakenPreheat_BuyBook</N>25802"
tNpcGossip[25802]["OptionPoint512"] = "1-3"

--织田信长
tNpcFace[6484] = 203
tNpcGossip[25804] = tNpcGossip[25804] or DefaultNpc:new{}
tNpcGossip[25804]["OptionHidden"] = 1
tNpcGossip[25804]["DialogueText"] = tAwakenPreheat_Text[25804]
--活动前
tNpcGossip[25804]["Text1-1"] = {111,112,113,114}
tNpcGossip[25804]["tOption1-1"] = {111}
tNpcGossip[25804]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime3"])
end
--活动后
tNpcGossip[25804]["Text1-2"] = {121,122}
tNpcGossip[25804]["tOption1-2"] = {121}
tNpcGossip[25804]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime3"])
end
--活动中 
tNpcGossip[25804]["Text1-3"] = {131,132,133}
tNpcGossip[25804]["tOption1-3"] = {131,132}
tNpcGossip[25804]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime3"])
end
tNpcGossip[25804]["OptionFunc131"] = "AwakenPreheat_OpenWeb"   -- 查看觉醒秘传



-- 秘典拓本
tItem[3327339] = tItem[3327339] or {}
tItem[3327339]["Function"] = function(nItemId,sItemName)
	AwakenPreheat_ChkItem(nItemId)
end
-- 秘典拓本
tItemFace[3327339] = 2770
-- tItem[3327339] = tItem[3327339] or {}
tItem[3327339]["DialogueText"] = tAwakenPreheat_Text[3327339]
tItem[3327339]["Text1-1"] = {111,112,113,114}
tItem[3327339]["ChkFunc1-1"] = function ()
	return AwakenPreheat_TotalScoreItemText(3327339)
end
tItem[3327339]["tOption1-1"] = {111,112}
tItem[3327339]["OptionPoint111"] = "2-1"
tItem[3327339]["OptionFunc112"] = "AwakenPreheat_BlackNpc"
tItem[3327339]["OptionChkFunc112"] = function ()
	return Sys_ChkFullTime(tActivityTime["AwakenPreheat"]["ActivityTime1"])
end 


tItem[3327339]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114}
tItem[3327339]["ChkFunc2-1"] = function ()
	return AwakenPreheat_ProScoreItemText(3327339)
end
tItem[3327339]["tOption2-1"] = {211}


-- 混沌牌
tItem[3327338] = tItem[3327338] or {}
tItem[3327338]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_ChkProRandomPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
end
-- 混沌牌
tItemFace[3327338] = 2769
-- tItem[3327338] = tItem[3327338] or {}
tItem[3327338]["DialogueText"] = tAwakenPreheat_Text[3327338]
tItem[3327338]["Text1-1"] = {111}
tItem[3327338]["tOption1-1"] = {111,112,113}
tItem[3327338]["OptionFunc111"] = "AwakenPreheat_OpenProRandomPack</N>3327338</N>1"
tItem[3327338]["OptionFunc112"] = "AwakenPreheat_OpenProRandomPack</N>3327338</N>10"
tItem[3327338]["OptionFunc113"] = "AwakenPreheat_Open100ProRandomPack</N>3327338</N>100"


-- p7神魂礼包
tItemFace[3327470] = 1097
tItem[3327470] = tItem[3327470] or {}
tItem[3327470]["DialogueText"] = tAwakenPreheat_Text[3327470]
tItem[3327470]["Text1-1"] = {111}
tItem[3327470]["tOption1-1"] = {111,112}
tItem[3327470]["OptionPoint111"] = "2-1"
tItem[3327470]["OptionPoint112"] = "3-1"

tItem[3327470]["Text2-1"] = {211}
tItem[3327470]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113}
tItem[3327470]["OptionFunc211"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800020"
tItem[3327470]["OptionFunc212"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800111"
tItem[3327470]["OptionFunc213"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800215"
tItem[3327470]["OptionFunc214"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800811"
tItem[3327470]["OptionFunc215"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800810"
tItem[3327470]["OptionFunc216"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800142"
tItem[3327470]["OptionFunc217"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800917"
tItem[3327470]["OptionFunc218"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800255"
tItem[3327470]["OptionFunc219"]  = "AwakenPreheat_P7OpenPack</N>3327470</N>800422"
tItem[3327470]["OptionFunc2110"] = "AwakenPreheat_P7OpenPack</N>3327470</N>800522"
tItem[3327470]["OptionFunc2111"] = "AwakenPreheat_P7OpenPack</N>3327470</N>800618"
tItem[3327470]["OptionFunc2112"] = "AwakenPreheat_P7OpenPack</N>3327470</N>800725"
tItem[3327470]["OptionFunc2113"] = "AwakenPreheat_P7OpenPack</N>3327470</N>801004"


tItem[3327470]["Text3-1"] = {311}
tItem[3327470]["tOption3-1"] = {311,312,313,314,315}
tItem[3327470]["OptionPoint311"] = "4-1"
tItem[3327470]["OptionPoint312"] = "5-1"
tItem[3327470]["OptionPoint313"] = "6-1"
tItem[3327470]["OptionPoint314"] = "7-1"
tItem[3327470]["OptionPoint315"] = "8-1"

tItem[3327470]["Text4-1"] = {411}
tItem[3327470]["tOption4-1"] = {411,412,413,414}
tItem[3327470]["OptionFunc411"] = "AwakenPreheat_P7OpenPack</N>3327470</N>820073"
tItem[3327470]["OptionFunc412"] = "AwakenPreheat_P7OpenPack</N>3327470</N>820074"
tItem[3327470]["OptionFunc413"] = "AwakenPreheat_P7OpenPack</N>3327470</N>820075"
tItem[3327470]["OptionFunc414"] = "AwakenPreheat_P7OpenPack</N>3327470</N>820076"

tItem[3327470]["Text5-1"] = {511}
tItem[3327470]["tOption5-1"] = {511,512}
tItem[3327470]["OptionFunc511"] = "AwakenPreheat_P7OpenPack</N>3327470</N>822071"
tItem[3327470]["OptionFunc512"] = "AwakenPreheat_P7OpenPack</N>3327470</N>822072"

tItem[3327470]["Text6-1"] = {611}
tItem[3327470]["tOption6-1"] = {611,612}
tItem[3327470]["OptionFunc611"] = "AwakenPreheat_P7OpenPack</N>3327470</N>821034"
tItem[3327470]["OptionFunc612"] = "AwakenPreheat_P7OpenPack</N>3327470</N>821033"

tItem[3327470]["Text7-1"] = {711}
tItem[3327470]["tOption7-1"] = {711,712,713,714,715}
tItem[3327470]["OptionFunc711"] = "AwakenPreheat_P7OpenPack</N>3327470</N>823058"
tItem[3327470]["OptionFunc712"] = "AwakenPreheat_P7OpenPack</N>3327470</N>823059"
tItem[3327470]["OptionFunc713"] = "AwakenPreheat_P7OpenPack</N>3327470</N>823061"
tItem[3327470]["OptionFunc714"] = "AwakenPreheat_P7OpenPack</N>3327470</N>823062"
tItem[3327470]["OptionFunc715"] = "AwakenPreheat_P7OpenPack</N>3327470</N>823060"


tItem[3327470]["Text8-1"] = {811}
tItem[3327470]["tOption8-1"] = {811,812,813}
tItem[3327470]["OptionFunc811"] = "AwakenPreheat_P7OpenPack</N>3327470</N>824018"
tItem[3327470]["OptionFunc812"] = "AwakenPreheat_P7OpenPack</N>3327470</N>824019"
tItem[3327470]["OptionFunc813"] = "AwakenPreheat_P7OpenPack</N>3327470</N>824020"



--一般礼包
tItem[3327342] = tItem[3327342] or {}
tItem[3327342]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["AwakenPreheat"]["ActivityTime2"]) then 
		local nAwakenPreheat_ItemNum = Get_CountItemType(nAwakenPreheat_ItemId,0)
		-- local sAwakenPreheat_ItemName = Get_ItemName(nAwakenPreheat_ItemId)
		if Item_DelMulItem(nAwakenPreheat_ItemId,nAwakenPreheat_ItemId,tonumber(nAwakenPreheat_ItemNum)) then
			local tAwakenPreheat_TextLog = string.format(tAwakenPreheat_Log["DeleteLog"],nAwakenPreheat_ItemId,nAwakenPreheat_ItemNum)
			Sys_SaveActionFestivalLog(tAwakenPreheat_TextLog)
			User_TalkChannel2005(string.format(tAwakenPreheat_Text["MsgBox"]["DeleteItem"],sAwakenPreheat_ItemName))
			return
		end 
	end 
	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
end
tItem[3327343] = tItem[3327342] or {}
tItem[3327344] = tItem[3327342] or {}
tItem[3327345] = tItem[3327342] or {}
tItem[3327346] = tItem[3327342] or {}
tItem[3327347] = tItem[3327342] or {}
tItem[3327348] = tItem[3327342] or {}

tItem[3327471] = tItem[3327471] or {}
tItem[3327471]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nAwakenPreheat_ItemId,tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tAwakenPreheat_Pack[nAwakenPreheat_ItemId])
end
tItem[3327473] = tItem[3327471] or {}
tItem[3327469] = tItem[3327471] or {}

-- 时效礼包
tItem[3327367] = tItem[3327367] or {}
tItem[3327367]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_OpenTiemPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
end
tItem[3327368] = tItem[3327367] or {}
tItem[3327369] = tItem[3327367] or {}
tItem[3327370] = tItem[3327367] or {}
tItem[3327371] = tItem[3327367] or {}
tItem[3327372] = tItem[3327367] or {}


--一阶段奖励礼包
tItem[3327349] = tItem[3327349] or {}
tItem[3327349]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_ScorePack1(nAwakenPreheat_ItemId)
end

--二阶段奖励礼包
tItem[3327350] = tItem[3327350] or {}
tItem[3327350]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_ScorePack2(nAwakenPreheat_ItemId)
end

-- 一阶段无逻辑寻路物品
tItem[3327328] = tItem[3327328] or {}
tItem[3327328]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_FindNpc1(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
end
tItem[3327329] = tItem[3327328] or {}
tItem[3327330] = tItem[3327328] or {}
tItem[3327331] = tItem[3327328] or {}
tItem[3327332] = tItem[3327328] or {}
tItem[3327333] = tItem[3327328] or {}
tItem[3327334] = tItem[3327328] or {}
tItem[3327335] = tItem[3327328] or {}
tItem[3327336] = tItem[3327328] or {}
tItem[3327337] = tItem[3327328] or {}

-- 二阶段无逻辑寻路物品
tItem[3327340] = tItem[3327340] or {}
tItem[3327340]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_FindNpc2(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
end

-- 三阶段无逻辑寻路物品
tItem[3327341] = tItem[3327341] or {}
tItem[3327341]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_FindNpc3(nAwakenPreheat_ItemId)
end

-- 发型礼包
tItem[3327472] = tItem[3327472] or {}
tItem[3327472]["Function"] = function(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
	AwakenPreheat_HairPack(nAwakenPreheat_ItemId,sAwakenPreheat_ItemName)
end
---------------------------------------------怪物模板
-- 五大片区怪物掉落
local tAwakenPreheat_KillMonster = {}
-- 激情服
tAwakenPreheat_KillMonster[1] = {}
tAwakenPreheat_KillMonster[1]["Function"]= AwakenPreheat_MonsterReward
tAwakenPreheat_KillMonster[1]["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad,tAwakenPreheat_KillMonster[1])
-- 普通服 
tAwakenPreheat_KillMonster[2] = {}
tAwakenPreheat_KillMonster[2]["Function"]= AwakenPreheat_MonsterReward
table.insert(tMonsterDrop_AreaLoad,tAwakenPreheat_KillMonster[2])


---------------------------------------------------上限触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AwakenPreheat_Login1)

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AwakenPreheat_Login2)