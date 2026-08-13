------------------------------------------------------------------------------------
--Name:		190430[简体征服][活动脚本]新龙塔玩法--爬塔玩法
--Purpose:	新龙塔玩法--爬塔玩法
--Creator: 	严振飞
--Created:	2019/04/30
------------------------------------------------------------------------------------
--前缀DragonSoulFloor_
--logid:12001402

-- #stc 掩码说明 
-- #stc(189,98) 记录玩家炉子内的-AnimaID
-- #stc(189,99) 记录玩家-Anima重置次数（最多重铸8次，8次后自动取出）


-- -Anima说明
-- 4200001 P1Anima
-- 4200002 P2Anima
-- 4200003 P3Anima
-- 4200004 P4Anima
-- 4200005 P5Anima
-- 4200006 P6Anima
-- 4200007 P7Anima
-- 4200008 P8Anima
-- 4200009 P9Anima
-- 4200010 P10Anima
-- 4200011 P11Anima
-- 4200012 P12Anima
-- 4200013 P13Anima
-- 4200014 P14Anima
-- 4200015 P15Anima
-- 4200016 P16Anima
-- 4200017 P17Anima
-- 4200018 P18Anima


----------------------------------数据部分配置----------------------------------
-- 层数数据
local tDragonSoulFloor_Layer = {}
	-- ["MapId"] 		-- 对应地图Id
	-- ["SoulId"] 		-- 对应-AnimaId
	tDragonSoulFloor_Layer[1]  = {["MapId"] = 10622,  ["SoulId"] = 4200001}
	tDragonSoulFloor_Layer[2]  = {["MapId"] = 10623,  ["SoulId"] = 4200002}
	tDragonSoulFloor_Layer[3]  = {["MapId"] = 10624,  ["SoulId"] = 4200003}
	tDragonSoulFloor_Layer[4]  = {["MapId"] = 10625,  ["SoulId"] = 4200004}
	tDragonSoulFloor_Layer[5]  = {["MapId"] = 10626,  ["SoulId"] = 4200005}
	tDragonSoulFloor_Layer[6]  = {["MapId"] = 10627,  ["SoulId"] = 4200006}
	tDragonSoulFloor_Layer[7]  = {["MapId"] = 10628,  ["SoulId"] = 4200007}
	tDragonSoulFloor_Layer[8]  = {["MapId"] = 10629,  ["SoulId"] = 4200008}
	tDragonSoulFloor_Layer[9]  = {["MapId"] = 10630,  ["SoulId"] = 4200009}
	tDragonSoulFloor_Layer[10] = {["MapId"] = 10631,  ["SoulId"] = 4200010}
	tDragonSoulFloor_Layer[11] = {["MapId"] = 10632,  ["SoulId"] = 4200011}
	tDragonSoulFloor_Layer[12] = {["MapId"] = 10633,  ["SoulId"] = 4200012}
	tDragonSoulFloor_Layer[13] = {["MapId"] = 10634,  ["SoulId"] = 4200013}
	tDragonSoulFloor_Layer[14] = {["MapId"] = 10635,  ["SoulId"] = 4200014}
	tDragonSoulFloor_Layer[15] = {["MapId"] = 10636,  ["SoulId"] = 4200015}
	tDragonSoulFloor_Layer[16] = {["MapId"] = 10637,  ["SoulId"] = 4200016}
	tDragonSoulFloor_Layer[17] = {["MapId"] = 10638,  ["SoulId"] = 4200017}
	tDragonSoulFloor_Layer[18] = {["MapId"] = 10639,  ["SoulId"] = 4200018}


-- 基础数据
local tDragonSoulFloor_Cont = {}
	-- 可进楼层数
	tDragonSoulFloor_Cont["JoinFloor"] = 12
	
	-- 传送塔内坐标
	tDragonSoulFloor_Cont["TowerPosX"] = 44
	tDragonSoulFloor_Cont["TowerPosY"] = 44
	-- 返回双龙城(普通服)
	tDragonSoulFloor_Cont["NrmlCity"] = {}
	tDragonSoulFloor_Cont["NrmlCity"]["MapId"] = 1002
	tDragonSoulFloor_Cont["NrmlCity"]["PosX"] = 350
	tDragonSoulFloor_Cont["NrmlCity"]["PosY"] = 460
	-- 返回双龙城(激情服)
	tDragonSoulFloor_Cont["GiftCity"] = {}
	tDragonSoulFloor_Cont["GiftCity"]["MapId"] = 10364
	tDragonSoulFloor_Cont["GiftCity"]["PosX"] = 318
	tDragonSoulFloor_Cont["GiftCity"]["PosY"] = 295
	-- 网页链接
	tDragonSoulFloor_Cont["Wel"] = "https://co.99.com/guide/event/anima_introduction.shtml"

	-- 光效
	-- tDragonSoulFloor_Cont["Effect"] = {}
	-- tDragonSoulFloor_Cont["Effect"][1]  = "PLTG_1"
	-- tDragonSoulFloor_Cont["Effect"][2]  = "PLTG_2"
	-- tDragonSoulFloor_Cont["Effect"][3]  = "PLTG_3"
	-- tDragonSoulFloor_Cont["Effect"][4]  = "PLTG_4"
	-- tDragonSoulFloor_Cont["Effect"][5]  = "PLTG_5"
	-- tDragonSoulFloor_Cont["Effect"][6]  = "PLTG_6"
	-- tDragonSoulFloor_Cont["Effect"][7]  = "PLTG_7"
	-- tDragonSoulFloor_Cont["Effect"][8]  = "PLTG_8"
	-- tDragonSoulFloor_Cont["Effect"][9]  = "PLTG_9"
	-- tDragonSoulFloor_Cont["Effect"][10] = "PLTG_10"
	-- tDragonSoulFloor_Cont["Effect"][11] = "PLTG_11"
	-- tDragonSoulFloor_Cont["Effect"][12] = "PLTG_12"
	-- tDragonSoulFloor_Cont["Effect"][13] = "PLTG_13"
	-- tDragonSoulFloor_Cont["Effect"][14] = "PLTG_14"
	-- tDragonSoulFloor_Cont["Effect"][15] = "PLTG_15"
	-- tDragonSoulFloor_Cont["Effect"][16] = "PLTG_16"
	-- tDragonSoulFloor_Cont["Effect"][17] = "PLTG_17"
	-- tDragonSoulFloor_Cont["Effect"][18] = "PLTG_18"
	tDragonSoulFloor_Cont["Effect"] = {}
	tDragonSoulFloor_Cont["Effect"][1]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][2]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][3]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][4]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][5]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][6]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][7]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][8]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][9]  = "angelwing"
	tDragonSoulFloor_Cont["Effect"][10] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][11] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][12] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][13] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][14] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][15] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][16] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][17] = "angelwing"
	tDragonSoulFloor_Cont["Effect"][18] = "angelwing"

----------------------------------奖励配置部分--------------------------------------------
local tDragonSoulFloor_TrapPos = {}
	-- ===随机陷阱坐标
	-- ===索引: tDragonSoulFloor_TrapPos[1]
	tDragonSoulFloor_TrapPos[1] = {}
	tDragonSoulFloor_TrapPos[1]["ItemChanceSum"] = 10000
	-- 陷阱1号 - 25.00%
	tDragonSoulFloor_TrapPos[1][1] = {}
	tDragonSoulFloor_TrapPos[1][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_TrapPos[1][1]["ItemChance"] = 2500
	tDragonSoulFloor_TrapPos[1][1]["PosTable"] = {09,23}
	-- 陷阱2号 - 25.00%
	tDragonSoulFloor_TrapPos[1][2] = {}
	tDragonSoulFloor_TrapPos[1][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_TrapPos[1][2]["ItemChance"] = 2500
	tDragonSoulFloor_TrapPos[1][2]["PosTable"] = {27,41}
	-- 陷阱3号 - 25.00%
	tDragonSoulFloor_TrapPos[1][3] = {}
	tDragonSoulFloor_TrapPos[1][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_TrapPos[1][3]["ItemChance"] = 2500
	tDragonSoulFloor_TrapPos[1][3]["PosTable"] = {40,27}
	-- 陷阱4号 - 25.00%
	tDragonSoulFloor_TrapPos[1][4] = {}
	tDragonSoulFloor_TrapPos[1][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_TrapPos[1][4]["ItemChance"] = 2500
	tDragonSoulFloor_TrapPos[1][4]["PosTable"] = {25,11}

local tDragonSoulFloor_Reward = {}
	-- ===1阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[1]
	-- ===删除: 4200001,1
	-- ===LogStep: 2[1]
	tDragonSoulFloor_Reward[1] = {}
	tDragonSoulFloor_Reward[1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[1]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[1]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[1]["DeleteItem"][1]["Id"] = 4200001 -- 【库】1阶-Anima[属性:72]
	tDragonSoulFloor_Reward[1]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[1]["LogId"] = 12001402
	tDragonSoulFloor_Reward[1]["LogStep"] = " 2[1]"
	-- 5分钟经验 - 53.90%
	tDragonSoulFloor_Reward[1][1] = {}
	tDragonSoulFloor_Reward[1][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[1][1]["ItemChance"] = 5390
	tDragonSoulFloor_Reward[1][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[1][1]["RewardExpTime"]["Value"] = 5 -- 分钟经验, 【需求】5分钟经验
	tDragonSoulFloor_Reward[1][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[1][1]["RewardExpTime"]["FullValue"] = 3 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[1][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[1],6,3"
	-- 2阶-Anima,传送到2层 - 45.10%
	tDragonSoulFloor_Reward[1][2] = {}
	tDragonSoulFloor_Reward[1][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[1][2]["ItemChance"] = 4510
	tDragonSoulFloor_Reward[1][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[1][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[1][2]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶-Anima[属性:72], 【表格】2阶-Anima,传送到2层
	tDragonSoulFloor_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶-Anima*1
	tDragonSoulFloor_Reward[1][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[1][2]["ChgLayer"] = 2
	-- 4阶-Anima,传送到4层 - 1.00%
	tDragonSoulFloor_Reward[1][3] = {}
	tDragonSoulFloor_Reward[1][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[1][3]["ItemChance"] = 100
	tDragonSoulFloor_Reward[1][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[1][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[1][3]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶-Anima[属性:72], 【表格】4阶-Anima,传送到4层
	tDragonSoulFloor_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶-Anima*1
	tDragonSoulFloor_Reward[1][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[1][3]["ChgLayer"] = 4
	tDragonSoulFloor_Reward[1][3]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[1][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[2] = {}
	-- ===2阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[2]
	-- ===删除: 4200002,1
	-- ===LogStep: 2[2]
	tDragonSoulFloor_Reward[2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[2]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[2]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[2]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶-Anima[属性:72]
	tDragonSoulFloor_Reward[2]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[2]["LogId"] = 12001402
	tDragonSoulFloor_Reward[2]["LogStep"] = " 2[2]"
	-- 10分钟经验 - 48.90%
	tDragonSoulFloor_Reward[2][1] = {}
	tDragonSoulFloor_Reward[2][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[2][1]["ItemChance"] = 4890
	tDragonSoulFloor_Reward[2][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[2][1]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验
	tDragonSoulFloor_Reward[2][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[2][1]["RewardExpTime"]["FullValue"] = 5 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[2][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[2],6,5"
	-- 2阶-Anima+1阶-Anima - 20.10%
	tDragonSoulFloor_Reward[2][2] = {}
	tDragonSoulFloor_Reward[2][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[2][2]["ItemChance"] = 2010
	tDragonSoulFloor_Reward[2][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[2][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[2][2]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶-Anima[属性:72], 【表格】2阶-Anima+1阶-Anima
	tDragonSoulFloor_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶-Anima*1
	tDragonSoulFloor_Reward[2][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[2][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[2][2]["RewardItem"][2]["Id"] = 4200001 -- 【库】1阶-Anima[属性:72]
	tDragonSoulFloor_Reward[2][2]["RewardItem"][2]["Attr"] = "0 1" -- 1阶-Anima*1
	tDragonSoulFloor_Reward[2][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 3阶-Anima,传送到3层 - 30.00%
	tDragonSoulFloor_Reward[2][3] = {}
	tDragonSoulFloor_Reward[2][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[2][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[2][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[2][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[2][3]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶-Anima[属性:72], 【表格】3阶-Anima,传送到3层
	tDragonSoulFloor_Reward[2][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶-Anima*1
	tDragonSoulFloor_Reward[2][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[2][3]["ChgLayer"] = 3
	-- 5阶-Anima,传送到5层 - 1.00%
	tDragonSoulFloor_Reward[2][4] = {}
	tDragonSoulFloor_Reward[2][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[2][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[2][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[2][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[2][4]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶-Anima[属性:72], 【表格】5阶-Anima,传送到5层
	tDragonSoulFloor_Reward[2][4]["RewardItem"][1]["Attr"] = "0 1" -- 5阶-Anima*1
	tDragonSoulFloor_Reward[2][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[2][4]["ChgLayer"] = 5
	tDragonSoulFloor_Reward[2][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[2][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[3] = {}
	-- ===3阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[3]
	-- ===删除: 4200003,1
	-- ===LogStep: 2[3]
	tDragonSoulFloor_Reward[3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[3]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[3]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[3]["DeleteItem"][1]["Id"] = 4200003 -- 【库】3阶-Anima[属性:72]
	tDragonSoulFloor_Reward[3]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[3]["LogId"] = 12001402
	tDragonSoulFloor_Reward[3]["LogStep"] = " 2[3]"
	-- 20分钟经验 - 44.90%
	tDragonSoulFloor_Reward[3][1] = {}
	tDragonSoulFloor_Reward[3][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[3][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[3][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[3][1]["RewardExpTime"]["Value"] = 20 -- 分钟经验, 【需求】20分钟经验
	tDragonSoulFloor_Reward[3][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[3][1]["RewardExpTime"]["FullValue"] = 10 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[3][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[3],6,10"
	-- 3阶-Anima+1阶-Anima - 24.10%
	tDragonSoulFloor_Reward[3][2] = {}
	tDragonSoulFloor_Reward[3][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[3][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[3][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[3][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[3][2]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶-Anima[属性:72], 【表格】3阶-Anima+1阶-Anima
	tDragonSoulFloor_Reward[3][2]["RewardItem"][1]["Attr"] = "0 1" -- 3阶-Anima*1
	tDragonSoulFloor_Reward[3][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[3][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[3][2]["RewardItem"][2]["Id"] = 4200001 -- 【库】1阶-Anima[属性:72]
	tDragonSoulFloor_Reward[3][2]["RewardItem"][2]["Attr"] = "0 1" -- 1阶-Anima*1
	tDragonSoulFloor_Reward[3][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 4阶-Anima,传送到4层 - 30.00%
	tDragonSoulFloor_Reward[3][3] = {}
	tDragonSoulFloor_Reward[3][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[3][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[3][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[3][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[3][3]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶-Anima[属性:72], 【表格】4阶-Anima,传送到4层
	tDragonSoulFloor_Reward[3][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶-Anima*1
	tDragonSoulFloor_Reward[3][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[3][3]["ChgLayer"] = 4
	-- 6阶-Anima,传送到6层 - 1.00%
	tDragonSoulFloor_Reward[3][4] = {}
	tDragonSoulFloor_Reward[3][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[3][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[3][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[3][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[3][4]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶-Anima[属性:72], 【表格】6阶-Anima,传送到6层
	tDragonSoulFloor_Reward[3][4]["RewardItem"][1]["Attr"] = "0 1" -- 6阶-Anima*1
	tDragonSoulFloor_Reward[3][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[3][4]["ChgLayer"] = 6
	tDragonSoulFloor_Reward[3][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[3][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[4] = {}
	-- ===4阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[4]
	-- ===删除: 4200004,1
	-- ===LogStep: 2[4]
	tDragonSoulFloor_Reward[4]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[4]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[4]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[4]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶-Anima[属性:72]
	tDragonSoulFloor_Reward[4]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[4]["LogId"] = 12001402
	tDragonSoulFloor_Reward[4]["LogStep"] = " 2[4]"
	-- 30分钟经验 - 44.90%
	tDragonSoulFloor_Reward[4][1] = {}
	tDragonSoulFloor_Reward[4][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[4][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[4][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[4][1]["RewardExpTime"]["Value"] = 30 -- 分钟经验, 【需求】30分钟经验
	tDragonSoulFloor_Reward[4][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[4][1]["RewardExpTime"]["FullValue"] = 15 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[4][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[4],6,15"
	-- 4阶-Anima+2阶-Anima - 24.10%
	tDragonSoulFloor_Reward[4][2] = {}
	tDragonSoulFloor_Reward[4][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[4][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[4][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[4][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[4][2]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶-Anima[属性:72], 【表格】4阶-Anima+2阶-Anima
	tDragonSoulFloor_Reward[4][2]["RewardItem"][1]["Attr"] = "0 1" -- 4阶-Anima*1
	tDragonSoulFloor_Reward[4][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[4][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[4][2]["RewardItem"][2]["Id"] = 4200002 -- 【库】2阶-Anima[属性:72]
	tDragonSoulFloor_Reward[4][2]["RewardItem"][2]["Attr"] = "0 1" -- 2阶-Anima*1
	tDragonSoulFloor_Reward[4][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 5阶-Anima,传送到5层 - 30.00%
	tDragonSoulFloor_Reward[4][3] = {}
	tDragonSoulFloor_Reward[4][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[4][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[4][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[4][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[4][3]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶-Anima[属性:72], 【表格】5阶-Anima,传送到5层
	tDragonSoulFloor_Reward[4][3]["RewardItem"][1]["Attr"] = "0 1" -- 5阶-Anima*1
	tDragonSoulFloor_Reward[4][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[4][3]["ChgLayer"] = 5
	-- 7阶-Anima,传送到7层 - 1.00%
	tDragonSoulFloor_Reward[4][4] = {}
	tDragonSoulFloor_Reward[4][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[4][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[4][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[4][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[4][4]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶-Anima[属性:72], 【表格】7阶-Anima,传送到7层
	tDragonSoulFloor_Reward[4][4]["RewardItem"][1]["Attr"] = "0 1" -- 7阶-Anima*1
	tDragonSoulFloor_Reward[4][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[4][4]["ChgLayer"] = 7
	tDragonSoulFloor_Reward[4][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[4][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[5] = {}
	-- ===5阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[5]
	-- ===删除: 4200005,1
	-- ===LogStep: 2[5]
	tDragonSoulFloor_Reward[5]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[5]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[5]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[5]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶-Anima[属性:72]
	tDragonSoulFloor_Reward[5]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[5]["LogId"] = 12001402
	tDragonSoulFloor_Reward[5]["LogStep"] = " 2[5]"
	-- 50分钟经验 - 44.90%
	tDragonSoulFloor_Reward[5][1] = {}
	tDragonSoulFloor_Reward[5][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[5][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[5][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[5][1]["RewardExpTime"]["Value"] = 50 -- 分钟经验, 【需求】50分钟经验
	tDragonSoulFloor_Reward[5][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[5][1]["RewardExpTime"]["FullValue"] = 25 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[5][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[5],6,25"
	-- 5阶-Anima+3阶-Anima - 24.10%
	tDragonSoulFloor_Reward[5][2] = {}
	tDragonSoulFloor_Reward[5][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[5][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[5][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[5][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[5][2]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶-Anima[属性:72], 【表格】5阶-Anima+3阶-Anima
	tDragonSoulFloor_Reward[5][2]["RewardItem"][1]["Attr"] = "0 1" -- 5阶-Anima*1
	tDragonSoulFloor_Reward[5][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[5][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[5][2]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶-Anima[属性:72]
	tDragonSoulFloor_Reward[5][2]["RewardItem"][2]["Attr"] = "0 1" -- 3阶-Anima*1
	tDragonSoulFloor_Reward[5][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 6阶-Anima,传送到6层 - 30.00%
	tDragonSoulFloor_Reward[5][3] = {}
	tDragonSoulFloor_Reward[5][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[5][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[5][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[5][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[5][3]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶-Anima[属性:72], 【表格】6阶-Anima,传送到6层
	tDragonSoulFloor_Reward[5][3]["RewardItem"][1]["Attr"] = "0 1" -- 6阶-Anima*1
	tDragonSoulFloor_Reward[5][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[5][3]["ChgLayer"] = 6
	-- 8阶-Anima,传送到8层 - 1.00%
	tDragonSoulFloor_Reward[5][4] = {}
	tDragonSoulFloor_Reward[5][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[5][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[5][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[5][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[5][4]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶-Anima[属性:72], 【表格】8阶-Anima,传送到8层
	tDragonSoulFloor_Reward[5][4]["RewardItem"][1]["Attr"] = "0 1" -- 8阶-Anima*1
	tDragonSoulFloor_Reward[5][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[5][4]["ChgLayer"] = 8
	tDragonSoulFloor_Reward[5][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[5][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[6] = {}
	-- ===6阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[6]
	-- ===删除: 4200006,1
	-- ===LogStep: 2[6]
	tDragonSoulFloor_Reward[6]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[6]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[6]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[6]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶-Anima[属性:72]
	tDragonSoulFloor_Reward[6]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[6]["LogId"] = 12001402
	tDragonSoulFloor_Reward[6]["LogStep"] = " 2[6]"
	-- 100分钟经验 - 44.90%
	tDragonSoulFloor_Reward[6][1] = {}
	tDragonSoulFloor_Reward[6][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[6][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[6][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[6][1]["RewardExpTime"]["Value"] = 100 -- 分钟经验, 【需求】100分钟经验
	tDragonSoulFloor_Reward[6][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[6][1]["RewardExpTime"]["FullValue"] = 50 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[6][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[6],6,50"
	-- 6阶-Anima+4阶-Anima - 24.10%
	tDragonSoulFloor_Reward[6][2] = {}
	tDragonSoulFloor_Reward[6][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[6][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[6][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[6][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[6][2]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶-Anima[属性:72], 【表格】6阶-Anima+4阶-Anima
	tDragonSoulFloor_Reward[6][2]["RewardItem"][1]["Attr"] = "0 1" -- 6阶-Anima*1
	tDragonSoulFloor_Reward[6][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[6][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[6][2]["RewardItem"][2]["Id"] = 4200004 -- 【库】4阶-Anima[属性:72]
	tDragonSoulFloor_Reward[6][2]["RewardItem"][2]["Attr"] = "0 1" -- 4阶-Anima*1
	tDragonSoulFloor_Reward[6][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 7阶-Anima,传送到7层 - 30.00%
	tDragonSoulFloor_Reward[6][3] = {}
	tDragonSoulFloor_Reward[6][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[6][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[6][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[6][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[6][3]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶-Anima[属性:72], 【表格】7阶-Anima,传送到7层
	tDragonSoulFloor_Reward[6][3]["RewardItem"][1]["Attr"] = "0 1" -- 7阶-Anima*1
	tDragonSoulFloor_Reward[6][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[6][3]["ChgLayer"] = 7
	-- 9阶-Anima,传送到9层 - 1.00%
	tDragonSoulFloor_Reward[6][4] = {}
	tDragonSoulFloor_Reward[6][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[6][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[6][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[6][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[6][4]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶-Anima[属性:72], 【表格】9阶-Anima,传送到9层
	tDragonSoulFloor_Reward[6][4]["RewardItem"][1]["Attr"] = "0 1" -- 9阶-Anima*1
	tDragonSoulFloor_Reward[6][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[6][4]["ChgLayer"] = 9
	tDragonSoulFloor_Reward[6][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[6][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[7] = {}
	-- ===7阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[7]
	-- ===删除: 4200007,1
	-- ===LogStep: 2[7]
	tDragonSoulFloor_Reward[7]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[7]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[7]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[7]["DeleteItem"][1]["Id"] = 4200007 -- 【库】7阶-Anima[属性:72]
	tDragonSoulFloor_Reward[7]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[7]["LogId"] = 12001402
	tDragonSoulFloor_Reward[7]["LogStep"] = " 2[7]"
	-- 150分钟经验 - 44.90%
	tDragonSoulFloor_Reward[7][1] = {}
	tDragonSoulFloor_Reward[7][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[7][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[7][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[7][1]["RewardExpTime"]["Value"] = 150 -- 分钟经验, 【需求】150分钟经验
	tDragonSoulFloor_Reward[7][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[7][1]["RewardExpTime"]["FullValue"] = 75 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[7][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[7],6,75"
	-- 7阶-Anima+5阶-Anima - 24.10%
	tDragonSoulFloor_Reward[7][2] = {}
	tDragonSoulFloor_Reward[7][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[7][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[7][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[7][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[7][2]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶-Anima[属性:72], 【表格】7阶-Anima+5阶-Anima
	tDragonSoulFloor_Reward[7][2]["RewardItem"][1]["Attr"] = "0 1" -- 7阶-Anima*1
	tDragonSoulFloor_Reward[7][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[7][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[7][2]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶-Anima[属性:72]
	tDragonSoulFloor_Reward[7][2]["RewardItem"][2]["Attr"] = "0 1" -- 5阶-Anima*1
	tDragonSoulFloor_Reward[7][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 8阶-Anima,传送到8层 - 30.00%
	tDragonSoulFloor_Reward[7][3] = {}
	tDragonSoulFloor_Reward[7][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[7][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[7][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[7][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[7][3]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶-Anima[属性:72], 【表格】8阶-Anima,传送到8层
	tDragonSoulFloor_Reward[7][3]["RewardItem"][1]["Attr"] = "0 1" -- 8阶-Anima*1
	tDragonSoulFloor_Reward[7][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[7][3]["ChgLayer"] = 8
	-- 10阶-Anima,传送到10层 - 1.00%
	tDragonSoulFloor_Reward[7][4] = {}
	tDragonSoulFloor_Reward[7][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[7][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[7][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[7][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[7][4]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶-Anima[属性:72], 【表格】10阶-Anima,传送到10层
	tDragonSoulFloor_Reward[7][4]["RewardItem"][1]["Attr"] = "0 1" -- 10阶-Anima*1
	tDragonSoulFloor_Reward[7][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[7][4]["ChgLayer"] = 10
	tDragonSoulFloor_Reward[7][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[7][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[8] = {}
	-- ===8阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[8]
	-- ===删除: 4200008,1
	-- ===LogStep: 2[8]
	tDragonSoulFloor_Reward[8]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[8]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[8]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[8]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶-Anima[属性:72]
	tDragonSoulFloor_Reward[8]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[8]["LogId"] = 12001402
	tDragonSoulFloor_Reward[8]["LogStep"] = " 2[8]"
	-- 200分钟经验 - 44.90%
	tDragonSoulFloor_Reward[8][1] = {}
	tDragonSoulFloor_Reward[8][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[8][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[8][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[8][1]["RewardExpTime"]["Value"] = 200 -- 分钟经验, 【需求】200分钟经验
	tDragonSoulFloor_Reward[8][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[8][1]["RewardExpTime"]["FullValue"] = 100 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[8][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[8],6,100"
	-- 8阶-Anima+6阶-Anima - 24.10%
	tDragonSoulFloor_Reward[8][2] = {}
	tDragonSoulFloor_Reward[8][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[8][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[8][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[8][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[8][2]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶-Anima[属性:72], 【表格】8阶-Anima+6阶-Anima
	tDragonSoulFloor_Reward[8][2]["RewardItem"][1]["Attr"] = "0 1" -- 8阶-Anima*1
	tDragonSoulFloor_Reward[8][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[8][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[8][2]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶-Anima[属性:72]
	tDragonSoulFloor_Reward[8][2]["RewardItem"][2]["Attr"] = "0 1" -- 6阶-Anima*1
	tDragonSoulFloor_Reward[8][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 9阶-Anima,传送到9层 - 30.00%
	tDragonSoulFloor_Reward[8][3] = {}
	tDragonSoulFloor_Reward[8][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[8][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[8][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[8][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[8][3]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶-Anima[属性:72], 【表格】9阶-Anima,传送到9层
	tDragonSoulFloor_Reward[8][3]["RewardItem"][1]["Attr"] = "0 1" -- 9阶-Anima*1
	tDragonSoulFloor_Reward[8][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[8][3]["ChgLayer"] = 9
	-- 11阶-Anima,传送到11层 - 1.00%
	tDragonSoulFloor_Reward[8][4] = {}
	tDragonSoulFloor_Reward[8][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[8][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[8][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[8][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[8][4]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶-Anima[属性:72], 【表格】11阶-Anima,传送到11层
	tDragonSoulFloor_Reward[8][4]["RewardItem"][1]["Attr"] = "0 1" -- 11阶-Anima*1
	tDragonSoulFloor_Reward[8][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[8][4]["ChgLayer"] = 11
	tDragonSoulFloor_Reward[8][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[8][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[9] = {}
	-- ===9阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[9]
	-- ===删除: 4200009,1
	-- ===LogStep: 2[9]
	tDragonSoulFloor_Reward[9]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[9]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[9]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[9]["DeleteItem"][1]["Id"] = 4200009 -- 【库】9阶-Anima[属性:72]
	tDragonSoulFloor_Reward[9]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[9]["LogId"] = 12001402
	tDragonSoulFloor_Reward[9]["LogStep"] = " 2[9]"
	-- 250分钟经验 - 44.90%
	tDragonSoulFloor_Reward[9][1] = {}
	tDragonSoulFloor_Reward[9][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[9][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[9][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[9][1]["RewardExpTime"]["Value"] = 250 -- 分钟经验, 【需求】250分钟经验
	tDragonSoulFloor_Reward[9][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[9][1]["RewardExpTime"]["FullValue"] = 125 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[9][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[9],6,125"
	-- 9阶-Anima+7阶-Anima - 24.10%
	tDragonSoulFloor_Reward[9][2] = {}
	tDragonSoulFloor_Reward[9][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[9][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[9][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[9][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[9][2]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶-Anima[属性:72], 【表格】9阶-Anima+7阶-Anima
	tDragonSoulFloor_Reward[9][2]["RewardItem"][1]["Attr"] = "0 1" -- 9阶-Anima*1
	tDragonSoulFloor_Reward[9][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[9][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[9][2]["RewardItem"][2]["Id"] = 4200007 -- 【库】7阶-Anima[属性:72]
	tDragonSoulFloor_Reward[9][2]["RewardItem"][2]["Attr"] = "0 1" -- 7阶-Anima*1
	tDragonSoulFloor_Reward[9][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 10阶-Anima,传送到10层 - 30.00%
	tDragonSoulFloor_Reward[9][3] = {}
	tDragonSoulFloor_Reward[9][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[9][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[9][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[9][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[9][3]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶-Anima[属性:72], 【表格】10阶-Anima,传送到10层
	tDragonSoulFloor_Reward[9][3]["RewardItem"][1]["Attr"] = "0 1" -- 10阶-Anima*1
	tDragonSoulFloor_Reward[9][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[9][3]["ChgLayer"] = 10
	-- 12阶-Anima,传送到12层 - 1.00%
	tDragonSoulFloor_Reward[9][4] = {}
	tDragonSoulFloor_Reward[9][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[9][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[9][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[9][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[9][4]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶-Anima[属性:72], 【表格】12阶-Anima,传送到12层
	tDragonSoulFloor_Reward[9][4]["RewardItem"][1]["Attr"] = "0 1" -- 12阶-Anima*1
	tDragonSoulFloor_Reward[9][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[9][4]["ChgLayer"] = 12
	tDragonSoulFloor_Reward[9][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[9][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[10] = {}
	-- ===10阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[10]
	-- ===删除: 4200010,1
	-- ===LogStep: 2[10]
	tDragonSoulFloor_Reward[10]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[10]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[10]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[10]["DeleteItem"][1]["Id"] = 4200010 -- 【库】10阶-Anima[属性:72]
	tDragonSoulFloor_Reward[10]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[10]["LogId"] = 12001402
	tDragonSoulFloor_Reward[10]["LogStep"] = " 2[10]"
	-- 300分钟经验 - 44.90%
	tDragonSoulFloor_Reward[10][1] = {}
	tDragonSoulFloor_Reward[10][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[10][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[10][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[10][1]["RewardExpTime"]["Value"] = 300 -- 分钟经验, 【需求】300分钟经验
	tDragonSoulFloor_Reward[10][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[10][1]["RewardExpTime"]["FullValue"] = 150 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[10][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[10],6,150"
	-- 10阶-Anima+8阶-Anima - 24.10%
	tDragonSoulFloor_Reward[10][2] = {}
	tDragonSoulFloor_Reward[10][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[10][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[10][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[10][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[10][2]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶-Anima[属性:72], 【表格】10阶-Anima+8阶-Anima
	tDragonSoulFloor_Reward[10][2]["RewardItem"][1]["Attr"] = "0 1" -- 10阶-Anima*1
	tDragonSoulFloor_Reward[10][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[10][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[10][2]["RewardItem"][2]["Id"] = 4200008 -- 【库】8阶-Anima[属性:72]
	tDragonSoulFloor_Reward[10][2]["RewardItem"][2]["Attr"] = "0 1" -- 8阶-Anima*1
	tDragonSoulFloor_Reward[10][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 11阶-Anima,传送到11层 - 30.00%
	tDragonSoulFloor_Reward[10][3] = {}
	tDragonSoulFloor_Reward[10][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[10][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[10][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[10][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[10][3]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶-Anima[属性:72], 【表格】11阶-Anima,传送到11层
	tDragonSoulFloor_Reward[10][3]["RewardItem"][1]["Attr"] = "0 1" -- 11阶-Anima*1
	tDragonSoulFloor_Reward[10][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[10][3]["ChgLayer"] = 11
	-- 13阶-Anima,传送到13层 - 1.00%
	tDragonSoulFloor_Reward[10][4] = {}
	tDragonSoulFloor_Reward[10][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[10][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[10][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[10][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[10][4]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶-Anima[属性:72], 【表格】13阶-Anima,传送到13层
	tDragonSoulFloor_Reward[10][4]["RewardItem"][1]["Attr"] = "0 1" -- 13阶-Anima*1
	tDragonSoulFloor_Reward[10][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[10][4]["ChgLayer"] = 13
	tDragonSoulFloor_Reward[10][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[10][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[11] = {}
	-- ===11阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[11]
	-- ===删除: 4200011,1
	-- ===LogStep: 2[11]
	tDragonSoulFloor_Reward[11]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[11]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[11]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[11]["DeleteItem"][1]["Id"] = 4200011 -- 【库】11阶-Anima[属性:72]
	tDragonSoulFloor_Reward[11]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[11]["LogId"] = 12001402
	tDragonSoulFloor_Reward[11]["LogStep"] = " 2[11]"
	-- 500分钟经验 - 44.90%
	tDragonSoulFloor_Reward[11][1] = {}
	tDragonSoulFloor_Reward[11][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[11][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[11][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[11][1]["RewardExpTime"]["Value"] = 500 -- 分钟经验, 【需求】500分钟经验
	tDragonSoulFloor_Reward[11][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[11][1]["RewardExpTime"]["FullValue"] = 250 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[11][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[11],6,250"
	-- 11阶-Anima+9阶-Anima - 24.10%
	tDragonSoulFloor_Reward[11][2] = {}
	tDragonSoulFloor_Reward[11][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[11][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[11][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[11][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[11][2]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶-Anima[属性:72], 【表格】11阶-Anima+9阶-Anima
	tDragonSoulFloor_Reward[11][2]["RewardItem"][1]["Attr"] = "0 1" -- 11阶-Anima*1
	tDragonSoulFloor_Reward[11][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[11][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[11][2]["RewardItem"][2]["Id"] = 4200009 -- 【库】9阶-Anima[属性:72]
	tDragonSoulFloor_Reward[11][2]["RewardItem"][2]["Attr"] = "0 1" -- 9阶-Anima*1
	tDragonSoulFloor_Reward[11][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 12阶-Anima,传送到12层 - 30.00%
	tDragonSoulFloor_Reward[11][3] = {}
	tDragonSoulFloor_Reward[11][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[11][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[11][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[11][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[11][3]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶-Anima[属性:72], 【表格】12阶-Anima,传送到12层
	tDragonSoulFloor_Reward[11][3]["RewardItem"][1]["Attr"] = "0 1" -- 12阶-Anima*1
	tDragonSoulFloor_Reward[11][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[11][3]["ChgLayer"] = 12
	-- 14阶-Anima,传送到14层 - 1.00%
	tDragonSoulFloor_Reward[11][4] = {}
	tDragonSoulFloor_Reward[11][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[11][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[11][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[11][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[11][4]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶-Anima[属性:72], 【表格】14阶-Anima,传送到14层
	tDragonSoulFloor_Reward[11][4]["RewardItem"][1]["Attr"] = "0 1" -- 14阶-Anima*1
	tDragonSoulFloor_Reward[11][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[11][4]["ChgLayer"] = 14
	tDragonSoulFloor_Reward[11][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[11][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[12] = {}
	-- ===12阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[12]
	-- ===删除: 4200012,1
	-- ===LogStep: 2[12]
	tDragonSoulFloor_Reward[12]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[12]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[12]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[12]["DeleteItem"][1]["Id"] = 4200012 -- 【库】12阶-Anima[属性:72]
	tDragonSoulFloor_Reward[12]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[12]["LogId"] = 12001402
	tDragonSoulFloor_Reward[12]["LogStep"] = " 2[12]"
	-- 800分钟经验 - 44.90%
	tDragonSoulFloor_Reward[12][1] = {}
	tDragonSoulFloor_Reward[12][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[12][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[12][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[12][1]["RewardExpTime"]["Value"] = 800 -- 分钟经验, 【需求】800分钟经验
	tDragonSoulFloor_Reward[12][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[12][1]["RewardExpTime"]["FullValue"] = 400 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[12][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[12],6,400"
	-- 12阶-Anima+10阶-Anima - 24.10%
	tDragonSoulFloor_Reward[12][2] = {}
	tDragonSoulFloor_Reward[12][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[12][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[12][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[12][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[12][2]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶-Anima[属性:72], 【表格】12阶-Anima+10阶-Anima
	tDragonSoulFloor_Reward[12][2]["RewardItem"][1]["Attr"] = "0 1" -- 12阶-Anima*1
	tDragonSoulFloor_Reward[12][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[12][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[12][2]["RewardItem"][2]["Id"] = 4200010 -- 【库】10阶-Anima[属性:72]
	tDragonSoulFloor_Reward[12][2]["RewardItem"][2]["Attr"] = "0 1" -- 10阶-Anima*1
	tDragonSoulFloor_Reward[12][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 13阶-Anima,传送到13层 - 30.00%
	tDragonSoulFloor_Reward[12][3] = {}
	tDragonSoulFloor_Reward[12][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[12][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[12][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[12][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[12][3]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶-Anima[属性:72], 【表格】13阶-Anima,传送到13层
	tDragonSoulFloor_Reward[12][3]["RewardItem"][1]["Attr"] = "0 1" -- 13阶-Anima*1
	tDragonSoulFloor_Reward[12][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[12][3]["ChgLayer"] = 13
	-- 15阶-Anima,传送到15层 - 1.00%
	tDragonSoulFloor_Reward[12][4] = {}
	tDragonSoulFloor_Reward[12][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[12][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[12][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[12][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[12][4]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶-Anima[属性:72], 【表格】15阶-Anima,传送到15层
	tDragonSoulFloor_Reward[12][4]["RewardItem"][1]["Attr"] = "0 1" -- 15阶-Anima*1
	tDragonSoulFloor_Reward[12][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[12][4]["ChgLayer"] = 15
	tDragonSoulFloor_Reward[12][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[12][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[13] = {}
	-- ===13阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[13]
	-- ===删除: 4200013,1
	-- ===LogStep: 2[13]
	tDragonSoulFloor_Reward[13]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[13]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[13]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[13]["DeleteItem"][1]["Id"] = 4200013 -- 【库】13阶-Anima[属性:72]
	tDragonSoulFloor_Reward[13]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[13]["LogId"] = 12001402
	tDragonSoulFloor_Reward[13]["LogStep"] = " 2[13]"
	-- 1200分钟经验 - 44.90%
	tDragonSoulFloor_Reward[13][1] = {}
	tDragonSoulFloor_Reward[13][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[13][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[13][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[13][1]["RewardExpTime"]["Value"] = 1200 -- 分钟经验, 【需求】1200分钟经验
	tDragonSoulFloor_Reward[13][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[13][1]["RewardExpTime"]["FullValue"] = 600 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[13][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[13],6,600"
	-- 13阶-Anima+11阶-Anima - 24.10%
	tDragonSoulFloor_Reward[13][2] = {}
	tDragonSoulFloor_Reward[13][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[13][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[13][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[13][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[13][2]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶-Anima[属性:72], 【表格】13阶-Anima+11阶-Anima
	tDragonSoulFloor_Reward[13][2]["RewardItem"][1]["Attr"] = "0 1" -- 13阶-Anima*1
	tDragonSoulFloor_Reward[13][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[13][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[13][2]["RewardItem"][2]["Id"] = 4200011 -- 【库】11阶-Anima[属性:72]
	tDragonSoulFloor_Reward[13][2]["RewardItem"][2]["Attr"] = "0 1" -- 11阶-Anima*1
	tDragonSoulFloor_Reward[13][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 14阶-Anima,传送到14层 - 30.00%
	tDragonSoulFloor_Reward[13][3] = {}
	tDragonSoulFloor_Reward[13][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[13][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[13][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[13][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[13][3]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶-Anima[属性:72], 【表格】14阶-Anima,传送到14层
	tDragonSoulFloor_Reward[13][3]["RewardItem"][1]["Attr"] = "0 1" -- 14阶-Anima*1
	tDragonSoulFloor_Reward[13][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[13][3]["ChgLayer"] = 14
	-- 16阶-Anima,传送到16层 - 1.00%
	tDragonSoulFloor_Reward[13][4] = {}
	tDragonSoulFloor_Reward[13][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[13][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[13][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[13][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[13][4]["RewardItem"][1]["Id"] = 4200016 -- 【库】16阶-Anima[属性:72], 【表格】16阶-Anima,传送到16层
	tDragonSoulFloor_Reward[13][4]["RewardItem"][1]["Attr"] = "0 1" -- 16阶-Anima*1
	tDragonSoulFloor_Reward[13][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[13][4]["ChgLayer"] = 16
	tDragonSoulFloor_Reward[13][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[13][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[14] = {}
	-- ===14阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[14]
	-- ===删除: 4200014,1
	-- ===LogStep: 2[14]
	tDragonSoulFloor_Reward[14]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[14]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[14]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[14]["DeleteItem"][1]["Id"] = 4200014 -- 【库】14阶-Anima[属性:72]
	tDragonSoulFloor_Reward[14]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[14]["LogId"] = 12001402
	tDragonSoulFloor_Reward[14]["LogStep"] = " 2[14]"
	-- 2000分钟经验 - 44.90%
	tDragonSoulFloor_Reward[14][1] = {}
	tDragonSoulFloor_Reward[14][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[14][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[14][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[14][1]["RewardExpTime"]["Value"] = 2000 -- 分钟经验, 【需求】2000分钟经验
	tDragonSoulFloor_Reward[14][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[14][1]["RewardExpTime"]["FullValue"] = 1000 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[14][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[14],6,1000"
	-- 14阶-Anima+12阶-Anima - 24.10%
	tDragonSoulFloor_Reward[14][2] = {}
	tDragonSoulFloor_Reward[14][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[14][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[14][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[14][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[14][2]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶-Anima[属性:72], 【表格】14阶-Anima+12阶-Anima
	tDragonSoulFloor_Reward[14][2]["RewardItem"][1]["Attr"] = "0 1" -- 14阶-Anima*1
	tDragonSoulFloor_Reward[14][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[14][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[14][2]["RewardItem"][2]["Id"] = 4200012 -- 【库】12阶-Anima[属性:72]
	tDragonSoulFloor_Reward[14][2]["RewardItem"][2]["Attr"] = "0 1" -- 12阶-Anima*1
	tDragonSoulFloor_Reward[14][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 15阶-Anima,传送到15层 - 30.00%
	tDragonSoulFloor_Reward[14][3] = {}
	tDragonSoulFloor_Reward[14][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[14][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[14][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[14][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[14][3]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶-Anima[属性:72], 【表格】15阶-Anima,传送到15层
	tDragonSoulFloor_Reward[14][3]["RewardItem"][1]["Attr"] = "0 1" -- 15阶-Anima*1
	tDragonSoulFloor_Reward[14][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[14][3]["ChgLayer"] = 15
	-- 17阶-Anima,传送到17层 - 1.00%
	tDragonSoulFloor_Reward[14][4] = {}
	tDragonSoulFloor_Reward[14][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[14][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[14][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[14][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[14][4]["RewardItem"][1]["Id"] = 4200017 -- 【库】17阶-Anima[属性:72], 【表格】17阶-Anima,传送到17层
	tDragonSoulFloor_Reward[14][4]["RewardItem"][1]["Attr"] = "0 1" -- 17阶-Anima*1
	tDragonSoulFloor_Reward[14][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[14][4]["ChgLayer"] = 17
	tDragonSoulFloor_Reward[14][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[14][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[15] = {}
	-- ===15阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[15]
	-- ===删除: 4200015,1
	-- ===LogStep: 2[15]
	tDragonSoulFloor_Reward[15]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[15]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[15]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[15]["DeleteItem"][1]["Id"] = 4200015 -- 【库】15阶-Anima[属性:72]
	tDragonSoulFloor_Reward[15]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[15]["LogId"] = 12001402
	tDragonSoulFloor_Reward[15]["LogStep"] = " 2[15]"
	-- 3000分钟经验 - 44.90%
	tDragonSoulFloor_Reward[15][1] = {}
	tDragonSoulFloor_Reward[15][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[15][1]["ItemChance"] = 4490
	tDragonSoulFloor_Reward[15][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[15][1]["RewardExpTime"]["Value"] = 3000 -- 分钟经验, 【需求】3000分钟经验
	tDragonSoulFloor_Reward[15][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[15][1]["RewardExpTime"]["FullValue"] = 1500 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[15][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[15],6,1500"
	-- 15阶-Anima+13阶-Anima - 24.10%
	tDragonSoulFloor_Reward[15][2] = {}
	tDragonSoulFloor_Reward[15][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[15][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[15][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[15][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[15][2]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶-Anima[属性:72], 【表格】15阶-Anima+13阶-Anima
	tDragonSoulFloor_Reward[15][2]["RewardItem"][1]["Attr"] = "0 1" -- 15阶-Anima*1
	tDragonSoulFloor_Reward[15][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[15][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[15][2]["RewardItem"][2]["Id"] = 4200013 -- 【库】13阶-Anima[属性:72]
	tDragonSoulFloor_Reward[15][2]["RewardItem"][2]["Attr"] = "0 1" -- 13阶-Anima*1
	tDragonSoulFloor_Reward[15][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 16阶-Anima,传送到16层 - 30.00%
	tDragonSoulFloor_Reward[15][3] = {}
	tDragonSoulFloor_Reward[15][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[15][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[15][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[15][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[15][3]["RewardItem"][1]["Id"] = 4200016 -- 【库】16阶-Anima[属性:72], 【表格】16阶-Anima,传送到16层
	tDragonSoulFloor_Reward[15][3]["RewardItem"][1]["Attr"] = "0 1" -- 16阶-Anima*1
	tDragonSoulFloor_Reward[15][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[15][3]["ChgLayer"] = 16
	-- 18阶-Anima,传送到18层 - 1.00%
	tDragonSoulFloor_Reward[15][4] = {}
	tDragonSoulFloor_Reward[15][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[15][4]["ItemChance"] = 100
	tDragonSoulFloor_Reward[15][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[15][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[15][4]["RewardItem"][1]["Id"] = 4200018 -- 【库】18阶-Anima[属性:72], 【表格】18阶-Anima,传送到18层
	tDragonSoulFloor_Reward[15][4]["RewardItem"][1]["Attr"] = "0 1" -- 18阶-Anima*1
	tDragonSoulFloor_Reward[15][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[15][4]["ChgLayer"] = 18
	tDragonSoulFloor_Reward[15][4]["RewardBroadCast"] = tDragonSoulFloor_Text["Choice"]["BroadCast"] -- 全服公告
	tDragonSoulFloor_Reward[15][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tDragonSoulFloor_Reward[16] = {}
	-- ===16阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[16]
	-- ===删除: 4200016,1
	-- ===LogStep: 2[16]
	tDragonSoulFloor_Reward[16]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[16]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[16]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[16]["DeleteItem"][1]["Id"] = 4200016 -- 【库】16阶-Anima[属性:72]
	tDragonSoulFloor_Reward[16]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[16]["LogId"] = 12001402
	tDragonSoulFloor_Reward[16]["LogStep"] = " 2[16]"
	-- 5000分钟经验 - 43.90%
	tDragonSoulFloor_Reward[16][1] = {}
	tDragonSoulFloor_Reward[16][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[16][1]["ItemChance"] = 4390
	tDragonSoulFloor_Reward[16][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[16][1]["RewardExpTime"]["Value"] = 5000 -- 分钟经验, 【需求】5000分钟经验
	tDragonSoulFloor_Reward[16][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[16][1]["RewardExpTime"]["FullValue"] = 2500 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[16][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[16],6,2500"
	-- 16阶-Anima+14阶-Anima - 24.10%
	tDragonSoulFloor_Reward[16][2] = {}
	tDragonSoulFloor_Reward[16][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[16][2]["ItemChance"] = 2410
	tDragonSoulFloor_Reward[16][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[16][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[16][2]["RewardItem"][1]["Id"] = 4200016 -- 【库】16阶-Anima[属性:72], 【表格】16阶-Anima+14阶-Anima
	tDragonSoulFloor_Reward[16][2]["RewardItem"][1]["Attr"] = "0 1" -- 16阶-Anima*1
	tDragonSoulFloor_Reward[16][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[16][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[16][2]["RewardItem"][2]["Id"] = 4200014 -- 【库】14阶-Anima[属性:72]
	tDragonSoulFloor_Reward[16][2]["RewardItem"][2]["Attr"] = "0 1" -- 14阶-Anima*1
	tDragonSoulFloor_Reward[16][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 17阶-Anima,传送到17层 - 30.00%
	tDragonSoulFloor_Reward[16][3] = {}
	tDragonSoulFloor_Reward[16][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[16][3]["ItemChance"] = 3000
	tDragonSoulFloor_Reward[16][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[16][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[16][3]["RewardItem"][1]["Id"] = 4200017 -- 【库】17阶-Anima[属性:72], 【表格】17阶-Anima,传送到17层
	tDragonSoulFloor_Reward[16][3]["RewardItem"][1]["Attr"] = "0 1" -- 17阶-Anima*1
	tDragonSoulFloor_Reward[16][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[16][3]["ChgLayer"] = 17
	-- 18阶-Anima,传送到18层 - 2.00%
	tDragonSoulFloor_Reward[16][4] = {}
	tDragonSoulFloor_Reward[16][4]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[16][4]["ItemChance"] = 200
	tDragonSoulFloor_Reward[16][4]["RewardItem"] = {}
	tDragonSoulFloor_Reward[16][4]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[16][4]["RewardItem"][1]["Id"] = 4200018 -- 【库】18阶-Anima[属性:72], 【表格】18阶-Anima,传送到18层
	tDragonSoulFloor_Reward[16][4]["RewardItem"][1]["Attr"] = "0 1" -- 18阶-Anima*1
	tDragonSoulFloor_Reward[16][4]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[16][4]["ChgLayer"] = 18


	tDragonSoulFloor_Reward[17] = {}
	-- ===17阶-Anima
	-- ===索引: tDragonSoulFloor_Reward[17]
	-- ===删除: 4200017,1
	-- ===LogStep: 2[17]
	tDragonSoulFloor_Reward[17]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonSoulFloor_Reward[17]["DeleteItem"] = {}
	tDragonSoulFloor_Reward[17]["DeleteItem"][1] = {}
	tDragonSoulFloor_Reward[17]["DeleteItem"][1]["Id"] = 4200017 -- 【库】17阶-Anima[属性:72]
	tDragonSoulFloor_Reward[17]["DeleteItem"][1]["PreciousType"] = 361 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//-Anima塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulFloor_Reward[17]["LogId"] = 12001402
	tDragonSoulFloor_Reward[17]["LogStep"] = " 2[17]"
	-- 8000分钟经验 - 41.00%
	tDragonSoulFloor_Reward[17][1] = {}
	tDragonSoulFloor_Reward[17][1]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[17][1]["ItemChance"] = 4100
	tDragonSoulFloor_Reward[17][1]["RewardExpTime"] = {}
	tDragonSoulFloor_Reward[17][1]["RewardExpTime"]["Value"] = 8000 -- 分钟经验, 【需求】8000分钟经验
	tDragonSoulFloor_Reward[17][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonSoulFloor_Reward[17][1]["RewardExpTime"]["FullValue"] = 4000 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonSoulFloor_Reward[17][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001402, 2[17],6,4000"
	-- 17阶-Anima+15阶-Anima - 26.50%
	tDragonSoulFloor_Reward[17][2] = {}
	tDragonSoulFloor_Reward[17][2]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[17][2]["ItemChance"] = 2650
	tDragonSoulFloor_Reward[17][2]["RewardItem"] = {}
	tDragonSoulFloor_Reward[17][2]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[17][2]["RewardItem"][1]["Id"] = 4200017 -- 【库】17阶-Anima[属性:72], 【表格】17阶-Anima+15阶-Anima
	tDragonSoulFloor_Reward[17][2]["RewardItem"][1]["Attr"] = "0 1" -- 17阶-Anima*1
	tDragonSoulFloor_Reward[17][2]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[17][2]["RewardItem"][2] = {}
	tDragonSoulFloor_Reward[17][2]["RewardItem"][2]["Id"] = 4200015 -- 【库】15阶-Anima[属性:72]
	tDragonSoulFloor_Reward[17][2]["RewardItem"][2]["Attr"] = "0 1" -- 15阶-Anima*1
	tDragonSoulFloor_Reward[17][2]["RewardItem"][2]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 18阶-Anima,传送到18层 - 32.50%
	tDragonSoulFloor_Reward[17][3] = {}
	tDragonSoulFloor_Reward[17][3]["RandomItemChanceType"] = 2
	tDragonSoulFloor_Reward[17][3]["ItemChance"] = 3250
	tDragonSoulFloor_Reward[17][3]["RewardItem"] = {}
	tDragonSoulFloor_Reward[17][3]["RewardItem"][1] = {}
	tDragonSoulFloor_Reward[17][3]["RewardItem"][1]["Id"] = 4200018 -- 【库】18阶-Anima[属性:72], 【表格】18阶-Anima,传送到18层
	tDragonSoulFloor_Reward[17][3]["RewardItem"][1]["Attr"] = "0 1" -- 18阶-Anima*1
	tDragonSoulFloor_Reward[17][3]["RewardItem"][1]["PreciousType"] = 311 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//-Anima塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulFloor_Reward[17][3]["ChgLayer"] = 18


----------------------------------
-- log数据
local tDragonSoulFloor_Log = {}
	tDragonSoulFloor_Log["ChgLayer"] = "0,0,0,0,12001402,3,%d,%d"

----------------------------------逻辑部分配置----------------------------------
-- 获取mapId对应层数
function DragonSoulFloor_GetLayerByMapId(nUserMapId)
	local nReLayer = 0
	for nLayer ,v in ipairs(tDragonSoulFloor_Layer) do
		local nMapId = v["MapId"]
		if nUserMapId == nMapId then
			nReLayer = nLayer
			break
		end
	end
	
	return nReLayer
end


-- 返回双龙城
function DragonSoulFloor_BackCity(nNewUserId)
	local nUserId = nNewUserId or Get_UserId()
	-- 普通服
	local nCityType = "NrmlCity"
	if SpecialServer_ChkNoGiftServer() then
		nCityType = "GiftCity"
	end
	
	local nMapId = tDragonSoulFloor_Cont[nCityType]["MapId"]
	local nPosX = tDragonSoulFloor_Cont[nCityType]["PosX"]
	local nPosY = tDragonSoulFloor_Cont[nCityType]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,nil,nUserId)
	User_TalkChannel2005(tDragonSoulFloor_Text["OutFloor"],nUserId)
end


-- 活动时间外（自动传出去）
function DragonSoulFloor_ChkActTime()
	-- 活动中
	if Sys_ChkFullTime(tActivityTime["DragonSoulFloor"]["ActivityTime"]) then
		return true
	end
	
	-- 活动外
	DragonSoulFloor_BackCity()
	return false
end

----------------------------------
-- 进入对应层数
function DragonSoulFloor_IntoFloor(nFloorNum,nNpcId)
	-- 活动外
	if not Sys_ChkFullTime(tActivityTime["DragonSoulFloor"]["ActivityTime"]) then
		return
	end
	
	-- 是否有对应-Anima
	local nSoulId = tDragonSoulFloor_Layer[nFloorNum]["SoulId"]
	local sSoulName = Get_ItemtypeName(nSoulId)
	if not Item_ChkItem(nSoulId) then
		tNpcGossip[nNpcId]["Text211"] = string.format(tDragonSoulFloor_Text[nNpcId]["Text211"],sSoulName)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包内有，传送进去
	local nMapId = tDragonSoulFloor_Layer[nFloorNum]["MapId"]
	local nPosX = tDragonSoulFloor_Cont["TowerPosX"]
	local nPosY = tDragonSoulFloor_Cont["TowerPosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1)
	
	-- 提示
	local sTipText = string.format(tDragonSoulFloor_Text["IntoFloor"],nFloorNum)
	User_TalkChannel2005(sTipText)
	-- Sys_MsgBox(sTipText)
end

----------------------------------
-- 寻找八荒乾坤阵
function DragonSoulFloor_FindTrap()
	-- 4个陷阱，随机
	local tNewReward,_ = RewardTemplate_RandomReward(tDragonSoulFloor_TrapPos,1)
	local tPosTable = tNewReward[1]["tAward"][1]["PosTable"]
	
	-- 寻路信息
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = tPosTable[1]
	local nPosY = tPosTable[2]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end



----------------------------------
-- 闯关条件
function DragonSoulFloor_IsRush(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	local nLayer = DragonSoulFloor_GetLayerByMapId(nUserMapId) -- 层数
	local nSoulId = tDragonSoulFloor_Layer[nLayer]["SoulId"]
	local sSoulName = Get_ItemtypeName(nSoulId)
	
	-- 是否有对应-Anima
	if not Item_ChkItem(nSoulId,nil,nil,nUserId) then
		local sFunc = "DragonSoulFloor_BackCity"
		Sys_MsgBox(string.format(tDragonSoulFloor_Text["NoSoulItem"],sSoulName),sFunc,nil,nUserId)
		return false
	end
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tDragonSoulFloor_Reward,nLayer,nUserId)
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tDragonSoulFloor_Text["NoSpace"],nSpace),nil,nil,nUserId)
		return false
	end
	
	return nLayer
end


-- 陷阱触发
function DragonSoulFloor_TrapFunc()
	-- 活动外
	if not DragonSoulFloor_ChkActTime() then
		return
	end

	local nLayer = DragonSoulFloor_IsRush()
	-- 不满足条件
	if not nLayer then
		return
	end
	
	-- 出二次确认对白
	local sSoulName = Get_ItemtypeName(tDragonSoulFloor_Layer[nLayer]["SoulId"])
	local sMsgText = string.format(tDragonSoulFloor_Text["IsRush"],sSoulName)
	local sMsgFunc = "DragonSoulFloor_TrapExplore"
	Sys_MsgBox(sMsgText,sMsgFunc)
end

-- 陷阱读条
function DragonSoulFloor_TrapExplore()
	-- 不满足条件
	if not DragonSoulFloor_IsRush() then
		return
	end
	
	-- 有对应-Anima，触发读条(1秒)
	User_SetExplore(1,tDragonSoulFloor_Text["Loading"],220,"DragonSoulFloor_LoadFunc")
end



-- 陷阱读条触发
function DragonSoulFloor_LoadFunc(nUserId)
	local nLayer = DragonSoulFloor_IsRush(nUserId)
	-- 不满足条件
	if not nLayer then
		return
	end
	
	-- 删除-Anima，给奖励
	local tNewReward,sRewardStr = RewardTemplate_RandomReward(tDragonSoulFloor_Reward,nLayer,nUserId)
	
	-- 层数不变
	local nChgLayer = nLayer
	local sChoiceText = string.format(tDragonSoulFloor_Text["Choice"]["RewardSoul"],sRewardStr)
	
	-- 为分解成经验
	if tNewReward[1]["tAward"][1]["RewardExpTime"] ~= nil then
		sChoiceText = string.format(tDragonSoulFloor_Text["Choice"]["RewardExpTime"],sRewardStr)
		-- 直接传出地图
		DragonSoulFloor_BackCity(nUserId)
		Sys_MsgBox(sChoiceText,nil,nil,nUserId)
		return
		
	-- 存在变换层数
	elseif tNewReward[1]["tAward"][1]["ChgLayer"] ~= nil then
		nChgLayer = tNewReward[1]["tAward"][1]["ChgLayer"]
		local sChgMapText = tDragonSoulFloor_Text["Choice"]["ChgMap_1Floor"]
		
		-- 闯关超过3层
		if (nChgLayer - nLayer) >= 3 then
			sChgMapText = tDragonSoulFloor_Text["Choice"]["ChgMap_3Floor"]
		end
		
		sChoiceText = string.format(sChgMapText,nChgLayer,sRewardStr)

		-- 打log
		local sChgLogText = string.format(tDragonSoulFloor_Log["ChgLayer"],nLayer,nChgLayer)
		Sys_SaveActionFestivalLog(sChgLogText,nUserId)
	end
	
	-- 传送
	local nMapId = tDragonSoulFloor_Layer[nChgLayer]["MapId"]
	local nPosX = tDragonSoulFloor_Cont["TowerPosX"]
	local nPosY = tDragonSoulFloor_Cont["TowerPosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,nil,nUserId)
	-- 光效
	local sEffect = tDragonSoulFloor_Cont["Effect"][nChgLayer]
	User_EffectAdd("self",sEffect,nUserId)
	Sys_MsgBox(sChoiceText,nil,nil,nUserId)
end

--跳转网页
function DragonSoulFloor_OpenWel()
	User_SendWebPage(tDragonSoulFloor_Cont["Wel"])
end

----------------------------------模块部分配置----------------------------------
-- 入场NPC
tNpcFace[1688] = 6
tNpcFace[1848] = 6
tNpcFace[1849] = 6
tNpcFace[1850] = 6
tNpcFace[1851] = 6
tNpcFace[1852] = 6
tNpcFace[1853] = 6
tNpcFace[1854] = 6
tNpcFace[1855] = 6
tNpcFace[1856] = 6
tNpcFace[1857] = 6
tNpcFace[1858] = 6
tNpcFace[1859] = 6
tNpcFace[1860] = 6
tNpcFace[1861] = 6
tNpcFace[1862] = 6
tNpcFace[1863] = 6
tNpcFace[1864] = 6
tNpcFace[1865] = 6
tNpcGossip[24194] = tNpcGossip[24194] or DefaultNpc:new{}
tNpcGossip[24194]["OptionHidden"] = 1
tNpcGossip[24194]["DialogueText"] = tDragonSoulFloor_Text[24194]
-- tNpcGossip[24194]["nPageNum"] = 13
-- 主对白
tNpcGossip[24194]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24194]["tOption1-1"] = {1112,1111,1110,119,118,117,1113,116,115,114,113,112,111,1114}
tNpcGossip[24194]["OptionFunc111"] = "DragonSoulFloor_IntoFloor</N>1</N>24194"
tNpcGossip[24194]["OptionFunc112"] = "DragonSoulFloor_IntoFloor</N>2</N>24194"
tNpcGossip[24194]["OptionFunc113"] = "DragonSoulFloor_IntoFloor</N>3</N>24194"
tNpcGossip[24194]["OptionFunc114"] = "DragonSoulFloor_IntoFloor</N>4</N>24194"
tNpcGossip[24194]["OptionFunc115"] = "DragonSoulFloor_IntoFloor</N>5</N>24194"
tNpcGossip[24194]["OptionFunc116"] = "DragonSoulFloor_IntoFloor</N>6</N>24194"
tNpcGossip[24194]["OptionFunc117"] = "DragonSoulFloor_IntoFloor</N>7</N>24194"
tNpcGossip[24194]["OptionFunc118"] = "DragonSoulFloor_IntoFloor</N>8</N>24194"
tNpcGossip[24194]["OptionFunc119"] = "DragonSoulFloor_IntoFloor</N>9</N>24194"
tNpcGossip[24194]["OptionFunc1110"]= "DragonSoulFloor_IntoFloor</N>10</N>24194"
tNpcGossip[24194]["OptionFunc1111"]= "DragonSoulFloor_IntoFloor</N>11</N>24194"
tNpcGossip[24194]["OptionFunc1112"]= "DragonSoulFloor_IntoFloor</N>12</N>24194"
tNpcGossip[24194]["OptionFunc1113"]= "DragonSoulFloor_OpenWel"
tNpcGossip[24194]["ChkFunc1-1"] = function ()
	-- 活动中
	if Sys_ChkFullTime(tActivityTime["DragonSoulFloor"]["ActivityTime"]) then
		tNpcGossip[24194]["tOption1-1"] = {1112,1111,1110,119,118,117,1113,116,115,114,113,112,111}
	-- 活动外
	else
		tNpcGossip[24194]["tOption1-1"] = {1114}
	end
	return true
end

-- 没有-Anima
tNpcGossip[24194]["Text2-1"] = {211,212}
tNpcGossip[24194]["tOption2-1"] = {211}



-- 地图内NPC（1层）
tNpcGossip[24195] = tNpcGossip[24195] or DefaultNpc:new{}
tNpcGossip[24195]["OptionHidden"] = 1
tNpcGossip[24195]["DialogueText"] = tDragonSoulFloor_Text[24195]
-- 主对白
tNpcGossip[24195]["Text1-1"] = {111,112,113}
-- tNpcGossip[24195]["tOption1-1"] = {111,112,113}
tNpcGossip[24195]["tOption1-1"] = {112,113}
-- tNpcGossip[24195]["OptionFunc111"]= "DragonSoulFloor_FindTrap"
tNpcGossip[24195]["OptionPoint112"] = "2-1"
tNpcGossip[24195]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = DragonSoulFloor_GetLayerByMapId(nMapId)
	local nSoulId = tDragonSoulFloor_Layer[nLayer]["SoulId"]
	local sSoulName = Get_ItemtypeName(nSoulId)
	
	tNpcGossip[24195]["Text112"] = string.format(tDragonSoulFloor_Text[24195]["Text112"],sSoulName)
	return true
end
-- 送我离开盘龙天关
tNpcGossip[24195]["Text2-1"] = {211}
tNpcGossip[24195]["tOption2-1"] = {211,212}
tNpcGossip[24195]["OptionFunc211"]= "DragonSoulFloor_BackCity"

-- 地图内NPC
tNpcGossip[24196] = tNpcGossip[24195] -- （2层）
tNpcGossip[24197] = tNpcGossip[24195] -- （3层）
tNpcGossip[24198] = tNpcGossip[24195] -- （4层）
tNpcGossip[24199] = tNpcGossip[24195] -- （5层）
tNpcGossip[24200] = tNpcGossip[24195] -- （6层）
tNpcGossip[24201] = tNpcGossip[24195] -- （7层）
tNpcGossip[24202] = tNpcGossip[24195] -- （8层）
tNpcGossip[24203] = tNpcGossip[24195] -- （9层）
tNpcGossip[24204] = tNpcGossip[24195] -- （10层）
tNpcGossip[24205] = tNpcGossip[24195] -- （11层）
tNpcGossip[24206] = tNpcGossip[24195] -- （12层）
tNpcGossip[24207] = tNpcGossip[24195] -- （13层）
tNpcGossip[24208] = tNpcGossip[24195] -- （14层）
tNpcGossip[24209] = tNpcGossip[24195] -- （15层）
tNpcGossip[24210] = tNpcGossip[24195] -- （16层）
tNpcGossip[24211] = tNpcGossip[24195] -- （17层）

-- 地图内NPC（18层）
tNpcGossip[24212] = tNpcGossip[24212] or DefaultNpc:new{}
tNpcGossip[24212]["OptionHidden"] = 1
tNpcGossip[24212]["DialogueText"] = tDragonSoulFloor_Text[24212]
-- 主对白
tNpcGossip[24212]["Text1-1"] = {111,112,113}
tNpcGossip[24212]["tOption1-1"] = {111}
tNpcGossip[24212]["OptionFunc111"]= "DragonSoulFloor_BackCity"



----------------------------------陷阱部分----------------------------------
tTrap[2395] = tTrap[2395] or {}
tTrap[2396] = tTrap[2395] or {}
tTrap[2397] = tTrap[2395] or {}
tTrap[2398] = tTrap[2395] or {}
tTrap[2395]["Function"] = function(nTrapId,nTrapType)
	DragonSoulFloor_TrapFunc()
end
