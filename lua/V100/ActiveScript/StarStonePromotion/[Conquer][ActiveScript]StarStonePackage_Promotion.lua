------------------------------------------------------------------------------------
--Name：       170720[英文征服][活动脚本]星陨石大促销活动制作
--Creator:     潘云锋
--Modified:    潘云锋
--Created:     2017/07/20
--Updated:     2017/09/27
------------------------------------------------------------------------------------
--任务需求：8月星陨石大促销
--活动时间：8.22-9.04 改为 10.17-11.07
--活动详情：在活动时间内，一个NPC出售一系列星陨石买一送一促销包。详情查看：
--          《八月星陨石大促销制作需求.xlsx》
------------------------------------------------------------------------------------
--命名规范：StarStonePackage_Promotion_

----------------------------------表配置部分--------------------------------------------
--定义礼包发奖配置表
local tStarStonePackage_Promotion_Reward = {}
	--打开 '晶莹星陨石特惠包'
	tStarStonePackage_Promotion_Reward[3304353] = {}
	tStarStonePackage_Promotion_Reward[3304353]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304353]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304353]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304353]["DeleteItem"][1]["Id"] = 3304353
	tStarStonePackage_Promotion_Reward[3304353]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304353]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304353]["RewardItem"][1]["Id"] = 3009002
	tStarStonePackage_Promotion_Reward[3304353]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304353]["Talk"] = tStarStonePackage_Promotion_Text[3304353]["Reward"]
	tStarStonePackage_Promotion_Reward[3304353]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304353]["RewardEffect"]["Effect"] = "angelwing"
	--打开 '晶莹星陨石超值包'
	tStarStonePackage_Promotion_Reward[3304354] = {}
	tStarStonePackage_Promotion_Reward[3304354]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304354]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304354]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304354]["DeleteItem"][1]["Id"] = 3304354
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][1]["Id"] = 3304760
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][2] = {}
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][2]["Id"] = 3009002
	tStarStonePackage_Promotion_Reward[3304354]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304354]["Talk"] = tStarStonePackage_Promotion_Text[3304354]["Reward"]
	tStarStonePackage_Promotion_Reward[3304354]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304354]["RewardEffect"]["Effect"] = "angelwing"
	--打开 '明亮星陨石特惠包'
	tStarStonePackage_Promotion_Reward[3304355] = {}
	tStarStonePackage_Promotion_Reward[3304355]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304355]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304355]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304355]["DeleteItem"][1]["Id"] = 3304355
	tStarStonePackage_Promotion_Reward[3304355]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304355]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304355]["RewardItem"][1]["Id"] = 3009001
	tStarStonePackage_Promotion_Reward[3304355]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304355]["Talk"] = tStarStonePackage_Promotion_Text[3304355]["Reward"]
	tStarStonePackage_Promotion_Reward[3304355]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304355]["RewardEffect"]["Effect"] = "angelwing"
	--打开 '明亮星陨石特惠包'
	tStarStonePackage_Promotion_Reward[3304356] = {}
	tStarStonePackage_Promotion_Reward[3304356]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304356]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304356]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304356]["DeleteItem"][1]["Id"] = 3304356
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][1]["Id"] = 3304761
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][2] = {}
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][2]["Id"] = 3009001
	tStarStonePackage_Promotion_Reward[3304356]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304356]["Talk"] = tStarStonePackage_Promotion_Text[3304356]["Reward"]
	tStarStonePackage_Promotion_Reward[3304356]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304356]["RewardEffect"]["Effect"] = "angelwing"
	--打开 '微光星陨石特惠包'
	tStarStonePackage_Promotion_Reward[3304357] = {}
	tStarStonePackage_Promotion_Reward[3304357]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304357]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304357]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304357]["DeleteItem"][1]["Id"] = 3304357
	tStarStonePackage_Promotion_Reward[3304357]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304357]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304357]["RewardItem"][1]["Id"] = 3009000
	tStarStonePackage_Promotion_Reward[3304357]["RewardItem"][1]["Attr"] = "0 11 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304357]["Talk"] = tStarStonePackage_Promotion_Text[3304357]["Reward"]
	tStarStonePackage_Promotion_Reward[3304357]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304357]["RewardEffect"]["Effect"] = "angelwing"
	
	--打开 '晶莹星陨石礼袋'
	tStarStonePackage_Promotion_Reward[3304760] = {}
	tStarStonePackage_Promotion_Reward[3304760]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304760]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304760]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304760]["DeleteItem"][1]["Id"] = 3304760
	tStarStonePackage_Promotion_Reward[3304760]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304760]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304760]["RewardItem"][1]["Id"] = 3009002
	tStarStonePackage_Promotion_Reward[3304760]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304760]["Talk"] = tStarStonePackage_Promotion_Text[3304760]["Reward"]
	tStarStonePackage_Promotion_Reward[3304760]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304760]["RewardEffect"]["Effect"] = "angelwing"
	--打开 '明亮星陨石礼袋'
	tStarStonePackage_Promotion_Reward[3304761] = {}
	tStarStonePackage_Promotion_Reward[3304761]["LogId"] = 12000794
	tStarStonePackage_Promotion_Reward[3304761]["DeleteItem"] = {}
	tStarStonePackage_Promotion_Reward[3304761]["DeleteItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304761]["DeleteItem"][1]["Id"] = 3304761
	tStarStonePackage_Promotion_Reward[3304761]["RewardItem"] = {}
	tStarStonePackage_Promotion_Reward[3304761]["RewardItem"][1] = {}
	tStarStonePackage_Promotion_Reward[3304761]["RewardItem"][1]["Id"] = 3009001
	tStarStonePackage_Promotion_Reward[3304761]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tStarStonePackage_Promotion_Reward[3304761]["Talk"] = tStarStonePackage_Promotion_Text[3304761]["Reward"]
	tStarStonePackage_Promotion_Reward[3304761]["RewardEffect"] = {}
	tStarStonePackage_Promotion_Reward[3304761]["RewardEffect"]["Effect"] = "angelwing"
	
--脚本常量配置
local tStarStonePackage_Promotion_Data = {}
	tStarStonePackage_Promotion_Data["BeforeActivityTime"] = tActivityTime["StarStonePackage"]["BeforeActivityTime"]
	tStarStonePackage_Promotion_Data["ActivityTime"] = tActivityTime["StarStonePackage"]["ActivityTime"]
	
----------------------------------逻辑部分---------------------------------------------
-- 打开商店界面
function StarStonePackage_Promotion_Open(nNpcId)
	
	if not Sys_ChkFullTime(tStarStonePackage_Promotion_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--打开商店
	User_OpenDialog()
end

--打开礼包
function StarStonePackage_Promotion_PackageOpen(nItemId)
	--获取当前玩家ID
	local nUserId = Get_UserId()
	--计算背包剩余空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tStarStonePackage_Promotion_Reward[nItemId],nUserId)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tStarStonePackage_Promotion_Reward[nItemId],nUserId)
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace

	--检查背包中是否有足够空间
	if not RewardTemplate_CheckSpace(tStarStonePackage_Promotion_Reward[nItemId],nUserId) then
		local sText = string.format(tStarStonePackage_Promotion_Text["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText,nUserId)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tStarStonePackage_Promotion_Reward[nItemId])
end

--------------------------------NPC部分---------------------------------------------
tNpcFace[213] = 227
tNpcGossip[20888]= tNpcGossip[20888] or DefaultNpc:new{}
tNpcGossip[20888]["OptionHidden"] = 1
--活动前
tNpcGossip[20888]["Text1-1"] = {111,112,113}
tNpcGossip[20888]["Text111"] = tStarStonePackage_Promotion_Text[20888]["Text111"]
tNpcGossip[20888]["Text112"] = tStarStonePackage_Promotion_Text[20888]["Text112"]
tNpcGossip[20888]["Text113"] = tStarStonePackage_Promotion_Text[20888]["Text113"]
tNpcGossip[20888]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tStarStonePackage_Promotion_Data["BeforeActivityTime"])
end
tNpcGossip[20888]["tOption1-1"] = {1}
tNpcGossip[20888]["Option1"] = tStarStonePackage_Promotion_Text[20888]["Option1"]
--活动后
tNpcGossip[20888]["Text1-2"] = {121}
tNpcGossip[20888]["Text121"] = tStarStonePackage_Promotion_Text[20888]["Text121"]
tNpcGossip[20888]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tStarStonePackage_Promotion_Data["ActivityTime"])
end
tNpcGossip[20888]["tOption1-2"] = {2}
tNpcGossip[20888]["Option2"] = tStarStonePackage_Promotion_Text[20888]["Option2"]

--活动中
tNpcGossip[20888]["Text1-3"] = {131,132,133}
tNpcGossip[20888]["Text131"] = tStarStonePackage_Promotion_Text[20888]["Text131"]
tNpcGossip[20888]["Text132"] = tStarStonePackage_Promotion_Text[20888]["Text132"]
tNpcGossip[20888]["Text133"] = tStarStonePackage_Promotion_Text[20888]["Text133"]
tNpcGossip[20888]["tOption1-3"] = {3}
tNpcGossip[20888]["Option3"] = tStarStonePackage_Promotion_Text[20888]["Option3"]
tNpcGossip[20888]["OptionFunc3"] = "StarStonePackage_Promotion_Open</N>20888"

---------------------------------物品部分---------------------------------------------
--物品"晶莹星陨石特惠包"
tItem[3304353] = tItem[3304353] or {}
tItem[3304353]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"晶莹星陨石超值包"
tItem[3304354] = tItem[3304354] or {}
tItem[3304354]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"明亮星陨石特惠包"
tItem[3304355] = tItem[3304355] or {}
tItem[3304355]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"明亮星陨石超值包"
tItem[3304356] = tItem[3304356] or {}
tItem[3304356]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"微光星陨石特惠包"
tItem[3304357] = tItem[3304357] or {}
tItem[3304357]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"晶莹星陨石礼袋"
tItem[3304760] = tItem[3304760] or {}
tItem[3304760]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end
--物品"明亮星陨石礼袋"
tItem[3304761] = tItem[3304761] or {}
tItem[3304761]["Function"] = function(nItemId,sItemName)
	StarStonePackage_Promotion_PackageOpen(nItemId)
end