------------------------------------------------------------------------------------
--Name：            181123[ios英文征服][活动脚本]圣诞宣传H5发奖action制作
--Creator:      蔡颖静
--Created:     2018/11/23
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tXmasH5RewardAct_Data={}
--物品id 
tXmasH5RewardAct_Data["ItemID"]={}
tXmasH5RewardAct_Data["ItemID"][3311657]=3311657
tXmasH5RewardAct_Data["ItemID"][3311658]=3311658

--XmasLightsGift 15天时效赠品神佑-1%圣诞恋歌（新外套）\明亮星陨石\3000气力值
tXmasH5RewardAct_Data[3311657]={}
tXmasH5RewardAct_Data[3311657]["LogId"] = 12001226
tXmasH5RewardAct_Data[3311657]["DeleteItem"] = {}
tXmasH5RewardAct_Data[3311657]["DeleteItem"][1] = {}
tXmasH5RewardAct_Data[3311657]["DeleteItem"][1]["Id"] = 3311657
tXmasH5RewardAct_Data[3311657]["RewardItem"] = {}
tXmasH5RewardAct_Data[3311657]["RewardItem"][1] = {}
tXmasH5RewardAct_Data[3311657]["RewardItem"][1]["Id"] = 3009001
tXmasH5RewardAct_Data[3311657]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tXmasH5RewardAct_Data[3311657]["RewardItem"][2] = {}
tXmasH5RewardAct_Data[3311657]["RewardItem"][2]["Id"] = 195025
tXmasH5RewardAct_Data[3311657]["RewardItem"][2]["Attr"] = '0 1 3 21600 1 0 0 1'
tXmasH5RewardAct_Data[3311657]["RewardStrengthValue"] = {}
tXmasH5RewardAct_Data[3311657]["RewardStrengthValue"]["Value"] = 3000

--XmasSpecialGift 60天时效赠品一个铃铛圣诞花环\200赠点天石
tXmasH5RewardAct_Data[3311658]={}
tXmasH5RewardAct_Data[3311658]["LogId"] = 12001226
tXmasH5RewardAct_Data[3311658]["DeleteItem"] = {}
tXmasH5RewardAct_Data[3311658]["DeleteItem"][1] = {}
tXmasH5RewardAct_Data[3311658]["DeleteItem"][1]["Id"] = 3311658
tXmasH5RewardAct_Data[3311658]["RewardItem"] = {}
tXmasH5RewardAct_Data[3311658]["RewardItem"][1] = {}
tXmasH5RewardAct_Data[3311658]["RewardItem"][1]["Id"] = 726057
tXmasH5RewardAct_Data[3311658]["RewardItem"][1]["Attr"] = "0 1 3 86400 1"
tXmasH5RewardAct_Data[3311658]["RewardEMoneyMono"] = {}
tXmasH5RewardAct_Data[3311658]["RewardEMoneyMono"]["Value"] = 200
tXmasH5RewardAct_Data[3311658]["EmoneyLog"] = "10000	0096	0	0	200	"

--300000 赠点天石包
tXmasH5RewardAct_Data[3311762]={}
tXmasH5RewardAct_Data[3311762]["LogId"] = 12001226
tXmasH5RewardAct_Data[3311762]["DeleteItem"] = {}
tXmasH5RewardAct_Data[3311762]["DeleteItem"][1] = {}
tXmasH5RewardAct_Data[3311762]["DeleteItem"][1]["Id"] = 3311762
tXmasH5RewardAct_Data[3311762]["RewardEMoneyMono"] = {}
tXmasH5RewardAct_Data[3311762]["RewardEMoneyMono"]["Value"] = 300000
tXmasH5RewardAct_Data[3311762]["EmoneyLog"] = "10000	0097	0	0	300000	"
----------------------------------逻辑部分---------------------------------------------
--打开礼包
function XmasH5RewardAct_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	if nItemId==tXmasH5RewardAct_Data["ItemID"][3311658] then
		-- 判断赠点上限
		local nUserId = Get_UserId()
		local nEmoney = Get_UserMonoEMoney(nUserId)
		local nAddEmoney = tXmasH5RewardAct_Data[nItemId]["RewardEMoneyMono"]["Value"]
		if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tXmasH5RewardAct_Text["SystemTips"]["MoneyFull"])
			return
		end
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tXmasH5RewardAct_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tXmasH5RewardAct_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tXmasH5RewardAct_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tXmasH5RewardAct_Data[nItemId]) then 
		return 
	end 
end 
--打开赠点包
function XmasH5RewardAct_OpenEmoneyMonoPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tXmasH5RewardAct_Data[nItemId]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tXmasH5RewardAct_Text["SystemTips"]["MoneyFull"])
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tXmasH5RewardAct_Data[nItemId]) then 
		return 
	end 
end 
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3311657] = tItem[3311657] or {}
tItem[3311657]["Function"] = function(nItemId,sItemName)
	XmasH5RewardAct_OpenPack(nItemId)
end
tItem[3311658]=tItem[3311657]
tItem[3311762] = tItem[3311762] or {}
tItem[3311762]["Function"] = function(nItemId,sItemName)
	XmasH5RewardAct_OpenEmoneyMonoPack(nItemId)
end