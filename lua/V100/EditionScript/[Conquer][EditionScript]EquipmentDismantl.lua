------------------------------------------------------------------------------------
--Name:		[征服][功能脚本]装备拆解
--Purpose:	短兵器追加装备拆解
--Creator: 	郑鋆
--Created:	2019/05/31
------------------------------------------------------------------------------------

-- 命名前缀
-- EquipmentDismantl_

-- 拆解配置
local tEquipmentDismantl_Config = {}
	-- 短武+1	奖励下限	0	奖励上限	数量×1
	tEquipmentDismantl_Config[1] = {}
	tEquipmentDismantl_Config[1]["Min"] = 0
	tEquipmentDismantl_Config[1]["Max"] = 1
	-- 短武+2	奖励下限	数量×1	奖励上限	数量×2
	tEquipmentDismantl_Config[2] = {}
	tEquipmentDismantl_Config[2]["Min"] = 1
	tEquipmentDismantl_Config[2]["Max"] = 2
	-- 短武+3	奖励下限	数量×3	奖励上限	数量×6
	tEquipmentDismantl_Config[3] = {}
	tEquipmentDismantl_Config[3]["Min"] = 3
	tEquipmentDismantl_Config[3]["Max"] = 6
	-- 短武+4	奖励下限	数量×9	奖励上限	数量×18
	tEquipmentDismantl_Config[4] = {}
	tEquipmentDismantl_Config[4]["Min"] = 9
	tEquipmentDismantl_Config[4]["Max"] = 18
	-- 短武+5	奖励下限	数量×27	奖励上限	数量×54
	tEquipmentDismantl_Config[5] = {}
	tEquipmentDismantl_Config[5]["Min"] = 27
	tEquipmentDismantl_Config[5]["Max"] = 54
	-- 短武+6	奖励下限	数量×81	奖励上限	数量×162
	tEquipmentDismantl_Config[6] = {}
	tEquipmentDismantl_Config[6]["Min"] = 81
	tEquipmentDismantl_Config[6]["Max"] = 162
	-- 短武+7	奖励下限	数量×243	奖励上限	数量×486
	tEquipmentDismantl_Config[7] = {}
	tEquipmentDismantl_Config[7]["Min"] = 243
	tEquipmentDismantl_Config[7]["Max"] = 486
	-- 短武+8	奖励下限	数量×729	奖励上限	数量×1458
	tEquipmentDismantl_Config[8] = {}
	tEquipmentDismantl_Config[8]["Min"] = 729
	tEquipmentDismantl_Config[8]["Max"] = 1458

-- 奖励配置
local tEquipmentDismantl_Reward = {}
	tEquipmentDismantl_Reward["LogId"] = 18000128
	tEquipmentDismantl_Reward["RewardEffect"] = {}
	tEquipmentDismantl_Reward["RewardEffect"]["SzObj"] = "self"
	tEquipmentDismantl_Reward["RewardEffect"]["Effect"] = "accession"
	tEquipmentDismantl_Reward["RewardItem"] = {}

-- 常量配置
local tEquipmentDismantl_Constant = {}
	tEquipmentDismantl_Constant["ItemId"] = 3321098

local tEquipmentDismantl_UserInfo = {}

----------------------------------------------------------------------主逻辑----------------------------------------------------------------------
-- 确认炼化
function EquipmentDismantl_Confirm(nLev,nNpcId)
	local nUserId = Get_UserId()

	-- 判断是否首次使用
	if tEquipmentDismantl_UserInfo[nUserId] == nil then
		tEquipmentDismantl_UserInfo[nUserId] = 1
		-- 判断是否有二级密码
		if not Sys_IsOpenSecondPWD(nUserId) then
			User_OpenDialog(568,nUserId)
			return
		end
	end

	local nNum = User_HundredWeaponResolveWeapon(nLev,0,nUserId)
	-- local nMonopolyNum = User_HundredWeaponResolveWeapon(nLev,2,nUserId)

	-- 判断是否有删除物品
	if nNum <= 0 then
		tNpcGossip[nNpcId]["Text311"] = string.format(tEquipmentDismantl_Text[nNpcId]["Text311"],nLev)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	-- 随机获得物品的数量
	local nMinNum = tEquipmentDismantl_Config[nLev]["Min"] *nNum
	local nMaxNum = tEquipmentDismantl_Config[nLev]["Max"] *nNum
	-- local nMonopolyMinNum = tEquipmentDismantl_Config[nLev]["Min"] *nMonopolyNum
	-- local nMonopolyMaxNum = tEquipmentDismantl_Config[nLev]["Max"] *nMonopolyNum
	local nRewardNum = math.random(nMinNum,nMaxNum)
	-- local nMonopolyRewardNum = math.random(nMonopolyMinNum,nMonopolyMaxNum)

	-- 判断是否有获得奖励
	if nRewardNum <= 0 then
		Sys_MsgBox(tEquipmentDismantl_Text["NoItem"])
		return
	end

	local tReward = CommonFunc_Copy(tEquipmentDismantl_Reward)
	local nIndex = #tReward["RewardItem"] + 1
	-- 设置奖励
	if nRewardNum > 0 then
		tReward["RewardItem"][nIndex] = {}
		tReward["RewardItem"][nIndex]["Id"] = tEquipmentDismantl_Constant["ItemId"]
		tReward["RewardItem"][nIndex]["Attr"] = string.format("0 %d",nRewardNum)
		-- nIndex = nIndex + 1
	end

	-- if nMonopolyRewardNum > 0 then
		-- tReward["RewardItem"][nIndex] = {}
		-- tReward["RewardItem"][nIndex]["Id"] = tEquipmentDismantl_Constant["ItemId"]
		-- tReward["RewardItem"][nIndex]["Attr"] = string.format("0 %d 3",nMonopolyRewardNum)
	-- end

	RewardTemplate_UseItemAndMsg(tReward,nUserId)
end

-- 查看御魂形态
function EquipmentDismantl_ViewImperialForm(nNpcId)
	local nUserId = Get_UserId()
	-- 判断玩家是否开启了百兵谱
	if not User_ChkOpenHundredSoldiers(nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	User_OpenDialog(978,nNpcId,nUserId)
end

-- 对白修改
function EquipmentDismantl_Text(nLev,nNpcId)
	local str = string.format(tEquipmentDismantl_Text[nNpcId]["Text211"],nLev,nLev,tEquipmentDismantl_Config[nLev]["Min"],tEquipmentDismantl_Config[nLev]["Max"])
	tNpcGossip[nNpcId]["Text211"] = str
	tNpcGossip[nNpcId]["OptionFunc211"] = string.format("EquipmentDismantl_Confirm</N>%d</N>%d",nLev,nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

function EquipmentDismantl_Test(nItemId,nMonopoly,nLev)
	Item_AddNewItem(nItemId,"0 1 " .. nMonopoly .. " 0 0 0 0 0 0 0 " .. nLev)
end

-------------------------------------------------------NPC配置----------------------------------------------------------------------------------
-- NPC头像
tNpcFace[5023] = 35
tNpcFace[1927] = 15

-- 神匠鲁班
tNpcGossip[24311] = tNpcGossip[24311] or DefaultNpc:new{}
tNpcGossip[24311]["OptionHidden"] = 1
tNpcGossip[24311]["DialogueText"] = tEquipmentDismantl_Text[24311]

tNpcGossip[24311]["Text1-1"] = {111,112,113}
tNpcGossip[24311]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24311]["OptionFunc111"] = "EquipmentDismantl_Text</N>1</N>24311"
tNpcGossip[24311]["OptionFunc112"] = "EquipmentDismantl_Text</N>2</N>24311"
tNpcGossip[24311]["OptionFunc113"] = "EquipmentDismantl_Text</N>3</N>24311"
tNpcGossip[24311]["OptionFunc114"] = "EquipmentDismantl_Text</N>4</N>24311"
tNpcGossip[24311]["OptionFunc115"] = "EquipmentDismantl_Text</N>5</N>24311"
tNpcGossip[24311]["OptionFunc116"] = "EquipmentDismantl_Text</N>6</N>24311"
tNpcGossip[24311]["OptionFunc117"] = "EquipmentDismantl_Text</N>7</N>24311"
tNpcGossip[24311]["OptionFunc118"] = "EquipmentDismantl_Text</N>8</N>24311"

tNpcGossip[24311]["Text2-1"] = {211,212}
tNpcGossip[24311]["tOption2-1"] = {211,212}

tNpcGossip[24311]["Text3-1"] = {311}
tNpcGossip[24311]["tOption3-1"] = {311}

-- 酒剑仙师
tNpcGossip[24312] = tNpcGossip[24312] or DefaultNpc:new{}
tNpcGossip[24312]["OptionHidden"] = 1
tNpcGossip[24312]["DialogueText"] = tEquipmentDismantl_Text[24312]

tNpcGossip[24312]["Text1-1"] = {111,112,113,114}
tNpcGossip[24312]["tOption1-1"] = {111}
tNpcGossip[24312]["OptionFunc111"] = "EquipmentDismantl_ViewImperialForm</N>24312"

tNpcGossip[24312]["Text2-1"] = {211,212}
tNpcGossip[24312]["tOption2-1"] = {211}


