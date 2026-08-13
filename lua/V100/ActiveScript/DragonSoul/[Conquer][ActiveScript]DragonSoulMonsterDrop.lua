------------------------------------------------------------------------------------
--Name：       190131[简体征服][活动脚本]灵珠玩法-怪物掉落部分
--Creator:     姚曦宇
--Created:     2019/01/31
------------------------------------------------------------------------------------
-- 任务需求：

-- 黄泉幽谷11层	地图id：8832	怪物id：4134	入场地图物品id：721091
-- 黄泉幽谷12层	地图id：8833	怪物id：4135	入场地图物品id：721092
-- 黄泉幽谷13层	地图id：8834	怪物id：4136	入场地图物品id：721093
-- 黄泉幽谷14层	地图id：8835	怪物id：4137	入场地图物品id：721094
-- 黄泉幽谷15层	地图id：8836	怪物id：4138	入场地图物品id：721095
-- 黄泉幽谷16层	地图id：8837	怪物id：4139	入场地图物品id：721096
-- 黄泉幽谷17层	地图id：8838	怪物id：4140	入场地图物品id：721097
-- 黄泉幽谷18层	地图id：8839	怪物id：4141	入场地图物品id：721098
-- 黄泉幽谷19层	地图id：10004	怪物id：7934	入场地图物品id：3008271

------------------------------------------------------------------------------------
-- stc


------------------------------------------------------------------------------------
-- global

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- 前缀
-- DragonSoulMonsterDrop_

-- LogId： 12001285
----------------------------------表配置部分--------------------------------------------

-- 删除入场券
local tDragonSoulMonsterDrop_DelItem = {}
	tDragonSoulMonsterDrop_DelItem[4134] = 721091
	tDragonSoulMonsterDrop_DelItem[4135] = 721092
	tDragonSoulMonsterDrop_DelItem[4136] = 721093
	tDragonSoulMonsterDrop_DelItem[4137] = 721094
	tDragonSoulMonsterDrop_DelItem[4138] = 721095
	tDragonSoulMonsterDrop_DelItem[4139] = 721096
	tDragonSoulMonsterDrop_DelItem[4140] = 721097
	tDragonSoulMonsterDrop_DelItem[4141] = 721098
	tDragonSoulMonsterDrop_DelItem[7934] = 3008271
	
	
local tDragonSoulMonsterDrop_Award = {}
-- 11层怪物掉落
	tDragonSoulMonsterDrop_Award[4134] = {}
	tDragonSoulMonsterDrop_Award[4134]["ItemChanceSum"] = 10000
	-- 9阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4134][1] = {}
	tDragonSoulMonsterDrop_Award[4134][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4134][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4134][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4134][1]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulMonsterDrop_Award[4134][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4134][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4134][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][1]["LogStep"] = "2[11]"	
	-- 7阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4134][2] = {}
	tDragonSoulMonsterDrop_Award[4134][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4134][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4134][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4134][2]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulMonsterDrop_Award[4134][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4134][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4134][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][2]["LogStep"] = "2[11]"
	-- 3阶灵珠	37.3%
	tDragonSoulMonsterDrop_Award[4134][3] = {}
	tDragonSoulMonsterDrop_Award[4134][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][3]["ItemChance"] = 3730
	tDragonSoulMonsterDrop_Award[4134][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4134][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4134][3]["RewardItem"][1]["Id"] = 4200003
	tDragonSoulMonsterDrop_Award[4134][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4134][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4134][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][3]["LogStep"] = "2[11]"
	-- 2阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4134][4] = {}
	tDragonSoulMonsterDrop_Award[4134][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][4]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4134][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4134][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4134][4]["RewardItem"][1]["Id"] = 4200002
	tDragonSoulMonsterDrop_Award[4134][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4134][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4134][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][4]["LogStep"] = "2[11]"
	-- 1阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4134][5] = {}
	tDragonSoulMonsterDrop_Award[4134][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][5]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4134][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4134][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4134][5]["RewardItem"][1]["Id"] = 4200001
	tDragonSoulMonsterDrop_Award[4134][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4134][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4134][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][5]["LogStep"] = "2[11]"
	-- 10分钟经验 40%
	tDragonSoulMonsterDrop_Award[4134][6] = {}
	tDragonSoulMonsterDrop_Award[4134][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4134][6]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4134][6]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4134][6]["RewardExpTime"]["Value"] = 10
	tDragonSoulMonsterDrop_Award[4134][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4134][6]["LogStep"] = "2[11]"	
	
	
-- 12层怪物掉落
	tDragonSoulMonsterDrop_Award[4135] = {}
	tDragonSoulMonsterDrop_Award[4135]["ItemChanceSum"] = 10000
	-- 11阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4135][1] = {}
	tDragonSoulMonsterDrop_Award[4135][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4135][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][1]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulMonsterDrop_Award[4135][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][1]["LogStep"] = "2[12]"	
	-- 9阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4135][2] = {}
	tDragonSoulMonsterDrop_Award[4135][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4135][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][2]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulMonsterDrop_Award[4135][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][2]["LogStep"] = "2[12]"
	-- 6阶灵珠	12.1%
	tDragonSoulMonsterDrop_Award[4135][3] = {}
	tDragonSoulMonsterDrop_Award[4135][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][3]["ItemChance"] = 1210
	tDragonSoulMonsterDrop_Award[4135][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][3]["RewardItem"][1]["Id"] = 4200006
	tDragonSoulMonsterDrop_Award[4135][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][3]["LogStep"] = "2[12]"
	-- 5阶灵珠	25.2%
	tDragonSoulMonsterDrop_Award[4135][4] = {}
	tDragonSoulMonsterDrop_Award[4135][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][4]["ItemChance"] = 2520
	tDragonSoulMonsterDrop_Award[4135][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][4]["RewardItem"][1]["Id"] = 4200005
	tDragonSoulMonsterDrop_Award[4135][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][4]["LogStep"] = "2[12]"
	-- 4阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4135][5] = {}
	tDragonSoulMonsterDrop_Award[4135][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4135][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][5]["RewardItem"][1]["Id"] = 4200004
	tDragonSoulMonsterDrop_Award[4135][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][5]["LogStep"] = "2[12]"
	-- 3阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4135][6] = {}
	tDragonSoulMonsterDrop_Award[4135][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4135][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4135][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4135][6]["RewardItem"][1]["Id"] = 4200003
	tDragonSoulMonsterDrop_Award[4135][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4135][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4135][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][6]["LogStep"] = "2[12]"
	-- 50分钟经验 40%
	tDragonSoulMonsterDrop_Award[4135][7] = {}
	tDragonSoulMonsterDrop_Award[4135][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4135][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4135][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4135][7]["RewardExpTime"]["Value"] = 50
	tDragonSoulMonsterDrop_Award[4135][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4135][7]["LogStep"] = "2[12]"	
	
	
-- 13层怪物掉落
	tDragonSoulMonsterDrop_Award[4136] = {}
	tDragonSoulMonsterDrop_Award[4136]["ItemChanceSum"] = 10000
	-- 12阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4136][1] = {}
	tDragonSoulMonsterDrop_Award[4136][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4136][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][1]["RewardItem"][1]["Id"] = 4200012
	tDragonSoulMonsterDrop_Award[4136][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][1]["LogStep"] = "2[13]"	
	-- 10阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4136][2] = {}
	tDragonSoulMonsterDrop_Award[4136][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4136][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][2]["RewardItem"][1]["Id"] = 4200010
	tDragonSoulMonsterDrop_Award[4136][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][2]["LogStep"] = "2[13]"
	-- 7阶灵珠	12.1%
	tDragonSoulMonsterDrop_Award[4136][3] = {}
	tDragonSoulMonsterDrop_Award[4136][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][3]["ItemChance"] = 1210
	tDragonSoulMonsterDrop_Award[4136][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][3]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulMonsterDrop_Award[4136][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][3]["LogStep"] = "2[13]"
	-- 6阶灵珠	25.2%
	tDragonSoulMonsterDrop_Award[4136][4] = {}
	tDragonSoulMonsterDrop_Award[4136][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][4]["ItemChance"] = 2520
	tDragonSoulMonsterDrop_Award[4136][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][4]["RewardItem"][1]["Id"] = 4200006
	tDragonSoulMonsterDrop_Award[4136][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][4]["LogStep"] = "2[13]"
	-- 5阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4136][5] = {}
	tDragonSoulMonsterDrop_Award[4136][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4136][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][5]["RewardItem"][1]["Id"] = 4200005
	tDragonSoulMonsterDrop_Award[4136][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][5]["LogStep"] = "2[13]"
	-- 4阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4136][6] = {}
	tDragonSoulMonsterDrop_Award[4136][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4136][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4136][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4136][6]["RewardItem"][1]["Id"] = 4200004
	tDragonSoulMonsterDrop_Award[4136][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4136][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4136][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][6]["LogStep"] = "2[13]"
	-- 100分钟经验 40%
	tDragonSoulMonsterDrop_Award[4136][7] = {}
	tDragonSoulMonsterDrop_Award[4136][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4136][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4136][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4136][7]["RewardExpTime"]["Value"] = 100
	tDragonSoulMonsterDrop_Award[4136][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4136][7]["LogStep"] = "2[13]"	
	
	
-- 14层怪物掉落
	tDragonSoulMonsterDrop_Award[4137] = {}
	tDragonSoulMonsterDrop_Award[4137]["ItemChanceSum"] = 10000
	-- 13阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4137][1] = {}
	tDragonSoulMonsterDrop_Award[4137][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4137][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][1]["RewardItem"][1]["Id"] = 4200013
	tDragonSoulMonsterDrop_Award[4137][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][1]["LogStep"] = "2[14]"	
	-- 11阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4137][2] = {}
	tDragonSoulMonsterDrop_Award[4137][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4137][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][2]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulMonsterDrop_Award[4137][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][2]["LogStep"] = "2[14]"
	-- 8阶灵珠	12.1%
	tDragonSoulMonsterDrop_Award[4137][3] = {}
	tDragonSoulMonsterDrop_Award[4137][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][3]["ItemChance"] = 1210
	tDragonSoulMonsterDrop_Award[4137][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][3]["RewardItem"][1]["Id"] = 4200008
	tDragonSoulMonsterDrop_Award[4137][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][3]["LogStep"] = "2[14]"
	-- 7阶灵珠	25.2%
	tDragonSoulMonsterDrop_Award[4137][4] = {}
	tDragonSoulMonsterDrop_Award[4137][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][4]["ItemChance"] = 2520
	tDragonSoulMonsterDrop_Award[4137][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][4]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulMonsterDrop_Award[4137][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][4]["LogStep"] = "2[14]"
	-- 6阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4137][5] = {}
	tDragonSoulMonsterDrop_Award[4137][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4137][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][5]["RewardItem"][1]["Id"] = 4200006
	tDragonSoulMonsterDrop_Award[4137][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][5]["LogStep"] = "2[14]"
	-- 5阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4137][6] = {}
	tDragonSoulMonsterDrop_Award[4137][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4137][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4137][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4137][6]["RewardItem"][1]["Id"] = 4200005
	tDragonSoulMonsterDrop_Award[4137][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4137][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4137][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][6]["LogStep"] = "2[14]"
	-- 150分钟经验 40%
	tDragonSoulMonsterDrop_Award[4137][7] = {}
	tDragonSoulMonsterDrop_Award[4137][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4137][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4137][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4137][7]["RewardExpTime"]["Value"] = 150
	tDragonSoulMonsterDrop_Award[4137][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4137][7]["LogStep"] = "2[14]"	
	
-- 15层怪物掉落
	tDragonSoulMonsterDrop_Award[4138] = {}
	tDragonSoulMonsterDrop_Award[4138]["ItemChanceSum"] = 10000
	-- 14阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4138][1] = {}
	tDragonSoulMonsterDrop_Award[4138][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4138][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][1]["RewardItem"][1]["Id"] = 4200014
	tDragonSoulMonsterDrop_Award[4138][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][1]["LogStep"] = "2[15]"	
	-- 12阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4138][2] = {}
	tDragonSoulMonsterDrop_Award[4138][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4138][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][2]["RewardItem"][1]["Id"] = 4200012
	tDragonSoulMonsterDrop_Award[4138][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][2]["LogStep"] = "2[15]"
	-- 9阶灵珠	27.2%
	tDragonSoulMonsterDrop_Award[4138][3] = {}
	tDragonSoulMonsterDrop_Award[4138][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][3]["ItemChance"] = 2720
	tDragonSoulMonsterDrop_Award[4138][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][3]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulMonsterDrop_Award[4138][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][3]["LogStep"] = "2[15]"
	-- 8阶灵珠	10.1%
	tDragonSoulMonsterDrop_Award[4138][4] = {}
	tDragonSoulMonsterDrop_Award[4138][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][4]["ItemChance"] = 1010
	tDragonSoulMonsterDrop_Award[4138][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][4]["RewardItem"][1]["Id"] = 4200008
	tDragonSoulMonsterDrop_Award[4138][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][4]["LogStep"] = "2[15]"
	-- 7阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4138][5] = {}
	tDragonSoulMonsterDrop_Award[4138][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4138][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][5]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulMonsterDrop_Award[4138][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][5]["LogStep"] = "2[15]"
	-- 6阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4138][6] = {}
	tDragonSoulMonsterDrop_Award[4138][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4138][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4138][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4138][6]["RewardItem"][1]["Id"] = 4200006
	tDragonSoulMonsterDrop_Award[4138][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4138][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4138][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][6]["LogStep"] = "2[15]"
	-- 200分钟经验 40%
	tDragonSoulMonsterDrop_Award[4138][7] = {}
	tDragonSoulMonsterDrop_Award[4138][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4138][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4138][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4138][7]["RewardExpTime"]["Value"] = 200
	tDragonSoulMonsterDrop_Award[4138][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4138][7]["LogStep"] = "2[15]"	
	
	
-- 16层怪物掉落
	tDragonSoulMonsterDrop_Award[4139] = {}
	tDragonSoulMonsterDrop_Award[4139]["ItemChanceSum"] = 10000
	-- 15阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4139][1] = {}
	tDragonSoulMonsterDrop_Award[4139][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4139][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][1]["RewardItem"][1]["Id"] = 4200015
	tDragonSoulMonsterDrop_Award[4139][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][1]["LogStep"] = "2[16]"	
	-- 13阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4139][2] = {}
	tDragonSoulMonsterDrop_Award[4139][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4139][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][2]["RewardItem"][1]["Id"] = 4200013
	tDragonSoulMonsterDrop_Award[4139][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][2]["LogStep"] = "2[16]"
	-- 10阶灵珠	27.2%
	tDragonSoulMonsterDrop_Award[4139][3] = {}
	tDragonSoulMonsterDrop_Award[4139][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][3]["ItemChance"] = 2720
	tDragonSoulMonsterDrop_Award[4139][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][3]["RewardItem"][1]["Id"] = 4200010
	tDragonSoulMonsterDrop_Award[4139][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][3]["LogStep"] = "2[16]"
	-- 9阶灵珠	10.1%
	tDragonSoulMonsterDrop_Award[4139][4] = {}
	tDragonSoulMonsterDrop_Award[4139][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][4]["ItemChance"] = 1010
	tDragonSoulMonsterDrop_Award[4139][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][4]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulMonsterDrop_Award[4139][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][4]["LogStep"] = "2[16]"
	-- 8阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4139][5] = {}
	tDragonSoulMonsterDrop_Award[4139][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4139][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][5]["RewardItem"][1]["Id"] = 4200008
	tDragonSoulMonsterDrop_Award[4139][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][5]["LogStep"] = "2[16]"
	-- 7阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4139][6] = {}
	tDragonSoulMonsterDrop_Award[4139][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4139][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4139][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4139][6]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulMonsterDrop_Award[4139][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4139][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4139][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][6]["LogStep"] = "2[16]"
	-- 250分钟经验 40%
	tDragonSoulMonsterDrop_Award[4139][7] = {}
	tDragonSoulMonsterDrop_Award[4139][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4139][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4139][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4139][7]["RewardExpTime"]["Value"] = 250
	tDragonSoulMonsterDrop_Award[4139][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4139][7]["LogStep"] = "2[16]"	
	
	
-- 17层怪物掉落
	tDragonSoulMonsterDrop_Award[4140] = {}
	tDragonSoulMonsterDrop_Award[4140]["ItemChanceSum"] = 10000
	-- 16阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4140][1] = {}
	tDragonSoulMonsterDrop_Award[4140][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4140][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][1]["RewardItem"][1]["Id"] = 4200016
	tDragonSoulMonsterDrop_Award[4140][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][1]["LogStep"] = "2[17]"	
	-- 14阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4140][2] = {}
	tDragonSoulMonsterDrop_Award[4140][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4140][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][2]["RewardItem"][1]["Id"] = 4200014
	tDragonSoulMonsterDrop_Award[4140][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][2]["LogStep"] = "2[17]"
	-- 11阶灵珠	27.2%
	tDragonSoulMonsterDrop_Award[4140][3] = {}
	tDragonSoulMonsterDrop_Award[4140][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][3]["ItemChance"] = 2720
	tDragonSoulMonsterDrop_Award[4140][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][3]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulMonsterDrop_Award[4140][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][3]["LogStep"] = "2[17]"
	-- 10阶灵珠	10.1%
	tDragonSoulMonsterDrop_Award[4140][4] = {}
	tDragonSoulMonsterDrop_Award[4140][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][4]["ItemChance"] = 1010
	tDragonSoulMonsterDrop_Award[4140][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][4]["RewardItem"][1]["Id"] = 4200010
	tDragonSoulMonsterDrop_Award[4140][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][4]["LogStep"] = "2[17]"
	-- 9阶灵珠	12.6%
	tDragonSoulMonsterDrop_Award[4140][5] = {}
	tDragonSoulMonsterDrop_Award[4140][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][5]["ItemChance"] = 1260
	tDragonSoulMonsterDrop_Award[4140][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][5]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulMonsterDrop_Award[4140][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][5]["LogStep"] = "2[17]"
	-- 8阶灵珠	10%
	tDragonSoulMonsterDrop_Award[4140][6] = {}
	tDragonSoulMonsterDrop_Award[4140][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][6]["ItemChance"] = 1000
	tDragonSoulMonsterDrop_Award[4140][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4140][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4140][6]["RewardItem"][1]["Id"] = 4200008
	tDragonSoulMonsterDrop_Award[4140][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4140][6]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4140][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][6]["LogStep"] = "2[17]"
	-- 300分钟经验 40%
	tDragonSoulMonsterDrop_Award[4140][7] = {}
	tDragonSoulMonsterDrop_Award[4140][7]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4140][7]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4140][7]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4140][7]["RewardExpTime"]["Value"] = 300
	tDragonSoulMonsterDrop_Award[4140][7]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4140][7]["LogStep"] = "2[17]"	
	

-- 18层怪物掉落
	tDragonSoulMonsterDrop_Award[4141] = {}
	tDragonSoulMonsterDrop_Award[4141]["ItemChanceSum"] = 10000
	-- 18阶灵珠	0.01%
	tDragonSoulMonsterDrop_Award[4141][1] = {}
	tDragonSoulMonsterDrop_Award[4141][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][1]["ItemChance"] = 1
	tDragonSoulMonsterDrop_Award[4141][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4141][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4141][1]["RewardItem"][1]["Id"] = 4200018
	tDragonSoulMonsterDrop_Award[4141][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4141][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4141][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][1]["LogStep"] = "2[18]"	
	-- 16阶灵珠	0.09%
	tDragonSoulMonsterDrop_Award[4141][2] = {}
	tDragonSoulMonsterDrop_Award[4141][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][2]["ItemChance"] = 9
	tDragonSoulMonsterDrop_Award[4141][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4141][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4141][2]["RewardItem"][1]["Id"] = 4200016
	tDragonSoulMonsterDrop_Award[4141][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4141][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4141][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][2]["LogStep"] = "2[18]"
	-- 12阶灵珠	35.9%
	tDragonSoulMonsterDrop_Award[4141][3] = {}
	tDragonSoulMonsterDrop_Award[4141][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][3]["ItemChance"] = 3590
	tDragonSoulMonsterDrop_Award[4141][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4141][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4141][3]["RewardItem"][1]["Id"] = 4200012
	tDragonSoulMonsterDrop_Award[4141][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4141][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4141][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][3]["LogStep"] = "2[18]"
	-- 11阶灵珠	12.5%
	tDragonSoulMonsterDrop_Award[4141][4] = {}
	tDragonSoulMonsterDrop_Award[4141][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][4]["ItemChance"] = 1250
	tDragonSoulMonsterDrop_Award[4141][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4141][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4141][4]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulMonsterDrop_Award[4141][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4141][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4141][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][4]["LogStep"] = "2[18]"
	-- 10阶灵珠	11.5%
	tDragonSoulMonsterDrop_Award[4141][5] = {}
	tDragonSoulMonsterDrop_Award[4141][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][5]["ItemChance"] = 1150
	tDragonSoulMonsterDrop_Award[4141][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[4141][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[4141][5]["RewardItem"][1]["Id"] = 4200010
	tDragonSoulMonsterDrop_Award[4141][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[4141][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[4141][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][5]["LogStep"] = "2[18]"
	-- 500分钟经验 40%
	tDragonSoulMonsterDrop_Award[4141][6] = {}
	tDragonSoulMonsterDrop_Award[4141][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[4141][6]["ItemChance"] = 4000
	tDragonSoulMonsterDrop_Award[4141][6]["RewardExpTime"] = {}
	tDragonSoulMonsterDrop_Award[4141][6]["RewardExpTime"]["Value"] = 500
	tDragonSoulMonsterDrop_Award[4141][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[4141][6]["LogStep"] = "2[18]"	
	
	
-- 19层怪物掉落
	tDragonSoulMonsterDrop_Award[7934] = {}
	tDragonSoulMonsterDrop_Award[7934]["ItemChanceSum"] = 100000
	-- 19阶灵珠	0.008%
	tDragonSoulMonsterDrop_Award[7934][1] = {}
	tDragonSoulMonsterDrop_Award[7934][1]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][1]["ItemChance"] = 8
	tDragonSoulMonsterDrop_Award[7934][1]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][1]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][1]["RewardItem"][1]["Id"] = 4200019
	tDragonSoulMonsterDrop_Award[7934][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][1]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[7934][1]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][1]["LogStep"] = "2[19]"	
	-- 17阶灵珠	0.092%
	tDragonSoulMonsterDrop_Award[7934][2] = {}
	tDragonSoulMonsterDrop_Award[7934][2]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][2]["ItemChance"] = 92
	tDragonSoulMonsterDrop_Award[7934][2]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][2]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][2]["RewardItem"][1]["Id"] = 4200017
	tDragonSoulMonsterDrop_Award[7934][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][2]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[7934][2]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][2]["LogStep"] = "2[19]"
	-- 13阶灵珠	35.5%
	tDragonSoulMonsterDrop_Award[7934][3] = {}
	tDragonSoulMonsterDrop_Award[7934][3]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][3]["ItemChance"] = 35500
	tDragonSoulMonsterDrop_Award[7934][3]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][3]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][3]["RewardItem"][1]["Id"] = 4200013
	tDragonSoulMonsterDrop_Award[7934][3]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][3]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[7934][3]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][3]["LogStep"] = "2[19]"
	-- 12阶灵珠	12.9%
	tDragonSoulMonsterDrop_Award[7934][4] = {}
	tDragonSoulMonsterDrop_Award[7934][4]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][4]["ItemChance"] = 12900
	tDragonSoulMonsterDrop_Award[7934][4]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][4]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][4]["RewardItem"][1]["Id"] = 4200012
	tDragonSoulMonsterDrop_Award[7934][4]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][4]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[7934][4]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][4]["LogStep"] = "2[19]"
	-- 11阶灵珠	11.5%
	tDragonSoulMonsterDrop_Award[7934][5] = {}
	tDragonSoulMonsterDrop_Award[7934][5]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][5]["ItemChance"] = 11500
	tDragonSoulMonsterDrop_Award[7934][5]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][5]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][5]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulMonsterDrop_Award[7934][5]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][5]["RewardItem"][1]["PreciousType"] = 304
	tDragonSoulMonsterDrop_Award[7934][5]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][5]["LogStep"] = "2[19]"
	-- 5000气	40%
	tDragonSoulMonsterDrop_Award[7934][6] = {}
	tDragonSoulMonsterDrop_Award[7934][6]["RandomItemChanceType"] = 2
	tDragonSoulMonsterDrop_Award[7934][6]["ItemChance"] = 40000
	tDragonSoulMonsterDrop_Award[7934][6]["RewardItem"] = {}
	tDragonSoulMonsterDrop_Award[7934][6]["RewardItem"][1] = {}
	tDragonSoulMonsterDrop_Award[7934][6]["RewardItem"][1]["Id"] = 3304200
	tDragonSoulMonsterDrop_Award[7934][6]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulMonsterDrop_Award[7934][6]["LogId"] = 12001285
	tDragonSoulMonsterDrop_Award[7934][6]["LogStep"] = "2[19]"
	
local tDragonSoulMonsterDrop_Position = {}
	tDragonSoulMonsterDrop_Position["Normal"] = {}
	tDragonSoulMonsterDrop_Position["Normal"]["MapId"] = 1002
	tDragonSoulMonsterDrop_Position["Normal"]["PosX"] = 344
	tDragonSoulMonsterDrop_Position["Normal"]["PosY"] = 412
	tDragonSoulMonsterDrop_Position["NoGift"] = {}
	tDragonSoulMonsterDrop_Position["NoGift"]["MapId"] = 1036
	tDragonSoulMonsterDrop_Position["NoGift"]["PosX"] = 213
	tDragonSoulMonsterDrop_Position["NoGift"]["PosY"] = 199
	
----------------------------------逻辑部分--------------------------------------------
-- 怪物掉落
function DragonSoulMonsterDrop_MonsterDrop(nMonstertypeId)
	local nUserId = Get_UserId()
	-- 传送出去
	local nMapId
	local nPosX 
	local nPosY 
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tDragonSoulMonsterDrop_Position["NoGift"]["MapId"]
		nPosX = tDragonSoulMonsterDrop_Position["NoGift"]["PosX"] 
		nPosY = tDragonSoulMonsterDrop_Position["NoGift"]["PosY"] 
	else
		nMapId = tDragonSoulMonsterDrop_Position["Normal"]["MapId"]
		nPosX = tDragonSoulMonsterDrop_Position["Normal"]["PosX"] 
		nPosY = tDragonSoulMonsterDrop_Position["Normal"]["PosY"] 
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
	
	
	-- 给奖励
	local nDelItemId = tDragonSoulMonsterDrop_DelItem[nMonstertypeId]
	if nDelItemId == nil then
		return
	end
	if Item_ChkItem(nDelItemId) and Item_DelItem(nDelItemId) then
		-- 贵重物品统计
		Sys_DecNosuchStatisticCount(354,nDelItemId,1)
		local tReward,sReward = RewardTemplate_NewRandom(tDragonSoulMonsterDrop_Award,nMonstertypeId)
		
		local sMonsterName = tDragonSoulMonsterDrop_Text["MonsterName"][nMonstertypeId]
		if tReward[1]["tAward"][1]["RewardItem"] ~= nil then
			-- local nItemtypeId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- local sItemtypeName = Get_ItemtypeName(nItemtypeId)
			Sys_MsgBox(string.format(tDragonSoulMonsterDrop_Text["Get"],sMonsterName,sReward),nil,nil,nUserId)
		elseif tReward[1]["tAward"][1]["RewardExpTime"] ~= nil then
			if Get_UserLevel(nUserId) >= G_User_MaxLev then
				local nValue = tReward[1]["tAward"][1]["RewardExpTime"]["Value"]
				Sys_MsgBox(string.format(tDragonSoulMonsterDrop_Text["MaxLevelGetExp"],sMonsterName,nValue),nil,nil,nUserId)
			else
				Sys_MsgBox(string.format(tDragonSoulMonsterDrop_Text["Get"],sMonsterName,sReward),nil,nil,nUserId)
			end
		end
		--博弈玩法集合（1.16-2.5）
		GameCollection_Tower(nMonstertypeId)
	else
		Sys_MsgBox(tDragonSoulMonsterDrop_Text["NoMap"],nil,nil,nUserId)
	end
end

----------------------------------怪物部分--------------------------------------------
local tDragonSoulMonsterDrop_KillMonster = {}
	tDragonSoulMonsterDrop_KillMonster["Function"]= DragonSoulMonsterDrop_MonsterDrop
	tDragonSoulMonsterDrop_KillMonster["MonsterId"] = {4134,4135,4136,4137,4138,4139,4140,4141,7934}

table.insert(tMonsterDrop_AreaLoad,tDragonSoulMonsterDrop_KillMonster)
