------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]大型MMO活动--飞翔吧筋斗云
--Purpose:	翻滚筋斗云
--Creator: 	许乐
--Created:	2016/10/31
------------------------------------------------------------------------------------
-- #【简体征服】大型MMO活动制作-百宝箱活动修改版
-- #1、百宝箱更换筋斗云养成    
-- #2、宝箱、灵珠、NPC、怪物、晶矿全得换包装，例如可以去天空收集灵石喂给筋斗云    
-- #3、阶段奖励修改为新积分和时效的筋斗云    
-- #4、增加排名奖励    
-- #5、地图改成口袋的天空之城 

-- 11.15新区不上此活动
-- 活动时间暂定为：11.17-11.30
-- 领排名奖励时间：12.01-12.04
-- 全服排名链接：http://hd.zf.99.com/bbx/2016/
------------------------------------------------------------------------------------
-- 掩码说明：
-- 152 02:背包信是否领取
-- 152 03:1表示已领取排名奖励，0表示未领取
-- 152 04:记录总 成长值
-- 152 05:记录今日 成长值
-- 152 07:记录第几次补领宝箱
-- 152 08:是否已领取每日宝箱奖励
-- 152 09:记录今日喂养次数
-- 152 10:上线触发获得初级宝箱
-- 152 11:判断是否是第一次点击主npc
-- 152 12:判断当天是否进入过地图

-- logID:12000545
-- lua.ini  40371
-- task_detail 3768

-- 全局动态ID
-- 51386:记录成长值 第1名-第3名玩家id，和成长值
-- 51387:记录成长值 第1名-第3名玩家名字
-- 51388:记录每日仙灵珠产出量，上限10个
-- 51389:记录每日喂养1-3次（一转） 龙珠的产出量，上限2个
-- 51390:记录每日喂养1-3次（二转） 龙珠的产出量，上限3个
--51410: 区别新服 不获得背包信

-- 命名规则：
-- MMOJindowin_

-- 上交彩色云灵 350 21002
-- 上交仙色云灵 350 21003
-- 上交神色云灵 350 21004
-- 上交圣色云灵 350 21005
-- 1阶筋斗云 350 21006
-- 2阶筋斗云 350 21007
-- 3阶筋斗云 350 21008
-- 4阶筋斗云 350 21009
-- 5阶筋斗云 350 21010
-- 6阶筋斗云 350 21011
-- 7阶筋斗云 350 21012
-- 8阶筋斗云 350 21013
-- 9阶筋斗云 350 21014
-- 上交1天石代替云灵 350 21015
-- 上交9天石代替云灵 350 21016
-- 上交39天石代替云灵 350 21017
-- 上交299天石代替云灵 350 21018
-- 免费产生的彩云灵 350 21019
-- 免费产生的仙云灵 350 21020
-- 免费产生的神云灵 350 21021
-- 免费产生的圣云灵 350 21022
-------------------------------------------数据-------------------------------------------
-- 活动相关时间
local tMMOJindowin_ActivityTime = {}
	-- 活动时间
	tMMOJindowin_ActivityTime["BeforeTime"] = tActivityTime["MMOJindowin"]["BeforeTime"]
	tMMOJindowin_ActivityTime["NowTime"] = tActivityTime["MMOJindowin"]["NowTime"]
	tMMOJindowin_ActivityTime["AfterTime"] = tActivityTime["MMOJindowin"]["AfterTime"]

-- 背包信数据
local tMMOJindowin_Letter ={}
	--  一阶筋斗云
	tMMOJindowin_Letter[3301296] = {}
	tMMOJindowin_Letter[3301296]["ActivityTime"] = tMMOJindowin_ActivityTime["NowTime"]
	tMMOJindowin_Letter[3301296]["EventType"] = 152
	tMMOJindowin_Letter[3301296]["DataType"] = 10
	tMMOJindowin_Letter[3301296]["RewardData"] = 1
	tMMOJindowin_Letter[3301296]["RewardItem"] = 3301296
	tMMOJindowin_Letter[3301296]["RewardAttr"] = "0 1"
	tMMOJindowin_Letter[3301296]["NeedLevel"] = 80
	tMMOJindowin_Letter[3301296]["NeedMetempsychosis"] = 0
	-- tMMOJindowin_Letter[3301296]["GlobalId"] = 51410
	-- tMMOJindowin_Letter[3301296]["GlobalData"] = 1
	-- tMMOJindowin_Letter[3301296]["GlobalPos"] = 0

local tMMOJindowin_ActivityData = {}
	-- 筋斗云全服元气榜
	tMMOJindowin_ActivityData["WebAddress"] = "http://hd.zf.99.com/bbx/2016/"
	
	-- -- 区分新服非新服
	-- tMMOJindowin_ActivityData["ServiceGlobal"] = 51410
	
	-- 排名
	tMMOJindowin_ActivityData["GlobalRank"] = 51386
	tMMOJindowin_ActivityData["GlobalRankName"] = 51387	

	-- 神云灵
	tMMOJindowin_ActivityData["GlobalBall"] = 51388
	tMMOJindowin_ActivityData["MaxData"] = 10

	-- 龙珠产出上限
	tMMOJindowin_ActivityData["GlobalDragon_1"] = 51389
	tMMOJindowin_ActivityData["Max_1"] = 2
	tMMOJindowin_ActivityData["GlobalDragon_2"] = 51390
	tMMOJindowin_ActivityData["Max_2"] = 3
	
	-- 背包空间
	tMMOJindowin_ActivityData["SpaceOne"] = 1
	
	-- 玩家等级要求
	tMMOJindowin_ActivityData["Metempsychosis"] = 0
	tMMOJindowin_ActivityData["Level"] = 80
	
	-- 返回市场坐标
	tMMOJindowin_ActivityData["TwinCity"] = {}
	tMMOJindowin_ActivityData["TwinCity"]["Normal"] = {}
	tMMOJindowin_ActivityData["TwinCity"]["Normal"]["Map"] = 1002
	tMMOJindowin_ActivityData["TwinCity"]["Normal"]["Xpos"] = 344
	tMMOJindowin_ActivityData["TwinCity"]["Normal"]["Ypos"] = 486
	tMMOJindowin_ActivityData["TwinCity"]["Normal"]["Bound"] = 5
	tMMOJindowin_ActivityData["TwinCity"]["Normal"]["NpcId"] = 19798
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"] = {}
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"]["Map"] = 1036
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"]["Xpos"] = 220
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"]["Ypos"] = 189
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"]["Bound"] = 5
	tMMOJindowin_ActivityData["TwinCity"]["NoGift"]["NpcId"] = 19798
	
	-- 进入彩云城
	tMMOJindowin_ActivityData["BoxCity"] = {}
	tMMOJindowin_ActivityData["BoxCity"]["Map"] = 10061
	tMMOJindowin_ActivityData["BoxCity"]["Xpos"] = 195
	tMMOJindowin_ActivityData["BoxCity"]["Ypos"] = 298
	tMMOJindowin_ActivityData["BoxCity"]["Bound"] = 3
	tMMOJindowin_ActivityData["BoxCity"][1] = {}
	tMMOJindowin_ActivityData["BoxCity"][1]["Xpos"] = 182
	tMMOJindowin_ActivityData["BoxCity"][2] = {}
	tMMOJindowin_ActivityData["BoxCity"][2]["Xpos"] = 185
	tMMOJindowin_ActivityData["BoxCity"][3] = {}
	tMMOJindowin_ActivityData["BoxCity"][3]["Xpos"] = 188
	tMMOJindowin_ActivityData["BoxCity"][4] = {}
	tMMOJindowin_ActivityData["BoxCity"][4]["Xpos"] = 191
	tMMOJindowin_ActivityData["BoxCity"][5] = {}
	tMMOJindowin_ActivityData["BoxCity"][5]["Xpos"] = 194
	tMMOJindowin_ActivityData["BoxCity"][6] = {}
	tMMOJindowin_ActivityData["BoxCity"][6]["Xpos"] = 197
	tMMOJindowin_ActivityData["BoxCity"][7] = {}
	tMMOJindowin_ActivityData["BoxCity"][7]["Xpos"] = 200
	tMMOJindowin_ActivityData["BoxCity"][8] = {}
	tMMOJindowin_ActivityData["BoxCity"][8]["Xpos"] = 203
	tMMOJindowin_ActivityData["BoxCity"][9] = {}
	tMMOJindowin_ActivityData["BoxCity"][9]["Xpos"] = 206
	
	-- 读条2s
	tMMOJindowin_ActivityData["Second"] = 2		--读条2s
	tMMOJindowin_ActivityData["Action"] = 100		--读条action
	
	-- 每分钟随机出现一个缥缈宝箱
	tMMOJindowin_ActivityData["Sort"] = 1	
	tMMOJindowin_ActivityData["Type"] = 2
	tMMOJindowin_ActivityData["Field"] = "name"
	tMMOJindowin_ActivityData["NpcId"] = 19800
	tMMOJindowin_ActivityData["Lookface"] = 43930
	tMMOJindowin_ActivityData["Task0"] = 94479941
	tMMOJindowin_ActivityData["MapId"] = 10061
	
	tMMOJindowin_ActivityData["Pos"] = {}
	tMMOJindowin_ActivityData["Pos"][1] = {178,139}
	tMMOJindowin_ActivityData["Pos"][2] = {265,181}
	tMMOJindowin_ActivityData["Pos"][3] = {185,237}
	tMMOJindowin_ActivityData["Pos"][4] = {85,179}
	tMMOJindowin_ActivityData["Pos"][5] = {182,176}

	-- 在地图内的时间
	tMMOJindowin_ActivityData["TimeDelay"] = 1800
	tMMOJindowin_ActivityData["TimeType"] = 1

	-- 凝练七彩祥云
	tMMOJindowin_ActivityData["Mix"] = {}
	tMMOJindowin_ActivityData["Mix"][1] = 200613
	tMMOJindowin_ActivityData["Mix"][2] = 200614
	tMMOJindowin_ActivityData["Mix"][3] = 200629
	tMMOJindowin_ActivityData["Mix"][4] = 200648
	tMMOJindowin_ActivityData["Mix"][5] = 200649

	-- 新外套Id
	tMMOJindowin_ActivityData["NewCoat"] = {}
	tMMOJindowin_ActivityData["NewCoat"][1] = 200648
	tMMOJindowin_ActivityData["NewCoat"][2] = 200649

-- 本服排行奖励
local tMMOJindowin_LocalRankReward = {}
	-- 第1名
	tMMOJindowin_LocalRankReward[1] = {}
	tMMOJindowin_LocalRankReward[1]["ItemId"] = 3313036
	tMMOJindowin_LocalRankReward[1]["Attr"] = "0 3 3"
	tMMOJindowin_LocalRankReward[1]["Day"] = 90
	-- 第2名
	tMMOJindowin_LocalRankReward[2] = {}
	tMMOJindowin_LocalRankReward[2]["ItemId"] = 3313036
	tMMOJindowin_LocalRankReward[2]["Attr"] = "0 2 3"
	tMMOJindowin_LocalRankReward[2]["Day"] = 60
	-- 第3名
	tMMOJindowin_LocalRankReward[3] = {}
	tMMOJindowin_LocalRankReward[3]["ItemId"] = 3313036
	tMMOJindowin_LocalRankReward[3]["Attr"] = "0 1 3"
	tMMOJindowin_LocalRankReward[3]["Day"] = 30
	
-- stc掩码	
local tMMOJindowin_Stc = {}
	tMMOJindowin_Stc["EventType"] = {}
	tMMOJindowin_Stc["DataType"] = {}
	-- 记录是否已领取排行奖励
	tMMOJindowin_Stc["EventType"][1] = 152
	tMMOJindowin_Stc["DataType"][1] = 03
	-- 记录总成长值
	tMMOJindowin_Stc["EventType"][2] = 152
	tMMOJindowin_Stc["DataType"][2] = 04
	-- 记录今日单天成长值
	tMMOJindowin_Stc["EventType"][3] = 152
	tMMOJindowin_Stc["DataType"][3] = 05
	-- 记录第几次补领筋斗云
	tMMOJindowin_Stc["EventType"][4] = 152
	tMMOJindowin_Stc["DataType"][4] = 07
	-- 是否已领取每日筋斗云奖励
	tMMOJindowin_Stc["EventType"][5] = 152
	tMMOJindowin_Stc["DataType"][5] = 08
	-- 记录今日喂养次数
	tMMOJindowin_Stc["EventType"][6] = 152
	tMMOJindowin_Stc["DataType"][6] = 09
	-- 上线触发获得一阶筋斗云
	tMMOJindowin_Stc["EventType"][7] = 152
	tMMOJindowin_Stc["DataType"][7] = 10
	-- 判断是否是第一次点击主npc
	tMMOJindowin_Stc["EventType"][8] = 152
	tMMOJindowin_Stc["DataType"][8] = 11
	-- 判断当天是否进入过地图
	tMMOJindowin_Stc["EventType"][9] = 152
	tMMOJindowin_Stc["DataType"][9] = 12
	-- 记录玩家随机包中云彩Id
	tMMOJindowin_Stc["EventType"][10] = 199
	tMMOJindowin_Stc["DataType"][10] = 79
	-- 记录玩家随机包中碎片数量
	tMMOJindowin_Stc["EventType"][11] = 199
	tMMOJindowin_Stc["DataType"][11] = 80
	
--筋斗云数据
local tMMOJindowin_BoxType = {
	[1] = 3301296,
	[2] = 3301297,
	[3] = 3301298,
	[4] = 3301299,
	[5] = 3301300,
	[6] = 3301301,
	[7] = 3301302,
	[8] = 3301303,
	[9] = 3301304,
}

--喂养次数对应云灵物品
local tMMOJindowin_FeedBoxBall = {
	[1] = 3301292,	--彩云灵
	[2] = 3301292,	--彩云灵
	[3] = 3301292,	--彩云灵
	[4] = 3301293,	--幻云灵
	[5] = 3301293,	--幻云灵
	[6] = 3301293,	--幻云灵
	[7] = 3301294,	--仙云灵
	[8] = 3301294,	--仙云灵
	[9] = 3301294,	--仙云灵
	[10] = 3301295,	--圣云灵
}

--灵珠数据
local tMMOJindowin_BallData = {}
	-- 云灵对应天石数量
	tMMOJindowin_BallData["TS"] ={}
	tMMOJindowin_BallData["TS"][3301292] = 1
	tMMOJindowin_BallData["TS"][3301293] = 9
	tMMOJindowin_BallData["TS"][3301294] = 39
	tMMOJindowin_BallData["TS"][3301295] = 299

	-- 云灵对应成长值
	tMMOJindowin_BallData["Growup"] = {}
	tMMOJindowin_BallData["Growup"][3301292] = 1
	tMMOJindowin_BallData["Growup"][3301293] = 1
	tMMOJindowin_BallData["Growup"][3301294] = 1
	tMMOJindowin_BallData["Growup"][3301295] = 3
	
	tMMOJindowin_BallData["GrowupTS"] ={}
	tMMOJindowin_BallData["GrowupTS"][1] = 1
	tMMOJindowin_BallData["GrowupTS"][9] = 1
	tMMOJindowin_BallData["GrowupTS"][39] = 1
	tMMOJindowin_BallData["GrowupTS"][299] = 3
	
	--总成长值对应筋斗云（进阶）
	tMMOJindowin_BallData["NextGrowBox"] = {}
	tMMOJindowin_BallData["NextGrowBox"][0] = 3301296
	tMMOJindowin_BallData["NextGrowBox"][10] = 3301297		--10
	tMMOJindowin_BallData["NextGrowBox"][30] = 3301298		--20
	tMMOJindowin_BallData["NextGrowBox"][60] = 3301299		--30
	tMMOJindowin_BallData["NextGrowBox"][100] = 3301300	--40
	tMMOJindowin_BallData["NextGrowBox"][150] = 3301301	--50
	tMMOJindowin_BallData["NextGrowBox"][220] = 3301302	--70
	tMMOJindowin_BallData["NextGrowBox"][310] = 3301303	--90
	tMMOJindowin_BallData["NextGrowBox"][420] = 3301304	--110
	
	tMMOJindowin_BallData["NextGrow"] = {}
	tMMOJindowin_BallData["NextGrow"][3301296] = 0
	tMMOJindowin_BallData["NextGrow"][3301297] = 10		--10
	tMMOJindowin_BallData["NextGrow"][3301298] = 30		--20
	tMMOJindowin_BallData["NextGrow"][3301299] = 60		--30
	tMMOJindowin_BallData["NextGrow"][3301300] = 100	--40
	tMMOJindowin_BallData["NextGrow"][3301301] = 150	--50
	tMMOJindowin_BallData["NextGrow"][3301302] = 220	--70
	tMMOJindowin_BallData["NextGrow"][3301303] = 310	--90
	tMMOJindowin_BallData["NextGrow"][3301304] = 420	--110
	
	--下一级云灵
	tMMOJindowin_BallData["NextBall"] = {}
	tMMOJindowin_BallData["NextBall"][3301292] = 3301293
	tMMOJindowin_BallData["NextBall"][3301293] = 3301294
	tMMOJindowin_BallData["NextBall"][3301294] = 3301295
	
	-- 云灵合成奖励
	tMMOJindowin_BallData["CompoundReward"] = {}
	-----彩云灵
	tMMOJindowin_BallData["CompoundReward"][3301292] = {}
	tMMOJindowin_BallData["CompoundReward"][3301292]["ItemChanceSum"] = 10000
	-- 50.00%	仙云灵
	tMMOJindowin_BallData["CompoundReward"][3301292][1] = {}
	tMMOJindowin_BallData["CompoundReward"][3301292][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301292][1]["ItemChance"] = 5000
	tMMOJindowin_BallData["CompoundReward"][3301292][1]["Item_1"] = 3301293
	-- 20.00%	15点修行值
	tMMOJindowin_BallData["CompoundReward"][3301292][2] = {}
	tMMOJindowin_BallData["CompoundReward"][3301292][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301292][2]["ItemChance"] = 2000
	tMMOJindowin_BallData["CompoundReward"][3301292][2]["Item_1"] = 6
	tMMOJindowin_BallData["CompoundReward"][3301292][2]["Num"] = 15
	-- 20.00%	30点气力值
	tMMOJindowin_BallData["CompoundReward"][3301292][3] = {}
	tMMOJindowin_BallData["CompoundReward"][3301292][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301292][3]["ItemChance"] = 2000
	tMMOJindowin_BallData["CompoundReward"][3301292][3]["Item_1"] = 12
	tMMOJindowin_BallData["CompoundReward"][3301292][3]["Num"] = 30
	-- 10.00%	微光星陨石
	tMMOJindowin_BallData["CompoundReward"][3301292][4] = {}
	tMMOJindowin_BallData["CompoundReward"][3301292][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301292][4]["ItemChance"] = 1000
	tMMOJindowin_BallData["CompoundReward"][3301292][4]["Item_1"] = 3009000
	tMMOJindowin_BallData["CompoundReward"][3301292][4]["Zeng"] = 0
	tMMOJindowin_BallData["CompoundReward"][3301292][4]["NAttr"] = "0 1 0 2880 1"
	
	------仙云灵
	tMMOJindowin_BallData["CompoundReward"][3301293] = {}
	tMMOJindowin_BallData["CompoundReward"][3301293]["ItemChanceSum"] = 10000
	--  40% 神云灵
	tMMOJindowin_BallData["CompoundReward"][3301293][1] = {}
	tMMOJindowin_BallData["CompoundReward"][3301293][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301293][1]["ItemChance"] = 4000
	tMMOJindowin_BallData["CompoundReward"][3301293][1]["Item_1"] = 3301294
	-- 25.00%	60点修行值
	tMMOJindowin_BallData["CompoundReward"][3301293][2] = {}
	tMMOJindowin_BallData["CompoundReward"][3301293][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301293][2]["ItemChance"] = 2500
	tMMOJindowin_BallData["CompoundReward"][3301293][2]["Item_1"] = 6
	tMMOJindowin_BallData["CompoundReward"][3301293][2]["Num"] = 60
	-- 25.00%	100点气力值
	tMMOJindowin_BallData["CompoundReward"][3301293][3] = {}
	tMMOJindowin_BallData["CompoundReward"][3301293][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301293][3]["ItemChance"] = 2500
	tMMOJindowin_BallData["CompoundReward"][3301293][3]["Item_1"] = 12
	tMMOJindowin_BallData["CompoundReward"][3301293][3]["Num"] = 100
	-- 10.00%	微光星陨石*2
	tMMOJindowin_BallData["CompoundReward"][3301293][4] = {}
	tMMOJindowin_BallData["CompoundReward"][3301293][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301293][4]["ItemChance"] = 1000
	tMMOJindowin_BallData["CompoundReward"][3301293][4]["Item_1"] = 3009000
	tMMOJindowin_BallData["CompoundReward"][3301293][4]["Num"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301293][4]["NAttr"] = "0 2 0 2880 1"
	
	------神云灵
	tMMOJindowin_BallData["CompoundReward"][3301294] = {}
	tMMOJindowin_BallData["CompoundReward"][3301294]["ItemChanceSum"] = 10000
	-- 30.00%	圣云灵
	tMMOJindowin_BallData["CompoundReward"][3301294][1] = {}
	tMMOJindowin_BallData["CompoundReward"][3301294][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301294][1]["ItemChance"] = 3000
	tMMOJindowin_BallData["CompoundReward"][3301294][1]["Item_1"] = 3301295
	-- 30.00%	300点修行值
	tMMOJindowin_BallData["CompoundReward"][3301294][2] = {}
	tMMOJindowin_BallData["CompoundReward"][3301294][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301294][2]["ItemChance"] = 3000
	tMMOJindowin_BallData["CompoundReward"][3301294][2]["Item_1"] = 6
	tMMOJindowin_BallData["CompoundReward"][3301294][2]["Num"] = 300
	-- 30.00%	300点气力值
	tMMOJindowin_BallData["CompoundReward"][3301294][3] = {}
	tMMOJindowin_BallData["CompoundReward"][3301294][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301294][3]["ItemChance"] = 3000
	tMMOJindowin_BallData["CompoundReward"][3301294][3]["Item_1"] = 12
	tMMOJindowin_BallData["CompoundReward"][3301294][3]["Num"] = 300
	-- 10.00%	明亮星陨石
	tMMOJindowin_BallData["CompoundReward"][3301294][4] = {}
	tMMOJindowin_BallData["CompoundReward"][3301294][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BallData["CompoundReward"][3301294][4]["ItemChance"] = 1000
	tMMOJindowin_BallData["CompoundReward"][3301294][4]["Item_1"] = 3009001
	tMMOJindowin_BallData["CompoundReward"][3301294][4]["Num"] = 1
	tMMOJindowin_BallData["CompoundReward"][3301294][4]["NAttr"] = "0 1 0 2880 1"

-- 筋斗云奖励数据
local tMMOJindowin_BoxData = {}
	--每日奖励
	tMMOJindowin_BoxData[3301296] = {}
	tMMOJindowin_BoxData[3301296]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301296]["OpenAward"]["ExpTime"] = 100 --经验
	
	tMMOJindowin_BoxData[3301297] = {}
	tMMOJindowin_BoxData[3301297]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301297]["OpenAward"]["ExpTime"] = 200 --经验
	
	tMMOJindowin_BoxData[3301298] = {}
	tMMOJindowin_BoxData[3301298]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301298]["OpenAward"]["ExpTime"] = 300 --经验
	
	tMMOJindowin_BoxData[3301299] = {}
	tMMOJindowin_BoxData[3301299]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301299]["OpenAward"]["ExpTime"] = 400 --经验
	
	tMMOJindowin_BoxData[3301300] = {}
	tMMOJindowin_BoxData[3301300]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301300]["OpenAward"]["ExpTime"] = 500 --经验
	
	tMMOJindowin_BoxData[3301301] = {}
	tMMOJindowin_BoxData[3301301]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301301]["OpenAward"]["ExpTime"] = 600 --经验
	tMMOJindowin_BoxData[3301301]["NeedSpace"] = 1
	
	tMMOJindowin_BoxData[3301302] = {}
	tMMOJindowin_BoxData[3301302]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301302]["OpenAward"]["ExpTime"] = 700 --经验
	tMMOJindowin_BoxData[3301302]["NeedSpace"] = 1
	
	tMMOJindowin_BoxData[3301303] = {}
	tMMOJindowin_BoxData[3301303]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301303]["OpenAward"]["ExpTime"] = 800 --经验
	tMMOJindowin_BoxData[3301303]["NeedSpace"] = 1
	
	tMMOJindowin_BoxData[3301304] = {}
	tMMOJindowin_BoxData[3301304]["OpenAward"] = {}
	tMMOJindowin_BoxData[3301304]["OpenAward"]["Item"] = 3301295 --圣云灵*1
	tMMOJindowin_BoxData[3301304]["NeedSpace"] = 2
	
	--进阶奖励(天石)
	tMMOJindowin_BoxData[3301296]["NextAward"] = 0   --赠点天石
	tMMOJindowin_BoxData[3301297]["NextAward"] = 50   --赠点天石
	tMMOJindowin_BoxData[3301298]["NextAward"] = 100  --赠点天石
	tMMOJindowin_BoxData[3301299]["NextAward"] = 150  --赠点天石
	tMMOJindowin_BoxData[3301300]["NextAward"] = 200  --赠点天石
	tMMOJindowin_BoxData[3301301]["NextAward"] = 250  --赠点天石
	tMMOJindowin_BoxData[3301302]["NextAward"] = 300  --赠点天石
	tMMOJindowin_BoxData[3301303]["NextAward"] = 350  --赠点天石
	tMMOJindowin_BoxData[3301304]["NextAward"] = 400  --赠点天石
	
	-- 新增奖励 彩云碎片
	tMMOJindowin_BoxData[3301301]["ItemAdd_1"] = 3313136   --彩云碎片
	tMMOJindowin_BoxData[3301302]["ItemAdd_1"] = 3313136   --彩云碎片
	tMMOJindowin_BoxData[3301303]["ItemAdd_1"] = 3313136   --彩云碎片
	tMMOJindowin_BoxData[3301304]["ItemAdd_1"] = 3313136   --彩云碎片
	tMMOJindowin_BoxData[3301301]["NextAward_Attr1"] = "0 1"
	tMMOJindowin_BoxData[3301302]["NextAward_Attr1"] = "0 1"
	tMMOJindowin_BoxData[3301303]["NextAward_Attr1"] = "0 1"
	tMMOJindowin_BoxData[3301304]["NextAward_Attr1"] = "0 1"
	
	--喂养经验奖励（满级给经验一半的修行值）
	tMMOJindowin_BoxData["FeedExp"] = {}
	tMMOJindowin_BoxData["FeedExp"][0] = 0		-- 0次
	tMMOJindowin_BoxData["FeedExp"][1] = 50	-- 1-3次
	tMMOJindowin_BoxData["FeedExp"][4] = 100	-- 4-6次
	tMMOJindowin_BoxData["FeedExp"][7] = 150	-- 7-9次
	tMMOJindowin_BoxData["FeedExp"][10] = 200	-- 10次以上
	
	-- 喂养一次，获得对应积分点 
	tMMOJindowin_BoxData["MMOItem"] = 3301255
	tMMOJindowin_BoxData["FeedScore"] = {}
	tMMOJindowin_BoxData["FeedScore"][0] = 0
	tMMOJindowin_BoxData["FeedScore"][1] = 1
	tMMOJindowin_BoxData["FeedScore"][4] = 10
	tMMOJindowin_BoxData["FeedScore"][7] = 40
	tMMOJindowin_BoxData["FeedScore"][10] = 300

	--喂养随机奖励
	tMMOJindowin_BoxData["Feed"] = {}
	------- 1-3次 0转，1转
	tMMOJindowin_BoxData["Feed"][1] = {}
	tMMOJindowin_BoxData["Feed"][1][1] ={}
	tMMOJindowin_BoxData["Feed"][1][1]["ItemChanceSum"] = 10000
	--聚神丹（赠）  9%
	tMMOJindowin_BoxData["Feed"][1][1][1] = {}
	tMMOJindowin_BoxData["Feed"][1][1][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][1]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][1][1]["Item_1"] = 723700	
	tMMOJindowin_BoxData["Feed"][1][1][1]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][1][1]["NAttr"] = "0 0 3"
	-- 玄灵秘录（赠）*3	 9%
	tMMOJindowin_BoxData["Feed"][1][1][2] = {}
	tMMOJindowin_BoxData["Feed"][1][1][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][2]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][1][2]["Item_1"] = 723341	
	tMMOJindowin_BoxData["Feed"][1][1][2]["Num"] = 3
	tMMOJindowin_BoxData["Feed"][1][1][2]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][1][2]["NAttr"] = "0 3 3"
	-- 小祈愿石（赠） 9%
	tMMOJindowin_BoxData["Feed"][1][1][3] = {}
	tMMOJindowin_BoxData["Feed"][1][1][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][3]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][1][3]["Item_1"] = 1200000	
	tMMOJindowin_BoxData["Feed"][1][1][3]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][1][3]["NAttr"] = "0 0 3"
	-- 昆仑雪水（赠）	 9%
	tMMOJindowin_BoxData["Feed"][1][1][4] = {}
	tMMOJindowin_BoxData["Feed"][1][1][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][4]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][1][4]["Item_1"] = 723017	
	tMMOJindowin_BoxData["Feed"][1][1][4]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][1][4]["NAttr"] = "0 0 3"
	-- 流星卷	 0%
	tMMOJindowin_BoxData["Feed"][1][1][5] = {}
	tMMOJindowin_BoxData["Feed"][1][1][5]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][5]["ItemChance"] = 0
	tMMOJindowin_BoxData["Feed"][1][1][5]["Item_1"] = 720027	
	-- 彩云碎片	15%
	tMMOJindowin_BoxData["Feed"][1][1][6] = {}
	tMMOJindowin_BoxData["Feed"][1][1][6]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][6]["ItemChance"] = 1500
	tMMOJindowin_BoxData["Feed"][1][1][6]["Item_1"] = 3313136
	--  3009000 微光星陨石*1    45%
	tMMOJindowin_BoxData["Feed"][1][1][7] = {}
	tMMOJindowin_BoxData["Feed"][1][1][7]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][7]["ItemChance"] = 4500
	tMMOJindowin_BoxData["Feed"][1][1][7]["Item_1"] = 3009000
	tMMOJindowin_BoxData["Feed"][1][1][7]["NAttr"] = "0 1 0 2880 1"
	-- 记忆宝珠	4%
	tMMOJindowin_BoxData["Feed"][1][1][8] = {}
	tMMOJindowin_BoxData["Feed"][1][1][8]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][1][8]["ItemChance"] = 400
	tMMOJindowin_BoxData["Feed"][1][1][8]["Item_1"] = 720828	
	
	--------1-3次 2转以上
	tMMOJindowin_BoxData["Feed"][1][2] ={}
	tMMOJindowin_BoxData["Feed"][1][2]["ItemChanceSum"] = 10000
	--通神丹（赠） 9%
	tMMOJindowin_BoxData["Feed"][1][2][1] = {}
	tMMOJindowin_BoxData["Feed"][1][2][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][1]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][2][1]["Item_1"] = 3003125	
	tMMOJindowin_BoxData["Feed"][1][2][1]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][2][1]["NAttr"] = "0 0 3"
	-- 免费强炼丹（赠）	9%
	tMMOJindowin_BoxData["Feed"][1][2][2] = {}
	tMMOJindowin_BoxData["Feed"][1][2][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][2]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][2][2]["Item_1"] = 3003124	
	tMMOJindowin_BoxData["Feed"][1][2][2]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][2][2]["NAttr"] = "0 0 3"
	-- 究极通神丹（赠）	9%
	tMMOJindowin_BoxData["Feed"][1][2][3] = {}
	tMMOJindowin_BoxData["Feed"][1][2][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][3]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][2][3]["Item_1"] = 3003126	
	tMMOJindowin_BoxData["Feed"][1][2][3]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][1][2][3]["NAttr"] = "0 0 3"
	-- 流星卷	0%
	tMMOJindowin_BoxData["Feed"][1][2][4] = {}
	tMMOJindowin_BoxData["Feed"][1][2][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][4]["ItemChance"] = 0
	tMMOJindowin_BoxData["Feed"][1][2][4]["Item_1"] = 720027	
	-- 彩云碎片	15%
	tMMOJindowin_BoxData["Feed"][1][2][5] = {}
	tMMOJindowin_BoxData["Feed"][1][2][5]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][5]["ItemChance"] = 1500
	tMMOJindowin_BoxData["Feed"][1][2][5]["Item_1"] = 3313136	
	-- 3009000 微光星陨石*1    49%
	tMMOJindowin_BoxData["Feed"][1][2][6] = {}
	tMMOJindowin_BoxData["Feed"][1][2][6]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][6]["ItemChance"] = 4900
	tMMOJindowin_BoxData["Feed"][1][2][6]["Item_1"] = 3009000
	tMMOJindowin_BoxData["Feed"][1][2][6]["NAttr"] = "0 1 0 2880 1"
	-- 20气力	9%
	tMMOJindowin_BoxData["Feed"][1][2][7] = {}
	tMMOJindowin_BoxData["Feed"][1][2][7]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][1][2][7]["ItemChance"] = 900
	tMMOJindowin_BoxData["Feed"][1][2][7]["Item_1"] = 3006922
	
	------第4-6次喂养
	tMMOJindowin_BoxData["Feed"][4] = {}
	tMMOJindowin_BoxData["Feed"][4][1] ={}
	tMMOJindowin_BoxData["Feed"][4][1]["ItemChanceSum"] = 10000
	-- 50气力  20.00%   3006925	50点气力幸运包
	tMMOJindowin_BoxData["Feed"][4][1][1] = {}
	tMMOJindowin_BoxData["Feed"][4][1][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][1]["ItemChance"] = 2000
	tMMOJindowin_BoxData["Feed"][4][1][1]["Item_1"] = 3006925
	--  究极通神丹（赠）  2.50%
	tMMOJindowin_BoxData["Feed"][4][1][2] = {}
	tMMOJindowin_BoxData["Feed"][4][1][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][2]["ItemChance"] = 250
	tMMOJindowin_BoxData["Feed"][4][1][2]["Item_1"] = 3003126
	tMMOJindowin_BoxData["Feed"][4][1][2]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][4][1][2]["NAttr"] = "0 0 3"
	-- 彩云碎片  30.00%
	tMMOJindowin_BoxData["Feed"][4][1][3] = {}
	tMMOJindowin_BoxData["Feed"][4][1][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][3]["ItemChance"] = 3000
	tMMOJindowin_BoxData["Feed"][4][1][3]["Item_1"] = 3313136
	tMMOJindowin_BoxData["Feed"][4][1][3]["Zeng"] = 0
	tMMOJindowin_BoxData["Feed"][4][1][3]["Num"] = 1
	tMMOJindowin_BoxData["Feed"][4][1][3]["NAttr"] = "0 1"
	-- 通神丹*3（赠）  2.50%
	tMMOJindowin_BoxData["Feed"][4][1][4] = {}
	tMMOJindowin_BoxData["Feed"][4][1][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][4]["ItemChance"] = 250
	tMMOJindowin_BoxData["Feed"][4][1][4]["Item_1"] = 3003125
	tMMOJindowin_BoxData["Feed"][4][1][4]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][4][1][4]["Num"] = 3
	tMMOJindowin_BoxData["Feed"][4][1][4]["NAttr"] = "0 3 3"
	--  20赠品天石  5.00%  
	tMMOJindowin_BoxData["Feed"][4][1][5] = {}
	tMMOJindowin_BoxData["Feed"][4][1][5]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][5]["ItemChance"] = 500
	tMMOJindowin_BoxData["Feed"][4][1][5]["Item_1"] = 3008719
	-- 微光星陨石*3  3009000  30.00%
	tMMOJindowin_BoxData["Feed"][4][1][6] = {}
	tMMOJindowin_BoxData["Feed"][4][1][6]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][6]["ItemChance"] = 3000
	tMMOJindowin_BoxData["Feed"][4][1][6]["Item_1"] = 3009000
	tMMOJindowin_BoxData["Feed"][4][1][6]["Num"] = 3
	tMMOJindowin_BoxData["Feed"][4][1][6]["NAttr"] = "0 3 0 2880 1"
	--  明亮星陨石 3009001  10.00%
	tMMOJindowin_BoxData["Feed"][4][1][7] = {}
	tMMOJindowin_BoxData["Feed"][4][1][7]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][4][1][7]["ItemChance"] = 1000
	tMMOJindowin_BoxData["Feed"][4][1][7]["Item_1"] = 3009001
	tMMOJindowin_BoxData["Feed"][4][1][7]["NAttr"] = "0 1 0 2880 1"

	-------第7-9次 喂养
	tMMOJindowin_BoxData["Feed"][7] = {}
	tMMOJindowin_BoxData["Feed"][7][1] ={}
	tMMOJindowin_BoxData["Feed"][7][1]["ItemChanceSum"] = 10000
	-- 彩云碎片	45.0%        
	tMMOJindowin_BoxData["Feed"][7][1][1] = {}
	tMMOJindowin_BoxData["Feed"][7][1][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][1]["ItemChance"] = 4500
	tMMOJindowin_BoxData["Feed"][7][1][1]["Item_1"] = 3313136	
	--  200气力  25.00%  3001411
	tMMOJindowin_BoxData["Feed"][7][1][2] = {}
	tMMOJindowin_BoxData["Feed"][7][1][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][2]["ItemChance"] = 1500
	tMMOJindowin_BoxData["Feed"][7][1][2]["Item_1"] = 3001411
	tMMOJindowin_BoxData["Feed"][7][1][2]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][2]["NAttr"] = "0 1 3"
	-- 究极通神丹*3  2.50%
	tMMOJindowin_BoxData["Feed"][7][1][3] = {}
	tMMOJindowin_BoxData["Feed"][7][1][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][3]["ItemChance"] = 250
	tMMOJindowin_BoxData["Feed"][7][1][3]["Item_1"] = 3003126
	tMMOJindowin_BoxData["Feed"][7][1][3]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][3]["Num"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][3]["NAttr"] = "0 3 3"
	-- 免费强炼丹*10  5.00%
	tMMOJindowin_BoxData["Feed"][7][1][4] = {}
	tMMOJindowin_BoxData["Feed"][7][1][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][4]["ItemChance"] = 500
	tMMOJindowin_BoxData["Feed"][7][1][4]["Item_1"] = 3003124
	tMMOJindowin_BoxData["Feed"][7][1][4]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][4]["Num"] = 10
	tMMOJindowin_BoxData["Feed"][7][1][4]["NAttr"] = "0 10 3"
	-- 通神丹*10  2.50%
	tMMOJindowin_BoxData["Feed"][7][1][5] = {}
	tMMOJindowin_BoxData["Feed"][7][1][5]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][5]["ItemChance"] = 250
	tMMOJindowin_BoxData["Feed"][7][1][5]["Item_1"] = 3003125
	tMMOJindowin_BoxData["Feed"][7][1][5]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][5]["Num"] = 10
	tMMOJindowin_BoxData["Feed"][7][1][5]["NAttr"] = "0 10 3"
	-- 100点赠品天石  5.00%
	tMMOJindowin_BoxData["Feed"][7][1][6] = {}
	tMMOJindowin_BoxData["Feed"][7][1][6]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][6]["ItemChance"] = 500
	tMMOJindowin_BoxData["Feed"][7][1][6]["Item_1"] = 3008720
	--  明亮星陨石  3009001  20.00%
	tMMOJindowin_BoxData["Feed"][7][1][7] = {}
	tMMOJindowin_BoxData["Feed"][7][1][7]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][7]["ItemChance"] = 2000
	tMMOJindowin_BoxData["Feed"][7][1][7]["Item_1"] = 3009001
	tMMOJindowin_BoxData["Feed"][7][1][7]["NAttr"] = "0 1 0 2880 1"
	-- 天道酬勤卷轴	 2.00%
	tMMOJindowin_BoxData["Feed"][7][1][8] = {}
	tMMOJindowin_BoxData["Feed"][7][1][8]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][8]["ItemChance"] = 200
	tMMOJindowin_BoxData["Feed"][7][1][8]["Item_1"] = 3001407
	tMMOJindowin_BoxData["Feed"][7][1][8]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][8]["NAttr"] = "0 1 3"
	-- 造化天书	3.00%
	tMMOJindowin_BoxData["Feed"][7][1][9] = {}
	tMMOJindowin_BoxData["Feed"][7][1][9]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][7][1][9]["ItemChance"] = 300
	tMMOJindowin_BoxData["Feed"][7][1][9]["Item_1"] = 723342
	tMMOJindowin_BoxData["Feed"][7][1][9]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][7][1][9]["NAttr"] = "0 1 3"
	
	-----10次以上喂养
	tMMOJindowin_BoxData["Feed"][10] = {}
	tMMOJindowin_BoxData["Feed"][10][1] ={}
	tMMOJindowin_BoxData["Feed"][10][1]["ItemChanceSum"] = 10000
	--  彩云碎片  3313136  50.00%
	tMMOJindowin_BoxData["Feed"][10][1][1] = {}
	tMMOJindowin_BoxData["Feed"][10][1][1]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][1]["ItemChance"] = 5000
	tMMOJindowin_BoxData["Feed"][10][1][1]["Item_1"] =  3313136
	--  1000气力  20.00%  3001036
	tMMOJindowin_BoxData["Feed"][10][1][2] = {}
	tMMOJindowin_BoxData["Feed"][10][1][2]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][2]["ItemChance"] = 2000
	tMMOJindowin_BoxData["Feed"][10][1][2]["Item_1"] =  3001036	
	tMMOJindowin_BoxData["Feed"][10][1][2]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][10][1][2]["NAttr"] = "0 1 3"
	--  八宝护气丹   0.00%
	tMMOJindowin_BoxData["Feed"][10][1][3] = {}
	tMMOJindowin_BoxData["Feed"][10][1][3]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][3]["ItemChance"] = 0
	tMMOJindowin_BoxData["Feed"][10][1][3]["Item_1"] = 3005360	
	--  究极通神丹*30   2.00%
	tMMOJindowin_BoxData["Feed"][10][1][4] = {}
	tMMOJindowin_BoxData["Feed"][10][1][4]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][4]["ItemChance"] = 200
	tMMOJindowin_BoxData["Feed"][10][1][4]["Item_1"] = 3003126
	tMMOJindowin_BoxData["Feed"][10][1][4]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][10][1][4]["Num"] = 30
	tMMOJindowin_BoxData["Feed"][10][1][4]["NAttr"] = "0 30 3"
	--   免费强炼丹*100  5.00%
	tMMOJindowin_BoxData["Feed"][10][1][5] = {}
	tMMOJindowin_BoxData["Feed"][10][1][5]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][5]["ItemChance"] = 500
	tMMOJindowin_BoxData["Feed"][10][1][5]["Item_1"] = 3003124
	tMMOJindowin_BoxData["Feed"][10][1][5]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][10][1][5]["Num"] = 100
	tMMOJindowin_BoxData["Feed"][10][1][5]["NAttr"] = "0 100 3"
	--  通神丹*100  2.50%
	tMMOJindowin_BoxData["Feed"][10][1][6] = {}
	tMMOJindowin_BoxData["Feed"][10][1][6]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][6]["ItemChance"] = 250
	tMMOJindowin_BoxData["Feed"][10][1][6]["Item_1"] =  3003125	
	tMMOJindowin_BoxData["Feed"][10][1][6]["Num"] = 100
	tMMOJindowin_BoxData["Feed"][10][1][6]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][10][1][6]["NAttr"] = "0 100 3"
	--  500点赠品天石   5.00%
	tMMOJindowin_BoxData["Feed"][10][1][7] = {}
	tMMOJindowin_BoxData["Feed"][10][1][7]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][7]["ItemChance"] = 500
	tMMOJindowin_BoxData["Feed"][10][1][7]["Item_1"] =  3008721	
	--   晶莹星陨石  3009002  15.00%
	tMMOJindowin_BoxData["Feed"][10][1][8] = {}
	tMMOJindowin_BoxData["Feed"][10][1][8]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][8]["ItemChance"] = 1500
	tMMOJindowin_BoxData["Feed"][10][1][8]["Item_1"] =  3009002	
	tMMOJindowin_BoxData["Feed"][10][1][8]["NAttr"] = "0 1 0 2880 1"
	-- 固化石 0.50%
	tMMOJindowin_BoxData["Feed"][10][1][9] = {}
	tMMOJindowin_BoxData["Feed"][10][1][9]["RandomItemChanceType"] = 2
	tMMOJindowin_BoxData["Feed"][10][1][9]["ItemChance"] = 50
	tMMOJindowin_BoxData["Feed"][10][1][9]["Item_1"] =  723694	
	tMMOJindowin_BoxData["Feed"][10][1][9]["Zeng"] = 3
	tMMOJindowin_BoxData["Feed"][10][1][9]["NAttr"] = "0 1 3"
	
------怪物掉落数据------------
local tMMOJindowin_MonsterDropData = {}
	-- 云灵荒兽
	tMMOJindowin_MonsterDropData[4250] = {}
	-- 彩云灵
	tMMOJindowin_MonsterDropData[4250]["ItemId"] = 3301292
	--总概率10000
	tMMOJindowin_MonsterDropData[4250]["ItemChanceSum"] = 10000
	--掉落概率
	tMMOJindowin_MonsterDropData[4250]["Chance"] = 1000
	--组队每增加1人 概率提高基数
	tMMOJindowin_MonsterDropData[4250]["OneChance"] = 50
	
	-- 缥缈宝箱
	tMMOJindowin_MonsterDropData[19800] = {}
	tMMOJindowin_MonsterDropData[19800]["ItemChanceSum"] = 10000
	-- 彩云灵 75%
	tMMOJindowin_MonsterDropData[19800][1] = {}
	tMMOJindowin_MonsterDropData[19800][1]["RandomItemChanceType"] = 2
	tMMOJindowin_MonsterDropData[19800][1]["ItemChance"] = 7500
	tMMOJindowin_MonsterDropData[19800][1]["Item_1"] =  3301292
	-- 仙云灵 24%
	tMMOJindowin_MonsterDropData[19800][2] = {}
	tMMOJindowin_MonsterDropData[19800][2]["RandomItemChanceType"] = 2
	tMMOJindowin_MonsterDropData[19800][2]["ItemChance"] = 2400
	tMMOJindowin_MonsterDropData[19800][2]["Item_1"] =  3301293
	-- 神云灵 1%
	tMMOJindowin_MonsterDropData[19800][3] = {}
	tMMOJindowin_MonsterDropData[19800][3]["RandomItemChanceType"] = 2
	tMMOJindowin_MonsterDropData[19800][3]["ItemChance"] = 100
	tMMOJindowin_MonsterDropData[19800][3]["Item_1"] =  3301294

	tMMOJindowin_MonsterDropData["Monster"] = {}
	tMMOJindowin_MonsterDropData["Monster"]["Bird"] = 4250
	tMMOJindowin_MonsterDropData["Monster"]["mineral"] = 19800
	
	-- ===怪物掉落万能云灵
	-- ===索引: tMMOJindowin_MonsterDropData[1]
	tMMOJindowin_MonsterDropData[1] = {}
	tMMOJindowin_MonsterDropData[1]["LogId"] = 12000545
	-- 万能云灵-- 【自身概率】 - 1%
	tMMOJindowin_MonsterDropData[1][1] = {}
	tMMOJindowin_MonsterDropData[1][1]["RandomItemChanceType"] = 3
	tMMOJindowin_MonsterDropData[1][1]["ItemSelfChanceSum"] = 10000
	tMMOJindowin_MonsterDropData[1][1]["ItemChance"] = 100
	tMMOJindowin_MonsterDropData[1][1]["RewardItem"] = {}
	tMMOJindowin_MonsterDropData[1][1]["RewardItem"][1] = {}
	tMMOJindowin_MonsterDropData[1][1]["RewardItem"][1]["Id"] = 3313137 -- 【库】万能云灵[属性:9], 【表格】万能云灵
	tMMOJindowin_MonsterDropData[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 万能云灵*1
	tMMOJindowin_MonsterDropData[1][1]["RewardEffect"] = {}
	tMMOJindowin_MonsterDropData[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_MonsterDropData[1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（199,78）】1天（零点重置）1个, 最多可获得:（10）
	tMMOJindowin_MonsterDropData[1][1]["EventType"] = 199
	tMMOJindowin_MonsterDropData[1][1]["DataType"] = 78
	tMMOJindowin_MonsterDropData[1][1]["RewardDelay"] = 1
	tMMOJindowin_MonsterDropData[1][1]["RewardTimeType"] = 4
	tMMOJindowin_MonsterDropData[1][1]["RewardData"] = 10
	
local tMMOJindowin_GhostTask = {}
	tMMOJindowin_GhostTask["Ghost"] = 3
	tMMOJindowin_GhostTask["TaskId"] = 2375
	tMMOJindowin_GhostTask["EventType"] = 108
	tMMOJindowin_GhostTask["DataType"] = 57
	
local tMMOJindowin_GhostLimit = {}
	tMMOJindowin_GhostLimit[729611] = 2500
	tMMOJindowin_GhostLimit[729612] = 2000
	tMMOJindowin_GhostLimit[729613] = 1500
	tMMOJindowin_GhostLimit[729614] = 1000
	tMMOJindowin_GhostLimit[729703] = 500
	
local tMMOJindowin_Item = {}
	tMMOJindowin_Item[1] = 729611
	tMMOJindowin_Item[2] = 729612
	tMMOJindowin_Item[3] = 729613
	tMMOJindowin_Item[4] = 729614
	tMMOJindowin_Item[5] = 729703

--Log说明	
local tMMOJindowin_Log = {}
	-- 领取本服排行奖励
	tMMOJindowin_Log["LocalRank"] = "0,0,0,0,12000545,2[%d],200449,1"
	-- 补领筋斗云
	tMMOJindowin_Log["ReGetBox"] = "0,0,0,0,12000545,2[4],%d,1"
	-- 领取筋斗云每日奖励
	tMMOJindowin_Log["DayReward"] = "0,0,0,0,12000545,2[5],%d,%d"
	-- 喂养奖励(消耗天石或者云灵)
	-- tMMOJindowin_Log["FeedReward"] = "%d,0,%d,%d,12000545,2[6],%d[%d][3301255],%d[%d][%d]"
	-- 喂养奖励(消耗天石或者云灵)  去掉经验奖励
	-- tMMOJindowin_Log["FeedReward"] = "%d,0,%d,%d,12000545,2[6],%d[3301255],%d[%d]"
	tMMOJindowin_Log["FeedReward"] = "%d,0,%d,%d,12000545,2[6],%d,%d"
	-- 消耗云灵合成下一级云灵，以及奖励
	tMMOJindowin_Log["CompoundBall"] = "0,0,%d,9,12000545,2[7],%d,%d"
	-- 阶段奖励
	-- 喂到第一阶段
	tMMOJindowin_Log[3301296] = "0,0,0,0,12000545,1[1],%d[3],1[%d]"
	-- 喂到第二阶段
	tMMOJindowin_Log[3301297] = "0,0,0,0,12000545,1[2],%d[3],1[%d]"
	-- 喂到第三阶段
	tMMOJindowin_Log[3301298] = "0,0,0,0,12000545,1[3],%d[3],1[%d]"
	-- 喂到第四阶段
	tMMOJindowin_Log[3301299] = "0,0,0,0,12000545,1[4],%d[3],1[%d]"
	-- 喂到第五阶段
	tMMOJindowin_Log[3301300] = "0,0,0,0,12000545,1[5],%d[3],1[%d]"
	-- 喂到第六阶段
	tMMOJindowin_Log[3301301] = "0,0,0,0,12000545,1[6],%d[3][3313136],1[%d][1]"
	-- 喂到第七阶段
	tMMOJindowin_Log[3301302] = "0,0,0,0,12000545,1[7],%d[3][3313136],1[%d][1]"
	-- 喂到第八阶段
	tMMOJindowin_Log[3301303] = "0,0,0,0,12000545,1[8],%d[3][3313136],1[%d][1]"
	-- 喂到第九阶段
	tMMOJindowin_Log[3301304] = "0,0,0,0,12000545,1[9],%d[3][3313136],1[%d][1]"
	-- 过期删除物品log
	tMMOJindowin_Log["DelItem"] = "0,0,%d,%d,12000545,2,0,0"
	
--EmoneyLog说明
local tMMOJindowin_EmoneyLog = {}
	-- 每天从筋斗云领取基础奖励	350 20101
	tMMOJindowin_EmoneyLog["DayReward"] = "350	20101	0	0	1	"
	
	-- 用云灵喂养
	tMMOJindowin_EmoneyLog["BallFeed"] = {}
	tMMOJindowin_EmoneyLog["BallFeed"][3301292] = "350	20102	0	0	1	"
	tMMOJindowin_EmoneyLog["BallFeed"][3301293] = "350	20103	0	0	1	"
	tMMOJindowin_EmoneyLog["BallFeed"][3301294] = "350	20104	0	0	1	"
	tMMOJindowin_EmoneyLog["BallFeed"][3301295] = "350	20105	0	0	1	"
	
	-- 筋斗云喂养阶段
	tMMOJindowin_EmoneyLog["Box"] = {}
	tMMOJindowin_EmoneyLog["Box"][3301296] = "350	20106	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301297] = "350	20107	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301298] = "350	20108	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301299] = "350	20109	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301300] = "350	20110	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301301] = "350	20111	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301302] = "350	20112	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301303] = "350	20113	0	0	1	"
	tMMOJindowin_EmoneyLog["Box"][3301304] = "350	20114	0	0	1	"
	
	tMMOJindowin_EmoneyLog["TsBall"] = {}
	-- 用天石代替彩云灵
	tMMOJindowin_EmoneyLog["TsBall"][1] = "350	20115	1	1	1	"
	-- 用天石代替仙云灵
	tMMOJindowin_EmoneyLog["TsBall"][9] = "350	20116	9	9	1	"
	-- 用天石代替神云灵
	tMMOJindowin_EmoneyLog["TsBall"][39] = "350	20117	39	39	1	"
	-- 用天石代替圣云灵
	tMMOJindowin_EmoneyLog["TsBall"][299] = "350	20118	299	299	1	"
	
	-- 记录免费产出的云灵
	tMMOJindowin_EmoneyLog["Free"] = {}
	tMMOJindowin_EmoneyLog["Free"][3301292] = "350	20130	0	0	1	"
	tMMOJindowin_EmoneyLog["Free"][3301293] = "350	20131	0	0	1	"
	tMMOJindowin_EmoneyLog["Free"][3301294] = "350	20132	0	0	1	"
	tMMOJindowin_EmoneyLog["Free"][3301295] = "350	20133	0	0	1	"
	
local sMMOJindowin_Effect = "angelwing"  		--领取奖励/获得云灵
local sMMOJindowin_EffectComBall = "zf2-e280" 	--合成云灵
local sMMOJindowin_EffectFeed = "eidolon"		--喂养筋斗云
local sMMOJindowin_EffectGrow = "zf2-e300"		--筋斗云升级
local sMMOJindowin_EffectMoveGo = "movego" 		--进入彩云城。光效
local sMMOJindowin_EffectMoveBack = "moveback" 	--离开彩云城光效

local tMMOJindowin_RewardItem = {}
	-- ===彩云碎片
	-- ===索引: tMMOJindowin_RewardItem[3313136]
	tMMOJindowin_RewardItem[3313136] = {}
	tMMOJindowin_RewardItem[3313136]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313136]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313136]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313136]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3313136]["RewardItem"][1]["Attr"] = "0 1" -- 彩云碎片*1
	tMMOJindowin_RewardItem[3313136]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313136]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313136]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313137] = {}
	-- ===万能云灵
	-- ===索引: tMMOJindowin_RewardItem[3313137]
	-- ===删除:3313137,1
	tMMOJindowin_RewardItem[3313137]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMMOJindowin_RewardItem[3313137]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313137]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313137]["DeleteItem"][1]["Id"] = 3313137 -- 【库】万能云灵[属性:9]
	tMMOJindowin_RewardItem[3313137]["LogId"] = 12000545
	-- 彩云灵 - 90.00%
	tMMOJindowin_RewardItem[3313137][1] = {}
	tMMOJindowin_RewardItem[3313137][1]["RandomItemChanceType"] = 2
	tMMOJindowin_RewardItem[3313137][1]["ItemChance"] = 9000
	tMMOJindowin_RewardItem[3313137][1]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313137][1]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313137][1]["RewardItem"][1]["Id"] = 3301292 -- 【库】彩云灵[属性:9], 【表格】彩云灵
	tMMOJindowin_RewardItem[3313137][1]["RewardItem"][1]["Attr"] = "0 1" -- 彩云灵*1
	tMMOJindowin_RewardItem[3313137][1]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313137][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313137][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 仙云灵 - 10.00%
	tMMOJindowin_RewardItem[3313137][2] = {}
	tMMOJindowin_RewardItem[3313137][2]["RandomItemChanceType"] = 2
	tMMOJindowin_RewardItem[3313137][2]["ItemChance"] = 1000
	tMMOJindowin_RewardItem[3313137][2]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313137][2]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313137][2]["RewardItem"][1]["Id"] = 3301293 -- 【库】仙云灵[属性:9], 【表格】仙云灵
	tMMOJindowin_RewardItem[3313137][2]["RewardItem"][1]["Attr"] = "0 1" -- 仙云灵*1
	tMMOJindowin_RewardItem[3313137][2]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313137][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313137][2]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313148] = {}
	-- ===赤霄火云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313148]
	-- ===删除:3313148,1
	tMMOJindowin_RewardItem[3313148]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313148]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313148]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313148]["DeleteItem"][1]["Id"] = 3313148 -- 【库】赤霄火云【恢复中】[属性:9]
	tMMOJindowin_RewardItem[3313148]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313148]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313148]["RewardItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0], 【表格】赤霄火云
	tMMOJindowin_RewardItem[3313148]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑赤霄火云*1
	tMMOJindowin_RewardItem[3313148]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313148]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313148]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313149] = {}
	-- ===赤霄火云【恢复中】（赠）
	-- ===索引: tMMOJindowin_RewardItem[3313149]
	-- ===删除:3313149,1
	tMMOJindowin_RewardItem[3313149]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313149]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313149]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313149]["DeleteItem"][1]["Id"] = 3313149 -- 【库】赤霄火云【恢复中】（赠）[属性:9]
	tMMOJindowin_RewardItem[3313149]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313149]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313149]["RewardItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0], 【表格】赤霄火云（赠）
	tMMOJindowin_RewardItem[3313149]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑赤霄火云（赠）*1
	tMMOJindowin_RewardItem[3313149]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313149]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313149]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313150] = {}
	-- ===蓝海苍云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313150]
	-- ===删除:3313150,1
	tMMOJindowin_RewardItem[3313150]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313150]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313150]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313150]["DeleteItem"][1]["Id"] = 3313150 -- 【库】蓝海苍云【恢复中】[属性:9]
	tMMOJindowin_RewardItem[3313150]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313150]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313150]["RewardItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0], 【表格】蓝海苍云
	tMMOJindowin_RewardItem[3313150]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑蓝海苍云*1
	tMMOJindowin_RewardItem[3313150]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313150]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313150]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313151] = {}
	-- ===蓝海苍云【恢复中】（赠）
	-- ===索引: tMMOJindowin_RewardItem[3313151]
	-- ===删除:3313151,1
	tMMOJindowin_RewardItem[3313151]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313151]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313151]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313151]["DeleteItem"][1]["Id"] = 3313151 -- 【库】蓝海苍云【恢复中】（赠）[属性:9]
	tMMOJindowin_RewardItem[3313151]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313151]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313151]["RewardItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0], 【表格】蓝海苍云（赠）
	tMMOJindowin_RewardItem[3313151]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑蓝海苍云（赠）*1
	tMMOJindowin_RewardItem[3313151]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313151]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313151]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313152] = {}
	-- ===流金翔云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313152]
	-- ===删除:3313152,1
	tMMOJindowin_RewardItem[3313152]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313152]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313152]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313152]["DeleteItem"][1]["Id"] = 3313152 -- 【库】流金祥云【恢复中】[属性:9]
	tMMOJindowin_RewardItem[3313152]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313152]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313152]["RewardItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0], 【表格】流金翔云
	tMMOJindowin_RewardItem[3313152]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑流金祥云*1
	tMMOJindowin_RewardItem[3313152]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313152]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313152]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313153] = {}
	-- ===流金翔云【恢复中】（赠）
	-- ===索引: tMMOJindowin_RewardItem[3313153]
	-- ===删除:3313153,1
	tMMOJindowin_RewardItem[3313153]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313153]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313153]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313153]["DeleteItem"][1]["Id"] = 3313153 -- 【库】流金祥云【恢复中】（赠）[属性:9]
	tMMOJindowin_RewardItem[3313153]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313153]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313153]["RewardItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0], 【表格】流金翔云（赠）
	tMMOJindowin_RewardItem[3313153]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑流金祥云（赠）*1
	tMMOJindowin_RewardItem[3313153]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313153]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313153]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313039] = {}
	-- ===九天凌云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313039]
	-- ===删除:3313039,1
	tMMOJindowin_RewardItem[3313039]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313039]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313039]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313039]["DeleteItem"][1]["Id"] = 3313039 -- 【库】九天凌云【恢复中】[属性:9]
	tMMOJindowin_RewardItem[3313039]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313039]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313039]["RewardItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0], 【表格】九天凌云
	tMMOJindowin_RewardItem[3313039]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑九天凌云*1
	tMMOJindowin_RewardItem[3313039]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313039]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313154] = {}
	-- ===九天凌云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313154]
	-- ===删除:3313154,1
	tMMOJindowin_RewardItem[3313154]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313154]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313154]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313154]["DeleteItem"][1]["Id"] = 3313154 -- 【库】九天凌云【恢复中】（赠）[属性:9]
	tMMOJindowin_RewardItem[3313154]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313154]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313154]["RewardItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0], 【表格】九天凌云（赠）
	tMMOJindowin_RewardItem[3313154]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑九天凌云（赠）*1
	tMMOJindowin_RewardItem[3313154]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313154]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313154]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313040] = {}
	-- ===紫樱流云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313040]
	-- ===删除:3313040,1
	tMMOJindowin_RewardItem[3313040]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313040]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313040]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313040]["DeleteItem"][1]["Id"] = 3313040 -- 【库】 3313040 【库里没有该物品】[属性:]
	tMMOJindowin_RewardItem[3313040]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313040]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313040]["RewardItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0], 【表格】紫樱流云
	tMMOJindowin_RewardItem[3313040]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑紫樱流云*1
	tMMOJindowin_RewardItem[3313040]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313040]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313040]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313155] = {}
	-- ===紫樱流云【恢复中】
	-- ===索引: tMMOJindowin_RewardItem[3313155]
	-- ===删除:3313155,1
	tMMOJindowin_RewardItem[3313155]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313155]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313155]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313155]["DeleteItem"][1]["Id"] = 3313155 -- 【库】紫樱流云【恢复中】（赠）[属性:9]
	tMMOJindowin_RewardItem[3313155]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313155]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313155]["RewardItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0], 【表格】紫樱流云（赠）
	tMMOJindowin_RewardItem[3313155]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑紫樱流云（赠）*1
	tMMOJindowin_RewardItem[3313155]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313155]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313155]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][200613]
	-- ===删除:3322224,1
	tMMOJindowin_RewardItem[3322224][200613] = {}
	tMMOJindowin_RewardItem[3322224][200613]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][200613]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3322224][200613]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200613]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_RewardItem[3322224][200613]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][200613]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200613]["RewardItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0], 【表格】赤霄火云（赠）
	tMMOJindowin_RewardItem[3322224][200613]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑赤霄火云（赠）*1
	tMMOJindowin_RewardItem[3322224][200613]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][200613]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][200613]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][200614] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][200614]
	-- ===删除:3322224,1
	tMMOJindowin_RewardItem[3322224][200614]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][200614]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3322224][200614]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200614]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_RewardItem[3322224][200614]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][200614]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200614]["RewardItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0], 【表格】蓝海苍云（赠）
	tMMOJindowin_RewardItem[3322224][200614]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑蓝海苍云（赠）*1
	tMMOJindowin_RewardItem[3322224][200614]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][200614]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][200614]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][200629] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][200629]
	-- ===删除:3322224,1
	tMMOJindowin_RewardItem[3322224][200629]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][200629]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3322224][200629]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200629]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_RewardItem[3322224][200629]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][200629]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200629]["RewardItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0], 【表格】流金翔云（赠）
	tMMOJindowin_RewardItem[3322224][200629]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑流金祥云（赠）*1
	tMMOJindowin_RewardItem[3322224][200629]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][200629]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][200629]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][200648] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][200648]
	-- ===删除:3322224,1
	tMMOJindowin_RewardItem[3322224][200648]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][200648]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3322224][200648]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200648]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_RewardItem[3322224][200648]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][200648]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200648]["RewardItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0], 【表格】九天凌云（赠）
	tMMOJindowin_RewardItem[3322224][200648]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑九天凌云（赠）*1
	tMMOJindowin_RewardItem[3322224][200648]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][200648]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][200648]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][200649] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][200649]
	-- ===删除:3322224,1
	tMMOJindowin_RewardItem[3322224][200649]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][200649]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3322224][200649]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200649]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_RewardItem[3322224][200649]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][200649]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][200649]["RewardItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0], 【表格】紫樱流云（赠）
	tMMOJindowin_RewardItem[3322224][200649]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑紫樱流云（赠）*1
	tMMOJindowin_RewardItem[3322224][200649]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][200649]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][200649]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][1] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][1]
	tMMOJindowin_RewardItem[3322224][1]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][1]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][1]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][1]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][1]["RewardItem"][1]["Attr"] = "0 1" -- 彩云碎片*1
	tMMOJindowin_RewardItem[3322224][1]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][5] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][5]
	tMMOJindowin_RewardItem[3322224][5]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][5]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][5]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][5]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][5]["RewardItem"][1]["Attr"] = "0 5" -- 彩云碎片*5
	tMMOJindowin_RewardItem[3322224][5]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][5]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][10] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][10]
	tMMOJindowin_RewardItem[3322224][10]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][10]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][10]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][10]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][10]["RewardItem"][1]["Attr"] = "0 10" -- 彩云碎片*10
	tMMOJindowin_RewardItem[3322224][10]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][10]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][15] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][15]
	tMMOJindowin_RewardItem[3322224][15]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][15]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][15]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][15]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][15]["RewardItem"][1]["Attr"] = "0 15" -- 彩云碎片*15
	tMMOJindowin_RewardItem[3322224][15]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][15]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][20] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][20]
	tMMOJindowin_RewardItem[3322224][20]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][20]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][20]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][20]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][20]["RewardItem"][1]["Attr"] = "0 15" -- 彩云碎片*15
	tMMOJindowin_RewardItem[3322224][20]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][20]["RewardEffect"]["Effect"] = "angelwing"

	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][25]
	tMMOJindowin_RewardItem[3322224][25] = {}
	tMMOJindowin_RewardItem[3322224][25]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][25]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][25]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][25]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][25]["RewardItem"][1]["Attr"] = "0 25" -- 彩云碎片*25
	tMMOJindowin_RewardItem[3322224][25]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][25]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3322224][30] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_RewardItem[3322224][30]
	tMMOJindowin_RewardItem[3322224][30]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3322224][30]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3322224][30]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3322224][30]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem[3322224][30]["RewardItem"][1]["Attr"] = "0 30" -- 彩云碎片*30
	tMMOJindowin_RewardItem[3322224][30]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3322224][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3322224][30]["RewardEffect"]["Effect"] = "angelwing"

	-- ===赤霄火云
	-- ===索引: tMMOJindowin_RewardItem[3313223]
	-- ===删除:3313223,1
	tMMOJindowin_RewardItem[3313223] = {}
	tMMOJindowin_RewardItem[3313223]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313223]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313223]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313223]["DeleteItem"][1]["Id"] = 3313223 -- 【库】赤霄火云[属性:0]
	tMMOJindowin_RewardItem[3313223]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313223]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313223]["RewardItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0], 【表格】赤霄火云
	tMMOJindowin_RewardItem[3313223]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑赤霄火云*1
	tMMOJindowin_RewardItem[3313223]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313223]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313223]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313224] = {}
	-- ===蓝海苍云
	-- ===索引: tMMOJindowin_RewardItem[3313224]
	-- ===删除:3313224,1
	tMMOJindowin_RewardItem[3313224]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313224]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313224]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313224]["DeleteItem"][1]["Id"] = 3313224 -- 【库】蓝海苍云[属性:0]
	tMMOJindowin_RewardItem[3313224]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313224]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313224]["RewardItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0], 【表格】蓝海苍云
	tMMOJindowin_RewardItem[3313224]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑蓝海苍云*1
	tMMOJindowin_RewardItem[3313224]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313224]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313224]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313225] = {}
	-- ===九天凌云
	-- ===索引: tMMOJindowin_RewardItem[3313225]
	-- ===删除:3313225,1
	tMMOJindowin_RewardItem[3313225]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313225]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313225]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313225]["DeleteItem"][1]["Id"] = 3313225 -- 【库】九天凌云[属性:0]
	tMMOJindowin_RewardItem[3313225]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313225]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313225]["RewardItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0], 【表格】九天凌云
	tMMOJindowin_RewardItem[3313225]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑九天凌云*1
	tMMOJindowin_RewardItem[3313225]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313225]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313225]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_RewardItem[3313226] = {}
	-- ===紫樱流云
	-- ===索引: tMMOJindowin_RewardItem[3313226]
	-- ===删除:3313226,1
	tMMOJindowin_RewardItem[3313226]["LogId"] = 12000545
	tMMOJindowin_RewardItem[3313226]["DeleteItem"] = {}
	tMMOJindowin_RewardItem[3313226]["DeleteItem"][1] = {}
	tMMOJindowin_RewardItem[3313226]["DeleteItem"][1]["Id"] = 3313226 -- 【库】紫樱流云[属性:0]
	tMMOJindowin_RewardItem[3313226]["RewardItem"] = {}
	tMMOJindowin_RewardItem[3313226]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem[3313226]["RewardItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0], 【表格】紫樱流云
	tMMOJindowin_RewardItem[3313226]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑紫樱流云*1
	tMMOJindowin_RewardItem[3313226]["RewardEffect"] = {}
	tMMOJindowin_RewardItem[3313226]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem[3313226]["RewardEffect"]["Effect"] = "angelwing"
	
	tMMOJindowin_RewardItem["Daily"] = {}
	-- ===每日六阶以上领取彩云碎片
	tMMOJindowin_RewardItem["Daily"]["LogId"] = 12000545
	tMMOJindowin_RewardItem["Daily"]["RewardItem"] = {}
	tMMOJindowin_RewardItem["Daily"]["RewardItem"][1] = {}
	tMMOJindowin_RewardItem["Daily"]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_RewardItem["Daily"]["RewardItem"][1]["Attr"] = "0 1" -- 彩云碎片*1
	tMMOJindowin_RewardItem["Daily"]["RewardEffect"] = {}
	tMMOJindowin_RewardItem["Daily"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_RewardItem["Daily"]["RewardEffect"]["Effect"] = "angelwing"

local tMMOJindowin_Mix = {}
	-- ===合成七彩祥云
	-- ===索引: tMMOJindowin_Mix[1]
	tMMOJindowin_Mix[1] = {}
	tMMOJindowin_Mix[1]["LogId"] = 12000545
	tMMOJindowin_Mix[1]["RewardItem"] = {}
	tMMOJindowin_Mix[1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[1]["RewardItem"][1]["Id"] = 200650 -- 【库】七彩祥云[属性:0], 【表格】七彩祥云
	tMMOJindowin_Mix[1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑七彩祥云*1
	tMMOJindowin_Mix[1]["RewardEffect"] = {}
	tMMOJindowin_Mix[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200648] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200648][1]
	-- ===删除:200648,1
	tMMOJindowin_Mix[200648][1] = {}
	tMMOJindowin_Mix[200648][1]["LogId"] = 12000545
	tMMOJindowin_Mix[200648][1]["DeleteItem"] = {}
	tMMOJindowin_Mix[200648][1]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200648][1]["DeleteItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0]
	tMMOJindowin_Mix[200648][1]["DeleteItem"][1]["Monopoly"] = 0
	tMMOJindowin_Mix[200648][1]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200648][1]["RewardItem"] = {}
	tMMOJindowin_Mix[200648][1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200648][1]["RewardItem"][1]["Id"] = 3313039 -- 【库】九天凌云【恢复中】[属性:9], 【表格】九天凌云【恢复中】
	tMMOJindowin_Mix[200648][1]["RewardItem"][1]["Attr"] = "0 1" -- 九天凌云【恢复中】*1
	tMMOJindowin_Mix[200648][1]["RewardEffect"] = {}
	tMMOJindowin_Mix[200648][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200648][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200648][2] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200648][2]
	-- ===删除:200648,1
	tMMOJindowin_Mix[200648][2]["LogId"] = 12000545
	tMMOJindowin_Mix[200648][2]["DeleteItem"] = {}
	tMMOJindowin_Mix[200648][2]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200648][2]["DeleteItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0]
	tMMOJindowin_Mix[200648][2]["DeleteItem"][1]["Monopoly"] = 2
	tMMOJindowin_Mix[200648][2]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200648][2]["RewardItem"] = {}
	tMMOJindowin_Mix[200648][2]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200648][2]["RewardItem"][1]["Id"] = 3313154 -- 【库】九天凌云【恢复中】（赠）[属性:9], 【表格】九天凌云【恢复中】
	tMMOJindowin_Mix[200648][2]["RewardItem"][1]["Attr"] = "0 1" -- 九天凌云【恢复中】（赠）*1
	tMMOJindowin_Mix[200648][2]["RewardEffect"] = {}
	tMMOJindowin_Mix[200648][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200648][2]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200649] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200649][1]
	-- ===删除:200649,1
	tMMOJindowin_Mix[200649][1] = {}
	tMMOJindowin_Mix[200649][1]["LogId"] = 12000545
	tMMOJindowin_Mix[200649][1]["DeleteItem"] = {}
	tMMOJindowin_Mix[200649][1]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200649][1]["DeleteItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0]
	tMMOJindowin_Mix[200649][1]["DeleteItem"][1]["Monopoly"] = 0
	tMMOJindowin_Mix[200649][1]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200649][1]["RewardItem"] = {}
	tMMOJindowin_Mix[200649][1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200649][1]["RewardItem"][1]["Id"] = 3313040 -- 【库】紫樱流云【恢复中】[属性:9], 【表格】紫樱流云【恢复中】
	tMMOJindowin_Mix[200649][1]["RewardItem"][1]["Attr"] = "0 1" -- 紫樱流云【恢复中】*1
	tMMOJindowin_Mix[200649][1]["RewardEffect"] = {}
	tMMOJindowin_Mix[200649][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200649][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200649][2] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200649][2]
	-- ===删除:200649,1
	tMMOJindowin_Mix[200649][2]["LogId"] = 12000545
	tMMOJindowin_Mix[200649][2]["DeleteItem"] = {}
	tMMOJindowin_Mix[200649][2]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200649][2]["DeleteItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0]
	tMMOJindowin_Mix[200649][2]["DeleteItem"][1]["Monopoly"] = 2
	tMMOJindowin_Mix[200649][2]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200649][2]["RewardItem"] = {}
	tMMOJindowin_Mix[200649][2]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200649][2]["RewardItem"][1]["Id"] = 3313155 -- 【库】紫樱流云【恢复中】（赠）[属性:9], 【表格】紫樱流云【恢复中】
	tMMOJindowin_Mix[200649][2]["RewardItem"][1]["Attr"] = "0 1" -- 紫樱流云【恢复中】（赠）*1
	tMMOJindowin_Mix[200649][2]["RewardEffect"] = {}
	tMMOJindowin_Mix[200649][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200649][2]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200629] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200629][1]
	-- ===删除:200629,1
	tMMOJindowin_Mix[200629][1] = {}
	tMMOJindowin_Mix[200629][1]["LogId"] = 12000545
	tMMOJindowin_Mix[200629][1]["DeleteItem"] = {}
	tMMOJindowin_Mix[200629][1]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200629][1]["DeleteItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0]
	tMMOJindowin_Mix[200629][1]["DeleteItem"][1]["Monopoly"] = 0
	tMMOJindowin_Mix[200629][1]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200629][1]["RewardItem"] = {}
	tMMOJindowin_Mix[200629][1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200629][1]["RewardItem"][1]["Id"] = 3313152 -- 【库】流金祥云【恢复中】[属性:9], 【表格】流金翔云【恢复中】
	tMMOJindowin_Mix[200629][1]["RewardItem"][1]["Attr"] = "0 1" -- 流金祥云【恢复中】*1
	tMMOJindowin_Mix[200629][1]["RewardEffect"] = {}
	tMMOJindowin_Mix[200629][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200629][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200629][2] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200629][2]
	-- ===删除:200629,1
	tMMOJindowin_Mix[200629][2]["LogId"] = 12000545
	tMMOJindowin_Mix[200629][2]["DeleteItem"] = {}
	tMMOJindowin_Mix[200629][2]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200629][2]["DeleteItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0]
	tMMOJindowin_Mix[200629][2]["DeleteItem"][1]["Monopoly"] = 2
	tMMOJindowin_Mix[200629][2]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200629][2]["RewardItem"] = {}
	tMMOJindowin_Mix[200629][2]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200629][2]["RewardItem"][1]["Id"] = 3313153 -- 【库】流金祥云【恢复中】（赠）[属性:9], 【表格】流金翔云【恢复中】
	tMMOJindowin_Mix[200629][2]["RewardItem"][1]["Attr"] = "0 1" -- 流金祥云【恢复中】（赠）*1
	tMMOJindowin_Mix[200629][2]["RewardEffect"] = {}
	tMMOJindowin_Mix[200629][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200629][2]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200613] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200613][1]
	-- ===删除:200613,1
	tMMOJindowin_Mix[200613][1] = {}
	tMMOJindowin_Mix[200613][1]["LogId"] = 12000545
	tMMOJindowin_Mix[200613][1]["DeleteItem"] = {}
	tMMOJindowin_Mix[200613][1]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200613][1]["DeleteItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0]
	tMMOJindowin_Mix[200613][1]["DeleteItem"][1]["Monopoly"] = 0
	tMMOJindowin_Mix[200613][1]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200613][1]["RewardItem"] = {}
	tMMOJindowin_Mix[200613][1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200613][1]["RewardItem"][1]["Id"] = 3313148 -- 【库】赤霄火云【恢复中】[属性:9], 【表格】赤霄火云【恢复中】
	tMMOJindowin_Mix[200613][1]["RewardItem"][1]["Attr"] = "0 1" -- 赤霄火云【恢复中】*1
	tMMOJindowin_Mix[200613][1]["RewardEffect"] = {}
	tMMOJindowin_Mix[200613][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200613][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200613][2] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200613][2]
	-- ===删除:200613,1
	tMMOJindowin_Mix[200613][2]["LogId"] = 12000545
	tMMOJindowin_Mix[200613][2]["DeleteItem"] = {}
	tMMOJindowin_Mix[200613][2]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200613][2]["DeleteItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0]
	tMMOJindowin_Mix[200613][2]["DeleteItem"][1]["Monopoly"] = 2
	tMMOJindowin_Mix[200613][2]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200613][2]["RewardItem"] = {}
	tMMOJindowin_Mix[200613][2]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200613][2]["RewardItem"][1]["Id"] = 3313149 -- 【库】赤霄火云【恢复中】（赠）[属性:9], 【表格】赤霄火云【恢复中】
	tMMOJindowin_Mix[200613][2]["RewardItem"][1]["Attr"] = "0 1" -- 赤霄火云【恢复中】（赠）*1
	tMMOJindowin_Mix[200613][2]["RewardEffect"] = {}
	tMMOJindowin_Mix[200613][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200613][2]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200614] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200614][1]
	-- ===删除:200614,1
	tMMOJindowin_Mix[200614][1] = {}
	tMMOJindowin_Mix[200614][1]["LogId"] = 12000545
	tMMOJindowin_Mix[200614][1]["DeleteItem"] = {}
	tMMOJindowin_Mix[200614][1]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200614][1]["DeleteItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0]
	tMMOJindowin_Mix[200614][1]["DeleteItem"][1]["Monopoly"] = 0
	tMMOJindowin_Mix[200614][1]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200614][1]["RewardItem"] = {}
	tMMOJindowin_Mix[200614][1]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200614][1]["RewardItem"][1]["Id"] = 3313150 -- 【库】蓝海苍云【恢复中】[属性:9], 【表格】蓝海苍云【恢复中】
	tMMOJindowin_Mix[200614][1]["RewardItem"][1]["Attr"] = "0 1" -- 蓝海苍云【恢复中】*1
	tMMOJindowin_Mix[200614][1]["RewardEffect"] = {}
	tMMOJindowin_Mix[200614][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200614][1]["RewardEffect"]["Effect"] = "angelwing"


	tMMOJindowin_Mix[200614][2] = {}
	-- ===合成七彩祥云删除
	-- ===索引: tMMOJindowin_Mix[200614][2]
	-- ===删除:200614,1
	tMMOJindowin_Mix[200614][2]["LogId"] = 12000545
	tMMOJindowin_Mix[200614][2]["DeleteItem"] = {}
	tMMOJindowin_Mix[200614][2]["DeleteItem"][1] = {}
	tMMOJindowin_Mix[200614][2]["DeleteItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0]
	tMMOJindowin_Mix[200614][2]["DeleteItem"][1]["Monopoly"] = 2
	tMMOJindowin_Mix[200614][2]["DeleteItem"][1]["SaveTime"] = 0
	tMMOJindowin_Mix[200614][2]["RewardItem"] = {}
	tMMOJindowin_Mix[200614][2]["RewardItem"][1] = {}
	tMMOJindowin_Mix[200614][2]["RewardItem"][1]["Id"] = 3313151 -- 【库】蓝海苍云【恢复中】（赠）[属性:9], 【表格】蓝海苍云【恢复中】
	tMMOJindowin_Mix[200614][2]["RewardItem"][1]["Attr"] = "0 1" -- 蓝海苍云【恢复中】（赠）*1
	tMMOJindowin_Mix[200614][2]["RewardEffect"] = {}
	tMMOJindowin_Mix[200614][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Mix[200614][2]["RewardEffect"]["Effect"] = "angelwing"
	
local tMMOJindowin_Random = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_Random[3322224]
	-- ===删除:3322224,1
	tMMOJindowin_Random[3322224] = {}
	tMMOJindowin_Random[3322224]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMMOJindowin_Random[3322224]["DeleteItem"] = {}
	tMMOJindowin_Random[3322224]["DeleteItem"][1] = {}
	tMMOJindowin_Random[3322224]["DeleteItem"][1]["Id"] = 3322224 -- 【库】五色彩云随机包[属性:9]
	tMMOJindowin_Random[3322224]["LogId"] = 12000545
	-- 赤霄火云（赠） - 21.00%
	tMMOJindowin_Random[3322224][1] = {}
	tMMOJindowin_Random[3322224][1]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[3322224][1]["ItemChance"] = 2100
	tMMOJindowin_Random[3322224][1]["RewardItem"] = {}
	tMMOJindowin_Random[3322224][1]["RewardItem"][1] = {}
	tMMOJindowin_Random[3322224][1]["RewardItem"][1]["Id"] = 200613 -- 【库】赤霄火云[属性:0], 【表格】赤霄火云（赠）
	tMMOJindowin_Random[3322224][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑赤霄火云（赠）*1
	tMMOJindowin_Random[3322224][1]["RewardEffect"] = {}
	tMMOJindowin_Random[3322224][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[3322224][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 蓝海苍云（赠） - 21.00%
	tMMOJindowin_Random[3322224][2] = {}
	tMMOJindowin_Random[3322224][2]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[3322224][2]["ItemChance"] = 2100
	tMMOJindowin_Random[3322224][2]["RewardItem"] = {}
	tMMOJindowin_Random[3322224][2]["RewardItem"][1] = {}
	tMMOJindowin_Random[3322224][2]["RewardItem"][1]["Id"] = 200614 -- 【库】蓝海苍云[属性:0], 【表格】蓝海苍云（赠）
	tMMOJindowin_Random[3322224][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑蓝海苍云（赠）*1
	tMMOJindowin_Random[3322224][2]["RewardEffect"] = {}
	tMMOJindowin_Random[3322224][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[3322224][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 流金翔云（赠） - 16.00%
	tMMOJindowin_Random[3322224][3] = {}
	tMMOJindowin_Random[3322224][3]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[3322224][3]["ItemChance"] = 1600
	tMMOJindowin_Random[3322224][3]["RewardItem"] = {}
	tMMOJindowin_Random[3322224][3]["RewardItem"][1] = {}
	tMMOJindowin_Random[3322224][3]["RewardItem"][1]["Id"] = 200629 -- 【库】流金祥云[属性:0], 【表格】流金翔云（赠）
	tMMOJindowin_Random[3322224][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑流金祥云（赠）*1
	tMMOJindowin_Random[3322224][3]["RewardEffect"] = {}
	tMMOJindowin_Random[3322224][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[3322224][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凌云（赠） - 21.00%
	tMMOJindowin_Random[3322224][4] = {}
	tMMOJindowin_Random[3322224][4]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[3322224][4]["ItemChance"] = 2100
	tMMOJindowin_Random[3322224][4]["RewardItem"] = {}
	tMMOJindowin_Random[3322224][4]["RewardItem"][1] = {}
	tMMOJindowin_Random[3322224][4]["RewardItem"][1]["Id"] = 200648 -- 【库】九天凌云[属性:0], 【表格】九天凌云（赠）
	tMMOJindowin_Random[3322224][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑九天凌云（赠）*1
	tMMOJindowin_Random[3322224][4]["RewardEffect"] = {}
	tMMOJindowin_Random[3322224][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[3322224][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫樱流云（赠） - 21.00%
	tMMOJindowin_Random[3322224][5] = {}
	tMMOJindowin_Random[3322224][5]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[3322224][5]["ItemChance"] = 2100
	tMMOJindowin_Random[3322224][5]["RewardItem"] = {}
	tMMOJindowin_Random[3322224][5]["RewardItem"][1] = {}
	tMMOJindowin_Random[3322224][5]["RewardItem"][1]["Id"] = 200649 -- 【库】紫樱流云[属性:0], 【表格】紫樱流云（赠）
	tMMOJindowin_Random[3322224][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑紫樱流云（赠）*1
	tMMOJindowin_Random[3322224][5]["RewardEffect"] = {}
	tMMOJindowin_Random[3322224][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[3322224][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tMMOJindowin_Random[1] = {}
	-- ===五色彩云随机包
	-- ===索引: tMMOJindowin_Random[1]
	tMMOJindowin_Random[1]["ItemChanceSum"] = 10000
	tMMOJindowin_Random[1]["LogId"] = 12000545
	-- 彩云碎片 - 5.00%
	tMMOJindowin_Random[1][1] = {}
	tMMOJindowin_Random[1][1]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][1]["ItemChance"] = 500
	tMMOJindowin_Random[1][1]["RewardItem"] = {}
	tMMOJindowin_Random[1][1]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][1]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 彩云碎片*1
	tMMOJindowin_Random[1][1]["RewardEffect"] = {}
	tMMOJindowin_Random[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 15.00%
	tMMOJindowin_Random[1][2] = {}
	tMMOJindowin_Random[1][2]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][2]["ItemChance"] = 1500
	tMMOJindowin_Random[1][2]["RewardItem"] = {}
	tMMOJindowin_Random[1][2]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][2]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][2]["RewardItem"][1]["Attr"] = "0 5" -- 彩云碎片*5
	tMMOJindowin_Random[1][2]["RewardEffect"] = {}
	tMMOJindowin_Random[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 20.00%
	tMMOJindowin_Random[1][3] = {}
	tMMOJindowin_Random[1][3]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][3]["ItemChance"] = 2000
	tMMOJindowin_Random[1][3]["RewardItem"] = {}
	tMMOJindowin_Random[1][3]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][3]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][3]["RewardItem"][1]["Attr"] = "0 10" -- 彩云碎片*10
	tMMOJindowin_Random[1][3]["RewardEffect"] = {}
	tMMOJindowin_Random[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 25.00%
	tMMOJindowin_Random[1][4] = {}
	tMMOJindowin_Random[1][4]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][4]["ItemChance"] = 2500
	tMMOJindowin_Random[1][4]["RewardItem"] = {}
	tMMOJindowin_Random[1][4]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][4]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][4]["RewardItem"][1]["Attr"] = "0 15" -- 彩云碎片*15
	tMMOJindowin_Random[1][4]["RewardEffect"] = {}
	tMMOJindowin_Random[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 20.00%
	tMMOJindowin_Random[1][5] = {}
	tMMOJindowin_Random[1][5]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][5]["ItemChance"] = 2000
	tMMOJindowin_Random[1][5]["RewardItem"] = {}
	tMMOJindowin_Random[1][5]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][5]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][5]["RewardItem"][1]["Attr"] = "0 20" -- 彩云碎片*20
	tMMOJindowin_Random[1][5]["RewardEffect"] = {}
	tMMOJindowin_Random[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 10.00%
	tMMOJindowin_Random[1][6] = {}
	tMMOJindowin_Random[1][6]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][6]["ItemChance"] = 1000
	tMMOJindowin_Random[1][6]["RewardItem"] = {}
	tMMOJindowin_Random[1][6]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][6]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][6]["RewardItem"][1]["Attr"] = "0 25" -- 彩云碎片*25
	tMMOJindowin_Random[1][6]["RewardEffect"] = {}
	tMMOJindowin_Random[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 彩云碎片 - 5.00%
	tMMOJindowin_Random[1][7] = {}
	tMMOJindowin_Random[1][7]["RandomItemChanceType"] = 2
	tMMOJindowin_Random[1][7]["ItemChance"] = 500
	tMMOJindowin_Random[1][7]["RewardItem"] = {}
	tMMOJindowin_Random[1][7]["RewardItem"][1] = {}
	tMMOJindowin_Random[1][7]["RewardItem"][1]["Id"] = 3313136 -- 【库】彩云碎片[属性:9], 【表格】彩云碎片
	tMMOJindowin_Random[1][7]["RewardItem"][1]["Attr"] = "0 30" -- 彩云碎片*30
	tMMOJindowin_Random[1][7]["RewardEffect"] = {}
	tMMOJindowin_Random[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Random[1][7]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 删除圣云灵刷新
local tMMOJindowin_Delete = {}
	tMMOJindowin_Delete[3301295] = {}
	tMMOJindowin_Delete[3301295]["LogId"] = 12000545
	tMMOJindowin_Delete[3301295]["DeleteItem"] = {}
	tMMOJindowin_Delete[3301295]["DeleteItem"][1] = {}
	tMMOJindowin_Delete[3301295]["DeleteItem"][1]["Id"] = 3301295
	tMMOJindowin_Delete[3301295]["RewardItem"] = {}
	tMMOJindowin_Delete[3301295]["RewardEffect"] = {}
	tMMOJindowin_Delete[3301295]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMMOJindowin_Delete[3301295]["RewardEffect"]["Effect"] = "angelwing"
-------------------------------------------逻辑--------------------------------------------
-- 活动时间判断
function MMOJindowin_TimeJudgement()
	if Sys_ChkFullTime(tMMOJindowin_ActivityTime["NowTime"]) then
		return true
	else
		return false
	end
end

-- 玩家等级判断
function MMOJindowin_LevelJudgement()
	local nLevel = tMMOJindowin_ActivityData["Level"]
	local nMete = tMMOJindowin_ActivityData["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

--上线触发添加背包信
function MMOJindowin_Online()
	-- 金币服
	-- if CommonFunc_ChkGoldServer() then
		-- return
	-- end
	-- 添加筋斗云
	-- 如果背包中已存在筋斗云，则不给
	for i,v in pairs(tMMOJindowin_BoxType) do
		if Item_ChkItem(v) then
			return
		end
	end
	BackpackLetter_Condition(tMMOJindowin_Letter[3301296])
end

-- 随机规则
function MMOJindowin_Match_Rule(nMinIndex,nMaxIndex)
	if nMinIndex < 0.1 then
		nMinIndex = nMinIndex *100
		nMaxIndex = nMaxIndex *100
	elseif  nMinIndex < 1 then
		nMinIndex = nMinIndex * 10
		nMaxIndex = nMaxIndex * 10
	end
	
	local nNum = math.random(1,nMaxIndex)
	if nNum <= nMinIndex then
		return true
	else
		return false
	end
end

-- 掩码+补领筋斗云操作
function MMOJindowin_SetStc(nNpcId,sNextWord)
	--掩码+1
	local nEvent = tMMOJindowin_Stc["EventType"][4]
	local nType = tMMOJindowin_Stc["DataType"][4]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	--取玩家总成长值
	local nEvent1 = tMMOJindowin_Stc["EventType"][2]
	local nType1 = tMMOJindowin_Stc["DataType"][2]
	local nPlayerAllGrow = Get_UserStatisticValue(nEvent1,nType1)
	local nBoxItem = tMMOJindowin_BoxType[1]
	for i = tMMOJindowin_BoxType[9] , tMMOJindowin_BoxType[1] ,-1 do
		if nPlayerAllGrow >= tMMOJindowin_BallData["NextGrow"][i] then
			nBoxItem = tMMOJindowin_BallData["NextGrowBox"][tMMOJindowin_BallData["NextGrow"][i]]
			break
		end
	end
	--给原来对应的筋斗云
	Item_AddNewItem(nBoxItem,"")
	local sItemName = Get_ItemtypeName(nBoxItem)
	--打log
	Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["ReGetBox"],tonumber(nBoxItem)))
	--接对白
	if sNextWord == "3-3" then
		tNpcGossip[19798]["Text331"] = tMMOJindowin_Text[19798]["Text331"]
	end
	LinkNpcGossipFunc_New(nNpcId,sNextWord)
	User_TalkChannel2005(string.format(tMMOJindowin_Text["ReGet"],sItemName))
end

-- 补领筋斗云
function MMOJindowin_ReAskBox(nNpcId)
	--不在活动时间
	if  not MMOJindowin_TimeJudgement() then
		return 
	end
	
	--检测背包中是否有筋斗云
	if Item_ChkMulItem(tMMOJindowin_BoxType[1],tMMOJindowin_BoxType[9],1) then
		--背包中有宝箱
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tMMOJindowin_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--已免费补领次数
	--只能补领1次
	local nEvent = tMMOJindowin_Stc["EventType"][4]
	local nType = tMMOJindowin_Stc["DataType"][4]
	if Get_UserStatisticValue(nEvent,nType) >= 1 then
		--已免费补领过
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	--第1次免费
	--掩码+给筋斗云操作
	MMOJindowin_SetStc(nNpcId,"3-3")
end

-- 筋斗云全服元气榜====（点击后弹出活动页面）
function MMOJindowin_OpenWebAddress(nNpcId)
	local sWebAddress = tMMOJindowin_ActivityData["WebAddress"]
	User_SendWebPage(sWebAddress)
end

-- 领取筋斗云坐骑外套
function MMOJindowin_GetRankReward(nNpcId)
	-- 过了领奖时间
	if not MMOJindowin_TimeJudgement() and not Sys_ChkFullTime(tMMOJindowin_ActivityTime["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"9-5")
		return 
	end
	
	--判断是否是前3名
	local nFlag = 0
	for i = 1, 3 do 
		if Get_SysDynaGlobalData(tMMOJindowin_ActivityData["GlobalRank"],i) == Get_UserId() then
			nFlag = i
			break
		end
	end
	
	--不在前3名中
	if  nFlag == 0 then	
		LinkNpcGossipFunc_New(nNpcId,"9-2")
		return 
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tMMOJindowin_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	
	local nEvent = tMMOJindowin_Stc["EventType"][1]
	local nType = tMMOJindowin_Stc["DataType"][1]
	--是否已领取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"9-3")
		return
	end

	-- 本服养成排行奖励
	if tMMOJindowin_LocalRankReward[nFlag] then
		-- 掩码设置成已领取
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		local nItemId = tMMOJindowin_LocalRankReward[nFlag]["ItemId"]
		Item_AddNewItem(nItemId,tMMOJindowin_LocalRankReward[nFlag]["Attr"])
		local sItemName = Get_ItemtypeName(nItemId)
		-- local sItemName = tMMOJindowin_LocalRankReward[nFlag]["Day"]..tMMOJindowin_Text["Day"]..Get_ItemtypeName(nItemId)
		Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["LocalRank"],tonumber(nFlag)))
		User_EffectAdd("self",sMMOJindowin_Effect)
		tNpcGossip[19798]["Text941"] = string.format(tMMOJindowin_Text[19798]["Text941"],tonumber(nFlag),sItemName)
		LinkNpcGossipFunc_New(nNpcId,"9-4")
	end
end

-- 更新本服排行榜
function MMOJindowin_ReSetLocalRanks(nPlayerAllGrow)
	-- 检测是否达到上榜条件（成长值达到四阶筋斗云）
	-- local nEvent = tMMOJindowin_Stc["EventType"][2]
	-- local nType = tMMOJindowin_Stc["DataType"][2]
	-- if Get_UserStatisticValue(nEvent,nType) < tMMOJindowin_BallData["NextGrow"][3301299] then
		-- return 
	-- end
	
	local tRankUserData={}
	--前10名
	local nIndex = 0
	for i= 1, 5 do
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRank"]
		local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
		local nGrowUp = Get_SysDynaGlobalDataStr(nGolbalId,i)
		nIndex = nIndex +1
		tRankUserData[nIndex]={}
		tRankUserData[nIndex]["PlayerId"]= nPlayerId
		tRankUserData[nIndex]["nGrowUp"] = nGrowUp == "" and 0 or tonumber(nGrowUp)
	end
	--取排行榜玩家名字
	nIndex = 0
	for i= 1, 5 do
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRankName"]
		local sPlayerName = Get_SysDynaGlobalDataStr(nGolbalId,i)
		nIndex = nIndex +1
		tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
	end
	
	--将玩家加入到临时排行表中
	local nIndex = #tRankUserData +1
	for i=1,3 do
		if Get_UserId() == tRankUserData[i]["PlayerId"] then
			nIndex = i
		end
	end
	tRankUserData[nIndex]={}
	tRankUserData[nIndex]["PlayerId"]= Get_UserId()
	tRankUserData[nIndex]["nGrowUp"] = nPlayerAllGrow
	tRankUserData[nIndex]["PlayerName"] = Get_UserName()
	
	local t = {}
	for i = 1,#tRankUserData do
		for j = 1, #tRankUserData-i do	
			if tRankUserData[j]["PlayerId"] == 0 or ( tRankUserData[j]["nGrowUp"] < tRankUserData[j+1]["nGrowUp"] and tRankUserData[j+1]["PlayerId"] ~= 0)   then
				t = tRankUserData[j]
				tRankUserData[j] = tRankUserData[j+1]
				tRankUserData[j+1] = t
			end
		end
	end
	
	--将排序完的数据更新到全局表中
	for i = 1,3 do
		local nUserId = tRankUserData[i]["PlayerId"]
		local nGrowUp = tRankUserData[i]["nGrowUp"]
		local sUserName = tRankUserData[i]["PlayerName"]
		Sys_SetSynaGlobalData(tMMOJindowin_ActivityData["GlobalRank"],i,nUserId)
		Sys_SetSynaGlobalDataStr(tMMOJindowin_ActivityData["GlobalRank"],i,tostring(nGrowUp))
		Sys_SetSynaGlobalDataStr(tMMOJindowin_ActivityData["GlobalRankName"],i,sUserName)
	end
end

-- 点击筋斗云时，第一层对白显示数据处理
function MMOJindowin_OpenBoxFirstWordCheck(nItemId)
	--是否是九阶筋斗云
	local bMaxBox = false
	if nItemId == tMMOJindowin_BoxType[9] then
		bMaxBox = true 
	end
	
	--玩家是否上排行榜
	local nRankFlag = 0
	local nIndex = 0
	for i= 1, 5 do
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRank"]
		local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
		nIndex = nIndex +1
		if nPlayerId == Get_UserId() then
			nRankFlag = nIndex
			break
		end
	end
	
	--获取玩家当前阶段成长值
	local nEvent = tMMOJindowin_Stc["EventType"][2]
	local nType = tMMOJindowin_Stc["DataType"][2]
	local nAllGrow = Get_UserStatisticValue(nEvent,nType) --玩家总成长值
	local nNowBoxAllGrow = tMMOJindowin_BallData["NextGrow"][nItemId] --当前宝箱所需总成长值
	local nNowStepGrow = nAllGrow - nNowBoxAllGrow --当前阶段成长值
	local nNextGrow = 0 --下一阶宝箱所需成长值
	
	--获取今日喂养次数
	local nEvent1 = tMMOJindowin_Stc["EventType"][6]
	local nType1 = tMMOJindowin_Stc["DataType"][6]
	--隔天清掩码
	if Task_StcInterval(nEvent1,nType1,1,4) then
		Task_SetStatistic(nEvent1,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
	end
	local nTodayTimes = Get_UserStatisticValue(nEvent1,nType1) + 1
	local nFlag = nTodayTimes
	if nFlag > 10 then
		nFlag = 10
	end
	
	local sFormat = tMMOJindowin_Text[3301296]["Text120"]
	local sFormat0 = tMMOJindowin_Text[3301296]["Text125"]
	if tMMOJindowin_FeedBoxBall[nFlag] == tMMOJindowin_FeedBoxBall[1] then
		--需要彩云灵
		sFormat = tMMOJindowin_Text[3301296]["Text120"]
		sFormat0 = tMMOJindowin_Text[3301296]["Text125"]
	elseif tMMOJindowin_FeedBoxBall[nFlag] == tMMOJindowin_FeedBoxBall[4] then
		--需要仙云灵
		sFormat = tMMOJindowin_Text[3301296]["Text121"]
		sFormat0 = tMMOJindowin_Text[3301296]["Text1210"]
	elseif tMMOJindowin_FeedBoxBall[nFlag] == tMMOJindowin_FeedBoxBall[7] then
		--需要神云灵
		sFormat = tMMOJindowin_Text[3301296]["Text122"]
		sFormat0 = tMMOJindowin_Text[3301296]["Text1220"]
	elseif tMMOJindowin_FeedBoxBall[nFlag] == tMMOJindowin_FeedBoxBall[10] then
		--需要圣云灵
		sFormat = tMMOJindowin_Text[3301296]["Text123"]
		sFormat0 = tMMOJindowin_Text[3301296]["Text1230"]
	end

	tItem[nItemId]["Text113"] = string.format(tMMOJindowin_Text[3301296]["Text113"],tonumber(nTodayTimes))
	tItem[nItemId]["Text114"] = string.format(tMMOJindowin_Text[3301296]["Text114"],sFormat)
	tItem[nItemId]["Text1140"] = string.format(tMMOJindowin_Text[3301296]["Text1140"],sFormat0)

	-- 九阶筋斗云玩家
	if bMaxBox then
		tItem[3301296]["Text1-1"] = {111,112,113,114,1140,124,118,119}
		tItem[3301296]["Text118"] = string.format(tMMOJindowin_Text[3301296]["Text118"],tostring(nAllGrow))
	else
		-- 非九阶筋斗云玩家
		nNextGrow = tMMOJindowin_BallData["NextGrow"][nItemId+1] - tMMOJindowin_BallData["NextGrow"][nItemId]		
		
		-- 非满级玩家
		local nlevel = Get_UserLevel()
		local nExp = tMMOJindowin_BoxData[nItemId]["OpenAward"]["ExpTime"]		
		local nStrength = math.floor(nExp/2)
		if nlevel < G_User_MaxLev then
			tItem[3301296]["Text1-1"] = {111,112,113,114,1140,115,117,118,119}
		else
			tItem[3301296]["Text1-1"] = {111,112,113,114,1140,116,117,118,119}
		end
		
		tItem[3301296]["Text115"] = string.format(tMMOJindowin_Text[3301296]["Text115"],nExp,nStrength)
		tItem[3301296]["Text116"] = string.format(tMMOJindowin_Text[3301296]["Text116"],nStrength,nStrength)
		tItem[3301296]["Text117"] = string.format(tMMOJindowin_Text[3301296]["Text117"],tostring(nNowStepGrow),tostring(nNextGrow),tostring(Get_UserStatisticValue(tMMOJindowin_Stc["EventType"][2],tMMOJindowin_Stc["DataType"][2])))
		tItem[3301296]["Text118"] = string.format(tMMOJindowin_Text[3301296]["Text118"],tostring(nAllGrow))
	end	
	tItem[nItemId]["OptionFunc1"] = "MMOJindowin_FeedBoxCheck</N>"..nItemId
	tItem[nItemId]["OptionFunc2"] = "MMOJindowin_OpenBoxDayWord</N>"..nItemId
end

--------------------------------------------物品逻辑---------------------------------------
-- 打开筋斗云
function MMOJindowin_OpenBox(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
	--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
	local sBoxNmae = Get_ItemtypeName(nItemId) 	-- 筋斗云名字
	tItem[nItemId]["Text111"] = string.format(tMMOJindowin_Text[3301296]["Text111"],sBoxNmae)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 领取每日回报
function MMOJindowin_OpenBoxDayWord(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end

	--掩码判断
	local nEvent = tMMOJindowin_Stc["EventType"][5]
	local nType = tMMOJindowin_Stc["DataType"][5]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--是否已领取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkItemGossipFunc_New(nItemId,"4-1")
		return
	end
	
	local nAddNumExp = 0		--标记4 经验；标记：6 修行值
	local nExpFlag = 4
	local nAddNumPower = 0		--标记12 气力值
	local nlevel = Get_UserLevel()
	if tMMOJindowin_BoxData[nItemId] then
		if tMMOJindowin_BoxData[nItemId]["OpenAward"]["ExpTime"] then
			--非满级玩家
			if nlevel < G_User_MaxLev then
				nAddNumExp = tMMOJindowin_BoxData[nItemId]["OpenAward"]["ExpTime"]
			else
				nAddNumExp = math.floor(tMMOJindowin_BoxData[nItemId]["OpenAward"]["ExpTime"]/2)
				nExpFlag = 6
			end
			--气力值为经验的一半
			nAddNumPower = math.floor(tMMOJindowin_BoxData[nItemId]["OpenAward"]["ExpTime"]/2)
		end
		if tMMOJindowin_BoxData[nItemId]["OpenAward"]["Item"] then
			tItem[nItemId]["Text4-2"] = {421,422,425,427}
			tItem[nItemId]["tOption4-2"] = {13}
			tItem[nItemId]["Text422"] = string.format(tMMOJindowin_Text[3301296]["Text422"],Get_ItemtypeName(nItemId))
			tItem[nItemId]["OptionFunc13"] = "MMOJindowin_OpenBoxDayReward</N>"..nItemId.."</N>0</N>0"
			LinkItemGossipFunc_New(nItemId,"4-2")
			return
		end
	end
	if nExpFlag == 4 then
		tItem[nItemId]["Text4-2"] = {421,422,423,426,427}
		tItem[nItemId]["tOption4-2"] = {10,12}
		tItem[nItemId]["Text422"] = string.format(tMMOJindowin_Text[3301296]["Text422"],Get_ItemtypeName(nItemId))
		tItem[nItemId]["Text423"] = string.format(tMMOJindowin_Text[3301296]["Text423"],tonumber(nAddNumExp),tonumber(nAddNumPower))
		tItem[nItemId]["Option10"] = string.format(tMMOJindowin_Text[3301296]["Option10"],tonumber(nAddNumExp))
		tItem[nItemId]["Option12"] = string.format(tMMOJindowin_Text[3301296]["Option12"],tonumber(nAddNumPower))
		tItem[nItemId]["OptionFunc10"] = "MMOJindowin_OpenBoxDayReward</N>"..nItemId.."</N>"..nExpFlag.."</N>"..nAddNumExp
		tItem[nItemId]["OptionFunc12"] = "MMOJindowin_OpenBoxDayReward</N>"..nItemId.."</N>12</N>"..nAddNumPower
	
	end
	if nExpFlag == 6 then
		tItem[nItemId]["Text4-2"] = {421,422,424,426,427}
		tItem[nItemId]["tOption4-2"] = {11,12}
		tItem[nItemId]["Text422"] = string.format(tMMOJindowin_Text[3301296]["Text422"],Get_ItemtypeName(nItemId))
		tItem[nItemId]["Text424"] = string.format(tMMOJindowin_Text[3301296]["Text424"],tonumber(nAddNumExp),tonumber(nAddNumPower))
		tItem[nItemId]["Option11"] = string.format(tMMOJindowin_Text[3301296]["Option11"],tonumber(nAddNumExp))
		tItem[nItemId]["Option12"] = string.format(tMMOJindowin_Text[3301296]["Option12"],tonumber(nAddNumPower))
		tItem[nItemId]["OptionFunc11"] = "MMOJindowin_OpenBoxDayReward</N>"..nItemId.."</N>"..nExpFlag.."</N>"..nAddNumExp
		tItem[nItemId]["OptionFunc12"] = "MMOJindowin_OpenBoxDayReward</N>"..nItemId.."</N>12</N>"..nAddNumPower
	end
	LinkItemGossipFunc_New(nItemId,"4-2")
end

-- 领取每日回报对应奖励
function MMOJindowin_OpenBoxDayReward(nItemId,nExpFlag,nAddNum)
	if not Item_ChkItem(nItemId) then
		return
	end

	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
	
	--判断背包空间
	if nItemId >= tMMOJindowin_BoxType[6] and nItemId <= tMMOJindowin_BoxType[9] then
		if not User_CheckLeftSpace(tMMOJindowin_BoxData[nItemId]["NeedSpace"]) then
			local sText = string.format(tMMOJindowin_Text["DayRewardNoSpace"],tMMOJindowin_BoxData[nItemId]["NeedSpace"])
			--背包空间不足对白
			User_TalkChannel2005(sText)
			return
		end
	end
	--掩码判断
	local nEvent = tMMOJindowin_Stc["EventType"][5]
	local nType = tMMOJindowin_Stc["DataType"][5]
	--设置掩码
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 六阶以上每日领取彩云碎片
	if nItemId >= tMMOJindowin_BoxType[6] then
		RewardTemplate_UseItemAndMsg(tMMOJindowin_RewardItem["Daily"])
	end
		
	--给奖励
	local sRewardName = ""
	
	if nExpFlag == 4 then
		--给经验
		User_AddExpTime(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DayReward"],4,tonumber(nAddNum)))
		sRewardName = string.format(tMMOJindowin_Text["Exp"],nAddNum)
		User_TalkChannel2005(string.format(tMMOJindowin_Text["DayRewardTip"],sRewardName))
	end
	
	if nExpFlag == 6 then
		--给修行值
		User_AddCultivation(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DayReward"],6,tonumber(nAddNum)))
		sRewardName = string.format(tMMOJindowin_Text["Cul"],nAddNum)
		User_TalkChannel2005(string.format(tMMOJindowin_Text["DayRewardTip"],sRewardName))
	end
	
	if nExpFlag == 12 then
		--给气力值		
		User_AddStrengthValue(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DayReward"],12,tonumber(nAddNum)))
		sRewardName = string.format(tMMOJindowin_Text["Power"],nAddNum)
		User_TalkChannel2005(string.format(tMMOJindowin_Text["DayRewardTip"],sRewardName))
	end
	
	if tMMOJindowin_BoxData[nItemId]["OpenAward"]["Item"] then
		--给物品
		sRewardName = Get_ItemtypeName(tMMOJindowin_BoxData[nItemId]["OpenAward"]["Item"])
		Item_AddNewItem(tMMOJindowin_BoxData[nItemId]["OpenAward"]["Item"],"")
		Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DayReward"],tonumber(tMMOJindowin_BoxData[nItemId]["OpenAward"]["Item"]),1))
		User_TalkChannel2005(string.format(tMMOJindowin_Text["DayRewardTip"],sRewardName))
	end
	--emoneyLog
	Sys_SaveEmoneyBuy(tMMOJindowin_EmoneyLog["DayReward"])
	--光效
	User_EffectAdd("self",sMMOJindowin_Effect)
	
end

-- 喂养筋斗云获得具体奖励	
function MMOJindowin_FeedBoxReward(nItemId,nSpendEmoney,nBallItem,nBallNum,nGrowUp)
	--获取今日喂养次数
	local nEvent = tMMOJindowin_Stc["EventType"][6]
	local nType = tMMOJindowin_Stc["DataType"][6]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nTodayTimes = Get_UserStatisticValue(nEvent,nType) --喂养次数
	if nTodayTimes >=1 and nTodayTimes <= 3 then
		nTodayTimes = 1
	elseif nTodayTimes >=4 and nTodayTimes <= 6 then
		nTodayTimes = 4
	elseif nTodayTimes >=7 and nTodayTimes <= 9 then
		nTodayTimes = 7
	elseif nTodayTimes >= 10 then
		nTodayTimes = 10
	end
	
	local nChosis = Get_UserMetempsychosis() --玩家转世
	local sAwardItemName = ""
	
	-- 去掉经验奖励
	-- -- 奖励1：经验或修行值
	-- local nLogFlag = 4
	-- local nLevel = Get_UserLevel()
	-- local nAddNum = tMMOJindowin_BoxData["FeedExp"][nTodayTimes]
	-- if nLevel < G_User_MaxLev then
		-- User_AddExpTime(nAddNum)
		-- sAwardItemName = string.format(tMMOJindowin_Text["Exp"],tonumber(nAddNum))
	-- else
		-- nAddNum = math.floor(nAddNum/2)
		-- User_AddCultivation(nAddNum)
		-- nLogFlag = 6
		-- sAwardItemName = string.format(tMMOJindowin_Text["Cul"],tonumber(nAddNum))
	-- end
	
	-- -- 奖励2：额外增加X点积分（MMO公用积分--- 物品id 3301255 ）
	-- 此物品在另外的活动里写，测试单贴时，暂时注释掉此处物品的活动
	-- local nAddScore = tMMOJindowin_BoxData["FeedScore"][nTodayTimes]
	-- local nAddItem = tMMOJindowin_BoxData["MMOItem"]
	-- Item_AddNewItem(nAddItem,"0 ".. nAddScore)
	-- sAwardItemName = string.format(tMMOJindowin_Text["Num"],nAddScore) .. Get_ItemtypeName(nAddItem)
	
	-- 奖励3：随机奖励
	local nChosisFlag = 1
	--转世标记处理
	if nTodayTimes == 1 then
		--1-3次 转世奖励不同
		if nChosis and nChosis >= 2 then		
			nChosisFlag = 2
		end
	end

	if tMMOJindowin_BoxData["Feed"][nTodayTimes] and tMMOJindowin_BoxData["Feed"][nTodayTimes][nChosisFlag] then	
		local flat,tItemTable = Probabil_RandomAward(tMMOJindowin_BoxData["Feed"][nTodayTimes],nChosisFlag)
		local nAwardItemId = tItemTable[1]["tAward"][1]["Item_1"]
		local nZeng = tItemTable[1]["tAward"][1]["Zeng"] or 0
		local nNum =  tItemTable[1]["tAward"][1]["Num"] or 1
		local sAttr = tItemTable[1]["tAward"][1]["NAttr"] or ""
		
		--限制喂养1-3次产出的龙珠个数 每天每服2/3个(一转/二转)
		if nTodayTimes == 1 then
			if nAwardItemId == 1088000 then		
				local nGlobalId = tMMOJindowin_ActivityData["GlobalDragon_"..nChosisFlag]
				local nMaxNum = tMMOJindowin_ActivityData["Max_"..nChosisFlag]
				local nData = Get_SysDynaGlobalData(nGlobalId,0)
				if nData >= nMaxNum then
					nAwardItemId = 720027   --超过2/3个，则给流星卷
				else
					--设置限制数量
					local nAdd = tonumber(nData + 1)
					Sys_SetSynaGlobalData(nGlobalId,0,nAdd)
				end
			end
		end
		
		local ItemName = Get_ItemtypeName(nAwardItemId)
		local ItemMonoply = tGlobalFormat[5]
		--追加赠品属性
		if nZeng == 3 then
			ItemMonoply = tMMOJindowin_Text["Zeng"]
		end
		
		local sNum = string.format(tMMOJindowin_Text["Num"],nNum)
		sAwardItemName = string.format(tMMOJindowin_Text["Num"],nNum,ItemName,ItemMonoply)
		
		--添加物品
		Item_AddNewItem(nAwardItemId,sAttr)
		-- 喂养云灵出好奖励，加全服广播
		if nAwardItemId == 3005360 or nAwardItemId == 3009002 or nAwardItemId == 723694 then
			-- 全服广播
			local sPlayerName = Get_UserName()
			local sSpecialItem = Get_ItemtypeName(nAwardItemId)
			Sys_SystemBroadcast(string.format(tMMOJindowin_Text["FeedBoxSueecss_1"],sPlayerName,sSpecialItem))
		end
		
		--打LOG
		local nBallNum = 0
		if nBallItem >0 then
			nBallNum = 1
		end
		local sLog = string.format(tMMOJindowin_Log["FeedReward"],tonumber(nSpendEmoney),tonumber(nBallItem),tonumber(nBallNum),tonumber(nAwardItemId),tonumber(nNum))
		Sys_SaveActionFestivalLog(sLog)
		
		--打emoneylog
		--筋斗云喂养
		if nBallItem > 0 and tMMOJindowin_EmoneyLog["BallFeed"][nBallItem] then
			--用云灵喂养emoneylog
			Sys_SaveEmoneyBuy(tMMOJindowin_EmoneyLog["BallFeed"][nBallItem])
			User_TalkChannel2005(string.format(tMMOJindowin_Text["FeedSueecss"],Get_ItemtypeName(nBallItem),tonumber(nGrowUp),sAwardItemName))
		end
		if nSpendEmoney > 0 and tMMOJindowin_EmoneyLog["TsBall"][nSpendEmoney] then
			--用天石喂养emoneylog
			Sys_SaveEmoneyBuy(tMMOJindowin_EmoneyLog["TsBall"][nSpendEmoney])
			User_TalkChannel2005(string.format(tMMOJindowin_Text["FeedSueecssEmoney"],tonumber(nGrowUp),sAwardItemName))
		end		
		--光效
		User_EffectAdd("self",sMMOJindowin_EffectFeed)
	end 
end

-- 筋斗云进阶判断处理
function MMOJindowin_GrowNextBox(nItemId,nPlayerAllGrow)
	local nFlagGrow = 0
	for i = tMMOJindowin_BoxType[9] , tMMOJindowin_BoxType[1] ,-1 do
		if nPlayerAllGrow >= tMMOJindowin_BallData["NextGrow"][i] then
			--是否是同一级筋斗云
			nFlagGrow = tMMOJindowin_BallData["NextGrow"][i]
			if i <= nItemId then
				--没有进阶
				return false
			else
				--进阶下一级
				--删除原筋斗云
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					Item_AddItem(i)
					--进阶奖励
					if tMMOJindowin_BoxData[i]["NextAward"] and tMMOJindowin_BoxData[i]["NextAward"] > 0 then
						User_AddEMoneyMono(tMMOJindowin_BoxData[i]["NextAward"])
						local sLastBoxName = Get_ItemtypeName(nItemId)
						local sNowBoxName = Get_ItemtypeName(i)
						if tMMOJindowin_BoxData[i]["NextAward_Attr1"] then
							Item_AddNewItem(tMMOJindowin_BoxData[i]["ItemAdd_1"],tMMOJindowin_BoxData[i]["NextAward_Attr1"])
							Sys_MsgBox(string.format(tMMOJindowin_Text["BoxGrowNext_1"],sLastBoxName,sNowBoxName,tonumber(tMMOJindowin_BoxData[i]["NextAward"])))
						else
							Sys_MsgBox(string.format(tMMOJindowin_Text["BoxGrowNext"],sLastBoxName,sNowBoxName,tonumber(tMMOJindowin_BoxData[i]["NextAward"])))
						end
						User_EffectAdd("self",sMMOJindowin_EffectGrow)
					end
					--打log
					if tMMOJindowin_Log[i] then
						Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log[i],i,tonumber(tMMOJindowin_BoxData[i]["NextAward"])))
						Sys_SaveEmoneyBuy(tMMOJindowin_EmoneyLog["Box"][i])
					end
					MMOJindowin_OpenBoxFirstWordCheck(i)
					MMOJindowin_OpenBox(i)
				end
				return true
			end
		end
	end
	return false
end

-- 喂养筋斗云成功
function MMOJindowin_SuccessFeed(nItemId,nBallItem,nBallNum,nNeedEmoney)
	-- 更新今日单天成长值掩码
	local nGrowUp = tMMOJindowin_BallData["Growup"][nBallItem] or tMMOJindowin_BallData["GrowupTS"][nNeedEmoney]	--当前可获得的成长值
	local nEvent = tMMOJindowin_Stc["EventType"][3]
	local nType = tMMOJindowin_Stc["DataType"][3]
	
	-- 隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	-- 增加今日成长值
	local nAllGrowUp = Get_UserStatisticValue(nEvent,nType) + nGrowUp
	Task_SetStatistic(nEvent,nType,nAllGrowUp,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 更新玩家总成长值
	local nEvent1 = tMMOJindowin_Stc["EventType"][2]
	local nType1 = tMMOJindowin_Stc["DataType"][2]
	local nPlayerAllGrow = Get_UserStatisticValue(nEvent1,nType1) + nGrowUp
	Task_SetStatistic(nEvent1,nType1,nPlayerAllGrow,1,0)
	Task_SetStcTimestamp(nEvent1,nType1,0,0)
	
	-- 更新本服排行榜
	-- MMOJindowin_ReSetLocalRanks(nPlayerAllGrow)
	
	-- 获得奖励
	MMOJindowin_FeedBoxReward(nItemId,nNeedEmoney,nBallItem,nBallNum,nGrowUp)
	
	-- 筋斗云进阶
	if not MMOJindowin_GrowNextBox(nItemId,nPlayerAllGrow) then
		--筋斗云进阶成功，关闭主对白
		--点击筋斗云时，第一层对白显示数据
		MMOJindowin_OpenBoxFirstWordCheck(nItemId)
		--返回主对白
		MMOJindowin_OpenBox(nItemId)
	end
end

-- 喂养筋斗云检测
function MMOJindowin_FeedBoxCheck(nItemId)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
	
	--检测是否有筋斗云
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(4) then
		tItem[nItemId]["Text341"] = string.format(tMMOJindowin_Text[3301296]["Text341"],4)
		LinkItemGossipFunc_New(nItemId,"3-4")
		return
	end
	
	--获取今日喂养次数
	local nEvent = tMMOJindowin_Stc["EventType"][6]
	local nType = tMMOJindowin_Stc["DataType"][6]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	--获取今日当前第几次喂养
	local nTodayTimes = Get_UserStatisticValue(nEvent,nType)+1
	if nTodayTimes > 10 then
		nTodayTimes = 10
	end
	local nBallId = tMMOJindowin_FeedBoxBall[nTodayTimes]
	--删除云灵
	if Item_ChkMulItem(nBallId,nBallId,1) and Item_DelItem(nBallId) then
		--掩码：喂养次数+1
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		--喂筋斗云成功操作
		MMOJindowin_SuccessFeed(nItemId,nBallId,1,0)
	else
		--没有云灵，出对白
		local nAdd = 1
		if nBallId == 3301295 then
			nAdd = 3
		end
		tItem[nItemId]["Text311"] = string.format(tMMOJindowin_Text[3301296]["Text311"],Get_ItemtypeName(nBallId),tonumber(tMMOJindowin_BallData["TS"][nBallId]),Get_ItemtypeName(nBallId),nAdd)
		tItem[nItemId]["Option3"] = string.format(tMMOJindowin_Text[3301296]["Option3"],tonumber(tMMOJindowin_BallData["TS"][nBallId]))
		tItem[nItemId]["OptionFunc3"] = "MMOJindowin_FeedBoxUseTSWord</N>"..nItemId.."</N>"..nBallId
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
end

-- 使用天石代替云灵
function MMOJindowin_FeedBoxUseTSWord(nItemId,nBallId)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end
	
	--检测是否有筋斗云
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	local nNeedEmoney = tMMOJindowin_BallData["TS"][nBallId]
	tItem[nItemId]["Text321"] = string.format(tMMOJindowin_Text[3301296]["Text321"],tonumber(nNeedEmoney),Get_ItemtypeName(nBallId))
	tItem[nItemId]["OptionFunc5"] = "MMOJindowin_FeedBoxUseTS</N>"..nItemId.."</N>"..nNeedEmoney
	--接对白
	LinkItemGossipFunc_New(nItemId,"3-2")
end

-- 天石代替云灵 二次确认
function MMOJindowin_FeedBoxUseTS(nItemId,nNeedEmoney)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end
	
	--检测是否有筋斗云
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end

	--判断背包空间
	if not User_CheckLeftSpace(4) then
		--背包空间不足对白
		tItem[nItemId]["Text341"] = string.format(tMMOJindowin_Text[3301296]["Text341"],4)
		LinkItemGossipFunc_New(nItemId,"3-4")
		return
	end

	if nNeedEmoney > Get_UserEMoney() then
		--天石不足
		tItem[nItemId]["Text331"] = string.format(tMMOJindowin_Text[3301296]["Text331"],tonumber(nNeedEmoney))
		LinkItemGossipFunc_New(nItemId,"3-3")
		return
	end
	
	--扣天石
	if User_AddEMoney(-nNeedEmoney) then
		--喂宝箱成功操作
		--获取今日喂养次数
		local nEvent = tMMOJindowin_Stc["EventType"][6]
		local nType = tMMOJindowin_Stc["DataType"][6]
		--隔天清掩码
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		MMOJindowin_SuccessFeed(nItemId,0,0,nNeedEmoney)
	end
end

-- 合成云灵处理
function MMOJindowin_CompoundNextBall(nItemId)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tMMOJindowin_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		tItem[nItemId]["Text131"] = string.format(tMMOJindowin_Text[3301292]["Text131"],tonumber(tMMOJindowin_ActivityData["SpaceOne"]))
		LinkItemGossipFunc_New(nItemId,"1-3")
		return
	end
	
	--检测是否有9个珠子
	if Item_ChkMulItem(nItemId,nItemId,9) and Item_DelMulItem(nItemId,nItemId,9) then
		local sAwardItemName = ""
		--奖励：随机奖励
		if tMMOJindowin_BallData["CompoundReward"][nItemId] then
			local flat,tItemTable = Probabil_RandomAward(tMMOJindowin_BallData["CompoundReward"],nItemId)
			local nRewardItemId = tItemTable[1]["tAward"][1]["Item_1"]
			local nZeng = tItemTable[1]["tAward"][1]["Zeng"] or 0
			local nNum =  tItemTable[1]["tAward"][1]["Num"] or 1
			local sAttr = tItemTable[1]["tAward"][1]["NAttr"] or ""
			
			if nRewardItemId == 6 then
				--修行值
				User_AddCultivation(nNum)
				sAwardItemName = string.format(tMMOJindowin_Text["Cul"],nNum)
			elseif nRewardItemId == 12 then
				--气力值
				User_AddStrengthValue(nNum)
				sAwardItemName = string.format(tMMOJindowin_Text["Power"],nNum)
			else
				--物品
				Item_AddNewItem(nRewardItemId,sAttr)
				local sItemName = Get_ItemtypeName(nRewardItemId)
				--追加赠品属性
				if nZeng == 3 then
					sItemName= sItemName..tMMOJindowin_Text["Zeng"]
				end
				sAwardItemName = sItemName
				if nRewardItemId == 3301293 or nRewardItemId == 3301294 or nRewardItemId == 3301295 then
					local sLog = tMMOJindowin_EmoneyLog["Free"][nRewardItemId]
					Sys_SaveEmoneyBuy(sLog)
				end
			end
			--光效
			User_EffectAdd("self",sMMOJindowin_EffectComBall)
			--打LOG
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["CompoundBall"],tonumber(nItemId),tonumber(nRewardItemId),tonumber(nNum)))
			--改提示形式
			if nRewardItemId == 3301293 or nRewardItemId == 3301294 or nRewardItemId == 3301295 then
				Sys_MsgBox(string.format(tMMOJindowin_Text["GetBall"],sAwardItemName))
				tItem[nItemId]["Text151"] = string.format(tMMOJindowin_Text[3301292]["Text151"],sAwardItemName)
				LinkItemGossipFunc_New(nItemId,"1-5")
			else
				local nNextId = tonumber(nItemId+1)
				tItem[nItemId]["Text141"] = string.format(tMMOJindowin_Text[3301292]["Text141"],Get_ItemtypeName(nNextId),sAwardItemName)
				LinkItemGossipFunc_New(nItemId,"1-4")
			end
		end
	else
		--灵珠不足
		tItem[nItemId]["Text121"] = string.format(tMMOJindowin_Text[3301292]["Text121"],Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(nItemId,"1-2")
	end
end

-- 怪物掉落
function MMOJindowin_MonsterDrop(nMonsterTypeId)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end
	
	-- 金币服
	-- if CommonFunc_ChkGoldServer() then
		-- return
	-- end
	if not User_CheckLeftSpace(2) then
		User_TalkChannel2005(tMMOJindowin_Text["MonsteNoSpace"])
		return
	end
			
	RewardTemplate_RandomReward(tMMOJindowin_MonsterDropData,1)
	
	-- 云灵荒兽
	if nMonsterTypeId == tMMOJindowin_MonsterDropData["Monster"]["Bird"] then
		local nTeamPeople = Get_UserTeamNumbers()
		local nDrop = tMMOJindowin_MonsterDropData[nMonsterTypeId]["Chance"] 
		
		-- --玩家组队，每多一个人增加0.5%的概率
		-- if nTeamPeople > 0 then
			-- nDrop = nDrop + (nTeamPeople-1)*tMMOJindowin_MonsterDropData[nMonsterTypeId]["OneChance"]
			-- --最高概率上限7%
			-- if nDrop > 700 then
				-- nDrop = 700
			-- end
		-- end
		
		if MMOJindowin_Match_Rule(nDrop,tMMOJindowin_MonsterDropData[nMonsterTypeId]["ItemChanceSum"]) then
			--背包判断
			if  User_CheckLeftSpace(tMMOJindowin_ActivityData["SpaceOne"]) then
				local nGetItem = tMMOJindowin_MonsterDropData[nMonsterTypeId]["ItemId"]
				Item_AddNewItem(nGetItem,"")
				local sLog = tMMOJindowin_EmoneyLog["Free"][nGetItem]
				Sys_SaveEmoneyBuy(sLog)
				User_TalkChannel2005(tMMOJindowin_Text["KillbirdGetBall"])
				User_EffectAdd("self",sMMOJindowin_Effect)		
			else
				User_TalkChannel2005(tMMOJindowin_Text["MonsteNoSpace"])
			end
		end
	end
	
	--百分之1概率出现提示
	if  MMOJindowin_Match_Rule(100,10000) then
		User_TalkChannel2005(tMMOJindowin_Text["MonsteTips"])
	end

	if Sys_Random(100,10000) then
		User_TalkChannel2005(tMMOJindowin_Text["TimeTip"])
	end
	
	MMOJindowin_ChkTime()
	
	-- 添加魂值
	local nGhost = tMMOJindowin_GhostTask["Ghost"]
	local nTask = tMMOJindowin_GhostTask["TaskId"]
	local nEvent = tMMOJindowin_GhostTask["EventType"]
	local nType = tMMOJindowin_GhostTask["DataType"]
	local nItemId = 0
	local nUserId = Get_UserId()
	if Task_ChkTaskDetail(nTask) and Get_TaskDetailData3(nTask,nUserId) ~= 1 then
		for k,v in pairs(tMMOJindowin_Item) do
			if Item_ChkItem(v) then
				nItemId = v
				break
			end
		end
		
		if nItemId ~= 0 then
			if Get_UserStatisticValue(nEvent,nType,nUserId) >= tMMOJindowin_GhostLimit[nItemId] then
				User_TalkChannel2005(tMMOJindowin_Text["FullHZ"])
				Task_SetTaskDetailData3(nTask,1,nUserId)
			else
				Task_AddStatistic(nEvent,nType,nGhost,1,nUserId)
				User_TalkChannel2005(string.format(tMMOJindowin_Text["GetHZ"],nGhost))
				
				if Get_UserStatisticValue(nEvent,nType,nUserId) >= tMMOJindowin_GhostLimit[nItemId] then
					User_TalkChannel2005(tMMOJindowin_Text["FullHZ"])
					Task_SetTaskDetailData3(nTask,1,nUserId)				
				end			
			end
		end
	end
end

-- 宝箱读条
function MMOJindowin_ReadStone()
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end

	--读条2s 采集
	local nSecs = tMMOJindowin_ActivityData["Second"]
	local nActionId = tMMOJindowin_ActivityData["Action"]
	local sContent = tMMOJindowin_Text["Get"]
	User_SetExplore(nSecs,sContent,nActionId,"MMOJindowin_AfterReadStone")
	
	MMOJindowin_ChkTime()
end

-- 读条后的操作
function MMOJindowin_AfterReadStone(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end

	-- 删除动态npc
	local sField = tMMOJindowin_ActivityData["Field"]
	local sData = tMMOJindowin_Text["StoneName"]
	local nMapId = tMMOJindowin_ActivityData["BoxCity"]["Map"]
	
	local nNpcNum = Get_NpcCountByName(sData,nUserId)
	if nNpcNum >= 1 then
		if Npc_DelDynaNpc(nMapId,sField,sData) then
		--神矿
			local flat,tItemTable = Probabil_RandomAward(tMMOJindowin_MonsterDropData,19800)
			local nItemId = tItemTable[1]["tAward"][1]["Item_1"]
			--背包判断
			if User_CheckLeftSpace(tMMOJindowin_ActivityData["SpaceOne"],nUserId) then
				if nItemId == 3301294 then		--限制采矿得到的神云灵个数 每天每服10个
					local nGlobalId = tMMOJindowin_ActivityData["GlobalBall"]
					local nMaxNum = tMMOJindowin_ActivityData["MaxData"]
					local nData = Get_SysDynaGlobalData(nGlobalId,0)
					if nData >= nMaxNum then
						nItemId = 3301293   --超过10个，则给仙云灵
					else
						--设置限制数量
						local nAdd = tonumber(nData + 1)
						Sys_SetSynaGlobalData(nGlobalId,0,nAdd)
					end
				end
				Item_AddNewItem(nItemId,"",nUserId)
				local sLog = tMMOJindowin_EmoneyLog["Free"][nItemId]
				Sys_SaveEmoneyBuy(sLog,nUserId)
				local sItemName = Get_ItemtypeName(nItemId)
				User_TalkChannel2005(string.format(tMMOJindowin_Text["KillBoxGetBall"],sItemName),nUserId)
				User_EffectAdd("self",sMMOJindowin_Effect,nUserId)
			else
				User_TalkChannel2005(tMMOJindowin_Text["MonsteNoSpace"],nUserId)
			end
		end
	else
		Sys_MsgBox(tMMOJindowin_Text["NotGet"],"NULL","NULL",nUserId)
	end
end

-- 每1分钟随机出现一个缥缈宝箱
function MMOJindowin_CreateDyneStone()
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		return
	end
	
	-- 金币服
	-- if CommonFunc_ChkGoldServer() then
		-- return
	-- end
	
	--如果存在 先删除动态npc
	local sField = tMMOJindowin_ActivityData["Field"]
	local sData = tMMOJindowin_Text["StoneName"]
	local nMapId = tMMOJindowin_ActivityData["BoxCity"]["Map"]
	Npc_DelDynaNpc(nMapId,sField,sData)
	
	--创建动态npc
	local nRand = math.random(1,5)
	local sName = tMMOJindowin_Text["StoneName"]
	local nNpcType = tMMOJindowin_ActivityData["Type"]
	local nSort = tMMOJindowin_ActivityData["Sort"]
	local nLookFace = tMMOJindowin_ActivityData["Lookface"]
	local nMapId = tMMOJindowin_ActivityData["MapId"]
	local nPosX = tMMOJindowin_ActivityData["Pos"][nRand][1]
	local nPosY = tMMOJindowin_ActivityData["Pos"][nRand][2]
	-- local nPosX = tMMOJindowin_ActivityData["Pos"][1][1]
	-- local nPosY = tMMOJindowin_ActivityData["Pos"][1][2]
	
	local nTask0 = tMMOJindowin_ActivityData["Task0"]
	local nNpcId = tMMOJindowin_ActivityData["NpcId"]
	Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
end

-- 每天重置动态码（除了本服排名不重置）
function MMOJindowin_ReSetFeedRanks()
	-- 金币服
	-- if CommonFunc_ChkGoldServer() then
		-- return
	-- end
	-- local nServiceGlobal = tMMOJindowin_ActivityData["ServiceGlobal"]
	-- if Get_SysDynaGlobalData0(nServiceGlobal) >= 1 then
		--仙灵珠产出限制
		local nGlobalId = tMMOJindowin_ActivityData["GlobalBall"]
		Sys_SetSynaGlobalData(nGlobalId,0,0)
		
		--龙珠产出上限
		local nGlobalId_1 = tMMOJindowin_ActivityData["GlobalDragon_1"]
		Sys_SetSynaGlobalData(nGlobalId_1,0,0)
		local nGlobalId_2 = tMMOJindowin_ActivityData["GlobalDragon_2"]
		Sys_SetSynaGlobalData(nGlobalId_2,0,0)
	-- end
end

-- 进入前判断 是否当日可以进入
function MMOJindowin_JudgeEnterMap(nNpcId)
	--不在活动时间
	if not MMOJindowin_TimeJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return 
	end

	-- 每人每天限制入场半小时，随后自动传送离场
	-- 判断当天是否进入过地图
	local nEvent = tMMOJindowin_Stc["EventType"][9]
	local nType = tMMOJindowin_Stc["DataType"][9]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天是否已经进入过
	elseif not Task_ChkStcValue(nEvent,nType,">=",1) then
		-- 设置掩码值
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天是否已进去过半个小时
	elseif Task_StcInterval(nEvent,nType,tMMOJindowin_ActivityData["TimeDelay"],0) then
		-- 提示今天已进去过
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	-- 设计时器
	local nTimeDelay = tMMOJindowin_ActivityData["TimeDelay"]
	local nTimeType = tMMOJindowin_ActivityData["TimeType"]
	local nStcTime = Get_UserStcTimestampValue(nEvent,nType)
	local nNow = os.time()
	nTimeDelay = nTimeDelay - (nNow - nStcTime)
	
	if nTimeDelay <= 0 then
		return
	end
	
	local sFunc = "MMOJindowin_FromMap"
	User_SetTimer(nTimeDelay,sFunc,nTimeType)
	
	-- 传送地图
	-- MMOJindowin_ChgMap("BoxCity")
	local nMapid = tMMOJindowin_ActivityData["BoxCity"]["Map"]
	local nPosY = tMMOJindowin_ActivityData["BoxCity"]["Ypos"]
	local nRand = math.random(1,9)
	local nPosX = tMMOJindowin_ActivityData["BoxCity"][nRand]["Xpos"]
	
	if User_ChgMap(nMapid,nPosX,nPosY) then
		Sys_MsgBox(tMMOJindowin_Text["EnterMap"])
		User_EffectAdd("self",sMMOJindowin_EffectMoveGo)
	end
end

-- 传出地图
function MMOJindowin_FromMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	-- 在活动地图中的玩家 传出地图
	if nMapId == tMMOJindowin_ActivityData["BoxCity"]["Map"] then
		Sys_MsgBox(tMMOJindowin_Text["SendOutMap"],"NULL","NULL",nUserId)
		MMOJindowin_ChgMap("TwinCity",nUserId)
	end
end

-- 怪物死亡或读进度条的时候 判断是否超过30分钟
function MMOJindowin_ChkTime()
	local nEvent = tMMOJindowin_Stc["EventType"][9]
	local nType = tMMOJindowin_Stc["DataType"][9]
	local nUserId = Get_UserId()
	
	if Task_StcInterval(nEvent,nType,tMMOJindowin_ActivityData["TimeDelay"],0) then
		Sys_MsgBox(tMMOJindowin_Text["SendOutMap"],"NULL","NULL",nUserId)
		MMOJindowin_ChgMap("TwinCity",nUserId)
	end
end

-- 传送地图
function MMOJindowin_ChgMap(nIndex,nNowUserId)
	-- 不在活动时间
	-- if not MMOJindowin_TimeJudgement() then
		-- return 
	-- end
	
	local nUserId = nNowUserId or Get_UserId()
	if tMMOJindowin_ActivityData[nIndex] ~= nil then
		local nMapId = tMMOJindowin_ActivityData[nIndex]["Map"]
		local nCellX = tMMOJindowin_ActivityData[nIndex]["Xpos"]
		local nCellY = tMMOJindowin_ActivityData[nIndex]["Ypos"]
		local nRange = tMMOJindowin_ActivityData[nIndex]["Bound"]	
		if nIndex == "TwinCity" then
			if SpecialServer_ChkNoGiftServer() then
				nMapId = tMMOJindowin_ActivityData[nIndex]["NoGift"]["Map"]
				nCellX = tMMOJindowin_ActivityData[nIndex]["NoGift"]["Xpos"]
				nCellY = tMMOJindowin_ActivityData[nIndex]["NoGift"]["Ypos"]
				nRange = tMMOJindowin_ActivityData[nIndex]["NoGift"]["Bound"]
			else
				nMapId = tMMOJindowin_ActivityData[nIndex]["Normal"]["Map"]
				nCellX = tMMOJindowin_ActivityData[nIndex]["Normal"]["Xpos"]
				nCellY = tMMOJindowin_ActivityData[nIndex]["Normal"]["Ypos"]
				nRange = tMMOJindowin_ActivityData[nIndex]["Normal"]["Bound"]
			end
		end
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1,nUserId)
		--2005提示
		if nIndex == "TwinCity" then
			-- 保存记录点 在双龙城,防止玩家死亡复活再次回到活动地图
			User_RecordPoint(nMapId,nCellX,nCellY,nUserId)
			User_TalkChannel2005(tMMOJindowin_Text["OutOfMap"],nUserId)
			User_EffectAdd("self",sMMOJindowin_EffectMoveBack,nUserId)
		elseif nIndex == "BoxCity" then
			Sys_MsgBox(tMMOJindowin_Text["EnterMap"],nUserId)
			User_EffectAdd("self",sMMOJindowin_EffectMoveGo,nUserId)
		end
	end
end

-- 合成七彩祥云
function MMOJindowin_Mix()
	for i,v in ipairs(tMMOJindowin_ActivityData["Mix"]) do
		if not Item_ChkMulItem(v,v,1,nMonopoly,nSash,nUserId,0) then
			Sys_MsgBox(tMMOJindowin_Text["NoFive"])
			return
		end
	end
	for i,v in ipairs(tMMOJindowin_ActivityData["Mix"]) do
		if Item_ChkMulItem(v,v,1,0,nSash,nUserId,0) then
			RewardTemplate_UseItemAndMsg(tMMOJindowin_Mix[v][1])
		elseif Item_ChkMulItem(v,v,1,2,nSash,nUserId,0) then
			RewardTemplate_UseItemAndMsg(tMMOJindowin_Mix[v][2])
		end
	end
	RewardTemplate_UseItemAndMsg(tMMOJindowin_Mix[1])
end

-- 五色彩云随机包首次打开随机碎片数和云彩
function MMOJindowin_ClickRandomPackage(nItemId)
	if not Task_ChkStcValue(tMMOJindowin_Stc["EventType"][10],tMMOJindowin_Stc["DataType"][10],">=",1) then
		MMOJindowin_RefreshRandomPackage(nItemId)
	end
	local nMountItemId = Get_UserStatisticValue(tMMOJindowin_Stc["EventType"][10],tMMOJindowin_Stc["DataType"][10])
	local sMonutItemName = Get_ItemtypeName(nMountItemId)
	tItem[nItemId]["Text113"] = string.format(tMMOJindowin_Text[nItemId]["Text113"],sMonutItemName)
	local nScriptNum = Get_UserStatisticValue(tMMOJindowin_Stc["EventType"][11],tMMOJindowin_Stc["DataType"][11])
	tItem[nItemId]["Text114"] = string.format(tMMOJindowin_Text[nItemId]["Text114"],nScriptNum)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 五色彩云随机包刷新随机碎片数和云彩
function MMOJindowin_RefreshRandomPackage(nItemId)
	local flat,tMountTable = Probabil_RandomAward(tMMOJindowin_Random,nItemId)
	local nMountItemId = tMountTable[1]["tAward"][1]["RewardItem"][1]["Id"]
	Task_SetStatistic(tMMOJindowin_Stc["EventType"][10],tMMOJindowin_Stc["DataType"][10],nMountItemId,1,0)
	local flat,tScriptTable = Probabil_RandomAward(tMMOJindowin_Random,1)
	local nScriptNum = tonumber(CommonFunc_GetItemNum(tScriptTable[1]["tAward"][1]["RewardItem"][1]["Attr"]))
	-- 新彩云至多只能抽到15个彩云碎片
	for i,v in ipairs(tMMOJindowin_ActivityData["NewCoat"]) do
		if nMountItemId == v then
			if nScriptNum >= tonumber(CommonFunc_GetItemNum(tMMOJindowin_Random[1][4]["RewardItem"][1]["Attr"])) then
				nScriptNum = tonumber(CommonFunc_GetItemNum(tMMOJindowin_Random[1][4]["RewardItem"][1]["Attr"]))
			end
		end
	end
	Task_SetStatistic(tMMOJindowin_Stc["EventType"][11],tMMOJindowin_Stc["DataType"][11],nScriptNum,1,0)
end

-- 五色彩云随机包消耗圣灵云刷新随机碎片数和云彩
function MMOJindowin_CostItemRefresh(nItemId)
	local nCostItemId = 3301295
	if RewardTemplate_UseItemAndMsg(tMMOJindowin_Delete[nCostItemId]) then
		MMOJindowin_RefreshRandomPackage(nItemId)
		MMOJindowin_ClickRandomPackage(nItemId)
	end
end

-- 五色彩云随机包打开随机碎片数和云彩
function MMOJindowin_OpenRandomPackage(nItemId)
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(tMMOJindowin_Text["NoSpace"])
		return
	end
	local nMountItemId = Get_UserStatisticValue(tMMOJindowin_Stc["EventType"][10],tMMOJindowin_Stc["DataType"][10])
	local nScriptNum = Get_UserStatisticValue(tMMOJindowin_Stc["EventType"][11],tMMOJindowin_Stc["DataType"][11])
	if RewardTemplate_UseItemAndMsg(tMMOJindowin_RewardItem[nItemId][nMountItemId]) then
		RewardTemplate_UseItemAndMsg(tMMOJindowin_RewardItem[nItemId][nScriptNum])
	end
	MMOJindowin_RefreshRandomPackage(nItemId)
end

-- 打开天石商店
function MMOJindowin_OpenShop()
	User_OpenDialog()
end
--------------------------------------------NPC模版----------------------------------------
-- 至尊宝  19798
tNpcFace[6254] = 21
tNpcGossip[19798] = tNpcGossip[19798] or DefaultNpc:new{}
tNpcGossip[19798]["OptionHidden"] = 1

-- 活动时间前
tNpcGossip[19798]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19798]["Text111"] = tMMOJindowin_Text[19798]["Text111"]
tNpcGossip[19798]["Text112"] = tMMOJindowin_Text[19798]["Text112"]
tNpcGossip[19798]["Text113"] = tMMOJindowin_Text[19798]["Text113"]
tNpcGossip[19798]["Text114"] = tMMOJindowin_Text[19798]["Text114"]
tNpcGossip[19798]["Text115"] = tMMOJindowin_Text[19798]["Text115"]
tNpcGossip[19798]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMMOJindowin_ActivityTime["BeforeTime"])
end
tNpcGossip[19798]["tOption1-1"] = {1}
tNpcGossip[19798]["Option1"] = tMMOJindowin_Text[19798]["Option1"]

-- 活动中
-- 等级未达到
-- tNpcGossip[19798]["Text1-2"] = {111,112,125,121,122,123,124}
tNpcGossip[19798]["Text1-2"] = {111,112,125,133,134,135}
tNpcGossip[19798]["Text121"] = tMMOJindowin_Text[19798]["Text121"]
tNpcGossip[19798]["Text122"] = tMMOJindowin_Text[19798]["Text122"]
tNpcGossip[19798]["Text123"] = tMMOJindowin_Text[19798]["Text123"]
tNpcGossip[19798]["Text124"] = tMMOJindowin_Text[19798]["Text124"]
tNpcGossip[19798]["Text125"] = tMMOJindowin_Text[19798]["Text125"]
tNpcGossip[19798]["ChkFunc1-2"] = function ()
	if MMOJindowin_TimeJudgement() and not MMOJindowin_LevelJudgement() then
		return true
	else
		return false
	end
end
tNpcGossip[19798]["tOption1-2"] = {121}
tNpcGossip[19798]["Option121"] = tMMOJindowin_Text[19798]["Option121"]

-- 等级达到，首次点击
tNpcGossip[19798]["Text1-3"] = {111,112,125,136,133,135}
tNpcGossip[19798]["Text131"] = tMMOJindowin_Text[19798]["Text131"]
tNpcGossip[19798]["Text132"] = tMMOJindowin_Text[19798]["Text132"]
tNpcGossip[19798]["Text133"] = tMMOJindowin_Text[19798]["Text133"]
tNpcGossip[19798]["Text134"] = tMMOJindowin_Text[19798]["Text134"]
tNpcGossip[19798]["Text135"] = tMMOJindowin_Text[19798]["Text135"]
tNpcGossip[19798]["Text136"] = tMMOJindowin_Text[19798]["Text136"]
tNpcGossip[19798]["ChkFunc1-3"] =function ()
	if MMOJindowin_TimeJudgement() and MMOJindowin_LevelJudgement() then
		local nFirstEvent = tMMOJindowin_Stc["EventType"][8]
		local nFirstType = tMMOJindowin_Stc["DataType"][8]
		-- 是否是第一次点击此npc
		if Task_ChkStcValue(nFirstEvent,nFirstType,">=",1) then
			return false
		else
			Task_SetStatistic(nFirstEvent,nFirstType,1,1,0)
			return true
		end
	end
end
tNpcGossip[19798]["tOption1-3"] = {2,3,6,161,171} 
-- 1、前往彩云城
tNpcGossip[19798]["Option2"] = tMMOJindowin_Text[19798]["Option2"]
tNpcGossip[19798]["OptionFunc2"] = "MMOJindowin_JudgeEnterMap</N>19798"
-- 2、补领筋斗云====只能补领1次，不可补领时屏蔽选项。
tNpcGossip[19798]["Option3"] = tMMOJindowin_Text[19798]["Option3"]
tNpcGossip[19798]["OptionFunc3"] = "MMOJindowin_ReAskBox</N>19798"
tNpcGossip[19798]["OptionChkFunc3"] = function ()
	--如果玩家上线没有领取过则不显示补领选项
	local nEvent = tMMOJindowin_Stc["EventType"][7]
	local nType = tMMOJindowin_Stc["DataType"][7]
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		--检测是否补领宝箱
		local nEvent1 = tMMOJindowin_Stc["EventType"][4]
		local nType1 = tMMOJindowin_Stc["DataType"][4]
		if Task_ChkStcValue(nEvent1,nType1,">=",1) then
			return false
		else
			--检测是否背包中有宝箱
			if Item_ChkMulItem(tMMOJindowin_BoxType[1],tMMOJindowin_BoxType[9],1) then
				return false
			else
				return true
			end
		end
	else
		return false
	end
end
-- 3、筋斗云本服元气榜
tNpcGossip[19798]["Option4"] = tMMOJindowin_Text[19798]["Option4"]
tNpcGossip[19798]["OptionPoint4"] = "4-1"
-- 5、如何喂养筋斗云？
tNpcGossip[19798]["Option6"] = tMMOJindowin_Text[19798]["Option6"]
tNpcGossip[19798]["OptionPoint6"] = "5-1"
-- 6、合成七彩祥云
tNpcGossip[19798]["Option161"] = tMMOJindowin_Text[19798]["Option161"]
tNpcGossip[19798]["OptionPoint161"] = "2-2"
-- 7、打开天石商店
tNpcGossip[19798]["Option171"] = tMMOJindowin_Text[19798]["Option171"]
tNpcGossip[19798]["OptionFunc171"] = "MMOJindowin_OpenShop"
-- -- 6、都有哪些回报？
-- tNpcGossip[19798]["Option7"] = tMMOJindowin_Text[19798]["Option7"]
-- tNpcGossip[19798]["OptionPoint7"] = "6-1"

-- 等级达到，非首次点击
tNpcGossip[19798]["Text1-4"] = {131,132,125,146,144,145}
tNpcGossip[19798]["Text141"] = tMMOJindowin_Text[19798]["Text141"]
tNpcGossip[19798]["Text142"] = tMMOJindowin_Text[19798]["Text142"]
tNpcGossip[19798]["Text143"] = tMMOJindowin_Text[19798]["Text143"]
tNpcGossip[19798]["Text144"] = tMMOJindowin_Text[19798]["Text144"]
tNpcGossip[19798]["Text145"] = tMMOJindowin_Text[19798]["Text145"]
tNpcGossip[19798]["Text146"] = tMMOJindowin_Text[19798]["Text146"]
tNpcGossip[19798]["Text147"] = tMMOJindowin_Text[19798]["Text147"]
tNpcGossip[19798]["ChkFunc1-4"] =function ()
	if MMOJindowin_TimeJudgement() and MMOJindowin_LevelJudgement() then
		local nFirstEvent = tMMOJindowin_Stc["EventType"][8]
		local nFirstType = tMMOJindowin_Stc["DataType"][8]
		-- 是否是第一次点击此npc
		if Task_ChkStcValue(nFirstEvent,nFirstType,">=",1) then
			return true
		else
			return false
		end
	end
end
tNpcGossip[19798]["tOption1-4"] = {2,3,6,161,171}

--活动时间之后
tNpcGossip[19798]["Text1-5"] = {151}
-- tNpcGossip[19798]["Text1-5"] = {151,152,153}
tNpcGossip[19798]["Text151"] = tMMOJindowin_Text[19798]["Text151"]
tNpcGossip[19798]["Text152"] = tMMOJindowin_Text[19798]["Text152"]
tNpcGossip[19798]["Text153"] = tMMOJindowin_Text[19798]["Text153"]
-- tNpcGossip[19798]["ChkFunc1-5"] = function ()
	-- if Sys_ChkFullTime(tMMOJindowin_ActivityTime["AfterTime"]) then
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[19798]["tOption1-5"] = {9,10,12}
tNpcGossip[19798]["tOption1-5"] = {12}
-- A、领取筋斗云坐骑外套====（可领才显示）
tNpcGossip[19798]["Option9"] = tMMOJindowin_Text[19798]["Option9"]
tNpcGossip[19798]["OptionFunc9"] = "MMOJindowin_GetRankReward</N>19798"
tNpcGossip[19798]["OptionChkFunc9"] = function ()
	if Sys_ChkFullTime(tMMOJindowin_ActivityTime["AfterTime"]) then
		local nFlag = 0
		for i = 1, 3 do 
			if Get_SysDynaGlobalData(tMMOJindowin_ActivityData["GlobalRank"],i) == Get_UserId() then
				nFlag = i
				break
			end
		end
		
		-- 不在前3名中
		if nFlag == 0 then
			return false
		end
		
		local nEvent = tMMOJindowin_Stc["EventType"][1]
		local nType = tMMOJindowin_Stc["DataType"][1]
		-- 是否已领取过
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			return false
		else
			return true
		end
		
	else
		return false
	end
end
-- B、筋斗云本服元气榜
tNpcGossip[19798]["Option10"] = tMMOJindowin_Text[19798]["Option10"]
tNpcGossip[19798]["OptionPoint10"] = "10-1"
-- D、我只是来围观的
tNpcGossip[19798]["Option12"] = tMMOJindowin_Text[19798]["Option12"]

-- 接2：进入彩云山庄、不可进入、时间已满
tNpcGossip[19798]["Text2-1"] = {211}
tNpcGossip[19798]["Text211"] = tMMOJindowin_Text[19798]["Text211"]
tNpcGossip[19798]["tOption2-1"] = {13}
tNpcGossip[19798]["Option13"] = tMMOJindowin_Text[19798]["Option13"]

-- 合成七彩祥云
tNpcGossip[19798]["Text2-2"] = {221}
tNpcGossip[19798]["Text221"] = tMMOJindowin_Text[19798]["Text221"]
tNpcGossip[19798]["tOption2-2"] = {221,222}
tNpcGossip[19798]["Option221"] = tMMOJindowin_Text[19798]["Option221"]
tNpcGossip[19798]["Option222"] = tMMOJindowin_Text[19798]["Option222"]
tNpcGossip[19798]["OptionFunc221"] = "MMOJindowin_Mix"

-- 接3：补领筋斗云  失败、已有筋斗云
tNpcGossip[19798]["Text3-1"] = {311}
tNpcGossip[19798]["Text311"] = tMMOJindowin_Text[19798]["Text311"]
tNpcGossip[19798]["tOption3-1"] = {311}
tNpcGossip[19798]["Option311"] = tMMOJindowin_Text[19798]["Option311"]
-- 失败、背包满
tNpcGossip[19798]["Text3-2"] = {321}
tNpcGossip[19798]["Text321"] = tMMOJindowin_Text[19798]["Text321"]
tNpcGossip[19798]["tOption3-2"] = {321}
tNpcGossip[19798]["Option321"] = tMMOJindowin_Text[19798]["Option321"]
-- 第1补领成功
tNpcGossip[19798]["Text3-3"] = {331}
tNpcGossip[19798]["Text331"] = tMMOJindowin_Text[19798]["Text331"]
tNpcGossip[19798]["tOption3-3"] = {331}
tNpcGossip[19798]["Option331"] = tMMOJindowin_Text[19798]["Option331"]
-- 失败 已补领过 
tNpcGossip[19798]["Text3-4"] = {341}
tNpcGossip[19798]["Text341"] = tMMOJindowin_Text[19798]["Text341"]
tNpcGossip[19798]["tOption3-4"] = {341}
tNpcGossip[19798]["Option341"] = tMMOJindowin_Text[19798]["Option341"]

-- 接4：筋斗云本服元气榜
tNpcGossip[19798]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[19798]["Text411"] = tMMOJindowin_Text[19798]["Text411"]
tNpcGossip[19798]["Text412"] = tMMOJindowin_Text[19798]["Text412"]
tNpcGossip[19798]["Text413"] = tMMOJindowin_Text[19798]["Text413"]
tNpcGossip[19798]["Text414"] = tMMOJindowin_Text[19798]["Text414"]
tNpcGossip[19798]["Text415"] = tMMOJindowin_Text[19798]["Text415"]
tNpcGossip[19798]["Text416"] = tMMOJindowin_Text[19798]["Text416"]
tNpcGossip[19798]["Text417"] = tMMOJindowin_Text[19798]["Text417"]
tNpcGossip[19798]["ChkFunc4-1"] = function ()
	local tRankUserData={}
	--取排行榜玩家id，和成长值
	local nIndex = 0
	for i= 1, 5 do
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRank"]
		local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
		local nGrade = Get_SysDynaGlobalDataStr(nGolbalId,i)
		nIndex = nIndex +1
		tRankUserData[nIndex]={}
		tRankUserData[nIndex][1]= nPlayerId
		tRankUserData[nIndex][2] = nGrade == "" and 0 or tonumber(nGrade)		
	end
	
	--取排行榜玩家名字
	nIndex = 0
	for i =1,5 do 
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRankName"]
		nIndex = nIndex +1
		tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
	end
	
	local sLText_1 = tMMOJindowin_Text[19798]["Text431"]
	local sLText_2 = tMMOJindowin_Text[19798]["Text432"]
	local sLText_3 = tMMOJindowin_Text[19798]["Text433"]

	local leftNum = 413
	for i = 1 ,3 do
		--成长值
		local nGrade = tRankUserData[i][2]
		--玩家名字
		local sUserName = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tMMOJindowin_Text["UserMiss"] or tRankUserData[i][3]

		tNpcGossip[19798]["Text"..leftNum+i] = Sys_Alignment(tMMOJindowin_Text[19798]["Text43"..i],3,tostring(nGrade),22,sUserName,36) .. "\n"
		-- tNpcGossip[19798]["Text"..leftNum+i] = string.format(tMMOJindowin_Text[19798]["Text"..leftNum+i],nGrade,sUserName)
	end
	return true
end
tNpcGossip[19798]["tOption4-1"] = {14,15}
tNpcGossip[19798]["Option14"] = tMMOJindowin_Text[19798]["Option14"]
tNpcGossip[19798]["OptionPoint14"] = "4-2"
-- 4、筋斗云全服元气榜====（点击后弹出活动页面）
tNpcGossip[19798]["Option5"] = tMMOJindowin_Text[19798]["Option5"]
tNpcGossip[19798]["OptionFunc5"] = "MMOJindowin_OpenWebAddress</N>19798"
tNpcGossip[19798]["Option15"] = tMMOJindowin_Text[19798]["Option15"]
-- 本服元气榜奖赏
tNpcGossip[19798]["Text4-2"] = {421,422,423,424,425,426,427}
tNpcGossip[19798]["Text421"] = tMMOJindowin_Text[19798]["Text421"]
tNpcGossip[19798]["Text422"] = tMMOJindowin_Text[19798]["Text422"]
tNpcGossip[19798]["Text423"] = tMMOJindowin_Text[19798]["Text423"]
tNpcGossip[19798]["Text424"] = tMMOJindowin_Text[19798]["Text424"]
tNpcGossip[19798]["Text425"] = tMMOJindowin_Text[19798]["Text425"]
tNpcGossip[19798]["Text426"] = tMMOJindowin_Text[19798]["Text426"]
tNpcGossip[19798]["Text427"] = tMMOJindowin_Text[19798]["Text427"]
tNpcGossip[19798]["tOption4-2"] = {16}
tNpcGossip[19798]["Option16"] = tMMOJindowin_Text[19798]["Option16"]
tNpcGossip[19798]["OptionPoint16"] = "4-1"
-- 接5 如何喂养筋斗云？
tNpcGossip[19798]["Text5-1"] = {511,512,513,514,515,516,517,518}
tNpcGossip[19798]["Text511"] = tMMOJindowin_Text[19798]["Text511"]
tNpcGossip[19798]["Text512"] = tMMOJindowin_Text[19798]["Text512"]
tNpcGossip[19798]["Text513"] = tMMOJindowin_Text[19798]["Text513"]
tNpcGossip[19798]["Text514"] = tMMOJindowin_Text[19798]["Text514"]
tNpcGossip[19798]["Text515"] = tMMOJindowin_Text[19798]["Text515"]
tNpcGossip[19798]["Text516"] = tMMOJindowin_Text[19798]["Text516"]
tNpcGossip[19798]["Text517"] = tMMOJindowin_Text[19798]["Text517"]
tNpcGossip[19798]["Text518"] = tMMOJindowin_Text[19798]["Text518"]
tNpcGossip[19798]["tOption5-1"] = {17,19,20,21}
tNpcGossip[19798]["Option17"] = tMMOJindowin_Text[19798]["Option17"]
tNpcGossip[19798]["OptionPoint17"] = "5-2"
tNpcGossip[19798]["Option19"] = tMMOJindowin_Text[19798]["Option19"]
tNpcGossip[19798]["OptionPoint19"] = "6-2"
tNpcGossip[19798]["Option20"] = tMMOJindowin_Text[19798]["Option20"]
tNpcGossip[19798]["OptionPoint20"] = "6-3"
tNpcGossip[19798]["Option21"] = tMMOJindowin_Text[19798]["Option21"]
tNpcGossip[19798]["OptionPoint21"] = "6-5"
-- 如何获得云灵？
tNpcGossip[19798]["Text5-2"] = {521,522,523,524,525,526,527}
tNpcGossip[19798]["Text521"] = tMMOJindowin_Text[19798]["Text521"]
tNpcGossip[19798]["Text522"] = tMMOJindowin_Text[19798]["Text522"]
tNpcGossip[19798]["Text523"] = tMMOJindowin_Text[19798]["Text523"]
tNpcGossip[19798]["Text524"] = tMMOJindowin_Text[19798]["Text524"]
tNpcGossip[19798]["Text525"] = tMMOJindowin_Text[19798]["Text525"]
tNpcGossip[19798]["Text526"] = tMMOJindowin_Text[19798]["Text526"]
tNpcGossip[19798]["Text527"] = tMMOJindowin_Text[19798]["Text527"]
tNpcGossip[19798]["tOption5-2"] = {18}
tNpcGossip[19798]["Option18"] = tMMOJindowin_Text[19798]["Option18"]
tNpcGossip[19798]["OptionPoint18"] = "5-1"

-- 接6 都有哪些回报？
tNpcGossip[19798]["Text6-1"] = {611,612,613,614,615,616,617}
tNpcGossip[19798]["Text611"] = tMMOJindowin_Text[19798]["Text611"]
tNpcGossip[19798]["Text612"] = tMMOJindowin_Text[19798]["Text612"]
tNpcGossip[19798]["Text613"] = tMMOJindowin_Text[19798]["Text613"]
tNpcGossip[19798]["Text614"] = tMMOJindowin_Text[19798]["Text614"]
tNpcGossip[19798]["Text615"] = tMMOJindowin_Text[19798]["Text615"]
tNpcGossip[19798]["Text616"] = tMMOJindowin_Text[19798]["Text616"]
tNpcGossip[19798]["Text617"] = tMMOJindowin_Text[19798]["Text617"]
tNpcGossip[19798]["tOption6-1"] = {22}
tNpcGossip[19798]["Option22"] = tMMOJindowin_Text[19798]["Option22"]
tNpcGossip[19798]["OptionPoint22"] = "1-3"
-- 养育回报查看
tNpcGossip[19798]["Text6-2"] = {621,622,623,624,625,626,627}
tNpcGossip[19798]["Text621"] = tMMOJindowin_Text[19798]["Text621"]
tNpcGossip[19798]["Text622"] = tMMOJindowin_Text[19798]["Text622"]
tNpcGossip[19798]["Text623"] = tMMOJindowin_Text[19798]["Text623"]
tNpcGossip[19798]["Text624"] = tMMOJindowin_Text[19798]["Text624"]
tNpcGossip[19798]["Text625"] = tMMOJindowin_Text[19798]["Text625"]
tNpcGossip[19798]["Text626"] = tMMOJindowin_Text[19798]["Text626"]
tNpcGossip[19798]["Text627"] = tMMOJindowin_Text[19798]["Text627"]
tNpcGossip[19798]["tOption6-2"] = {23}
tNpcGossip[19798]["Option23"] = tMMOJindowin_Text[19798]["Option23"]
tNpcGossip[19798]["OptionPoint23"] = "5-1"
-- 进阶回报查看
tNpcGossip[19798]["Text6-3"] = {631,632,633,634,635,636,637,638,639,640,641,642}
tNpcGossip[19798]["Text631"] = tMMOJindowin_Text[19798]["Text631"]
tNpcGossip[19798]["Text632"] = tMMOJindowin_Text[19798]["Text632"]
tNpcGossip[19798]["Text633"] = tMMOJindowin_Text[19798]["Text633"]
tNpcGossip[19798]["Text634"] = tMMOJindowin_Text[19798]["Text634"]
tNpcGossip[19798]["Text635"] = tMMOJindowin_Text[19798]["Text635"]
tNpcGossip[19798]["Text636"] = tMMOJindowin_Text[19798]["Text636"]
tNpcGossip[19798]["Text637"] = tMMOJindowin_Text[19798]["Text637"]
tNpcGossip[19798]["Text638"] = tMMOJindowin_Text[19798]["Text638"]
tNpcGossip[19798]["Text639"] = tMMOJindowin_Text[19798]["Text639"]
tNpcGossip[19798]["Text640"] = tMMOJindowin_Text[19798]["Text640"]
tNpcGossip[19798]["Text641"] = tMMOJindowin_Text[19798]["Text641"]
tNpcGossip[19798]["Text642"] = tMMOJindowin_Text[19798]["Text642"]
tNpcGossip[19798]["tOption6-3"] = {24}
tNpcGossip[19798]["Option24"] = tMMOJindowin_Text[19798]["Option24"]
tNpcGossip[19798]["OptionPoint24"] = "5-1"
-- 每日回报查看
tNpcGossip[19798]["Text6-5"] = {651,652,653,654,655,656,657,658,659,660,661,662}
tNpcGossip[19798]["Text651"] = tMMOJindowin_Text[19798]["Text651"]
tNpcGossip[19798]["Text652"] = tMMOJindowin_Text[19798]["Text652"]
tNpcGossip[19798]["Text653"] = tMMOJindowin_Text[19798]["Text653"]
tNpcGossip[19798]["Text654"] = tMMOJindowin_Text[19798]["Text654"]
tNpcGossip[19798]["Text655"] = tMMOJindowin_Text[19798]["Text655"]
tNpcGossip[19798]["Text656"] = tMMOJindowin_Text[19798]["Text656"]
tNpcGossip[19798]["Text657"] = tMMOJindowin_Text[19798]["Text657"]
tNpcGossip[19798]["Text658"] = tMMOJindowin_Text[19798]["Text658"]
tNpcGossip[19798]["Text659"] = tMMOJindowin_Text[19798]["Text659"]
tNpcGossip[19798]["Text660"] = tMMOJindowin_Text[19798]["Text660"]
tNpcGossip[19798]["Text661"] = tMMOJindowin_Text[19798]["Text661"]
tNpcGossip[19798]["Text662"] = tMMOJindowin_Text[19798]["Text662"]
tNpcGossip[19798]["tOption6-5"] = {25}
tNpcGossip[19798]["Option25"] = tMMOJindowin_Text[19798]["Option25"]
tNpcGossip[19798]["OptionPoint25"] = "5-1"
-- 接9：领取排名奖赏
-- 失败、背包满
tNpcGossip[19798]["Text9-1"] = {911}
tNpcGossip[19798]["Text911"] = tMMOJindowin_Text[19798]["Text911"]
tNpcGossip[19798]["tOption9-1"] = {26}
tNpcGossip[19798]["Option26"] = tMMOJindowin_Text[19798]["Option26"]
-- 失败、未进前3
tNpcGossip[19798]["Text9-2"] = {921}
tNpcGossip[19798]["Text921"] = tMMOJindowin_Text[19798]["Text921"]
tNpcGossip[19798]["tOption9-2"] = {27}
tNpcGossip[19798]["Option27"] = tMMOJindowin_Text[19798]["Option27"]
-- 失败、已领取过
tNpcGossip[19798]["Text9-3"] = {931}
tNpcGossip[19798]["Text931"] = tMMOJindowin_Text[19798]["Text931"]
tNpcGossip[19798]["tOption9-3"] = {8}
tNpcGossip[19798]["Option28"] = tMMOJindowin_Text[19798]["Option28"]
-- 成功
tNpcGossip[19798]["Text9-4"] = {941}
tNpcGossip[19798]["Text941"] = tMMOJindowin_Text[19798]["Text941"]
tNpcGossip[19798]["tOption9-4"] = {29}
tNpcGossip[19798]["Option29"] = tMMOJindowin_Text[19798]["Option29"]

-- 接10：筋斗云龙虎榜
tNpcGossip[19798]["Text10-1"] = {1011,1012,1013,1014,1015,1016,1017}
tNpcGossip[19798]["Text1011"] = tMMOJindowin_Text[19798]["Text1011"]
tNpcGossip[19798]["Text1012"] = tMMOJindowin_Text[19798]["Text1012"]
tNpcGossip[19798]["Text1013"] = tMMOJindowin_Text[19798]["Text1013"]
tNpcGossip[19798]["Text1014"] = tMMOJindowin_Text[19798]["Text1014"]
tNpcGossip[19798]["Text1015"] = tMMOJindowin_Text[19798]["Text1015"]
tNpcGossip[19798]["Text1016"] = tMMOJindowin_Text[19798]["Text1016"]
tNpcGossip[19798]["Text1017"] = tMMOJindowin_Text[19798]["Text1017"]
tNpcGossip[19798]["ChkFunc10-1"] = function ()
	local tRankUserData={}
	--取排行榜玩家id，和成长值
	local nIndex = 0
	for i= 1, 5 do
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRank"]
		local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
		local nGrade = Get_SysDynaGlobalDataStr(nGolbalId,i)
		nIndex = nIndex +1
		tRankUserData[nIndex]={}
		tRankUserData[nIndex][1]= nPlayerId
		tRankUserData[nIndex][2] = nGrade == "" and 0 or tonumber(nGrade)		
	end
	
	--取排行榜玩家名字
	nIndex = 0
	for i =1,5 do 
		local nGolbalId = tMMOJindowin_ActivityData["GlobalRankName"]
		nIndex = nIndex +1
		tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
	end
	
	local leftNum = 1013
	for i = 1 ,3 do
		--成长值
		local nGrade = tRankUserData[i][2]
		--玩家名字
		local sUserName = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tMMOJindowin_Text["UserMiss"] or tRankUserData[i][3]
		tNpcGossip[19798]["Text"..leftNum+i] = Sys_Alignment(tMMOJindowin_Text[19798]["Text43"..i],3,tMMOJindowin_Text[19798]["Text103"..i],12,tostring(nGrade),35,sUserName,45) .. "\n"
		-- tNpcGossip[19798]["Text"..leftNum+i]=string.format(tMMOJindowin_Text[19798]["Text"..leftNum+i],nGrade,sUserName)
	end
	return true
end
tNpcGossip[19798]["tOption10-1"] = {30}
-- C、筋斗云全服元气榜====（点击后弹出活动页面）
tNpcGossip[19798]["Option11"] = tMMOJindowin_Text[19798]["Option11"]
tNpcGossip[19798]["OptionFunc11"] = "MMOJindowin_OpenWebAddress</N>19798"
tNpcGossip[19798]["Option30"] = tMMOJindowin_Text[19798]["Option30"]
-- 接上、超出活动时间
tNpcGossip[19798]["Text10-2"] = {1021}
tNpcGossip[19798]["Text1021"] = tMMOJindowin_Text[19798]["Text1021"]
tNpcGossip[19798]["ChkFunc10-2"] = function ()
	if not MMOJindowin_TimeJudgement() and not Sys_ChkFullTime(tMMOJindowin_ActivityTime["AfterTime"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19798]["tOption10-2"] = {31}
tNpcGossip[19798]["Option31"] = tMMOJindowin_Text[19798]["Option31"]

--------------------------------------------------------------------------------
-- 彩云庄主 19799
tNpcFace[4392] = 54
tNpcGossip[19799] = tNpcGossip[19799] or DefaultNpc:new{}
tNpcGossip[19799]["OptionHidden"] = 1

tNpcGossip[19799]["Text1-1"] = {111,112}
tNpcGossip[19799]["Text111"] = tMMOJindowin_Text[19799]["Text111"]
tNpcGossip[19799]["Text112"] = tMMOJindowin_Text[19799]["Text112"]
tNpcGossip[19799]["tOption1-1"] = {2}
--A、	请送我回去。
-- tNpcGossip[19799]["Option1"] = tMMOJindowin_Text[19799]["Option1"]
-- tNpcGossip[19799]["OptionFunc1"] = "MMOJindowin_ChgMap</S>TwinCity"
tNpcGossip[19799]["Option2"] = tMMOJindowin_Text[19799]["Option2"]

---------------------------------------------物品模版---------------------------------------
---筋斗云
tItem[3301296] = tItem[3301296] or {}
tItem[3301296]["Text1-1"] = {111,112,113,114,1140,115,117,118,119}
tItem[3301296]["Text111"] = tMMOJindowin_Text[3301296]["Text111"]
tItem[3301296]["Text112"] = tMMOJindowin_Text[3301296]["Text112"]
tItem[3301296]["Text113"] = tMMOJindowin_Text[3301296]["Text113"]
tItem[3301296]["Text114"] = tMMOJindowin_Text[3301296]["Text114"]
tItem[3301296]["Text1140"] = tMMOJindowin_Text[3301296]["Text1140"]
tItem[3301296]["Text115"] = tMMOJindowin_Text[3301296]["Text115"]
tItem[3301296]["Text116"] = tMMOJindowin_Text[3301296]["Text116"]
tItem[3301296]["Text117"] = tMMOJindowin_Text[3301296]["Text117"]
tItem[3301296]["Text118"] = tMMOJindowin_Text[3301296]["Text118"]
tItem[3301296]["Text119"] = tMMOJindowin_Text[3301296]["Text119"]
tItem[3301296]["tOption1-1"] = {1,2}
-- 喂养筋斗云
tItem[3301296]["Option1"] = tMMOJindowin_Text[3301296]["Option1"]
-- 领取每日回报
tItem[3301296]["Option2"] = tMMOJindowin_Text[3301296]["Option2"]
tItem[3301296]["Function"] = function(nItemId,sItemName)
	MMOJindowin_OpenBoxFirstWordCheck(nItemId)
	MMOJindowin_OpenBox(nItemId)
	-- LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 喂养筋斗云
-- 失败、无该云灵
tItem[3301296]["Text3-1"] = {311}
tItem[3301296]["Text311"] = tMMOJindowin_Text[3301296]["Text311"]
tItem[3301296]["tOption3-1"] = {3,4}
-- 使用天石抵扣
tItem[3301296]["Option3"] = tMMOJindowin_Text[3301296]["Option3"]
tItem[3301296]["Option4"] = tMMOJindowin_Text[3301296]["Option4"]
-- 二次确认
tItem[3301296]["Text3-2"] = {321}
tItem[3301296]["Text321"] = tMMOJindowin_Text[3301296]["Text321"]
tItem[3301296]["tOption3-2"] = {5,6}
--确认
tItem[3301296]["Option5"] = tMMOJindowin_Text[3301296]["Option5"]
tItem[3301296]["Option6"] = tMMOJindowin_Text[3301296]["Option6"]
--失败、天石不足
tItem[3301296]["Text3-3"] = {331}
tItem[3301296]["Text331"] = tMMOJindowin_Text[3301296]["Text331"]
tItem[3301296]["tOption3-3"] = {7}
tItem[3301296]["Option7"] = tMMOJindowin_Text[3301296]["Option7"]
--失败、背包满
tItem[3301296]["Text3-4"] = {341}
tItem[3301296]["Text341"] = tMMOJindowin_Text[3301296]["Text341"]
tItem[3301296]["tOption3-4"] = {8}
tItem[3301296]["Option8"] = tMMOJindowin_Text[3301296]["Option8"]

-- 失败、当日已领取
tItem[3301296]["Text4-1"] = {411}
tItem[3301296]["Text411"] = tMMOJindowin_Text[3301296]["Text411"]
tItem[3301296]["tOption4-1"] = {9}
tItem[3301296]["Option9"] = tMMOJindowin_Text[3301296]["Option9"]

--打开宝箱-->选奖励对白2-2
tItem[3301296]["Text4-2"] = {421,422,423,424,425,426,427}
tItem[3301296]["Text421"] = tMMOJindowin_Text[3301296]["Text421"]
tItem[3301296]["Text422"] = tMMOJindowin_Text[3301296]["Text422"]
tItem[3301296]["Text423"] = tMMOJindowin_Text[3301296]["Text423"]
tItem[3301296]["Text424"] = tMMOJindowin_Text[3301296]["Text424"]
tItem[3301296]["Text425"] = tMMOJindowin_Text[3301296]["Text425"]
tItem[3301296]["Text426"] = tMMOJindowin_Text[3301296]["Text426"]
tItem[3301296]["Text427"] = tMMOJindowin_Text[3301296]["Text427"]
tItem[3301296]["tOption4-2"] = {10,11,12,13}
-- 我要%d分钟经验
tItem[3301296]["Option10"] = tMMOJindowin_Text[3301296]["Option10"]
-- 我要%d点修行值
tItem[3301296]["Option11"] = tMMOJindowin_Text[3301296]["Option11"]
-- 我要%d点气力值
tItem[3301296]["Option12"] = tMMOJindowin_Text[3301296]["Option12"]
-- 我要圣云灵
tItem[3301296]["Option13"] = tMMOJindowin_Text[3301296]["Option13"]

for i=3301297,3301304 do
	tItem[i] = tItem[3301296]
end

--灵珠
tItem[3301292] = tItem[3301292] or {}
tItem[3301292]["Text1-1"] = {111}
tItem[3301292]["Text111"] = tMMOJindowin_Text[3301292]["Text111"]
tItem[3301292]["tOption1-1"] = {1,2}
tItem[3301292]["Option1"] = tMMOJindowin_Text[3301292]["Option1"]
tItem[3301292]["Option2"] = tMMOJindowin_Text[3301292]["Option2"]
tItem[3301292]["Function"] = function(nItemId,sItemName)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
	local sNowBallName = Get_ItemtypeName(nItemId)
	local sNextBallName = Get_ItemtypeName(tMMOJindowin_BallData["NextBall"][nItemId])
	tItem[nItemId]["Text111"] = string.format(tMMOJindowin_Text[3301292]["Text111"],sNowBallName,sNextBallName)
	tItem[nItemId]["Option1"] = string.format(tMMOJindowin_Text[3301292]["Option1"],sNextBallName)
	tItem[nItemId]["OptionFunc1"] = "MMOJindowin_CompoundNextBall</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end
--失败、数量不足
tItem[3301292]["Text1-2"] = {121}
tItem[3301292]["Text121"] = tMMOJindowin_Text[3301292]["Text121"]
tItem[3301292]["tOption1-2"] = {3}
tItem[3301292]["Option3"] = tMMOJindowin_Text[3301292]["Option3"]
--失败、背包满
tItem[3301292]["Text1-3"] = {131}
tItem[3301292]["Text131"] = tMMOJindowin_Text[3301292]["Text131"]
tItem[3301292]["tOption1-3"] = {4}
tItem[3301292]["Option4"] = tMMOJindowin_Text[3301292]["Option4"]
--合成失败
tItem[3301292]["Text1-4"] = {141}
tItem[3301292]["Text141"] = tMMOJindowin_Text[3301292]["Text141"]
tItem[3301292]["tOption1-4"] = {5}
tItem[3301292]["Option5"] = tMMOJindowin_Text[3301292]["Option5"]
tItem[3301292]["OptionPoint5"] = "1-1"
--合成成功
tItem[3301292]["Text1-5"] = {151}
tItem[3301292]["Text151"] = tMMOJindowin_Text[3301292]["Text151"]
tItem[3301292]["tOption1-5"] = {6}
tItem[3301292]["Option6"] = tMMOJindowin_Text[3301292]["Option6"]
tItem[3301292]["OptionPoint6"] = "1-1"

for i = 3301293,3301294 do
	tItem[i] = tItem[3301292]
end

-- 圣云灵 3301295
tItem[3301295] = tItem[3301295] or {}
tItem[3301295]["Function"] = function(nItemId,sItemName)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			User_TalkChannel2005(tMMOJindowin_Text["ItemOutTime"])
			Sys_SaveActionFestivalLog(string.format(tMMOJindowin_Log["DelItem"],nItemId,nNum))
		end
		return
	end
end

-- 恢复中坐骑 3313148
tItem[3313148] = tItem[3313148] or {}
tItem[3313148]["Function"] = function(nItemId,sItemName)
	--判断活动时间
	if not MMOJindowin_TimeJudgement() then
		--不在活动时间内
		RewardTemplate_UseItemAndMsg(tMMOJindowin_RewardItem[nItemId])
	else
		Sys_MsgBox(tMMOJindowin_Text["Repairing"])
	end
end
tItem[3313149] = tItem[3313148]
tItem[3313150] = tItem[3313148]
tItem[3313151] = tItem[3313148]
tItem[3313152] = tItem[3313148]
tItem[3313153] = tItem[3313148]
tItem[3313154] = tItem[3313148]
tItem[3313155] = tItem[3313148]
tItem[3313039] = tItem[3313148]
tItem[3313040] = tItem[3313148]

tItemFace[3322224] = 2368
-- 五色彩云随机包 3322224
tItem[3322224] = tItem[3322224] or {}
tItem[3322224]["Function"] = function(nItemId,sItemName)
	MMOJindowin_ClickRandomPackage(nItemId)
end
tItem[3322224]["DialogueText"] = tMMOJindowin_Text[3322224]
tItem[3322224]["Text1-1"] = {111,112,113,114,112,115}
tItem[3322224]["tOption1-1"] = {111,112}
tItem[3322224]["OptionFunc111"] = "MMOJindowin_OpenRandomPackage</N>3322224"
tItem[3322224]["OptionFunc112"] = "MMOJindowin_CostItemRefresh</N>3322224"

-- 万能云灵 3313137
tItem[3313137] = tItem[3313137] or {}
tItem[3313137]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tMMOJindowin_RewardItem,nItemId)
end

-- 坐骑外套 3313223
tItem[3313223] = tItem[3313223] or {}
tItem[3313223]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMMOJindowin_RewardItem[nItemId])
end
tItem[3313224] = tItem[3313223]
tItem[3313225] = tItem[3313223]
tItem[3313226] = tItem[3313223]
----------------------------------------------怪物模版---------------------------------------
-- 云灵荒兽 4250
tMonster[4250] = tMonster[4250] or {}
tMonster[4250]["tFunction"] = tMonster[4250]["tFunction"] or {}
table.insert(tMonster[4250]["tFunction"],MMOJindowin_MonsterDrop)

--------------------------------------------时间自检---------------------------------------
-- 更新动态码数据  奖励物品上限
local tMMOJindowin_ReSetFeedRanks = {}
tMMOJindowin_ReSetFeedRanks["Type"] = 6
tMMOJindowin_ReSetFeedRanks["TimeType"] = 4
tMMOJindowin_ReSetFeedRanks["Multiple"] = {}
tMMOJindowin_ReSetFeedRanks["Multiple"][1]  = "00:00 00:00"
tMMOJindowin_ReSetFeedRanks["Func"] = MMOJindowin_ReSetFeedRanks
table.insert(tSystemTime_InitialData,tMMOJindowin_ReSetFeedRanks)
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],MMOJindowin_ReSetFeedRanks)

-- 每隔1分钟刷新一个动态npc 矿石
tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func,MMOJindowin_CreateDyneStone)

--------------------------------------------上线触发---------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,MMOJindowin_Online)

