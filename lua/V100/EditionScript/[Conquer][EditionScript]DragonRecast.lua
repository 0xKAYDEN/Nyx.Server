------------------------------------------------------------------------------------
--Name:			[简体征服][功能脚本]重铸功能配置
--Creator:		翁清海
--Created:		2020/06/11
------------------------------------------------------------------------------------

--命名前缀
--DragonRecast_

--logid:10003016

--------------------------------------------数据部分配置--------------------------------------------
local tDragonRecast_Reward = {}
	-- -- ===1阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200001]
	-- -- ===删除: 4200001,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200001)
	-- tDragonRecast_Reward[4200001] = {}
	-- tDragonRecast_Reward[4200001]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200001]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200001]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200001]["DeleteItem"][1]["Id"] = 4200001 -- 【库】1阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200001]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200001]["LogId"] = 10003016
	-- -- 5分钟经验 - 53.9%
	-- tDragonRecast_Reward[4200001][1] = {}
	-- tDragonRecast_Reward[4200001][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200001][1]["ItemChance"] = 5390
	-- tDragonRecast_Reward[4200001][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200001][1]["RewardExpTime"]["Value"] = 5 -- 分钟经验, 【需求】5分钟经验
	-- tDragonRecast_Reward[4200001][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200001][1]["RewardExpTime"]["FullValue"] = 3 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200001][1]["RewardExpTime"]["FullLog"] = "0,0,4200001,1,10003016,2,6,3"
	-- -- 2阶灵珠 - 45.1%
	-- tDragonRecast_Reward[4200001][2] = {}
	-- tDragonRecast_Reward[4200001][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200001][2]["ItemChance"] = 4510
	-- tDragonRecast_Reward[4200001][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200001][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200001][2]["RewardItem"][1]["Id"] = 4200002 -- 2阶灵珠[4200002][属性:72][叠加:99][金币:0], 【表格】2阶灵珠
	-- tDragonRecast_Reward[4200001][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	-- tDragonRecast_Reward[4200001][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 4阶灵珠 - 1%
	-- tDragonRecast_Reward[4200001][3] = {}
	-- tDragonRecast_Reward[4200001][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200001][3]["ItemChance"] = 100
	-- tDragonRecast_Reward[4200001][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200001][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200001][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	-- tDragonRecast_Reward[4200001][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	-- tDragonRecast_Reward[4200001][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===2阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200002]
	-- -- ===删除: 4200002,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200002)
	-- tDragonRecast_Reward[4200002] = {}
	-- tDragonRecast_Reward[4200002]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200002]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200002]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200002]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200002]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200002]["LogId"] = 10003016
	-- -- 10分钟经验 - 48.9%
	-- tDragonRecast_Reward[4200002][1] = {}
	-- tDragonRecast_Reward[4200002][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200002][1]["ItemChance"] = 4890
	-- tDragonRecast_Reward[4200002][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200002][1]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验
	-- tDragonRecast_Reward[4200002][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200002][1]["RewardExpTime"]["FullValue"] = 5 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200002][1]["RewardExpTime"]["FullLog"] = "0,0,4200002,1,10003016,2,6,5"
	-- -- 1阶灵珠 + 2阶灵珠 - 20.1%
	-- tDragonRecast_Reward[4200002][2] = {}
	-- tDragonRecast_Reward[4200002][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200002][2]["ItemChance"] = 2010
	-- tDragonRecast_Reward[4200002][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][2]["Id"] = 4200002 -- 2阶灵珠[4200002][属性:72][叠加:99][金币:0], 【表格】2阶灵珠
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][2]["Attr"] = "0 1" -- 2阶灵珠*1
	-- tDragonRecast_Reward[4200002][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 3阶灵珠 - 30%
	-- tDragonRecast_Reward[4200002][3] = {}
	-- tDragonRecast_Reward[4200002][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200002][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200002][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200002][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200002][3]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	-- tDragonRecast_Reward[4200002][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	-- tDragonRecast_Reward[4200002][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 5阶灵珠 - 1%
	-- tDragonRecast_Reward[4200002][4] = {}
	-- tDragonRecast_Reward[4200002][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200002][4]["ItemChance"] = 100
	-- tDragonRecast_Reward[4200002][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200002][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200002][4]["RewardItem"][1]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	-- tDragonRecast_Reward[4200002][4]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	-- tDragonRecast_Reward[4200002][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===3阶重铸
	-- ===索引: tDragonRecast_Reward[4200003]
	-- ===删除: 4200003,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200003)
	tDragonRecast_Reward[4200003] = {}
	tDragonRecast_Reward[4200003]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200003]["DeleteItem"] = {}
	tDragonRecast_Reward[4200003]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200003]["DeleteItem"][1]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72]
	tDragonRecast_Reward[4200003]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200003]["LogId"] = 10003016
	-- 20分钟经验 - 45%
	tDragonRecast_Reward[4200003][1] = {}
	tDragonRecast_Reward[4200003][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200003][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200003][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200003][1]["RewardExpTime"]["Value"] = 20 -- 分钟经验, 【需求】20分钟经验
	tDragonRecast_Reward[4200003][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200003][1]["RewardExpTime"]["FullValue"] = 10 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200003][1]["RewardExpTime"]["FullLog"] = "0,0,4200003,1,10003016,2,6,10"
	-- 1阶灵珠 + 3阶灵珠 - 24.1%
	tDragonRecast_Reward[4200003][2] = {}
	tDragonRecast_Reward[4200003][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200003][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200003][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200003][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200003][2]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tDragonRecast_Reward[4200003][2]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tDragonRecast_Reward[4200003][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200003][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200003][2]["RewardItem"][2]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tDragonRecast_Reward[4200003][2]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tDragonRecast_Reward[4200003][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 4阶灵珠 - 30%
	tDragonRecast_Reward[4200003][3] = {}
	tDragonRecast_Reward[4200003][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200003][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200003][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200003][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200003][3]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tDragonRecast_Reward[4200003][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tDragonRecast_Reward[4200003][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 6阶灵珠 - 0.9%
	tDragonRecast_Reward[4200003][4] = {}
	tDragonRecast_Reward[4200003][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200003][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200003][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200003][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200003][4]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tDragonRecast_Reward[4200003][4]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tDragonRecast_Reward[4200003][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===4阶重铸
	-- ===索引: tDragonRecast_Reward[4200004]
	-- ===删除: 4200004,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200004)
	tDragonRecast_Reward[4200004] = {}
	tDragonRecast_Reward[4200004]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200004]["DeleteItem"] = {}
	tDragonRecast_Reward[4200004]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200004]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]
	tDragonRecast_Reward[4200004]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200004]["LogId"] = 10003016
	-- 30分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200004][1] = {}
	tDragonRecast_Reward[4200004][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200004][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200004][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200004][1]["RewardExpTime"]["Value"] = 30 -- 分钟经验, 【需求】30分钟经验
	tDragonRecast_Reward[4200004][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200004][1]["RewardExpTime"]["FullValue"] = 15 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200004][1]["RewardExpTime"]["FullLog"] = "0,0,4200004,1,10003016,2,6,15"
	tDragonRecast_Reward[4200004][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200004][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200004][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200004][1]["RewardItem"][1]["Attr"] = "0 1" -- ConsolationBalloon*1
	-- 2阶灵珠 + 4阶灵珠 - 24.1%
	tDragonRecast_Reward[4200004][2] = {}
	tDragonRecast_Reward[4200004][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200004][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200004][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200004][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200004][2]["RewardItem"][1]["Id"] = 4200002 -- 2阶灵珠[4200002][属性:72][叠加:99][金币:0], 【表格】2阶灵珠
	tDragonRecast_Reward[4200004][2]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tDragonRecast_Reward[4200004][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200004][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200004][2]["RewardItem"][2]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tDragonRecast_Reward[4200004][2]["RewardItem"][2]["Attr"] = "0 1" -- 4阶灵珠*1
	tDragonRecast_Reward[4200004][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 5阶灵珠 - 30%
	tDragonRecast_Reward[4200004][3] = {}
	tDragonRecast_Reward[4200004][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200004][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200004][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200004][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200004][3]["RewardItem"][1]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tDragonRecast_Reward[4200004][3]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tDragonRecast_Reward[4200004][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 7阶灵珠 - 0.9%
	tDragonRecast_Reward[4200004][4] = {}
	tDragonRecast_Reward[4200004][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200004][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200004][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200004][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200004][4]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tDragonRecast_Reward[4200004][4]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tDragonRecast_Reward[4200004][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===5阶重铸
	-- ===索引: tDragonRecast_Reward[4200005]
	-- ===删除: 4200005,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200005)
	tDragonRecast_Reward[4200005] = {}
	tDragonRecast_Reward[4200005]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200005]["DeleteItem"] = {}
	tDragonRecast_Reward[4200005]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200005]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tDragonRecast_Reward[4200005]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200005]["LogId"] = 10003016
	-- 50分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200005][1] = {}
	tDragonRecast_Reward[4200005][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200005][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200005][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200005][1]["RewardExpTime"]["Value"] = 50 -- 分钟经验, 【需求】50分钟经验
	tDragonRecast_Reward[4200005][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200005][1]["RewardExpTime"]["FullValue"] = 25 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200005][1]["RewardExpTime"]["FullLog"] = "0,0,4200005,1,10003016,2,6,25"
	tDragonRecast_Reward[4200005][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200005][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200005][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200005][1]["RewardItem"][1]["Attr"] = "0 2" -- ConsolationBalloon*2
	-- 3阶灵珠 + 5阶灵珠 - 24.1%
	tDragonRecast_Reward[4200005][2] = {}
	tDragonRecast_Reward[4200005][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200005][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200005][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200005][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200005][2]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tDragonRecast_Reward[4200005][2]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tDragonRecast_Reward[4200005][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200005][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200005][2]["RewardItem"][2]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tDragonRecast_Reward[4200005][2]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
	tDragonRecast_Reward[4200005][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 6阶灵珠 - 30%
	tDragonRecast_Reward[4200005][3] = {}
	tDragonRecast_Reward[4200005][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200005][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200005][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200005][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200005][3]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tDragonRecast_Reward[4200005][3]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tDragonRecast_Reward[4200005][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 8阶灵珠 - 0.9%
	tDragonRecast_Reward[4200005][4] = {}
	tDragonRecast_Reward[4200005][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200005][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200005][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200005][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200005][4]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tDragonRecast_Reward[4200005][4]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tDragonRecast_Reward[4200005][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===6阶重铸
	-- ===索引: tDragonRecast_Reward[4200006]
	-- ===删除: 4200006,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200006)
	tDragonRecast_Reward[4200006] = {}
	tDragonRecast_Reward[4200006]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200006]["DeleteItem"] = {}
	tDragonRecast_Reward[4200006]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200006]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72]
	tDragonRecast_Reward[4200006]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200006]["LogId"] = 10003016
	-- 100分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200006][1] = {}
	tDragonRecast_Reward[4200006][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200006][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200006][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200006][1]["RewardExpTime"]["Value"] = 100 -- 分钟经验, 【需求】100分钟经验
	tDragonRecast_Reward[4200006][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200006][1]["RewardExpTime"]["FullValue"] = 50 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200006][1]["RewardExpTime"]["FullLog"] = "0,0,4200006,1,10003016,2,6,50"
	tDragonRecast_Reward[4200006][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200006][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200006][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200006][1]["RewardItem"][1]["Attr"] = "0 4" -- ConsolationBalloon*4
	-- 4阶灵珠 + 6阶灵珠 - 24.1%
	tDragonRecast_Reward[4200006][2] = {}
	tDragonRecast_Reward[4200006][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200006][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200006][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200006][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200006][2]["RewardItem"][1]["Id"] = 4200004 -- 4阶灵珠[4200004][属性:72][叠加:99][金币:0], 【表格】4阶灵珠
	tDragonRecast_Reward[4200006][2]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tDragonRecast_Reward[4200006][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200006][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200006][2]["RewardItem"][2]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tDragonRecast_Reward[4200006][2]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tDragonRecast_Reward[4200006][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 7阶灵珠 - 30%
	tDragonRecast_Reward[4200006][3] = {}
	tDragonRecast_Reward[4200006][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200006][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200006][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200006][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200006][3]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tDragonRecast_Reward[4200006][3]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tDragonRecast_Reward[4200006][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 9阶灵珠 - 0.9%
	tDragonRecast_Reward[4200006][4] = {}
	tDragonRecast_Reward[4200006][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200006][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200006][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200006][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200006][4]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tDragonRecast_Reward[4200006][4]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tDragonRecast_Reward[4200006][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===7阶重铸
	-- ===索引: tDragonRecast_Reward[4200007]
	-- ===删除: 4200007,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200007)
	tDragonRecast_Reward[4200007] = {}
	tDragonRecast_Reward[4200007]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200007]["DeleteItem"] = {}
	tDragonRecast_Reward[4200007]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200007]["DeleteItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72]
	tDragonRecast_Reward[4200007]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200007]["LogId"] = 10003016
	-- 150分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200007][1] = {}
	tDragonRecast_Reward[4200007][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200007][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200007][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200007][1]["RewardExpTime"]["Value"] = 150 -- 分钟经验, 【需求】150分钟经验
	tDragonRecast_Reward[4200007][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200007][1]["RewardExpTime"]["FullValue"] = 75 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200007][1]["RewardExpTime"]["FullLog"] = "0,0,4200007,1,10003016,2,6,75"
	tDragonRecast_Reward[4200007][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200007][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200007][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200007][1]["RewardItem"][1]["Attr"] = "0 8" -- ConsolationBalloon*8
	-- 5阶灵珠 + 7阶灵珠 - 24.1%
	tDragonRecast_Reward[4200007][2] = {}
	tDragonRecast_Reward[4200007][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200007][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200007][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200007][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200007][2]["RewardItem"][1]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tDragonRecast_Reward[4200007][2]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tDragonRecast_Reward[4200007][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200007][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200007][2]["RewardItem"][2]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tDragonRecast_Reward[4200007][2]["RewardItem"][2]["Attr"] = "0 1" -- 7阶灵珠*1
	tDragonRecast_Reward[4200007][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 8阶灵珠 - 30%
	tDragonRecast_Reward[4200007][3] = {}
	tDragonRecast_Reward[4200007][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200007][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200007][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200007][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200007][3]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tDragonRecast_Reward[4200007][3]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tDragonRecast_Reward[4200007][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 10阶灵珠 - 0.9%
	tDragonRecast_Reward[4200007][4] = {}
	tDragonRecast_Reward[4200007][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200007][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200007][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200007][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200007][4]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tDragonRecast_Reward[4200007][4]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tDragonRecast_Reward[4200007][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===8阶重铸
	-- ===索引: tDragonRecast_Reward[4200008]
	-- ===删除: 4200008,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200008)
	tDragonRecast_Reward[4200008] = {}
	tDragonRecast_Reward[4200008]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200008]["DeleteItem"] = {}
	tDragonRecast_Reward[4200008]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200008]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72]
	tDragonRecast_Reward[4200008]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200008]["LogId"] = 10003016
	-- 200分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200008][1] = {}
	tDragonRecast_Reward[4200008][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200008][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200008][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200008][1]["RewardExpTime"]["Value"] = 200 -- 分钟经验, 【需求】200分钟经验
	tDragonRecast_Reward[4200008][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200008][1]["RewardExpTime"]["FullValue"] = 100 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200008][1]["RewardExpTime"]["FullLog"] = "0,0,4200008,1,10003016,2,6,100"
	tDragonRecast_Reward[4200008][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200008][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200008][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200008][1]["RewardItem"][1]["Attr"] = "0 16" -- ConsolationBalloon*16（数量超10个）
	-- 6阶灵珠 + 8阶灵珠 - 24.1%
	tDragonRecast_Reward[4200008][2] = {}
	tDragonRecast_Reward[4200008][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200008][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200008][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200008][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200008][2]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tDragonRecast_Reward[4200008][2]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tDragonRecast_Reward[4200008][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200008][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200008][2]["RewardItem"][2]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tDragonRecast_Reward[4200008][2]["RewardItem"][2]["Attr"] = "0 1" -- 8阶灵珠*1
	tDragonRecast_Reward[4200008][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 9阶灵珠 - 30%
	tDragonRecast_Reward[4200008][3] = {}
	tDragonRecast_Reward[4200008][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200008][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200008][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200008][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200008][3]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tDragonRecast_Reward[4200008][3]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tDragonRecast_Reward[4200008][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 11阶灵珠 - 0.9%
	tDragonRecast_Reward[4200008][4] = {}
	tDragonRecast_Reward[4200008][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200008][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200008][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200008][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200008][4]["RewardItem"][1]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tDragonRecast_Reward[4200008][4]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tDragonRecast_Reward[4200008][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===9阶重铸
	-- ===索引: tDragonRecast_Reward[4200009]
	-- ===删除: 4200009,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200009)
	tDragonRecast_Reward[4200009] = {}
	tDragonRecast_Reward[4200009]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200009]["DeleteItem"] = {}
	tDragonRecast_Reward[4200009]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200009]["DeleteItem"][1]["Id"] = 4200009 -- 【库】9阶灵珠[属性:72]
	tDragonRecast_Reward[4200009]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200009]["LogId"] = 10003016
	-- 250分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200009][1] = {}
	tDragonRecast_Reward[4200009][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200009][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200009][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200009][1]["RewardExpTime"]["Value"] = 250 -- 分钟经验, 【需求】250分钟经验
	tDragonRecast_Reward[4200009][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200009][1]["RewardExpTime"]["FullValue"] = 125 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200009][1]["RewardExpTime"]["FullLog"] = "0,0,4200009,1,10003016,2,6,125"
	tDragonRecast_Reward[4200009][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200009][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200009][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200009][1]["RewardItem"][1]["Attr"] = "0 32" -- ConsolationBalloon*32（数量超10个）
	-- 7阶灵珠 + 9阶灵珠 - 24.1%
	tDragonRecast_Reward[4200009][2] = {}
	tDragonRecast_Reward[4200009][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200009][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200009][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200009][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200009][2]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tDragonRecast_Reward[4200009][2]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tDragonRecast_Reward[4200009][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200009][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200009][2]["RewardItem"][2]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tDragonRecast_Reward[4200009][2]["RewardItem"][2]["Attr"] = "0 1" -- 9阶灵珠*1
	tDragonRecast_Reward[4200009][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 10阶灵珠 - 30%
	tDragonRecast_Reward[4200009][3] = {}
	tDragonRecast_Reward[4200009][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200009][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200009][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200009][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200009][3]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tDragonRecast_Reward[4200009][3]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tDragonRecast_Reward[4200009][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 12阶灵珠 - 0.9%
	tDragonRecast_Reward[4200009][4] = {}
	tDragonRecast_Reward[4200009][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200009][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200009][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200009][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200009][4]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tDragonRecast_Reward[4200009][4]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	tDragonRecast_Reward[4200009][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- ===10阶重铸
	-- ===索引: tDragonRecast_Reward[4200010]
	-- ===删除: 4200010,1
	-- RewardTemplate_RandomReward(tDragonRecast_Reward,4200010)
	tDragonRecast_Reward[4200010] = {}
	tDragonRecast_Reward[4200010]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDragonRecast_Reward[4200010]["DeleteItem"] = {}
	tDragonRecast_Reward[4200010]["DeleteItem"][1] = {}
	tDragonRecast_Reward[4200010]["DeleteItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72]
	tDragonRecast_Reward[4200010]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonRecast_Reward[4200010]["LogId"] = 10003016
	-- 300分钟经验 + 安慰小球 - 45%
	tDragonRecast_Reward[4200010][1] = {}
	tDragonRecast_Reward[4200010][1]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200010][1]["ItemChance"] = 4500
	tDragonRecast_Reward[4200010][1]["RewardExpTime"] = {}
	tDragonRecast_Reward[4200010][1]["RewardExpTime"]["Value"] = 300 -- 分钟经验, 【需求】300分钟经验
	tDragonRecast_Reward[4200010][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDragonRecast_Reward[4200010][1]["RewardExpTime"]["FullValue"] = 150 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tDragonRecast_Reward[4200010][1]["RewardExpTime"]["FullLog"] = "0,0,4200010,1,10003016,2,6,150"
	tDragonRecast_Reward[4200010][1]["RewardItem"] = {}
	tDragonRecast_Reward[4200010][1]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200010][1]["RewardItem"][1]["Id"] = 3332006 -- ConsolationBalloon[3332006][属性:9][叠加:10000][金币:0], 【表格】安慰小球
	tDragonRecast_Reward[4200010][1]["RewardItem"][1]["Attr"] = "0 64" -- ConsolationBalloon*64（数量超10个）
	-- 8阶灵珠 + 10阶灵珠 - 24.1%
	tDragonRecast_Reward[4200010][2] = {}
	tDragonRecast_Reward[4200010][2]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200010][2]["ItemChance"] = 2410
	tDragonRecast_Reward[4200010][2]["RewardItem"] = {}
	tDragonRecast_Reward[4200010][2]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200010][2]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tDragonRecast_Reward[4200010][2]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tDragonRecast_Reward[4200010][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonRecast_Reward[4200010][2]["RewardItem"][2] = {}
	tDragonRecast_Reward[4200010][2]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tDragonRecast_Reward[4200010][2]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tDragonRecast_Reward[4200010][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 11阶灵珠 - 30%
	tDragonRecast_Reward[4200010][3] = {}
	tDragonRecast_Reward[4200010][3]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200010][3]["ItemChance"] = 3000
	tDragonRecast_Reward[4200010][3]["RewardItem"] = {}
	tDragonRecast_Reward[4200010][3]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200010][3]["RewardItem"][1]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tDragonRecast_Reward[4200010][3]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tDragonRecast_Reward[4200010][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 13阶灵珠 - 0.9%
	tDragonRecast_Reward[4200010][4] = {}
	tDragonRecast_Reward[4200010][4]["RandomItemChanceType"] = 2
	tDragonRecast_Reward[4200010][4]["ItemChance"] = 90
	tDragonRecast_Reward[4200010][4]["RewardItem"] = {}
	tDragonRecast_Reward[4200010][4]["RewardItem"][1] = {}
	tDragonRecast_Reward[4200010][4]["RewardItem"][1]["Id"] = 4200013 -- 13阶灵珠[4200013][属性:72][叠加:99][金币:0], 【表格】13阶灵珠
	tDragonRecast_Reward[4200010][4]["RewardItem"][1]["Attr"] = "0 1" -- 13阶灵珠*1
	tDragonRecast_Reward[4200010][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===11阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200011]
	-- -- ===删除: 4200011,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200011)
	-- tDragonRecast_Reward[4200011] = {}
	-- tDragonRecast_Reward[4200011]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200011]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200011]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200011]["DeleteItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200011]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200011]["LogId"] = 10003016
	-- -- 500分钟经验 - 45%
	-- tDragonRecast_Reward[4200011][1] = {}
	-- tDragonRecast_Reward[4200011][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200011][1]["ItemChance"] = 4500
	-- tDragonRecast_Reward[4200011][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200011][1]["RewardExpTime"]["Value"] = 500 -- 分钟经验, 【需求】500分钟经验
	-- tDragonRecast_Reward[4200011][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200011][1]["RewardExpTime"]["FullValue"] = 250 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200011][1]["RewardExpTime"]["FullLog"] = "0,0,4200011,1,10003016,2,6,250"
	-- -- 9阶灵珠 + 11阶灵珠 - 24.1%
	-- tDragonRecast_Reward[4200011][2] = {}
	-- tDragonRecast_Reward[4200011][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200011][2]["ItemChance"] = 2410
	-- tDragonRecast_Reward[4200011][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][2]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][2]["Attr"] = "0 1" -- 11阶灵珠*1
	-- tDragonRecast_Reward[4200011][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 12阶灵珠 - 30%
	-- tDragonRecast_Reward[4200011][3] = {}
	-- tDragonRecast_Reward[4200011][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200011][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200011][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200011][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200011][3]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	-- tDragonRecast_Reward[4200011][3]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	-- tDragonRecast_Reward[4200011][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 14阶灵珠 - 0.9%
	-- tDragonRecast_Reward[4200011][4] = {}
	-- tDragonRecast_Reward[4200011][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200011][4]["ItemChance"] = 90
	-- tDragonRecast_Reward[4200011][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200011][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200011][4]["RewardItem"][1]["Id"] = 4200014 -- 14阶灵珠[4200014][属性:72][叠加:99][金币:0], 【表格】14阶灵珠
	-- tDragonRecast_Reward[4200011][4]["RewardItem"][1]["Attr"] = "0 1" -- 14阶灵珠*1
	-- tDragonRecast_Reward[4200011][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===12阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200012]
	-- -- ===删除: 4200012,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200012)
	-- tDragonRecast_Reward[4200012] = {}
	-- tDragonRecast_Reward[4200012]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200012]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200012]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200012]["DeleteItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200012]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200012]["LogId"] = 10003016
	-- -- 800分钟经验 - 45%
	-- tDragonRecast_Reward[4200012][1] = {}
	-- tDragonRecast_Reward[4200012][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200012][1]["ItemChance"] = 4500
	-- tDragonRecast_Reward[4200012][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200012][1]["RewardExpTime"]["Value"] = 800 -- 分钟经验, 【需求】800分钟经验
	-- tDragonRecast_Reward[4200012][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200012][1]["RewardExpTime"]["FullValue"] = 400 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200012][1]["RewardExpTime"]["FullLog"] = "0,0,4200012,1,10003016,2,6,400"
	-- -- 10阶灵珠 + 12阶灵珠 - 24.1%
	-- tDragonRecast_Reward[4200012][2] = {}
	-- tDragonRecast_Reward[4200012][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200012][2]["ItemChance"] = 2410
	-- tDragonRecast_Reward[4200012][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][2]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][2]["Attr"] = "0 1" -- 12阶灵珠*1
	-- tDragonRecast_Reward[4200012][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 13阶灵珠 - 30%
	-- tDragonRecast_Reward[4200012][3] = {}
	-- tDragonRecast_Reward[4200012][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200012][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200012][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200012][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200012][3]["RewardItem"][1]["Id"] = 4200013 -- 13阶灵珠[4200013][属性:72][叠加:99][金币:0], 【表格】13阶灵珠
	-- tDragonRecast_Reward[4200012][3]["RewardItem"][1]["Attr"] = "0 1" -- 13阶灵珠*1
	-- tDragonRecast_Reward[4200012][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 15阶灵珠 - 0.9%
	-- tDragonRecast_Reward[4200012][4] = {}
	-- tDragonRecast_Reward[4200012][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200012][4]["ItemChance"] = 90
	-- tDragonRecast_Reward[4200012][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200012][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200012][4]["RewardItem"][1]["Id"] = 4200015 -- 15阶灵珠[4200015][属性:72][叠加:99][金币:0], 【表格】15阶灵珠
	-- tDragonRecast_Reward[4200012][4]["RewardItem"][1]["Attr"] = "0 1" -- 15阶灵珠*1
	-- tDragonRecast_Reward[4200012][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===13阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200013]
	-- -- ===删除: 4200013,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200013)
	-- tDragonRecast_Reward[4200013] = {}
	-- tDragonRecast_Reward[4200013]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200013]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200013]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200013]["DeleteItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200013]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200013]["LogId"] = 10003016
	-- -- 1200分钟经验 - 45%
	-- tDragonRecast_Reward[4200013][1] = {}
	-- tDragonRecast_Reward[4200013][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200013][1]["ItemChance"] = 4500
	-- tDragonRecast_Reward[4200013][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200013][1]["RewardExpTime"]["Value"] = 1200 -- 分钟经验, 【需求】1200分钟经验
	-- tDragonRecast_Reward[4200013][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200013][1]["RewardExpTime"]["FullValue"] = 600 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200013][1]["RewardExpTime"]["FullLog"] = "0,0,4200013,1,10003016,2,6,600"
	-- -- 11阶灵珠 + 13阶灵珠 - 24.1%
	-- tDragonRecast_Reward[4200013][2] = {}
	-- tDragonRecast_Reward[4200013][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200013][2]["ItemChance"] = 2410
	-- tDragonRecast_Reward[4200013][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][1]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][2]["Id"] = 4200013 -- 13阶灵珠[4200013][属性:72][叠加:99][金币:0], 【表格】13阶灵珠
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][2]["Attr"] = "0 1" -- 13阶灵珠*1
	-- tDragonRecast_Reward[4200013][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 14阶灵珠 - 30%
	-- tDragonRecast_Reward[4200013][3] = {}
	-- tDragonRecast_Reward[4200013][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200013][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200013][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200013][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200013][3]["RewardItem"][1]["Id"] = 4200014 -- 14阶灵珠[4200014][属性:72][叠加:99][金币:0], 【表格】14阶灵珠
	-- tDragonRecast_Reward[4200013][3]["RewardItem"][1]["Attr"] = "0 1" -- 14阶灵珠*1
	-- tDragonRecast_Reward[4200013][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 16阶灵珠 - 0.9%
	-- tDragonRecast_Reward[4200013][4] = {}
	-- tDragonRecast_Reward[4200013][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200013][4]["ItemChance"] = 90
	-- tDragonRecast_Reward[4200013][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200013][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200013][4]["RewardItem"][1]["Id"] = 4200016 -- 16阶灵珠[4200016][属性:72][叠加:99][金币:0], 【表格】16阶灵珠
	-- tDragonRecast_Reward[4200013][4]["RewardItem"][1]["Attr"] = "0 1" -- 16阶灵珠*1
	-- tDragonRecast_Reward[4200013][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===14阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200014]
	-- -- ===删除: 4200014,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200014)
	-- tDragonRecast_Reward[4200014] = {}
	-- tDragonRecast_Reward[4200014]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200014]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200014]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200014]["DeleteItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200014]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200014]["LogId"] = 10003016
	-- -- 2000分钟经验 - 45%
	-- tDragonRecast_Reward[4200014][1] = {}
	-- tDragonRecast_Reward[4200014][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200014][1]["ItemChance"] = 4500
	-- tDragonRecast_Reward[4200014][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200014][1]["RewardExpTime"]["Value"] = 2000 -- 分钟经验, 【需求】2000分钟经验
	-- tDragonRecast_Reward[4200014][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200014][1]["RewardExpTime"]["FullValue"] = 1000 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200014][1]["RewardExpTime"]["FullLog"] = "0,0,4200014,1,10003016,2,6,1000"
	-- -- 12阶灵珠 + 14阶灵珠 - 24.1%
	-- tDragonRecast_Reward[4200014][2] = {}
	-- tDragonRecast_Reward[4200014][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200014][2]["ItemChance"] = 2410
	-- tDragonRecast_Reward[4200014][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][2]["Id"] = 4200014 -- 14阶灵珠[4200014][属性:72][叠加:99][金币:0], 【表格】14阶灵珠
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][2]["Attr"] = "0 1" -- 14阶灵珠*1
	-- tDragonRecast_Reward[4200014][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 15阶灵珠 - 30%
	-- tDragonRecast_Reward[4200014][3] = {}
	-- tDragonRecast_Reward[4200014][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200014][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200014][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200014][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200014][3]["RewardItem"][1]["Id"] = 4200015 -- 15阶灵珠[4200015][属性:72][叠加:99][金币:0], 【表格】15阶灵珠
	-- tDragonRecast_Reward[4200014][3]["RewardItem"][1]["Attr"] = "0 1" -- 15阶灵珠*1
	-- tDragonRecast_Reward[4200014][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 17阶灵珠 - 0.9%
	-- tDragonRecast_Reward[4200014][4] = {}
	-- tDragonRecast_Reward[4200014][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200014][4]["ItemChance"] = 90
	-- tDragonRecast_Reward[4200014][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200014][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200014][4]["RewardItem"][1]["Id"] = 4200017 -- 17阶灵珠[4200017][属性:72][叠加:99][金币:0], 【表格】17阶灵珠
	-- tDragonRecast_Reward[4200014][4]["RewardItem"][1]["Attr"] = "0 1" -- 17阶灵珠*1
	-- tDragonRecast_Reward[4200014][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===15阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200015]
	-- -- ===删除: 4200015,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200015)
	-- tDragonRecast_Reward[4200015] = {}
	-- tDragonRecast_Reward[4200015]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200015]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200015]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200015]["DeleteItem"][1]["Id"] = 4200015 -- 【库】15阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200015]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200015]["LogId"] = 10003016
	-- -- 3000分钟经验 - 45%
	-- tDragonRecast_Reward[4200015][1] = {}
	-- tDragonRecast_Reward[4200015][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200015][1]["ItemChance"] = 4500
	-- tDragonRecast_Reward[4200015][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200015][1]["RewardExpTime"]["Value"] = 3000 -- 分钟经验, 【需求】3000分钟经验
	-- tDragonRecast_Reward[4200015][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200015][1]["RewardExpTime"]["FullValue"] = 1500 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200015][1]["RewardExpTime"]["FullLog"] = "0,0,4200015,1,10003016,2,6,1500"
	-- -- 13阶灵珠 + 15阶灵珠 - 24.1%
	-- tDragonRecast_Reward[4200015][2] = {}
	-- tDragonRecast_Reward[4200015][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200015][2]["ItemChance"] = 2410
	-- tDragonRecast_Reward[4200015][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][1]["Id"] = 4200013 -- 13阶灵珠[4200013][属性:72][叠加:99][金币:0], 【表格】13阶灵珠
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][1]["Attr"] = "0 1" -- 13阶灵珠*1
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][2]["Id"] = 4200015 -- 15阶灵珠[4200015][属性:72][叠加:99][金币:0], 【表格】15阶灵珠
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][2]["Attr"] = "0 1" -- 15阶灵珠*1
	-- tDragonRecast_Reward[4200015][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 16阶灵珠 - 30%
	-- tDragonRecast_Reward[4200015][3] = {}
	-- tDragonRecast_Reward[4200015][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200015][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200015][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200015][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200015][3]["RewardItem"][1]["Id"] = 4200016 -- 16阶灵珠[4200016][属性:72][叠加:99][金币:0], 【表格】16阶灵珠
	-- tDragonRecast_Reward[4200015][3]["RewardItem"][1]["Attr"] = "0 1" -- 16阶灵珠*1
	-- tDragonRecast_Reward[4200015][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 18阶灵珠 - 0.9%
	-- tDragonRecast_Reward[4200015][4] = {}
	-- tDragonRecast_Reward[4200015][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200015][4]["ItemChance"] = 90
	-- tDragonRecast_Reward[4200015][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200015][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200015][4]["RewardItem"][1]["Id"] = 4200018 -- 18阶灵珠[4200018][属性:72][叠加:99][金币:0], 【表格】18阶灵珠
	-- tDragonRecast_Reward[4200015][4]["RewardItem"][1]["Attr"] = "0 1" -- 18阶灵珠*1
	-- tDragonRecast_Reward[4200015][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===16阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200016]
	-- -- ===删除: 4200016,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200016)
	-- tDragonRecast_Reward[4200016] = {}
	-- tDragonRecast_Reward[4200016]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200016]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200016]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200016]["DeleteItem"][1]["Id"] = 4200016 -- 【库】16阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200016]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200016]["LogId"] = 10003016
	-- -- 5000分钟经验 - 43.9%
	-- tDragonRecast_Reward[4200016][1] = {}
	-- tDragonRecast_Reward[4200016][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200016][1]["ItemChance"] = 4390
	-- tDragonRecast_Reward[4200016][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200016][1]["RewardExpTime"]["Value"] = 5000 -- 分钟经验, 【需求】5000分钟经验
	-- tDragonRecast_Reward[4200016][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200016][1]["RewardExpTime"]["FullValue"] = 2500 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200016][1]["RewardExpTime"]["FullLog"] = "0,0,4200016,1,10003016,2,6,2500"
	-- -- 14阶灵珠 + 16阶灵珠 - 24.5%
	-- tDragonRecast_Reward[4200016][2] = {}
	-- tDragonRecast_Reward[4200016][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200016][2]["ItemChance"] = 2450
	-- tDragonRecast_Reward[4200016][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][1]["Id"] = 4200014 -- 14阶灵珠[4200014][属性:72][叠加:99][金币:0], 【表格】14阶灵珠
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][1]["Attr"] = "0 1" -- 14阶灵珠*1
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][2]["Id"] = 4200016 -- 16阶灵珠[4200016][属性:72][叠加:99][金币:0], 【表格】16阶灵珠
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][2]["Attr"] = "0 1" -- 16阶灵珠*1
	-- tDragonRecast_Reward[4200016][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 17阶灵珠 - 30%
	-- tDragonRecast_Reward[4200016][3] = {}
	-- tDragonRecast_Reward[4200016][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200016][3]["ItemChance"] = 3000
	-- tDragonRecast_Reward[4200016][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200016][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200016][3]["RewardItem"][1]["Id"] = 4200017 -- 17阶灵珠[4200017][属性:72][叠加:99][金币:0], 【表格】17阶灵珠
	-- tDragonRecast_Reward[4200016][3]["RewardItem"][1]["Attr"] = "0 1" -- 17阶灵珠*1
	-- tDragonRecast_Reward[4200016][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 18阶灵珠 - 1.6%
	-- tDragonRecast_Reward[4200016][4] = {}
	-- tDragonRecast_Reward[4200016][4]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200016][4]["ItemChance"] = 160
	-- tDragonRecast_Reward[4200016][4]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200016][4]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200016][4]["RewardItem"][1]["Id"] = 4200018 -- 18阶灵珠[4200018][属性:72][叠加:99][金币:0], 【表格】18阶灵珠
	-- tDragonRecast_Reward[4200016][4]["RewardItem"][1]["Attr"] = "0 1" -- 18阶灵珠*1
	-- tDragonRecast_Reward[4200016][4]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	-- -- ===17阶重铸
	-- -- ===索引: tDragonRecast_Reward[4200017]
	-- -- ===删除: 4200017,1
	-- -- RewardTemplate_RandomReward(tDragonRecast_Reward,4200017)
	-- tDragonRecast_Reward[4200017] = {}
	-- tDragonRecast_Reward[4200017]["ItemChanceSum"] = 10000
	-- -- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	-- tDragonRecast_Reward[4200017]["DeleteItem"] = {}
	-- tDragonRecast_Reward[4200017]["DeleteItem"][1] = {}
	-- tDragonRecast_Reward[4200017]["DeleteItem"][1]["Id"] = 4200017 -- 【库】17阶灵珠[属性:72]
	-- tDragonRecast_Reward[4200017]["DeleteItem"][1]["PreciousType"] = 351 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	-- tDragonRecast_Reward[4200017]["LogId"] = 10003016
	-- -- 8000分钟经验 - 41.9%
	-- tDragonRecast_Reward[4200017][1] = {}
	-- tDragonRecast_Reward[4200017][1]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200017][1]["ItemChance"] = 4190
	-- tDragonRecast_Reward[4200017][1]["RewardExpTime"] = {}
	-- tDragonRecast_Reward[4200017][1]["RewardExpTime"]["Value"] = 8000 -- 分钟经验, 【需求】8000分钟经验
	-- tDragonRecast_Reward[4200017][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tDragonRecast_Reward[4200017][1]["RewardExpTime"]["FullValue"] = 4000 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	-- tDragonRecast_Reward[4200017][1]["RewardExpTime"]["FullLog"] = "0,0,4200017,1,10003016,2,6,4000"
	-- -- 15阶灵珠 + 17阶灵珠 - 25.6%
	-- tDragonRecast_Reward[4200017][2] = {}
	-- tDragonRecast_Reward[4200017][2]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200017][2]["ItemChance"] = 2560
	-- tDragonRecast_Reward[4200017][2]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][1]["Id"] = 4200015 -- 15阶灵珠[4200015][属性:72][叠加:99][金币:0], 【表格】15阶灵珠
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][1]["Attr"] = "0 1" -- 15阶灵珠*1
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][2] = {}
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][2]["Id"] = 4200017 -- 17阶灵珠[4200017][属性:72][叠加:99][金币:0], 【表格】17阶灵珠
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][2]["Attr"] = "0 1" -- 17阶灵珠*1
	-- tDragonRecast_Reward[4200017][2]["RewardItem"][2]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- -- 18阶灵珠 - 32.5%
	-- tDragonRecast_Reward[4200017][3] = {}
	-- tDragonRecast_Reward[4200017][3]["RandomItemChanceType"] = 2
	-- tDragonRecast_Reward[4200017][3]["ItemChance"] = 3250
	-- tDragonRecast_Reward[4200017][3]["RewardItem"] = {}
	-- tDragonRecast_Reward[4200017][3]["RewardItem"][1] = {}
	-- tDragonRecast_Reward[4200017][3]["RewardItem"][1]["Id"] = 4200018 -- 18阶灵珠[4200018][属性:72][叠加:99][金币:0], 【表格】18阶灵珠
	-- tDragonRecast_Reward[4200017][3]["RewardItem"][1]["Attr"] = "0 1" -- 18阶灵珠*1
	-- tDragonRecast_Reward[4200017][3]["RewardItem"][1]["PreciousType"] = 301 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


--------------------------------------------逻辑部分配置--------------------------------------------
function DragonRecast_Recast(nDragonRecast_UserId,nDragonRecast_ItemId)
	---判断是否有奖励数据
	if tDragonRecast_Reward[nDragonRecast_ItemId] == nil then
		return
	end
	
	local tDragonRecast_NewReward = RewardTemplate_RandomReward(tDragonRecast_Reward,nDragonRecast_ItemId,nDragonRecast_UserId)
	
	--获得的奖励id
	local nDragonRecast_NewItemId = 0
	
	if not tDragonRecast_NewReward then
		return
	end
	
	EighteenChanges_InterfaceRecast(nDragonRecast_ItemId,nDragonRecast_UserId)
	
	if tDragonRecast_NewReward[1]["tAward"][1]["RewardExpTime"] == nil then
		nDragonRecast_NewItemId = tDragonRecast_NewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	end
	
	User_RecastSpiritResult(nDragonRecast_ItemId,nDragonRecast_NewItemId,nDragonRecast_UserId)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------重铸器灵触发---------------------------------------------
table.insert(tRecastSpirit["tFunction"],DragonRecast_Recast)
