------------------------------------------------------------------------------------
--Name：            190213[简体征服][活动脚本]烦请制作斗神公测全民福利礼包
--Creator:      蔡颖静
--Created:     2019/02/13
------------------------------------------------------------------------------------
--任务需求：

-- 更新时间：2月21日，跟斗神新职业一起更新
-- 礼包发放时间为：2月21日-3月20日
-- 所有玩家上线均可获得一个“斗神公测福利礼包”，每个玩家仅能获得一个，丢弃不补发，礼包只可以开一次。
------------------------------------------------------------------------------------
--lua.ini:41138
--logid:12001293
--前缀：tThorPack_
--掩码 : 
--stc(190,11)	上线获得礼包
--stc(190,12)	打开礼包



----------------------------------表配置部分--------------------------------------------
	local tThorPack_Data={}
		-- 等级
	tThorPack_Data["Level"] = 15
	tThorPack_Data["Metempsychosis"] = 0
	--掩码
	tThorPack_Data["Stc"]={}
	
	--stc(190,11)	上线获得礼包
	tThorPack_Data["Stc"][1]={}
	tThorPack_Data["Stc"][1]["EventType"]=190
	tThorPack_Data["Stc"][1]["DataType"]=11
	tThorPack_Data["Stc"][1]["Completed"]=1
	
	--stc(190,12)	打开礼包
	tThorPack_Data["Stc"][2]={}
	tThorPack_Data["Stc"][2]["EventType"]=190
	tThorPack_Data["Stc"][2]["DataType"]=12
	tThorPack_Data["Stc"][2]["Completed"]=1
	
	--背包空间
	tThorPack_Data["NeedSpace"]=1
	
	-- 区分二转
	tThorPack_Data["Item"]={}
	tThorPack_Data["Item"][3320161]={}
	tThorPack_Data["Item"][3320161]["Level"] = 0
	tThorPack_Data["Item"][3320161]["Metempsychosis"] = 2
	
	--天石上限判断
	tThorPack_Data["MaxEMonoMoney"]=8888
	
	--上线获得礼包
	tThorPack_Data["Login"]={}
	tThorPack_Data["Login"]["RewardItem"] = {}
	tThorPack_Data["Login"]["RewardItem"][1] = {}
	tThorPack_Data["Login"]["RewardItem"][1]["Id"] = 3320161
	tThorPack_Data["Login"]["RewardItem"][1]["Attr"] = "0 1"
	tThorPack_Data["Login"]["LogId"] = 12001293
	
	
	--光效
	tThorPack_Data["Effect"] = {}
	tThorPack_Data["Effect"][1] = "self"
	tThorPack_Data["Effect"][2] = "angelwing"
	
	--斗神公测福利礼包
	tThorPack_Data[3320161]={}
	
	--二转及以上玩家
	tThorPack_Data[3320161][1]={}
	tThorPack_Data[3320161][1]["ItemChanceSum"] = 10000
	
	--8888天石	8888	0.01%
	tThorPack_Data[3320161][1][1]={}
	tThorPack_Data[3320161][1][1]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][1]["ItemChance"] = 1
	tThorPack_Data[3320161][1][1]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][1]["RewardEMoneyMono"]["Value"] = 8888
	tThorPack_Data[3320161][1][1]["Index"] = 1
	tThorPack_Data[3320161][1][1]["EmoneyLog"] = "10000	0144	0	0	8888	"
	tThorPack_Data[3320161][1][1]["LogId"] = 12001293
	
	--888天石	888	5.99%
	tThorPack_Data[3320161][1][2]={}
	tThorPack_Data[3320161][1][2]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][2]["ItemChance"] = 599
	tThorPack_Data[3320161][1][2]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][2]["RewardEMoneyMono"]["Value"] = 888
	tThorPack_Data[3320161][1][2]["Index"] = 2
	tThorPack_Data[3320161][1][2]["EmoneyLog"] = "10000	0145	0	0	888	"
	tThorPack_Data[3320161][1][2]["LogId"] = 12001293
	
	--588天石	588	75.00%
	tThorPack_Data[3320161][1][3]={}
	tThorPack_Data[3320161][1][3]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][3]["ItemChance"] = 7500
	tThorPack_Data[3320161][1][3]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][3]["RewardEMoneyMono"]["Value"] = 588
	tThorPack_Data[3320161][1][3]["Index"] = 0
	tThorPack_Data[3320161][1][3]["EmoneyLog"] = "10000	0146	0	0	588	"
	tThorPack_Data[3320161][1][3]["LogId"] = 12001293
	
	--288天石	288	10.00%
	tThorPack_Data[3320161][1][4]={}
	tThorPack_Data[3320161][1][4]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][4]["ItemChance"] = 1000
	tThorPack_Data[3320161][1][4]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][4]["RewardEMoneyMono"]["Value"] = 288
	tThorPack_Data[3320161][1][4]["Index"] = 0
	tThorPack_Data[3320161][1][4]["EmoneyLog"] = "10000	0147	0	0	288	"
	tThorPack_Data[3320161][1][4]["LogId"] = 12001293
	
	--188天石	188	8.00%
	tThorPack_Data[3320161][1][5]={}
	tThorPack_Data[3320161][1][5]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][5]["ItemChance"] = 800
	tThorPack_Data[3320161][1][5]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][5]["RewardEMoneyMono"]["Value"] = 188
	tThorPack_Data[3320161][1][5]["Index"] = 0
	tThorPack_Data[3320161][1][5]["EmoneyLog"] = "10000	0148	0	0	188	"
	tThorPack_Data[3320161][1][5]["LogId"] = 12001293
	
	--88天石	88	0.90%
	tThorPack_Data[3320161][1][6]={}
	tThorPack_Data[3320161][1][6]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][6]["ItemChance"] = 90
	tThorPack_Data[3320161][1][6]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][6]["RewardEMoneyMono"]["Value"] = 88
	tThorPack_Data[3320161][1][6]["Index"] = 0
	tThorPack_Data[3320161][1][6]["EmoneyLog"] = "10000	0149	0	0	88	"
	tThorPack_Data[3320161][1][6]["LogId"] = 12001293
	
	--58天石	58	0.10%
	tThorPack_Data[3320161][1][7]={}
	tThorPack_Data[3320161][1][7]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][1][7]["ItemChance"] = 10
	tThorPack_Data[3320161][1][7]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][1][7]["RewardEMoneyMono"]["Value"] = 58
	tThorPack_Data[3320161][1][7]["Index"] = 0
	tThorPack_Data[3320161][1][7]["EmoneyLog"] = "10000	0150	0	0	58	"
	tThorPack_Data[3320161][1][7]["LogId"] = 12001293

	--二转一下玩家
	tThorPack_Data[3320161][2]={}
	tThorPack_Data[3320161][2]["ItemChanceSum"] = 10000
	
	--188天石	188	30.00%
	tThorPack_Data[3320161][2][1]={}
	tThorPack_Data[3320161][2][1]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][2][1]["ItemChance"] = 3000
	tThorPack_Data[3320161][2][1]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][2][1]["RewardEMoneyMono"]["Value"] = 188
	tThorPack_Data[3320161][2][1]["Index"] = 0
	tThorPack_Data[3320161][2][1]["EmoneyLog"] = "10000	0148	0	0	188	"
	tThorPack_Data[3320161][2][1]["LogId"] = 12001293
	
	--88天石	88	50.00%
	tThorPack_Data[3320161][2][2]={}
	tThorPack_Data[3320161][2][2]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][2][2]["ItemChance"] = 5000
	tThorPack_Data[3320161][2][2]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][2][2]["RewardEMoneyMono"]["Value"] = 88
	tThorPack_Data[3320161][2][2]["EmoneyLog"] = "10000	0149	0	0	88	"
	tThorPack_Data[3320161][2][2]["Index"] = 0
	tThorPack_Data[3320161][2][2]["LogId"] = 12001293
	
	--58天石	58	20.00%
	tThorPack_Data[3320161][2][3]={}
	tThorPack_Data[3320161][2][3]["RandomItemChanceType"] = 2
	tThorPack_Data[3320161][2][3]["ItemChance"] = 2000
	tThorPack_Data[3320161][2][3]["RewardEMoneyMono"] = {}
	tThorPack_Data[3320161][2][3]["RewardEMoneyMono"]["Value"] = 58
	tThorPack_Data[3320161][2][3]["EmoneyLog"] = "10000	0150	0	0	58	"
	tThorPack_Data[3320161][2][3]["Index"] = 0
	tThorPack_Data[3320161][2][3]["LogId"] = 12001293
	
	
	tThorPack_Data["Log"]={}
	tThorPack_Data["Log"][3320161] = "0,0,3320161,%d,12001293,1,0,0"
----------------------------------逻辑部分---------------------------------------------
function ThorPack_Login()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ThorPack"]["ActivityTime"]) then
		return
	end
	
		-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tThorPack_Data["Level"],tThorPack_Data["Metempsychosis"]) then
		return
	end 
	
	--判断掩码
	local nEventType=tThorPack_Data["Stc"][1]["EventType"]
	local nDataType=tThorPack_Data["Stc"][1]["DataType"]
	local nComplete=tThorPack_Data["Stc"][1]["Completed"]
	
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return 
	end 
	
	--判断背包空间
	if not User_CheckLeftSpace(tThorPack_Data["NeedSpace"]) then
		 Sys_MsgBox(tThorPack_Text["SystemTip"]["NoSpace"])
		return
	end
	
	--打掩码
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	
	--给礼包
	if RewardTemplate_UseItem(tThorPack_Data["Login"]) then
		return Sys_MsgBox(tThorPack_Text["SystemTip"]["Login"])
	end
end

--打开礼包
function ThorPack_OpenPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end

	--判断掩码
	local nEventType=tThorPack_Data["Stc"][2]["EventType"]
	local nDataType=tThorPack_Data["Stc"][2]["DataType"]
	local nComplete=tThorPack_Data["Stc"][2]["Completed"]
	
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return 
	end 
	
	--赠点上限判断
	if Get_UserMonoEMoney() + tThorPack_Data["MaxEMonoMoney"] > G_User_MaxEmoneyMono then
		return Sys_MsgBox(tThorPack_Text["SystemTip"]["OpenFail"])
	end
	
	--判断玩家是否二转
	local nMete = 2
	if not User_JudgeLevelAndMetempsychosis(tThorPack_Data["Item"][nItemId]["Level"],tThorPack_Data["Item"][nItemId]["Metempsychosis"]) then
		nMete = 2
	else
		nMete = 1
	end

	--打掩码
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	
	--打开随机礼包
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除log
		local sLog = string.format(tThorPack_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		
		local tAward = RewardTemplate_NewRandom(tThorPack_Data[nItemId],nMete)
		local nIndex = tAward[1]["tAward"][1]["Index"]
		local nEmonoMoney=tAward[1]["tAward"][1]["RewardEMoneyMono"]["Value"]
	
		--全服公告
		if nIndex~=0 then 
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			Sys_TalkBroadcast(string.format(tThorPack_Text["SystemTip"]["Broadcast"][nIndex],sUserName))
		end
		--播放特效
		User_EffectAdd(tThorPack_Data["Effect"][1],tThorPack_Data["Effect"][2])
		--105提示
		Sys_MsgBox(string.format(tThorPack_Text["SystemTip"]["OpenSucceed"],nEmonoMoney))
	end
end


---------------------------------物品部分---------------------------------------------
--斗神公测福利礼包
tItem[3320161] = tItem[3320161] or {}
tItem[3320161]["Function"] = function(nItemId,sItemName)
	ThorPack_OpenPack(nItemId)
end


--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,ThorPack_Login)