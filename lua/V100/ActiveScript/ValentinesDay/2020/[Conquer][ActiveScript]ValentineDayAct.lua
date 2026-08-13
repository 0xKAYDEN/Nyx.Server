------------------------------------------------------------------------------------
--Name:		200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
--Purpose:	跨服互动活动
--Creator: 	傅伟龙
--Created:	2020/01/03
------------------------------------------------------------------------------------
local tValentineDayAct_2019_Data = {}
tValentineDayAct_2019_Data["BefTime"] = tActivityTime["ValentineDayAct_2019"]["BefTime"]
tValentineDayAct_2019_Data["ActTime"] = tActivityTime["ValentineDayAct_2019"]["ActTime"]
tValentineDayAct_2019_Data["ItemActTime"] = tActivityTime["ValentineDayAct_2019"]["ItemActTime"]
tValentineDayAct_2019_Data["NpcActTime"] = tActivityTime["ValentineDayAct_2019"]["NpcActTime"]

-- 活动等级限制
tValentineDayAct_2019_Data["Level"] = 80
tValentineDayAct_2019_Data["Metempsychosis"] = 0

tValentineDayAct_2019_Data["ChocolateId"] = {}
tValentineDayAct_2019_Data["ChocolateId"][1] = 3600215
tValentineDayAct_2019_Data["ChocolateId"][2] = 3600216
tValentineDayAct_2019_Data["ChocolateId"][3] = 3600217

tValentineDayAct_2019_Data["TaskId"] = 35066

tValentineDayAct_2019_Data["CostEmoney"] = {}
tValentineDayAct_2019_Data["CostEmoney"][1] = 999
tValentineDayAct_2019_Data["CostEmoney"][2] = 5999

tValentineDayAct_2019_Data["GlobalId"] = 54143
tValentineDayAct_2019_Data["GlobalServerId"] = 54337

tValentineDayAct_2019_Data["HairId"] = 88

--每日登陆邮件
tValentineDayAct_2019_Data["ActionId"] = 576243
tValentineDayAct_2019_Data["ExistDay"] = 30
--跨服配置
tValentineDayAct_2019_Data["Cross"] = {}
tValentineDayAct_2019_Data["Cross"]["ServerId"] = 998
tValentineDayAct_2019_Data["Cross"]["MapFlag"] = 116
tValentineDayAct_2019_Data["Cross"]["MapFlag2"] = 162
tValentineDayAct_2019_Data["Cross"]["ServerType"] = 12

tValentineDayAct_2019_Data["ChkMap"] = {}
tValentineDayAct_2019_Data["ChkMap"][1] = {}
tValentineDayAct_2019_Data["ChkMap"][1]["MapId"] = 1002
tValentineDayAct_2019_Data["ChkMap"][1]["PosX"] = 375
tValentineDayAct_2019_Data["ChkMap"][1]["PosY"] = 446

tValentineDayAct_2019_Data["ChkMap"][2] = {}
tValentineDayAct_2019_Data["ChkMap"][2]["MapId"] = 1036
tValentineDayAct_2019_Data["ChkMap"][2]["PosX"] = 259
tValentineDayAct_2019_Data["ChkMap"][2]["PosY"] = 209

tValentineDayAct_2019_Data["ChkMap"][3] = {}
tValentineDayAct_2019_Data["ChkMap"][3]["MapId"] = 10757
tValentineDayAct_2019_Data["ChkMap"][3]["PosX"] = 266
tValentineDayAct_2019_Data["ChkMap"][3]["PosY"] = 267

tValentineDayAct_2019_Data["ChkMap"][4] = {}
tValentineDayAct_2019_Data["ChkMap"][4]["MapId"] = 10757
tValentineDayAct_2019_Data["ChkMap"][4]["PosX"] = 208
tValentineDayAct_2019_Data["ChkMap"][4]["PosY"] = 252


--掩码
-- 每日签到礼包
tValentineDayAct_2019_Data["Stc"] ={}
tValentineDayAct_2019_Data["Stc"]["Event"] = {}
tValentineDayAct_2019_Data["Stc"]["Type"] = {}
tValentineDayAct_2019_Data["Stc"]["Event"][1] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][1] = 19
-- 显著功勋礼包
tValentineDayAct_2019_Data["Stc"]["Event"][2] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][2] = 20
-- 野外杀怪
tValentineDayAct_2019_Data["Stc"]["Event"][3] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][3] = 21

-- 每日任务码重置
tValentineDayAct_2019_Data["Stc"]["Event"][4] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][4] = 22
--是否刷新怪物
tValentineDayAct_2019_Data["Stc"]["Event"][5] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][5] = 23

--每日真爱礼盒限量100
tValentineDayAct_2019_Data["Stc"]["Event"][6] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][6] = 24

--每日获得情人节惊喜礼包
tValentineDayAct_2019_Data["Stc"]["Event"][7] = 215
tValentineDayAct_2019_Data["Stc"]["Type"][7] = 63

--屏蔽二次确认
tValentineDayAct_2019_Data["Stc"]["Event"][8] = 215
tValentineDayAct_2019_Data["Stc"]["Type"][8] = 64

--获得称号
tValentineDayAct_2019_Data["Stc"]["Event"][9] = 215
tValentineDayAct_2019_Data["Stc"]["Type"][9] = 99

--获得称号
tValentineDayAct_2019_Data["Stc"]["Event"][10] = 216
tValentineDayAct_2019_Data["Stc"]["Type"][10] = 00

-- 记录玩家真爱之心数量
tValentineDayAct_2019_Data["Stc"]["Event"][11] = 214
tValentineDayAct_2019_Data["Stc"]["Type"][11] = 40

-- 正气令
tValentineDayAct_2019_Data["Stc"]["Event"][12] = 215
tValentineDayAct_2019_Data["Stc"]["Type"][12] = 11

local tValentineDayAct_2019_position = {}
	tValentineDayAct_2019_position[1] = {}
	tValentineDayAct_2019_position[1]["MapId"] = 10757
	tValentineDayAct_2019_position[1]["PosX"] = 121
	tValentineDayAct_2019_position[1]["PosY"] = 222
	
	tValentineDayAct_2019_position[2] = {}
	tValentineDayAct_2019_position[2]["MapId"] = 10757
	tValentineDayAct_2019_position[2]["PosX"] = 181
	tValentineDayAct_2019_position[2]["PosY"] = 224
	
	tValentineDayAct_2019_position[3] = {}
	tValentineDayAct_2019_position[3]["MapId"] = 10757
	tValentineDayAct_2019_position[3]["PosX"] = 172
	tValentineDayAct_2019_position[3]["PosY"] = 165
	
	tValentineDayAct_2019_position[4] = {}
	tValentineDayAct_2019_position[4]["MapId"] = 10757
	tValentineDayAct_2019_position[4]["PosX"] = 198
	tValentineDayAct_2019_position[4]["PosY"] = 95
	
	tValentineDayAct_2019_position[5] = {}
	tValentineDayAct_2019_position[5]["MapId"] = 10757
	tValentineDayAct_2019_position[5]["PosX"] = 240
	tValentineDayAct_2019_position[5]["PosY"] = 213

	
local tValentineDayAct_2019_Crosition = {}
	tValentineDayAct_2019_Crosition[1] = {}
	tValentineDayAct_2019_Crosition[1]["MapId"] = 10780
	tValentineDayAct_2019_Crosition[1]["PosX"] = 121
	tValentineDayAct_2019_Crosition[1]["PosY"] = 222
	
	tValentineDayAct_2019_Crosition[2] = {}
	tValentineDayAct_2019_Crosition[2]["MapId"] = 10780
	tValentineDayAct_2019_Crosition[2]["PosX"] = 181
	tValentineDayAct_2019_Crosition[2]["PosY"] = 224
	
	tValentineDayAct_2019_Crosition[3] = {}
	tValentineDayAct_2019_Crosition[3]["MapId"] = 10780
	tValentineDayAct_2019_Crosition[3]["PosX"] = 172
	tValentineDayAct_2019_Crosition[3]["PosY"] = 165
	
	tValentineDayAct_2019_Crosition[4] = {}
	tValentineDayAct_2019_Crosition[4]["MapId"] = 10780
	tValentineDayAct_2019_Crosition[4]["PosX"] = 198
	tValentineDayAct_2019_Crosition[4]["PosY"] = 95
	
	tValentineDayAct_2019_Crosition[5] = {}
	tValentineDayAct_2019_Crosition[5]["MapId"] = 10780
	tValentineDayAct_2019_Crosition[5]["PosX"] = 240
	tValentineDayAct_2019_Crosition[5]["PosY"] = 213
	
--怪物刷新
local tValentineDayAct_2019_Monster = {}
	tValentineDayAct_2019_Monster[5981] = {}
	tValentineDayAct_2019_Monster[5981][1] = {5981,10757,86,86,30510}
	tValentineDayAct_2019_Monster[5981][2] = {5981,10757,89,89,30511}
	tValentineDayAct_2019_Monster[5981][3] = {5981,10772,24,27,30511}
	tValentineDayAct_2019_Monster[5981][4] = {5981,10773,96,97,30511}
	tValentineDayAct_2019_Monster[5981][5] = {5981,10774,91,79,30511}
	tValentineDayAct_2019_Monster[5981][6] = {5981,10775,26,30,30511}
	tValentineDayAct_2019_Monster[5981][7] = {5981,10776,87,153,30511}
	tValentineDayAct_2019_Monster[5981][8] = {5981,10777,53,64,30511}
	tValentineDayAct_2019_Monster[5981][9] = {5981,10778,62,75,30511}

	
	tValentineDayAct_2019_Monster[5984] = {}
	tValentineDayAct_2019_Monster[5984][1] = {5984,10757,86 ,86 ,30512}
	tValentineDayAct_2019_Monster[5984][2] = {5984,10757,89 ,89 ,30513}
	tValentineDayAct_2019_Monster[5984][3] = {5984,10757,92 ,92 ,30514}
	tValentineDayAct_2019_Monster[5984][4] = {5984,10757,95 ,95 ,30515}
	tValentineDayAct_2019_Monster[5984][5] = {5984,10757,98 ,98 ,30516}
	tValentineDayAct_2019_Monster[5984][6] = {5984,10758,101,101,30517}
	tValentineDayAct_2019_Monster[5984][7] = {5984,10758,104,104,30518}
	tValentineDayAct_2019_Monster[5984][8] = {5984,10758,107,107,30519}
	tValentineDayAct_2019_Monster[5984][9] = {5984,10758,110,110,30520}
	tValentineDayAct_2019_Monster[5984][10] = {5984,10758,113,113,30521}
	
	tValentineDayAct_2019_Monster["Manifesto"] = {}
	tValentineDayAct_2019_Monster["Manifesto"][1] = {}
	tValentineDayAct_2019_Monster["Manifesto"][1][1] =  {5981,10757,89 ,159,30531}
	tValentineDayAct_2019_Monster["Manifesto"][1][2] =  {5981,10757,110,159,30532}
	tValentineDayAct_2019_Monster["Manifesto"][1][3] =  {5981,10757,171,188,30533}
	tValentineDayAct_2019_Monster["Manifesto"][1][4] =  {5981,10757,137,219,30534}
	tValentineDayAct_2019_Monster["Manifesto"][1][5] =  {5981,10757,181,225,30535}
	tValentineDayAct_2019_Monster["Manifesto"][1][6] =  {5981,10757,178,254,30536}
	tValentineDayAct_2019_Monster["Manifesto"][1][7] =  {5981,10757,229,257,30537}
	tValentineDayAct_2019_Monster["Manifesto"][1][8] =  {5981,10757,242,206,30538}
	tValentineDayAct_2019_Monster["Manifesto"][1][9] =  {5981,10757,220,150,30539}
	tValentineDayAct_2019_Monster["Manifesto"][1][10] = {5981,10757,174,127,30540}
	tValentineDayAct_2019_Monster["Manifesto"][1][11] = {5981,10757,154,75 ,30541}
	tValentineDayAct_2019_Monster["Manifesto"][1][12] = {5981,10757,208,101,30542}
	tValentineDayAct_2019_Monster["Manifesto"][1][13] = {5981,10757,228,250,30543}
	tValentineDayAct_2019_Monster["Manifesto"][1][14] = {5981,10757,240,205,30544}
	tValentineDayAct_2019_Monster["Manifesto"][1][15] = {5981,10757,167,183,30545}
	tValentineDayAct_2019_Monster["Manifesto"][1][16] = {5981,10757,158,259,30546}
	tValentineDayAct_2019_Monster["Manifesto"][1][17] = {5981,10757,184,208,30547}
	tValentineDayAct_2019_Monster["Manifesto"][1][18] = {5981,10757,174,105,30548}
	tValentineDayAct_2019_Monster["Manifesto"][1][19] = {5981,10757,221,198,30549}
	tValentineDayAct_2019_Monster["Manifesto"][1][20] = {5981,10757,229,181,30550}
	
	tValentineDayAct_2019_Monster["Manifesto"][2] = {}
	tValentineDayAct_2019_Monster["Manifesto"][2][1] =  {5981,10757,89 ,159,30531}
	tValentineDayAct_2019_Monster["Manifesto"][2][2] =  {5981,10757,110,159,30532}
	tValentineDayAct_2019_Monster["Manifesto"][2][3] =  {5981,10757,171,188,30533}
	tValentineDayAct_2019_Monster["Manifesto"][2][4] =  {5981,10757,137,219,30534}
	tValentineDayAct_2019_Monster["Manifesto"][2][5] =  {5981,10757,181,225,30535}
	tValentineDayAct_2019_Monster["Manifesto"][2][6] =  {5981,10757,178,254,30536}
	tValentineDayAct_2019_Monster["Manifesto"][2][7] =  {5981,10757,229,257,30537}
	tValentineDayAct_2019_Monster["Manifesto"][2][8] =  {5981,10757,242,206,30538}
	tValentineDayAct_2019_Monster["Manifesto"][2][9] =  {5981,10757,220,150,30539}
	tValentineDayAct_2019_Monster["Manifesto"][2][10] = {5981,10757,174,127,30540}
	tValentineDayAct_2019_Monster["Manifesto"][2][11] = {5989,10757,207,193,30553}
	
	
	
local tValentineDayAct_2019_Reward = {}

-- 功勋礼包
tValentineDayAct_2019_Reward[3007108] = {}
tValentineDayAct_2019_Reward[3007108]["RewardItem"] = {}
tValentineDayAct_2019_Reward[3007108]["RewardItem"][1] = {}
tValentineDayAct_2019_Reward[3007108]["RewardItem"][1]["Id"] = 3315299
tValentineDayAct_2019_Reward[3007108]["RewardItem"][1]["Attr"] = "0 25"
tValentineDayAct_2019_Reward[3007108]["LogId"] = 12001823
tValentineDayAct_2019_Reward[3007108]["LogStep"] = "1[2]"
-- 每日签到礼包
tValentineDayAct_2019_Reward[3100011] = {}
tValentineDayAct_2019_Reward[3100011]["RewardItem"] = {}
tValentineDayAct_2019_Reward[3100011]["RewardItem"][1] = {}
tValentineDayAct_2019_Reward[3100011]["RewardItem"][1]["Id"] = 3315299
tValentineDayAct_2019_Reward[3100011]["RewardItem"][1]["Attr"] = "0 100"
tValentineDayAct_2019_Reward[3100011]["LogId"] = 12001823
tValentineDayAct_2019_Reward[3100011]["LogStep"] = "1[1]"

-- 正气令
tValentineDayAct_2019_Reward[729304] = {}
tValentineDayAct_2019_Reward[729304]["RewardItem"] = {}
tValentineDayAct_2019_Reward[729304]["RewardItem"][1] = {}
tValentineDayAct_2019_Reward[729304]["RewardItem"][1]["Id"] = 3315299
tValentineDayAct_2019_Reward[729304]["RewardItem"][1]["Attr"] = "0 20"
tValentineDayAct_2019_Reward[729304]["LogId"] = 12001823
tValentineDayAct_2019_Reward[729304]["LogStep"] = "1[3]"


	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][30]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][30] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][30]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][30]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardItem"][1]["Id"] = 3600218 -- 30真爱之心礼盒[3600218][属性:9][叠加:10000][金币:0], 【表格】30个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardItem"][1]["Attr"] = "0 1" -- 30真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][30]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][50] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][50]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"][50]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][50]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardItem"][1]["Id"] = 3600219 -- 50真爱之心礼盒[3600219][属性:9][叠加:10000][金币:0], 【表格】50个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardItem"][1]["Attr"] = "0 1" -- 50真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][50]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][90] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][90]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"][90]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][90]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardItem"][1]["Id"] = 3600221 -- 90真爱之心礼盒[3600221][属性:9][叠加:10000][金币:0], 【表格】90个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardItem"][1]["Attr"] = "0 1" -- 90真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][90]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Love"] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["Love"][100]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"][100] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][100]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][100]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardItem"][1]["Id"] = 3600220 -- 100真爱之心礼盒[3600220][属性:9][叠加:10000][金币:0], 【表格】100个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardItem"][1]["Attr"] = "0 1" -- 100真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][100]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][150] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][150]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"][150]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][150]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardItem"][1]["Id"] = 3600222 -- 150真爱之心礼盒[3600222][属性:9][叠加:10000][金币:0], 【表格】150个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardItem"][1]["Attr"] = "0 1" -- 150真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][150]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][250] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][250]
	-- ===LogStep: 3[1]
	-- ===
	tValentineDayAct_2019_Reward["ExtraLove"][250]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][250]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardItem"][1]["Id"] = 3600224 -- 250真爱之心礼盒[3600224][属性:9][叠加:10000][金币:0], 【表格】250个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardItem"][1]["Attr"] = "0 1" -- 250真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][250]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][300] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][300]
	-- ===LogStep: 3[1]
	tValentineDayAct_2019_Reward["ExtraLove"][300]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][300]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardItem"][1]["Id"] = 3600223 -- 300真爱之心礼盒[3600223][属性:9][叠加:10000][金币:0], 【表格】300个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardItem"][1]["Attr"] = "0 1" -- 300真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][300]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["ExtraLove"][500] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["ExtraLove"][500]
	-- ===LogStep: 3[1]
	tValentineDayAct_2019_Reward["ExtraLove"][500]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][500]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardItem"][1]["Id"] = 3600225 -- 500真爱之心礼盒[3600225][属性:9][叠加:10000][金币:0], 【表格】500个爱情之心
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardItem"][1]["Attr"] = "0 1" -- 500真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][500]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward["ExtraLove"][3600232] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["LogStep"] = "3[1]"
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardItem"][1]["Id"] = 3600232 -- 真爱之心礼盒[3600232][属性:9][叠加:10000][金币:0], 【表格】3600232
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardItem"][1]["Attr"] = "0 1" -- 真爱之心礼盒*1
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["ExtraLove"][3600232]["RewardEffect"]["Effect"] = "angelwing"

	tValentineDayAct_2019_Reward["Love"][3600215] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["Love"][3600215]
	-- ===LogStep: 3[2]
	-- ===
	tValentineDayAct_2019_Reward["Love"][3600215]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Love"][3600215]["LogStep"] = "3[2]"
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardItem"][1]["Id"] = 3600230 -- 10真爱之心礼盒[3600230][属性:9][叠加:10000][金币:0], 【表格】10个爱情之心
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardItem"][1]["Attr"] = "0 1" -- 10真爱之心礼盒*1
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Love"][3600215]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Love"][3600216] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["Love"][3600216]
	-- ===LogStep: 3[2]
	-- ===
	tValentineDayAct_2019_Reward["Love"][3600216]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Love"][3600216]["LogStep"] = "3[2]"
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardItem"][1]["Id"] = 3600220 -- 100真爱之心礼盒[3600220][属性:9][叠加:10000][金币:0], 【表格】100个爱情之心
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardItem"][1]["Attr"] = "0 1" -- 100真爱之心礼盒*1
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Love"][3600216]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Love"][3600217] = {}
	-- ===爱情之心
	-- ===索引:tValentineDayAct_2019_Reward["Love"][3600217]
	-- ===LogStep: 3[2]
	-- ===
	tValentineDayAct_2019_Reward["Love"][3600217]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Love"][3600217]["LogStep"] = "3[2]"
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardItem"][1]["Id"] = 3600231 -- 1000真爱之心礼盒[3600231][属性:9][叠加:10000][金币:0], 【表格】1000个爱情之心
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardItem"][1]["Attr"] = "0 1" -- 1000真爱之心礼盒*1
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Love"][3600217]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Chocolate"] = {}
	-- ===巧克力
	-- ===索引:tValentineDayAct_2019_Reward["Chocolate"][3600215]
	-- ===LogStep: 3[3]
	-- ===
	tValentineDayAct_2019_Reward["Chocolate"][3600215] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["LogStep"] = "3[3]"
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardItem"][1]["Id"] = 3600233 -- 甜心巧克力（赠）[3600233][属性:9][叠加:10000][金币:0], 【表格】甜心巧克力（赠）
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardItem"][1]["Attr"] = "0 1" -- 甜心巧克力（赠）*1
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Chocolate"][3600215]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Chocolate"][3600216] = {}
	-- ===巧克力
	-- ===索引:tValentineDayAct_2019_Reward["Chocolate"][3600216]
	-- ===LogStep: 3[3]
	-- ===
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["LogStep"] = "3[3]"
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardItem"][1]["Id"] = 3600234 -- 浓情巧克力（赠）[3600234][属性:9][叠加:10000][金币:0], 【表格】浓情巧克力（赠）
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardItem"][1]["Attr"] = "0 1" -- 浓情巧克力（赠）*1
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Chocolate"][3600216]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["Chocolate"][3600217] = {}
	-- ===巧克力
	-- ===索引:tValentineDayAct_2019_Reward["Chocolate"][3600217]
	-- ===LogStep: 3[3]
	-- ===
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["LogStep"] = "3[3]"
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardItem"][1]["Id"] = 3600235 -- 真爱巧克力（赠）[3600235][属性:9][叠加:10000][金币:0], 【表格】真爱巧克力（赠）
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardItem"][1]["Attr"] = "0 1" -- 真爱巧克力（赠）*1
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["Chocolate"][3600217]["RewardEffect"]["Effect"] = "angelwing"


	-- ===爱情树下许愿（999天石）（全球弹幕）
	-- ===索引:tValentineDayAct_2019_Reward[25870][1]
	-- ===LogStep: 4[1]
	tValentineDayAct_2019_Reward[25870] = {}
	tValentineDayAct_2019_Reward[25870][1] = {}
	tValentineDayAct_2019_Reward[25870][1]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_Reward[25870][1]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[25870][1]["LogStep"] = " 4[1]"
	-- 300爱情之心-- 【必给】
	tValentineDayAct_2019_Reward[25870][1][1] = {}
	tValentineDayAct_2019_Reward[25870][1][1]["RandomItemChanceType"] = 1
	tValentineDayAct_2019_Reward[25870][1][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][1]["RewardItem"][1]["Id"] = 3600223 -- 300真爱之心礼盒[3600223][属性:9][叠加:10000][金币:0], 【表格】300爱情之心
	tValentineDayAct_2019_Reward[25870][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 300真爱之心礼盒*1

	-- 晶莹星陨石 - 8%
	tValentineDayAct_2019_Reward[25870][1][2] = {}
	tValentineDayAct_2019_Reward[25870][1][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][2]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25870][1][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentineDayAct_2019_Reward[25870][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValentineDayAct_2019_Reward[25870][1][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 璀璨星陨石 - 5%
	tValentineDayAct_2019_Reward[25870][1][3] = {}
	tValentineDayAct_2019_Reward[25870][1][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][3]["ItemChance"] = 500
	tValentineDayAct_2019_Reward[25870][1][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][3]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tValentineDayAct_2019_Reward[25870][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tValentineDayAct_2019_Reward[25870][1][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][3]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+5 - 8%
	tValentineDayAct_2019_Reward[25870][1][4] = {}
	tValentineDayAct_2019_Reward[25870][1][4]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][4]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25870][1][4]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][4]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][4]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValentineDayAct_2019_Reward[25870][1][4]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tValentineDayAct_2019_Reward[25870][1][4]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 赤炼石+6 - 12%
	tValentineDayAct_2019_Reward[25870][1][5] = {}
	tValentineDayAct_2019_Reward[25870][1][5]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][5]["ItemChance"] = 1200
	tValentineDayAct_2019_Reward[25870][1][5]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][5]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][5]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tValentineDayAct_2019_Reward[25870][1][5]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tValentineDayAct_2019_Reward[25870][1][5]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 赤炼石+7 - 2%
	tValentineDayAct_2019_Reward[25870][1][6] = {}
	tValentineDayAct_2019_Reward[25870][1][6]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][6]["ItemChance"] = 200
	tValentineDayAct_2019_Reward[25870][1][6]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][6]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][6]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7
	tValentineDayAct_2019_Reward[25870][1][6]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+7赤炼石*1
	tValentineDayAct_2019_Reward[25870][1][6]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][6]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 10000气力值 - 4%
	tValentineDayAct_2019_Reward[25870][1][7] = {}
	tValentineDayAct_2019_Reward[25870][1][7]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][7]["ItemChance"] = 400
	tValentineDayAct_2019_Reward[25870][1][7]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[25870][1][7]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tValentineDayAct_2019_Reward[25870][1][7]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 30000气力值 - 5.7%
	tValentineDayAct_2019_Reward[25870][1][8] = {}
	tValentineDayAct_2019_Reward[25870][1][8]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][8]["ItemChance"] = 570
	tValentineDayAct_2019_Reward[25870][1][8]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[25870][1][8]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tValentineDayAct_2019_Reward[25870][1][8]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][8]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 固化石 - 5%
	tValentineDayAct_2019_Reward[25870][1][9] = {}
	tValentineDayAct_2019_Reward[25870][1][9]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][9]["ItemChance"] = 500
	tValentineDayAct_2019_Reward[25870][1][9]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][9]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][9]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tValentineDayAct_2019_Reward[25870][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tValentineDayAct_2019_Reward[25870][1][9]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 超大固化石 - 0.3%
	tValentineDayAct_2019_Reward[25870][1][10] = {}
	tValentineDayAct_2019_Reward[25870][1][10]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][10]["ItemChance"] = 30
	tValentineDayAct_2019_Reward[25870][1][10]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][10]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][10]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tValentineDayAct_2019_Reward[25870][1][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	tValentineDayAct_2019_Reward[25870][1][10]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][10]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 999朵红玫瑰 - 1%
	tValentineDayAct_2019_Reward[25870][1][11] = {}
	tValentineDayAct_2019_Reward[25870][1][11]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][11]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][1][11]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][11]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][11]["RewardItem"][1]["Id"] = 751999 -- 999朵红玫瑰[751999][属性:8][叠加:0][金币:0], 【表格】999朵红玫瑰
	tValentineDayAct_2019_Reward[25870][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 999朵红玫瑰*1
	tValentineDayAct_2019_Reward[25870][1][11]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 999朵百合花 - 0.5%
	tValentineDayAct_2019_Reward[25870][1][12] = {}
	tValentineDayAct_2019_Reward[25870][1][12]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][12]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25870][1][12]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][12]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][12]["RewardItem"][1]["Id"] = 752999 -- 999朵百合花[752999][属性:8][叠加:0][金币:0], 【表格】999朵百合花
	tValentineDayAct_2019_Reward[25870][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tValentineDayAct_2019_Reward[25870][1][12]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][12]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 999朵兰花 - 1.5%
	tValentineDayAct_2019_Reward[25870][1][13] = {}
	tValentineDayAct_2019_Reward[25870][1][13]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][13]["ItemChance"] = 150
	tValentineDayAct_2019_Reward[25870][1][13]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][13]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][13]["RewardItem"][1]["Id"] = 753999 -- 999朵兰花[753999][属性:8][叠加:0][金币:0], 【表格】999朵兰花
	tValentineDayAct_2019_Reward[25870][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 999朵兰花*1
	tValentineDayAct_2019_Reward[25870][1][13]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][13]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 999个飞吻 - 0.5%
	tValentineDayAct_2019_Reward[25870][1][14] = {}
	tValentineDayAct_2019_Reward[25870][1][14]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][14]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25870][1][14]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][14]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][14]["RewardItem"][1]["Id"] = 755999 -- 999个飞吻[755999][属性:8][叠加:0][金币:0], 【表格】999个飞吻
	tValentineDayAct_2019_Reward[25870][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 999个飞吻*1
	tValentineDayAct_2019_Reward[25870][1][14]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][14]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 999封情书 - 0.5%
	tValentineDayAct_2019_Reward[25870][1][15] = {}
	tValentineDayAct_2019_Reward[25870][1][15]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][15]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25870][1][15]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][15]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][15]["RewardItem"][1]["Id"] = 756999 -- 999封情书[756999][属性:8][叠加:0][金币:0], 【表格】999封情书
	tValentineDayAct_2019_Reward[25870][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 999封情书*1
	tValentineDayAct_2019_Reward[25870][1][15]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][15]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 5000修为值 - 8%
	tValentineDayAct_2019_Reward[25870][1][16] = {}
	tValentineDayAct_2019_Reward[25870][1][16]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][16]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25870][1][16]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25870][1][16]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tValentineDayAct_2019_Reward[25870][1][16]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][16]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 10000修为值 - 15%
	tValentineDayAct_2019_Reward[25870][1][17] = {}
	tValentineDayAct_2019_Reward[25870][1][17]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][17]["ItemChance"] = 1570
	tValentineDayAct_2019_Reward[25870][1][17]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25870][1][17]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000修为值
	tValentineDayAct_2019_Reward[25870][1][17]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][17]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 30000修为值 - 6%
	tValentineDayAct_2019_Reward[25870][1][18] = {}
	tValentineDayAct_2019_Reward[25870][1][18]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][18]["ItemChance"] = 600
	tValentineDayAct_2019_Reward[25870][1][18]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25870][1][18]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】30000修为值
	tValentineDayAct_2019_Reward[25870][1][18]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][18]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][18]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][18]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 8%
	tValentineDayAct_2019_Reward[25870][1][19] = {}
	tValentineDayAct_2019_Reward[25870][1][19]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][19]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25870][1][19]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][19]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][19]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tValentineDayAct_2019_Reward[25870][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValentineDayAct_2019_Reward[25870][1][19]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][19]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 血菩提 - 8%
	tValentineDayAct_2019_Reward[25870][1][20] = {}
	tValentineDayAct_2019_Reward[25870][1][20]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][20]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25870][1][20]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][20]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][20]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tValentineDayAct_2019_Reward[25870][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 血菩提*1
	tValentineDayAct_2019_Reward[25870][1][20]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][20]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][1][20]["BroadCast"] = 1 -- 全服公告
	-- tValentineDayAct_2019_Reward[25870][1][20]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 光效版角色外套 - 1%
	tValentineDayAct_2019_Reward[25870][1][21] = {}
	tValentineDayAct_2019_Reward[25870][1][21]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][1][21]["ItemChance"] = 30
	tValentineDayAct_2019_Reward[25870][1][21]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][21]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][21]["RewardItem"][1]["Id"] = 3327522 --  3327522 【库里没有该物品】, 【表格】光效版角色外套
	tValentineDayAct_2019_Reward[25870][1][21]["RewardItem"][1]["Attr"] = "0 1" --  3327522 【库里没有该物品】*1
	tValentineDayAct_2019_Reward[25870][1][21]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][1][21]["RewardEffect"]["Effect"] = "zf2-e128"
-- 	tValentineDayAct_2019_Reward[25870][1][21]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][1][21]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 情人节称号碎片-- 【必给】
	tValentineDayAct_2019_Reward[25870][1][22] = {}
	tValentineDayAct_2019_Reward[25870][1][22]["RandomItemChanceType"] = 1
	tValentineDayAct_2019_Reward[25870][1][22]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][1][22]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][1][22]["RewardItem"][1]["Id"] = 3329678 -- 情人节称号碎片[3329678][属性:9][叠加:10000][金币:0], 【表格】情人节称号碎片
	tValentineDayAct_2019_Reward[25870][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 情人节称号碎片*1
	

	tValentineDayAct_2019_Reward[25870][2] = {}
	-- ===爱情树下许愿（5999天石）（全球弹幕+场景天石雨）
	-- ===索引:tValentineDayAct_2019_Reward[25870][2]
	-- ===LogStep: 4[2]
	tValentineDayAct_2019_Reward[25870][2]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_Reward[25870][2]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[25870][2]["LogStep"] = " 4[2]"
	-- 2000爱情之心-- 【必给】
	tValentineDayAct_2019_Reward[25870][2][1] = {}
	tValentineDayAct_2019_Reward[25870][2][1]["RandomItemChanceType"] = 1
	tValentineDayAct_2019_Reward[25870][2][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][1]["RewardItem"][1]["Id"] = 3600226 -- 2000真爱之心礼盒[3600226][属性:9][叠加:10000][金币:0], 【表格】2000爱情之心
	tValentineDayAct_2019_Reward[25870][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 2000真爱之心礼盒*1

	-- 赤炼石+7 - 19%
	tValentineDayAct_2019_Reward[25870][2][2] = {}
	tValentineDayAct_2019_Reward[25870][2][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][2]["ItemChance"] = 1900
	tValentineDayAct_2019_Reward[25870][2][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][2]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7
	tValentineDayAct_2019_Reward[25870][2][2]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+7赤炼石*1
	tValentineDayAct_2019_Reward[25870][2][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][2]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+8 - 7%
	tValentineDayAct_2019_Reward[25870][2][3] = {}
	tValentineDayAct_2019_Reward[25870][2][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][3]["ItemChance"] = 700
	tValentineDayAct_2019_Reward[25870][2][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][3]["RewardItem"][1]["Id"] = 730008 -- +8赤炼石[730008][属性:0][叠加:0][金币:0], 【表格】赤炼石+8
	tValentineDayAct_2019_Reward[25870][2][3]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+8赤炼石*1
	tValentineDayAct_2019_Reward[25870][2][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][3]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 璀璨星陨石 - 18%
	tValentineDayAct_2019_Reward[25870][2][4] = {}
	tValentineDayAct_2019_Reward[25870][2][4]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][4]["ItemChance"] = 1800
	tValentineDayAct_2019_Reward[25870][2][4]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][4]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][4]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tValentineDayAct_2019_Reward[25870][2][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tValentineDayAct_2019_Reward[25870][2][4]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][4]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 璀璨星陨石 - 7%
	tValentineDayAct_2019_Reward[25870][2][5] = {}
	tValentineDayAct_2019_Reward[25870][2][5]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][5]["ItemChance"] = 700
	tValentineDayAct_2019_Reward[25870][2][5]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][5]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][5]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tValentineDayAct_2019_Reward[25870][2][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的璀璨星陨石*3
	tValentineDayAct_2019_Reward[25870][2][5]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][5]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 血菩提 - 18%
	tValentineDayAct_2019_Reward[25870][2][6] = {}
	tValentineDayAct_2019_Reward[25870][2][6]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][6]["ItemChance"] = 1800
	tValentineDayAct_2019_Reward[25870][2][6]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][6]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][6]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tValentineDayAct_2019_Reward[25870][2][6]["RewardItem"][1]["Attr"] = "0 3" -- 血菩提*3
	tValentineDayAct_2019_Reward[25870][2][6]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][6]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 血菩提 - 7%
	tValentineDayAct_2019_Reward[25870][2][7] = {}
	tValentineDayAct_2019_Reward[25870][2][7]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][7]["ItemChance"] = 700
	tValentineDayAct_2019_Reward[25870][2][7]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][7]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][7]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tValentineDayAct_2019_Reward[25870][2][7]["RewardItem"][1]["Attr"] = "0 6" -- 血菩提*6
	tValentineDayAct_2019_Reward[25870][2][7]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][7]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 超大固化石 - 18%
	tValentineDayAct_2019_Reward[25870][2][8] = {}
	tValentineDayAct_2019_Reward[25870][2][8]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][8]["ItemChance"] = 1800
	tValentineDayAct_2019_Reward[25870][2][8]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][8]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][8]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tValentineDayAct_2019_Reward[25870][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	tValentineDayAct_2019_Reward[25870][2][8]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][8]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 喵基尼【璀璨版】 - 1%
	tValentineDayAct_2019_Reward[25870][2][9] = {}
	tValentineDayAct_2019_Reward[25870][2][9]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][9]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][9]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][9]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][9]["RewardItem"][1]["Id"] = 193565 -- 喵基尼【璀璨版】[193565][属性:0][叠加:0][金币:0], 【表格】喵基尼【璀璨版】
	tValentineDayAct_2019_Reward[25870][2][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑喵基尼【璀璨版】*1
	tValentineDayAct_2019_Reward[25870][2][9]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][9]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天仙子·月华 - 1%
	tValentineDayAct_2019_Reward[25870][2][10] = {}
	tValentineDayAct_2019_Reward[25870][2][10]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][10]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][10]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][10]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][10]["RewardItem"][1]["Id"] = 194395 -- 天仙子·月华[194395][属性:8][叠加:0][金币:0], 【表格】天仙子·月华
	tValentineDayAct_2019_Reward[25870][2][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑天仙子·月华*1
	tValentineDayAct_2019_Reward[25870][2][10]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][10]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 轻舞飞扬·盈波 - 1%
	tValentineDayAct_2019_Reward[25870][2][11] = {}
	tValentineDayAct_2019_Reward[25870][2][11]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][11]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][11]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][11]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][11]["RewardItem"][1]["Id"] = 195045 -- 轻舞飞扬·盈波[195045][属性:8][叠加:0][金币:0], 【表格】轻舞飞扬·盈波
	tValentineDayAct_2019_Reward[25870][2][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑轻舞飞扬·盈波*1
	tValentineDayAct_2019_Reward[25870][2][11]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][11]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 花之吻绯恋 - 1%
	tValentineDayAct_2019_Reward[25870][2][12] = {}
	tValentineDayAct_2019_Reward[25870][2][12]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][12]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][12]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][12]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][12]["RewardItem"][1]["Id"] = 195405 -- 花之吻·绯恋[195405][属性:0][叠加:0][金币:0], 【表格】花之吻绯恋
	tValentineDayAct_2019_Reward[25870][2][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑花之吻·绯恋*1
	tValentineDayAct_2019_Reward[25870][2][12]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][12]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][12]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 水晶之恋·星梦 - 1%
	tValentineDayAct_2019_Reward[25870][2][13] = {}
	tValentineDayAct_2019_Reward[25870][2][13]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][13]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][13]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][13]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][13]["RewardItem"][1]["Id"] = 195545 -- 水晶之恋·星梦[195545][属性:0][叠加:0][金币:0], 【表格】水晶之恋·星梦
	tValentineDayAct_2019_Reward[25870][2][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑水晶之恋·星梦*1
	tValentineDayAct_2019_Reward[25870][2][13]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][13]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][13]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][13]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 浪漫进行时【梦幻】 - 1%
	tValentineDayAct_2019_Reward[25870][2][14] = {}
	tValentineDayAct_2019_Reward[25870][2][14]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25870][2][14]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25870][2][14]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][14]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][14]["RewardItem"][1]["Id"] = 195605 -- 浪漫进行时【梦幻版】[195605][属性:0][叠加:0][金币:0], 【表格】浪漫进行时【梦幻】
	tValentineDayAct_2019_Reward[25870][2][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑浪漫进行时【梦幻版】*1
	tValentineDayAct_2019_Reward[25870][2][14]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25870][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25870][2][14]["RewardEffect"]["Effect"] = "zf2-e128"
	tValentineDayAct_2019_Reward[25870][2][14]["BroadCast"] = 1 -- 全服公告
-- 	tValentineDayAct_2019_Reward[25870][2][14]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	
	-- 情人节称号碎片-- 【必给】
	tValentineDayAct_2019_Reward[25870][2][15] = {}
	tValentineDayAct_2019_Reward[25870][2][15]["RandomItemChanceType"] = 1
	tValentineDayAct_2019_Reward[25870][2][15]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25870][2][15]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25870][2][15]["RewardItem"][1]["Id"] = 3329678 -- 情人节称号碎片[3329678][属性:8][叠加:10000][金币:0], 【表格】袅袅佳人/翩翩公子称号碎片
	tValentineDayAct_2019_Reward[25870][2][15]["RewardItem"][1]["Attr"] = "0 8" -- 情人节称号碎片*8
	

	tValentineDayAct_2019_Reward[3600218] = {}
	-- ===30真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600218]
	-- ===删除: 3600218,1
	-- ===
	tValentineDayAct_2019_Reward[3600218]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600218]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600218]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600218]["DeleteItem"][1]["Id"] = 3600218 -- 【库】30真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600218]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600218]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600218]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600218]["RewardItem"][1]["Attr"] = "0 30" --  3327493 【真爱之心】*30（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600218]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600218]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600219] = {}
	-- ===50真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600219]
	-- ===删除: 3600219,1
	-- ===
	tValentineDayAct_2019_Reward[3600219]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600219]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600219]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600219]["DeleteItem"][1]["Id"] = 3600219 -- 【库】50真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600219]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600219]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600219]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600219]["RewardItem"][1]["Attr"] = "0 50" --  3327493 【真爱之心】*50（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600219]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600219]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600219]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600220] = {}
	-- ===100真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600220]
	-- ===删除: 3600220,1
	-- ===
	tValentineDayAct_2019_Reward[3600220]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600220]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600220]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600220]["DeleteItem"][1]["Id"] = 3600220 -- 【库】100真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600220]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600220]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600220]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600220]["RewardItem"][1]["Attr"] = "0 100" --  3327493 【真爱之心】*100（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600220]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600220]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600220]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600221] = {}
	-- ===90真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600221]
	-- ===删除: 3600221,1
	-- ===
	tValentineDayAct_2019_Reward[3600221]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600221]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600221]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600221]["DeleteItem"][1]["Id"] = 3600221 -- 【库】90真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600221]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600221]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600221]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600221]["RewardItem"][1]["Attr"] = "0 90" --  3327493 【真爱之心】*90（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600221]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600221]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600221]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600222] = {}
	-- ===150真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600222]
	-- ===删除: 3600222,1
	-- ===
	tValentineDayAct_2019_Reward[3600222]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600222]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600222]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600222]["DeleteItem"][1]["Id"] = 3600222 -- 【库】150真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600222]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600222]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600222]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600222]["RewardItem"][1]["Attr"] = "0 150" --  3327493 【真爱之心】*150（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600222]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600222]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600222]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600223] = {}
	-- ===300真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600223]
	-- ===删除: 3600223,1
	-- ===
	tValentineDayAct_2019_Reward[3600223]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600223]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600223]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600223]["DeleteItem"][1]["Id"] = 3600223 -- 【库】300真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600223]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600223]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600223]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600223]["RewardItem"][1]["Attr"] = "0 300" --  3327493 【真爱之心】*300（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600223]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600223]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600223]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600224] = {}
	-- ===250真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600224]
	-- ===删除: 3600224,1
	-- ===
	tValentineDayAct_2019_Reward[3600224]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600224]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600224]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600224]["DeleteItem"][1]["Id"] = 3600224 -- 【库】250真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600224]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600224]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600224]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600224]["RewardItem"][1]["Attr"] = "0 250" --  3327493 【真爱之心】*250（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600224]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600224]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600224]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600225] = {}
	-- ===500真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600225]
	-- ===删除: 3600225,1
	-- ===
	tValentineDayAct_2019_Reward[3600225]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600225]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600225]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600225]["DeleteItem"][1]["Id"] = 3600225 -- 【库】500真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600225]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600225]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600225]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600225]["RewardItem"][1]["Attr"] = "0 500" --  3327493 【真爱之心】*500（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600225]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600225]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600225]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600226] = {}
	-- ===2000真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600226]
	-- ===删除: 3600226,1
	-- ===
	tValentineDayAct_2019_Reward[3600226]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600226]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600226]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600226]["DeleteItem"][1]["Id"] = 3600226 -- 【库】2000真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600226]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600226]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600226]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600226]["RewardItem"][1]["Attr"] = "0 2000" --  3327493 【真爱之心】*2000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600226]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600226]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600226]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600227] = {}
	-- ===3000真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600227]
	-- ===删除: 3600227,1
	-- ===
	tValentineDayAct_2019_Reward[3600227]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600227]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600227]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600227]["DeleteItem"][1]["Id"] = 3600227 -- 【库】3000真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600227]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600227]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600227]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600227]["RewardItem"][1]["Attr"] = "0 3000" --  3327493 【真爱之心】*3000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600227]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600227]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600227]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600228] = {}
	-- ===5000真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600228]
	-- ===删除: 3600228,1
	-- ===
	tValentineDayAct_2019_Reward[3600228]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600228]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600228]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600228]["DeleteItem"][1]["Id"] = 3600228 -- 【库】5000真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600228]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600228]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600228]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600228]["RewardItem"][1]["Attr"] = "0 5000" --  3327493 【真爱之心】*5000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600228]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600228]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600228]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600229] = {}
	-- ===10000真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600229]
	-- ===删除: 3600229,1
	-- ===
	tValentineDayAct_2019_Reward[3600229]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600229]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600229]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600229]["DeleteItem"][1]["Id"] = 3600229 -- 【库】10000真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600229]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600229]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600229]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600229]["RewardItem"][1]["Attr"] = "0 10000" --  3327493 【真爱之心】*10000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600229]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600229]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600229]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600230] = {}
	-- ===10真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600230]
	-- ===删除: 3600230,1
	-- ===
	tValentineDayAct_2019_Reward[3600230]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600230]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600230]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600230]["DeleteItem"][1]["Id"] = 3600230 -- 【库】10真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600230]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600230]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600230]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600230]["RewardItem"][1]["Attr"] = "0 10" --  3327493 【真爱之心】*10
	tValentineDayAct_2019_Reward[3600230]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600230]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600230]["RewardEffect"]["Effect"] = "angelwing"

	tValentineDayAct_2019_Reward[3600231] = {}
	-- ===1000真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600231]
	-- ===删除: 3600231,1
	-- ===
	tValentineDayAct_2019_Reward[3600231]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600231]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600231]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600231]["DeleteItem"][1]["Id"] = 3600231 -- 【库】1000真爱之心礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600231]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600231]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600231]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600231]["RewardItem"][1]["Attr"] = "0 1000" --  3327493 【真爱之心】*1000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600231]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600231]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600231]["RewardEffect"]["Effect"] = "angelwing"

	
	tValentineDayAct_2019_Reward[3600232] = {}
	tValentineDayAct_2019_Reward[3600232]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600232]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600232]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600232]["DeleteItem"][1]["Id"] = 3600232 -- 
	tValentineDayAct_2019_Reward[3600232]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600232]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600232]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600232]["RewardItem"][1]["Attr"] = "0 %d" --  3327493 【真爱之心】（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600232]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600232]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600232]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3600233] = {}
	-- ===甜心巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3600233]
	-- ===删除: 3600233,1
	-- ===
	tValentineDayAct_2019_Reward[3600233]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600233]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600233]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600233]["DeleteItem"][1]["Id"] = 3600233 -- 【库】甜心巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3600233]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600233]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600233]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600233]["RewardItem"][1]["Attr"] = "0 10" --  3327493 【真爱之心】*10
	tValentineDayAct_2019_Reward[3600233]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600233]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600233]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600234] = {}
	-- ===浓情巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3600234]
	-- ===删除: 3600234,1
	-- ===
	tValentineDayAct_2019_Reward[3600234]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600234]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600234]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600234]["DeleteItem"][1]["Id"] = 3600234 -- 【库】浓情巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3600234]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600234]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600234]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600234]["RewardItem"][1]["Attr"] = "0 100" --  3327493 【真爱之心】*100（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600234]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600234]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600234]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600235] = {}
	-- ===真爱巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3600235]
	-- ===删除: 3600235,1
	-- ===
	tValentineDayAct_2019_Reward[3600235]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3600235]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600235]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600235]["DeleteItem"][1]["Id"] = 3600235 -- 【库】真爱巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3600235]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600235]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600235]["RewardItem"][1]["Id"] = 3327493 --  3327493 【真爱之心】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3600235]["RewardItem"][1]["Attr"] = "0 1000" --  3327493 【真爱之心】*1000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600235]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600235]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600235]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600236] = {}
	-- ===真爱礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3600236]
	-- ===删除: 3600236,1
	-- ===
	tValentineDayAct_2019_Reward[3600236]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentineDayAct_2019_Reward[3600236]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600236]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600236]["DeleteItem"][1]["Id"] = 3600236 -- 【库】真爱礼盒[属性:9]
	tValentineDayAct_2019_Reward[3600236]["LogId"] = 12001823
	-- 5个爱情之心 - 45%
	tValentineDayAct_2019_Reward[3600236][1] = {}
	tValentineDayAct_2019_Reward[3600236][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600236][1]["ItemChance"] = 5500
	tValentineDayAct_2019_Reward[3600236][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600236][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600236][1]["RewardItem"][1]["Id"] = 3315299 --  3327493 【真爱之心】, 【表格】5个爱情之心
	tValentineDayAct_2019_Reward[3600236][1]["RewardItem"][1]["Attr"] = "0 1" --  3327493 【真爱之心】*5
	tValentineDayAct_2019_Reward[3600236][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600236][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600236][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个爱情之心 - 35%
	tValentineDayAct_2019_Reward[3600236][2] = {}
	tValentineDayAct_2019_Reward[3600236][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600236][2]["ItemChance"] = 3000
	tValentineDayAct_2019_Reward[3600236][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600236][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600236][2]["RewardItem"][1]["Id"] = 3315299 --  3327493 【真爱之心】, 【表格】10个爱情之心
	tValentineDayAct_2019_Reward[3600236][2]["RewardItem"][1]["Attr"] = "0 3" --  3327493 【真爱之心】*10
	tValentineDayAct_2019_Reward[3600236][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600236][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600236][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 25个爱情之心 - 20%
	tValentineDayAct_2019_Reward[3600236][3] = {}
	tValentineDayAct_2019_Reward[3600236][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600236][3]["ItemChance"] = 1500
	tValentineDayAct_2019_Reward[3600236][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600236][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600236][3]["RewardItem"][1]["Id"] = 3315299 --  3327493 【真爱之心】, 【表格】25个爱情之心
	tValentineDayAct_2019_Reward[3600236][3]["RewardItem"][1]["Attr"] = "0 5" --  3327493 【真爱之心】*25（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3600236][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600236][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600236][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward["SumItem"]={}
	tValentineDayAct_2019_Reward["SumItem"][3600236] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["DeleteItem"][1]["Id"] = 3600236 -- 【库】甜心巧克力（赠）[属性:9]\
	tValentineDayAct_2019_Reward["SumItem"][3600236]["DeleteItem"][1]["ItemNum"] = 1 
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardItem"][1]["Id"] = 3315299 
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardItem"][1]["Attr"] = "0 %d" 
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["SumItem"][3600236]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tValentineDayAct_2019_Reward[3327545] = {}
	-- ===甜心巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3327545]
	-- ===删除: 3327545,1
	-- ===
	tValentineDayAct_2019_Reward[3327545]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327545]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327545]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327545]["DeleteItem"][1]["Id"] = 3327545 -- 【库】甜心巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3327545]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327545]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327545]["RewardItem"][1]["Id"] = 3315299 --  3315299 【巧克力豆】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3327545]["RewardItem"][1]["Attr"] = "0 10" --  3315299 【巧克力豆】*10
	tValentineDayAct_2019_Reward[3327545]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327545]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327545]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3327546] = {}
	-- ===浓情巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3327546]
	-- ===删除: 3327546,1
	-- ===
	tValentineDayAct_2019_Reward[3327546]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327546]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327546]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327546]["DeleteItem"][1]["Id"] = 3327546 -- 【库】浓情巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3327546]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327546]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327546]["RewardItem"][1]["Id"] = 3315299 --  3315299 【巧克力豆】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3327546]["RewardItem"][1]["Attr"] = "0 100" --  3315299 【巧克力豆】*100（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3327546]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327546]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327546]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3327547] = {}
	-- ===真爱巧克力（赠）
	-- ===索引: tValentineDayAct_2019_Reward[3327547]
	-- ===删除: 3327547,1
	-- ===
	tValentineDayAct_2019_Reward[3327547]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327547]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327547]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327547]["DeleteItem"][1]["Id"] = 3327547 -- 【库】真爱巧克力（赠）[属性:9]
	tValentineDayAct_2019_Reward[3327547]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327547]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327547]["RewardItem"][1]["Id"] = 3315299 --  3315299 【巧克力豆】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3327547]["RewardItem"][1]["Attr"] = "0 1000" --  3315299 【巧克力豆】*1000（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3327547]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327547]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327547]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327524] = {}
	-- ===赤霄火云（赠）'
	-- ===索引: tValentineDayAct_2019_Reward[3327524]
	-- ===删除: 3327524,1
	-- ===
	tValentineDayAct_2019_Reward[3327524]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327524]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327524]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327524]["DeleteItem"][1]["Id"] = 3327524 -- 【库】赤霄火云（赠）'[属性:9]
	tValentineDayAct_2019_Reward[3327524]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327524]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327524]["RewardItem"][1]["Id"] = 200613 --  200613 【赤霄火云】, 【表格】真爱之心
	tValentineDayAct_2019_Reward[3327524]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" --  3315299 【赤霄火云】
	tValentineDayAct_2019_Reward[3327524]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327524]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327525] = {}
	-- ===赤霄火云（赠）'
	-- ===索引: tValentineDayAct_2019_Reward[3327524]
	-- ===删除: 3327524,1
	-- ===
	tValentineDayAct_2019_Reward[3327525]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327525]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327525]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327525]["DeleteItem"][1]["Id"] = 3327525 -- 【库】赤霄火云（赠）'[属性:9]
	tValentineDayAct_2019_Reward[3327525]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327525]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327525]["RewardItem"][1]["Id"] = 200543 --  200543 【喵呜将军【魅力版】, 【表格】喵呜将军【魅力版】
	tValentineDayAct_2019_Reward[3327525]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" --  200543 喵呜将军【魅力版】（赠）*1
	tValentineDayAct_2019_Reward[3327525]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327525]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327522] = {}
	-- ===赤霄火云（赠）'
	-- ===索引: tValentineDayAct_2019_Reward[3327524]
	-- ===删除: 3327522,1
	-- ===
	tValentineDayAct_2019_Reward[3327522]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327522]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327522]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327522]["DeleteItem"][1]["Id"] = 3327522 -- 【库】赤霄火云（赠）'[属性:9]
	tValentineDayAct_2019_Reward[3327522]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327522]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327522]["RewardItem"][1]["Id"] = 196115 --  196115 【喵呜将军【魅力版】, 【表格】喵呜将军【魅力版】
	tValentineDayAct_2019_Reward[3327522]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" --  196115 喵呜将军【魅力版】（赠）*1
	tValentineDayAct_2019_Reward[3327522]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327522]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327548] = {}
	-- ===赤霄火云（赠）'
	-- ===索引: tValentineDayAct_2019_Reward[3327524]
	-- ===删除: 3327522,1
	-- ===
	tValentineDayAct_2019_Reward[3327548]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3327548]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327548]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327548]["DeleteItem"][1]["Id"] = 3327548 -- 【库】赤霄火云（赠）'[属性:9]
	tValentineDayAct_2019_Reward[3327548]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327548]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327548]["RewardItem"][1]["Id"] = 196065 --  196115 【喵呜将军【魅力版】, 【表格】喵呜将军【魅力版】
	tValentineDayAct_2019_Reward[3327548]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" --  196115 喵呜将军【魅力版】（赠）*1
	tValentineDayAct_2019_Reward[3327548]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327548]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327548]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward["MonsterReward"] = {}
	-- ===怪物掉落
	-- ===索引: tValentineDayAct_2019_Reward["MonsterReward"][1]
	-- ===LogStep: 5[1]
	-- ===
	tValentineDayAct_2019_Reward["MonsterReward"][1] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][1]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["MonsterReward"][1]["LogStep"] = "5[1]"
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardItem"][1]["Id"] = 3600236 -- 真爱礼盒[3600236][属性:9][叠加:10000][金币:0], 【表格】真爱礼盒
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardItem"][1]["Attr"] = "0 1" -- 真爱礼盒*1
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["MonsterReward"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	

	tValentineDayAct_2019_Reward["MonsterReward"][2] = {}
	-- ===怪物掉落
	-- ===索引: tValentineDayAct_2019_Reward["MonsterReward"][2]
	-- ===LogStep: 5[2]
	-- ===
	-- ===
	tValentineDayAct_2019_Reward["MonsterReward"][2]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["MonsterReward"][2]["LogStep"] = "5[2]"
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardItem"][1]["Id"] = 3600236 -- 真爱礼盒[3600236][属性:9][叠加:10000][金币:0], 【表格】真爱礼盒
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardItem"][1]["Attr"] = "0 5" -- 真爱礼盒*5
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["MonsterReward"][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward["MonsterReward"][3] = {}
	-- ===怪物掉落
	-- ===索引: tValentineDayAct_2019_Reward["MonsterReward"][3]
	-- ===LogStep: 5[3]
	-- ===
	-- ===
	tValentineDayAct_2019_Reward["MonsterReward"][3]["LogId"] = 12001823
	tValentineDayAct_2019_Reward["MonsterReward"][3]["LogStep"] = "5[3]"
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardItem"][1]["Id"] = 3600236 -- 真爱礼盒[3600236][属性:9][叠加:10000][金币:0], 【表格】真爱礼盒
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardItem"][1]["Attr"] = "0 20" -- 真爱礼盒*20（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward["MonsterReward"][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327550] = {}
	-- ===情人节惊喜礼包
	-- ===索引:tValentineDayAct_2019_Reward[3327550]
	-- ===删除: 3327550,1
	-- ===删除: 3327493,300
	tValentineDayAct_2019_Reward[3327550][1] = {}
	tValentineDayAct_2019_Reward[3327550][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTempl[1]ate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"][1]["Id"] = 3327550 -- 【库】情人节惊喜礼包[属性:9]
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"][2] = {}
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"][2]["Id"] = 3327493 -- 【库】真爱之心[属性:9]
	tValentineDayAct_2019_Reward[3327550][1]["DeleteItem"][2]["ItemNum"] = 300
	tValentineDayAct_2019_Reward[3327550][1]["LogId"] = 12001823
	-- 300爱情之心 - 35%
	tValentineDayAct_2019_Reward[3327550][1][1] = {}
	tValentineDayAct_2019_Reward[3327550][1][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][1][1]["ItemChance"] = 3500
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardItem"][1]["Id"] = 3600223 -- 300真爱之心礼盒[3600223][属性:9][叠加:10000][金币:0], 【表格】300爱情之心
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 300真爱之心礼盒*1
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 400爱情之心 - 49%
	tValentineDayAct_2019_Reward[3327550][1][2] = {}
	tValentineDayAct_2019_Reward[3327550][1][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][1][2]["ItemChance"] = 4900
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardItem"][1]["Id"] = 3329679 -- 400真爱之心礼盒[3329679][属性:8][叠加:10000][金币:0], 【表格】400爱情之心
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 400真爱之心礼盒*1
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 500爱情之心 - 16%
	tValentineDayAct_2019_Reward[3327550][1][3] = {}
	tValentineDayAct_2019_Reward[3327550][1][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][1][3]["ItemChance"] = 1600
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardItem"][1]["Id"] = 3600225 -- 500真爱之心礼盒[3600225][属性:9][叠加:10000][金币:0], 【表格】500爱情之心
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 500真爱之心礼盒*1
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][1][3]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 赤炼石+3 - 20%
	tValentineDayAct_2019_Reward[3327550][2] = {}
	tValentineDayAct_2019_Reward[3327550][2]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_Reward[3327550][2]["LogId"] = 12001823
	
	tValentineDayAct_2019_Reward[3327550][2][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][1]["ItemChance"] = 2000
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tValentineDayAct_2019_Reward[3327550][2][2] = {}
	tValentineDayAct_2019_Reward[3327550][2][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][2]["ItemChance"] = 2500
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25%
	tValentineDayAct_2019_Reward[3327550][2][3] = {}
	tValentineDayAct_2019_Reward[3327550][2][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][3]["ItemChance"] = 2500
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tValentineDayAct_2019_Reward[3327550][2][4] = {}
	tValentineDayAct_2019_Reward[3327550][2][4]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][4]["ItemChance"] = 2500
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹*10
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 1.5%
	tValentineDayAct_2019_Reward[3327550][2][5] = {}
	tValentineDayAct_2019_Reward[3327550][2][5]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][5]["ItemChance"] = 150
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1%
	tValentineDayAct_2019_Reward[3327550][2][6] = {}
	tValentineDayAct_2019_Reward[3327550][2][6]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][6]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 1%
	tValentineDayAct_2019_Reward[3327550][2][7] = {}
	tValentineDayAct_2019_Reward[3327550][2][7]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][7]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardItem"][1]["Id"] = 3304333 -- 3000气力值极运包[3304333][属性:9][叠加:10000][金币:0], 【表格】3000气力值
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardItem"][1]["Attr"] = "0 1" -- 3000气力值极运包*1
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 - 0.5%
	tValentineDayAct_2019_Reward[3327550][2][8] = {}
	tValentineDayAct_2019_Reward[3327550][2][8]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][8]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包 - 1%
	tValentineDayAct_2019_Reward[3327550][2][9] = {}
	tValentineDayAct_2019_Reward[3327550][2][9]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3327550][2][9]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327550][2][9]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3329679] = {}
	-- ===400真爱之心礼盒
	-- ===索引: tValentineDayAct_2019_Reward[3329679]
	-- ===删除: 3329679,1
	-- ===
	tValentineDayAct_2019_Reward[3329679]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[3329679]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3329679]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3329679]["DeleteItem"][1]["Id"] = 3329679 -- 【库】400真爱之心礼盒[属性:8]
	tValentineDayAct_2019_Reward[3329679]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3329679]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3329679]["RewardItem"][1]["Id"] = 3327493 -- 真爱之心[3327493][属性:9][叠加:10000][金币:0], 【表格】真爱之心
	tValentineDayAct_2019_Reward[3329679]["RewardItem"][1]["Attr"] = "0 400" -- 真爱之心*400（[错误]物品数量超10个）
	tValentineDayAct_2019_Reward[3329679]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329679]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3329679]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3600241] = {}
	-- ===情人节送爱心礼包
	-- ===索引:tValentineDayAct_2019_Reward[3600241]
	-- ===删除: 3600241,1
	tValentineDayAct_2019_Reward[3600241]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentineDayAct_2019_Reward[3600241]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3600241]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241]["DeleteItem"][1]["Id"] = 3600241 -- 【库】情人节送爱心礼包[属性:9]
	tValentineDayAct_2019_Reward[3600241]["LogId"] = 12001823
	-- 1阶灵珠 - 6%
	tValentineDayAct_2019_Reward[3600241][1] = {}
	tValentineDayAct_2019_Reward[3600241][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][1]["ItemChance"] = 600
	tValentineDayAct_2019_Reward[3600241][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][1]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tValentineDayAct_2019_Reward[3600241][1]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tValentineDayAct_2019_Reward[3600241][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentineDayAct_2019_Reward[3600241][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54210, data0）】全服限量:（5）, 超限给编号（4）-
	tValentineDayAct_2019_Reward[3600241][1]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[3600241][1]["Pos"] = 0
	tValentineDayAct_2019_Reward[3600241][1]["MaxData"] = 5
	tValentineDayAct_2019_Reward[3600241][1]["FullIndex"] = 4
	-- 2阶灵珠 - 3%
	tValentineDayAct_2019_Reward[3600241][2] = {}
	tValentineDayAct_2019_Reward[3600241][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][2]["ItemChance"] = 300
	tValentineDayAct_2019_Reward[3600241][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][2]["RewardItem"][1]["Id"] = 4200002 -- 2阶灵珠[4200002][属性:72][叠加:99][金币:0], 【表格】2阶灵珠
	tValentineDayAct_2019_Reward[3600241][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tValentineDayAct_2019_Reward[3600241][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentineDayAct_2019_Reward[3600241][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54210, data0）】全服限量:（5）, 超限给编号（4）-
	tValentineDayAct_2019_Reward[3600241][2]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[3600241][2]["Pos"] = 0
	tValentineDayAct_2019_Reward[3600241][2]["MaxData"] = 5
	tValentineDayAct_2019_Reward[3600241][2]["FullIndex"] = 4
	-- 3阶灵珠 - 1%
	tValentineDayAct_2019_Reward[3600241][3] = {}
	tValentineDayAct_2019_Reward[3600241][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][3]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[3600241][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][3]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tValentineDayAct_2019_Reward[3600241][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tValentineDayAct_2019_Reward[3600241][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tValentineDayAct_2019_Reward[3600241][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54210, data0）】全服限量:（5）, 超限给编号（4）-
	tValentineDayAct_2019_Reward[3600241][3]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[3600241][3]["Pos"] = 0
	tValentineDayAct_2019_Reward[3600241][3]["MaxData"] = 5
	tValentineDayAct_2019_Reward[3600241][3]["FullIndex"] = 4
	-- 赤炼石+3 - 24%
	tValentineDayAct_2019_Reward[3600241][4] = {}
	tValentineDayAct_2019_Reward[3600241][4]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][4]["ItemChance"] = 2400
	tValentineDayAct_2019_Reward[3600241][4]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][4]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tValentineDayAct_2019_Reward[3600241][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tValentineDayAct_2019_Reward[3600241][4]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 24%
	tValentineDayAct_2019_Reward[3600241][5] = {}
	tValentineDayAct_2019_Reward[3600241][5]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][5]["ItemChance"] = 2400
	tValentineDayAct_2019_Reward[3600241][5]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][5]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tValentineDayAct_2019_Reward[3600241][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tValentineDayAct_2019_Reward[3600241][5]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tValentineDayAct_2019_Reward[3600241][6] = {}
	tValentineDayAct_2019_Reward[3600241][6]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][6]["ItemChance"] = 2200
	tValentineDayAct_2019_Reward[3600241][6]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3600241][6]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3600241][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentineDayAct_2019_Reward[3600241][6]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹*10
	tValentineDayAct_2019_Reward[3600241][6]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值 - 20%
	tValentineDayAct_2019_Reward[3600241][7] = {}
	tValentineDayAct_2019_Reward[3600241][7]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[3600241][7]["ItemChance"] = 2000
	tValentineDayAct_2019_Reward[3600241][7]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[3600241][7]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tValentineDayAct_2019_Reward[3600241][7]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3600241][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3600241][7]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[25868] = {}
	-- ===情人节惊喜礼包
	-- ===索引:tValentineDayAct_2019_Reward[25868][1]
	-- ===删除: 3327493,999
	-- ===LogStep: 6[2]
	tValentineDayAct_2019_Reward[25868][1] = {}
	tValentineDayAct_2019_Reward[25868][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tValentineDayAct_2019_Reward[25868][1]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[25868][1]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1]["DeleteItem"][1]["Id"] = 3327493 -- 【库】真爱之心[属性:9]
	tValentineDayAct_2019_Reward[25868][1]["DeleteItem"][1]["ItemNum"] = 999
	tValentineDayAct_2019_Reward[25868][1]["LogId"] = 12001823
	tValentineDayAct_2019_Reward[25868][1]["LogStep"] = " 6[2]"
	-- 袅袅佳人/翩翩公子称号碎片-- 【必给】
	tValentineDayAct_2019_Reward[25868][1][1] = {}
	tValentineDayAct_2019_Reward[25868][1][1]["RandomItemChanceType"] = 1
	tValentineDayAct_2019_Reward[25868][1][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][1]["RewardItem"][1]["Id"] = 3329678 -- 情人节称号碎片[3329678][属性:8][叠加:0][金币:0], 【表格】情人节称号碎片
	tValentineDayAct_2019_Reward[25868][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 情人节称号碎片*8
	
	-- 晶莹星陨石 - 17.1%
	tValentineDayAct_2019_Reward[25868][1][2] = {}
	tValentineDayAct_2019_Reward[25868][1][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][2]["ItemChance"] = 1710
	tValentineDayAct_2019_Reward[25868][1][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tValentineDayAct_2019_Reward[25868][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tValentineDayAct_2019_Reward[25868][1][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][2]["RewardEffect"]["Effect"] = "task115"
	-- 璀璨星陨石 - 1%
	tValentineDayAct_2019_Reward[25868][1][3] = {}
	tValentineDayAct_2019_Reward[25868][1][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][3]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25868][1][3]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][3]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][3]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tValentineDayAct_2019_Reward[25868][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tValentineDayAct_2019_Reward[25868][1][3]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][3]["RewardEffect"]["Effect"] = "task113"
	-- 赤炼石+4 - 19%
	tValentineDayAct_2019_Reward[25868][1][4] = {}
	tValentineDayAct_2019_Reward[25868][1][4]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][4]["ItemChance"] = 1900
	tValentineDayAct_2019_Reward[25868][1][4]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][4]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tValentineDayAct_2019_Reward[25868][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tValentineDayAct_2019_Reward[25868][1][4]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][4]["RewardEffect"]["Effect"] = "task115"
	-- 赤炼石+6 - 3%
	tValentineDayAct_2019_Reward[25868][1][5] = {}
	tValentineDayAct_2019_Reward[25868][1][5]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][5]["ItemChance"] = 300
	tValentineDayAct_2019_Reward[25868][1][5]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][5]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][5]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tValentineDayAct_2019_Reward[25868][1][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tValentineDayAct_2019_Reward[25868][1][5]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][5]["RewardEffect"]["Effect"] = "task114"
	-- 10000气力值 - 8%
	tValentineDayAct_2019_Reward[25868][1][6] = {}
	tValentineDayAct_2019_Reward[25868][1][6]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][6]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25868][1][6]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[25868][1][6]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tValentineDayAct_2019_Reward[25868][1][6]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][6]["RewardEffect"]["Effect"] = "task115"
	-- 30000气力值 - 1.7%
	tValentineDayAct_2019_Reward[25868][1][7] = {}
	tValentineDayAct_2019_Reward[25868][1][7]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][7]["ItemChance"] = 170
	tValentineDayAct_2019_Reward[25868][1][7]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[25868][1][7]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tValentineDayAct_2019_Reward[25868][1][7]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][7]["RewardEffect"]["Effect"] = "task113"
	-- 固化石 - 3%
	tValentineDayAct_2019_Reward[25868][1][8] = {}
	tValentineDayAct_2019_Reward[25868][1][8]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][8]["ItemChance"] = 300
	tValentineDayAct_2019_Reward[25868][1][8]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][8]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][8]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tValentineDayAct_2019_Reward[25868][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tValentineDayAct_2019_Reward[25868][1][8]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][8]["RewardEffect"]["Effect"] = "task115"
	-- 999朵红玫瑰 - 1%
	tValentineDayAct_2019_Reward[25868][1][9] = {}
	tValentineDayAct_2019_Reward[25868][1][9]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][9]["ItemChance"] = 100
	tValentineDayAct_2019_Reward[25868][1][9]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][9]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][9]["RewardItem"][1]["Id"] = 751999 -- 999朵红玫瑰[751999][属性:8][叠加:0][金币:0], 【表格】999朵红玫瑰
	tValentineDayAct_2019_Reward[25868][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 999朵红玫瑰*1
	tValentineDayAct_2019_Reward[25868][1][9]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][9]["RewardEffect"]["Effect"] = "task115"
	-- 999朵百合花 - 0.5%
	tValentineDayAct_2019_Reward[25868][1][10] = {}
	tValentineDayAct_2019_Reward[25868][1][10]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][10]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25868][1][10]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][10]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][10]["RewardItem"][1]["Id"] = 752999 -- 999朵百合花[752999][属性:8][叠加:0][金币:0], 【表格】999朵百合花
	tValentineDayAct_2019_Reward[25868][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tValentineDayAct_2019_Reward[25868][1][10]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][10]["RewardEffect"]["Effect"] = "task115"
	-- 999朵兰花 - 1.5%
	tValentineDayAct_2019_Reward[25868][1][11] = {}
	tValentineDayAct_2019_Reward[25868][1][11]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][11]["ItemChance"] = 150
	tValentineDayAct_2019_Reward[25868][1][11]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][11]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][11]["RewardItem"][1]["Id"] = 753999 -- 999朵兰花[753999][属性:8][叠加:0][金币:0], 【表格】999朵兰花
	tValentineDayAct_2019_Reward[25868][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 999朵兰花*1
	tValentineDayAct_2019_Reward[25868][1][11]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][11]["RewardEffect"]["Effect"] = "task115"
	-- 999个飞吻 - 0.5%
	tValentineDayAct_2019_Reward[25868][1][12] = {}
	tValentineDayAct_2019_Reward[25868][1][12]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][12]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25868][1][12]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][12]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][12]["RewardItem"][1]["Id"] = 755999 -- 999个飞吻[755999][属性:8][叠加:0][金币:0], 【表格】999个飞吻
	tValentineDayAct_2019_Reward[25868][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 999个飞吻*1
	tValentineDayAct_2019_Reward[25868][1][12]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][12]["RewardEffect"]["Effect"] = "task115"
	-- 999封情书 - 0.5%
	tValentineDayAct_2019_Reward[25868][1][13] = {}
	tValentineDayAct_2019_Reward[25868][1][13]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][13]["ItemChance"] = 50
	tValentineDayAct_2019_Reward[25868][1][13]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][13]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][13]["RewardItem"][1]["Id"] = 756999 -- 999封情书[756999][属性:8][叠加:0][金币:0], 【表格】999封情书
	tValentineDayAct_2019_Reward[25868][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 999封情书*1
	tValentineDayAct_2019_Reward[25868][1][13]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][13]["RewardEffect"]["Effect"] = "task115"
	-- 3000修为值 - 16%
	tValentineDayAct_2019_Reward[25868][1][14] = {}
	tValentineDayAct_2019_Reward[25868][1][14]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][14]["ItemChance"] = 1600
	tValentineDayAct_2019_Reward[25868][1][14]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25868][1][14]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】3000修为值
	tValentineDayAct_2019_Reward[25868][1][14]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][14]["RewardEffect"]["Effect"] = "task115"
	-- 8000修为值 - 8%
	tValentineDayAct_2019_Reward[25868][1][15] = {}
	tValentineDayAct_2019_Reward[25868][1][15]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][15]["ItemChance"] = 800
	tValentineDayAct_2019_Reward[25868][1][15]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25868][1][15]["RewardRepairValue"]["Value"] = 8000 -- 修为值, 【需求】8000修为值
	tValentineDayAct_2019_Reward[25868][1][15]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][15]["RewardEffect"]["Effect"] = "task114"
	-- 15000修为值 - 3%
	tValentineDayAct_2019_Reward[25868][1][16] = {}
	tValentineDayAct_2019_Reward[25868][1][16]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][16]["ItemChance"] = 300
	tValentineDayAct_2019_Reward[25868][1][16]["RewardRepairValue"] = {}
	tValentineDayAct_2019_Reward[25868][1][16]["RewardRepairValue"]["Value"] = 15000 -- 修为值, 【需求】15000修为值
	tValentineDayAct_2019_Reward[25868][1][16]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][16]["RewardEffect"]["Effect"] = "task113"
	-- 天灵果 - 12%
	tValentineDayAct_2019_Reward[25868][1][17] = {}
	tValentineDayAct_2019_Reward[25868][1][17]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][17]["ItemChance"] = 1200
	tValentineDayAct_2019_Reward[25868][1][17]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][17]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][17]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tValentineDayAct_2019_Reward[25868][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tValentineDayAct_2019_Reward[25868][1][17]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][17]["RewardEffect"]["Effect"] = "task115"
	-- 血菩提 - 4%
	tValentineDayAct_2019_Reward[25868][1][18] = {}
	tValentineDayAct_2019_Reward[25868][1][18]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][18]["ItemChance"] = 400
	tValentineDayAct_2019_Reward[25868][1][18]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][18]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][18]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tValentineDayAct_2019_Reward[25868][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 血菩提*1
	tValentineDayAct_2019_Reward[25868][1][18]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][18]["RewardEffect"]["Effect"] = "task113"
	-- 大鱼海棠金鳞 - 0.05%
	tValentineDayAct_2019_Reward[25868][1][19] = {}
	tValentineDayAct_2019_Reward[25868][1][19]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][19]["ItemChance"] = 5
	tValentineDayAct_2019_Reward[25868][1][19]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][19]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][19]["RewardItem"][1]["Id"] = 3329978 -- 大鱼海棠·金麟（赠）[3329978][属性:9][叠加:99][金币:0], 【表格】大鱼海棠金鳞
	tValentineDayAct_2019_Reward[25868][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 大鱼海棠·金麟（赠）*1
	tValentineDayAct_2019_Reward[25868][1][19]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][19]["RewardEffect"]["Effect"] = "task113"
			-- 【动态掩码（54210, data1）】全服限量:（2）, 超限给编号（5）-
	tValentineDayAct_2019_Reward[25868][1][19]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[25868][1][19]["Pos"] = 1
	tValentineDayAct_2019_Reward[25868][1][19]["MaxData"] = 2
	tValentineDayAct_2019_Reward[25868][1][19]["FullIndex"] = 6
	-- 赤霄火云 - 0.07%
	tValentineDayAct_2019_Reward[25868][1][20] = {}
	tValentineDayAct_2019_Reward[25868][1][20]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][20]["ItemChance"] = 7
	tValentineDayAct_2019_Reward[25868][1][20]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][20]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][20]["RewardItem"][1]["Id"] = 3327524 -- 赤霄火云（赠）[3327524][属性:9][叠加:10000][金币:0], 【表格】赤霄火云
	tValentineDayAct_2019_Reward[25868][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 赤霄火云（赠）*1
	tValentineDayAct_2019_Reward[25868][1][20]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][20]["RewardEffect"]["Effect"] = "task113"
			-- 【动态掩码（54210, data1）】全服限量:（2）, 超限给编号（5）-
	tValentineDayAct_2019_Reward[25868][1][20]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[25868][1][20]["Pos"] = 1
	tValentineDayAct_2019_Reward[25868][1][20]["MaxData"] = 2
	tValentineDayAct_2019_Reward[25868][1][20]["FullIndex"] = 6
	-- 喵呜将军【魅力版】 - 0.08%
	tValentineDayAct_2019_Reward[25868][1][21] = {}
	tValentineDayAct_2019_Reward[25868][1][21]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_Reward[25868][1][21]["ItemChance"] = 8
	tValentineDayAct_2019_Reward[25868][1][21]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[25868][1][21]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[25868][1][21]["RewardItem"][1]["Id"] = 3327525 -- 喵呜将军【魅力版】（赠）[3327525][属性:9][叠加:10000][金币:0], 【表格】喵呜将军【魅力版】
	tValentineDayAct_2019_Reward[25868][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 喵呜将军【魅力版】（赠）*1
	tValentineDayAct_2019_Reward[25868][1][21]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[25868][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[25868][1][21]["RewardEffect"]["Effect"] = "task113"
			-- 【动态掩码（54210, data1）】全服限量:（2）, 超限给编号（5）-
	tValentineDayAct_2019_Reward[25868][1][21]["GlobalId"] = 54210
	tValentineDayAct_2019_Reward[25868][1][21]["Pos"] = 1
	tValentineDayAct_2019_Reward[25868][1][21]["MaxData"] = 2
	tValentineDayAct_2019_Reward[25868][1][21]["FullIndex"] = 6

	
	tValentineDayAct_2019_Reward[3329678] = {}
	-- ===情人节称号碎片
	-- ===索引: tValentineDayAct_2019_Reward[3329678][1]
	-- ===删除: 3329678,1
	-- ===
	tValentineDayAct_2019_Reward[3329678][1] = {}
	tValentineDayAct_2019_Reward[3329678][1]["LogId"] = 12001823
	-- tValentineDayAct_2019_Reward[3329678][1]["DeleteItem"] = {}
	-- tValentineDayAct_2019_Reward[3329678][1]["DeleteItem"][1] = {}
	-- tValentineDayAct_2019_Reward[3329678][1]["DeleteItem"][1]["Id"] = 3329678 -- 【库】情人节称号碎片[属性:11]
	tValentineDayAct_2019_Reward[3329678][1]["RewardTitle"] = {}
	tValentineDayAct_2019_Reward[3329678][1]["RewardTitle"]["TitleType"] = 2179 -- 【库】袅袅佳人, 【表格】袅袅佳人
	tValentineDayAct_2019_Reward[3329678][1]["RewardTitle"]["TitleId"] = 2179
	tValentineDayAct_2019_Reward[3329678][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329678][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3329678][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentineDayAct_2019_Reward[3329678][2] = {}
	-- ===情人节称号碎片
	-- ===索引: tValentineDayAct_2019_Reward[3329678][2]
	-- ===删除: 3329678,1
	-- ===
	tValentineDayAct_2019_Reward[3329678][2]["LogId"] = 12001823
	-- tValentineDayAct_2019_Reward[3329678][2]["DeleteItem"] = {}
	-- tValentineDayAct_2019_Reward[3329678][2]["DeleteItem"][1] = {}
	-- tValentineDayAct_2019_Reward[3329678][2]["DeleteItem"][1]["Id"] = 3329678 -- 【库】情人节称号碎片[属性:11]
	tValentineDayAct_2019_Reward[3329678][2]["RewardTitle"] = {}
	tValentineDayAct_2019_Reward[3329678][2]["RewardTitle"]["TitleType"] = 2180 -- 【库】翩翩公子, 【表格】翩翩公子
	tValentineDayAct_2019_Reward[3329678][2]["RewardTitle"]["TitleId"] = 2180
	tValentineDayAct_2019_Reward[3329678][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329678][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3329678][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327526] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327526][1]
	-- ===删除:3327526,1
	-- ===
	tValentineDayAct_2019_Reward[3327526][1] = {}
	tValentineDayAct_2019_Reward[3327526][1]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3327526][1]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327526][1]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327526][1]["DeleteItem"][1]["Id"] = 3327526 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3327526][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327526][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327526][1]["RewardItem"][1]["Id"] = 350173 --  350172 【库里没有该物品】, 【表格】春节长武
	tValentineDayAct_2019_Reward[3327526][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1" -- 15天时效(激活)的 350172 【库里没有该物品】*1
	tValentineDayAct_2019_Reward[3327526][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327526][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327526][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327526][2] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327526][2]
	-- ===删除:3327526,1
	-- ===
	tValentineDayAct_2019_Reward[3327526][2]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3327526][2]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327526][2]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327526][2]["DeleteItem"][1]["Id"] = 3327526 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3327526][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327526][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327526][2]["RewardItem"][1]["Id"] = 360310 --  360309 【库里没有该物品】, 【表格】春节短武
	tValentineDayAct_2019_Reward[3327526][2]["RewardItem"][1]["Attr"] = "0 2 0 10080 1" -- 15天时效(激活)的 360309 【库里没有该物品】*2
	tValentineDayAct_2019_Reward[3327526][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327526][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327526][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327549] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327549][1]
	-- ===删除:3327549,1
	-- ===
	tValentineDayAct_2019_Reward[3327549][1] = {}
	tValentineDayAct_2019_Reward[3327549][1]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3327549][1]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327549][1]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327549][1]["DeleteItem"][1]["Id"] = 3327549 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3327549][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327549][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327549][1]["RewardItem"][1]["Id"] = 350173 --  350172 【库里没有该物品】, 【表格】春节长武
	tValentineDayAct_2019_Reward[3327549][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的 350172 【库里没有该物品】*1
	tValentineDayAct_2019_Reward[3327549][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327549][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327549][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327549][2] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327549][2]
	-- ===删除:3327549,1
	-- ===
	tValentineDayAct_2019_Reward[3327549][2]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3327549][2]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327549][2]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327549][2]["DeleteItem"][1]["Id"] = 3327549 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3327549][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3327549][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3327549][2]["RewardItem"][1]["Id"] = 360310 --  360309 【库里没有该物品】, 【表格】春节短武
	tValentineDayAct_2019_Reward[3327549][2]["RewardItem"][1]["Attr"] = "0 2 3 21600 1" -- 15天时效(激活)的 360309 【库里没有该物品】*2
	tValentineDayAct_2019_Reward[3327549][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327549][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3327549][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3329977] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327526][1]
	-- ===删除:3327526,1
	-- ===
	tValentineDayAct_2019_Reward[3329977][1] = {}
	tValentineDayAct_2019_Reward[3329977][1]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3329977][1]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3329977][1]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3329977][1]["DeleteItem"][1]["Id"] = 3329977 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3329977][1]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3329977][1]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3329977][1]["RewardItem"][1]["Id"] = 350173 --  350172 【库里没有该物品】, 【表格】春节长武
	tValentineDayAct_2019_Reward[3329977][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 15天时效(激活)的 350172 【库里没有该物品】*1
	tValentineDayAct_2019_Reward[3329977][1]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329977][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3329977][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3329977][2] = {}
	-- ===15天新春武器外套
	-- ===索引:tValentineDayAct_2019_Reward[3327526][2]
	-- ===删除:3327526,1
	-- ===
	tValentineDayAct_2019_Reward[3329977][2]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3329977][2]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3329977][2]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3329977][2]["DeleteItem"][1]["Id"] = 3329977 -- 【库】15天新春武器外套[属性:9]
	tValentineDayAct_2019_Reward[3329977][2]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3329977][2]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3329977][2]["RewardItem"][1]["Id"] = 360310 --  360309 【库里没有该物品】, 【表格】春节短武
	tValentineDayAct_2019_Reward[3329977][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 15天时效(激活)的 360309 【库里没有该物品】*2
	tValentineDayAct_2019_Reward[3329977][2]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329977][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_Reward[3329977][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
	tValentineDayAct_2019_Reward[3329978] = {} 
	tValentineDayAct_2019_Reward[3329978]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3329978]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3329978]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3329978]["DeleteItem"][1]["Id"] = 3329978
	tValentineDayAct_2019_Reward[3329978]["DeleteItem"][1]["ItemNum"] = 1
	tValentineDayAct_2019_Reward[3329978]["RewardItem"] = {}
	tValentineDayAct_2019_Reward[3329978]["RewardItem"][1] = {}
	tValentineDayAct_2019_Reward[3329978]["RewardItem"][1]["Id"] = 200632 
	tValentineDayAct_2019_Reward[3329978]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 大鱼海棠·金麟*1
	tValentineDayAct_2019_Reward[3329978]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3329978]["RewardEffect"]["SzObj"] = "self"
	tValentineDayAct_2019_Reward[3329978]["RewardEffect"]["Effect"] = "angelwing"
	
	tValentineDayAct_2019_Reward[3327493] = {} 
	tValentineDayAct_2019_Reward[3327493]["LogId"] = 12001793
	tValentineDayAct_2019_Reward[3327493]["DeleteItem"] = {}
	tValentineDayAct_2019_Reward[3327493]["DeleteItem"][1] = {}
	tValentineDayAct_2019_Reward[3327493]["DeleteItem"][1]["Id"] = 3327493
	tValentineDayAct_2019_Reward[3327493]["DeleteItem"][1]["ItemNum"] = 1
	tValentineDayAct_2019_Reward[3327493]["RewardStrengthValue"] = {}
	tValentineDayAct_2019_Reward[3327493]["RewardStrengthValue"]["Value"] = 1
	tValentineDayAct_2019_Reward[3327493]["RewardEffect"] = {}
	tValentineDayAct_2019_Reward[3327493]["RewardEffect"]["SzObj"] = "self"
	tValentineDayAct_2019_Reward[3327493]["RewardEffect"]["Effect"] = "angelwing"


local tValentineDayAct_2019_MonsterGenerate = {}
	tValentineDayAct_2019_MonsterGenerate[5981] = {}
	tValentineDayAct_2019_MonsterGenerate[5981]["NextMonsterId"] = 5982
	tValentineDayAct_2019_MonsterGenerate[5981]["GenId"] = 30553
	tValentineDayAct_2019_MonsterGenerate[5981]["Reward"] = 1
	tValentineDayAct_2019_MonsterGenerate[5981]["RewardNum"] = 1
	
	tValentineDayAct_2019_MonsterGenerate[5982] = {}
	tValentineDayAct_2019_MonsterGenerate[5982]["NextMonsterId"] = 5983
	tValentineDayAct_2019_MonsterGenerate[5982]["GenId"] = 30554
	tValentineDayAct_2019_MonsterGenerate[5982]["Reward"] = 1
	tValentineDayAct_2019_MonsterGenerate[5982]["RewardNum"] = 1
	
	tValentineDayAct_2019_MonsterGenerate[5983] = {}
	tValentineDayAct_2019_MonsterGenerate[5983]["Reward"] = 1
	tValentineDayAct_2019_MonsterGenerate[5983]["RewardNum"] = 1
	
	tValentineDayAct_2019_MonsterGenerate[5984] = {}
	tValentineDayAct_2019_MonsterGenerate[5984]["NextMonsterId"] = 5985
	tValentineDayAct_2019_MonsterGenerate[5984]["GenId"] = 30555
	tValentineDayAct_2019_MonsterGenerate[5984]["Reward"] = 2
	tValentineDayAct_2019_MonsterGenerate[5984]["RewardNum"] = 5
	
	tValentineDayAct_2019_MonsterGenerate[5985] = {}
	tValentineDayAct_2019_MonsterGenerate[5985]["NextMonsterId"] = 5986
	tValentineDayAct_2019_MonsterGenerate[5985]["GenId"] = 30556
	tValentineDayAct_2019_MonsterGenerate[5985]["Reward"] = 2
	tValentineDayAct_2019_MonsterGenerate[5985]["RewardNum"] = 5
	
	tValentineDayAct_2019_MonsterGenerate[5986] = {}
	tValentineDayAct_2019_MonsterGenerate[5986]["NextMonsterId"] = 5987
	tValentineDayAct_2019_MonsterGenerate[5986]["GenId"] = 30557
	tValentineDayAct_2019_MonsterGenerate[5986]["Reward"] = 2
	tValentineDayAct_2019_MonsterGenerate[5986]["RewardNum"] = 5
	
	tValentineDayAct_2019_MonsterGenerate[5987] = {}
	tValentineDayAct_2019_MonsterGenerate[5987]["NextMonsterId"] = 5988
	tValentineDayAct_2019_MonsterGenerate[5987]["GenId"] = 30558
	tValentineDayAct_2019_MonsterGenerate[5987]["Reward"] = 2
	tValentineDayAct_2019_MonsterGenerate[5987]["RewardNum"] = 5
	
	tValentineDayAct_2019_MonsterGenerate[5988] = {}
	tValentineDayAct_2019_MonsterGenerate[5988]["Reward"] = 2
	tValentineDayAct_2019_MonsterGenerate[5988]["RewardNum"] = 5
	
	tValentineDayAct_2019_MonsterGenerate[5989] = {}
	tValentineDayAct_2019_MonsterGenerate[5989]["NextMonsterId"] = 5990
	tValentineDayAct_2019_MonsterGenerate[5989]["GenId"] = 30559
	tValentineDayAct_2019_MonsterGenerate[5989]["Reward"] = 3
	tValentineDayAct_2019_MonsterGenerate[5989]["RewardNum"] = 20
	
	tValentineDayAct_2019_MonsterGenerate[5990] = {}
	tValentineDayAct_2019_MonsterGenerate[5990]["NextMonsterId"] = 5991
	tValentineDayAct_2019_MonsterGenerate[5990]["GenId"] = 30560
	tValentineDayAct_2019_MonsterGenerate[5990]["Reward"] = 3
	tValentineDayAct_2019_MonsterGenerate[5990]["RewardNum"] = 20
	
	tValentineDayAct_2019_MonsterGenerate[5991] = {}
	tValentineDayAct_2019_MonsterGenerate[5991]["NextMonsterId"] = 5992
	tValentineDayAct_2019_MonsterGenerate[5991]["GenId"] = 30561
	tValentineDayAct_2019_MonsterGenerate[5991]["Reward"] = 3
	tValentineDayAct_2019_MonsterGenerate[5991]["RewardNum"] = 20
	
	
	tValentineDayAct_2019_MonsterGenerate[5992] = {}
	tValentineDayAct_2019_MonsterGenerate[5992]["NextMonsterId"] = 5993
	tValentineDayAct_2019_MonsterGenerate[5992]["GenId"] = 30562
	tValentineDayAct_2019_MonsterGenerate[5992]["Reward"] = 3
	tValentineDayAct_2019_MonsterGenerate[5992]["RewardNum"] = 20
	
	tValentineDayAct_2019_MonsterGenerate[5993] = {}
	tValentineDayAct_2019_MonsterGenerate[5993]["Reward"] = 3
	tValentineDayAct_2019_MonsterGenerate[5993]["RewardNum"] = 20
	
-- 击杀掉落
local tValentineDayAct_2019_RandomReward = {}
	tValentineDayAct_2019_RandomReward["MonsterDrop"] = {}
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1] = {}
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1]["LogId"] = 12001823
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1]["LogStep"] = "1[3]"
	-- 
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][1] = {}
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][1]["ItemChance"] = 30
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][1]["Item"] = 1

	-- 无
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][2] = {}
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][2]["ItemChance"] = 9970
	tValentineDayAct_2019_RandomReward["MonsterDrop"][1][2]["Item"] = 0
	
	tValentineDayAct_2019_RandomReward["MonsterDropReward"] = {}
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["LogId"] = 12001823
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["LogStep"] = "1[3]"
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardItem"] = {}
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardItem"][1] = {}
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardItem"][1]["Id"] = 3315299
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardItem"][1]["Attr"] = "0 1"
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardEffect"] = {}
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentineDayAct_2019_RandomReward["MonsterDropReward"]["RewardEffect"]["Effect"] = "angelwing"
	-- ===互动额外获得爱情之心
	-- ===索引:tValentineDayAct_2019_RandomReward["ExtraLove"][3600215]
	-- ===
	tValentineDayAct_2019_RandomReward["ExtraLove"] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215]["LogId"] = 12001823
	-- 30个爱情之心 - 45%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][1] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][1]["ItemChance"] = 4500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][1]["Item_1"] = 30

	-- 50个爱情之心 - 35%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][2] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][2]["ItemChance"] = 3500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][2]["Item_1"] = 50

	-- 100个爱情之心 - 20%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][3] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][3]["ItemChance"] = 2000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600215][3]["Item_1"] = 100

	-- ===互动额外获得爱情之心
	-- ===索引:tValentineDayAct_2019_RandomReward["ExtraLove"][3600216]
	-- ===
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216]["LogId"] = 12001823
	-- 90个爱情之心 - 45%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][1] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][1]["ItemChance"] = 4500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][1]["Item_1"] = 90

	-- 150个爱情之心 - 35%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][2] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][2]["ItemChance"] = 3500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][2]["Item_1"] = 150

	-- 300个爱情之心 - 20%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][3] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][3]["ItemChance"] = 2000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600216][3]["Item_1"] = 300



	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217] = {}
	-- ===互动额外获得爱情之心
	-- ===索引:tValentineDayAct_2019_RandomReward["ExtraLove"][3600217]
	-- ===
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217]["ItemChanceSum"] = 10000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217]["LogId"] = 12001823
	-- 150个爱情之心 - 45%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][1] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][1]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][1]["ItemChance"] = 4500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][1]["Item_1"] = 150

	-- 250个爱情之心 - 35%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][2] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][2]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][2]["ItemChance"] = 3500
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][2]["Item_1"] = 250

	-- 500个爱情之心 - 20%
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][3] = {}
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][3]["RandomItemChanceType"] = 2
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][3]["ItemChance"] = 2000
	tValentineDayAct_2019_RandomReward["ExtraLove"][3600217][3]["Item_1"] = 500

	local tValentineDayAct_2019_Log = {}
	tValentineDayAct_2019_Log["OverTime"] = "0,0,%d,%d,12001793,3,0,0"
	tValentineDayAct_2019_Log["EmoneyLog"] = {}
	tValentineDayAct_2019_Log["EmoneyLog"][1] = "1000	01597"
	tValentineDayAct_2019_Log["EmoneyLog"][2] = "1000	01598"
------------------------------------npc逻辑----------------------------------
--创建任务
function ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId)
	local nValentineDayAct_NewUserId = nValentineDayAct_UserId or Get_UserId()
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	if Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_NewUserId) then
		return true
	end
	if Task_AddTaskDetail(nValentineDayAct_TaskId,0,nValentineDayAct_NewUserId) then
		return true
	else
		return false
	end
end

--链接对白
function ValentineDayAct_2019_LinkNpcMain1(nValentineDayAct_Index)
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	tNpcGossip[25870]["OptionFunc311"] = "ValentineDayAct_2019_ManifestoReward</N>1</N>%d"

	-- tNpcGossip[25870]["Text311"] = string.format(tValentineDayAct_2019_Text[25870]["Text311"],tValentineDayAct_2019_Text["NpcText"][nValentineDayAct_Index])
	tNpcGossip[25870]["OptionFunc311"] = string.format(tNpcGossip[25870]["OptionFunc311"],nValentineDayAct_Index)
	LinkNpcGossipFunc_New(25870,"3-1")
end

function ValentineDayAct_2019_LinkNpcMain2(nValentineDayAct_Index)
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	tNpcGossip[25870]["OptionFunc321"] = "ValentineDayAct_2019_ManifestoReward</N>2</N>%d"
	
	-- tNpcGossip[25870]["Text321"] = string.format(tValentineDayAct_2019_Text[25870]["Text321"],tValentineDayAct_2019_Text["NpcText"][nValentineDayAct_Index])
	tNpcGossip[25870]["OptionFunc321"] = string.format(tNpcGossip[25870]["OptionFunc321"],nValentineDayAct_Index)
	LinkNpcGossipFunc_New(25870,"3-2")
end
--全球宣言
function ValentineDayAct_2019_ManifestoReward(nValentineDayAct_RewardIndex,nValentineDayAct_Index)

	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_Emoney = tValentineDayAct_2019_Data["CostEmoney"][nValentineDayAct_RewardIndex]
	
	local nValentineDayAct_UserEmoney = Get_UserEMoney()
	if not (nValentineDayAct_UserEmoney >= nValentineDayAct_Emoney) then
		Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["NoEmoney"])
		return
	end
	
	local nValentineDayAct_Space = RewardTemplate_GetRandomSpace(tValentineDayAct_2019_Reward[25870],nValentineDayAct_RewardIndex)
	-- 判断背包空间
	if not User_CheckLeftSpace(nValentineDayAct_Space) then
			User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["TalkChannel"]["BagFull"],nValentineDayAct_Space))
			return
	end
	
	if User_AddEMoneyAndLog(-nValentineDayAct_Emoney,tValentineDayAct_2019_Log["EmoneyLog"][nValentineDayAct_Index]) then
		local tValentineDayAct_Reward = RewardTemplate_NewRandom(tValentineDayAct_2019_Reward[25870],nValentineDayAct_RewardIndex)
		--对白物品赋值
		local sAward = ""
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
			local tItemAttr = Sys_Split(tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
			local nNum = tonumber(tItemAttr[2])
			local nMonopoly = tonumber(tItemAttr[3])
			local nItemId1 = tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Id"]
			local sItemName = tRewardTemplate_Text["ItemName"][nItemId1] or Get_ItemtypeName(nItemId1)
			
			if nMonopoly == nil then
				nMonopoly = 0
			end

			if Sys_ParseNumbersContain(1,nMonopoly) then
				
				-- sItemName = sItemName .. tRewardTemplate_Text["Gift"]
				sItemName = string.format(tValentineDayAct_2019_Text["TalkChannel"]["ItemGife"], sItemName,tRewardTemplate_Text["Gift"])
			end
			
			
			sAward = sItemName.."*"..nNum
		end
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardStrengthValue"], tValentineDayAct_Reward[1]["tAward"][1]["RewardStrengthValue"]["Value"])
		end
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardRepairValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardRepairValue"], tValentineDayAct_Reward[1]["tAward"][1]["RewardRepairValue"]["Value"])
		end
		
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardBroadCast"] ~= nil then
			Sys_TalkBroadcast(string.format(tValentineDayAct_2019_Text["Broadcast"]["Manifesto"][nValentineDayAct_RewardIndex],Get_UserName(nValentineDayAct_UserId)),sAward)
		end
		
		for i,v in pairs(tValentineDayAct_2019_Monster["Manifesto"][nValentineDayAct_RewardIndex]) do
			local nValentineDayAct_MonsterId = v[1]
			local nValentineDayAct_MapId = v[2]
			local nValentineDayAct_Cellx = v[3]
			local nValentineDayAct_Celly = v[4]
			local nValentineDayAct_GenId = v[5]
			Monster_AddAndCount(nValentineDayAct_MapId,nValentineDayAct_Cellx,nValentineDayAct_Celly,nValentineDayAct_GenId,nValentineDayAct_MonsterId)
		end
		
		local nValentineDayAct_UserId = Get_UserId()
	
		Sys_MsgBox(string.format(tValentineDayAct_2019_Text["MsgBox"]["MsgManifesto"][nValentineDayAct_RewardIndex],sAward))
		Sys_TalkBroadcast(string.format(tValentineDayAct_2019_Text["Broadcast"]["ManifestoMonster"],Get_UserName(nValentineDayAct_UserId)))
		
		LinkNpcGossipFunc_New(25870,"1-1")
	end
	
	
	-- Sys_BarrageToAllServer(tValentineDayAct_2019_Text["NpcText"][nValentineDayAct_Index])
	
end

function ValentineDayAct_2019_ExchangeItem(nValentineDayAct_NpcId,nValentineDayAct_ItemId)
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) then
		LinkNpcGossipFunc_New(25868,"1-2")
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	if not Item_ChkMulItem(nValentineDayAct_ItemId,nValentineDayAct_ItemId,999) then
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoExchangeNum"])
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(25868,"1-3")
		return
	end
	
	local nValentineDayAct_Space = RewardTemplate_GetRandomSpace(tValentineDayAct_2019_Reward[25868],1)
	-- 判断背包空间
	if not User_CheckLeftSpace(nValentineDayAct_Space) then
		User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["TalkChannel"]["BagFull"],nValentineDayAct_Space))
		return
	end
	
	if Item_ChkMulItem(nValentineDayAct_ItemId,nValentineDayAct_ItemId,999) and Item_DelMulItem(nValentineDayAct_ItemId,nValentineDayAct_ItemId,999) then
		local tValentineDayAct_Reward = RewardTemplate_NewRandom(tValentineDayAct_2019_Reward[25868],1)
		--对白物品赋值
		local sAward = ""
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
			local tItemAttr = Sys_Split(tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
			local nNum = tonumber(tItemAttr[2])
			local nMonopoly = tonumber(tItemAttr[3])
			local nItemId1 = tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Id"]
			local sItemName = tRewardTemplate_Text["ItemName"][nItemId1] or Get_ItemtypeName(nItemId1)
			
			if nMonopoly == nil then
				nMonopoly = 0
			end

			if Sys_ParseNumbersContain(1,nMonopoly) then
				
				-- sItemName = sItemName .. tRewardTemplate_Text["Gift"]
				sItemName = string.format(tValentineDayAct_2019_Text["TalkChannel"]["ItemGife"], sItemName,tRewardTemplate_Text["Gift"])
			end
			
			
			sAward = sItemName.."*"..nNum
		end
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardStrengthValue"], tValentineDayAct_Reward[1]["tAward"][1]["RewardStrengthValue"]["Value"])
		end
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardRepairValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardRepairValue"], tValentineDayAct_Reward[1]["tAward"][1]["RewardRepairValue"]["Value"])
		end
		
		
		if tValentineDayAct_Reward[1]["tAward"][1]["RewardBroadCast"] ~= nil then
			Sys_TalkBroadcast(string.format(tValentineDayAct_2019_Text["Broadcast"]["Manifesto"][nValentineDayAct_RewardIndex],Get_UserName(nValentineDayAct_UserId)),sAward)
		end
		
		-- Sys_MsgBox(string.format(tValentineDayAct_2019_Text["MsgBox"]["MsgManifesto"][nValentineDayAct_RewardIndex],sAward))
		-- Sys_TalkBroadcast(string.format(tValentineDayAct_2019_Text["Broadcast"]["ManifestoMonster"],Get_UserName(nValentineDayAct_UserId)))
		
		
	end
	
end


--npc接入
function ValentineDayAct_2019_NpcMain(nValentineDayAct_NpcId)
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["BefTime"]) then
		LinkNpcGossipFunc_New(nValentineDayAct_NpcId,"1-1")
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) then
		LinkNpcGossipFunc_New(nValentineDayAct_NpcId,"1-2")
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nValentineDayAct_NpcId,"1-3")
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	LinkNpcGossipFunc_New(nValentineDayAct_NpcId,"1-4")
	-- User_OpenExchangeShop(nValentineDayAct_NpcId)
end

-- 进入跨服
function ValentineDayAct_2019_EnterCrossMap()
	--活动时间判断
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_UserId = Get_UserId()
	
	local nValentineDayAct_ServerId = tValentineDayAct_2019_Data["Cross"]["ServerId"]
	local nValentineDayAct_ConfigMapFlag = tValentineDayAct_2019_Data["Cross"]["MapFlag2"]
	local nValentineDayAct_ServerType = tValentineDayAct_2019_Data["Cross"]["ServerType"]
	
	local nValentineDayAct_MapId = tValentineDayAct_2019_Data["ChkMap"][3]["MapId"]
	local nValentineDayAct_PosX = tValentineDayAct_2019_Data["ChkMap"][3]["PosX"]
	local nValentineDayAct_PosY = tValentineDayAct_2019_Data["ChkMap"][3]["PosY"]
	-- if User_UserRandBoundTrans(nValentineDayAct_MapId, nValentineDayAct_PosX, nValentineDayAct_PosY, 5, 5, 0) then
			-- User_TalkChannel2005(tValentineDayAct_2019_Text["Sys_Msg"]["LeaveCross"])
	-- end
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][4]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][4]
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
		if Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
			
			Task_SetTaskDetailData1(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
			Task_SetTaskDetailData2(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData4(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData5(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData6(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
		--创建任务
		elseif ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId)then
			Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1)
			Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
			
		end
		
	end
	
	
	if Sys_EnterServer(nValentineDayAct_ServerId, nValentineDayAct_ServerType, nValentineDayAct_UserId, nValentineDayAct_ConfigMapFlag) then
		-- User_TalkChannel2005(tValentineDayAct_2019_Text["Sys_Msg"]["IntoCross"])
	end
end


-- 返回双龙城
function ValentineDayAct_2019_ReturnCity()

	-- 判断是否在跨服
	if User_IsCross() then
		
		Sys_ExitOS()
	else
		local nValentineDayAct_MapId = tValentineDayAct_2019_Data["ChkMap"][1]["MapId"]
		local nValentineDayAct_PosX = tValentineDayAct_2019_Data["ChkMap"][1]["PosX"]
		local nValentineDayAct_PosY = tValentineDayAct_2019_Data["ChkMap"][1]["PosY"]
		
		if SpecialServer_ChkNoGiftServer() then
			nValentineDayAct_MapId = tValentineDayAct_2019_Data["ChkMap"][2]["MapId"]
			nValentineDayAct_PosX = tValentineDayAct_2019_Data["ChkMap"][2]["PosX"]
			nValentineDayAct_PosY = tValentineDayAct_2019_Data["ChkMap"][2]["PosY"]
		end
		
		if User_UserRandBoundTrans(nValentineDayAct_MapId, nValentineDayAct_PosX, nValentineDayAct_PosY, 5, 5, 0) then
			-- User_TalkChannel2005(tValentineDayAct_2019_Text["Sys_Msg"]["LeaveCross"])
		end
		
	end
	
end
-- 传送到梦工厂
function ValentineDayAct_2019_ChangeOtherMap()
	
	-- 判断是否在跨服
	if User_IsCross() then
		
		if Sys_ExitOS() then
			
		end
	else
		local nValentineDayAct_MapId = tValentineDayAct_2019_Data["ChkMap"][3]["MapId"]
		local nValentineDayAct_PosX = tValentineDayAct_2019_Data["ChkMap"][3]["PosX"]
		local nValentineDayAct_PosY = tValentineDayAct_2019_Data["ChkMap"][3]["PosY"]
		
		if User_UserRandBoundTrans(nValentineDayAct_MapId, nValentineDayAct_PosX, nValentineDayAct_PosY, 5, 5, 0) then
			-- User_TalkChannel2005(tValentineDayAct_2019_Text["Sys_Msg"]["LeaveCross"])
		end
		
	end
	
end
--屏蔽二次确认
function ValentineDayAct_2019_ShieldSecondConfirm()
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][8]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][8]
	
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 1) then
		return
	end
	
	if Task_AddStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
end

---自动寻路
function ValentineDayAct_2019_GotoMonster()

	local nValentineDayAct_Index =  math.random(1,5)
	local nValentineDayAct_MapId = tValentineDayAct_2019_position[nValentineDayAct_Index]["MapId"]
	local nValentineDayAct_PosX = tValentineDayAct_2019_position[nValentineDayAct_Index]["PosX"]
	local nValentineDayAct_PosY = tValentineDayAct_2019_position[nValentineDayAct_Index]["PosY"]
	Sys_GotoSomeWhere(nValentineDayAct_PosX,nValentineDayAct_PosY,nValentineDayAct_MapId)
end

---自动寻路
function ValentineDayAct_2019_GotoCroMonster()

	local nValentineDayAct_Index =  math.random(1,5)
	local nValentineDayAct_MapId = tValentineDayAct_2019_Crosition[nValentineDayAct_Index]["MapId"]
	local nValentineDayAct_PosX = tValentineDayAct_2019_Crosition[nValentineDayAct_Index]["PosX"]
	local nValentineDayAct_PosY = tValentineDayAct_2019_Crosition[nValentineDayAct_Index]["PosY"]
	Sys_GotoSomeWhere(nValentineDayAct_PosX,nValentineDayAct_PosY,nValentineDayAct_MapId)
end
---自动寻路到女主npc
function ValentineDayAct_2019_GotoNpc(nValentineDayAct_ItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) then
		local nValentineDayAct_Num = Get_CountItemType(nValentineDayAct_ItemId,0)
		-- if not Item_DelAllItemByType(nValentineDayAct_ItemId) then
			-- return
		-- end
		
		local tValentineDayAct_Reward = CommonFunc_Copy(tValentineDayAct_2019_Reward[nValentineDayAct_ItemId])
		tValentineDayAct_Reward["DeleteItem"][1]["ItemNum"] = nValentineDayAct_Num
		tValentineDayAct_Reward["RewardStrengthValue"]["Value"] = nValentineDayAct_Num	
		RewardTemplate_UseItemAndMsg(tValentineDayAct_Reward)
		
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["OverTime"])
		local sValentineDayAct_Log = string.format(tValentineDayAct_2019_Log["OverTime"],nValentineDayAct_ItemId,nValentineDayAct_Num)
		Sys_SaveActionFestivalLog(sValentineDayAct_Log)
		return
	end

	if Sys_ChkFullTime(tActivityTime["ValDayFW"]["2Week"]) then
		NpcPosition_PathFind(25837)
	else
		NpcPosition_PathFind(25847)
	end
end

---传送到梦工厂npc
function ValentineDayAct_2019_ChgMapNpc(nValentineDayAct_ItemId,nValentineDayAct_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) then
		local nValentineDayAct_Num = Get_CountItemType(nValentineDayAct_ItemId,0)
		-- if not Item_DelAllItemByType(nValentineDayAct_ItemId) then
			-- return
		-- end
		
		local tValentineDayAct_Reward = CommonFunc_Copy(tValentineDayAct_2019_Reward[nValentineDayAct_ItemId])
		tValentineDayAct_Reward["DeleteItem"][1]["ItemNum"] = nValentineDayAct_Num
		tValentineDayAct_Reward["RewardStrengthValue"]["Value"] = nValentineDayAct_Num	
		RewardTemplate_UseItemAndMsg(tValentineDayAct_Reward)
		
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["OverTime"])
		local sValentineDayAct_Log = string.format(tValentineDayAct_2019_Log["OverTime"],nValentineDayAct_ItemId,nValentineDayAct_Num)
		Sys_SaveActionFestivalLog(sValentineDayAct_Log)
		return
		
	end
	
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
		if nValentineDayAct_Index == 1 then
			NpcPosition_PathFind(25868)
		else
			NpcPosition_PathFind(25870)
		end
		return
	end
	
	local nValentineDayAct_UserMapId = Get_UserMapId()
	if nValentineDayAct_UserMapId == 1002 or nValentineDayAct_UserMapId == 1036 or nValentineDayAct_UserMapId == 10757 then
		local nValentineDayAct_MapId = tValentineDayAct_2019_Data["ChkMap"][4]["MapId"]
		local nValentineDayAct_PosX = tValentineDayAct_2019_Data["ChkMap"][4]["PosX"]
		local nValentineDayAct_PosY = tValentineDayAct_2019_Data["ChkMap"][4]["PosY"]
		
		if User_UserRandBoundTrans(nValentineDayAct_MapId, nValentineDayAct_PosX, nValentineDayAct_PosY, 3, 3, 0) then
			-- User_TalkChannel2005(tValentineDayAct_2019_Text["Sys_Msg"]["LeaveCross"])
		end
	else	
		if SpecialServer_ChkNoGiftServer() then
			Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["NpcChg"],"NpcPosition_PathFind</N>25929")
		else
			Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["NoGiftNpcChg"],"NpcPosition_PathFind</N>25929")
		end
	end
	
end

-------------------------------------物品逻辑---------------------------------
-- 功勋礼包使用
function ValentineDayAct_2019_FeatsPack()
	local nValentineDayAct_UserId = Get_UserId()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][2]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][2]
	-- 掩码隔天清零
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">", 0) then
		return
	end
	if Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[3007108]) then
		end
	end
end

-- 每日签到包使用
function ValentineDayAct_2019_DayPackageUse()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][1]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][1]
	-- 掩码隔天清零
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">", 0) then
		return
	end
	if Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[3100011]) then
		end
	end
end

-- 正气令
function ValentineDayAct_2019_ChiTokenUse()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][12]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][12]
	-- 掩码隔天清零
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">", 0) then
		return
	end
	if Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[729304]) then
		end
	end
end


function ValentineDayAct_2019_MakeItem(nValentineDayAct_ItemId)
	if not Item_ChkMulItem(3327493,3327493,300) then
		if Sys_ChkFullTime(tActivityTime["ValDayFW"]["2Week"]) then
			Sys_MsgBox(tValentineDayAct_2019_Text["TalkChannel"]["NoItemNum"],"NpcPosition_PathFind</N>25837")
		else
			Sys_MsgBox(tValentineDayAct_2019_Text["TalkChannel"]["NoItemNum"],"NpcPosition_PathFind</N>25847")
		end
		return
	end
	
	local nValentineDayAct_Space = RewardTemplate_GetRandomSpace(tValentineDayAct_2019_Reward[nValentineDayAct_ItemId],1) + 1
	-- 判断背包空间
	if not User_CheckLeftSpace(nValentineDayAct_Space) then
		User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["TalkChannel"]["BagFull"],nValentineDayAct_Space))
		return
	end
	
	local tValentineDayAct_Reward = RewardTemplate_RandomReward(tValentineDayAct_2019_Reward[nValentineDayAct_ItemId],1)
	if tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
		RewardTemplate_RandomReward(tValentineDayAct_2019_Reward[nValentineDayAct_ItemId],2)
		local tValentineDayAct_ItemAttr = Sys_Split(tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
		local nValentineDayAct_ItemNum = tValentineDayAct_ItemAttr[2]
		local nValentineDayAct_UserId = Get_UserId()
		ValentinePart2_SetRank(nValentineDayAct_ItemNum,nValentineDayAct_UserId)
	end
end

function ValentineDayAct_2019_OpenBag(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[nItemId][nNum])
end

--------------------------------------怪物掉落-----------------------------------
-- 击杀掉落
function ValentineDayAct_2019_KillMonsterDrop(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_UserId = Get_UserId()
	
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	if not Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
		--任务是否创建成功
		if not ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId) then
			return
		end
		
	end
	
	-- 判断是否在跨服
	-- local nValentineDayAct_UserId = Get_UserId()
	local nValentineDayAct_ServerId = Get_UserServerId(nSpring2020Other_UserId)
	
	
	-- 判断背包空间
	-- if not RewardTemplate_ChkRandomSpace(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1) then
		-- return
	-- end
	
	-- 背包空间
	local nValentineDayAct_UserSpace = RewardTemplate_GetRewardSpace(tValentineDayAct_2019_RandomReward["MonsterDropReward"])
	if not User_CheckLeftSpace(nValentineDayAct_UserSpace) then
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoSpace"])
		return
	end
	
	
	-- 判断是否在跨服
	if not User_IsCross(nValentineDayAct_UserId) then
		local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][4]
		local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][4]
		-- 判断隔天
		if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
			
			Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
			Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
			
			local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
			if Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_NewUserId) then
				Task_SetTaskDetailData1(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
				Task_SetTaskDetailData2(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData4(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData5(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData6(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			elseif ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId)then
				Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1)
				Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)	
			end	
		end
		
		local nValentineDayAct_Data5 = Get_TaskDetailData5(nValentineDayAct_TaskId, nValentineDayAct_UserId)
		if nValentineDayAct_Data5 > 50 then
			return
		elseif nValentineDayAct_Data5 >= 50 then
			Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["MonsterDropFull"],"NpcPosition_PathFind</N>25847")
			Task_SetTaskDetailData5(nValentineDayAct_TaskId,nValentineDayAct_Data5+1,nValentineDayAct_UserId)
		else
			--User_TalkChannel2005(tostring(nValentineDayAct_Data5))
			local flat,tValentineDayAct_Reward = Probabil_RandomAward(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1)
			-- RewardTemplate_NewRandom(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1)
			if tValentineDayAct_Reward[1]["tAward"][1]["Item"] == 1 then
				if Task_SetTaskDetailData5(nValentineDayAct_TaskId,nValentineDayAct_Data5+1,nValentineDayAct_UserId) then
					RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_RandomReward["MonsterDropReward"])
				end
			end
		end
	else
		local nValentineDayAct_Data5 = Get_TaskDetailData5(nValentineDayAct_TaskId, nValentineDayAct_UserId)
		if nValentineDayAct_Data5 > 50 then
			return
		elseif nValentineDayAct_Data5 >= 50 then
			Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["MonsterDropFull"])
			Task_SetTaskDetailData5(nValentineDayAct_TaskId,nValentineDayAct_Data5+1,nValentineDayAct_UserId)
		else
			local flat,tValentineDayAct_Reward = Probabil_RandomAward(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1)
			-- RewardTemplate_NewRandom(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1)
			local flat,tValentineDayAct_Reward = Probabil_RandomAward(tValentineDayAct_2019_RandomReward["MonsterDrop"], 1)
			if tValentineDayAct_Reward[1]["tAward"][1]["Item"] == 1 then
				if Task_SetTaskDetailData5(nValentineDayAct_TaskId,nValentineDayAct_Data5+1,nValentineDayAct_UserId) then
					RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_RandomReward["MonsterDropReward"])
				end
			end
		end
		
	end
	
end

function ValentineDayAct_2019_IoMonsterDrop(nValentineDayAct_MonsterId)
	
	--local nValentineDayAct_UserId = Get_UserId()
	-- local nValentineDayAct_ServerId = Get_UserServerId(nValentineDayAct_UserId)
	-- local nValentineDayAct_OSIDByGSUserId = Get_OSIDByGSUser(nValentineDayAct_ServerId,nValentineDayAct_UserBenFuId)
	--User_TalkChannel2005("1",nValentineDayAct_UserId)
	
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_UserId = Get_UserId()
	-- User_TalkChannel2005("1",nValentineDayAct_UserId)
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	if not Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
		--任务是否创建成功
		if not ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId) then
			return
		end
		
	end
	
	local nValentineDayAct_RewardIndex = tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId]["Reward"]
	local nValentineDayAct_RewardNum = tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId]["RewardNum"]
	-- 背包空间
	local nValentineDayAct_UserSpace = RewardTemplate_GetRewardSpace(tValentineDayAct_2019_Reward["MonsterReward"][nValentineDayAct_RewardIndex])
	if not User_CheckLeftSpace(nValentineDayAct_UserSpace) then
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoSpace"])
		return
	end
	
	
	-- 判断是否在跨服
	if not User_IsCross(nValentineDayAct_UserId) then
		local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][4]
		local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][4]
		-- 判断隔天
		if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
			
			Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
			Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
			
			local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
			if Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
				Task_SetTaskDetailData1(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
				Task_SetTaskDetailData2(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData4(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData5(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
				Task_SetTaskDetailData6(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			elseif ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId)then
				Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1)
				Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)	
			end	
		end
		
		local nValentineDayAct_Data6 = Get_TaskDetailData6(nValentineDayAct_TaskId, nValentineDayAct_UserId)
		if nValentineDayAct_Data6 >= 20 then
			return
		elseif nValentineDayAct_Data6 >= 10 then
			Sys_MsgBox(tValentineDayAct_2019_Text["TalkChannel"]["DroLimite"])
			Task_SetTaskDetailData6(nValentineDayAct_TaskId,nValentineDayAct_Data6+10,nValentineDayAct_UserId)
			return
		else
			
			if Task_SetTaskDetailData6(nValentineDayAct_TaskId,nValentineDayAct_Data6+nValentineDayAct_RewardNum,nValentineDayAct_UserId) then
				RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["MonsterReward"][nValentineDayAct_RewardIndex])
			end
		end
	else
		local nValentineDayAct_Data6 = Get_TaskDetailData6(nValentineDayAct_TaskId, nValentineDayAct_UserId)
		if nValentineDayAct_Data6 >= 20 then
			return
		elseif nValentineDayAct_Data6 >= 10 then
			Sys_MsgBox(tValentineDayAct_2019_Text["TalkChannel"]["DroLimite"])
			Task_SetTaskDetailData6(nValentineDayAct_TaskId,nValentineDayAct_Data6+10,nValentineDayAct_UserId)
			return
		else
			
			if Task_SetTaskDetailData6(nValentineDayAct_TaskId,nValentineDayAct_Data6+nValentineDayAct_RewardNum,nValentineDayAct_UserId) then
				RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["MonsterReward"][nValentineDayAct_RewardIndex])
			end
		end
		
	end
	
	
	
	
	
	--生成怪物
	if tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId] ~= nil and tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId]["NextMonsterId"] ~= nil then
		local nValentineDayAct_NextMonsterId = tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId]["NextMonsterId"]
		local nValentineDayAct_MapId = Get_MonsterMapID()
		local nValentineDayAct_Cellx = Get_MonsterPosX()
		local nValentineDayAct_Celly = Get_MonsterPosY()
		local nValentineDayAct_GenId = tValentineDayAct_2019_MonsterGenerate[nValentineDayAct_MonsterId]["GenId"]
		Monster_AddAndCount(nValentineDayAct_MapId,nValentineDayAct_Cellx,nValentineDayAct_Celly,nValentineDayAct_GenId,nValentineDayAct_NextMonsterId)
	end
end

----------------------------------互动部分--------------------------------------------
-- 判断玩家选择
function ValentineDayAct_2019_Choose(nValentineDayAct_UserId,nValentineDayAct_Target,nValentineDayAct_MainType,nValentineDayAct_SubType)
	
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	--检测玩家身上最高级的巧克力Id
	local nValentineDayAct_ChocolateId = ValentineDayAct_2019_ReturnChocolateId(nValentineDayAct_Target)
	if nValentineDayAct_ChocolateId == -1 then
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoChocolate"],nValentineDayAct_Target)
		return
	end
	
	User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["TalkChannel"]["Interact"],Get_UserName(nValentineDayAct_UserId)))
	--接受
	if nValentineDayAct_SubType == 1 then
		ValentineDayAct_2019_AcceptChocolate(nValentineDayAct_UserId,nValentineDayAct_Target)
	end
	
	if nValentineDayAct_SubType == 2 then
		return
	end
end

--获取玩家身上巧克力id
function ValentineDayAct_2019_ReturnChocolateId(nValentineDayAct_Target)
	
	for i = 1 ,3 do
		local nValentineDayAct_ItemId = tValentineDayAct_2019_Data["ChocolateId"][i]
		if Item_ChkItem(nValentineDayAct_ItemId,0,0,nValentineDayAct_Target) then
			return nValentineDayAct_ItemId
		end
	end
	
	return -1
	
end
--互动
function ValentineDayAct_2019_AcceptChocolate(nValentineDayAct_UserId,nValentineDayAct_Target)
	
	-- 获得光效
	User_EffectAdd("self","zf2-e128",nValentineDayAct_UserId)
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	
	--检测玩家身上最高级的巧克力Id
	local nValentineDayAct_ChocolateId = ValentineDayAct_2019_ReturnChocolateId(nValentineDayAct_Target)
	if nValentineDayAct_ChocolateId == -1 then
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoChocolate"],nValentineDayAct_Target)
		return
	end
	
	--检测选择方任务是否存在
	if not Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
		--任务是否创建成功
		if not ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId) then
			return
		end
		
	end
	--检测发起方任务是否存在
	if not Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_Target) then
		if not ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_Target) then
			return
		end
	end
	
	-- 发起方背包空间不足
	local nValentineDayAct_Space = RewardTemplate_GetRewardSpace(tValentineDayAct_2019_Reward["Love"][nValentineDayAct_ChocolateId],nValentineDayAct_Target) + 1
	if not User_CheckLeftSpace(nValentineDayAct_Space,nValentineDayAct_Target) then
		User_TalkChannel2005(tValentineDayAct_2019_Text["NoSpace"],nValentineDayAct_Target)
		User_TalkChannel2005(tValentineDayAct_2019_Text["OtherNoSp"],nValentineDayAct_UserId)
		return
	end
	
	-- 选择方背包空间不足
	local nValentineDayAct_UserSpace = RewardTemplate_GetRewardSpace(tValentineDayAct_2019_Reward["Chocolate"][nValentineDayAct_ChocolateId],nValentineDayAct_UserId)
	if not User_CheckLeftSpace(nValentineDayAct_UserSpace,nValentineDayAct_UserId) then
		User_TalkChannel2005(tValentineDayAct_2019_Text["NoSpace"],nValentineDayAct_Target)
		User_TalkChannel2005(tValentineDayAct_2019_Text["OtherNoSp"],nValentineDayAct_UserId)
		return
	end
	--发起方删除巧克力
	if Item_ChkItem(nValentineDayAct_ChocolateId,0,0,nValentineDayAct_Target) and Item_DelItem(nValentineDayAct_ChocolateId,0,0,nValentineDayAct_Target) then
		
		
		local flat,tValentineDayAct_Num = Probabil_RandomAward(tValentineDayAct_2019_RandomReward["ExtraLove"],nValentineDayAct_ChocolateId)
		local nValentineDayAct_ItemNum = tValentineDayAct_Num[1]["tAward"][1]["Item_1"]
		local nValentineDayAct_Data2 = Get_TaskDetailData2(nValentineDayAct_TaskId, nValentineDayAct_Target)--获得爱情之心额外的数量
		--获得爱情之心额外的数量最多500个
		if not (nValentineDayAct_Data2 >= 500) then
			if nValentineDayAct_Data2 + nValentineDayAct_ItemNum >500 then
				
				Task_SetTaskDetailData2(nValentineDayAct_TaskId,500,nValentineDayAct_Target)
				Task_SetTaskDetailData3(nValentineDayAct_TaskId,500-nValentineDayAct_Data2,nValentineDayAct_Target)
				
				RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["ExtraLove"][3600232],nValentineDayAct_Target)
			else
				Task_SetTaskDetailData2(nValentineDayAct_TaskId,nValentineDayAct_Data2 + nValentineDayAct_ItemNum,nValentineDayAct_Target)
				RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["ExtraLove"][nValentineDayAct_ItemNum],nValentineDayAct_Target)
			end
		end
		--发起方获得爱情之心
		local nValentineDayAct_ChgNum = Get_TaskDetailData4(nValentineDayAct_TaskId, nValentineDayAct_Target)
		Task_SetTaskDetailData4(nValentineDayAct_TaskId,nValentineDayAct_ChgNum+1,nValentineDayAct_Target)
		RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["Love"][nValentineDayAct_ChocolateId],nValentineDayAct_Target)
		
		local nValentineDayAct_Data1 = Get_TaskDetailData1(nValentineDayAct_TaskId, nValentineDayAct_UserId)
		--选择方-每日接受数量奖励最多为10
		if not (nValentineDayAct_Data1 >=10) then
			Task_SetTaskDetailData1(nValentineDayAct_TaskId,nValentineDayAct_Data1+1,nValentineDayAct_UserId)
			RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward["Chocolate"][nValentineDayAct_ChocolateId],nValentineDayAct_UserId)
			
			User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["TalkChannel"]["MsgRewLimite"],Get_UserName(nValentineDayAct_UserId)),nValentineDayAct_Target)
			User_TalkChannel2005(string.format(tValentineDayAct_2019_Text["MsgBox"]["MsgInitiatorLimite"],Get_UserName(nValentineDayAct_UserId)),nValentineDayAct_UserId)
		end
	
	end
	
end
--上线自检
function ValentineDayAct_2019_PlayLogin()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_UserId = Get_UserId()
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][4]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][4]
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
		if Task_ChkTaskDetail(nValentineDayAct_TaskId,nValentineDayAct_UserId) then
			
			Task_SetTaskDetailData1(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
			Task_SetTaskDetailData2(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData4(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData5(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
			Task_SetTaskDetailData6(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
		end
		
		-- Task_SetTaskDetailData3(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
	end
	
	--创建任务
	if ValentineDayAct_2019_AddTaskDetail(nValentineDayAct_UserId)then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
end
--获得惊喜礼包
function ValentineDayAct_2019_PlayLoginEmeil()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineDayAct_2019_Data["Level"],tValentineDayAct_2019_Data["Metempsychosis"]) then
		return
	end
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		return
	end
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][7]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][7]
	
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 1) then
		return
	end
		
	if Task_AddStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		-- 发邮件
		local nValentineDayAct_UserId = Get_UserId()
		local nValentineDayAct_ActionId = tValentineDayAct_2019_Data["ActionId"]
		local nValentineDayAct_ExistDay = tValentineDayAct_2019_Data["ExistDay"]
		local sValentineDayAct_Title = tValentineDayAct_2019_Text["Mail"]["Login"]["Title"]
		local sValentineDayAct_Sender = tValentineDayAct_2019_Text["Mail"]["Login"]["Sender"] 
		local sValentineDayAct_Content = tValentineDayAct_2019_Text["Mail"]["Login"]["Content"]
		Sys_SendMail(nValentineDayAct_UserId,0,0,nValentineDayAct_ActionId,0,nValentineDayAct_ExistDay,sValentineDayAct_Sender,sValentineDayAct_Title,sValentineDayAct_Content)
		
	end
	
end

-------------------------------时间自检---------------------------------------------
--每隔30分钟刷新1次
function ValentineDayAct_2019_RefalshNolMonster()
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	for i,v in pairs(tValentineDayAct_2019_Monster[5981]) do
		local nValentineDayAct_MonsterId = v[1]
		local nValentineDayAct_MapId = v[2]
		local nValentineDayAct_Cellx = v[3]
		local nValentineDayAct_Celly = v[4]
		local nValentineDayAct_GenId = v[5]
		Monster_AddAndCount(nValentineDayAct_MapId,nValentineDayAct_Cellx,nValentineDayAct_Celly,nValentineDayAct_GenId,nValentineDayAct_MonsterId)
	end
	
end

--每隔5分钟刷新1次，地图共刷5只1次。
function ValentineDayAct_2019_EliteMonsterOnTime()
	
	-- 判断时间
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) then
		return
	end
	
	for i,v in pairs(tValentineDayAct_2019_Monster[5984]) do
		local nValentineDayAct_MonsterId = v[1]
		local nValentineDayAct_MapId = v[2]
		local nValentineDayAct_Cellx = v[3]
		local nValentineDayAct_Celly = v[4]
		local nValentineDayAct_GenId = v[5]
		Monster_AddAndCount(nValentineDayAct_MapId,nValentineDayAct_Cellx,nValentineDayAct_Celly,nValentineDayAct_GenId,nValentineDayAct_MonsterId)
	end
end

-------------------------------npc模板----------------------------------
tNpcFace[1598] = 155
tNpcFace[1599] = 183
tNpcFace[1603] = 638
tNpcFace[2260] = 50

tNpcGossip[25868] = tNpcGossip[25868] or DefaultNpc:new{}
tNpcGossip[25868]["OptionHidden"] = 1
tNpcGossip[25868]["DialogueText"] = tValentineDayAct_2019_Text[25868]

-- 活动前
tNpcGossip[25868]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25868]["tOption1-1"] = {111}
tNpcGossip[25868]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tValentineDayAct_2019_Data["BefTime"])
end

--活动后
tNpcGossip[25868]["Text1-2"] = {121,122}
tNpcGossip[25868]["tOption1-2"] = {121}
tNpcGossip[25868]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"])
end

--活动后(等级不足)
tNpcGossip[25868]["Text1-3"] = {131,132,13,134,135}
tNpcGossip[25868]["tOption1-3"] = {131}
tNpcGossip[25868]["ChkFunc1-3"] = function ()
	local nLevel = tValentineDayAct_2019_Data["Level"]
	local nMete = tValentineDayAct_2019_Data["Metempsychosis"]
	return Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end

tNpcGossip[25868]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[25868]["tOption1-4"] = {142,143,144}
-- tNpcGossip[25868]["OptionPoint141"] = "2-1"
tNpcGossip[25868]["OptionFunc142"] = "User_OpenExchangeShop</N>25868"
tNpcGossip[25868]["OptionFunc143"] = "User_OpenDialog"
tNpcGossip[25868]["OptionFunc144"] = "ValentineDayAct_2019_ReturnCity"
tNpcGossip[25868]["OptionChkFunc144"] = function ()
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
		return false
	end
	return true
end

-- tNpcGossip[25868]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116,2117}
-- tNpcGossip[25868]["tOption2-1"] = {211,213,212}
-- tNpcGossip[25868]["OptionPoint211"] = "3-1"
-- tNpcGossip[25868]["OptionFunc213"] = "ValentineDayAct_2019_ExchangeItem</N>25868</N>3327493"
-- tNpcGossip[25868]["ChkFunc2-1"] = function ()
	-- local nLevel = tValentineDayAct_2019_Data["Level"]
	-- local nMete = tValentineDayAct_2019_Data["Metempsychosis"]
	-- if Sys_ChkFullTime(tValentineDayAct_2019_Data["ActTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		-- local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][8]
		-- local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][8]
		
		-- -- 判断隔天
		-- if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
			-- Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
			-- Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		-- end
		
		-- if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 1) then
			-- tNpcGossip[25868]["tOption2-1"] = {213,212}
		-- else
			-- tNpcGossip[25868]["tOption2-1"] = {211,212}
		-- end
		
		-- return true
	-- else
		-- return false
	-- end
-- end

-- tNpcGossip[25868]["Text3-1"] = {311,312}
-- tNpcGossip[25868]["tOption3-1"] = {311,312}
-- tNpcGossip[25868]["OptionFunc311"] = "ValentineDayAct_2019_ExchangeItem</N>25868</N>3327493"
-- tNpcGossip[25868]["OptionPoint312"] = "4-1"

-- tNpcGossip[25868]["Text4-1"] = {411}
-- tNpcGossip[25868]["tOption4-1"] = {411,412}
-- tNpcGossip[25868]["OptionFunc411"] = "ValentineDayAct_2019_ShieldSecondConfirm"

--巧克力小公主'
tNpcGossip[25869] = tNpcGossip[25869] or DefaultNpc:new{}
tNpcGossip[25869]["OptionHidden"] = 1
tNpcGossip[25869]["DialogueText"] = tValentineDayAct_2019_Text[25869]

-- 
tNpcGossip[25869]["Text1-1"] = {111,112,113,114,115,117,118,116}
tNpcGossip[25869]["tOption1-1"] = {114,115,116,111,113}
tNpcGossip[25869]["OptionFunc111"] = "ValentineDayAct_2019_ChangeOtherMap"
tNpcGossip[25869]["OptionFunc112"] = "ValentineDayAct_2019_EnterCrossMap"
tNpcGossip[25869]["OptionFunc113"] = "ValentineDayAct_2019_ReturnCity"
tNpcGossip[25869]["OptionFunc114"] = "ValentineDayAct_2019_GotoMonster"
tNpcGossip[25869]["OptionFunc115"] = "NpcPosition_PathFind</N>25870"
tNpcGossip[25869]["OptionFunc116"] = "NpcPosition_PathFind</N>25868"

tNpcGossip[25869]["OptionChkFunc111"] = function ()
	local nValentineDayAct_UserId = Get_UserId()
	-- 判断是否在1层
	local nValentineDayAct_MapId = Get_UserMapId(nValentineDayAct_UserId)
	
	if nValentineDayAct_MapId ~= tValentineDayAct_2019_Data["ChkMap"][3]["MapId"] then
		return true
	end
	return false
end
-- tNpcGossip[25869]["OptionChkFunc112"] = function ()
	-- local nValentineDayAct_UserId = Get_UserId()
	-- -- 判断是否在2层
	-- if not User_IsCross(nValentineDayAct_UserId) then
		-- return true
	-- end
	-- return false
-- end


--全球相思树
tNpcGossip[25870] = tNpcGossip[25870] or DefaultNpc:new{}
tNpcGossip[25870]["OptionHidden"] = 1
tNpcGossip[25870]["DialogueText"] = tValentineDayAct_2019_Text[25870]

tNpcGossip[25870]["Text1-1"] = {111}
tNpcGossip[25870]["tOption1-1"] = {114,111,112,113}
tNpcGossip[25870]["OptionPoint111"] = "2-1"
tNpcGossip[25870]["OptionPoint112"] = "2-2"
tNpcGossip[25870]["OptionPoint113"] = "2-3"
tNpcGossip[25870]["OptionPoint114"] = "4-1"
tNpcGossip[25870]["OptionChkFunc111"] = function ()
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
		return false
	end
	return true
end
tNpcGossip[25870]["OptionChkFunc112"] = function ()
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
		return false
	end
	return true
end
tNpcGossip[25870]["OptionChkFunc113"] = function ()
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
		return false
	end
	return true
end


tNpcGossip[25870]["Text2-1"] = {211,212,213,2115,2116,214,215,216,217,218,219,2110,2111,2112,2113,2114}
tNpcGossip[25870]["tOption2-1"] = {211,212}
tNpcGossip[25870]["OptionFunc211"] = "ValentineDayAct_2019_LinkNpcMain1</N>1"
tNpcGossip[25870]["OptionPoint212"] = "3-4"
-- tNpcGossip[25870]["OptionFunc212"] = "ValentineDayAct_2019_LinkNpcMain1</N>2"
-- tNpcGossip[25870]["OptionFunc213"] = "ValentineDayAct_2019_LinkNpcMain1</N>3"
-- tNpcGossip[25870]["OptionFunc214"] = "ValentineDayAct_2019_LinkNpcMain1</N>4"
-- tNpcGossip[25870]["OptionFunc215"] = "ValentineDayAct_2019_LinkNpcMain1</N>5"
-- tNpcGossip[25870]["OptionFunc216"] = "ValentineDayAct_2019_LinkNpcMain1</N>6"
-- tNpcGossip[25870]["OptionFunc217"] = "ValentineDayAct_2019_LinkNpcMain1</N>7"
-- tNpcGossip[25870]["OptionFunc218"] = "ValentineDayAct_2019_LinkNpcMain1</N>8"


tNpcGossip[25870]["Text2-2"] = {221,222,223,2215,2216,224,225,226,227,228,229,2210,2211,2212,2213,2214}
tNpcGossip[25870]["tOption2-2"] = {221,222}
tNpcGossip[25870]["OptionFunc221"] = "ValentineDayAct_2019_LinkNpcMain2</N>1"
tNpcGossip[25870]["OptionPoint222"] = "3-5"
-- tNpcGossip[25870]["OptionFunc222"] = "ValentineDayAct_2019_LinkNpcMain2</N>2"
-- tNpcGossip[25870]["OptionFunc223"] = "ValentineDayAct_2019_LinkNpcMain2</N>3"
-- tNpcGossip[25870]["OptionFunc224"] = "ValentineDayAct_2019_LinkNpcMain2</N>4"
-- tNpcGossip[25870]["OptionFunc225"] = "ValentineDayAct_2019_LinkNpcMain2</N>5"
-- tNpcGossip[25870]["OptionFunc226"] = "ValentineDayAct_2019_LinkNpcMain2</N>6"
-- tNpcGossip[25870]["OptionFunc227"] = "ValentineDayAct_2019_LinkNpcMain2</N>7"
-- tNpcGossip[25870]["OptionFunc228"] = "ValentineDayAct_2019_LinkNpcMain2</N>8"

tNpcGossip[25870]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313}
tNpcGossip[25870]["tOption2-3"] = {231,232}
tNpcGossip[25870]["OptionPoint231"] = "3-3"
tNpcGossip[25870]["OptionFunc232"] = "ValentinePart2_Web</N>25836"
tNpcGossip[25870]["ChkFunc2-3"]= function()

	local nValentineDayAct_EnentType = tValentineDayAct_2019_Data["Stc"]["Event"][11]
	local nValentineDayAct_DataType = tValentineDayAct_2019_Data["Stc"]["Type"][11]
	local nValentineDayAct_UserId = Get_UserId()
	local nValentineDayAct_DataValue = Get_UserStatisticValue(nValentineDayAct_EnentType,nValentineDayAct_DataType,nValentineDayAct_UserId)
	
	local tValentineDayAct_Rank = RankingFunc_GetNowData(25836)
	local bValentineDayAct_Flag = false
	local nValentineDayAct_Index = 0
	for i=1,10 do
	
		if tValentineDayAct_Rank[i] == nil then
	
			tNpcGossip[25870]["Text23"..i+1] = Sys_Alignment(tValentineDayAct_2019_Text[25870]["Text23"..i+1],5,tValentineDayAct_2019_Text["NoData"],30,tValentineDayAct_2019_Text["NoData"],50) 
		elseif tValentineDayAct_Rank[i]["Score"] >= 0 then
		
			local nScore = tValentineDayAct_Rank[i]["Score"]
			local sUserName = tValentineDayAct_Rank[i]["UserName"]
			
			sUserName = string.gsub(sUserName, "<", " ")
			sUserName = string.gsub(sUserName, ">", " ")
			
			local nRank_UserId = tValentineDayAct_Rank[i]["UserId"]
			if nValentineDayAct_UserId == nRank_UserId then 
				bValentineDayAct_Flag = true
				nValentineDayAct_Index = i
			end 
			tNpcGossip[25870]["Text23"..i+1] = Sys_Alignment(tValentineDayAct_2019_Text[25870]["Text23"..i+1],5,tostring(nScore),30,sUserName,47)
		
		end

	end
	--判断玩家是否上榜
	if bValentineDayAct_Flag then
		tNpcGossip[25870]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312}
		tNpcGossip[25870]["Text2312"] = string.format(tValentineDayAct_2019_Text[25870]["Text2312"],nValentineDayAct_DataValue,nValentineDayAct_Index)
	else
		tNpcGossip[25870]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2313}
		tNpcGossip[25870]["Text2313"] = string.format(tValentineDayAct_2019_Text[25870]["Text2313"],nValentineDayAct_DataValue)
	end 
	
	return true
end

tNpcGossip[25870]["Text3-1"] = {311}
tNpcGossip[25870]["tOption3-1"] = {311,312}
tNpcGossip[25870]["OptionFunc311"] = "ValentineDayAct_2019_ManifestoReward</N>1</N>%d"

tNpcGossip[25870]["Text3-2"] = {321,322}
tNpcGossip[25870]["tOption3-2"] = {321,322}
tNpcGossip[25870]["OptionFunc321"] = "ValentineDayAct_2019_ManifestoReward</N>2</N>%d"

tNpcGossip[25870]["Text3-3"] = {331,332,333,334,335,336}
tNpcGossip[25870]["tOption3-3"] = {331}

tNpcGossip[25870]["Text3-4"] = {341,342,343,344,35,346,347,348,349,3410,3411,3412,3413}
tNpcGossip[25870]["tOption3-4"] = {341}

tNpcGossip[25870]["Text3-5"] = {351,352,353,354,355,356,357,358,359,3510}
tNpcGossip[25870]["tOption3-5"] = {351}


tNpcGossip[25870]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112,4113,4114,4115,4116,4117}
tNpcGossip[25870]["tOption4-1"] = {411,412,413}
tNpcGossip[25870]["OptionPoint411"] = "5-1"
tNpcGossip[25870]["OptionFunc413"] = "ValentineDayAct_2019_ExchangeItem</N>25870</N>3327493"
tNpcGossip[25870]["ChkFunc4-1"] = function ()
	local nLevel = tValentineDayAct_2019_Data["Level"]
	local nMete = tValentineDayAct_2019_Data["Metempsychosis"]
	if Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel,nMete)) then
		local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][8]
		local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][8]
		
		-- 判断隔天
		if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
			Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
			Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		end
		
		if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 1) then
			tNpcGossip[25870]["tOption4-1"] = {413,412}
		else
			tNpcGossip[25870]["tOption4-1"] = {411,412}
		end
		
		return true
	else
		return false
	end
end

tNpcGossip[25870]["Text5-1"] = {511,512}
tNpcGossip[25870]["tOption5-1"] = {511,512}
tNpcGossip[25870]["OptionFunc511"] = "ValentineDayAct_2019_ExchangeItem</N>25870</N>3327493"
tNpcGossip[25870]["OptionPoint512"] = "6-1"

tNpcGossip[25870]["Text6-1"] = {611}
tNpcGossip[25870]["tOption6-1"] = {611,612}
tNpcGossip[25870]["OptionFunc611"] = "ValentineDayAct_2019_ShieldSecondConfirm"


-- tNpcGossip[25930] = tNpcGossip[25930] or DefaultNpc:new{}
-- tNpcGossip[25930]["OptionHidden"] = 1
-- tNpcGossip[25930]["DialogueText"] = tValentineDayAct_2019_Text[25930]

-- -- 
-- tNpcGossip[25930]["Text1-1"] = {111,112}
-- tNpcGossip[25930]["tOption1-1"] = {111,112,113}
-- tNpcGossip[25930]["OptionFunc111"] = "ValentineDayAct_2019_ChangeOtherMap"
-- tNpcGossip[25930]["OptionFunc112"] = "ValentineDayAct_2019_EnterCrossMap"
-- tNpcGossip[25930]["OptionFunc113"] = "ValentineDayAct_2019_ReturnCity"
-- tNpcGossip[25930]["OptionChkFunc111"] = function ()
	-- local nValentineDayAct_UserId = Get_UserId()
	-- -- 判断是否在1层
	-- local nValentineDayAct_MapId = Get_UserMapId(nValentineDayAct_UserId)
	
	-- if nValentineDayAct_MapId ~= tValentineDayAct_2019_Data["ChkMap"][3]["MapId"] then
		-- return true
	-- end
	-- return false
-- end
-- tNpcGossip[25930]["OptionChkFunc112"] = function ()
	-- local nValentineDayAct_UserId = Get_UserId()
	-- -- 判断是否在2层
	-- if not User_IsCross(nValentineDayAct_UserId) then
		-- return true
	-- end
	-- return false
-- end

--巧克力小公主'
tNpcGossip[25931] = tNpcGossip[25931] or DefaultNpc:new{}
tNpcGossip[25931]["OptionHidden"] = 1
tNpcGossip[25931]["DialogueText"] = tValentineDayAct_2019_Text[25869]

-- 
tNpcGossip[25931]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25931]["tOption1-1"] = {114,111,113}
tNpcGossip[25931]["OptionFunc111"] = "ValentineDayAct_2019_ChangeOtherMap"
tNpcGossip[25931]["OptionFunc112"] = "ValentineDayAct_2019_EnterCrossMap"
tNpcGossip[25931]["OptionFunc113"] = "ValentineDayAct_2019_ReturnCity"
tNpcGossip[25931]["OptionFunc114"] = "ValentineDayAct_2019_GotoCroMonster"
-- tNpcGossip[25931]["OptionFunc115"] = "NpcPosition_PathFind</N>25870"

tNpcGossip[25931]["OptionChkFunc111"] = function ()
	local nValentineDayAct_UserId = Get_UserId()
	-- 判断是否在1层
	local nValentineDayAct_MapId = Get_UserMapId(nValentineDayAct_UserId)
	
	if nValentineDayAct_MapId ~= tValentineDayAct_2019_Data["ChkMap"][3]["MapId"] then
		return true
	end
	return false
end
-- tNpcGossip[25931]["OptionChkFunc112"] = function ()
	-- local nValentineDayAct_UserId = Get_UserId()
	-- -- 判断是否在2层
	-- if not User_IsCross(nValentineDayAct_UserId) then
		-- return true
	-- end
	-- return false
-- end
---------------------------------物品部分-------------------------------------------
-- 30真爱之心礼盒
tItem[3600218] = tItem[3600218] or {}
tItem[3600218]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[nItemId]) then
		local tValentineDayAct_ItemAttr = Sys_Split(tValentineDayAct_2019_Reward[nItemId]["RewardItem"][1]["Attr"]," ")
		local nValentineDayAct_ItemNum = tValentineDayAct_ItemAttr[2]
		local nValentineDayAct_UserId = Get_UserId()
		-- User_TalkChannel2005(tostring(nValentineDayAct_ItemNum))
		local nValentineDayAct_UserId = Get_UserId()
		ValentinePart2_SetRank(nValentineDayAct_ItemNum,nValentineDayAct_UserId)
	end
end

tItem[3600219] = tItem[3600218] or {}
tItem[3600220] = tItem[3600218] or {}
tItem[3600221] = tItem[3600218] or {}
tItem[3600222] = tItem[3600218] or {}
tItem[3600223] = tItem[3600218] or {}
tItem[3600224] = tItem[3600218] or {}
tItem[3600225] = tItem[3600218] or {}
tItem[3600226] = tItem[3600218] or {}
tItem[3600227] = tItem[3600218] or {}
tItem[3600228] = tItem[3600218] or {}
tItem[3600229] = tItem[3600218] or {}
tItem[3600233] = tItem[3600218] or {}
tItem[3600234] = tItem[3600218] or {}
tItem[3600235] = tItem[3600218] or {}
tItem[3600230] = tItem[3600218] or {}
tItem[3600231] = tItem[3600218] or {}
tItem[3329679] = tItem[3600218] or {}

tItem[3327493] = tItem[3327493] or {}
tItem[3327493]["Function"] = function(nItemId,sItemName)
	-- NpcPosition_PathFind(25868)
	-- 判断时间
	--服务器判断
	local nValentineDayAct_GlobalId = tValentineDayAct_2019_Data["GlobalServerId"]
	local nValentineDayAct_GloData = Get_SysDynaGlobalData0(nValentineDayAct_GlobalId)
	if nValentineDayAct_GloData ~= 1 then
		if not Sys_ChkFullTime(tValentineDayAct_2019_Data["NpcActTime"]) then
			local nValentineDayAct_Num = Get_CountItemType(nItemId,0)
			-- if not Item_DelAllItemByType(nValentineDayAct_ItemId) then
				-- return
			-- end
			local tValentineDayAct_Reward = CommonFunc_Copy(tValentineDayAct_2019_Reward[nItemId])
			tValentineDayAct_Reward["DeleteItem"][1]["ItemNum"] = nValentineDayAct_Num
			tValentineDayAct_Reward["RewardStrengthValue"]["Value"] = nValentineDayAct_Num	
			RewardTemplate_UseItemAndMsg(tValentineDayAct_Reward)
			User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["OverTime"])
			local sValentineDayAct_Log = string.format(tValentineDayAct_2019_Log["OverTime"],nValentineDayAct_ItemId,nValentineDayAct_Num)
			Sys_SaveActionFestivalLog(sValentineDayAct_Log)
			return
		end
	end
	
	if not Sys_ChkFullTime(tValentineDayAct_2019_Data["ItemActTime"]) then
		local nValentineDayAct_Num = Get_CountItemType(nItemId,0)
		-- if not Item_DelAllItemByType(nValentineDayAct_ItemId) then
			-- return
		-- end
		local tValentineDayAct_Reward = CommonFunc_Copy(tValentineDayAct_2019_Reward[nItemId])
		tValentineDayAct_Reward["DeleteItem"][1]["ItemNum"] = nValentineDayAct_Num
		tValentineDayAct_Reward["RewardStrengthValue"]["Value"] = nValentineDayAct_Num	
		RewardTemplate_UseItemAndMsg(tValentineDayAct_Reward)
		User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["OverTime"])
		local sValentineDayAct_Log = string.format(tValentineDayAct_2019_Log["OverTime"],nValentineDayAct_ItemId,nValentineDayAct_Num)
		Sys_SaveActionFestivalLog(sValentineDayAct_Log)
		return
		
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3327493] = tItem[3327493] or {}
tItem[3327493]["OptionHidden"] = 1
tItem[3327493]["DialogueText"] = tValentineDayAct_2019_Text[3327493]
tItem[3327493]["Text1-1"] = {111,112,113,114,115,116}
tItem[3327493]["tOption1-1"] = {111,112,113}
tItem[3327493]["OptionFunc111"] = "ValentineDayAct_2019_ChgMapNpc</N>3327493</N>1"
tItem[3327493]["OptionFunc112"] = "ValentineDayAct_2019_ChgMapNpc</N>3327493</N>2"
tItem[3327493]["OptionFunc113"] = "ValentineDayAct_2019_GotoNpc</N>3327493"

tItem[3327545] = tItem[3327545] or {}
tItem[3327545]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[nItemId]) then
	end
end
tItem[3327546] = tItem[3327545] or {}
tItem[3327547] = tItem[3327545] or {}
tItem[3327524] = tItem[3327545] or {}
tItem[3327525] = tItem[3327545] or {}
-- tItem[3327522] = tItem[3327545] or {}
tItem[3327548] = tItem[3327545] or {}
tItem[3329978] = tItem[3327545] or {}

tItem[3327522] = tItem[3327522] or {}
tItem[3327522]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[nItemId]) then
		if not User_HairFaceCheckExist(0,tValentineDayAct_2019_Data["HairId"]) then
			User_HairFaceAward(0,tValentineDayAct_2019_Data["HairId"],0)
		end
	end
end

-- 真爱之心礼盒
tItem[3600232] = tItem[3600232] or {}
tItem[3600232]["Function"] = function(nItemId,sItemName)
	local nValentineDayAct_UserId = Get_UserId()
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	local nValentineDayAct_Data3 = Get_TaskDetailData3(nValentineDayAct_TaskId, nValentineDayAct_UserId)
	local tValentineDayAct_Award = CommonFunc_Copy(tValentineDayAct_2019_Reward[3600232])
	if nValentineDayAct_Data3 ~= 0 then
		
		tValentineDayAct_Award["RewardItem"][1]["Attr"] = string.format(tValentineDayAct_Award["RewardItem"][1]["Attr"],nValentineDayAct_Data3)
		if RewardTemplate_UseItemAndMsg(tValentineDayAct_Award) then
			local tValentineDayAct_ItemAttr = Sys_Split(tValentineDayAct_Award["RewardItem"][1]["Attr"]," ")
			local nValentineDayAct_ItemNum = tValentineDayAct_ItemAttr[2]
			-- User_TalkChannel2005(tostring(nValentineDayAct_ItemNum))
			local nValentineDayAct_UserId = Get_UserId()
			ValentinePart2_SetRank(nValentineDayAct_ItemNum,nValentineDayAct_UserId)
		end
	end
end

-- 真爱礼盒
tItem[3600236] = tItem[3600236] or {}
tItem[3600236]["Function"] = function(nItemId,sItemName)
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][6]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][6]
	local nValentineDayAct_UserItemNum = Get_CountItemType(nItemId,0)
	-- local nValentineDayAct_UserStcNum = Get_UserStatisticValue(nValentineDayAct_Event,nValentineDayAct_Type)
	local nValentineDayAct_ReawadNum = 0
	local nValentineDayAct_ItemNum = 0
	local tValentineDayAct_Item = CommonFunc_Copy(tValentineDayAct_2019_Reward["SumItem"][3600236])
	
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
	end
	
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 10) then
		Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["ItemLimit"])
		return
	end
	
	local nValentineDayAct_UserStcNum = Get_UserStatisticValue(nValentineDayAct_Event,nValentineDayAct_Type)
	
	if nValentineDayAct_UserItemNum + nValentineDayAct_UserStcNum > 10 then
		nValentineDayAct_UserItemNum = 10 - nValentineDayAct_UserStcNum
	end
	
	for i = 1,nValentineDayAct_UserItemNum do
		-- if Task_AddStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 1, 1) then
			Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
			-- local tValentineDayAct_Reward = RewardTemplate_RandomReward(tValentineDayAct_2019_Reward,nItemId)
			local flat,tValentineDayAct_Reward = Probabil_RandomAward(tValentineDayAct_2019_Reward,nItemId)
			if tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
				local tValentineDayAct_ItemAttr = Sys_Split(tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
				nValentineDayAct_ItemNum = tValentineDayAct_ItemAttr[2]
				-- local nValentineDayAct_UserId = Get_UserId()
				-- ValentinePart2_SetRank(nValentineDayAct_ItemNum,nUserId)
			end
			
			nValentineDayAct_ReawadNum = nValentineDayAct_ReawadNum + nValentineDayAct_ItemNum
	end
	tValentineDayAct_Item["DeleteItem"][1]["ItemNum"] = nValentineDayAct_UserItemNum
	tValentineDayAct_Item["RewardItem"][1]["Attr"] = string.format(tValentineDayAct_Item["RewardItem"][1]["Attr"],nValentineDayAct_ReawadNum)
	if Task_AddStatistic(nValentineDayAct_Event, nValentineDayAct_Type, nValentineDayAct_UserItemNum, 1) then
		if RewardTemplate_UseItemAndMsg(tValentineDayAct_Item) then
			-- local nValentineDayAct_UserId = Get_UserId()
			-- ValentinePart2_SetRank(nValentineDayAct_ReawadNum,nValentineDayAct_UserId)
		end
	end
end

-- 情人节惊喜礼包
tItem[3327550] = tItem[3327550] or {}
tItem[3327550]["Function"] = function(nItemId,sItemName)
	-- if not Item_ChkMulItem(3327493,3327493,300) then
		-- User_TalkChannel2005(tValentineDayAct_2019_Text["TalkChannel"]["NoItemNum"])
		-- return
	-- end
	
	-- local tValentineDayAct_Reward = RewardTemplate_RandomReward(tValentineDayAct_2019_Reward[nItemId],1)
	-- if tValentineDayAct_Reward[1]["tAward"][1]["RewardItem"] ~= nil then

		-- RewardTemplate_RandomReward(tValentineDayAct_2019_Reward[nItemId],2)
		-- local nValentineDayAct_ItemNum = tValentineDayAct_ItemAttr[2]
		-- local nValentineDayAct_UserId = Get_UserId()
		-- ValentinePart2_SetRank(nValentineDayAct_ItemNum,nUserId)
	-- end
	Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["MakeItem"],"ValentineDayAct_2019_MakeItem</N>3327550")
	-- end
	
end

-- 情人节惊喜礼包
tItem[3600241] = tItem[3600241] or {}
tItem[3600241]["Function"] = function(nItemId,sItemName)
	local nValentineDayAct_UserId = Get_UserId()
	local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
	
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][4]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][4]
	-- 判断隔天
	if Task_StcInterval(nValentineDayAct_Event, nValentineDayAct_Type, 1, 4) then
		
		Task_SetStatistic(nValentineDayAct_Event, nValentineDayAct_Type, 0, 1)
		Task_SetStcTimestamp(nValentineDayAct_Event, nValentineDayAct_Type, 0)
		
		local nValentineDayAct_TaskId = tValentineDayAct_2019_Data["TaskId"]
		Task_SetTaskDetailData1(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
		Task_SetTaskDetailData2(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)
		Task_SetTaskDetailData4(nValentineDayAct_TaskId,0,nValentineDayAct_UserId)		
		-- Task_SetTaskDetailData3(nValentineDayAct_TaskId,0,nValentineDayAct_UserId) 
	end
	
	local nValentineDayAct_ChgNum = Get_TaskDetailData4(nValentineDayAct_TaskId, nValentineDayAct_UserId)
	if nValentineDayAct_ChgNum >= 5 then
		RewardTemplate_RandomReward(tValentineDayAct_2019_Reward,nItemId)
	else
		Sys_MsgBox(tValentineDayAct_2019_Text["Broadcast"]["ExchangeNum"])
	end
end

-- 情人节惊喜礼包
tItem[3329678] = tItem[3329678] or {}
tItem[3329678]["Function"] = function(nItemId,sItemName)
	local nValentineDayAct_UserId = Get_UserId()
	if not Item_ChkMulItem(nItemId,nItemId,50) then
		Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["NoTitleIetm"])
		return
	end
	
	local nValentineDayAct_Event = tValentineDayAct_2019_Data["Stc"]["Event"][9]
	local nValentineDayAct_Type = tValentineDayAct_2019_Data["Stc"]["Type"][9]
	
	if Task_ChkStcValue(nValentineDayAct_Event, nValentineDayAct_Type, ">=", 1) then
		Sys_MsgBox(tValentineDayAct_2019_Text["MsgBox"]["TitleLimit"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,50) and Item_DelMulItem(nItemId,nItemId,50) then
		local nValentineDayAct_UserSex = Get_UserSex(nValentineDayAct_UserId)
		
		if nValentineDayAct_UserSex == 1 then
			RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[3329678][2])
		else
			RewardTemplate_UseItemAndMsg(tValentineDayAct_2019_Reward[3329678][1])
		end
	end
end

tItemFace[3327526] = 2834
tItemFace[3329977] = 2834
tItemFace[3327549] = 1034
tItem[3327526] = tItem[3327526] or {}
tItem[3327526]["OptionHidden"] = 1
tItem[3327526]["DialogueText"] = tValentineDayAct_2019_Text[3327526]
tItem[3327526]["Text1-1"] = {111}
tItem[3327526]["tOption1-1"] = {111,112}
tItem[3327526]["OptionFunc111"] = ""
tItem[3327526]["OptionFunc112"] = ""
tItem[3327526]["Function"] = function(nItemId)
	tItem[nItemId]["Text111"] = string.format(tValentineDayAct_2019_Text[3327526]["Text111"],tValentineDayAct_2019_Text[3327526]["Name"][nItemId])
	local sItemFunc = "ValentineDayAct_2019_OpenBag</N>%d</N>%d"
	tItem[nItemId]["OptionFunc111"] = string.format(sItemFunc,nItemId,1)
	tItem[nItemId]["OptionFunc112"] = string.format(sItemFunc,nItemId,2)
	LinkItemGossipFunc_New(nItemId,"1-1")
	return true
end
tItem[3327549] = tItem[3327526] or {}
tItem[3329977] = tItem[3327526] or {}
---------------------------------怪物部分---------------------------------------------
-- 击杀怪物掉落
local tValentineDayAct_2019_MonsterDrop = {}
tValentineDayAct_2019_MonsterDrop["Function"] = ValentineDayAct_2019_KillMonsterDrop
table.insert(tMonsterDrop_AreaLoad,tValentineDayAct_2019_MonsterDrop)

-- 激情服怪物掉落
local tValentineDayAct_2019_MonsterDrop_NoGift = {}
tValentineDayAct_2019_MonsterDrop_NoGift["Function"] = ValentineDayAct_2019_KillMonsterDrop
tValentineDayAct_2019_MonsterDrop_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tValentineDayAct_2019_MonsterDrop_NoGift)

-- 副本怪物掉落
local tValentineDayAct_2019_NewMonsterDrop = {}
tValentineDayAct_2019_NewMonsterDrop["Function"] = ValentineDayAct_2019_KillMonsterDrop
tValentineDayAct_2019_NewMonsterDrop["MonsterId"] = {1288}
table.insert(tMonsterDrop_AreaLoad,tValentineDayAct_2019_NewMonsterDrop)

local tValentineDayAct_2019_IoMonsterDrop ={}
tValentineDayAct_2019_IoMonsterDrop["Function"] = ValentineDayAct_2019_IoMonsterDrop
tValentineDayAct_2019_IoMonsterDrop["MonsterId"] = {5981,5982,5983,5984,5985,5986,5987,5988,5989,5990,5991,5992,5993}
table.insert(tMonsterDrop_AreaLoad,tValentineDayAct_2019_IoMonsterDrop)




---------------------------------互动部分---------------------------------------------
-- 互动接口
tProcessInteract["tFunction"] = tProcessInteract["tFunction"] or {}
table.insert(tProcessInteract["tFunction"],ValentineDayAct_2019_Choose)
---------------------------------上线自检---------------------------------------------
--上线自检
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ValentineDayAct_2019_PlayLogin)
table.insert(tSystem_PlayLogin_Func,ValentineDayAct_2019_PlayLoginEmeil)

---------------------------------时间自检--------------------------------------------- 
-- local tValentineDayAct_2019_OnTime = {}
	-- 出公告
	-- tValentineDayAct_2019_OnTime[1] = {}
	-- tValentineDayAct_2019_OnTime[1]["ActivityTime"] = tActivityTime["ValentineDayAct_2019"]["ActTime"]
	-- tValentineDayAct_2019_OnTime[1]["Type"] = 2
	-- tValentineDayAct_2019_OnTime[1]["TimeType"] = 5  -- 小时时间
	-- tValentineDayAct_2019_OnTime[1]["Multiple"] = {}
	-- tValentineDayAct_2019_OnTime[1]["Multiple"][1] = "00 00"
	-- tValentineDayAct_2019_OnTime[1]["Multiple"][2] = "30 30"
	-- tValentineDayAct_2019_OnTime[1]["Func"] = ValentineDayAct_2019_RefalshNolMonster
	
	-- 出公告
	-- tValentineDayAct_2019_OnTime[2] = {}
	-- tValentineDayAct_2019_OnTime[2]["ActivityTime"] = tActivityTime["ValentineDayAct_2019"]["ActTime"]
	-- tValentineDayAct_2019_OnTime[2]["Type"] = 2
	-- tValentineDayAct_2019_OnTime[2]["TimeType"] = 5  -- 小时时间
	-- tValentineDayAct_2019_OnTime[2]["Multiple"] = {}
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][1] = "00 00"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][2] = "05 05"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][3] = "10 10"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][4] = "15 15"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][5] = "20 20"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][6] = "25 25"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][7] = "30 30"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][8] = "35 35"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][9] = "40 40"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][10] = "45 45"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][11] = "50 50"
	-- tValentineDayAct_2019_OnTime[2]["Multiple"][12] = "55 55"
	-- tValentineDayAct_2019_OnTime[2]["Func"] = ValentineDayAct_2019_EliteMonsterOnTime
-- table.insert(tSystemTime_InitialData,tValentineDayAct_2019_OnTime[1])
-- table.insert(tSystemTime_InitialData,tValentineDayAct_2019_OnTime[2])


tGlobalData_Info[54210] = {}
tGlobalData_Info[54210]["Time"] = {}
tGlobalData_Info[54210]["Time"]["ActivityTime"] = tActivityTime["ValentineDayAct_2019"]["ActTime"]
tGlobalData_Info[54210]["Time"]["ClearTime"] = "00:00 00:00"
tGlobalData_Info[54210]["Rest"] = {}
tGlobalData_Info[54210]["Rest"]["GlobalId"] = {54210}
tGlobalData_Info[54210]["Rest"]["Pos"] = {0}