------------------------------------------------------------------------------------
--Name：        191205[英文征服][活动脚本]1月新年首充（1.16-1.29）
--Creator:      茅志伟
--Created:      2019/12/05
------------------------------------------------------------------------------------
-- 命名前缀 ：tJanuaryFirstCharger20_

-- Lua.ini = 41656
-- 41656 = V100\ActiveScript\[Conquer][ActiveScript]JanuaryFirstCharger20.lua
-- 41656 = V100\活动脚本\[征服][活动脚本]1月新年首充（1.16-1.29）.lua

-- LogId = 12001772
-- Global  区分不同服务器   data0 0普通服 1绿色服   


local tJanuaryFirstCharger20_Data = {}
tJanuaryFirstCharger20_Data["EMoneyNum"]  = 89

tJanuaryFirstCharger20_Data["GlobalId"] = 54012



local tJanuaryFirstCharger20_Pack = {}
	-- ===30天时效FlameDance礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327161]
	-- ===删除:3327161,1
	-- ===EMoneyLog: 350,22951
	-- ===
	tJanuaryFirstCharger20_Pack[3327161] = {}
	tJanuaryFirstCharger20_Pack[3327161]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327161]["EmoneyLog"] = "350	22951	0	0	1	"
	tJanuaryFirstCharger20_Pack[3327161]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327161]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327161]["DeleteItem"][1]["Id"] = 3327161 -- 【库】30-dayFlameDancePack[属性:9]
	tJanuaryFirstCharger20_Pack[3327161]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327161]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327161]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】30天时效赠品FlameDance*1（赠）
	tJanuaryFirstCharger20_Pack[3327161]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FlameDance（赠）*1
	tJanuaryFirstCharger20_Pack[3327161]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327161]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327161]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327162] = {}
	-- ===特惠+3赤炼石礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327162]
	-- ===删除:3327162,1
	-- ===EMoneyLog: 350,22952
	-- ===
	tJanuaryFirstCharger20_Pack[3327162]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJanuaryFirstCharger20_Pack[3327162]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327162]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327162]["DeleteItem"][1]["Id"] = 3327162 -- 【库】+3StoneLuckyPack[属性:9]
	tJanuaryFirstCharger20_Pack[3327162]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327162]["EmoneyLog"] = "350	22952	0	0	1	"
	-- ‘+3赤炼石*2（赠） - 65%
	tJanuaryFirstCharger20_Pack[3327162][1] = {}
	tJanuaryFirstCharger20_Pack[3327162][1]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327162][1]["ItemChance"] = 6500
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*2（赠）
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327162][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+3赤炼石*3（赠） - 35%
	tJanuaryFirstCharger20_Pack[3327162][2] = {}
	tJanuaryFirstCharger20_Pack[3327162][2]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327162][2]["ItemChance"] = 3500
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*3（赠）
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +3Stone（赠）*3
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327162][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327163] = {}
	-- ===黄色神纹碎片礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327163]
	-- ===删除:3327163,1
	-- ===EMoneyLog: 350,22953
	-- ===
	-- ===
	tJanuaryFirstCharger20_Pack[3327163]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327163]["EmoneyLog"] = "350	22953	0	0	1	"
	tJanuaryFirstCharger20_Pack[3327163]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327163]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327163]["DeleteItem"][1]["Id"] = 3327163 -- 【库】YellowRuneFragmentPack[属性:9]
	tJanuaryFirstCharger20_Pack[3327163]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327163]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327163]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片*20（赠）
	tJanuaryFirstCharger20_Pack[3327163]["RewardItem"][1]["Attr"] = "0 20" -- YellowRuneFragment*20（[错误]物品数量超10个）
	tJanuaryFirstCharger20_Pack[3327163]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327163]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327163]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327164] = {}
	-- ===龙鳞果礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327164]
	-- ===删除:3327164,1 
	-- ===EMoneyLog: 350,22954
	-- ===
	tJanuaryFirstCharger20_Pack[3327164]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327164]["EmoneyLog"] = "350	22954	0	0	1	"
	tJanuaryFirstCharger20_Pack[3327164]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327164]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327164]["DeleteItem"][1]["Id"] = 3327164 -- 【库】DragonFruitPack[属性:9]
	tJanuaryFirstCharger20_Pack[3327164]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327164]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327164]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3（赠）
	tJanuaryFirstCharger20_Pack[3327164]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tJanuaryFirstCharger20_Pack[3327164]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327164]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327164]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327165] = {}
	-- ===爵位贡献升级礼盒
	-- ===索引: tJanuaryFirstCharger20_Pack[3327165][1]
	-- ===删除:3327165,1 
	-- ===EMoneyLog: 350,22955
	-- ===
	tJanuaryFirstCharger20_Pack[3327165][1] = {}
	tJanuaryFirstCharger20_Pack[3327165][1]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327165][1]["EmoneyLog"] = "350	22955	0	0	1	"
	tJanuaryFirstCharger20_Pack[3327165][1]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327165][1]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327165][1]["DeleteItem"][1]["Id"] = 3327165 -- 【库】ContributionUpgradePack[属性:9]
	tJanuaryFirstCharger20_Pack[3327165][1]["RewardDonate"] = {}
	tJanuaryFirstCharger20_Pack[3327165][1]["RewardDonate"]["Value"] = 5000000 -- 贡献, 【需求】500万爵位贡献值
	tJanuaryFirstCharger20_Pack[3327165][1]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327165][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327165][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327165][2] = {}
	-- ===爵位贡献升级礼盒
	-- ===索引: tJanuaryFirstCharger20_Pack[3327165][2]
	-- ===删除:3327165,1 
	-- ===EMoneyLog: 350,22955
	-- ===
	tJanuaryFirstCharger20_Pack[3327165][2]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327165][2]["EmoneyLog"] = "350	22955	0	0	1	"
	tJanuaryFirstCharger20_Pack[3327165][2]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327165][2]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327165][2]["DeleteItem"][1]["Id"] = 3327165 -- 【库】ContributionUpgradePack[属性:9]
	tJanuaryFirstCharger20_Pack[3327165][2]["RewardDonate"] = {}
	tJanuaryFirstCharger20_Pack[3327165][2]["RewardDonate"]["Value"] = 10000000 -- 贡献, 【需求】1000万爵位贡献值
	tJanuaryFirstCharger20_Pack[3327165][2]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327165][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327165][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327166] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327166][1]
	-- ===删除:3327166,1
	-- ===EMoneyLog: 350,22956
	-- ===
	-- ===
	tJanuaryFirstCharger20_Pack[3327166][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJanuaryFirstCharger20_Pack[3327166][1]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1]["DeleteItem"][1]["Id"] = 3327166 -- 【库】AnimaSurprisePack[属性:9]
	tJanuaryFirstCharger20_Pack[3327166][1]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327166][1]["EmoneyLog"] = "350	22956	0	0	1	"
	-- 百炼天机果（赠） - 15%
	tJanuaryFirstCharger20_Pack[3327166][1][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][1][1]["ItemChance"] = 1500
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠（赠） - 35%
	tJanuaryFirstCharger20_Pack[3327166][1][2] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][1][2]["ItemChance"] = 3500
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠（赠）
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tJanuaryFirstCharger20_Pack[3327166][1][3] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][1][3]["ItemChance"] = 5000
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanuaryFirstCharger20_Pack[3327166][2] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tJanuaryFirstCharger20_Pack[3327166][2]
	-- ===删除:3327166,1
	-- ===EMoneyLog: 350,22956
	-- ===
	-- ===
	tJanuaryFirstCharger20_Pack[3327166][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJanuaryFirstCharger20_Pack[3327166][2]["DeleteItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2]["DeleteItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][2]["DeleteItem"][1]["Id"] = 3327166 -- 【库】AnimaSurprisePack[属性:9]
	tJanuaryFirstCharger20_Pack[3327166][2]["LogId"] = 12001772
	tJanuaryFirstCharger20_Pack[3327166][2]["EmoneyLog"] = "350	22956	0	0	1	"
	-- 百炼天机果（赠） - 15%
	tJanuaryFirstCharger20_Pack[3327166][2][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][2][1]["ItemChance"] = 1500
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 回气丹*2（赠） - 35%
	tJanuaryFirstCharger20_Pack[3327166][2][2] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][2][2]["ItemChance"] = 3500
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹*2（赠）
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardItem"][1]["Attr"] = "0 2 3" -- Vital~Pill（赠）*2
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tJanuaryFirstCharger20_Pack[3327166][2][3] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RandomItemChanceType"] = 2
	tJanuaryFirstCharger20_Pack[3327166][2][3]["ItemChance"] = 5000
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardItem"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardItem"][1] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardEffect"] = {}
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanuaryFirstCharger20_Pack[3327166][2][3]["RewardEffect"]["Effect"] = "angelwing"



local tJanuaryFirstCharger20_Log = {}
tJanuaryFirstCharger20_Log["EMonyeLog"] = {} 
tJanuaryFirstCharger20_Log["EMonyeLog"][1] = "1000	1414	-89	-89	1	"   -- 消耗1级圣灵果





---------------------------------------------------------逻辑部分
-- 天石升级礼包逻辑
function JanuaryFirstCharger20_BuyPack(nJanuaryFirstCharger20_ItemId,nJanuaryFirstCharger20_Num)
	if not Item_ChkMulItem(nJanuaryFirstCharger20_ItemId,nJanuaryFirstCharger20_ItemId,1) then
		return
	end
	
	if nJanuaryFirstCharger20_Num == 1 then 
		RewardTemplate_UseItemAndMsg(tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][1])
		return
	elseif nJanuaryFirstCharger20_Num == 2 then 
		local nJanuaryFirstCharger20_EMoney = tJanuaryFirstCharger20_Data["EMoneyNum"]
		local nJanuaryFirstCharger20_UserEMoney = Get_UserEMoney()
		if nJanuaryFirstCharger20_EMoney > nJanuaryFirstCharger20_UserEMoney then     --判断玩家天石是否足够
			Sys_MsgBox(tJanuaryFirstCharger20_Text["Sys_MsgBox"]["NotEnoughEMoney"])
			return 
		end 
		if User_AddEMoney(-nJanuaryFirstCharger20_EMoney) then   --判断是否成功扣除天石
			local tJanuaryFirstCharger20_BuyLog = tJanuaryFirstCharger20_Log["EMonyeLog"][1]
			Sys_SaveEmoneyBuy(tJanuaryFirstCharger20_BuyLog)
			RewardTemplate_UseItemAndMsg(tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][2])
			return
		end 
	end 
end 

-- 区分服务器礼包
function JanuaryFirstCharger20_ServerPack(nJanuaryFirstCharger20_ItemId)
	local nJanuaryFirstCharger20_GlobalId = tJanuaryFirstCharger20_Data["GlobalId"]
	local nJanuaryFirstCharger20_GloData0 = Get_SysDynaGlobalData(nJanuaryFirstCharger20_GlobalId,0)
	
	if nJanuaryFirstCharger20_GloData0 == 0 then 
		local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nJanuaryFirstCharger20_ItemId,tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][1])
		if not bJanuaryFirstCharger20_Judge then
			return
		end
		RewardTemplate_RandomReward(tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId],1)
		local sJanuaryFirstCharger20_Text = tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][1]["EmoneyLog"]
		Sys_SaveEmoneyBuy(sJanuaryFirstCharger20_Text)
	else
		local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nJanuaryFirstCharger20_ItemId,tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][2])
		if not bJanuaryFirstCharger20_Judge then
			return
		end
		RewardTemplate_RandomReward(tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId],2)
		local sJanuaryFirstCharger20_Text = tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId][2]["EmoneyLog"]
		Sys_SaveEmoneyBuy(sJanuaryFirstCharger20_Text)
	end 
end 









------------------------------------------------对白
-- 五星人物外套可选包
tItemFace[3327165] = 833
tItem[3327165] = tItem[3327165] or {}
tItem[3327165]["DialogueText"] = tJanuaryFirstCharger20_Text[3327165]
tItem[3327165]["Text1-1"] = {111}
tItem[3327165]["tOption1-1"] = {111,112}
tItem[3327165]["OptionPoint111"] = "2-1"
tItem[3327165]["OptionFunc112"] = "JanuaryFirstCharger20_BuyPack</N>3327165</N>1"

tItem[3327165]["Text2-1"] = {211}
tItem[3327165]["tOption2-1"] = {211,212}
tItem[3327165]["OptionFunc211"] = "JanuaryFirstCharger20_BuyPack</N>3327165</N>2"

---------------------------------------物品使用逻辑
-- 一般礼包
tItem[3327161] = tItem[3327161] or {}
tItem[3327161]["Function"] = function(nJanuaryFirstCharger20_ItemId,sJanuaryFirstCharger20_ItemName)
	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nJanuaryFirstCharger20_ItemId,tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId])
end
tItem[3327163] = tItem[3327161] or {}
tItem[3327164] = tItem[3327161] or {}
-- 随机奖励礼包
tItem[3327162] = tItem[3327162] or {}
tItem[3327162]["Function"] = function(nJanuaryFirstCharger20_ItemId,sJanuaryFirstCharger20_ItemName)
	local bJanuaryFirstCharger20_Judge = TermsOfUse_Main(nJanuaryFirstCharger20_ItemId,tJanuaryFirstCharger20_Pack[nJanuaryFirstCharger20_ItemId])
	if not bJanuaryFirstCharger20_Judge then
		return
	end
	RewardTemplate_RandomReward(tJanuaryFirstCharger20_Pack,nJanuaryFirstCharger20_ItemId)
	local sJanuaryFirstCharger20_Text = tJanuaryFirstCharger20_Pack[3327162]["EmoneyLog"]
	Sys_SaveEmoneyBuy(sJanuaryFirstCharger20_Text)
	
end

tItem[3327166] = tItem[3327166] or {}
tItem[3327166]["Function"] = function(nItemId,sItemName)
	JanuaryFirstCharger20_ServerPack(nItemId)
end