------------------------------------------------------------------------------------
--Name：            200219[英文征服][活动脚本]3月精准营销（3.3-3.31）
--Creator:      林嘉鑫
--Created:     2020-02-19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tMarPrecisionPush_Data = {}
	tMarPrecisionPush_Data["Status"] = {}
	-- 攻击药水
	tMarPrecisionPush_Data["Status"][3329896] = {}
	tMarPrecisionPush_Data["Status"][3329896]["Status"] = {143,144}
	tMarPrecisionPush_Data["Status"][3329896]["Power"] = 2000
	tMarPrecisionPush_Data["Status"][3329896]["Secs"] = 3600
	--防御药水
	tMarPrecisionPush_Data["Status"][3329897] = {}
	tMarPrecisionPush_Data["Status"][3329897]["Status"] = {141,142}
	tMarPrecisionPush_Data["Status"][3329897]["Power"] = 2000
	tMarPrecisionPush_Data["Status"][3329897]["Secs"] = 3600
	--防御药水
	tMarPrecisionPush_Data["Status"][3329898] = {}
	tMarPrecisionPush_Data["Status"][3329898]["Power"] = 100
	--防御药水
	tMarPrecisionPush_Data["Status"][3329899] = {}
	tMarPrecisionPush_Data["Status"][3329899]["Power"] = 100
	
local tMarPrecisionPush_Pack = {}
	-- ===开洞必买包
	-- ===索引: tMarPrecisionPush_Pack[3329890]
	-- ===删除: 3329890,1
	tMarPrecisionPush_Pack[3329890] = {}
	tMarPrecisionPush_Pack[3329890]["LogId"] = 12001873
	tMarPrecisionPush_Pack[3329890]["EmoneyLog"] = "350	23065	2499	2499	1	"
	tMarPrecisionPush_Pack[3329890]["DeleteItem"] = {}
	tMarPrecisionPush_Pack[3329890]["DeleteItem"][1] = {}
	tMarPrecisionPush_Pack[3329890]["DeleteItem"][1]["Id"] = 3329890 -- 【库】LuxuriousSocketPack[属性:9]
	tMarPrecisionPush_Pack[3329890]["RewardItem"] = {}
	tMarPrecisionPush_Pack[3329890]["RewardItem"][1] = {}
	tMarPrecisionPush_Pack[3329890]["RewardItem"][1]["Id"] = 1200005 -- ToughDrill[1200005][属性:0][叠加:0][金币:0], 【表格】赠金刚坚钻*2
	tMarPrecisionPush_Pack[3329890]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tMarPrecisionPush_Pack[3329890]["RewardItem"][2] = {}
	tMarPrecisionPush_Pack[3329890]["RewardItem"][2]["Id"] = 1200006 -- StarDrill[1200006][属性:0][叠加:0][金币:0], 【表格】赠七星宝钻*14
	tMarPrecisionPush_Pack[3329890]["RewardItem"][2]["Attr"] = "0 14 3" -- StarDrill（赠）*14（[错误]物品数量超10个）
	tMarPrecisionPush_Pack[3329890]["RewardNoNeedTip"] = 1
	tMarPrecisionPush_Pack[3329890]["RewardEffect"] = {}
	tMarPrecisionPush_Pack[3329890]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarPrecisionPush_Pack[3329890]["RewardEffect"]["Effect"] = "angelwing"


	tMarPrecisionPush_Pack[3329891] = {}
	-- ===五级房屋一键升级包
	-- ===索引: tMarPrecisionPush_Pack[3329891]
	-- ===删除: 3329891,1
	tMarPrecisionPush_Pack[3329891]["LogId"] = 12001873
	tMarPrecisionPush_Pack[3329891]["EmoneyLog"] = "350	23066	199	199	1	"
	tMarPrecisionPush_Pack[3329891]["DeleteItem"] = {}
	tMarPrecisionPush_Pack[3329891]["DeleteItem"][1] = {}
	tMarPrecisionPush_Pack[3329891]["DeleteItem"][1]["Id"] = 3329891 -- 【库】Class5UpgradePack[属性:9]
	tMarPrecisionPush_Pack[3329891]["RewardItem"] = {}
	tMarPrecisionPush_Pack[3329891]["RewardItem"][1] = {}
	tMarPrecisionPush_Pack[3329891]["RewardItem"][1]["Id"] = 3001548 -- UpgradeCert.(Class5)[3001548][属性:9][叠加:1][金币:0], 【表格】5级房屋升级令
	tMarPrecisionPush_Pack[3329891]["RewardItem"][1]["Attr"] = "0 1" -- UpgradeCert.(Class5)*1
	tMarPrecisionPush_Pack[3329891]["RewardNoNeedTip"] = 1
	tMarPrecisionPush_Pack[3329891]["RewardEffect"] = {}
	tMarPrecisionPush_Pack[3329891]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarPrecisionPush_Pack[3329891]["RewardEffect"]["Effect"] = "angelwing"


	tMarPrecisionPush_Pack[3329892] = {}
	-- ===六级房屋一键升级包
	-- ===索引: tMarPrecisionPush_Pack[3329892]
	-- ===删除: 3329892,1
	tMarPrecisionPush_Pack[3329892]["LogId"] = 12001873
	tMarPrecisionPush_Pack[3329892]["EmoneyLog"] = "350	23067	499	499	1	"
	tMarPrecisionPush_Pack[3329892]["DeleteItem"] = {}
	tMarPrecisionPush_Pack[3329892]["DeleteItem"][1] = {}
	tMarPrecisionPush_Pack[3329892]["DeleteItem"][1]["Id"] = 3329892 -- 【库】Class6UpgradePack[属性:9]
	tMarPrecisionPush_Pack[3329892]["RewardItem"] = {}
	tMarPrecisionPush_Pack[3329892]["RewardItem"][1] = {}
	tMarPrecisionPush_Pack[3329892]["RewardItem"][1]["Id"] = 3008100 -- Class6HousePack[3008100][属性:9][叠加:10000][金币:0], 【表格】6级房屋建材包
	tMarPrecisionPush_Pack[3329892]["RewardItem"][1]["Attr"] = "0 500" -- Class6HousePack*500（[错误]物品数量超10个）
	tMarPrecisionPush_Pack[3329892]["RewardNoNeedTip"] = 1
	tMarPrecisionPush_Pack[3329892]["RewardEffect"] = {}
	tMarPrecisionPush_Pack[3329892]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarPrecisionPush_Pack[3329892]["RewardEffect"]["Effect"] = "angelwing"


	tMarPrecisionPush_Pack[3329893] = {}
	-- ===战力提升包
	-- ===索引: tMarPrecisionPush_Pack[3329893]
	-- ===删除: 3329893,1
	tMarPrecisionPush_Pack[3329893]["LogId"] = 12001873
	tMarPrecisionPush_Pack[3329893]["EmoneyLog"] = "350	23068	20	20	1	"
	tMarPrecisionPush_Pack[3329893]["DeleteItem"] = {}
	tMarPrecisionPush_Pack[3329893]["DeleteItem"][1] = {}
	tMarPrecisionPush_Pack[3329893]["DeleteItem"][1]["Id"] = 3329893 -- 【库】BoosterPack[属性:9]
	tMarPrecisionPush_Pack[3329893]["RewardItem"] = {}
	tMarPrecisionPush_Pack[3329893]["RewardItem"][1] = {}
	tMarPrecisionPush_Pack[3329893]["RewardItem"][1]["Id"] = 3329896 -- AttackBooster[3329896][属性:9][叠加:10000][金币:0], 【表格】1小时攻击药水
	tMarPrecisionPush_Pack[3329893]["RewardItem"][1]["Attr"] = "0 1" -- AttackBooster*1
	tMarPrecisionPush_Pack[3329893]["RewardItem"][2] = {}
	tMarPrecisionPush_Pack[3329893]["RewardItem"][2]["Id"] = 3329897 -- DefenseBooster[3329897][属性:9][叠加:10000][金币:0], 【表格】1小时防御药水
	tMarPrecisionPush_Pack[3329893]["RewardItem"][2]["Attr"] = "0 1" -- DefenseBooster*1
	tMarPrecisionPush_Pack[3329893]["RewardItem"][3] = {}
	tMarPrecisionPush_Pack[3329893]["RewardItem"][3]["Id"] = 3329898 -- HPBooster[3329898][属性:9][叠加:10000][金币:0], 【表格】体力药水
	tMarPrecisionPush_Pack[3329893]["RewardItem"][3]["Attr"] = "0 1" -- HPBooster*1
	tMarPrecisionPush_Pack[3329893]["RewardItem"][4] = {}
	tMarPrecisionPush_Pack[3329893]["RewardItem"][4]["Id"] = 3329899 -- XPBooster[3329899][属性:9][叠加:10000][金币:0], 【表格】潜能药水
	tMarPrecisionPush_Pack[3329893]["RewardItem"][4]["Attr"] = "0 1" -- XPBooster*1
	tMarPrecisionPush_Pack[3329893]["RewardNoNeedTip"] = 1
	tMarPrecisionPush_Pack[3329893]["RewardEffect"] = {}
	tMarPrecisionPush_Pack[3329893]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarPrecisionPush_Pack[3329893]["RewardEffect"]["Effect"] = "angelwing"


	tMarPrecisionPush_Pack[3329894] = {}
	-- ===紧急医疗包
	-- ===索引: tMarPrecisionPush_Pack[3329894]
	-- ===删除: 3329894,1
	tMarPrecisionPush_Pack[3329894]["LogId"] = 12001873
	tMarPrecisionPush_Pack[3329894]["EmoneyLog"] = "350	23069	20	20	1	"
	tMarPrecisionPush_Pack[3329894]["DeleteItem"] = {}
	tMarPrecisionPush_Pack[3329894]["DeleteItem"][1] = {}
	tMarPrecisionPush_Pack[3329894]["DeleteItem"][1]["Id"] = 3329894 -- 【库】PotionPack[属性:9]
	tMarPrecisionPush_Pack[3329894]["RewardItem"] = {}
	tMarPrecisionPush_Pack[3329894]["RewardItem"][1] = {}
	tMarPrecisionPush_Pack[3329894]["RewardItem"][1]["Id"] = 727502 -- VitalizationPotionPack[727502][属性:9][叠加:1][金币:0], 【表格】金创药水包
	tMarPrecisionPush_Pack[3329894]["RewardItem"][1]["Attr"] = "0 1" -- VitalizationPotionPack*1
	tMarPrecisionPush_Pack[3329894]["RewardItem"][2] = {}
	tMarPrecisionPush_Pack[3329894]["RewardItem"][2]["Id"] = 727503 -- PurificationPotionPack[727503][属性:9][叠加:1][金币:0], 【表格】净化药水包
	tMarPrecisionPush_Pack[3329894]["RewardItem"][2]["Attr"] = "0 1" -- PurificationPotionPack*1
	tMarPrecisionPush_Pack[3329894]["RewardNoNeedTip"] = 1
	tMarPrecisionPush_Pack[3329894]["RewardEffect"] = {}
	tMarPrecisionPush_Pack[3329894]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarPrecisionPush_Pack[3329894]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
--玩家使用药水
function MarPrecisionPush_UsePotion(nItemId)
	local nUserId = Get_UserId()
	
	local bFlag = true
	local nStatus = tMarPrecisionPush_Data["Status"][nItemId]["Status"]
	
	if type(nStatus) == "table" then
		if (not User_ChkRoleStatus(nStatus[1],nUserId)) and (not User_ChkRoleStatus(nStatus[2],nUserId)) then
			bFlag = false
		end
	else
		if not User_ChkRoleStatus(nStatus,nUserId) then
			bFlag = false
		end
	end
	
	-- 已经拥有状态
	if bFlag then
		Sys_MsgBox(tMarPrecisionPush_Text["MsgBox"]["StatusFail"],nil,nil,nUserId)
		return
	end
	
	local nPower = tMarPrecisionPush_Data["Status"][nItemId]["Power"]
	local nSecs = tMarPrecisionPush_Data["Status"][nItemId]["Secs"]
	
	-- 使用成功
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		
		--加状态
		if type(nStatus) == "table" then
			if User_AddRoleStatus(nStatus[1],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tMarPrecisionPush_Text["Channel2005"]["Status"][nStatus[1]], nPower),nUserId)
			end
			
			if User_AddRoleStatus(nStatus[2],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tMarPrecisionPush_Text["Channel2005"]["Status"][nStatus[2]], nPower),nUserId)
			end
		else
			if User_AddRoleStatus(nStatus,nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tMarPrecisionPush_Text["Channel2005"]["Status"][nStatus], nPower),nUserId)
			end
		end
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3329890] = tItem[3329890] or {}
tItem[3329890]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tMarPrecisionPush_Pack[nItemId])
end
tItem[3329891] = tItem[3329890]
tItem[3329892] = tItem[3329890]
tItem[3329893] = tItem[3329890]
tItem[3329894] = tItem[3329890]

-- 攻击药水
tItem[3329896] = tItem[3329896] or {}
tItem[3329896]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	MarPrecisionPush_UsePotion(nItemId)
end
-- 防御药水
tItem[3329897] = tItem[3329896]

-- 体力药水
tItem[3329898] = tItem[3329898] or {}
tItem[3329898]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	if Item_DelItem(nItemId) then
		User_AddEp(tMarPrecisionPush_Data["Status"][nItemId]["Power"])
		User_TalkChannel2005(tMarPrecisionPush_Text["Channel2005"]["UseEpwater"])
	end
end

-- 潜能药水
tItem[3329899] = tItem[3329899] or {}
tItem[3329899]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	if Item_DelItem(nItemId) then
		User_AddXp(tMarPrecisionPush_Data["Status"][nItemId]["Power"])
		User_TalkChannel2005(tMarPrecisionPush_Text["Channel2005"]["UseXpwater"])
	end
end
