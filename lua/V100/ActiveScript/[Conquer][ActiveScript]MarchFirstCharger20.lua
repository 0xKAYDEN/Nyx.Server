------------------------------------------------------------------------------------
--Name：        200211[英文征服][活动脚本]3月首充（3.3-3.31）
--Creator:      茅志伟
--Created:      2020/02/11
------------------------------------------------------------------------------------
-- 命名前缀 ：tMarchFirstCharger20_

-- lua.ini = 41711
-- 41711 = V100\ActiveScript\[Conquer][ActiveScript]MarchFirstCharger20.lua
-- 41711 = V100\活动脚本\[征服][活动脚本]3月首充（3.3-3.31）.lua

-- LogId = 12001851




local tMarchFirstCharger20_Pack = {}
	-- ===30天时效TaleofSwordsman礼包
	-- ===索引:tMarchFirstCharger20_Pack[3329657]
	-- ===删除:3329657,1
	-- ===EMoneyLog: 1000,1494
	-- ===
	tMarchFirstCharger20_Pack[3329657] = {}
	tMarchFirstCharger20_Pack[3329657]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329657]["EmoneyLog"] = "1000	1494	0	0	1	"
	tMarchFirstCharger20_Pack[3329657]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329657]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329657]["DeleteItem"][1]["Id"] = 3329657 -- 【库】 3329657 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329657]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329657]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329657]["RewardItem"][1]["Id"] = 195515 -- TaleofSwordsman[195515][属性:0][叠加:0][金币:0], 【表格】30天时效赠品TaleofSwordsman*1（赠）
	tMarchFirstCharger20_Pack[3329657]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TaleofSwordsman（赠）*1
	tMarchFirstCharger20_Pack[3329657]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329657]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329657]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329658] = {}
	-- ===特惠+3赤炼石礼包
	-- ===索引: tMarchFirstCharger20_Pack[3329658]
	-- ===删除:3329658,1
	-- ===EMoneyLog: 1000,1495
	-- ===
	tMarchFirstCharger20_Pack[3329658]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMarchFirstCharger20_Pack[3329658]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329658]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329658]["DeleteItem"][1]["Id"] = 3329658 -- 【库】 3329658 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329658]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329658]["EmoneyLog"] = "1000	1495	0	0	1	"
	-- ‘+3赤炼石*2（赠） - 65%
	tMarchFirstCharger20_Pack[3329658][1] = {}
	tMarchFirstCharger20_Pack[3329658][1]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329658][1]["ItemChance"] = 6500
	tMarchFirstCharger20_Pack[3329658][1]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329658][1]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329658][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*2（赠）
	tMarchFirstCharger20_Pack[3329658][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tMarchFirstCharger20_Pack[3329658][1]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329658][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329658][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+3赤炼石*3（赠） - 35%
	tMarchFirstCharger20_Pack[3329658][2] = {}
	tMarchFirstCharger20_Pack[3329658][2]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329658][2]["ItemChance"] = 3500
	tMarchFirstCharger20_Pack[3329658][2]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329658][2]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329658][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*3（赠）
	tMarchFirstCharger20_Pack[3329658][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +3Stone（赠）*3
	tMarchFirstCharger20_Pack[3329658][2]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329658][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329658][2]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329659] = {}
	-- ===黄色神纹碎片礼包
	-- ===索引: tMarchFirstCharger20_Pack[3329659]
	-- ===删除:3329659,1
	-- ===EMoneyLog: 1000,1496
	-- ===
	-- ===
	tMarchFirstCharger20_Pack[3329659]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329659]["EmoneyLog"] = "1000	1496	0	0	1	"
	tMarchFirstCharger20_Pack[3329659]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329659]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329659]["DeleteItem"][1]["Id"] = 3329659 -- 【库】 3329659 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329659]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329659]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329659]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片*40（赠）
	tMarchFirstCharger20_Pack[3329659]["RewardItem"][1]["Attr"] = "0 40" -- YellowRuneFragment*40（[错误]物品数量超10个）
	tMarchFirstCharger20_Pack[3329659]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329659]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329659]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329660] = {}
	-- ===炼魂石礼包
	-- ===索引: tMarchFirstCharger20_Pack[3329660]
	-- ===删除:3329660,1 
	-- ===EMoneyLog: 1000,1497
	-- ===
	tMarchFirstCharger20_Pack[3329660]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329660]["EmoneyLog"] = "1000	1497	0	0	1	"
	tMarchFirstCharger20_Pack[3329660]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329660]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329660]["DeleteItem"][1]["Id"] = 3329660 -- 【库】 3329660 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329660]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329660]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329660]["RewardItem"][1]["Id"] = 3321107 -- SpiritStone[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石*5（赠）
	tMarchFirstCharger20_Pack[3329660]["RewardItem"][1]["Attr"] = "0 5" -- SpiritStone*5
	tMarchFirstCharger20_Pack[3329660]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329660]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329660]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329661] = {}
	-- ===爵位贡献升级礼盒
	-- ===索引: tMarchFirstCharger20_Pack[3329661][1]
	-- ===删除:3329661,1 
	-- ===EMoneyLog: 1000,1498
	-- ===
	tMarchFirstCharger20_Pack[3329661][1] = {}
	tMarchFirstCharger20_Pack[3329661][1]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329661][1]["EmoneyLog"] = "1000	1498	0	0	1	"
	tMarchFirstCharger20_Pack[3329661][1]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329661][1]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329661][1]["DeleteItem"][1]["Id"] = 3329661 -- 【库】 3329661 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329661][1]["RewardDonate"] = {}
	tMarchFirstCharger20_Pack[3329661][1]["RewardDonate"]["Value"] = 5000000 -- 贡献, 【需求】500万爵位贡献值
	tMarchFirstCharger20_Pack[3329661][1]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329661][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329661][1]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329661][2] = {}
	-- ===爵位贡献升级礼盒
	-- ===索引: tMarchFirstCharger20_Pack[3329661][2]
	-- ===删除:3329661,1 
	-- ===EMoneyLog: 1000,1498
	-- ===
	tMarchFirstCharger20_Pack[3329661][2]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329661][2]["EmoneyLog"] = "1000	1498	0	0	1	"
	tMarchFirstCharger20_Pack[3329661][2]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329661][2]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329661][2]["DeleteItem"][1]["Id"] = 3329661 -- 【库】 3329661 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329661][2]["RewardDonate"] = {}
	tMarchFirstCharger20_Pack[3329661][2]["RewardDonate"]["Value"] = 10000000 -- 贡献, 【需求】1000万爵位贡献值
	tMarchFirstCharger20_Pack[3329661][2]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329661][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329661][2]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFirstCharger20_Pack[3329662] = {}
	-- ===新觉醒版本预热首充礼包
	-- ===索引: tMarchFirstCharger20_Pack[3329662][1]
	-- ===删除:3329662,1
	-- ===EMoneyLog: 1000,1499
	-- ===
	-- ===
	tMarchFirstCharger20_Pack[3329662][1] = {}
	tMarchFirstCharger20_Pack[3329662][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tMarchFirstCharger20_Pack[3329662][1]["DeleteItem"] = {}
	tMarchFirstCharger20_Pack[3329662][1]["DeleteItem"][1] = {}
	tMarchFirstCharger20_Pack[3329662][1]["DeleteItem"][1]["Id"] = 3329662 -- 【库】 3329662 【库里没有该物品】[属性:]
	tMarchFirstCharger20_Pack[3329662][1]["LogId"] = 12001851
	tMarchFirstCharger20_Pack[3329662][1]["EmoneyLog"] = "1000	1499	0	0	1	"
	-- 666天石（赠） - 20%
	tMarchFirstCharger20_Pack[3329662][1][1] = {}
	tMarchFirstCharger20_Pack[3329662][1][1]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329662][1][1]["ItemChance"] = 2000
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEMoneyMono"] = {}
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEMoneyMono"]["Value"] = 666 -- 天石（赠）, 【需求】666天石（赠）
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1500"
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329662][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*3 - 35%
	tMarchFirstCharger20_Pack[3329662][1][2] = {}
	tMarchFirstCharger20_Pack[3329662][1][2]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329662][1][2]["ItemChance"] = 3500
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardItem"] = {}
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardItem"][1] = {}
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329662][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力 - 35%
	tMarchFirstCharger20_Pack[3329662][1][3] = {}
	tMarchFirstCharger20_Pack[3329662][1][3]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329662][1][3]["ItemChance"] = 3500
	tMarchFirstCharger20_Pack[3329662][1][3]["RewardStrengthValue"] = {}
	tMarchFirstCharger20_Pack[3329662][1][3]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力
	tMarchFirstCharger20_Pack[3329662][1][3]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329662][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329662][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1万金币 - 10%
	tMarchFirstCharger20_Pack[3329662][1][4] = {}
	tMarchFirstCharger20_Pack[3329662][1][4]["RandomItemChanceType"] = 2
	tMarchFirstCharger20_Pack[3329662][1][4]["ItemChance"] = 1000
	tMarchFirstCharger20_Pack[3329662][1][4]["RewardMoney"] = {}
	tMarchFirstCharger20_Pack[3329662][1][4]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】1万金币
	tMarchFirstCharger20_Pack[3329662][1][4]["RewardEffect"] = {}
	tMarchFirstCharger20_Pack[3329662][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFirstCharger20_Pack[3329662][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tMarchFirstCharger20_Pack[3329662][1][4]["Gold"] = true


local tMarchFirstCharger20_Data = {}
tMarchFirstCharger20_Data["EMoneyNum"] = 89

-- 等级限制
tMarchFirstCharger20_Data["NewLevel"] = 70
tMarchFirstCharger20_Data["NewMeto"] = 0
	


local tMarchFirstCharger20_Log = {}
tMarchFirstCharger20_Log["EMonyeLog"] = {} 
tMarchFirstCharger20_Log["EMonyeLog"][1] = "1000	1501	89	89	1	"   -- 升级爵位捐献礼包


	
	
	
---------------------------------------------------------逻辑部分
-- 天石升级礼包逻辑
function MarchFirstCharger20_BuyPack(nMarchFirstCharger20_ItemId,nMarchFirstCharger20_Num)
	if not Item_ChkMulItem(nMarchFirstCharger20_ItemId,nMarchFirstCharger20_ItemId,1) then
		return
	end
	-- 等级不足
	local nMarchFirstCharger20_NewLevel = tMarchFirstCharger20_Data["NewLevel"]
	local nMarchFirstCharger20_NewMete = tMarchFirstCharger20_Data["NewMeto"]
	if not User_JudgeLevelAndMetempsychosis(nMarchFirstCharger20_NewLevel,nMarchFirstCharger20_NewMete) then
		Sys_MsgBox(tMarchFirstCharger20_Text["Sys_MsgBox"]["NoLeve"])
		return
	end
	if nMarchFirstCharger20_Num == 1 then 
		RewardTemplate_UseItemAndMsg(tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId][1])
		return
	elseif nMarchFirstCharger20_Num == 2 then 
		local nMarchFirstCharger20_EMoney = tMarchFirstCharger20_Data["EMoneyNum"]
		local nMarchFirstCharger20_UserEMoney = Get_UserEMoney()
		if nMarchFirstCharger20_EMoney > nMarchFirstCharger20_UserEMoney then     --判断玩家天石是否足够
			Sys_MsgBox(tMarchFirstCharger20_Text["Sys_MsgBox"]["NotEnoughEMoney"])
			return 
		end 
		if User_AddEMoney(-nMarchFirstCharger20_EMoney) then   --判断是否成功扣除天石
			local tMarchFirstCharger20_BuyLog = tMarchFirstCharger20_Log["EMonyeLog"][1]
			Sys_SaveEmoneyBuy(tMarchFirstCharger20_BuyLog)
			RewardTemplate_UseItemAndMsg(tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId][2])
			return
		end 
	end 
end 




------------------------------------------------对白
-- 爵位捐献礼包
tItemFace[3329661] = 833
tItem[3329661] = tItem[3329661] or {}
tItem[3329661]["DialogueText"] = tMarchFirstCharger20_Text[3329661]
tItem[3329661]["Text1-1"] = {111}
tItem[3329661]["tOption1-1"] = {111,112}
tItem[3329661]["OptionPoint111"] = "2-1"
tItem[3329661]["OptionFunc112"] = "MarchFirstCharger20_BuyPack</N>3329661</N>1"

tItem[3329661]["Text2-1"] = {211}
tItem[3329661]["tOption2-1"] = {211,212}
tItem[3329661]["OptionFunc211"] = "MarchFirstCharger20_BuyPack</N>3329661</N>2"


---------------------------------------物品使用逻辑
-- 一般礼包
tItem[3329657] = tItem[3329657] or {}
tItem[3329657]["Function"] = function(nMarchFirstCharger20_ItemId,sMarchFirstCharger20_ItemName)
	local bMarchFirstCharger20_Judge = TermsOfUse_Main(nMarchFirstCharger20_ItemId,tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId])
	if not bMarchFirstCharger20_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId])
end
tItem[3329659] = tItem[3329657] or {}
tItem[3329660] = tItem[3329657] or {}
-- 随机奖励礼包
tItem[3329658] = tItem[3329658] or {}
tItem[3329658]["Function"] = function(nMarchFirstCharger20_ItemId,sMarchFirstCharger20_ItemName)
	local nMarchFirstCharger20_Space = 5  --假背包空间判断，因为礼包介绍里最多给五个
	if not User_CheckLeftSpace(nMarchFirstCharger20_Space) then
		User_TalkChannel2005(string.format(tMarchFirstCharger20_Text["Sys_MsgBox"]["NotSpace"],nMarchFirstCharger20_Space))
		return
	end 
	local bMarchFirstCharger20_Judge = TermsOfUse_Main(nMarchFirstCharger20_ItemId,tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId])
	if not bMarchFirstCharger20_Judge then
		return
	end
	RewardTemplate_RandomReward(tMarchFirstCharger20_Pack,nMarchFirstCharger20_ItemId)
	local sMarchFirstCharger20_Text = tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId]["EmoneyLog"]
	Sys_SaveEmoneyBuy(sMarchFirstCharger20_Text)
	
end

tItem[3329662] = tItem[3329662] or {}
tItem[3329662]["Function"] = function(nMarchFirstCharger20_ItemId,sMarchFirstCharger20_ItemName)
	local bMarchFirstCharger20_Judge = TermsOfUse_Main(nMarchFirstCharger20_ItemId,tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId])
	if not bMarchFirstCharger20_Judge then
		return
	end
	-- 判断金币上限
	local nMoney = tMarchFirstCharger20_Pack[3329662][1][4]["RewardMoney"]["Value"]
	if not User_CanPutMoney2Bag(nMoney) then 
		Sys_MsgBox(tMarchFirstCharger20_Text["Sys_MsgBox"]["MoneyFull"])
		return
	end 
	--判断赠点上限
	if Get_UserMonoEMoney() + tMarchFirstCharger20_Pack[3329662][1][1]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tMarchFirstCharger20_Text["Sys_MsgBox"]["CPMono"])
		return
	end	
	RewardTemplate_RandomReward(tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId],1)
	local sMarchFirstCharger20_Text = tMarchFirstCharger20_Pack[nMarchFirstCharger20_ItemId][1]["EmoneyLog"]
	Sys_SaveEmoneyBuy(sMarchFirstCharger20_Text)
end
