------------------------------------------------------------------------------------
--Name:		[征服][功能脚本]短武器回收增加忍法帖道具
--Purpose:	短兵器追加装备拆解
--Creator: 	郑鋆
--Created:	2020/03/26
------------------------------------------------------------------------------------


-- 命名前缀
-- ExchangeSecretStar_

-- 拆解配置
local tExchangeSecretStar_Config = {}
	-- 短武+1	奖励下限	0	奖励上限	数量×1
	tExchangeSecretStar_Config[1] = {}
	tExchangeSecretStar_Config[1]["Min"] = 0
	tExchangeSecretStar_Config[1]["Max"] = 1
	-- 短武+2	奖励下限	数量×1	奖励上限	数量×3
	tExchangeSecretStar_Config[2] = {}
	tExchangeSecretStar_Config[2]["Min"] = 1
	tExchangeSecretStar_Config[2]["Max"] = 3
	-- 短武+3	奖励下限	数量×4	奖励上限	数量×8
	tExchangeSecretStar_Config[3] = {}
	tExchangeSecretStar_Config[3]["Min"] = 4
	tExchangeSecretStar_Config[3]["Max"] = 8
	-- 短武+4	奖励下限	数量×12	奖励上限	数量×24
	tExchangeSecretStar_Config[4] = {}
	tExchangeSecretStar_Config[4]["Min"] = 12
	tExchangeSecretStar_Config[4]["Max"] = 24
	-- 短武+5	奖励下限	数量×34	奖励上限	数量×74
	tExchangeSecretStar_Config[5] = {}
	tExchangeSecretStar_Config[5]["Min"] = 34
	tExchangeSecretStar_Config[5]["Max"] = 74
	-- 短武+6	奖励下限	数量×111	奖励上限	数量×222
	tExchangeSecretStar_Config[6] = {}
	tExchangeSecretStar_Config[6]["Min"] = 111
	tExchangeSecretStar_Config[6]["Max"] = 222
	-- 短武+7	奖励下限	数量×333	奖励上限	数量×666
	tExchangeSecretStar_Config[7] = {}
	tExchangeSecretStar_Config[7]["Min"] = 333
	tExchangeSecretStar_Config[7]["Max"] = 666
	-- 短武+8	奖励下限	数量×1000	奖励上限	数量×2000
	tExchangeSecretStar_Config[8] = {}
	tExchangeSecretStar_Config[8]["Min"] = 1000
	tExchangeSecretStar_Config[8]["Max"] = 2000


-- 奖励配置
local tExchangeSecretStar_Reward = {}
	tExchangeSecretStar_Reward["LogId"] = 18000128
	tExchangeSecretStar_Reward["RewardEffect"] = {}
	tExchangeSecretStar_Reward["RewardEffect"]["SzObj"] = "self"
	tExchangeSecretStar_Reward["RewardEffect"]["Effect"] = "accession"
	tExchangeSecretStar_Reward["RewardItem"] = {}

-- 合成秘术精华
local tExchangeSecretStar_Synthesis = {}
	-- 消耗5个秘术之星
	tExchangeSecretStar_Synthesis[1] = {}
	tExchangeSecretStar_Synthesis[1]["DeleteItem"] = {}
	tExchangeSecretStar_Synthesis[1]["DeleteItem"][1] = {}
	tExchangeSecretStar_Synthesis[1]["DeleteItem"][1]["Id"] = 3315766
	tExchangeSecretStar_Synthesis[1]["DeleteItem"][1]["ItemNum"] = 5
	tExchangeSecretStar_Synthesis[1]["DeleteItem"][1]["NoItem"] = tExchangeSecretStar_Text[3315766]["NoItem"]
	tExchangeSecretStar_Synthesis[1]["RewardItem"] = {}
	tExchangeSecretStar_Synthesis[1]["RewardItem"][1] = {}
	tExchangeSecretStar_Synthesis[1]["RewardItem"][1]["Id"] = 3329979
	tExchangeSecretStar_Synthesis[1]["RewardItem"][1]["Attr"] = "0 1"
	tExchangeSecretStar_Synthesis[1]["RewardEffect"] = {}
	tExchangeSecretStar_Synthesis[1]["RewardEffect"]["SzObj"] = "self"
	tExchangeSecretStar_Synthesis[1]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 消耗50个秘术之星
	tExchangeSecretStar_Synthesis[2] = {}
	tExchangeSecretStar_Synthesis[2]["DeleteItem"] = {}
	tExchangeSecretStar_Synthesis[2]["DeleteItem"][1] = {}
	tExchangeSecretStar_Synthesis[2]["DeleteItem"][1]["Id"] = 3315766
	tExchangeSecretStar_Synthesis[2]["DeleteItem"][1]["ItemNum"] = 50
	tExchangeSecretStar_Synthesis[2]["DeleteItem"][1]["NoItem"] = tExchangeSecretStar_Text[3315766]["NoItem"]
	tExchangeSecretStar_Synthesis[2]["RewardItem"] = {}
	tExchangeSecretStar_Synthesis[2]["RewardItem"][1] = {}
	tExchangeSecretStar_Synthesis[2]["RewardItem"][1]["Id"] = 3329979
	tExchangeSecretStar_Synthesis[2]["RewardItem"][1]["Attr"] = "0 10"
	tExchangeSecretStar_Synthesis[2]["RewardEffect"] = {}
	tExchangeSecretStar_Synthesis[2]["RewardEffect"]["SzObj"] = "self"
	tExchangeSecretStar_Synthesis[2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 消耗500个秘术之星
	tExchangeSecretStar_Synthesis[3] = {}
	tExchangeSecretStar_Synthesis[3]["DeleteItem"] = {}
	tExchangeSecretStar_Synthesis[3]["DeleteItem"][1] = {}
	tExchangeSecretStar_Synthesis[3]["DeleteItem"][1]["Id"] = 3315766
	tExchangeSecretStar_Synthesis[3]["DeleteItem"][1]["ItemNum"] = 500
	tExchangeSecretStar_Synthesis[3]["DeleteItem"][1]["NoItem"] = tExchangeSecretStar_Text[3315766]["NoItem"]
	tExchangeSecretStar_Synthesis[3]["RewardItem"] = {}
	tExchangeSecretStar_Synthesis[3]["RewardItem"][1] = {}
	tExchangeSecretStar_Synthesis[3]["RewardItem"][1]["Id"] = 3329979
	tExchangeSecretStar_Synthesis[3]["RewardItem"][1]["Attr"] = "0 100"
	tExchangeSecretStar_Synthesis[3]["RewardEffect"] = {}
	tExchangeSecretStar_Synthesis[3]["RewardEffect"]["SzObj"] = "self"
	tExchangeSecretStar_Synthesis[3]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 消耗5000个秘术之星
	tExchangeSecretStar_Synthesis[4] = {}
	tExchangeSecretStar_Synthesis[4]["DeleteItem"] = {}
	tExchangeSecretStar_Synthesis[4]["DeleteItem"][1] = {}
	tExchangeSecretStar_Synthesis[4]["DeleteItem"][1]["Id"] = 3315766
	tExchangeSecretStar_Synthesis[4]["DeleteItem"][1]["ItemNum"] = 5000
	tExchangeSecretStar_Synthesis[4]["DeleteItem"][1]["NoItem"] = tExchangeSecretStar_Text[3315766]["NoItem"]
	tExchangeSecretStar_Synthesis[4]["RewardItem"] = {}
	tExchangeSecretStar_Synthesis[4]["RewardItem"][1] = {}
	tExchangeSecretStar_Synthesis[4]["RewardItem"][1]["Id"] = 3329979
	tExchangeSecretStar_Synthesis[4]["RewardItem"][1]["Attr"] = "0 1000"
	tExchangeSecretStar_Synthesis[4]["RewardEffect"] = {}
	tExchangeSecretStar_Synthesis[4]["RewardEffect"]["SzObj"] = "self"
	tExchangeSecretStar_Synthesis[4]["RewardEffect"]["Effect"] = "zf2-e128"
	
-- 常量配置
local tExchangeSecretStar_Constant = {}
	tExchangeSecretStar_Constant["ItemId"] = 3315766

local tExchangeSecretStar_UserInfo = {}

----------------------------------------------------------------------主逻辑----------------------------------------------------------------------
-- 确认炼化
function ExchangeSecretStar_Confirm(nLev,nNpcId)
	local nUserId = Get_UserId()

	-- 判断是否首次使用
	if tExchangeSecretStar_UserInfo[nUserId] == nil then
		tExchangeSecretStar_UserInfo[nUserId] = 1
		-- 判断是否有二级密码
		if not Sys_IsOpenSecondPWD(nUserId) then
			User_OpenDialog(568,nUserId)
			return
		end
	end

	local nNum = User_HundredWeaponResolveWeapon(nLev,0,nUserId)

	-- 判断是否有删除物品
	if nNum <= 0 then
		tNpcGossip[nNpcId]["Text311"] = string.format(tExchangeSecretStar_Text[nNpcId]["Text311"],nLev)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	-- 随机获得物品的数量
	local nMinNum = tExchangeSecretStar_Config[nLev]["Min"] *nNum
	local nMaxNum = tExchangeSecretStar_Config[nLev]["Max"] *nNum
	local nRewardNum = math.random(nMinNum,nMaxNum)

	-- 判断是否有获得奖励
	if nRewardNum <= 0 then
		Sys_MsgBox(tExchangeSecretStar_Text["NoItem"])
		return
	end

	local tReward = CommonFunc_Copy(tExchangeSecretStar_Reward)
	local nIndex = #tReward["RewardItem"] + 1
	-- 设置奖励
	if nRewardNum > 0 then
		tReward["RewardItem"][nIndex] = {}
		tReward["RewardItem"][nIndex]["Id"] = tExchangeSecretStar_Constant["ItemId"]
		tReward["RewardItem"][nIndex]["Attr"] = string.format("0 %d",nRewardNum)
	end

	RewardTemplate_UseItemAndMsg(tReward,nUserId)
end

-- 对白修改
function ExchangeSecretStar_Text(nLev,nNpcId)
	local str = string.format(tExchangeSecretStar_Text[nNpcId]["Text211"],nLev,nLev,tExchangeSecretStar_Config[nLev]["Min"],tExchangeSecretStar_Config[nLev]["Max"])
	tNpcGossip[nNpcId]["Text211"] = str
	tNpcGossip[nNpcId]["OptionFunc211"] = string.format("ExchangeSecretStar_Confirm</N>%d</N>%d",nLev,nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 合成逻辑
function ExchangeSecretStar_Synthesis(nItemId,nChoose)
	RewardTemplate_UseItemAndMsg(tExchangeSecretStar_Synthesis[nChoose])
end

-------------------------------------------------------NPC配置----------------------------------------------------------------------------------
-- NPC头像
tNpcFace[5013] = 35

-- 村正
tNpcGossip[26197] = tNpcGossip[26197] or DefaultNpc:new{}
tNpcGossip[26197]["OptionHidden"] = 1
tNpcGossip[26197]["DialogueText"] = tExchangeSecretStar_Text[26197]

tNpcGossip[26197]["Text1-1"] = {111,112,113}
tNpcGossip[26197]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[26197]["OptionFunc111"] = "ExchangeSecretStar_Text</N>1</N>26197"
tNpcGossip[26197]["OptionFunc112"] = "ExchangeSecretStar_Text</N>2</N>26197"
tNpcGossip[26197]["OptionFunc113"] = "ExchangeSecretStar_Text</N>3</N>26197"
tNpcGossip[26197]["OptionFunc114"] = "ExchangeSecretStar_Text</N>4</N>26197"
tNpcGossip[26197]["OptionFunc115"] = "ExchangeSecretStar_Text</N>5</N>26197"
tNpcGossip[26197]["OptionFunc116"] = "ExchangeSecretStar_Text</N>6</N>26197"
tNpcGossip[26197]["OptionFunc117"] = "ExchangeSecretStar_Text</N>7</N>26197"
tNpcGossip[26197]["OptionFunc118"] = "ExchangeSecretStar_Text</N>8</N>26197"

tNpcGossip[26197]["Text2-1"] = {211,212}
tNpcGossip[26197]["tOption2-1"] = {211,212}

tNpcGossip[26197]["Text3-1"] = {311}
tNpcGossip[26197]["tOption3-1"] = {311}

-- 秘术之星
tItemFace[3315766] = 2875
tItem[3315766] = tItem[3315766] or {}
tItem[3315766]["DialogueText"] =tExchangeSecretStar_Text[3315766]
tItem[3315766]["Text1-1"] = {111}
tItem[3315766]["tOption1-1"] = {111,112,113,114}
tItem[3315766]["OptionFunc111"] = "ExchangeSecretStar_Synthesis</N>3315766</N>1"
tItem[3315766]["OptionFunc112"] = "ExchangeSecretStar_Synthesis</N>3315766</N>2"
tItem[3315766]["OptionFunc113"] = "ExchangeSecretStar_Synthesis</N>3315766</N>3"
tItem[3315766]["OptionFunc114"] = "ExchangeSecretStar_Synthesis</N>3315766</N>4"
