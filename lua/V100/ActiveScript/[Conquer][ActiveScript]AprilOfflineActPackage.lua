------------------------------------------------------------------------------------
--Name：            180321[英文征服][活动脚本]4月线下活动相关发奖action制作
--Creator:      吴帆
--Created:     2018/03/21
------------------------------------------------------------------------------------
--任务需求：
--请安排制作4月线下活动相关发奖action，用于线下页面发奖到线上，包含两个活动的奖品，具体需求在附件中。
-- logid 12001038
------------------------------------------------------------------------------------
----------------------------------表配置部分--------------------------------------------
local tAprilOfflineActPackage_Use = {}
	--王者归来礼包
	tAprilOfflineActPackage_Use[3307897] = {}
	tAprilOfflineActPackage_Use[3307897]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307897]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307897]["DeleteItem"][1]["Id"] = 3307897
	tAprilOfflineActPackage_Use[3307897]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307897]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][1]["Id"] = 3001413
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][1]["Attr"] = "0 1 3"
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][2] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][2]["Id"] = 730003
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][2]["Attr"] = "0 2 3 10080 1"
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][3] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][3]["Id"] = 3009001
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][4] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][4]["Id"] = 730004
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][4]["Attr"] = "0 1 3 10080 1"
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][5] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][5]["Id"] = 4060001
	tAprilOfflineActPackage_Use[3307897]["RewardItem"][5]["Attr"] = "0 10 3"
	tAprilOfflineActPackage_Use[3307897]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307897]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307897]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307897]["LogId"] = 12001038
	--海盗翻身至尊礼包
	tAprilOfflineActPackage_Use[3307898] = {}
	tAprilOfflineActPackage_Use[3307898]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307898]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307898]["DeleteItem"][1]["Id"] = 3307898
	tAprilOfflineActPackage_Use[3307898]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307898]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][1]["Id"] = 723700
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][1]["Attr"] = "0 10 3"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][2] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][2]["Id"] = 723017
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][2]["Attr"] = "0 10 3"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][3] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][3]["Id"] = 3302762
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][3]["Attr"] = "0 1 3"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][4] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][4]["Id"] = 730003
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][4]["Attr"] = "0 7 3 10080 1"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][5] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][5]["Id"] = 3307900
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][5]["Attr"] = "0 1 3"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][6] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][6]["Id"] = 1088000
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][6]["Attr"] = "0 5 3"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][7] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][7]["Id"] = 200431
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][7]["Attr"] = "0 1 3 43200 1 0 0 1"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][8] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][8]["Id"] = 192615
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][8]["Attr"] = "0 1 3 43200 1 0 0 1"
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][9] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][9]["Id"] = 3307899
	tAprilOfflineActPackage_Use[3307898]["RewardItem"][9]["Attr"] = "0 1 3 43200 1"
	tAprilOfflineActPackage_Use[3307898]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307898]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307898]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307898]["LogId"] = 12001038
	--海盗王藏宝箱
	tAprilOfflineActPackage_Use[3307899] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardEMoney"] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardEMoney"]["Value"] = -1299
	tAprilOfflineActPackage_Use[3307899]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307899]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307899]["DeleteItem"][1]["Id"] = 3307899
	tAprilOfflineActPackage_Use[3307899]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307899]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][1]["Id"] = 723701
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][1]["Attr"] = "0 1 3"
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][2] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][2]["Id"] = 3307904
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][2]["Attr"] = "0 3 0"
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][3] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][3]["Id"] = 3003124
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][3]["Attr"] = "0 100 3"
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][4] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][4]["Id"] = 3306370
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][4]["Attr"] = "0 10 3"
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][5] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][5]["Id"] = 3200349
	tAprilOfflineActPackage_Use[3307899]["RewardItem"][5]["Attr"] = "0 1 3"
	tAprilOfflineActPackage_Use[3307899]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307899]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307899]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307899]["Talk"] = tAprilOfflineActPackage_Text[3307899]["Talk"]
	tAprilOfflineActPackage_Use[3307899]["LogId"] = 12001038
	--+3马匹包
	tAprilOfflineActPackage_Use[3307900] = {}
	--白马
	tAprilOfflineActPackage_Use[3307900][1] = {}
	tAprilOfflineActPackage_Use[3307900][1]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307900][1]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][1]["DeleteItem"][1]["Id"] = 3307900
	tAprilOfflineActPackage_Use[3307900][1]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307900][1]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307900][1]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][1]["RewardItem"][1]["Id"] = 300000
	tAprilOfflineActPackage_Use[3307900][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150"
	tAprilOfflineActPackage_Use[3307900][1]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307900][1]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307900][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307900][1]["LogId"] = 12001038
	--黑马
	tAprilOfflineActPackage_Use[3307900][2] = {}
	tAprilOfflineActPackage_Use[3307900][2]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307900][2]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][2]["DeleteItem"][1]["Id"] = 3307900
	tAprilOfflineActPackage_Use[3307900][2]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307900][2]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307900][2]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][2]["RewardItem"][1]["Id"] = 300000
	tAprilOfflineActPackage_Use[3307900][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255"
	tAprilOfflineActPackage_Use[3307900][2]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307900][2]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307900][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307900][2]["LogId"] = 12001038
	--枣红马
	tAprilOfflineActPackage_Use[3307900][3] = {}
	tAprilOfflineActPackage_Use[3307900][3]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307900][3]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][3]["DeleteItem"][1]["Id"] = 3307900
	tAprilOfflineActPackage_Use[3307900][3]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307900][3]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307900][3]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307900][3]["RewardItem"][1]["Id"] = 300000
	tAprilOfflineActPackage_Use[3307900][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3"
	tAprilOfflineActPackage_Use[3307900][3]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307900][3]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307900][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307900][3]["LogId"] = 12001038
	--十个明亮星陨石包
	tAprilOfflineActPackage_Use[3307904] = {}
	tAprilOfflineActPackage_Use[3307904]["DeleteItem"] = {}
	tAprilOfflineActPackage_Use[3307904]["DeleteItem"][1] = {}
	tAprilOfflineActPackage_Use[3307904]["DeleteItem"][1]["Id"] = 3307904
	tAprilOfflineActPackage_Use[3307904]["DeleteItem"][1]["ItemNum"] = 1
	tAprilOfflineActPackage_Use[3307904]["RewardItem"] = {}
	tAprilOfflineActPackage_Use[3307904]["RewardItem"][1] = {}
	tAprilOfflineActPackage_Use[3307904]["RewardItem"][1]["Id"] = 3009001
	tAprilOfflineActPackage_Use[3307904]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tAprilOfflineActPackage_Use[3307904]["RewardEffect"] = {}
	tAprilOfflineActPackage_Use[3307904]["RewardEffect"]["SzObj"] = "self"
	tAprilOfflineActPackage_Use[3307904]["RewardEffect"]["Effect"] = "zf2-e128"
	tAprilOfflineActPackage_Use[3307904]["LogId"] = 12001038
----------------------------------逻辑部分---------------------------------------------
function AprilOfflineActPackage_UseItem(nItemId,nType)
	local tAward = tAprilOfflineActPackage_Use[nItemId]
	if nType ~= nil then
		tAward = tAprilOfflineActPackage_Use[nItemId][nType]
	end
	--礼包检查
	if not AprilOfflineActPackage_UseItemCheck(nItemId,nType) then
		return
	end
	--给物品
	RewardTemplate_UseItem(tAward)
end
--礼包检查
function AprilOfflineActPackage_UseItemCheck(nItemId,nType)
	local tAward = tAprilOfflineActPackage_Use[nItemId]
	if nType ~= nil then
		tAward = tAprilOfflineActPackage_Use[nItemId][nType]
	end
	-- 判断是否有物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tAprilOfflineActPackage_Text[nItemId]["NoItem"])
		return false
	end
	--检查天石
	if tAward["RewardEMoney"] ~= nil then
		if Get_UserEMoney() < -tAward["RewardEMoney"]["Value"] then
			Sys_MsgBox(tAprilOfflineActPackage_Text[nItemId]["NoEmoney"])
			return false
		end
	end
	--检查背包
	local nSpace = RewardTemplate_GetRewardSpace(tAward)
	if not User_CheckLeftSpace(nSpace) then
		-- 背包空间不足
		Sys_MsgBox(string.format(tAprilOfflineActPackage_Text[nItemId]["NoSpace"],nSpace))
		return false
	end
	return true
end
--跳到二次确认
function AprilOfflineActPackage_TurnTwice(nItemId)
	--礼包检查
	if not AprilOfflineActPackage_UseItemCheck(nItemId) then
		return
	end
	--跳转
	LinkItemGossipFunc_New(nItemId,"2-1")
end
---------------------------------物品部分---------------------------------------------
tItemFace[3307898] = 1419
tItemFace[3307899] = 1420
tItemFace[3307900] = 1421
--王者归来礼包
tItem[3307897] = tItem[3307897] or {}
tItem[3307897]["Function"] = function(nItemId,sItemName)
	AprilOfflineActPackage_UseItem(nItemId)
end

--10个明亮星陨石包
tItem[3307904] = tItem[3307904] or {}
tItem[3307904]["Function"] = function(nItemId,sItemName)
	AprilOfflineActPackage_UseItem(nItemId)
end

--海盗翻身至尊礼包
tItem[3307898] = tItem[3307898] or {}
tItem[3307898]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tItem[3307898]["Text111"] = tAprilOfflineActPackage_Text[3307898]["Text111"]
tItem[3307898]["Text112"] = tAprilOfflineActPackage_Text[3307898]["Text112"]
tItem[3307898]["Text113"] = tAprilOfflineActPackage_Text[3307898]["Text113"]
tItem[3307898]["Text114"] = tAprilOfflineActPackage_Text[3307898]["Text114"]
tItem[3307898]["Text115"] = tAprilOfflineActPackage_Text[3307898]["Text115"]
tItem[3307898]["Text116"] = tAprilOfflineActPackage_Text[3307898]["Text116"]
tItem[3307898]["Text117"] = tAprilOfflineActPackage_Text[3307898]["Text117"]
tItem[3307898]["Text118"] = tAprilOfflineActPackage_Text[3307898]["Text118"]
tItem[3307898]["Text119"] = tAprilOfflineActPackage_Text[3307898]["Text119"]
tItem[3307898]["Text1110"] = tAprilOfflineActPackage_Text[3307898]["Text1110"]
tItem[3307898]["tOption1-1"] = {111,112}
tItem[3307898]["Option111"] = tAprilOfflineActPackage_Text[3307898]["Option111"]
tItem[3307898]["Option112"] = tAprilOfflineActPackage_Text[3307898]["Option112"]
tItem[3307898]["OptionFunc111"] = "AprilOfflineActPackage_UseItem</N>3307898"


--海盗王藏宝箱
tItem[3307899] = tItem[3307899] or {}
tItem[3307899]["Text1-1"] = {111,112,113,114,115,116}
tItem[3307899]["Text111"] = tAprilOfflineActPackage_Text[3307899]["Text111"]
tItem[3307899]["Text112"] = tAprilOfflineActPackage_Text[3307899]["Text112"]
tItem[3307899]["Text113"] = tAprilOfflineActPackage_Text[3307899]["Text113"]
tItem[3307899]["Text114"] = tAprilOfflineActPackage_Text[3307899]["Text114"]
tItem[3307899]["Text115"] = tAprilOfflineActPackage_Text[3307899]["Text115"]
tItem[3307899]["Text116"] = tAprilOfflineActPackage_Text[3307899]["Text116"]
tItem[3307899]["tOption1-1"] = {111,112}
tItem[3307899]["Option111"] = tAprilOfflineActPackage_Text[3307899]["Option111"]
tItem[3307899]["Option112"] = tAprilOfflineActPackage_Text[3307899]["Option112"]
tItem[3307899]["OptionFunc111"] = "AprilOfflineActPackage_TurnTwice</N>3307899"
--二次确认
tItem[3307899]["Text2-1"] = {211}
tItem[3307899]["Text211"] = tAprilOfflineActPackage_Text[3307899]["Text211"]
tItem[3307899]["tOption2-1"] = {211,212}
tItem[3307899]["Option211"] = tAprilOfflineActPackage_Text[3307899]["Option211"]
tItem[3307899]["Option212"] = tAprilOfflineActPackage_Text[3307899]["Option212"]
tItem[3307899]["OptionFunc211"] = "AprilOfflineActPackage_UseItem</N>3307899"

-- +3骏马可选包
tItem[3307900] = tItem[3307900] or {}
tItem[3307900]["Text1-1"] = {111}
tItem[3307900]["Text111"] = tAprilOfflineActPackage_Text[3307900]["Text111"]
tItem[3307900]["tOption1-1"] = {111,112,113,114}
tItem[3307900]["Option111"] = tAprilOfflineActPackage_Text[3307900]["Option111"]
tItem[3307900]["Option112"] = tAprilOfflineActPackage_Text[3307900]["Option112"]
tItem[3307900]["Option113"] = tAprilOfflineActPackage_Text[3307900]["Option113"]
tItem[3307900]["Option114"] = tAprilOfflineActPackage_Text[3307900]["Option114"]
tItem[3307900]["OptionFunc111"] = "AprilOfflineActPackage_UseItem</N>3307900</N>1"
tItem[3307900]["OptionFunc112"] = "AprilOfflineActPackage_UseItem</N>3307900</N>2"
tItem[3307900]["OptionFunc113"] = "AprilOfflineActPackage_UseItem</N>3307900</N>3"