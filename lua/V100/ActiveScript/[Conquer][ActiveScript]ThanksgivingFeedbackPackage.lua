------------------------------------------------------------------------------------
--Name：            171127[英文征服][活动脚本]补偿感恩回馈礼包
--Creator:      王贤
--Created:     2017/11/27
------------------------------------------------------------------------------------
-- 前缀： ThanksgivingFeedbackPackage_
-- LogId: 10002429
------------------------------------------------------------------------------------
--任务需求：
-- 请安排制作一个补偿礼包，礼包给玩家 3000 赠点天石，
-- 11.27-12.10期间首次上线的80级以上玩家可以获得该礼包，
-- 打开直接获得 3000 赠点，12.31 之前打开有效，过期删除。
------------------------------------------------------------------------------------
-- 掩码说明：
-- stc(170,39)	记录玩家领取感恩回馈礼包的次数

----------------------------------表配置部分--------------------------------------------
local tThanksgivingFeedbackPackage_Data = {}
tThanksgivingFeedbackPackage_Data["UseTime"] = tActivityTime["ThanksgivingFeedbackPackage"]["UseItem"]
tThanksgivingFeedbackPackage_Data["EmoneyMo"] = 3000

local tThanksgivingFeedbackPackage_Reward = {}
tThanksgivingFeedbackPackage_Reward[3306727] = {}
tThanksgivingFeedbackPackage_Reward[3306727]["DeleteItem"] = {}
tThanksgivingFeedbackPackage_Reward[3306727]["DeleteItem"][1] = {}
tThanksgivingFeedbackPackage_Reward[3306727]["DeleteItem"][1]["Id"] = 3306727
tThanksgivingFeedbackPackage_Reward[3306727]["RewardEMoneyMono"] = {}
tThanksgivingFeedbackPackage_Reward[3306727]["RewardEMoneyMono"]["Value"] = 3000
tThanksgivingFeedbackPackage_Reward[3306727]["RewardEffect"] = {}
tThanksgivingFeedbackPackage_Reward[3306727]["RewardEffect"]["Effect"] = "angelwing"
tThanksgivingFeedbackPackage_Reward[3306727]["LogId"] = 10002429

----------------------------------逻辑部分---------------------------------------------
-- 感恩回馈礼包使用
function ThanksgivingFeedbackPackage_PackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tThanksgivingFeedbackPackage_Data["UseTime"]) then
		if Item_DelItem(nItemId) then
			Sys_MsgBox(tThanksgivingFeedbackPackage_Text["TimeOut"])
			return
		end
	end
	
	-- 判断背包赠品天石是否满
	local nNeedEMoneyMono = tThanksgivingFeedbackPackage_Data["EmoneyMo"]
	local nMaxEMoneyMono = Get_UserMonoEMoney() + nNeedEMoneyMono
	if nMaxEMoneyMono > G_User_MaxEmoneyMono then
		Sys_MsgBox(tThanksgivingFeedbackPackage_Text["FullEmoney"])
		return
	end
	
	RewardTemplate_UseItem(tThanksgivingFeedbackPackage_Reward[nItemId])
end

---------------------------------物品部分---------------------------------------------
-- 补偿感恩回馈礼包
tItem[3306727] = tItem[3306727] or {}
tItem[3306727]["Function"] = function(nItemId,sItemName)
	ThanksgivingFeedbackPackage_PackageUse(nItemId)
end
