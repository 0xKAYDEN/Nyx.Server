------------------------------------------------------------------------------------
--Name:			190426[英文征服][活动脚本]博弈赤练石活动（5.21-6.11）
--Creator: 		茅志伟
--Created:		2019/04/26
------------------------------------------------------------------------------------

-- 命名前缀 tStoneGames_

-- lua.ini = 41277
-- 41277 = V100\ActiveScript\[Conquer][ActiveScript]StoneGames.lua
-- 41277 = V100\活动脚本\[征服][活动脚本]博弈赤练石活动（5.21-6.11）.lua
-- LogId = 12001397

local tStoneGames_Data = {}
tStoneGames_Data["Golobal1"] = 53378
tStoneGames_Data["Golobal2"] = 53379

tStoneGames_Data["NpcId"] = 24170

local tStoneGames_Pack = {}
	-- ===消耗100赠
	-- ===索引: tStoneGames_Pack[1]
	-- ===EMoneyLog: 10000,0386
	tStoneGames_Pack[1] = {}
	tStoneGames_Pack[1]["ItemChanceSum"] = 10000
	tStoneGames_Pack[1]["LogId"] = 12001397
	-- 50天石（赠） - 40.00%
	tStoneGames_Pack[1][1] = {}
	tStoneGames_Pack[1][1]["RandomItemChanceType"] = 2
	tStoneGames_Pack[1][1]["ItemChance"] = 4000
	tStoneGames_Pack[1][1]["RewardEMoneyMono"] = {}
	tStoneGames_Pack[1][1]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	-- tStoneGames_Pack[1][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	386"
	tStoneGames_Pack[1][1]["RewardEffect"] = {}
	tStoneGames_Pack[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+3票 - 35.00%
	tStoneGames_Pack[1][2] = {}
	tStoneGames_Pack[1][2]["RandomItemChanceType"] = 2
	tStoneGames_Pack[1][2]["ItemChance"] = 3500
	tStoneGames_Pack[1][2]["RewardItem"] = {}
	tStoneGames_Pack[1][2]["RewardItem"][1] = {}
	tStoneGames_Pack[1][2]["RewardItem"][1]["Id"] = 3321204 -- 【库】 3321204 【库里没有该物品】[属性:], 【表格】赠品赤练石+3票
	tStoneGames_Pack[1][2]["RewardItem"][1]["Attr"] = "0 1" --  3321204 【库里没有该物品】*1
	tStoneGames_Pack[1][2]["RewardEffect"] = {}
	tStoneGames_Pack[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+3*2票 - 25.00%
	tStoneGames_Pack[1][3] = {}
	tStoneGames_Pack[1][3]["RandomItemChanceType"] = 2
	tStoneGames_Pack[1][3]["ItemChance"] = 2500
	tStoneGames_Pack[1][3]["RewardItem"] = {}
	tStoneGames_Pack[1][3]["RewardItem"][1] = {}
	tStoneGames_Pack[1][3]["RewardItem"][1]["Id"] = 3321204 -- 【库】 3321204 【库里没有该物品】[属性:], 【表格】赠品赤练石+3*2票
	tStoneGames_Pack[1][3]["RewardItem"][1]["Attr"] = "0 2" --  3321204 【库里没有该物品】*2
	tStoneGames_Pack[1][3]["RewardEffect"] = {}
	tStoneGames_Pack[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStoneGames_Pack[2] = {}
	-- ===消耗300赠点或者3张
	-- ===赠品赤炼石+3票
	-- ===索引: tStoneGames_Pack[2]
	-- ===EMoneyLog: 10000,0386
	tStoneGames_Pack[2]["ItemChanceSum"] = 10000
	tStoneGames_Pack[2]["LogId"] = 12001397
	-- 150天石（赠） - 45.00%
	tStoneGames_Pack[2][1] = {}
	tStoneGames_Pack[2][1]["RandomItemChanceType"] = 2
	tStoneGames_Pack[2][1]["ItemChance"] = 4500
	tStoneGames_Pack[2][1]["RewardEMoneyMono"] = {}
	tStoneGames_Pack[2][1]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】150天石（赠）
	-- tStoneGames_Pack[2][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	386"
	tStoneGames_Pack[2][1]["RewardEffect"] = {}
	tStoneGames_Pack[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+4票 - 40.00%
	tStoneGames_Pack[2][2] = {}
	tStoneGames_Pack[2][2]["RandomItemChanceType"] = 2
	tStoneGames_Pack[2][2]["ItemChance"] = 4000
	tStoneGames_Pack[2][2]["RewardItem"] = {}
	tStoneGames_Pack[2][2]["RewardItem"][1] = {}
	tStoneGames_Pack[2][2]["RewardItem"][1]["Id"] = 3321205 -- 【库】 3321205 【库里没有该物品】[属性:], 【表格】赠品赤练石+4票
	tStoneGames_Pack[2][2]["RewardItem"][1]["Attr"] = "0 1" --  3321205 【库里没有该物品】*1
	tStoneGames_Pack[2][2]["RewardEffect"] = {}
	tStoneGames_Pack[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+4*2票 - 15.00%
	tStoneGames_Pack[2][3] = {}
	tStoneGames_Pack[2][3]["RandomItemChanceType"] = 2
	tStoneGames_Pack[2][3]["ItemChance"] = 1500
	tStoneGames_Pack[2][3]["RewardItem"] = {}
	tStoneGames_Pack[2][3]["RewardItem"][1] = {}
	tStoneGames_Pack[2][3]["RewardItem"][1]["Id"] = 3321205 -- 【库】 3321205 【库里没有该物品】[属性:], 【表格】赠品赤练石+4*2票
	tStoneGames_Pack[2][3]["RewardItem"][1]["Attr"] = "0 2" --  3321205 【库里没有该物品】*2
	tStoneGames_Pack[2][3]["RewardEffect"] = {}
	tStoneGames_Pack[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStoneGames_Pack[3] = {}
	-- ===消耗900赠点或者3张赠品赤炼石+4票
	-- ===索引: tStoneGames_Pack[3]
	-- ===EMoneyLog: 10000,0386
	tStoneGames_Pack[3]["ItemChanceSum"] = 10000
	tStoneGames_Pack[3]["LogId"] = 12001397
	-- 450天石（赠） - 55.00%
	tStoneGames_Pack[3][1] = {}
	tStoneGames_Pack[3][1]["RandomItemChanceType"] = 2
	tStoneGames_Pack[3][1]["ItemChance"] = 5500
	tStoneGames_Pack[3][1]["RewardEMoneyMono"] = {}
	tStoneGames_Pack[3][1]["RewardEMoneyMono"]["Value"] = 450 -- 天石（赠）, 【需求】450天石（赠）
	-- tStoneGames_Pack[3][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	386"
	tStoneGames_Pack[3][1]["RewardEffect"] = {}
	tStoneGames_Pack[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+5票 - 30.00%
	tStoneGames_Pack[3][2] = {}
	tStoneGames_Pack[3][2]["RandomItemChanceType"] = 2
	tStoneGames_Pack[3][2]["ItemChance"] = 3000
	tStoneGames_Pack[3][2]["RewardItem"] = {}
	tStoneGames_Pack[3][2]["RewardItem"][1] = {}
	tStoneGames_Pack[3][2]["RewardItem"][1]["Id"] = 3321206 -- 【库】 3321206 【库里没有该物品】[属性:], 【表格】赠品赤练石+5票
	tStoneGames_Pack[3][2]["RewardItem"][1]["Attr"] = "0 1" --  3321206 【库里没有该物品】*1
	tStoneGames_Pack[3][2]["RewardEffect"] = {}
	tStoneGames_Pack[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+5*2票 - 15.00%
	tStoneGames_Pack[3][3] = {}
	tStoneGames_Pack[3][3]["RandomItemChanceType"] = 2
	tStoneGames_Pack[3][3]["ItemChance"] = 1500
	tStoneGames_Pack[3][3]["RewardItem"] = {}
	tStoneGames_Pack[3][3]["RewardItem"][1] = {}
	tStoneGames_Pack[3][3]["RewardItem"][1]["Id"] = 3321206 -- 【库】 3321206 【库里没有该物品】[属性:], 【表格】赠品赤练石+5*2票
	tStoneGames_Pack[3][3]["RewardItem"][1]["Attr"] = "0 2" --  3321206 【库里没有该物品】*2
	tStoneGames_Pack[3][3]["RewardEffect"] = {}
	tStoneGames_Pack[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3][3]["RewardEffect"]["Effect"] = "angelwing"


	tStoneGames_Pack[4] = {}
	-- ===消耗3张赠品赤练+5票
	-- ===索引: tStoneGames_Pack[4]
	-- ===EMoneyLog:  10000,0386
	tStoneGames_Pack[4]["ItemChanceSum"] = 10000
	tStoneGames_Pack[4]["LogId"] = 12001397
	-- 1300天石（赠） - 55.00%
	tStoneGames_Pack[4][1] = {}
	tStoneGames_Pack[4][1]["RandomItemChanceType"] = 2
	tStoneGames_Pack[4][1]["ItemChance"] = 5500
	tStoneGames_Pack[4][1]["RewardEMoneyMono"] = {}
	tStoneGames_Pack[4][1]["RewardEMoneyMono"]["Value"] = 1300 -- 天石（赠）, 【需求】1300天石（赠）
	-- tStoneGames_Pack[4][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	386"
	tStoneGames_Pack[4][1]["RewardEffect"] = {}
	tStoneGames_Pack[4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+6票 - 30.00%
	tStoneGames_Pack[4][2] = {}
	tStoneGames_Pack[4][2]["RandomItemChanceType"] = 2
	tStoneGames_Pack[4][2]["ItemChance"] = 3000
	tStoneGames_Pack[4][2]["RewardItem"] = {}
	tStoneGames_Pack[4][2]["RewardItem"][1] = {}
	tStoneGames_Pack[4][2]["RewardItem"][1]["Id"] = 3321207 -- 【库】 3321207 【库里没有该物品】[属性:], 【表格】赠品赤练石+6票
	tStoneGames_Pack[4][2]["RewardItem"][1]["Attr"] = "0 1" --  3321207 【库里没有该物品】*1
	tStoneGames_Pack[4][2]["RewardEffect"] = {}
	tStoneGames_Pack[4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[4][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53378, data4）】全服限量:（2200）, 超限给编号（1）-
	tStoneGames_Pack[4][2]["GlobalId"] = 53378
	tStoneGames_Pack[4][2]["Pos"] = 4
	tStoneGames_Pack[4][2]["MaxData"] = 2200
	tStoneGames_Pack[4][2]["FullIndex"] = 1
			-- 【动态掩码（53378, data1）】单日限量:（100）, 超限给编号（1）-
	tStoneGames_Pack[4][2]["OtherPos"] = 1
	tStoneGames_Pack[4][2]["OtherMaxData"] = 100
	tStoneGames_Pack[4][2]["OtherFullIndex"] = 1
	-- 赠品赤练石+6*2票 - 15.00%
	tStoneGames_Pack[4][3] = {}
	tStoneGames_Pack[4][3]["RandomItemChanceType"] = 2
	tStoneGames_Pack[4][3]["ItemChance"] = 1500
	tStoneGames_Pack[4][3]["RewardItem"] = {}
	tStoneGames_Pack[4][3]["RewardItem"][1] = {}
	tStoneGames_Pack[4][3]["RewardItem"][1]["Id"] = 3321207 -- 【库】 3321207 【库里没有该物品】[属性:], 【表格】赠品赤练石+6*2票
	tStoneGames_Pack[4][3]["RewardItem"][1]["Attr"] = "0 2" --  3321207 【库里没有该物品】*2
	tStoneGames_Pack[4][3]["RewardEffect"] = {}
	tStoneGames_Pack[4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[4][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53378, data2）】全服限量:（1100）, 超限给编号（1）-
	tStoneGames_Pack[4][3]["GlobalId"] = 53378
	tStoneGames_Pack[4][3]["Pos"] = 2
	tStoneGames_Pack[4][3]["MaxData"] = 1100
	tStoneGames_Pack[4][3]["FullIndex"] = 1
			-- 【动态掩码（53378, data3）】单日限量:（50）, 超限给编号（1）-
	tStoneGames_Pack[4][3]["OtherPos"] = 3
	tStoneGames_Pack[4][3]["OtherMaxData"] = 50
	tStoneGames_Pack[4][3]["OtherFullIndex"] = 1


	tStoneGames_Pack[5] = {}
	-- ===消耗3张赠品赤炼石+6票
	-- ===索引: tStoneGames_Pack[5]
	-- ===EMoneyLog:  10000,0386
	tStoneGames_Pack[5]["ItemChanceSum"] = 10000
	tStoneGames_Pack[5]["LogId"] = 12001397
	-- 3500天石（赠） - 65.00%
	tStoneGames_Pack[5][1] = {}
	tStoneGames_Pack[5][1]["RandomItemChanceType"] = 2
	tStoneGames_Pack[5][1]["ItemChance"] = 6500
	tStoneGames_Pack[5][1]["RewardEMoneyMono"] = {}
	tStoneGames_Pack[5][1]["RewardEMoneyMono"]["Value"] = 3500 -- 天石（赠）, 【需求】3500天石（赠）
	-- tStoneGames_Pack[5][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	386"
	tStoneGames_Pack[5][1]["RewardEffect"] = {}
	tStoneGames_Pack[5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[5][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+7票 - 25.00%
	tStoneGames_Pack[5][2] = {}
	tStoneGames_Pack[5][2]["RandomItemChanceType"] = 2
	tStoneGames_Pack[5][2]["ItemChance"] = 2500
	tStoneGames_Pack[5][2]["RewardItem"] = {}
	tStoneGames_Pack[5][2]["RewardItem"][1] = {}
	tStoneGames_Pack[5][2]["RewardItem"][1]["Id"] = 3321208 -- 【库】 3321208 【库里没有该物品】[属性:], 【表格】赠品赤练石+7票
	tStoneGames_Pack[5][2]["RewardItem"][1]["Attr"] = "0 1" --  3321208 【库里没有该物品】*1
	tStoneGames_Pack[5][2]["RewardEffect"] = {}
	tStoneGames_Pack[5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[5][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53379, data4）】全服限量:（660）, 超限给编号（1）-
	tStoneGames_Pack[5][2]["GlobalId"] = 53379
	tStoneGames_Pack[5][2]["Pos"] = 4
	tStoneGames_Pack[5][2]["MaxData"] = 660
	tStoneGames_Pack[5][2]["FullIndex"] = 1
			-- 【动态掩码（53379, data1）】单日限量:（30）, 超限给编号（1）-
	tStoneGames_Pack[5][2]["OtherPos"] = 1
	tStoneGames_Pack[5][2]["OtherMaxData"] = 30
	tStoneGames_Pack[5][2]["OtherFullIndex"] = 1
	-- 赠品赤练石+8票 - 10.00%
	tStoneGames_Pack[5][3] = {}
	tStoneGames_Pack[5][3]["RandomItemChanceType"] = 2
	tStoneGames_Pack[5][3]["ItemChance"] = 1000
	tStoneGames_Pack[5][3]["RewardItem"] = {}
	tStoneGames_Pack[5][3]["RewardItem"][1] = {}
	tStoneGames_Pack[5][3]["RewardItem"][1]["Id"] = 3321209 -- 【库】 3321209 【库里没有该物品】[属性:], 【表格】赠品赤练石+8票
	tStoneGames_Pack[5][3]["RewardItem"][1]["Attr"] = "0 1" --  3321209 【库里没有该物品】*1
	tStoneGames_Pack[5][3]["RewardEffect"] = {}
	tStoneGames_Pack[5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[5][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53379, data2）】全服限量:（330）, 超限给编号（1）-
	tStoneGames_Pack[5][3]["GlobalId"] = 53379
	tStoneGames_Pack[5][3]["Pos"] = 2
	tStoneGames_Pack[5][3]["MaxData"] = 330
	tStoneGames_Pack[5][3]["FullIndex"] = 1
			-- 【动态掩码（53379, data3）】单日限量:（15）, 超限给编号（1）-
	tStoneGames_Pack[5][3]["OtherPos"] = 3
	tStoneGames_Pack[5][3]["OtherMaxData"] = 15
	tStoneGames_Pack[5][3]["OtherFullIndex"] = 1
	
	
	
	-- ===6赤炼石（赠）券
	-- ===索引: tStoneGames_Pack[3321207]
	-- ===删除:3321207,1
	-- ===
	tStoneGames_Pack[3321207] = {}
	tStoneGames_Pack[3321207]["LogId"] = 12001397
	tStoneGames_Pack[3321207]["DeleteItem"] = {}
	tStoneGames_Pack[3321207]["DeleteItem"][1] = {}
	tStoneGames_Pack[3321207]["DeleteItem"][1]["Id"] = 3321207 -- 【库】+6Stone(B)Ticket[属性:9]
	tStoneGames_Pack[3321207]["RewardItem"] = {}
	tStoneGames_Pack[3321207]["RewardItem"][1] = {}
	tStoneGames_Pack[3321207]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】加6赤炼石（赠）
	tStoneGames_Pack[3321207]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tStoneGames_Pack[3321207]["RewardEffect"] = {}
	tStoneGames_Pack[3321207]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3321207]["RewardEffect"]["Effect"] = "angelwing"


	tStoneGames_Pack[3321208] = {}
	-- ===7赤炼石（赠）券
	-- ===索引:tStoneGames_Pack[3321208]
	-- ===删除: 3321208,1
	-- ===
	tStoneGames_Pack[3321208]["LogId"] = 12001397
	tStoneGames_Pack[3321208]["DeleteItem"] = {}
	tStoneGames_Pack[3321208]["DeleteItem"][1] = {}
	tStoneGames_Pack[3321208]["DeleteItem"][1]["Id"] = 3321208 -- 【库】+6Stone(B)Ticket[属性:9]
	tStoneGames_Pack[3321208]["RewardItem"] = {}
	tStoneGames_Pack[3321208]["RewardItem"][1] = {}
	tStoneGames_Pack[3321208]["RewardItem"][1]["Id"] = 730007 -- 【库】+7Stone[属性:0], 【表格】加7赤炼石（赠）
	tStoneGames_Pack[3321208]["RewardItem"][1]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tStoneGames_Pack[3321208]["RewardEffect"] = {}
	tStoneGames_Pack[3321208]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3321208]["RewardEffect"]["Effect"] = "angelwing"


	tStoneGames_Pack[3321209] = {}
	-- ===8赤炼石（赠）券
	-- ===索引:tStoneGames_Pack[3321209]
	-- ===删除: 3321209,1
	-- ===
	tStoneGames_Pack[3321209]["LogId"] = 12001397
	tStoneGames_Pack[3321209]["DeleteItem"] = {}
	tStoneGames_Pack[3321209]["DeleteItem"][1] = {}
	tStoneGames_Pack[3321209]["DeleteItem"][1]["Id"] = 3321209 -- 【库】+8Stone(B)Ticket[属性:9]
	tStoneGames_Pack[3321209]["RewardItem"] = {}
	tStoneGames_Pack[3321209]["RewardItem"][1] = {}
	tStoneGames_Pack[3321209]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】加8赤炼石（赠）
	tStoneGames_Pack[3321209]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tStoneGames_Pack[3321209]["RewardEffect"] = {}
	tStoneGames_Pack[3321209]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneGames_Pack[3321209]["RewardEffect"]["Effect"] = "angelwing"



local tStoneGames_Log = {}
tStoneGames_Log["EMonyeLog"] = {}
tStoneGames_Log["EMonyeLog"]["EMonoMony"] = "10000	0402	0	0	%d	"
tStoneGames_Log["EMonyeLog"][22200] = "350	22200	0	0	1	"-- 消耗100赠点进行锻造 
tStoneGames_Log["EMonyeLog"][22201] = "350	22201	0	0	1	"-- 消耗300赠点进行锻造   消耗3张赠品赤练+3票进行锻造 
tStoneGames_Log["EMonyeLog"][22202] = "350	22202	0	0	1	"-- 消耗900赠点进行锻造   消耗3张赠品赤炼石+4票进行锻造 
tStoneGames_Log["EMonyeLog"][22203] = "350	22203	0	0	1	"-- 消耗3张赠品赤练+5票进行锻造 
tStoneGames_Log["EMonyeLog"][22204] = "350	22204	0	0	1	"-- 消耗3张赠品赤炼石+6票进行锻造 
tStoneGames_Log["EMonyeLog"][22205] = "350	22205	0	0	1	"-- NPC处兑换赠品+6赤炼石 
tStoneGames_Log["EMonyeLog"][22206] = "350	22206	0	0	1	"-- NPC处兑换赠品+7赤炼石 
tStoneGames_Log["EMonyeLog"][22207] = "350	22207	0	0	1	"-- NPC处兑换赠品+8赤炼石 

tStoneGames_Log["DeleteLog"] = "0,0,%d,%d,0,12001397,2,0,0"
-----------------------------------------------逻辑部分
--赠点抽奖逻辑
function StoneGames_EMonoMoney(nEMoneyMonoNum,nNum,nSpace,nEMonyeLog,nCP)
	if not Sys_ChkFullTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		return
	end 
	local nEMoneyMono = nEMoneyMonoNum
	
	local nUserMonoEMoney = Get_UserMonoEMoney()
	local tTextLog = string.format(tStoneGames_Log["EMonyeLog"]["EMonoMony"],nEMoneyMono)
	local tTextLog2 = tStoneGames_Log["EMonyeLog"][nEMonyeLog]
	local nNpcId = tStoneGames_Data["NpcId"]
	if nEMoneyMono > nUserMonoEMoney then    --赠点天石不足
		Sys_MsgBox(tStoneGames_Text["Sys_MsgBox"][1])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tStoneGames_Text["Sys_MsgBox"][2])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nRewardEMoneyM = tStoneGames_Pack[nNum][1]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tStoneGames_Text["Sys_MsgBox"]["NotEMoneyMono"])
		return
	end 
	if User_AddEMoneyMono(-nEMoneyMono) then 
		local tNum,sText = RewardTemplate_NewRandom(tStoneGames_Pack,nNum)
		Sys_SaveEmoneyBuy(tTextLog)
		Sys_SaveEmoneyBuy(tTextLog2)
		if tNum[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then 
			-- local nRewardEMoneyM = tNum[1]["tAward"][1]["RewardEMoneyMono"]["Value"]
			local tTextLog3 = string.format(tStoneGames_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
			Sys_SaveEmoneyBuy(tTextLog3)
			Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sText))
		else
			local nItemId = tNum[1]["tAward"][1]["RewardItem"][1]["Id"] 
			local sItemText = Get_ItemtypeName(nItemId)
			local tStr = Sys_Split(tNum[1]["tAward"][1]["RewardItem"][1]["Attr"], " ")
			local nNum = tStr[2]
			local sItemText2 = nNum .. "*" .. sItemText
			Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sItemText2))
			
		end 
		-- local sTextStr1 = tostring(sText)
		-- Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sTextStr1))
	end 
end 
--卷抽奖逻辑
function StoneGames_ItemBuy(nItemId,nNum,nCount,nSpace,nEMonyeLog,nCP)
	if not Sys_ChkFullTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		return
	end 
	local nNpcId = tStoneGames_Data["NpcId"]
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then 
		local sItemName = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][4],sItemName))
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tStoneGames_Text["Sys_MsgBox"][2])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nRewardEMoneyM = tStoneGames_Pack[nNum][1]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tStoneGames_Text["Sys_MsgBox"]["NotEMoneyMono"])
		return
	end 
	if Item_DelMulItem(nItemId,nItemId,nCount) then 
		local tNum,sText = RewardTemplate_NewRandom(tStoneGames_Pack,nNum)
		local tTextLog = string.format(tStoneGames_Log["DeleteLog"],nItemId,nCount)
		local tTextLog2 = tStoneGames_Log["EMonyeLog"][nEMonyeLog]
		Sys_SaveActionFestivalLog(tTextLog)
		Sys_SaveEmoneyBuy(tTextLog2)
		if tNum[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then 
			-- local nRewardEMoneyM = tNum[1]["tAward"][1]["RewardEMoneyMono"]["Value"]
			local tTextLog3 = string.format(tStoneGames_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
			Sys_SaveEmoneyBuy(tTextLog3)
			Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sText))
		else
			local nItemId = tNum[1]["tAward"][1]["RewardItem"][1]["Id"] 
			local sItemText = Get_ItemtypeName(nItemId)
			local tStr = Sys_Split(tNum[1]["tAward"][1]["RewardItem"][1]["Attr"], " ")
			local nNum = tStr[2]
			local sItemText2 = nNum .. "*" .. sItemText
			Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sItemText2))
		end 
		-- local sTextStr = tostring(sText)
		-- User_TalkChannel2005("sText = " ..sText)
		-- Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][3],sTextStr))
	end 
end 

--清理限量
function StoneGames_ClearGlobal()
	local GolobalId1 = tStoneGames_Data["Golobal1"]
	local GolobalId2 = tStoneGames_Data["Golobal2"]
	local data5 = Get_SysDynaGlobalData5(GolobalId2)
	if data5 ~= 1 then 
		--重置赠品赤练石+6票
		Sys_SetSynaGlobalData1(GolobalId1,0)
		--重置赠品赤练石+6*2票
		Sys_SetSynaGlobalData3(GolobalId1,0)
		--重置赠品赤练石+7票
		Sys_SetSynaGlobalData1(GolobalId2,0)
		--重置赠品赤练石+8票
		Sys_SetSynaGlobalData3(GolobalId2,0)
		--设置重置动态码表示位，data5 = 1 表示已经重置
		Sys_SetSynaGlobalData5(GolobalId2,1)
	end 
end 
--重置 动态码表示为
function StoneGames_ClearGlobalIdentification()
	local GolobalId2 = tStoneGames_Data["Golobal2"]
	Sys_SetSynaGlobalData5(GolobalId2,0)
end 

--选项兑换赤炼石
function StoneGames_ChoiceStone(nItemId,nEMonyeLog)
	local nNpcId = tStoneGames_Data["NpcId"]
	local sItemName = Get_ItemtypeName(nItemId)
	if not Sys_ChkFullTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		return
	end 
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][4],sItemName))
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStoneGames_Text["Sys_MsgBox"][2])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local sItemName2 = tStoneGames_Text[nItemId]
	tNpcGossip[24170]["Text1011"] = string.format(tStoneGames_Text[24170]["Text1011"],sItemName,sItemName2)
	tNpcGossip[24170]["OptionFunc1011"] = "StoneGames_ExchangeStone</N>" ..nItemId.. "</N>" ..nEMonyeLog
	LinkNpcGossipFunc_New(nNpcId,"10-1")
end 



--选项兑换赤炼石
function StoneGames_ExchangeStone(nItemId,nEMonyeLog)
	local nNpcId = tStoneGames_Data["NpcId"]
	if not Sys_ChkFullTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		return
	end 
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		local sItemName = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tStoneGames_Text["Sys_MsgBox"][4],sItemName))
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStoneGames_Text["Sys_MsgBox"][2])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local tTextLog2 = tStoneGames_Log["EMonyeLog"][nEMonyeLog]
	RewardTemplate_UseItemAndMsg(tStoneGames_Pack[nItemId])
	Sys_SaveEmoneyBuy(tTextLog2)
	-- User_TalkChannel2005("e")
end 

function StoneGames_FindNpc(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["StoneGames"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tStoneGames_Log["DeleteLog"],nItemId,nItemNum)
		Item_DelMulItem(nItemId,nItemId,nItemNum)
		Sys_SaveActionFestivalLog(tTextLog)
		return
	end 
	NpcPosition_PathFind(tStoneGames_Data["NpcId"])
end 
-----------------------------------------------NPC部分
--雅典娜
tNpcFace[6515] = 21
tNpcGossip[24170] = tNpcGossip[24170] or DefaultNpc:new{}
tNpcGossip[24170]["OptionHidden"] = 1
tNpcGossip[24170]["DialogueText"] = tStoneGames_Text[24170]
--活动前
tNpcGossip[24170]["Text1-1"] = {111,112,113}
tNpcGossip[24170]["tOption1-1"] = {111}
tNpcGossip[24170]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["StoneGames"]["ActivityTime"])
end
--活动后
tNpcGossip[24170]["Text1-2"] = {121}
tNpcGossip[24170]["tOption1-2"] = {121}
tNpcGossip[24170]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["StoneGames"]["ActivityTime"])
end
--活动中
tNpcGossip[24170]["Text1-3"] = {131,132,133,134}
tNpcGossip[24170]["tOption1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24170]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["StoneGames"]["ActivityTime"])
end
tNpcGossip[24170]["OptionPoint131"] = "2-1"
tNpcGossip[24170]["OptionPoint132"] = "3-1"
tNpcGossip[24170]["OptionPoint133"] = "4-1"
tNpcGossip[24170]["OptionPoint134"] = "5-1"
tNpcGossip[24170]["OptionPoint135"] = "6-1"
tNpcGossip[24170]["OptionPoint136"] = "7-1"
tNpcGossip[24170]["OptionPoint137"] = "8-1"
tNpcGossip[24170]["OptionPoint138"] = "9-1"

--接1、100天石（赠）搏奖。
tNpcGossip[24170]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[24170]["tOption2-1"] = {211,212}
tNpcGossip[24170]["OptionFunc211"] = "StoneGames_EMonoMoney</N>100</N>1</N>2</N>22200</N>1"

--接2、300天石（赠）搏奖。
tNpcGossip[24170]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[24170]["tOption3-1"] = {311,312}
tNpcGossip[24170]["OptionFunc311"] = "StoneGames_EMonoMoney</N>300</N>2</N>2</N>22201</N>2"

--接3、900天石（赠）搏奖。
tNpcGossip[24170]["Text4-1"] = {411,412,413,414,415}
tNpcGossip[24170]["tOption4-1"] = {411,412}
tNpcGossip[24170]["OptionFunc411"] = "StoneGames_EMonoMoney</N>900</N>3</N>2</N>22202</N>3"

--接4、3张+3赤炼石（赠）券搏奖。
tNpcGossip[24170]["Text5-1"] = {511,512,513,514,515}
tNpcGossip[24170]["tOption5-1"] = {511,512}
tNpcGossip[24170]["OptionFunc511"] = "StoneGames_ItemBuy</N>3321204</N>2</N>3</N>2</N>22201</N>2"

--接5、3张+4赤炼石（赠）券搏奖。
tNpcGossip[24170]["Text6-1"] = {611,612,613,614,615}
tNpcGossip[24170]["tOption6-1"] = {611,612}
tNpcGossip[24170]["OptionFunc611"] = "StoneGames_ItemBuy</N>3321205</N>3</N>3</N>2</N>22202</N>3"

--接6、3张+5赤炼石（赠）券搏奖。
tNpcGossip[24170]["Text7-1"] = {711,712,713,714,715}
tNpcGossip[24170]["tOption7-1"] = {711,712}
tNpcGossip[24170]["OptionFunc711"] = "StoneGames_ItemBuy</N>3321206</N>4</N>3</N>2</N>22203</N>4"

--接7、3张+6赤炼石（赠）券搏奖。
tNpcGossip[24170]["Text8-1"] = {811,812,813,814,815}
tNpcGossip[24170]["tOption8-1"] = {811,812}
tNpcGossip[24170]["OptionFunc811"] = "StoneGames_ItemBuy</N>3321207</N>5</N>3</N>1</N>22204</N>5"

--接8、兑换赤炼石（赠）。
tNpcGossip[24170]["Text9-1"] = {911}
tNpcGossip[24170]["tOption9-1"] = {911,912,913,914}
tNpcGossip[24170]["OptionFunc911"] = "StoneGames_ChoiceStone</N>3321207</N>22205"
tNpcGossip[24170]["OptionFunc912"] = "StoneGames_ChoiceStone</N>3321208</N>22206"
tNpcGossip[24170]["OptionFunc913"] = "StoneGames_ChoiceStone</N>3321209</N>22207"

--【成功，二次确认】
tNpcGossip[24170]["Text10-1"] = {1011}
tNpcGossip[24170]["tOption10-1"] = {1011,1012}
-- tNpcGossip[24170]["OptionFunc1011"] = ""

------------------------------------------------物品模板
tItem[3321204] = tItem[3321204] or {}
tItem[3321204]["Function"] = function(nItemId,sItemName)
	StoneGames_FindNpc(nItemId)
end
tItem[3321205] = tItem[3321204] or {}
tItem[3321206] = tItem[3321204] or {}
tItem[3321207] = tItem[3321204] or {}
tItem[3321208] = tItem[3321204] or {}
tItem[3321209] = tItem[3321204] or {}
---------------------------------------------时间自检
--每日清理动态码
	tStoneGames_ClearGlobal = {}
	tStoneGames_ClearGlobal["Type"] = 6
	tStoneGames_ClearGlobal["TimeType"] = 4
	tStoneGames_ClearGlobal["Multiple"] = {}
	tStoneGames_ClearGlobal["Multiple"][1] = "00:00 00:05"
	tStoneGames_ClearGlobal["Func"] = StoneGames_ClearGlobal
table.insert(tSystemTime_InitialData,tStoneGames_ClearGlobal)
--重置动态码标识
--每日清理动态表
	tStoneGames_ClearGlobalIdentification = {}
	tStoneGames_ClearGlobalIdentification["Type"] = 6
	tStoneGames_ClearGlobalIdentification["TimeType"] = 4
	tStoneGames_ClearGlobalIdentification["Multiple"] = {}
	tStoneGames_ClearGlobalIdentification["Multiple"][1] = "00:06 00:10"
	tStoneGames_ClearGlobalIdentification["Func"] = StoneGames_ClearGlobalIdentification
table.insert(tSystemTime_InitialData,tStoneGames_ClearGlobalIdentification)