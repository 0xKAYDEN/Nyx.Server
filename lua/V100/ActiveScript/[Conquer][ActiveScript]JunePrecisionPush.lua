------------------------------------------------------------------------------------
--Name：            200507[英文征服][活动脚本]6月精准营销（6.4-6.30）
--Creator:      林嘉鑫
--Created:     2020-05-07
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tJunePrecisionPush_Pack = {}
	tJunePrecisionPush_Pack[3330845] = {}
	-- ===FloodDemonBox特惠礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330845]
	-- ===删除: 3330845,1
	-- ===EmoneyLog: 350,23171
	tJunePrecisionPush_Pack[3330845]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330845]["EmoneyLog"] = "350	23171	1350	1350	1	"
	tJunePrecisionPush_Pack[3330845]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330845]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330845]["DeleteItem"][1]["Id"] = 3330845
	tJunePrecisionPush_Pack[3330845]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330845]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330845]["RewardItem"][1]["Id"] = 3000274
	tJunePrecisionPush_Pack[3330845]["RewardItem"][1]["Attr"] = "0 15"
	tJunePrecisionPush_Pack[3330845]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330845]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330845]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330846] = {}
	-- ===DemonBox特惠礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330846]
	-- ===删除: 3330846,1
	-- ===EmoneyLog: 350,23172
	tJunePrecisionPush_Pack[3330846]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330846]["EmoneyLog"] = "350	23172	140	140	1	"
	tJunePrecisionPush_Pack[3330846]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330846]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330846]["DeleteItem"][1]["Id"] = 3330846
	tJunePrecisionPush_Pack[3330846]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330846]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330846]["RewardItem"][1]["Id"] = 3000272
	tJunePrecisionPush_Pack[3330846]["RewardItem"][1]["Attr"] = "0 15"
	tJunePrecisionPush_Pack[3330846]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330846]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330846]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330847] = {}
	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330847]
	-- ===删除: 3330847,1
	-- ===EmoneyLog: 350,23173
	tJunePrecisionPush_Pack[3330847]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330847]["EmoneyLog"] = "350	23173	1499	1499	1	"
	tJunePrecisionPush_Pack[3330847]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330847]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330847]["DeleteItem"][1]["Id"] = 3330847
	tJunePrecisionPush_Pack[3330847]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330847]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330847]["RewardItem"][1]["Id"] = 3330848
	tJunePrecisionPush_Pack[3330847]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tJunePrecisionPush_Pack[3330847]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330847]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330847]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330848] = {}
	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330848][1]
	-- ===删除: 3330848,1
	tJunePrecisionPush_Pack[3330848][1] = {}
	tJunePrecisionPush_Pack[3330848][1]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330848][1]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330848][1]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330848][1]["RewardItem"][1]["Id"] = 730006
	tJunePrecisionPush_Pack[3330848][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tJunePrecisionPush_Pack[3330848][1]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330848][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330848][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330848][2]
	-- ===删除: 3330848,1
	tJunePrecisionPush_Pack[3330848][2] = {}
	tJunePrecisionPush_Pack[3330848][2]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330848][2]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330848][2]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330848][2]["RewardItem"][1]["Id"] = 3009002
	tJunePrecisionPush_Pack[3330848][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tJunePrecisionPush_Pack[3330848][2]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330848][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330848][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330848][3]
	-- ===删除: 3330848,1
	tJunePrecisionPush_Pack[3330848][3] = {}
	tJunePrecisionPush_Pack[3330848][3]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330848][3]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330848][3]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330848][3]["RewardItem"][1]["Id"] = 3306370
	tJunePrecisionPush_Pack[3330848][3]["RewardItem"][1]["Attr"] = "0 30"
	tJunePrecisionPush_Pack[3330848][3]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330848][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330848][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330848][4]
	-- ===删除: 3330848,1
	tJunePrecisionPush_Pack[3330848][4] = {}
	tJunePrecisionPush_Pack[3330848][4]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330848][4]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330848][4]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330848][4]["RewardItem"][1]["Id"] = 4050001
	tJunePrecisionPush_Pack[3330848][4]["RewardItem"][1]["Attr"] = "0 500 3"
	tJunePrecisionPush_Pack[3330848][4]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330848][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330848][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330848][5]
	-- ===删除: 3330848,1
	tJunePrecisionPush_Pack[3330848][5] = {}
	tJunePrecisionPush_Pack[3330848][5]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330848][5]["RewardStrengthValue"] = {}
	tJunePrecisionPush_Pack[3330848][5]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tJunePrecisionPush_Pack[3330848][5]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330848][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330848][5]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330849] = {}
	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330849]
	-- ===删除: 3330849,1
	-- ===EmoneyLog: 350,23174
	tJunePrecisionPush_Pack[3330849]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330849]["EmoneyLog"] = "350	23174	10999	10999	1	"
	tJunePrecisionPush_Pack[3330849]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330849]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330849]["DeleteItem"][1]["Id"] = 3330849
	tJunePrecisionPush_Pack[3330849]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330849]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330849]["RewardItem"][1]["Id"] = 3330850
	tJunePrecisionPush_Pack[3330849]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tJunePrecisionPush_Pack[3330849]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330849]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330849]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330850] = {}
	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330850][1]
	-- ===删除: 3330850,1
	tJunePrecisionPush_Pack[3330850][1] = {}
	tJunePrecisionPush_Pack[3330850][1]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330850][1]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330850][1]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330850][1]["RewardItem"][1]["Id"] = 730008
	tJunePrecisionPush_Pack[3330850][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tJunePrecisionPush_Pack[3330850][1]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330850][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330850][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330850][2]
	-- ===删除: 3330850,1
	tJunePrecisionPush_Pack[3330850][2] = {}
	tJunePrecisionPush_Pack[3330850][2]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330850][2]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330850][2]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330850][2]["RewardItem"][1]["Id"] = 3009003
	tJunePrecisionPush_Pack[3330850][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tJunePrecisionPush_Pack[3330850][2]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330850][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330850][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330850][3]
	-- ===删除: 3330850,1
	tJunePrecisionPush_Pack[3330850][3] = {}
	tJunePrecisionPush_Pack[3330850][3]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330850][3]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330850][3]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330850][3]["RewardItem"][1]["Id"] = 3311748
	tJunePrecisionPush_Pack[3330850][3]["RewardItem"][1]["Attr"] = "0 5"
	tJunePrecisionPush_Pack[3330850][3]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330850][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330850][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330850][4]
	-- ===删除: 3330850,1
	tJunePrecisionPush_Pack[3330850][4] = {}
	tJunePrecisionPush_Pack[3330850][4]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330850][4]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330850][4]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330850][4]["RewardItem"][1]["Id"] = 4060001
	tJunePrecisionPush_Pack[3330850][4]["RewardItem"][1]["Attr"] = "0 1000 3"
	tJunePrecisionPush_Pack[3330850][4]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330850][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330850][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330850][5]
	-- ===删除: 3330850,1
	tJunePrecisionPush_Pack[3330850][5] = {}
	tJunePrecisionPush_Pack[3330850][5]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330850][5]["RewardStrengthValue"] = {}
	tJunePrecisionPush_Pack[3330850][5]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10000气力值
	tJunePrecisionPush_Pack[3330850][5]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330850][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330850][5]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330851] = {}
	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330851]
	-- ===删除: 3330851,1
	-- ===EmoneyLog: 350,23175
	tJunePrecisionPush_Pack[3330851]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330851]["EmoneyLog"] = "350	23175	14999	14999	1	"
	tJunePrecisionPush_Pack[3330851]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330851]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330851]["DeleteItem"][1]["Id"] = 3330851
	tJunePrecisionPush_Pack[3330851]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330851]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330851]["RewardItem"][1]["Id"] = 3330064
	tJunePrecisionPush_Pack[3330851]["RewardItem"][1]["Attr"] = "0 5"
	tJunePrecisionPush_Pack[3330851]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330851]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330851]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330852] = {}
	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330852]
	-- ===删除: 3330852,1
	-- ===EmoneyLog: 350,23176
	tJunePrecisionPush_Pack[3330852]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330852]["EmoneyLog"] = "350	23176	3999	3999	1	"
	tJunePrecisionPush_Pack[3330852]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330852]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330852]["DeleteItem"][1]["Id"] = 3330852
	tJunePrecisionPush_Pack[3330852]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330852]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330852]["RewardItem"][1]["Id"] = 3330063
	tJunePrecisionPush_Pack[3330852]["RewardItem"][1]["Attr"] = "0 10"
	tJunePrecisionPush_Pack[3330852]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330852]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330852]["RewardEffect"]["Effect"] = "angelwing"


	tJunePrecisionPush_Pack[3330853] = {}
	-- ===高级珍宝自选礼盒
	-- ===索引: tJunePrecisionPush_Pack[3330853]
	-- ===删除: 3330853,1
	-- ===EmoneyLog: 350,23177
	tJunePrecisionPush_Pack[3330853]["LogId"] = 12001987
	tJunePrecisionPush_Pack[3330853]["EmoneyLog"] = "350	23177	888	888	1	"
	tJunePrecisionPush_Pack[3330853]["DeleteItem"] = {}
	tJunePrecisionPush_Pack[3330853]["DeleteItem"][1] = {}
	tJunePrecisionPush_Pack[3330853]["DeleteItem"][1]["Id"] = 3330853
	tJunePrecisionPush_Pack[3330853]["RewardItem"] = {}
	tJunePrecisionPush_Pack[3330853]["RewardItem"][1] = {}
	tJunePrecisionPush_Pack[3330853]["RewardItem"][1]["Id"] = 3329979
	tJunePrecisionPush_Pack[3330853]["RewardItem"][1]["Attr"] = "0 100"
	tJunePrecisionPush_Pack[3330853]["RewardEffect"] = {}
	tJunePrecisionPush_Pack[3330853]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunePrecisionPush_Pack[3330853]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
-- 第一选择
function JunePrecisionPush_FirstChoose(nItemId,nFirst)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local tOption = {}
	for i = 1,5 do
		if i ~= nFirst then
			local nNum = 210 + i
			tItem[nItemId]["Option"..nNum] = tJunePrecisionPush_Text[nItemId][i]
			tItem[nItemId]["OptionFunc"..nNum]="JunePrecisionPush_SecondChoose</N>"..nItemId.."</N>"..nFirst.."</N>"..i
			table.insert(tOption,nNum)
		end
	end
	tItem[nItemId]["tOption2-1"] = tOption
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 第二选择
function JunePrecisionPush_SecondChoose(nItemId,nFirst,nSecond)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tJunePrecisionPush_Pack[nItemId][nFirst]) + RewardTemplate_GetRewardSpace(tJunePrecisionPush_Pack[nItemId][nSecond])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	if RewardTemplate_UseItemAndMsg(tJunePrecisionPush_Pack[nItemId][nFirst]) and RewardTemplate_UseItemAndMsg(tJunePrecisionPush_Pack[nItemId][nSecond]) then
		Item_DelItem(nItemId)
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3330845] = tItem[3330845] or {}
tItem[3330845]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tJunePrecisionPush_Pack[nItemId])
end
tItem[3330845] = tItem[3330845]
tItem[3330846] = tItem[3330845]
tItem[3330847] = tItem[3330845]
tItem[3330849] = tItem[3330845]
tItem[3330851] = tItem[3330845]
tItem[3330852] = tItem[3330845]
tItem[3330853] = tItem[3330845]

--------物品有对白模板
tItemFace[3330848] = 826
tItem[3330848] = tItem[3330848] or {}
tItem[3330848]["DialogueText"] = tJunePrecisionPush_Text["Choose"]
tItem[3330848]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local tOption = {}
	for i = 1,5 do
		local nNum = 110 + i
		tItem[nItemId]["Option"..nNum] = tJunePrecisionPush_Text[nItemId][i]
		tItem[nItemId]["OptionFunc"..nNum] = "JunePrecisionPush_FirstChoose</N>"..nItemId.."</N>"..i
		table.insert(tOption,nNum)
	end
	tItem[nItemId]["tOption1-1"] = tOption
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3330848]["Text1-1"] = {111}
tItem[3330848]["tOption1-1"] = {111}

tItem[3330848]["Text2-1"] = {211}
tItem[3330848]["tOption2-1"] = {211}

tItemFace[3330850] = 951
tItem[3330850] = tItem[3330848]
