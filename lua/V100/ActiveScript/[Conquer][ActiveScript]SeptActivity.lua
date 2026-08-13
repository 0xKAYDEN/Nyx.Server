-------------------------------------------------------------------------------------------------------------------
--Name:		170809[英文征服][活动脚本]9月版本活跃礼包活动
--Purpose:	9月版本活跃礼包活动
--Creator: 	兰冬梅
--Created:	2017/08/09
-------------------------------------------------------------------------------------------------------------------
-- 命名前缀
-- SeptActivity_
--logId 12000821
-------------------------------------------------------------------------------------------------------------------
-- stc掩码说明
-- stc(164,87) :  表示记录玩家上线领取礼包情况
-- stc(164,74) :  表示记录玩家打开礼包的次数情况

local tSeptActivity_Reward ={}
	-- 三阶礼盒
	tSeptActivity_Reward[1] = {}
	tSeptActivity_Reward[1]["Space"] = 1
	tSeptActivity_Reward[1]["Level"] =15
	tSeptActivity_Reward[1]["Metempsychosis"] =2
	tSeptActivity_Reward[1]["RewardItem"] = {}
	tSeptActivity_Reward[1]["RewardItem"][1] = {}
	tSeptActivity_Reward[1]["RewardItem"][1]["Id"] =3304591
	tSeptActivity_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptActivity_Reward[1]["LogId"] =12000821
	-- 二阶礼盒
	tSeptActivity_Reward[2] = {}
	tSeptActivity_Reward[2]["Space"] = 1
	tSeptActivity_Reward[2]["Level"] =15
	tSeptActivity_Reward[2]["Metempsychosis"] =1
	tSeptActivity_Reward[2]["RewardItem"] = {}
	tSeptActivity_Reward[2]["RewardItem"][1] = {}
	tSeptActivity_Reward[2]["RewardItem"][1]["Id"] =3304590
	tSeptActivity_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tSeptActivity_Reward[2]["LogId"] =12000821
	 -- 一阶礼盒
	tSeptActivity_Reward[3] = {}
	tSeptActivity_Reward[3]["Space"] = 1
	tSeptActivity_Reward[3]["Level"] =80
	tSeptActivity_Reward[3]["Metempsychosis"] =0
	tSeptActivity_Reward[3]["RewardItem"] = {}
	tSeptActivity_Reward[3]["RewardItem"][1] = {}
	tSeptActivity_Reward[3]["RewardItem"][1]["Id"] =3304589
	tSeptActivity_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tSeptActivity_Reward[3]["LogId"] =12000821
	
local tSeptActivity_Stc = {}
	--164,87 上线领取礼包情况
	tSeptActivity_Stc[1] = {}
	tSeptActivity_Stc[1]["EventType"] = 164
	tSeptActivity_Stc[1]["DataType"] = 87
	
	 --164,74 打开礼包的次数
	tSeptActivity_Stc[2] = {}
	tSeptActivity_Stc[2]["EventType"] = 164
	tSeptActivity_Stc[2]["DataType"] = 74

local tSeptActivity_GetReward= {}
-- 一阶礼盒
	tSeptActivity_GetReward[3304589] = {}
	tSeptActivity_GetReward[3304589][1] = {}
	tSeptActivity_GetReward[3304589][1]["ItemChanceSum"] = 10000
	
	tSeptActivity_GetReward[3304589][1][1] = {}
	tSeptActivity_GetReward[3304589][1][1]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304589][1][1]["ItemChance"] = 4000
	tSeptActivity_GetReward[3304589][1][1]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304589][1][1]["RewardEMoneyMono"]["Value"] = 100
	tSeptActivity_GetReward[3304589][1][1]["RewardRepairValue"] = {}
	tSeptActivity_GetReward[3304589][1][1]["RewardRepairValue"]["Value"] = 300
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"] = {}
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][1] ["Attr"] = "0 2 3"
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][2]["Id"]= 730002
	tSeptActivity_GetReward[3304589][1][1]["RewardItem"][2]["Attr"]="0 2 3"
	tSeptActivity_GetReward[3304589][1][1]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304589][1][2] = {}
	tSeptActivity_GetReward[3304589][1][2]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304589][1][2]["ItemChance"] = 5000
	tSeptActivity_GetReward[3304589][1][2]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304589][1][2]["RewardEMoneyMono"]["Value"] = 100
	tSeptActivity_GetReward[3304589][1][2]["RewardRepairValue"] = {}
	tSeptActivity_GetReward[3304589][1][2]["RewardRepairValue"]["Value"] = 300
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"] = {}
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][1] ["Attr"] = "0 2 3"
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][2]["Id"]= 720027
	tSeptActivity_GetReward[3304589][1][2]["RewardItem"][2]["Attr"]="0 2 3"
	tSeptActivity_GetReward[3304589][1][2]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304589][1][3] = {}
	tSeptActivity_GetReward[3304589][1][3]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304589][1][3]["ItemChance"] = 1000
	tSeptActivity_GetReward[3304589][1][3]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304589][1][3]["RewardEMoneyMono"]["Value"] = 100
	tSeptActivity_GetReward[3304589][1][3]["RewardRepairValue"] = {}
	tSeptActivity_GetReward[3304589][1][3]["RewardRepairValue"]["Value"] = 300
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"] = {}
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][1] ["Attr"] = "0 2 3"
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][2]["Id"]= 1088000
	tSeptActivity_GetReward[3304589][1][3]["RewardItem"][2]["Attr"]="0 1 3"
	tSeptActivity_GetReward[3304589][1][3]["LogId"] =12000821
	-- 二阶礼盒
	tSeptActivity_GetReward[3304590] = {}
	tSeptActivity_GetReward[3304590][1] = {}
	tSeptActivity_GetReward[3304590][1]["ItemChanceSum"] = 10000
	
	tSeptActivity_GetReward[3304590][1][1] = {}
	tSeptActivity_GetReward[3304590][1][1]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304590][1][1]["ItemChance"] = 5000
	tSeptActivity_GetReward[3304590][1][1]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304590][1][1]["RewardEMoneyMono"]["Value"] = 200
	tSeptActivity_GetReward[3304590][1][1]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304590][1][1]["RewardStrengthValue"]["Value"] = 300
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"] = {}
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][1] ["Attr"] = "0 3 3"
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][2]["Id"]= 730003
	tSeptActivity_GetReward[3304590][1][1]["RewardItem"][2]["Attr"]="0 1 3"
	tSeptActivity_GetReward[3304590][1][1]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304590][1][2] = {}
	tSeptActivity_GetReward[3304590][1][2]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304590][1][2]["ItemChance"] = 1000
	tSeptActivity_GetReward[3304590][1][2]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304590][1][2]["RewardEMoneyMono"]["Value"] = 200
	tSeptActivity_GetReward[3304590][1][2]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304590][1][2]["RewardStrengthValue"]["Value"] = 300
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"] = {}
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][1] ["Attr"] = "0 3 3"
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][2]["Id"]= 3009001
	tSeptActivity_GetReward[3304590][1][2]["RewardItem"][2]["Attr"]="0 2 0 2880 1"
	tSeptActivity_GetReward[3304590][1][2]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304590][1][3] = {}
	tSeptActivity_GetReward[3304590][1][3]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304590][1][3]["ItemChance"] = 4000
	tSeptActivity_GetReward[3304590][1][3]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304590][1][3]["RewardEMoneyMono"]["Value"] = 200
	tSeptActivity_GetReward[3304590][1][3]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304590][1][3]["RewardStrengthValue"]["Value"] = 300
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"] = {}
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][1] ["Id"] = 723700
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][1] ["Attr"] = "0 3 3"
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][2]["Id"]= 1088000
	tSeptActivity_GetReward[3304590][1][3]["RewardItem"][2]["Attr"]="0 1 3"
	tSeptActivity_GetReward[3304590][1][3]["LogId"] =12000821
	-- 三阶礼盒
	tSeptActivity_GetReward[3304591] = {}
	tSeptActivity_GetReward[3304591][1] = {}
	tSeptActivity_GetReward[3304591][1]["ItemChanceSum"] = 10000
	
	tSeptActivity_GetReward[3304591][1][1] = {}
	tSeptActivity_GetReward[3304591][1][1]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304591][1][1]["ItemChance"] = 5000
	tSeptActivity_GetReward[3304591][1][1]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304591][1][1]["RewardEMoneyMono"]["Value"] = 300
	tSeptActivity_GetReward[3304591][1][1]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304591][1][1]["RewardStrengthValue"]["Value"] = 1000
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"] = {}
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][1] ["Id"] = 3003124
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][1] ["Attr"] = "0 10 3"
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][2]["Id"]= 720128
	tSeptActivity_GetReward[3304591][1][1]["RewardItem"][2]["Attr"]="0 5 3"
	tSeptActivity_GetReward[3304591][1][1]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304591][1][2] = {}
	tSeptActivity_GetReward[3304591][1][2]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304591][1][2]["ItemChance"] = 1000
	tSeptActivity_GetReward[3304591][1][2]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304591][1][2]["RewardEMoneyMono"]["Value"] = 300
	tSeptActivity_GetReward[3304591][1][2]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304591][1][2]["RewardStrengthValue"]["Value"] = 1000
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"] = {}
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][1] ["Id"] = 3003124
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][1] ["Attr"] = "0 10 3"
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][2]["Id"]= 3009001
	tSeptActivity_GetReward[3304591][1][2]["RewardItem"][2]["Attr"]="0 5 0 2880 1"
	tSeptActivity_GetReward[3304591][1][2]["LogId"] =12000821
	
	tSeptActivity_GetReward[3304591][1][3] = {}
	tSeptActivity_GetReward[3304591][1][3]["RandomItemChanceType"] =2
	tSeptActivity_GetReward[3304591][1][3]["ItemChance"] = 4000
	tSeptActivity_GetReward[3304591][1][3]["RewardEMoneyMono"] = {}
	tSeptActivity_GetReward[3304591][1][3]["RewardEMoneyMono"]["Value"] = 300
	tSeptActivity_GetReward[3304591][1][3]["RewardStrengthValue"] = {}
	tSeptActivity_GetReward[3304591][1][3]["RewardStrengthValue"]["Value"] = 1000
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"] = {}
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][1] = {}
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][1] ["Id"] = 3003124
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][1] ["Attr"] = "0 10 3"
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][2] = {}
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][2]["Id"]= 3001407
	tSeptActivity_GetReward[3304591][1][3]["RewardItem"][2]["Attr"]="0 1 3"
	tSeptActivity_GetReward[3304591][1][3]["LogId"] =12000821
	
------------------------------------------------逻辑部分-------------------------------------------------
--上线触发
function SeptActivity_LogIn()
	local nRewardIndex = 0
		--判断是否在活动时间
	if not Sys_ChkFullTime(tActivityTime["SeptActivity"]["Item"]) then
		return
	end
	
	-- 判断玩家是否领取过了礼包
	if not Task_ChkStcValue(tSeptActivity_Stc[1]["EventType"],tSeptActivity_Stc[1]["DataType"],"==",0) then
		return
	end
	
-- 给礼包类型
	for i,v in ipairs(tSeptActivity_Reward) do
		if User_JudgeLevelAndMetempsychosis(v["Level"],v["Metempsychosis"]) then
			nRewardIndex = i
			break
			end
	end
	
	--等级不够
	if nRewardIndex == 0 then
		return 
	end
	
	local nItemId = tSeptActivity_Reward[nRewardIndex]["RewardItem"][1]["Id"]
	--背包空间判断
	if not User_CheckLeftSpace(tSeptActivity_Reward[nRewardIndex]["Space"]) then
		User_TalkChannel2005(string.format(tSeptActivity_Text["NoSpace"],Get_ItemtypeName(nItemId)))
		return 
	end
	--记录掩码
	Task_SetStatistic(tSeptActivity_Stc[1]["EventType"],tSeptActivity_Stc[1]["DataType"],1,1)
	Task_SetStcTimestamp(tSeptActivity_Stc[1]["EventType"],tSeptActivity_Stc[1]["DataType"],0)
	--给物品
	RewardTemplate_Reward(tSeptActivity_Reward[nRewardIndex])
end

--打开礼盒
function SeptActivity_UseItem(nItemId)
	--判断是否在活动时间
	if not Sys_ChkFullTime(tActivityTime["SeptActivity"]["Item"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_MsgBox(tSeptActivity_Text["OutTime"])
		end
		return
	end
	
	--隔天清掩码
	if Task_StcInterval(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],1,4) then
		Task_SetStatistic(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],0,1)
		Task_SetStcTimestamp(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],0)
	end
	
	--今日是否打开
	if not Task_ChkStcValue(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],"==",0) then
		Sys_MsgBox(tSeptActivity_Text["OpenOnce"])
		return
	end
	
	--背包检测
	local nNum =RewardTemplate_GetRandomSpace(tSeptActivity_GetReward[nItemId],1)
	if not User_CheckLeftSpace(nNum) then
		Sys_MsgBox(string.format(tSeptActivity_Text["SpaceFull"],nNum))
		return
	end
	
	--天石（赠）满
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tSeptActivity_GetReward[nItemId][1][1]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tSeptActivity_Text["EMoneyMono"])
		return
	end
	
	--记录掩码
	Task_SetStatistic(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],1,1)
	Task_SetStcTimestamp(tSeptActivity_Stc[2]["EventType"],tSeptActivity_Stc[2]["DataType"],0)
	--给物品
	RewardTemplate_NewRandomNoTip(tSeptActivity_GetReward[nItemId],1)
end
-------------------------------------物品配置--------------------------------------------
tItem[3304589] = tItem[3304589] or {}
tItem[3304589]["Function"] = function(nItemId,sItemName)
		SeptActivity_UseItem(nItemId)
end
tItem[3304590] = tItem[3304589]
tItem[3304591] = tItem[3304589]
--------------------------------------------上线触发---------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SeptActivity_LogIn)
