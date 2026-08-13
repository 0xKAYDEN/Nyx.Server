------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]神纹副本门票产出
--Creator:      耿力兀
--Created:     2020-06-09
------------------------------------------------------------------------------------
--任务需求：
--1、副本更新首周，2转以上玩家每天登陆送1个神纹试炼挑战令（3330767），介绍副本和道具获取途径
--2、普通服周常奖励调整，增加神纹试炼挑战令（3330767）的选项，详见附件标黄部分
--3、激情服的神纹兑换商店增加神纹试炼挑战令（3330767）的兑换，100个奇门秘籍换1个挑战令（每周3次），100个鸿蒙灵石换1个挑战令（每周3次）

--ini:41872 = V100\ActiveScript\[Conquer][ActiveScript]TicketsOutput.lua
--前缀：TicketsOutput_
--logid:12002028
--stc：22345 - 22347

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tTicketsOutput_Date = {}
	tTicketsOutput_Date["Metempsychosis"] = 0

local tTicketsOutput_Stc = {}
	tTicketsOutput_Stc["Event"] = 223
	tTicketsOutput_Stc["Type"] = {}
	tTicketsOutput_Stc["Type"][2] = 46
	tTicketsOutput_Stc["Type"][3] = 47
	
local tTicketsOutput_Reward = {}
	-- ===登录给挑战令
	-- ===索引:tTicketsOutput_Reward["Login"]
	tTicketsOutput_Reward["Login"] = {}
	tTicketsOutput_Reward["Login"]["LogId"] = 12002028
	tTicketsOutput_Reward["Login"]["RewardItem"] = {}
	tTicketsOutput_Reward["Login"]["RewardItem"][1] = {}
	tTicketsOutput_Reward["Login"]["RewardItem"][1]["Id"] = 3330767 --  3330767 【cnzf库里没有该物品】, 【表格】神纹试炼挑战令
	tTicketsOutput_Reward["Login"]["RewardItem"][1]["Attr"] = "0 1" --  3330767 【cnzf库里没有该物品】*1
	-- 1天（零点重置）, 可获得1个
	tTicketsOutput_Reward["Login"]["EventType"] = 223
	tTicketsOutput_Reward["Login"]["DataType"] = 45
	tTicketsOutput_Reward["Login"]["RewardDelay"] = 1
	tTicketsOutput_Reward["Login"]["RewardTimeType"] = 4
	tTicketsOutput_Reward["Login"]["RewardData"] = 1
	tTicketsOutput_Reward["Login"]["RewardEffect"] = {}
	tTicketsOutput_Reward["Login"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTicketsOutput_Reward["Login"]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
function TicketsOutput_Login()
	if not Sys_ChkFullTime(tActivityTime["TicketsOutput"]["ActivityTime"]) then
		return
	end
	local nUserId = Get_UserId()
	--玩家转世次数
	local nMeteTimes = Get_UserMetempsychosis(nUserId)
	--if nMeteTimes<tTicketsOutput_Date["Metempsychosis"] then 
		--return 
	--else 
		RewardTemplate_UseItemAndMsg(tTicketsOutput_Reward["Login"])
	--end 
end 









----------------------------------NPC部分---------------------------------------------
-- tNpcFace[4098] = 247
-- tNpcGossip[19252]= tNpcGossip[19252] or DefaultNpc:new{}
-- tNpcGossip[19252]["OptionHidden"] = 1
-- tNpcGossip[19252]["Text1-1"] = {111}
-- tNpcGossip[19252]["Text111"] = tMayDayGift_Text[19252]["Text111"]
-- tNpcGossip[19252]["ChkFunc1-1"]= function()

-- end
-- tNpcGossip[19252]["tOption1-1"] = {111,112}
-- tNpcGossip[19252]["Option111"] = tMayDayGift_Text[19252]["Option111"]
-- tNpcGossip[19252]["OptionFunc111"] = "MayDayGift_Accept </N> 19252"
-- tNpcGossip[19252]["OptionChkFunc111"] = function ()

-- end
-- tNpcGossip[19252]["Option112"] = tMayDayGift_Text[19252]["Option112"]
-- tNpcGossip[19252]["OptionPoint111"] = "2-1"
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- tItem[3200002] = tItem[3200002] or {}
-- tItem[3200002]["Function"] = function(nItemId,sItemName)

-- end
--------物品有对白模板
-- tItem[3005571] = tItem[3005571] or {}
-- tItem[3005571]["Text1-1"] = {111}
-- tItem[3005571]["Text111"] = tFestivalSpring2015_LanternFestival_Text[3005571]["Text111"]
-- tItem[3005571]["ChkFunc1-1"] = function()

-- end
-- tItem[3005571]["tOption1-1"] = {111,112}
-- tItem[3005571]["Option111"] = tFestivalSpring2015_LanternFestival_Text[3005571]["Option111"]
-- tItem[3005571]["OptionFunc111"]="FestivalSpring2015_LanternFestival_Flower</N>5"
-- tItem[3005571]["OptionChkFunc111"] = function ()

-- end
-- tItem[3005571]["Option112"] = tFestivalSpring2015_LanternFestival_Text[3005571]["Option112"]
-- tItem[3005571]["OptionPoint112"] = "2-1"
---------------------------------上线登录---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TicketsOutput_Login)
