------------------------------------------------------------------------------------
--Name:			180619[英文征服][活动脚本]暑期星陨石促销制作
--Purpose:		星陨石促销
--Creator:		wzh
--Created:		2018/06/19
------------------------------------------------------------------------------------
-- 前缀
-- StarStoneSale_

-- LogId 12001095

-- stc掩码说明 
-- stc 

-- 全局表说明
-- global 

---------------------------------------------常量配置部分---------------------------------------
-- Log表
local tStarStoneSale_Log = {}
	tStarStoneSale_Log["Delete"] = "0,0,%d,1,12001095,0,0,0"
	
-- 奖励表
local tStarStoneSale_Reward = {}
	-- 星陨石精装礼盒
	tStarStoneSale_Reward[3309762] = {}
	tStarStoneSale_Reward[3309762]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309762]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309762]["DeleteItem"][1]["Id"] = 3309762
	tStarStoneSale_Reward[3309762]["RewardItem"] = {}
	-- 明亮星陨石*30
	tStarStoneSale_Reward[3309762]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309762]["RewardItem"][1]["Id"] = 3200859
	tStarStoneSale_Reward[3309762]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 万能神纹精粹*5
	tStarStoneSale_Reward[3309762]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309762]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309762]["RewardItem"][2]["Attr"] = "0 5 3"
	tStarStoneSale_Reward[3309762]["LogId"] = 12001095
	tStarStoneSale_Reward[3309762]["EmoneyLog"] = "350	21526	0	0	1	"
	
	-- 星陨石豪华礼盒
	tStarStoneSale_Reward[3309763] = {}
	tStarStoneSale_Reward[3309763]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309763]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309763]["DeleteItem"][1]["Id"] = 3309763
	tStarStoneSale_Reward[3309763]["RewardItem"] = {}
	-- 晶莹星陨石*30
	tStarStoneSale_Reward[3309763]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309763]["RewardItem"][1]["Id"] = 3304566
	tStarStoneSale_Reward[3309763]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 万能神纹精粹*50
	tStarStoneSale_Reward[3309763]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309763]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309763]["RewardItem"][2]["Attr"] = "0 50 3"
	tStarStoneSale_Reward[3309763]["LogId"] = 12001095
	tStarStoneSale_Reward[3309763]["EmoneyLog"] = "350	21527	0	0	1	"
	
	-- 星陨石尊享礼盒
	tStarStoneSale_Reward[3309764] = {}
	tStarStoneSale_Reward[3309764]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309764]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309764]["DeleteItem"][1]["Id"] = 3309764
	tStarStoneSale_Reward[3309764]["RewardItem"] = {}
	-- 璀璨星陨石*10
	tStarStoneSale_Reward[3309764]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309764]["RewardItem"][1]["Id"] = 3009003
	tStarStoneSale_Reward[3309764]["RewardItem"][1]["Attr"] = "0 10"
	-- 万能神纹精粹*150
	tStarStoneSale_Reward[3309764]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309764]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309764]["RewardItem"][2]["Attr"] = "0 150 3"
	tStarStoneSale_Reward[3309764]["LogId"] = 12001095
	tStarStoneSale_Reward[3309764]["EmoneyLog"] = "350	21528	0	0	1	"
	
	-- 星陨石精装礼盒
	tStarStoneSale_Reward[3309783] = {}
	tStarStoneSale_Reward[3309783]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309783]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309783]["DeleteItem"][1]["Id"] = 3309783
	tStarStoneSale_Reward[3309783]["RewardItem"] = {}
	-- 明亮星陨石*30
	tStarStoneSale_Reward[3309783]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309783]["RewardItem"][1]["Id"] = 3200859
	tStarStoneSale_Reward[3309783]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 万能神纹精粹*5
	tStarStoneSale_Reward[3309783]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309783]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309783]["RewardItem"][2]["Attr"] = "0 5 3"
	tStarStoneSale_Reward[3309783]["LogId"] = 12001095
	tStarStoneSale_Reward[3309783]["EmoneyLog"] = "350	21526	0	0	1	"
	
	-- 星陨石豪华礼盒
	tStarStoneSale_Reward[3309784] = {}
	tStarStoneSale_Reward[3309784]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309784]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309784]["DeleteItem"][1]["Id"] = 3309784
	tStarStoneSale_Reward[3309784]["RewardItem"] = {}
	-- 晶莹星陨石*30
	tStarStoneSale_Reward[3309784]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309784]["RewardItem"][1]["Id"] = 3304566
	tStarStoneSale_Reward[3309784]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 万能神纹精粹*50
	tStarStoneSale_Reward[3309784]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309784]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309784]["RewardItem"][2]["Attr"] = "0 50 3"
	tStarStoneSale_Reward[3309784]["LogId"] = 12001095
	tStarStoneSale_Reward[3309784]["EmoneyLog"] = "350	21527	0	0	1	"
	
	-- 星陨石尊享礼盒
	tStarStoneSale_Reward[3309785] = {}
	tStarStoneSale_Reward[3309785]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309785]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309785]["DeleteItem"][1]["Id"] = 3309785
	tStarStoneSale_Reward[3309785]["RewardItem"] = {}
	-- 璀璨星陨石*10
	tStarStoneSale_Reward[3309785]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309785]["RewardItem"][1]["Id"] = 3009003
	tStarStoneSale_Reward[3309785]["RewardItem"][1]["Attr"] = "0 10"
	-- 万能神纹精粹*150
	tStarStoneSale_Reward[3309785]["RewardItem"][2] = {}
	tStarStoneSale_Reward[3309785]["RewardItem"][2]["Id"] = 4060001
	tStarStoneSale_Reward[3309785]["RewardItem"][2]["Attr"] = "0 150 3"
	tStarStoneSale_Reward[3309785]["LogId"] = 12001095
	tStarStoneSale_Reward[3309785]["EmoneyLog"] = "350	21528	0	0	1	"
	
	-- 7RadiantStarStonesBox
	tStarStoneSale_Reward[3309840] = {}
	tStarStoneSale_Reward[3309840]["DeleteItem"] = {}
	tStarStoneSale_Reward[3309840]["DeleteItem"][1] = {}
	tStarStoneSale_Reward[3309840]["DeleteItem"][1]["Id"] = 3309840
	tStarStoneSale_Reward[3309840]["RewardItem"] = {}
	-- 晶莹星陨石*7
	tStarStoneSale_Reward[3309840]["RewardItem"][1] = {}
	tStarStoneSale_Reward[3309840]["RewardItem"][1]["Id"] = 3009002
	tStarStoneSale_Reward[3309840]["RewardItem"][1]["Attr"] = "0 7"
	tStarStoneSale_Reward[3309840]["LogId"] = 12001095
	
----------------------------------------逻辑部分------------------------------------
-- 使用随机礼包
function StarStoneSale_UseRandomPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["StarStoneSale"]["ActivityTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tStarStoneSale_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			
			User_TalkChannel2005(tStarStoneSale_Text[2005]["OutTime"])
		end
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tStarStoneSale_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tStarStoneSale_Text[2005]["FullBag"],nSpace)
		return false
	end
	
	-- 删物品给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tStarStoneSale_Reward,nItemId)
	end
end

-- 使用普通礼包
function StarStoneSale_UseNormalPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- -- 活动时间检测
	-- if not Sys_ChkFullTime(tActivityTime["StarStoneSale"]["ActivityTime"]) then 
		-- if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- -- 记录删除log
			-- local sLog = string.format(tStarStoneSale_Log["Delete"],nItemId)
			-- Sys_SaveActionFestivalLog(sLog)
			
			-- User_TalkChannel2005(tStarStoneSale_Text[2005]["OutTime"])
		-- end
		-- return false
	-- end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStarStoneSale_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStarStoneSale_Text[2005]["FullBag"],nSpace))
		return false
	end
	
	RewardTemplate_UseItem(tStarStoneSale_Reward[nItemId])
end

----------------------------------------模板部分-------------------------------------
----------------------------NPC模板
-- 天石商店大使 23003
tNpcFace[3403] = 178
tNpcGossip[23003] = tNpcGossip[23003] or DefaultNpc:new{}
tNpcGossip[23003]["OptionHidden"] = 1
tNpcGossip[23003]["DialogueText"] = tStarStoneSale_Text[23003]
-- 活动前
tNpcGossip[23003]["Text1-1"] = {111,112,113}
tNpcGossip[23003]["tOption1-1"] = {111}
tNpcGossip[23003]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23003]["Text1-2"] = {121}
tNpcGossip[23003]["tOption1-2"] = {121}
tNpcGossip[23003]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["AfterTime"])
end

-- 活动中
tNpcGossip[23003]["Text1-3"] = {131,132,133}
tNpcGossip[23003]["tOption1-3"] = {131,132}
tNpcGossip[23003]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["ActivityTime"])
end

tNpcGossip[23003]["OptionFunc131"] = "User_OpenDialog</N>0</N>23003" 


-- 赠点商店大使 23004
tNpcFace[3404] = 188
tNpcGossip[23004] = tNpcGossip[23004] or DefaultNpc:new{}
tNpcGossip[23004]["OptionHidden"] = 1
tNpcGossip[23004]["DialogueText"] = tStarStoneSale_Text[23004]
-- 活动前
tNpcGossip[23004]["Text1-1"] = {111,112,113}
tNpcGossip[23004]["tOption1-1"] = {111}
tNpcGossip[23004]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23004]["Text1-2"] = {121}
tNpcGossip[23004]["tOption1-2"] = {121}
tNpcGossip[23004]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["AfterTime"])
end

-- 活动中
tNpcGossip[23004]["Text1-3"] = {131,132,133}
tNpcGossip[23004]["tOption1-3"] = {131,132}
tNpcGossip[23004]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["StarStoneSale"]["ActivityTime"])
end

tNpcGossip[23004]["OptionFunc131"] = "User_OpenDialog</N>0</N>23004" 



-------------------------------物品模板
-- 物品头像
tItemFace[3309759] = 795


--明亮星辰转盘
tItem[3309760] = tItem[3309760] or {}
tItem[3309760]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3997)
end
--晶莹星辰转盘
tItem[3309761] = tItem[3309761] or {}
tItem[3309761]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3998)
end
--明亮星辰转盘
tItem[3309781] = tItem[3309781] or {}
tItem[3309781]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3999)
end
--晶莹星辰转盘
tItem[3309782] = tItem[3309782] or {}
tItem[3309782]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(4000)
end

-- 星陨石精装礼盒
tItem[3309762] = tItem[3309762] or {}
tItem[3309783] = tItem[3309762] or {}
-- 星陨石豪华礼盒
tItem[3309763] = tItem[3309762] or {}
tItem[3309784] = tItem[3309762] or {}
-- 星陨石尊享礼盒
tItem[3309764] = tItem[3309762] or {}
tItem[3309785] = tItem[3309762] or {}
tItem[3309762]["Function"] = function(nItemId,sItemName)
	StarStoneSale_UseNormalPack(nItemId)
end

tItem[3309840] = tItem[3309840] or {}
tItem[3309840]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStarStoneSale_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStarStoneSale_Text[2005]["FullBag"],nSpace))
		return false
	end
	
	RewardTemplate_UseItem(tStarStoneSale_Reward[nItemId])
end
