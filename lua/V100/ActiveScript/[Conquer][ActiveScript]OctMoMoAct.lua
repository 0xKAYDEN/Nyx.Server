------------------------------------------------------------------------------------
--Name：            #190909[英文征服][活动脚本]10与赠点消耗活动（10.22-11.12）
--Creator:      杨艳
--Created:     2019/09/11
------------------------------------------------------------------------------------
--任务需求：


--命名规范： OctMoMoAct_


-- logid :	12001658

-- stc
-- 205 49 记录天石数量
-- 205 50 记录获得幸运券后剩余天石数量
-- 205 51 记录使用幸运券次数
-- 205 52 记录礼盒购买限量  	3323528,'新锁妖盒',9,
-- 205 53 记录礼盒购买限量      3323529,'新远古锁妖盒
-- 205 54 记录礼盒购买限量      3323530,'新洪荒锁妖盒
-- 205 55 记录礼盒购买限量      3323531,'新乾坤锁妖盒
-- 205 56 背包信掩码
-- 206 93 记录是否获得过龙血晶石
	
-- globalid
-- 53705 记录全服幸运券数量globalid data0

-- 53762	data1-data4 记录前四档  data0 1表示没有达到开团条件 data5表示记录过幸运儿
-- 53763	data1-data4 记录后四档  data5记录是否发邮件  
-- 12月新增 奖池扩大
-- （+1）稀有黄色神纹可选包（赠）	60000
-- （+3）稀有黄色神纹可选包（赠）	70000
-- 53879  data1-data2 记录获奖名单。

-- 10月赠点锁妖盒购买数 350 22660
-- 10月赠点远古锁妖盒购买数 350 22661
-- 10月赠点洪荒锁妖盒购买数 350 22662
-- 10月赠点乾坤锁妖盒购买数 350 22663
-- 10月赠点锁妖盒产出赠点数 350 22664
-- 10月赠品赤练石转盘 350 22665
-- 10月赠品星陨石转盘 350 22666
-- 10月赠品天石转盘 350 22667
-- 10月赠品气力转盘 350 22668
-- 10月赠品天石转盘产出赠点数 350 22669
-- 10月赠品天石众筹数 350 22670

------------------------------------------------------------------------------------
local tOctMoMoAct_Data = {}

	-- 物品价格  
	tOctMoMoAct_Data["ItemPrice"] = {}
	-- 3323528,'新锁妖盒',9,	150 赠点
	-- 3323529,'新远古锁妖盒	500 赠点	
	-- 3323530,'新洪荒锁妖盒	1000 赠点
	-- 3323531,'新乾坤锁妖盒	3000 赠点
	tOctMoMoAct_Data["ItemPrice"][3323528] = 150
	tOctMoMoAct_Data["ItemPrice"][3323529] = 500
	tOctMoMoAct_Data["ItemPrice"][3323530] = 1000
	tOctMoMoAct_Data["ItemPrice"][3323531] = 3000
	
	--记录全服幸运券数量globalid data0
	tOctMoMoAct_Data["GlobalId"] = 53705
	
	--获取全服奖励档次 
	tOctMoMoAct_Data["AwardLevel"] = {}
	tOctMoMoAct_Data["AwardLevel"][1] = 70000
	tOctMoMoAct_Data["AwardLevel"][2] = 60000
	tOctMoMoAct_Data["AwardLevel"][3] = 200
	tOctMoMoAct_Data["AwardLevel"][4] = 70
	tOctMoMoAct_Data["AwardLevel"][5] = 60
	tOctMoMoAct_Data["AwardLevel"][6] = 45
	tOctMoMoAct_Data["AwardLevel"][7] = 40
	tOctMoMoAct_Data["AwardLevel"][8] = 40
	tOctMoMoAct_Data["AwardLevel"][9] = 20
	tOctMoMoAct_Data["AwardLevel"][10] = 10
	
	tOctMoMoAct_Data["LuckyGlobalId"] = {}
	-- 53762 data1-data4 记录前四档 datastr0-4记录名字 data0 1表示没有达到开团条件 data5表示记录过幸运儿
	-- 53763 data1-data4 记录后四档 datastr0-4记录名字 data5记录是否发邮件     
	-- 53879 data1-data2 记录12月份新增两个奖池  
	
	tOctMoMoAct_Data["LuckyGlobalId"][1] = 53762
	tOctMoMoAct_Data["LuckyGlobalId"][2] = 53763
	tOctMoMoAct_Data["LuckyGlobalId"][3] = 53879
	
	tOctMoMoAct_Data["GetLuckyCount"] = {}
	tOctMoMoAct_Data["GetLuckyCount"][1] = {10,1}
	tOctMoMoAct_Data["GetLuckyCount"][2] = {20,2}
	tOctMoMoAct_Data["GetLuckyCount"][3] = {40,4}
	tOctMoMoAct_Data["GetLuckyCount"][4] = {45,5}
	tOctMoMoAct_Data["GetLuckyCount"][5] = {60,6}
	tOctMoMoAct_Data["GetLuckyCount"][6] = {70,7}
	tOctMoMoAct_Data["GetLuckyCount"][7] = {200,8}
	tOctMoMoAct_Data["GetLuckyCount"][8] = {60000,9}
	tOctMoMoAct_Data["GetLuckyCount"][9] = {70000,10}

-- 临时表记录全服玩家购买情况  用于后期抽奖名单 表结构 tTable[index] = {玩家id}  index 递增
local tOctMoMoAct_UserLucky = {}
--记录名字
local tOctMoMoAct_UserLuckyName = {}

--玩家索引
local nUserIndex = 1
	
-- 	--邮件action
local tOctMoMoAct_Mail = {}
	tOctMoMoAct_Mail["Mail"] = {}
	tOctMoMoAct_Mail["Mail"]["Action"] = {}
	tOctMoMoAct_Mail["Mail"]["ExistDay"] = 7
	--保底奖励
	tOctMoMoAct_Mail["Mail"]["Action"][1] = 574806

	--前四奖励
	tOctMoMoAct_Mail["Mail"]["ActionBefore"] = {}
	tOctMoMoAct_Mail["Mail"]["ActionBefore"][1] = 574807
	tOctMoMoAct_Mail["Mail"]["ActionBefore"][2] = 574808
	tOctMoMoAct_Mail["Mail"]["ActionBefore"][3] = 574809
	tOctMoMoAct_Mail["Mail"]["ActionBefore"][4] = 574810
	
	--后四奖励
	tOctMoMoAct_Mail["Mail"]["ActionAfter"] = {}
	tOctMoMoAct_Mail["Mail"]["ActionAfter"][1] = 574811
	tOctMoMoAct_Mail["Mail"]["ActionAfter"][2] = 574812
	tOctMoMoAct_Mail["Mail"]["ActionAfter"][3] = 574813
	tOctMoMoAct_Mail["Mail"]["ActionAfter"][4] = 574814
	
	--12月新增奖池
	tOctMoMoAct_Mail["Mail"]["NewAction"] = {}
	tOctMoMoAct_Mail["Mail"]["NewAction"][1] = 575134
	tOctMoMoAct_Mail["Mail"]["NewAction"][2] = 575135

	
local tOctMoMoAct_Stc = {}
	tOctMoMoAct_Stc["EventType"] = {}
	tOctMoMoAct_Stc["DataType"] = {}
	tOctMoMoAct_Stc["Limit"] = {}
	
	--记录天石数量
	tOctMoMoAct_Stc["EventType"]["MoMo"] = 205
    tOctMoMoAct_Stc["DataType"]["MoMo"] = 49
	
	--记录获得幸运券后剩余天石数量
	tOctMoMoAct_Stc["EventType"]["Left"] = 205
    tOctMoMoAct_Stc["DataType"]["Left"] = 50
	
	--记录使用幸运券次数
	tOctMoMoAct_Stc["EventType"]["Lucky"] = 205
	tOctMoMoAct_Stc["DataType"]["Lucky"] = 51
	tOctMoMoAct_Stc["Limit"]["Lucky"] = 100
	
	--记录是否获得过龙血晶石
	tOctMoMoAct_Stc["EventType"]["Gift"] = 206
	tOctMoMoAct_Stc["DataType"]["Gift"] = 93

	
	--记录礼盒购买限量
	tOctMoMoAct_Stc["EventType"][3323528] = 205
    tOctMoMoAct_Stc["DataType"][3323528] = 52
	tOctMoMoAct_Stc["Limit"][3323528] = 5
	
	tOctMoMoAct_Stc["EventType"][3323529] = 205
    tOctMoMoAct_Stc["DataType"][3323529] = 53
	tOctMoMoAct_Stc["Limit"][3323529] = 5
	
	tOctMoMoAct_Stc["EventType"][3323530] = 205
    tOctMoMoAct_Stc["DataType"][3323530] = 54
	tOctMoMoAct_Stc["Limit"][3323530] = 5
	
	tOctMoMoAct_Stc["EventType"][3323531] = 205
    tOctMoMoAct_Stc["DataType"][3323531] = 55
	tOctMoMoAct_Stc["Limit"][3323531] = 5
	
	
	
local tOctMoMoAct_Log = {}
	tOctMoMoAct_Log["EmoneyLog"] = {}
	-- 记录购买锁妖盒log
	tOctMoMoAct_Log["EmoneyLog"][3323528] = "350	22661	0	0	%d	"
	tOctMoMoAct_Log["EmoneyLog"][3323529] = "350	22662	0	0	%d	"
	tOctMoMoAct_Log["EmoneyLog"][3323530] = "350	22663	0	0	%d	"
	tOctMoMoAct_Log["EmoneyLog"][3323531] = "350	22664	0	0	%d	"
	tOctMoMoAct_Log["EmoneyLog"][3323532] = "350	22670	0	0	%d	"

	tOctMoMoAct_Log["DelAllItem"] = "0,0,%d,%d,12001658,3,0,0"
	
	
local tOctMoMoAct_Award = {}

	--幸运券产出
	tOctMoMoAct_Award[3323532] = {}
	tOctMoMoAct_Award[3323532]["LogId"] = 12001658
	tOctMoMoAct_Award[3323532]["RewardItem"] = {}
	tOctMoMoAct_Award[3323532]["RewardItem"][1] = {}
	tOctMoMoAct_Award[3323532]["RewardItem"][1]["Id"] = 3323532
	tOctMoMoAct_Award[3323532]["RewardItem"][1]["Attr"] = "0 1"
	tOctMoMoAct_Award[3323532]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323532]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award[3323532]["RewardEffect"]["Effect"] = "angelwing"
	
	--龙血晶石产出
	tOctMoMoAct_Award["Gift"] = {}
	tOctMoMoAct_Award["Gift"]["LogId"] = 12001658
	tOctMoMoAct_Award["Gift"]["RewardItem"] = {}
	tOctMoMoAct_Award["Gift"]["RewardItem"][1] = {}
	tOctMoMoAct_Award["Gift"]["RewardItem"][1]["Id"] = 3008994
	tOctMoMoAct_Award["Gift"]["RewardItem"][1]["Attr"] = "0 1 3"
	tOctMoMoAct_Award["Gift"]["RewardEffect"] = {}
	tOctMoMoAct_Award["Gift"]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award["Gift"]["RewardEffect"]["Effect"] = "angelwing"
	
	
	--锁妖盒售卖
	tOctMoMoAct_Award["PackSold"] = {}
	tOctMoMoAct_Award["PackSold"][3323528] = {}
	tOctMoMoAct_Award["PackSold"][3323528]["LogId"] = 12001658
	tOctMoMoAct_Award["PackSold"][3323528]["RewardItem"] = {}
	tOctMoMoAct_Award["PackSold"][3323528]["RewardItem"][1] = {}
	tOctMoMoAct_Award["PackSold"][3323528]["RewardItem"][1]["Id"] = 3323528
	tOctMoMoAct_Award["PackSold"][3323528]["RewardItem"][1]["Attr"] = "0 1"
	tOctMoMoAct_Award["PackSold"][3323528]["RewardEffect"] = {}
	tOctMoMoAct_Award["PackSold"][3323528]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award["PackSold"][3323528]["RewardEffect"]["Effect"] = "angelwing"
	
	tOctMoMoAct_Award["PackSold"][3323529] = {}
	tOctMoMoAct_Award["PackSold"][3323529]["LogId"] = 12001658
	tOctMoMoAct_Award["PackSold"][3323529]["RewardItem"] = {}
	tOctMoMoAct_Award["PackSold"][3323529]["RewardItem"][1] = {}
	tOctMoMoAct_Award["PackSold"][3323529]["RewardItem"][1]["Id"] = 3323529
	tOctMoMoAct_Award["PackSold"][3323529]["RewardItem"][1]["Attr"] = "0 1"
	tOctMoMoAct_Award["PackSold"][3323529]["RewardEffect"] = {}
	tOctMoMoAct_Award["PackSold"][3323529]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award["PackSold"][3323529]["RewardEffect"]["Effect"] = "angelwing"
	
	tOctMoMoAct_Award["PackSold"][3323530] = {}
	tOctMoMoAct_Award["PackSold"][3323530]["LogId"] = 12001658
	tOctMoMoAct_Award["PackSold"][3323530]["RewardItem"] = {}
	tOctMoMoAct_Award["PackSold"][3323530]["RewardItem"][1] = {}
	tOctMoMoAct_Award["PackSold"][3323530]["RewardItem"][1]["Id"] = 3323530
	tOctMoMoAct_Award["PackSold"][3323530]["RewardItem"][1]["Attr"] = "0 1"
	tOctMoMoAct_Award["PackSold"][3323530]["RewardEffect"] = {}
	tOctMoMoAct_Award["PackSold"][3323530]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award["PackSold"][3323530]["RewardEffect"]["Effect"] = "angelwing"
	
	tOctMoMoAct_Award["PackSold"][3323531] = {}
	tOctMoMoAct_Award["PackSold"][3323531]["LogId"] = 12001658
	tOctMoMoAct_Award["PackSold"][3323531]["RewardItem"] = {}
	tOctMoMoAct_Award["PackSold"][3323531]["RewardItem"][1] = {}
	tOctMoMoAct_Award["PackSold"][3323531]["RewardItem"][1]["Id"] = 3323531
	tOctMoMoAct_Award["PackSold"][3323531]["RewardItem"][1]["Attr"] = "0 1"
	tOctMoMoAct_Award["PackSold"][3323531]["RewardEffect"] = {}
	tOctMoMoAct_Award["PackSold"][3323531]["RewardEffect"]["SzObj"] = "self"
	tOctMoMoAct_Award["PackSold"][3323531]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===新锁妖盒
	-- ===索引: tOctMoMoAct_Award[3323528]
	-- ===删除: 3323528,1
	-- ===EMoneyLog: 10000,195
	tOctMoMoAct_Award[3323528] = {}
	tOctMoMoAct_Award[3323528]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctMoMoAct_Award[3323528]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323528]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323528]["DeleteItem"][1]["Id"] = 3323528 -- 【库】SeniorDemonBox[属性:9]
	tOctMoMoAct_Award[3323528]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323528]["EmoneyLog"] = "10000	195	0	0	1	"  10000 0992
	-- 500天石（赠） - 0.01%
	tOctMoMoAct_Award[3323528][1] = {}
	tOctMoMoAct_Award[3323528][1]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][1]["ItemChance"] = 1
	tOctMoMoAct_Award[3323528][1]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][1]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500天石（赠）
	tOctMoMoAct_Award[3323528][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0992"
	tOctMoMoAct_Award[3323528][1]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 300天石（赠） - 0.1%
	tOctMoMoAct_Award[3323528][2] = {}
	tOctMoMoAct_Award[3323528][2]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][2]["ItemChance"] = 10
	tOctMoMoAct_Award[3323528][2]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][2]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tOctMoMoAct_Award[3323528][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0993"
	tOctMoMoAct_Award[3323528][2]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 150天石（赠） - 24%
	tOctMoMoAct_Award[3323528][3] = {}
	tOctMoMoAct_Award[3323528][3]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][3]["ItemChance"] = 7000
	tOctMoMoAct_Award[3323528][3]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][3]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】150天石（赠）
	tOctMoMoAct_Award[3323528][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0994"
	tOctMoMoAct_Award[3323528][3]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 200天石（赠） - 12.89%
	tOctMoMoAct_Award[3323528][4] = {}
	tOctMoMoAct_Award[3323528][4]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][4]["ItemChance"] = 689
	tOctMoMoAct_Award[3323528][4]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][4]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200天石（赠）
	tOctMoMoAct_Award[3323528][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0995"
	tOctMoMoAct_Award[3323528][4]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 250天石（赠） - 10%
	tOctMoMoAct_Award[3323528][5] = {}
	tOctMoMoAct_Award[3323528][5]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][5]["ItemChance"] = 100
	tOctMoMoAct_Award[3323528][5]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][5]["RewardEMoneyMono"]["Value"] = 250 -- 天石（赠）, 【需求】250天石（赠）
	tOctMoMoAct_Award[3323528][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0996"
	tOctMoMoAct_Award[3323528][5]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 100天石（赠） - 53%
	tOctMoMoAct_Award[3323528][6] = {}
	tOctMoMoAct_Award[3323528][6]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323528][6]["ItemChance"] = 2200
	tOctMoMoAct_Award[3323528][6]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323528][6]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tOctMoMoAct_Award[3323528][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0997"
	tOctMoMoAct_Award[3323528][6]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323528][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323528][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323529] = {}
	-- ===新远古锁妖盒
	-- ===索引: tOctMoMoAct_Award[3323529]
	-- ===删除: 3323529,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323529]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctMoMoAct_Award[3323529]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323529]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323529]["DeleteItem"][1]["Id"] = 3323529 -- 【库】AncientDemonBox[属性:9]
	tOctMoMoAct_Award[3323529]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323529]["EmoneyLog"] = "10000	194	0	0	1	"
	-- 1000天石（赠） - 0.01%
	tOctMoMoAct_Award[3323529][1] = {}
	tOctMoMoAct_Award[3323529][1]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][1]["ItemChance"] = 1
	tOctMoMoAct_Award[3323529][1]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][1]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tOctMoMoAct_Award[3323529][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0998"
	tOctMoMoAct_Award[3323529][1]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 800天石（赠） - 0.1%
	tOctMoMoAct_Award[3323529][2] = {}
	tOctMoMoAct_Award[3323529][2]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][2]["ItemChance"] = 10
	tOctMoMoAct_Award[3323529][2]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][2]["RewardEMoneyMono"]["Value"] = 800 -- 天石（赠）, 【需求】800天石（赠）
	tOctMoMoAct_Award[3323529][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0999"
	tOctMoMoAct_Award[3323529][2]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石（赠） - 24%
	tOctMoMoAct_Award[3323529][3] = {}
	tOctMoMoAct_Award[3323529][3]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][3]["ItemChance"] = 4500
	tOctMoMoAct_Award[3323529][3]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][3]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500天石（赠）
	tOctMoMoAct_Award[3323529][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1000"
	tOctMoMoAct_Award[3323529][3]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 600天石（赠） - 12.89%
	tOctMoMoAct_Award[3323529][4] = {}
	tOctMoMoAct_Award[3323529][4]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][4]["ItemChance"] = 389
	tOctMoMoAct_Award[3323529][4]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][4]["RewardEMoneyMono"]["Value"] = 600 -- 天石（赠）, 【需求】600天石（赠）
	tOctMoMoAct_Award[3323529][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1001"
	tOctMoMoAct_Award[3323529][4]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 700天石（赠） - 10%
	tOctMoMoAct_Award[3323529][5] = {}
	tOctMoMoAct_Award[3323529][5]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][5]["ItemChance"] = 100
	tOctMoMoAct_Award[3323529][5]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][5]["RewardEMoneyMono"]["Value"] = 700 -- 天石（赠）, 【需求】700天石（赠）
	tOctMoMoAct_Award[3323529][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1002"
	tOctMoMoAct_Award[3323529][5]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 450天石（赠） - 53%
	tOctMoMoAct_Award[3323529][6] = {}
	tOctMoMoAct_Award[3323529][6]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323529][6]["ItemChance"] = 5000
	tOctMoMoAct_Award[3323529][6]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323529][6]["RewardEMoneyMono"]["Value"] = 450 -- 天石（赠）, 【需求】450天石（赠）
	tOctMoMoAct_Award[3323529][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1003"
	tOctMoMoAct_Award[3323529][6]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323529][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323529][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323530] = {}
	-- ===新洪荒锁妖盒
	-- ===索引: tOctMoMoAct_Award[3323530]
	-- ===删除: 3323530,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323530]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctMoMoAct_Award[3323530]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323530]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323530]["DeleteItem"][1]["Id"] = 3323530 -- 【库】PrimitiveDemonBox[属性:9]
	tOctMoMoAct_Award[3323530]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323530]["EmoneyLog"] = "10000	194	0	0	1	"
	-- 2000天石（赠） - 0.01%
	tOctMoMoAct_Award[3323530][1] = {}
	tOctMoMoAct_Award[3323530][1]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][1]["ItemChance"] = 1
	tOctMoMoAct_Award[3323530][1]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][1]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）, 【需求】2000天石（赠）
	tOctMoMoAct_Award[3323530][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1004"
	tOctMoMoAct_Award[3323530][1]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1500天石（赠） - 0.1%
	tOctMoMoAct_Award[3323530][2] = {}
	tOctMoMoAct_Award[3323530][2]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][2]["ItemChance"] = 10
	tOctMoMoAct_Award[3323530][2]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][2]["RewardEMoneyMono"]["Value"] = 1500 -- 天石（赠）, 【需求】1500天石（赠）
	tOctMoMoAct_Award[3323530][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1005"
	tOctMoMoAct_Award[3323530][2]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石（赠） - 24%
	tOctMoMoAct_Award[3323530][3] = {}
	tOctMoMoAct_Award[3323530][3]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][3]["ItemChance"] = 2300
	tOctMoMoAct_Award[3323530][3]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][3]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tOctMoMoAct_Award[3323530][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1006"
	tOctMoMoAct_Award[3323530][3]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1100天石（赠） - 12.89%
	tOctMoMoAct_Award[3323530][4] = {}
	tOctMoMoAct_Award[3323530][4]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][4]["ItemChance"] = 589
	tOctMoMoAct_Award[3323530][4]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][4]["RewardEMoneyMono"]["Value"] = 1100 -- 天石（赠）, 【需求】1100天石（赠）
	tOctMoMoAct_Award[3323530][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1007"
	tOctMoMoAct_Award[3323530][4]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1200天石（赠） - 10%
	tOctMoMoAct_Award[3323530][5] = {}
	tOctMoMoAct_Award[3323530][5]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][5]["ItemChance"] = 100
	tOctMoMoAct_Award[3323530][5]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][5]["RewardEMoneyMono"]["Value"] = 1200 -- 天石（赠）, 【需求】1200天石（赠）
	tOctMoMoAct_Award[3323530][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1008"
	tOctMoMoAct_Award[3323530][5]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 950天石（赠） - 53%
	tOctMoMoAct_Award[3323530][6] = {}
	tOctMoMoAct_Award[3323530][6]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323530][6]["ItemChance"] = 7000
	tOctMoMoAct_Award[3323530][6]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323530][6]["RewardEMoneyMono"]["Value"] = 950 -- 天石（赠）, 【需求】950天石（赠）
	tOctMoMoAct_Award[3323530][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1009"
	tOctMoMoAct_Award[3323530][6]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323530][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323530][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323531] = {}
	-- ===新乾坤锁妖盒
	-- ===索引: tOctMoMoAct_Award[3323531]
	-- ===删除: 3323531,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323531]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctMoMoAct_Award[3323531]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323531]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323531]["DeleteItem"][1]["Id"] = 3323531 -- 【库】UniversalDemonBox[属性:9]
	tOctMoMoAct_Award[3323531]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323531]["EmoneyLog"] = "10000	194	0	0	1	"
	-- 8000天石（赠） - 0.01%
	tOctMoMoAct_Award[3323531][1] = {}
	tOctMoMoAct_Award[3323531][1]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][1]["ItemChance"] = 1
	tOctMoMoAct_Award[3323531][1]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][1]["RewardEMoneyMono"]["Value"] = 8000 -- 天石（赠）, 【需求】8000天石（赠）
	tOctMoMoAct_Award[3323531][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1010"
	tOctMoMoAct_Award[3323531][1]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000天石（赠） - 0.1%
	tOctMoMoAct_Award[3323531][2] = {}
	tOctMoMoAct_Award[3323531][2]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][2]["ItemChance"] = 10
	tOctMoMoAct_Award[3323531][2]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][2]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000天石（赠）
	tOctMoMoAct_Award[3323531][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1011"
	tOctMoMoAct_Award[3323531][2]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000天石（赠） - 24%
	tOctMoMoAct_Award[3323531][3] = {}
	tOctMoMoAct_Award[3323531][3]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][3]["ItemChance"] = 2300
	tOctMoMoAct_Award[3323531][3]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][3]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000天石（赠）
	tOctMoMoAct_Award[3323531][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1012"
	tOctMoMoAct_Award[3323531][3]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3200天石（赠） - 12.89%
	tOctMoMoAct_Award[3323531][4] = {}
	tOctMoMoAct_Award[3323531][4]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][4]["ItemChance"] = 589
	tOctMoMoAct_Award[3323531][4]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][4]["RewardEMoneyMono"]["Value"] = 3200 -- 天石（赠）, 【需求】3200天石（赠）
	tOctMoMoAct_Award[3323531][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1013"
	tOctMoMoAct_Award[3323531][4]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3500天石（赠） - 10%
	tOctMoMoAct_Award[3323531][5] = {}
	tOctMoMoAct_Award[3323531][5]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][5]["ItemChance"] = 100
	tOctMoMoAct_Award[3323531][5]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][5]["RewardEMoneyMono"]["Value"] = 3500 -- 天石（赠）, 【需求】3500天石（赠）
	tOctMoMoAct_Award[3323531][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1014"
	tOctMoMoAct_Award[3323531][5]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 2900天石（赠） - 53%
	tOctMoMoAct_Award[3323531][6] = {}
	tOctMoMoAct_Award[3323531][6]["RandomItemChanceType"] = 2
	tOctMoMoAct_Award[3323531][6]["ItemChance"] = 7000
	tOctMoMoAct_Award[3323531][6]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323531][6]["RewardEMoneyMono"]["Value"] = 2900 -- 天石（赠）, 【需求】2900天石（赠）
	tOctMoMoAct_Award[3323531][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1015"
	tOctMoMoAct_Award[3323531][6]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323531][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323531][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323533] = {}
	-- ===消费排行冠军礼盒
	-- ===索引: tOctMoMoAct_Award[3323533]
	-- ===删除: 3323533,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323533]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323533]["EmoneyLog"] = "10000	194	0	0	1	"
	tOctMoMoAct_Award[3323533]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323533]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323533]["DeleteItem"][1]["Id"] = 3323533 -- 【库】1stPlaceConsumptionPack[属性:9]
	tOctMoMoAct_Award[3323533]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323533]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tOctMoMoAct_Award[3323533]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1016"
	tOctMoMoAct_Award[3323533]["RewardItem"] = {}
	tOctMoMoAct_Award[3323533]["RewardItem"][1] = {}
	tOctMoMoAct_Award[3323533]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3
	tOctMoMoAct_Award[3323533]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tOctMoMoAct_Award[3323533]["RewardItem"][2] = {}
	tOctMoMoAct_Award[3323533]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tOctMoMoAct_Award[3323533]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tOctMoMoAct_Award[3323533]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323533]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323533]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323534] = {}
	-- ===消费排行亚军礼盒
	-- ===索引: tOctMoMoAct_Award[3323534]
	-- ===删除: 3323534,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323534]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323534]["EmoneyLog"] = "10000	194	0	0	1	"
	tOctMoMoAct_Award[3323534]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323534]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323534]["DeleteItem"][1]["Id"] = 3323534 -- 【库】2ndPlaceConsumptionPack[属性:9]
	tOctMoMoAct_Award[3323534]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323534]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200天石（赠）
	tOctMoMoAct_Award[3323534]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1017"
	tOctMoMoAct_Award[3323534]["RewardItem"] = {}
	tOctMoMoAct_Award[3323534]["RewardItem"][1] = {}
	tOctMoMoAct_Award[3323534]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*2
	tOctMoMoAct_Award[3323534]["RewardItem"][1]["Attr"] = "0 2" -- DragonFruit*2
	tOctMoMoAct_Award[3323534]["RewardItem"][2] = {}
	tOctMoMoAct_Award[3323534]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tOctMoMoAct_Award[3323534]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tOctMoMoAct_Award[3323534]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323534]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323534]["RewardEffect"]["Effect"] = "angelwing"


	tOctMoMoAct_Award[3323535] = {}
	-- ===消费排行季军礼盒
	-- ===索引: tOctMoMoAct_Award[3323535]
	-- ===删除: 3323535,1
	-- ===EMoneyLog: 10000,194
	tOctMoMoAct_Award[3323535]["LogId"] = 12001658
	-- tOctMoMoAct_Award[3323535]["EmoneyLog"] = "10000	194	0	0	1	"
	tOctMoMoAct_Award[3323535]["DeleteItem"] = {}
	tOctMoMoAct_Award[3323535]["DeleteItem"][1] = {}
	tOctMoMoAct_Award[3323535]["DeleteItem"][1]["Id"] = 3323535 -- 【库】3rdPlaceConsumptionPack[属性:9]
	tOctMoMoAct_Award[3323535]["RewardEMoneyMono"] = {}
	tOctMoMoAct_Award[3323535]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tOctMoMoAct_Award[3323535]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1018"
	tOctMoMoAct_Award[3323535]["RewardItem"] = {}
	tOctMoMoAct_Award[3323535]["RewardItem"][1] = {}
	tOctMoMoAct_Award[3323535]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*1
	tOctMoMoAct_Award[3323535]["RewardItem"][1]["Attr"] = "0 1" -- DragonFruit*1
	tOctMoMoAct_Award[3323535]["RewardItem"][2] = {}
	tOctMoMoAct_Award[3323535]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tOctMoMoAct_Award[3323535]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tOctMoMoAct_Award[3323535]["RewardEffect"] = {}
	tOctMoMoAct_Award[3323535]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctMoMoAct_Award[3323535]["RewardEffect"]["Effect"] = "angelwing"


--排行榜
	--积分排行榜   
	tRankingFunc_Info[24929] = {}
	tRankingFunc_Info[24929]["ActiveTime"] = tActivityTime["OctMoMoAct"]["RankActivityTime"]
	tRankingFunc_Info[24929]["DayTime"] = {}
	tRankingFunc_Info[24929]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[24929]["ResetTime"] = {}
	tRankingFunc_Info[24929]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24929]["Global"] = {53706,53707}
	tRankingFunc_Info[24929]["RankNum"] = 3

 -- 574622	 单日第一奖励		3323533,'消费排行冠军礼盒'
 -- 574623	 单日第二奖励		3323534,'消费排行亚军礼盒'
 -- 574624	 单日第三奖励		3323535,'消费排行季军礼盒'
	tRankingFunc_Info[24929]["Mail"] = {}
	tRankingFunc_Info[24929]["Mail"]["ActiveTime"] = tActivityTime["OctMoMoAct"]["RankActivityTime"]
	tRankingFunc_Info[24929]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[24929]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24929]["Mail"]["HaveFunc"] = 1

	tRankingFunc_Info[24929]["Mail"]["Reward"] = {}
	tRankingFunc_Info[24929]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["ActionId"] = 574622
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["ExistDay"] = 2
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["Title"] = tOctMoMoAct_Text["Mail"]["Title"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["Sender"] = tOctMoMoAct_Text["Mail"]["Sender"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][1]["Content"] = tOctMoMoAct_Text["Mail"]["Content"][1]
	
	tRankingFunc_Info[24929]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["ActionId"] = 574623
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["ExistDay"] = 2
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["Title"] = tOctMoMoAct_Text["Mail"]["Title"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["Sender"] = tOctMoMoAct_Text["Mail"]["Sender"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][2]["Content"] = tOctMoMoAct_Text["Mail"]["Content"][2]
	
	tRankingFunc_Info[24929]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["ActionId"] = 574624
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["ExistDay"] = 2
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["Title"] = tOctMoMoAct_Text["Mail"]["Title"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["Sender"] = tOctMoMoAct_Text["Mail"]["Sender"]
	tRankingFunc_Info[24929]["Mail"]["Reward"][3]["Content"] = tOctMoMoAct_Text["Mail"]["Content"][3]

----------------------------------逻辑部分-------------------------------------------

--获取幸运券数量
function OctMoMoAct_GetAwardCount(nEMoney)
	local nUserId = Get_UserId()
	local nEvent_1 = tOctMoMoAct_Stc["EventType"]["Left"]
	local nData_1 = tOctMoMoAct_Stc["DataType"]["Left"] 
	local nValue = Get_UserStatisticValue(nEvent_1,nData_1)
	local nSum = nValue + nEMoney
	local nCount = math.floor(nSum/99)

	return nCount
end 


--更新排行榜数据以及给幸运券
function OctMoMoAct_AddCPRank(nEmoney,nUserId)
    if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then
		return
	end 
	
	local nUserId = nUserId or Get_UserId()
	local nEvent_2 = tOctMoMoAct_Stc["EventType"]["MoMo"]
	local nData_2 = tOctMoMoAct_Stc["DataType"]["MoMo"]
	OctMoMoActt_StcInterval(nEvent_2,nData_2,nUserId)
	
	Task_AddStatistic(nEvent_2,nData_2,nEmoney,1,nUserId)
	Task_SetStcTimestamp(nEvent_2,nData_2,0,nUserId)
	local nData = Get_UserStatisticValue(nEvent_2,nData_2,nUserId)
	
	local nEvent_1 = tOctMoMoAct_Stc["EventType"]["Left"]
	local nData_1 = tOctMoMoAct_Stc["DataType"]["Left"] 
	local nValue = Get_UserStatisticValue(nEvent_1,nData_1,nUserId)
	local nSum = nValue + nEmoney
	local nCount = math.floor(nSum/99)
	local nLeft = nSum - 99*nCount
	Task_SetStatistic(nEvent_1,nData_1,nLeft,1,nUserId)
	Task_SetStcTimestamp(nEvent_1,nData_1,0,nUserId)

	local tTab = CommonFunc_Copy(tOctMoMoAct_Award[3323532])
	local tItemAttr = Sys_Split(tOctMoMoAct_Award[3323532]["RewardItem"][1]["Attr"]," ")
	local naddamount = tonumber(tItemAttr[2])
	local nItemSum = nCount*naddamount

	tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nItemSum)
	--判断背包空间
	local nSpace =  RewardTemplate_GetRewardSpace(tTab,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(tOctMoMoAct_Text["Sys"]["NoSpace"],nUserId)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tTab,nUserId)
	RankingFunc_SetInfo(24929,nData,nUserId)
end 

--判断隔天
function OctMoMoActt_StcInterval(nEvent,nData,nUserId)
	local nUserId = nUserId or Get_UserId()
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end

end



--二次确认
function OctMoMoAct_BuyBox(nNpcId,nItemId)
	--活动时间判断
	if CommonFunc_GetBeforeActivityTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	
	local nEMoney = tOctMoMoAct_Data["ItemPrice"][nItemId]
	local sItemName = tOctMoMoAct_Text["ItemName"][nItemId]
	Sys_DialogText(string.format(tOctMoMoAct_Text["Str"]["Text111"],sItemName,nEMoney))
	Sys_DialogOption(tOctMoMoAct_Text["Option"]["Option111"],"</F>OctMoMoAct_BuyBoxSure</N>"..nNpcId.."</N>"..nEMoney.."</N>"..nItemId.."</S>"..sItemName)
	Sys_DialogOption(tOctMoMoAct_Text["Option"]["Option112"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end 

--确认购买
function OctMoMoAct_BuyBoxSure(nNpcId,nEMoney,nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	if Get_UserMonoEMoney() < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	local nUserId = Get_UserId()
	local nEvent_1 = tOctMoMoAct_Stc["EventType"][nItemId]
	local nData_1 = tOctMoMoAct_Stc["DataType"][nItemId]
	OctMoMoActt_StcInterval(nEvent_1,nData_1,nUserId)
	local nValue = Get_UserStatisticValue(nEvent_1,nData_1)
	if nValue >= tOctMoMoAct_Stc["Limit"][nItemId] then 
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end 
	local nCount = OctMoMoAct_GetAwardCount(nEMoney)

	local tTab = CommonFunc_Copy(tOctMoMoAct_Award[3323532])
	local tItemAttr = Sys_Split(tOctMoMoAct_Award[3323532]["RewardItem"][1]["Attr"]," ")
	local naddamount = tonumber(tItemAttr[2])
	local nItemSum = nCount*naddamount

	tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nItemSum)
	--判断背包空间
	local nSpace =  RewardTemplate_GetRewardSpace(tTab)
	local nSpace1 =  RewardTemplate_GetRewardSpace(tOctMoMoAct_Award["PackSold"][nItemId])
	
	if not User_CheckLeftSpace(nSpace+nSpace1) then
		User_TalkChannel2005(tOctMoMoAct_Text["Sys"]["NoSpace"])
		return
	end
	
	if User_AddEMoneyMono(-nEMoney) then
		Task_AddStatistic(nEvent_1,nData_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nData_1,0)
	
		Sys_SaveEmoneyBuy(string.format(tOctMoMoAct_Log["EmoneyLog"][nItemId],nEMoney))
		RewardTemplate_UseItemAndMsg(tOctMoMoAct_Award["PackSold"][nItemId])

		OctMoMoAct_AddCPRank(nEMoney,nUserId)
		Sys_DialogFace(nNpcId)
		Sys_DialogText(string.format(tOctMoMoAct_Text["Str"]["Text112"],sItemName))
		Sys_DialogOption(tOctMoMoAct_Text["Option"]["Option113"],"</F>NULL")
		Sys_DialogEnd()
		
	end

end 

function OctMoMoAct_ItemUse(nItemId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount> 0 and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tOctMoMoAct_Text["Sys"]["TimeOut"])
			local sLog = string.format(tOctMoMoAct_Log["DelAllItem"],nItemId,nCount)
			Sys_SaveActionFestivalLog(sLog)
		end 
		return
	end 
	
	local nEvent = tOctMoMoAct_Stc["EventType"]["Lucky"]
	local nData = tOctMoMoAct_Stc["DataType"]["Lucky"]
	OctMoMoActt_StcInterval(nEvent,nData,nUserId)
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)

	if nValue >= tOctMoMoAct_Stc["Limit"]["Lucky"] then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(tOctMoMoAct_Text[3323532]["Text141"])
		Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option141"],"</F>NULL")
		Sys_DialogEnd()
		-- LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end 
	
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tOctMoMoAct_Text[3323532]["Text111"],nValue))
	Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option111"],"</F>OctMoMoAct_Use</N>"..nItemId.."</N>1")
	if nValue+10 <=  tOctMoMoAct_Stc["Limit"]["Lucky"] then 
		Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option112"],"</F>OctMoMoAct_Use</N>"..nItemId.."</N>10")
	end 
	Sys_DialogEnd()


end 

function OctMoMoAct_Use(nItemId,nItemNum)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount> 0 and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tOctMoMoAct_Text["Sys"]["TimeOut"])
			local sLog = string.format(tOctMoMoAct_Log["DelAllItem"],nItemId,nCount)
			Sys_SaveActionFestivalLog(sLog)
		end 
		return
	end 
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(tOctMoMoAct_Text[3323532]["Text131"])
		Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option131"],"</F>NULL")
		Sys_DialogEnd()	
		return
	end 
	
	local nEvent = tOctMoMoAct_Stc["EventType"]["Lucky"]
	local nData = tOctMoMoAct_Stc["DataType"]["Lucky"]
	OctMoMoActt_StcInterval(nEvent,nData,nUserId)
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)

	if nValue >= tOctMoMoAct_Stc["Limit"]["Lucky"] then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(tOctMoMoAct_Text[3323532]["Text141"])
		Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option141"],"</F>NULL")
		Sys_DialogEnd()
		-- LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end 
    if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		if Task_AddStatistic(nEvent,nData,nItemNum,1) and Task_SetStcTimestamp(nEvent,nData,0) then
			
			--使用幸运券时给一个赠龙血精石*1（ 3008994 ）
			local nEvent_Lucky = tOctMoMoAct_Stc["EventType"]["Gift"]
			local nData_Lucky = tOctMoMoAct_Stc["DataType"]["Gift"]
			OctMoMoActt_StcInterval(nEvent_Lucky,nData_Lucky,nUserId)
			local nValue_Lucky = Get_UserStatisticValue(nEvent_Lucky,nData_Lucky,nUserId)
			if nValue_Lucky < 1 then
				Task_AddStatistic(nEvent_Lucky,nData_Lucky,1,1,nUserId)
				Task_SetStcTimestamp(nEvent_Lucky,nData_Lucky,0,nUserId)
				RewardTemplate_UseItemAndMsg(tOctMoMoAct_Award["Gift"],nUserId)
			end
	
			local nGlobalId = tOctMoMoAct_Data["GlobalId"]
			local nData0 = Get_SysDynaGlobalData0(nGlobalId)
			Sys_SetSynaGlobalData0(nGlobalId,nData0+nItemNum)
			local nNowValue = Get_UserStatisticValue(nEvent,nData,nUserId)
			for i = 1 ,nItemNum do
				if #tOctMoMoAct_UserLucky == 0 then 
					nUserIndex = 1 
					tOctMoMoAct_UserLucky[nUserIndex] = nUserId
					local sUserName = Get_UserName(nUserId)
					tOctMoMoAct_UserLuckyName[nUserIndex] = sUserName
					
				else
					nUserIndex = nUserIndex + 1
					tOctMoMoAct_UserLucky[nUserIndex] = nUserId
					local sUserName = Get_UserName(nUserId)
					tOctMoMoAct_UserLuckyName[nUserIndex] = sUserName
			
				end
				
			end 
			Sys_SaveEmoneyBuy(string.format(tOctMoMoAct_Log["EmoneyLog"][3323532],nItemNum))
	
			Sys_DialogItemFace(nItemId)
			Sys_DialogText(string.format(tOctMoMoAct_Text[3323532]["Text121"],nItemNum))
			Sys_DialogOption(tOctMoMoAct_Text[3323532]["Option121"],"</F>NULL")
			Sys_DialogEnd()	
			
		end 
	end 
end 

function OctMoMoAct_GetLuckyCount()
	local nGlobalId = tOctMoMoAct_Data["GlobalId"]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	local nLuckCount = 0
	for i = 1,#tOctMoMoAct_Data["GetLuckyCount"] do 
	-- User_TalkChannel2005("tOctMoMoAct_Data==="..tOctMoMoAct_Data["GetLuckyCount"][i][1])
		if nData0 >= tOctMoMoAct_Data["GetLuckyCount"][i][1] then 
			nLuckCount = tOctMoMoAct_Data["GetLuckyCount"][i][2]
		end 
	end 

	return nLuckCount
end 
--随机产出幸运玩家
function OctMoMoAct_GetLuckyUserId()
	if #tOctMoMoAct_UserLucky == 0 then 
		return
	end 
	-- totalWeight = 0
	-- tempRate = {}
	-- math.randomseed(tostring(os.time()):reverse():sub(1, 6)) -- 随机种子
	-- for i=1, #tOctMoMoAct_UserLucky do
		-- totalWeight = totalWeight + tOctMoMoAct_UserLucky[i][2]
		-- table.insert(tempRate, totalWeight)
		
	-- end 
	-- User_TalkChannel2005("tempRate=="..tempRate[1])
	-- local keynum =  math.random(totalWeight) 
	-- User_TalkChannel2005("keynum=="..keynum)
    -- for k=1, #tempRate-1 do
		-- if keynum <= tempRate[k] then
			-- return tOctMoMoAct_UserLucky[k][1]
		-- elseif keynum > tempRate[k] and keynum <= tempRate[k+1] then
			-- return tOctMoMoAct_UserLucky[k+1][1]
		-- end
	-- end 
	
	local nRandomIndex = math.random(1,#tOctMoMoAct_UserLucky)
	local nRandomUser = tOctMoMoAct_UserLucky[nRandomIndex]
	local sLuckyUserName = tOctMoMoAct_UserLuckyName[nRandomIndex]
	return nRandomUser,sLuckyUserName 
	
end 

function OctMoMoAct_MakeLuckerBefore()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["RankActivityTime"]) then
		return
	end 
	local nGlobalId_1 = tOctMoMoAct_Data["LuckyGlobalId"][1] 
	local nGlobalId_2 = tOctMoMoAct_Data["LuckyGlobalId"][2] 
	local nGlobalId_3 = tOctMoMoAct_Data["LuckyGlobalId"][3] 
	
	for i = 1 , 6 do
		Sys_SetSynaGlobalData(nGlobalId_1,i-1,0)
		Sys_SetSynaGlobalData(nGlobalId_2,i-1,0)
		Sys_SetSynaGlobalData(nGlobalId_3,i-1,0)
		Sys_SetSynaGlobalDataStr(nGlobalId_1,i-1,"")
		Sys_SetSynaGlobalDataStr(nGlobalId_2,i-1,"")
		Sys_SetSynaGlobalDataStr(nGlobalId_3,i-1,"")
	end 
	
end 

function OctMoMoAct_MakeLucker()

	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["RankActivityTime"]) then
		return
	end 
	
	if #tOctMoMoAct_UserLucky == 0 then 
		return
	end 

	local nGlobalId_1 = tOctMoMoAct_Data["LuckyGlobalId"][1] 
	local nGlobalId_2 = tOctMoMoAct_Data["LuckyGlobalId"][2] 
	local nGlobalId_3 = tOctMoMoAct_Data["LuckyGlobalId"][3] 
	
	local nLuckCount = OctMoMoAct_GetLuckyCount()
	local nData5 = Get_SysDynaGlobalData5(nGlobalId_1)
	--有记录过值 则返回不在记录
	if nData5 > 0 then 
		return
	end 
	local bFlag = false
	if nLuckCount == 0 then 
		--达不到开团奖励条件，不产出获奖玩家  53762 data0记录为1 		
		Sys_SetSynaGlobalData0(nGlobalId_1,1)
		bFlag = true
	elseif nLuckCount <= 4 then 
		for i = 1,nLuckCount do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_1,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_1,i,sLuckyUserName)
		end 
		bFlag = true
	elseif 4 < nLuckCount and nLuckCount <= 8 then
		for i = 1,4 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_1,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_1,i,sLuckyUserName)
		end 
		for i = 1,nLuckCount-4 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_2,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_2,i,sLuckyUserName)			
		end 
		bFlag = true
	elseif 9 <= nLuckCount and nLuckCount< 10 then
		for i = 1,4 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_1,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_1,i,sLuckyUserName)
		end 
		for i = 1,nLuckCount-5 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_2,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_2,i,sLuckyUserName)				
		end 
		local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
		Sys_SetSynaGlobalData(nGlobalId_3,1,nLuckyUserId)
		Sys_SetSynaGlobalDataStr(nGlobalId_3,1,sLuckyUserName)	
		bFlag = true
	else 
		for i = 1,4 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_1,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_1,i,sLuckyUserName)
		end 
		for i = 1,nLuckCount-6 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_2,i,nLuckyUserId)	
			Sys_SetSynaGlobalDataStr(nGlobalId_2,i,sLuckyUserName)	
		end 
		for i = 1,2 do 
			local nLuckyUserId,sLuckyUserName = OctMoMoAct_GetLuckyUserId()
			Sys_SetSynaGlobalData(nGlobalId_3,i,nLuckyUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId_3,i,sLuckyUserName)	
		end 
		bFlag = true
	end 
	--记录完毕后 53762 data5记录为1 表示记录过	
	if bFlag then 
		Sys_SetSynaGlobalData(nGlobalId_1,5,1)
	end 
end 

--清除记录过的信息
function OctMoMoAct_MakeLuckerClear()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["RankActivityTime"]) then
		return
	end 
	local nGlobalId_1 = tOctMoMoAct_Data["LuckyGlobalId"][1] 
	local nData5 = Get_SysDynaGlobalData5(nGlobalId_1)
	if nData5 > 0 then 
		Sys_SetSynaGlobalData(nGlobalId_1,5,0)
	end 
	
end 

--00点发邮件
function OctMoMoAct_SendLuckyAward()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["RankActivityTime"]) then
		return
	end 

	local nGlobalId_1 = tOctMoMoAct_Data["LuckyGlobalId"][1] 
	local nGlobalId_2 = tOctMoMoAct_Data["LuckyGlobalId"][2] 
	local nGlobalId_3 = tOctMoMoAct_Data["LuckyGlobalId"][3] 
	local nData0 = Get_SysDynaGlobalData0(nGlobalId_1)

	--记录是否发过邮件
	local nData5 = Get_SysDynaGlobalData5(nGlobalId_2) 
	if nData5 > 0 then 
		return
	end 

	if nData0 == 1 then 

	--没有开奖 全服玩家获得 赠龙血精石*1
		-- if #tOctMoMoAct_UserLucky == 0 then 
			-- return
		-- end 
		-- for k,v in pairs(tOctMoMoAct_UserLucky) do
			-- local nUserId = v
			-- local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
			-- local nActionId = tOctMoMoAct_Mail["Mail"]["Action"][1]	
			-- local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
			-- local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
			-- local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][0]
			-- Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- end 
		-- Sys_SetSynaGlobalData(nGlobalId_2,5,1)
		return
	end 

	for i = 1,4 do 
		-- 前四档玩家
		local nUserId_1 = Get_SysDynaGlobalData(nGlobalId_1,i)
		local nUserId_2 = Get_SysDynaGlobalData(nGlobalId_2,i)
		local nUserId_3 = Get_SysDynaGlobalData(nGlobalId_3,i)
		
		if nUserId_1 ~=nil and nUserId_1 ~= 0 then 
		
			local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
			local nActionId = tOctMoMoAct_Mail["Mail"]["ActionBefore"][i]	
			
			local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
			local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
			local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][1][i]
			Sys_SendMail(nUserId_1,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end 
	
		if nUserId_2 ~=nil and nUserId_2 ~= 0 then 
	
			local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
			local nActionId = tOctMoMoAct_Mail["Mail"]["ActionAfter"][i]
			local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
			local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
			local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][2][i]
			Sys_SendMail(nUserId_2,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end 
		
		if nUserId_3 ~=nil and nUserId_3 ~= 0 then 
			local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
			local nActionId = tOctMoMoAct_Mail["Mail"]["NewAction"][i]
			local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
			local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
			local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][3][i]
			Sys_SendMail(nUserId_3,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end 
		
	end 
	
	--除了中奖玩家 其他玩家给龙血晶石
	-- for k,v in pairs(tOctMoMoAct_UserLucky) do
		-- local nNotUserId = v
		-- for i = 1,4 do 
			-- 前四档玩家
			-- local nNotUserId_1 = Get_SysDynaGlobalData(nGlobalId_1,i)
			-- local nNotUserId_2 = Get_SysDynaGlobalData(nGlobalId_2,i)
			-- if nNotUserId_1 ~=nil and nNotUserId_1 == 0 then 
				-- if nNotUserId ~= nNotUserId_1 then 
					-- local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
					-- local nActionId = tOctMoMoAct_Mail["Mail"]["Action"][1]	
					-- local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
					-- local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
					-- local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][0]
					-- Sys_SendMail(nNotUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
					
				-- end 
			-- end 
			-- if nNotUserId_2 ~=nil and nNotUserId_2 == 0 then 
				-- if nNotUserId ~= nNotUserId_2 then 
					-- local nExistDay = tOctMoMoAct_Mail["Mail"]["ExistDay"]
					-- local nActionId = tOctMoMoAct_Mail["Mail"]["Action"][1]	
					-- local sSender = tOctMoMoAct_Text["LuckyMail"]["Sender"]
					-- local sTitle = tOctMoMoAct_Text["LuckyMail"]["Title"]
					-- local sContent = tOctMoMoAct_Text["LuckyMail"]["Content"][0]
					-- Sys_SendMail(nNotUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)	
				-- end 
			-- end 	
		-- end	
	-- end 
	
	Sys_SetSynaGlobalData(nGlobalId_2,5,1)

end 

--邮件发奖后，清除信息 
function OctMoMoAct_SendLuckyAwardClear()
	if not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["RankActivityTime"]) then
		return
	end 
	local nGlobalId_2 = tOctMoMoAct_Data["LuckyGlobalId"][2] 
	local nData5 = Get_SysDynaGlobalData5(nGlobalId_2)
	if nData5 > 0 then 
		tOctMoMoAct_UserLucky = {}
		tOctMoMoAct_UserLuckyName = {}
		nUserIndex = 1
		Sys_SetSynaGlobalData(nGlobalId_2,5,0)
		--清除全服幸运券数量
		Sys_SetSynaGlobalData(tOctMoMoAct_Data["GlobalId"],0,0)
	end 

end 



----------------------------------npc部分---------------------------------------------
-- 24929,'博肯',0002,57440,
-- 24930,'丽娜',0002,57450,

tNpcFace[5744] = 74
tNpcGossip[24929] = tNpcGossip[24929] or DefaultNpc:new{}
tNpcGossip[24929]["OptionHidden"] = 1
tNpcGossip[24929]["DialogueText"] = tOctMoMoAct_Text[24929]

--活动时间前
tNpcGossip[24929]["Text1-1"] = {111,112}
tNpcGossip[24929]["Text111"] = tOctMoMoAct_Text[24929]["Text111"]
tNpcGossip[24929]["Text112"] = tOctMoMoAct_Text[24929]["Text112"]
    
tNpcGossip[24929]["tOption1-1"] = {111}
tNpcGossip[24929]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
end
tNpcGossip[24929]["Option111"] = tOctMoMoAct_Text[24929]["Option111"] 

--活动时间中
tNpcGossip[24929]["Text1-2"] = {121,122,123}
tNpcGossip[24929]["Text121"] = tOctMoMoAct_Text[24929]["Text121"]
tNpcGossip[24929]["Text122"] = tOctMoMoAct_Text[24929]["Text122"]
tNpcGossip[24929]["Text123"] = tOctMoMoAct_Text[24929]["Text123"]

tNpcGossip[24929]["tOption1-2"] = {121,122}
tNpcGossip[24929]["ChkFunc1-2"] = function()

	return Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
	
end
tNpcGossip[24929]["Option121"] = tOctMoMoAct_Text[24929]["Option121"] 
tNpcGossip[24929]["Option122"] = tOctMoMoAct_Text[24929]["Option122"]

tNpcGossip[24929]["OptionPoint121"] = "2-1"
tNpcGossip[24929]["OptionPoint122"] = "2-4"


--活动时间后
tNpcGossip[24929]["Text1-3"] = {131}
tNpcGossip[24929]["Text131"] = tOctMoMoAct_Text[24929]["Text131"]

tNpcGossip[24929]["tOption1-3"] = {131}
tNpcGossip[24929]["ChkFunc1-3"] = function()
	
	return not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
end
tNpcGossip[24929]["Option131"] = tOctMoMoAct_Text[24929]["Option131"] 

-- 购买新品锁妖盒
tNpcGossip[24929]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[24929]["Text211"] = tOctMoMoAct_Text[24929]["Text211"]
tNpcGossip[24929]["Text212"] = tOctMoMoAct_Text[24929]["Text212"]
tNpcGossip[24929]["Text213"] = tOctMoMoAct_Text[24929]["Text213"]
tNpcGossip[24929]["Text214"] = tOctMoMoAct_Text[24929]["Text214"]
tNpcGossip[24929]["Text215"] = tOctMoMoAct_Text[24929]["Text215"]
tNpcGossip[24929]["Text216"] = tOctMoMoAct_Text[24929]["Text216"]
tNpcGossip[24929]["Text217"] = tOctMoMoAct_Text[24929]["Text217"]
        
tNpcGossip[24929]["tOption2-1"] = {211,212,213,214}
tNpcGossip[24929]["Option211"] = tOctMoMoAct_Text[24929]["Option211"] 
tNpcGossip[24929]["Option212"] = tOctMoMoAct_Text[24929]["Option212"] 
tNpcGossip[24929]["Option213"] = tOctMoMoAct_Text[24929]["Option213"] 
tNpcGossip[24929]["Option214"] = tOctMoMoAct_Text[24929]["Option214"] 

tNpcGossip[24929]["OptionFunc211"] = "OctMoMoAct_BuyBox</N>24929</N>3323528"
tNpcGossip[24929]["OptionFunc212"] = "OctMoMoAct_BuyBox</N>24929</N>3323529"
tNpcGossip[24929]["OptionFunc213"] = "OctMoMoAct_BuyBox</N>24929</N>3323530"
tNpcGossip[24929]["OptionFunc214"] = "OctMoMoAct_BuyBox</N>24929</N>3323531"

-- 赠点不足
tNpcGossip[24929]["Text2-2"] = {221}
tNpcGossip[24929]["Text221"] = tOctMoMoAct_Text[24929]["Text221"]
          
tNpcGossip[24929]["tOption2-2"] = {221}
tNpcGossip[24929]["Option221"] = tOctMoMoAct_Text[24929]["Option221"] 

-- 购买上限
tNpcGossip[24929]["Text2-3"] = {231}
tNpcGossip[24929]["Text231"] = tOctMoMoAct_Text[24929]["Text231"]
          
tNpcGossip[24929]["tOption2-3"] = {231}
tNpcGossip[24929]["Option231"] = tOctMoMoAct_Text[24929]["Option231"] 

--查看每日消费排行
tNpcGossip[24929]["Text2-4"] = {241,242,243,244,245,246,247,248,249}
tNpcGossip[24929]["Text241"] = tOctMoMoAct_Text[24929]["Text241"]
tNpcGossip[24929]["Text242"] = tOctMoMoAct_Text[24929]["Text242"]
tNpcGossip[24929]["Text243"] = tOctMoMoAct_Text[24929]["Text243"]
tNpcGossip[24929]["Text244"] = tOctMoMoAct_Text[24929]["Text244"]
tNpcGossip[24929]["Text245"] = tOctMoMoAct_Text[24929]["Text245"]
tNpcGossip[24929]["Text246"] = tOctMoMoAct_Text[24929]["Text246"]
tNpcGossip[24929]["Text247"] = tOctMoMoAct_Text[24929]["Text247"]
tNpcGossip[24929]["Text248"] = tOctMoMoAct_Text[24929]["Text248"]
tNpcGossip[24929]["Text249"] = tOctMoMoAct_Text[24929]["Text249"]
tNpcGossip[24929]["ChkFunc2-4"] = function()

	local nPointEvent = tOctMoMoAct_Stc["EventType"]["MoMo"]
	local nPointData = tOctMoMoAct_Stc["DataType"]["MoMo"]
	local nUserId = Get_UserId()
	-- 判断是否隔天
	OctMoMoActt_StcInterval(nPointEvent,nPointData,nUserId)

	local nPointValue = Get_UserStatisticValue(nPointEvent,nPointData)
	local tRank = RankingFunc_GetNowData(24929)
	
	for i=1,3 do
		if tRank[i] == nil then
			tNpcGossip[24929]["Text24"..i+3] = Sys_Alignment(tOctMoMoAct_Text[24929]["Text24"..i+3],2,tOctMoMoAct_Text[24929]["NoData"],30,tOctMoMoAct_Text[24929]["NoData"],75) 
		elseif tRank[i]["Score"] >= 0 then
			local nScore = tRank[i]["Score"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[24929]["Text24"..i+3] = Sys_Alignment(tOctMoMoAct_Text[24929]["Text24"..i+3],2,tostring(nScore),30,sUserName,75)	
		end
	end
	tNpcGossip[24929]["Text248"] = string.format(tOctMoMoAct_Text[24929]["Text248"],nPointValue)
	
	return true	
end

tNpcGossip[24929]["tOption2-4"] = {241}
tNpcGossip[24929]["Option241"] = tOctMoMoAct_Text[24929]["Option241"] 



-- 24930,'丽娜',0002,57450,
tNpcFace[5745] = 74
tNpcGossip[24930] = tNpcGossip[24930] or DefaultNpc:new{}
tNpcGossip[24930]["OptionHidden"] = 1
tNpcGossip[24930]["DialogueText"] = tOctMoMoAct_Text[24930]

--活动时间前
tNpcGossip[24930]["Text1-1"] = {111,112}
tNpcGossip[24930]["Text111"] = tOctMoMoAct_Text[24930]["Text111"]
tNpcGossip[24930]["Text112"] = tOctMoMoAct_Text[24930]["Text112"]
    
tNpcGossip[24930]["tOption1-1"] = {111}
tNpcGossip[24930]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
end
tNpcGossip[24930]["Option111"] = tOctMoMoAct_Text[24930]["Option111"] 

--活动时间中
tNpcGossip[24930]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[24930]["Text121"] = tOctMoMoAct_Text[24930]["Text121"]
tNpcGossip[24930]["Text122"] = tOctMoMoAct_Text[24930]["Text122"]
tNpcGossip[24930]["Text123"] = tOctMoMoAct_Text[24930]["Text123"]
tNpcGossip[24930]["Text124"] = tOctMoMoAct_Text[24930]["Text124"]
tNpcGossip[24930]["Text125"] = tOctMoMoAct_Text[24930]["Text125"]

tNpcGossip[24930]["ChkFunc1-2"] = function()
	
	local nLuckyEvent = tOctMoMoAct_Stc["EventType"]["Lucky"]
	local nLuckData = tOctMoMoAct_Stc["DataType"]["Lucky"]
	local nUserId = Get_UserId()
	-- 判断是否隔天
	OctMoMoActt_StcInterval(nLuckyEvent,nLuckData,nUserId)
	local nLuckyValue = Get_UserStatisticValue(nLuckyEvent,nLuckData)
	tNpcGossip[24930]["Text123"] = string.format(tOctMoMoAct_Text[24930]["Text123"],nLuckyValue)

	return Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
	
end

tNpcGossip[24930]["tOption1-2"] = {121,122}
tNpcGossip[24930]["Option121"] = tOctMoMoAct_Text[24930]["Option121"] 
tNpcGossip[24930]["Option122"] = tOctMoMoAct_Text[24930]["Option122"]

tNpcGossip[24930]["OptionPoint121"] = "2-1"
tNpcGossip[24930]["OptionPoint122"] = "2-2"

--活动时间后
tNpcGossip[24930]["Text1-3"] = {131}
tNpcGossip[24930]["Text131"] = tOctMoMoAct_Text[24930]["Text131"]

tNpcGossip[24930]["tOption1-3"] = {131}
tNpcGossip[24930]["ChkFunc1-3"] = function()
	
	return not Sys_ChkFullTime(tActivityTime["OctMoMoAct"]["ActivityTime"])
end
tNpcGossip[24930]["Option131"] = tOctMoMoAct_Text[24930]["Option131"] 

-- 查看奖品积累进度
tNpcGossip[24930]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116}
tNpcGossip[24930]["Text211"] = tOctMoMoAct_Text[24930]["Text211"]
tNpcGossip[24930]["Text212"] = tOctMoMoAct_Text[24930]["Text212"]
tNpcGossip[24930]["Text213"] = tOctMoMoAct_Text[24930]["Text213"]
tNpcGossip[24930]["Text214"] = tOctMoMoAct_Text[24930]["Text214"]
tNpcGossip[24930]["Text215"] = tOctMoMoAct_Text[24930]["Text215"]
tNpcGossip[24930]["Text216"] = tOctMoMoAct_Text[24930]["Text216"]
tNpcGossip[24930]["Text217"] = tOctMoMoAct_Text[24930]["Text217"]
tNpcGossip[24930]["Text218"] = tOctMoMoAct_Text[24930]["Text218"]
tNpcGossip[24930]["Text219"] = tOctMoMoAct_Text[24930]["Text219"]
tNpcGossip[24930]["Text2110"] = tOctMoMoAct_Text[24930]["Text2110"]
tNpcGossip[24930]["Text2111"] = tOctMoMoAct_Text[24930]["Text2111"]
tNpcGossip[24930]["Text2112"] = tOctMoMoAct_Text[24930]["Text2112"]
tNpcGossip[24930]["Text2113"] = tOctMoMoAct_Text[24930]["Text2113"]
tNpcGossip[24930]["Text2114"] = tOctMoMoAct_Text[24930]["Text2114"]
tNpcGossip[24930]["Text2115"] = tOctMoMoAct_Text[24930]["Text2115"]
tNpcGossip[24930]["Text2116"] = tOctMoMoAct_Text[24930]["Text2116"]
     
tNpcGossip[24930]["tOption2-1"] = {211}
tNpcGossip[24930]["Option211"] = tOctMoMoAct_Text[24930]["Option211"] 
tNpcGossip[24930]["ChkFunc2-1"] = function()
	
	local nGlobalId = tOctMoMoAct_Data["GlobalId"]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	for i = 1,10 do 
		local nRate = nData0
		if nData0 >= tOctMoMoAct_Data["AwardLevel"][i] then 
			nRate = tOctMoMoAct_Data["AwardLevel"][i]
		end 
		tNpcGossip[24930]["Text21"..i+2] = string.format(tOctMoMoAct_Text[24930]["Text21"..i+2],nRate)
	end 

	return true
end

-- 查看上期中奖名单
tNpcGossip[24930]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214}
tNpcGossip[24930]["Text221"] = tOctMoMoAct_Text[24930]["Text221"]
tNpcGossip[24930]["Text222"] = tOctMoMoAct_Text[24930]["Text222"]
tNpcGossip[24930]["Text223"] = tOctMoMoAct_Text[24930]["Text223"]
tNpcGossip[24930]["Text224"] = tOctMoMoAct_Text[24930]["Text224"]
tNpcGossip[24930]["Text225"] = tOctMoMoAct_Text[24930]["Text225"]
tNpcGossip[24930]["Text226"] = tOctMoMoAct_Text[24930]["Text226"]
tNpcGossip[24930]["Text227"] = tOctMoMoAct_Text[24930]["Text227"]
tNpcGossip[24930]["Text228"] = tOctMoMoAct_Text[24930]["Text228"]
tNpcGossip[24930]["Text229"] = tOctMoMoAct_Text[24930]["Text229"]
tNpcGossip[24930]["Text2210"] = tOctMoMoAct_Text[24930]["Text2210"]
tNpcGossip[24930]["Text2211"] = tOctMoMoAct_Text[24930]["Text2211"]
tNpcGossip[24930]["Text2212"] = tOctMoMoAct_Text[24930]["Text2212"]
tNpcGossip[24930]["Text2213"] = tOctMoMoAct_Text[24930]["Text2213"]
tNpcGossip[24930]["Text2214"] = tOctMoMoAct_Text[24930]["Text2214"]
          
tNpcGossip[24930]["tOption2-2"] = {221}
tNpcGossip[24930]["Option221"] = tOctMoMoAct_Text[24930]["Option221"] 
tNpcGossip[24930]["ChkFunc2-2"] = function()
		
	local nGlobalId_1 = tOctMoMoAct_Data["LuckyGlobalId"][1] 
	local nGlobalId_2 = tOctMoMoAct_Data["LuckyGlobalId"][2] 
	local nGlobalId_3 = tOctMoMoAct_Data["LuckyGlobalId"][3] 
	
	local nData0 = Get_SysDynaGlobalData0(nGlobalId_1)
	 
	if nData0 > 0 then 
		for i = 1 ,10 do
			tNpcGossip[24930]["Text22"..i+3] = string.format(tOctMoMoAct_Text[24930]["Text22"..i+3],tOctMoMoAct_Text[24930]["NoData"])
		end 	
	else
		for i = 1,4 do 
			-- 前四档玩家
			local nUserId_1 = Get_SysDynaGlobalData(nGlobalId_1,i)
			local sUserName_1 = Get_SysDynaGlobalDataStr(nGlobalId_1,i)
			local nUserId_2 = Get_SysDynaGlobalData(nGlobalId_2,i)
			local sUserName_2 = Get_SysDynaGlobalDataStr(nGlobalId_2,i)
			local nUserId_3 = Get_SysDynaGlobalData(nGlobalId_3,i)
			local sUserName_3 = Get_SysDynaGlobalDataStr(nGlobalId_3,i)
			
			if nUserId_1 ~=nil and nUserId_1 ~= 0 then 
				tNpcGossip[24930]["Text22"..i+3] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][1][i],sUserName_1)
			else
				tNpcGossip[24930]["Text22"..i+3] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][1][i],tOctMoMoAct_Text[24930]["NoData"])
			end 
			if nUserId_2 ~=nil and nUserId_2 ~= 0 then 
				tNpcGossip[24930]["Text22"..i+7] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][2][i],sUserName_2)
			else
				tNpcGossip[24930]["Text22"..i+7] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][2][i],tOctMoMoAct_Text[24930]["NoData"])
			end 
			
			if nUserId_3 ~=nil and nUserId_3 ~= 0 then 
				tNpcGossip[24930]["Text22"..i+11] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][3][i],sUserName_3)
			else
				if i < 3 then 
					tNpcGossip[24930]["Text22"..i+11] = string.format(tOctMoMoAct_Text[24930]["Text2213"],tOctMoMoAct_Text["Award"][3][i],tOctMoMoAct_Text[24930]["NoData"])
				end 
			end 
			
		end			
	end 
	return true
end


---------------------------------------------------物品部分--------------------------------------------------
-- 3323528,'新锁妖盒',9,98471500
-- 3323529,'新远古锁妖盒',9,9847
-- 3323530,'新洪荒锁妖盒',9,9847
-- 3323531,'新乾坤锁妖盒',9,9847

-- 3323532,'幸运奖券',9,98471500
-- 3323533,'消费排行冠军礼盒',9,
-- 3323534,'消费排行亚军礼盒',9,
-- 3323535,'消费排行季军礼盒',9,
-- 3323536,'赠品天石大狂欢邀请函
tItemFace[3323532] = 2374
tItem[3323532] = tItem[3323532] or {}
tItem[3323532]["Function"] = function(nItemId,sItemName)
	
	OctMoMoAct_ItemUse(nItemId)
	
end


tItem[3323528] = tItem[3323528] or {}
tItem[3323528]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	--判断赠点上限
	if Get_UserMonoEMoney() + tOctMoMoAct_Award[nItemId][1]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tChildrenCandy_Text["Msg"]["CPMono"])
		return
	end	
	RewardTemplate_RandomReward(tOctMoMoAct_Award,nItemId,nUserId)
	
end

tItem[3323529] = tItem[3323528] or {}
tItem[3323530] = tItem[3323528] or {}
tItem[3323531] = tItem[3323528] or {}

tItem[3323533] = tItem[3323533] or {}
tItem[3323533]["Function"] = function(nItemId,sItemName)

	RewardTemplate_UseItemAndMsg(tOctMoMoAct_Award[nItemId],nUserId)
	
end
tItem[3323534] = tItem[3323533] or {}
tItem[3323535] = tItem[3323533] or {}

-----------------------------------------------------------------时间自检--------------------------------------------------------------

local tOctMoMoAct_Time = {}

--产出幸运儿
tOctMoMoAct_Time[1] = {}
tOctMoMoAct_Time[1]["Type"] = 2
tOctMoMoAct_Time[1]["TimeType"] = 4
tOctMoMoAct_Time[1]["Multiple"] = {}
tOctMoMoAct_Time[1]["Multiple"][1]  = "23:55 23:57"
tOctMoMoAct_Time[1]["Func"] = OctMoMoAct_MakeLucker
table.insert(tSystemTime_InitialData,tOctMoMoAct_Time[1])

--清理标识
tOctMoMoAct_Time[2] = {}
tOctMoMoAct_Time[2]["Type"] = 2
tOctMoMoAct_Time[2]["TimeType"] = 4
tOctMoMoAct_Time[2]["Multiple"] = {}
tOctMoMoAct_Time[2]["Multiple"][1]  = "23:58 23:59"
tOctMoMoAct_Time[2]["Func"] = OctMoMoAct_MakeLuckerClear
table.insert(tSystemTime_InitialData,tOctMoMoAct_Time[2])

--发邮件
tOctMoMoAct_Time[3] = {}
tOctMoMoAct_Time[3]["Type"] = 2
tOctMoMoAct_Time[3]["TimeType"] = 4
tOctMoMoAct_Time[3]["Multiple"] = {}
tOctMoMoAct_Time[3]["Multiple"][1]  = "00:00 00:02"
tOctMoMoAct_Time[3]["Func"] = OctMoMoAct_SendLuckyAward
table.insert(tSystemTime_InitialData,tOctMoMoAct_Time[3])

--清理标识
tOctMoMoAct_Time[4] = {}
tOctMoMoAct_Time[4]["Type"] = 2
tOctMoMoAct_Time[4]["TimeType"] = 4
tOctMoMoAct_Time[4]["Multiple"] = {}
tOctMoMoAct_Time[4]["Multiple"][1]  = "00:03 00:05"
tOctMoMoAct_Time[4]["Func"] = OctMoMoAct_SendLuckyAwardClear
table.insert(tSystemTime_InitialData,tOctMoMoAct_Time[4])

--产出前清理上一轮数据
tOctMoMoAct_Time[5] = {}
tOctMoMoAct_Time[5]["Type"] = 2
tOctMoMoAct_Time[5]["TimeType"] = 4
tOctMoMoAct_Time[5]["Multiple"] = {}
tOctMoMoAct_Time[5]["Multiple"][1]  = "23:53 23:54"
tOctMoMoAct_Time[5]["Func"] = OctMoMoAct_MakeLuckerBefore
table.insert(tSystemTime_InitialData,tOctMoMoAct_Time[5])












