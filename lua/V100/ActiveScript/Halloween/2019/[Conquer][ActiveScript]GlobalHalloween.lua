------------------------------------------------------------------------------------
--Name：            190918[简体征服][活动脚本]全球万圣节活动-月光光心慌慌
--Creator:      冯子鑫
--Created:     2019/09/18
------------------------------------------------------------------------------------
--任务需求：
-- 在双龙城放置一个npc：劳瑞。玩家野外杀怪的时候，概率出现boss“迈克尔·麦尔斯”，击败后即可获得“恶魔面具”，
-- 将头颅交给劳瑞可兑换奖励，同时获得特殊成就“月光光心慌慌”和“迈克尔·麦尔斯的变身形象”

--前缀 GlobalHalloween_
-- logid: 12001638
-- 恶魔面具 3326350
-- 41519 = V100\ActiveScript\[Conquer][ActiveScript]GlobalHalloween.lua
-- 41519 = V100\活动脚本\[征服][活动脚本]全球万圣节活动-月光光心慌慌.lua

--掩码：
--stc（204,69）提交恶魔面具获得奖励
--stc（208,60）已经消耗50w银两


--动态全局表
--SysDyGlobId
--data0：保存boss刷新坐标X
--data1：保存boss刷新坐标Y
--data2：保存boss刷新地图
--data3：保存完成任务人数
--data4：保存首次完成任务玩家ID
--dataStr0：保存首次完成任务玩家姓名



------------------------------------------------------------------------------------
local tGlobalHalloween_Data = {}
	--提交恶魔面具获得奖励
	tGlobalHalloween_Data["Stc"] = {}
	tGlobalHalloween_Data["Stc"][1] = {}
	tGlobalHalloween_Data["Stc"][1]["EventType"]=204
	tGlobalHalloween_Data["Stc"][1]["DataType"]=69
	tGlobalHalloween_Data["Stc"][1]["Completed"]=1
	tGlobalHalloween_Data["Stc"][2] = {}
	tGlobalHalloween_Data["Stc"][2]["EventType"]=208
	tGlobalHalloween_Data["Stc"][2]["DataType"]=60
	tGlobalHalloween_Data["Stc"][2]["Completed"]=1

	
	--记录怪物位置动态码
	tGlobalHalloween_Data["SysDyGlobId"] = 53757
	
	--记录NPC劳瑞ID
	tGlobalHalloween_Data["FindWay"] = 24957
	tGlobalHalloween_Data["Twins"] = 1002
	tGlobalHalloween_Data["NoGift"] = 1036
	
	--恶魔面具
	tGlobalHalloween_Data["ItemtypeId"] = 3326350
	
	tGlobalHalloween_Data["NeedMoney"] = 500000
	--刷boss相关

	--神龙岛
	tGlobalHalloween_Data["RefrashBoss"] = {}
	tGlobalHalloween_Data["RefrashBoss"]["MonsterId"] = 5747
	tGlobalHalloween_Data["RefrashBoss"][1] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Name"] = "神龙岛"
	tGlobalHalloween_Data["RefrashBoss"][1]["MapId"] = 10137--神龙岛
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1]["GenId"] = 30029
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1]["X"] = 336
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1]["Y"] = 474
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][2] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][2]["GenId"] = 30030
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][2]["X"] = 504
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][2]["Y"] = 735
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][3] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][3]["GenId"] = 30031
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][3]["X"] = 655
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][3]["Y"] = 535
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][4] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][4]["GenId"] = 30076
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][4]["X"] = 454
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][4]["Y"] = 377
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][5] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][5]["GenId"] = 30077
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][5]["X"] = 309
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][5]["Y"] = 244
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][6] = {}
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][6]["GenId"] = 30078
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][6]["X"] = 595
	tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][6]["Y"] = 278


	--古神灵境
	tGlobalHalloween_Data["RefrashBoss"][2] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Name"] = "古神灵境"
	tGlobalHalloween_Data["RefrashBoss"][2]["MapId"] = 10250--古神灵境
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][1] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][1]["GenId"] = 30079
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][1]["X"] = 636
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][1]["Y"] = 894
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][2] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][2]["GenId"] = 30080
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][2]["X"] = 281
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][2]["Y"] = 546
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][3] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][3]["GenId"] = 30081
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][3]["X"] = 636
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][3]["Y"] = 597
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][4] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][4]["GenId"] = 30082
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][4]["X"] = 919
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][4]["Y"] = 729
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][5] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][5]["GenId"] = 30083
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][5]["X"] = 449
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][5]["Y"] = 196
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][6] = {}
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][6]["GenId"] = 30084
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][6]["X"] = 1200
	tGlobalHalloween_Data["RefrashBoss"][2]["Pos"][6]["Y"] = 973
	
	--激情服
	tGlobalHalloween_Data["RefrashBossNogift"] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Name"] = "永生之堭"
	tGlobalHalloween_Data["RefrashBossNogift"][1]["MapId"] = 10481--永生之堭
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][1] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][1]["GenId"] = 30085
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][1]["X"] = 337
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][1]["Y"] = 461
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][2] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][2]["GenId"] = 30086
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][2]["X"] = 250
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][2]["Y"] = 331
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][3] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][3]["GenId"] = 30087
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][3]["X"] = 472
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][3]["Y"] = 368
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][4] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][4]["GenId"] = 30088
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][4]["X"] = 388
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][4]["Y"] = 216
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][5] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][5]["GenId"] = 30089
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][5]["X"] = 495
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][5]["Y"] = 248
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][6] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][6]["GenId"] = 30090
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][6]["X"] = 617
	tGlobalHalloween_Data["RefrashBossNogift"][1]["Pos"][6]["Y"] = 275
	
	tGlobalHalloween_Data["RefrashBossNogift"][2] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Name"] = "罪业之堭"
	tGlobalHalloween_Data["RefrashBossNogift"][2]["MapId"] = 10480--罪业之堭
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][1] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][1]["GenId"] = 30091
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][1]["X"] = 343
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][1]["Y"] = 458
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][2] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][2]["GenId"] = 30092
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][2]["X"] = 247
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][2]["Y"] = 316
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][3] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][3]["GenId"] = 30093
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][3]["X"] = 394
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][3]["Y"] = 316
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][4] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][4]["GenId"] = 30094
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][4]["X"] = 482
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][4]["Y"] = 374
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][5] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][5]["GenId"] = 30095
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][5]["X"] = 480
	tGlobalHalloween_Data["RefrashBossNogift"][2]["Pos"][5]["Y"] = 366


	tGlobalHalloween_Data["RefrashBossNogift"][3] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Name"] = "无间之堭"
	tGlobalHalloween_Data["RefrashBossNogift"][3]["MapId"] = 10479--无间之堭
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1]["GenId"] = 30096
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1]["X"] = 225
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1]["Y"] = 442
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][2] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][2]["GenId"] = 30097
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][2]["X"] = 248
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][2]["Y"] = 330
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][3] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][3]["GenId"] = 30098
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][3]["X"] = 345
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][3]["Y"] = 474
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][4] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][4]["GenId"] = 30099
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][4]["X"] = 226
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][4]["Y"] = 309
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][5] = {}
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][5]["GenId"] = 30100
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][5]["X"] = 389
	tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][5]["Y"] = 323
	-- 等级
	-- tGlobalHalloween_Data["Level"] = 80
	-- tGlobalHalloween_Data["Metempsychosis"] = 0
	
	-- 双龙城Id
	tGlobalHalloween_Data["TwinCity"] = {}
	tGlobalHalloween_Data["TwinCity"]["Normal"] = 1002
	-- 激情服改为市场
	tGlobalHalloween_Data["TwinCity"]["Special"] = 1036
	
	--log
	tGlobalHalloween_Data["Log"]={}
	--删除道具log
	tGlobalHalloween_Data["Log"][3326350] = "0,0,3326350,%d,12001638,2,0,0"
	tGlobalHalloween_Data["Log"]["Money"] = "0,0,1,500000,12001638,3,0,0"
	
	--活动时间
	tGlobalHalloween_Data["ActivityTime"] = tActivityTime["GlobalHalloween"]["ActivityTime"]
	
	--奖励配表
	

	tGlobalHalloween_Data["Reward"] = {}
	tGlobalHalloween_Data["Reward"][7] = {}
	-- ===恶魔面具
	-- ===索引: tGlobalHalloween_Data["Reward"][7]
	tGlobalHalloween_Data["Reward"][7]["LogId"] = 12001638
	tGlobalHalloween_Data["Reward"][7]["RewardItem"] = {}
	tGlobalHalloween_Data["Reward"][7]["RewardItem"][1] = {}
	tGlobalHalloween_Data["Reward"][7]["RewardItem"][1]["Id"] = 3326350 --  3326350 【库里没有该物品】, 【表格】万圣降魔礼盒
	tGlobalHalloween_Data["Reward"][7]["RewardItem"][1]["Attr"] = "0 1" --  3326350 【库里没有该物品】*1
	
	
	
----------------------------------逻辑部分---------------------------------------------


--NPC处完成任务领取奖励
function GlobalHalloween_GetReward(nNpcId)
	-- 判断是否处于活动时间内
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return
	end
	local nEventType=tGlobalHalloween_Data["Stc"][1]["EventType"]
	local nDataType=tGlobalHalloween_Data["Stc"][1]["DataType"]
	local nComplete = tGlobalHalloween_Data["Stc"][1]["Completed"]
	local nSysDyGlobId = tGlobalHalloween_Data["SysDyGlobId"]
	local nData3 = Get_SysDynaGlobalData3(nSysDyGlobId)
	local nData4 = Get_SysDynaGlobalData4(nSysDyGlobId)
	local sDataStr0 = Get_SysDynaGlobalDataStr0(nSysDyGlobId)
	
	if not Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		--空间不足
		
		-- local nSpace = RewardTemplate_GetRewardSpace(tHalloweenReward_Award["Monster"])
		local nSpace = 2
		if not User_CheckLeftSpace(nSpace) then
		
			tNpcGossip[nNpcId]["Text141"] = string.format(tGlobalHalloween_Text[24957]["Text141"], nSpace)
			LinkNpcGossipFunc_New(nNpcId, "1-4")
			return
		end
		
		if Item_ChkItem(tGlobalHalloween_Data["ItemtypeId"]) and Item_DelItem(tGlobalHalloween_Data["ItemtypeId"]) then 
			
			Task_SetStatistic(nEventType, nDataType, 1, 1)
			Task_SetStcTimestamp(nEventType, nDataType, 0)
			
			--记录首次完成任务玩家以及完成任务玩家数量
			if nData3 <= 0 then
				nData3 = nData3 + 1
				Sys_SetSynaGlobalData3(nSysDyGlobId,nData3)
				Sys_SetSynaGlobalData4(nSysDyGlobId,Get_UserId())
				Sys_SetSynaGlobalDataStr0(nSysDyGlobId,Get_UserName())
			else
				nData3 = nData3 + 1
				Sys_SetSynaGlobalData3(nSysDyGlobId,nData3)
			end
			
			-- RewardTemplate_UseItemAndMsg(tGlobalHalloween_Data["Reward"][6])
			HalloweenReward_SubmitHead()
			--记删除道具log
			local str = string.format(tGlobalHalloween_Data["Log"][tGlobalHalloween_Data["ItemtypeId"]],1)
			Sys_SaveActionFestivalLog(str)
			--领奖播报
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			Sys_SystemBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["Reward"],sUserName))
			
			
			LinkNpcGossipFunc_New(nNpcId, "1-3")
		else
			LinkNpcGossipFunc_New(nNpcId, "1-5")
		end
	end
	
end



--刷新boss
function GlobalHalloween_RefrashBoss()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return
	end
	
	local bNogift = false --标注是否为激情服
	
	
	local nMonsterId = tGlobalHalloween_Data["RefrashBoss"]["MonsterId"]
	local nSysDyGlobId = tGlobalHalloween_Data["SysDyGlobId"]
	local nTmp = #tGlobalHalloween_Data["RefrashBoss"]
	local nMapNum = math.random(1,nTmp)
	local nPosNum = #tGlobalHalloween_Data["RefrashBoss"][nMapNum]["Pos"]
	local nIndex = math.random(1,nPosNum)
	local nMapId = tGlobalHalloween_Data["RefrashBoss"][nMapNum]["MapId"]
	local nGenId = tGlobalHalloween_Data["RefrashBoss"][nMapNum]["Pos"][nIndex]["GenId"]
	local nPosX = tGlobalHalloween_Data["RefrashBoss"][nMapNum]["Pos"][nIndex]["X"]
	local nPosY = tGlobalHalloween_Data["RefrashBoss"][nMapNum]["Pos"][nIndex]["Y"]
	local sMapName = tGlobalHalloween_Text["RefrashBoss"][nMapNum]
	--激情服
	if SpecialServer_ChkNoGiftServer() then
	
		nTmp = #tGlobalHalloween_Data["RefrashBossNogift"]
		nMapNum = math.random(1,nTmp)
		sMapName = tGlobalHalloween_Text["RefrashBossNogift"][nMapNum]
		nPosNum = #tGlobalHalloween_Data["RefrashBossNogift"][nMapNum]["Pos"]
		nIndex = math.random(1,nPosNum)
		nMapId  = tGlobalHalloween_Data["RefrashBossNogift"][nMapNum]["MapId"]
		nGenId = tGlobalHalloween_Data["RefrashBossNogift"][nMapNum]["Pos"][nIndex]["GenId"]
		nPosX = tGlobalHalloween_Data["RefrashBossNogift"][nMapNum]["Pos"][nIndex]["X"]
		nPosY = tGlobalHalloween_Data["RefrashBossNogift"][nMapNum]["Pos"][nIndex]["Y"]
		bNogift = true
	end
	--判断是否有存在BOSS
	if not(bNogift) then
		--普通服判断两个地方是否有boss
		
		for i = 1,nTmp do
			if Get_SysTempData(1,tGlobalHalloween_Data["RefrashBoss"][i]["MapId"],nMonsterId) > 0 then
				--全服公告
				nPosX = Get_SysDynaGlobalData0(nSysDyGlobId)
				nPosY = Get_SysDynaGlobalData1(nSysDyGlobId)
				nMapId = Get_SysDynaGlobalData2(nSysDyGlobId)
				if nMapId == tGlobalHalloween_Data["RefrashBoss"][1]["MapId"] then
					sMapName = tGlobalHalloween_Text["RefrashBoss"][1]
				else
					sMapName = tGlobalHalloween_Text["RefrashBoss"][2]
				end
				Sys_SystemBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
				Sys_TalkBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
				return
			end
		end
		
	else
		
		--判断激情服boss之家前三层

		for i = 1,nTmp do
			if Get_SysTempData(1,tGlobalHalloween_Data["RefrashBossNogift"][i]["MapId"],nMonsterId) > 0 then
				--全服公告
				nPosX = Get_SysDynaGlobalData0(nSysDyGlobId)
				nPosY = Get_SysDynaGlobalData1(nSysDyGlobId)
				nMapId = Get_SysDynaGlobalData2(nSysDyGlobId)
				sMapName = tGlobalHalloween_Text["RefrashBossNogift"][10482-nMapId]
				Sys_SystemBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
				Sys_TalkBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
				return
			end
		end
	end
	
	if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
		
		--记录怪物坐标
		Sys_SetSynaGlobalData0(nSysDyGlobId,nPosX)
		Sys_SetSynaGlobalData1(nSysDyGlobId,nPosY)
		Sys_SetSynaGlobalData2(nSysDyGlobId,nMapId)
		--全服公告
		Sys_SystemBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
		Sys_TalkBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["RefrashBoss"],sMapName, nPosX, nPosY))
	end

end


--击杀boss触发
function  GlobalHalloween_KillBoss()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nMonsterId = tGlobalHalloween_Data["RefrashBoss"]["MonsterId"]

	
	Monster_Death(nMonsterId,nMapId)
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return
	end
	
	--全服公告
	Sys_SystemBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["KillBoss"],sUserName))
	Sys_TalkBroadcast(string.format(tGlobalHalloween_Text["Broadcast"]["KillBoss"],sUserName))

	
	--判断背包空间
	if not User_CheckLeftSpace(1,nUserId) then
		
		local nActionId = tGlobalHalloween_Text["KillBoss"]["Action"]
		local nExistDay = tGlobalHalloween_Text["KillBoss"]["ExistDay"]
		local sLetterSender = tGlobalHalloween_Text["KillBoss"]["LetterSender"]
		local sLetterTitle = tGlobalHalloween_Text["KillBoss"]["LetterTitle"]
		local sContent = tGlobalHalloween_Text["KillBoss"]["Content"]
		--背包空间满，发邮件
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sLetterSender,sLetterTitle,sContent)
		--105弹框提示
		Sys_MsgBox(tGlobalHalloween_Text["KillBoss"]["NoSpace"])
		User_TalkChannel2005(tGlobalHalloween_Text["KillBoss"]["NoSpace"])
		return
	end
	local nItemtypeId = tGlobalHalloween_Data["ItemtypeId"]
	RewardTemplate_UseItemAndMsg(tGlobalHalloween_Data["Reward"][7])
	--105弹框提示
	Sys_MsgBox(tGlobalHalloween_Text["KillBoss"]["Reward"])
	User_TalkChannel2005(tGlobalHalloween_Text["KillBoss"]["Reward"])
	
end
--花银两获取信息
function GlobalHalloween_GetInformation(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	--判断是否已经消耗过银两
	local nEventType2 =tGlobalHalloween_Data["Stc"][2]["EventType"]
	local nDataType2 =tGlobalHalloween_Data["Stc"][2]["DataType"]
	local nComplete2 = tGlobalHalloween_Data["Stc"][2]["Completed"]
	if not Task_ChkStcValue(nEventType2,nDataType2,">=",nComplete2) then
		--判断背包金币是否够
		if not User_CanPutMoney2Bag(-tGlobalHalloween_Data["NeedMoney"],nUserId) then
			User_TalkChannel2005(tGlobalHalloween_Text["SystemTips"]["NotMoney"])
			Sys_MsgBox(tGlobalHalloween_Text["SystemTips"]["NotMoney"])
			return
		end
		
		-- 扣除银两
		if User_AddMoney(-tGlobalHalloween_Data["NeedMoney"],nUserId) then
			Task_SetStatistic(nEventType2, nDataType2, 1, 1)
			Task_SetStcTimestamp(nEventType2, nDataType2, 0)
			Sys_SaveActionFestivalLog(tGlobalHalloween_Data["Log"]["Money"])
		end
		
		LinkNpcGossipFunc_New(nNpcId, "1-7")
	end
	
end

function GlobalHalloween_TransferToMonster(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return
	end
	

	local nRange = 5
	local nUserId = Get_UserId()
	local nMonsterId = tGlobalHalloween_Data["RefrashBoss"]["MonsterId"]
	local nSysDyGlobId = tGlobalHalloween_Data["SysDyGlobId"]
	local nPosX = Get_SysDynaGlobalData0(nSysDyGlobId) 
	local nPosY = Get_SysDynaGlobalData1(nSysDyGlobId) 
	local nMapId = Get_SysDynaGlobalData2(nSysDyGlobId) 
	
	--判断是否为激情服
	if SpecialServer_ChkNoGiftServer() then
		--防止boss第一次刷新之前取空
		if nPosX == 0 or nPosY == 0 or nMapId == 0 then
			nPosX = tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1]["X"]
			nPosY = tGlobalHalloween_Data["RefrashBossNogift"][3]["Pos"][1]["Y"]
			nMapId = tGlobalHalloween_Data["RefrashBossNogift"][3]["MapId"]

		end
	else
		if nPosX == 0 or nPosY == 0 or nMapId == 0 then
			nPosX = tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1]["X"]
			nPosY = tGlobalHalloween_Data["RefrashBoss"][1]["Pos"][1]["Y"]
			nMapId = tGlobalHalloween_Data["RefrashBoss"][1]["MapId"]
		end
	end

	--传送
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	

end
----------------------------------NPC部分---------------------------------------------

	-- 劳瑞
tNpcFace[5081] = 216

tNpcGossip[24957] = tNpcGossip[24957] or DefaultNpc:new{}
tNpcGossip[24957]["OptionHidden"] = 1
tNpcGossip[24957]["DialogueText"] = tGlobalHalloween_Text[24957]

--活动中(未完成任务且身上没有面具)
tNpcGossip[24957]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24957]["tOption1-1"] = {111,112,113}
tNpcGossip[24957]["ChkFunc1-1"] = function()
	--如果不在活动时间内，接这句
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return true
	end
	local nSysDyGlobId = tGlobalHalloween_Data["SysDyGlobId"]
	local nData3 = Get_SysDynaGlobalData3(nSysDyGlobId)
	local nData4 = Get_SysDynaGlobalData4(nSysDyGlobId)
	local sDataStr0 = Get_SysDynaGlobalDataStr0(nSysDyGlobId)
	local nEventType=tGlobalHalloween_Data["Stc"][1]["EventType"]
	local nDataType=tGlobalHalloween_Data["Stc"][1]["DataType"]
	local nComplete = tGlobalHalloween_Data["Stc"][1]["Completed"]
	
	--更新首次完成任务玩家姓名和完成任务玩家人数
	if nData3 <= 0 then
		
		tNpcGossip[24957]["Text116"] = tGlobalHalloween_Text[24957]["Text119"]
	else
		
		tNpcGossip[24957]["Text116"] = string.format(tGlobalHalloween_Text[24957]["Text116"],sDataStr0,nData3)
	end
	--判断是否已经消耗过银两
	local nEventType2 =tGlobalHalloween_Data["Stc"][2]["EventType"]
	local nDataType2 =tGlobalHalloween_Data["Stc"][2]["DataType"]
	local nComplete2 = tGlobalHalloween_Data["Stc"][2]["Completed"]
	tNpcGossip[24957]["tOption1-1"] = {111,112}
	if Task_ChkStcValue(nEventType2,nDataType2,">=",nComplete2) then
		tNpcGossip[24957]["tOption1-1"] = {111,113}
	end
	
	
	--判断是否已领取奖励
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		
		return false
	end
	if Item_ChkItem(tGlobalHalloween_Data["ItemtypeId"]) then
		
		return false
	end
	
	return true
end
tNpcGossip[24957]["OptionPoint112"] = "1-6"
tNpcGossip[24957]["OptionPoint113"] = "1-7"

tNpcGossip[24957]["Text1-6"] = {161}
tNpcGossip[24957]["tOption1-6"] = {161,162}
tNpcGossip[24957]["OptionFunc161"] = "GlobalHalloween_GetInformation</N>24957"

tNpcGossip[24957]["Text1-7"] = {171,172,173}
tNpcGossip[24957]["tOption1-7"] = {171,172,173}
tNpcGossip[24957]["ChkFunc1-7"] = function()
	
	local nUserId = Get_UserId()
	local nMonsterId = tGlobalHalloween_Data["RefrashBoss"]["MonsterId"]
	
	--判断是否有存在BOSS
	if not SpecialServer_ChkNoGiftServer() then
		--普通服判断两个地方是否有boss
		for i = 1,2 do
			if Get_SysTempData(1,tGlobalHalloween_Data["RefrashBoss"][i]["MapId"],nMonsterId) > 0 then
				--当前没有boss时提示boss之后刷新
				tNpcGossip[24957]["tOption1-7"] = {171,172}
				return true
			end
		end
		
	else
		--判断激情服boss之家前三层
		for i = 1,3 do
			if Get_SysTempData(1,tGlobalHalloween_Data["RefrashBossNogift"][i]["MapId"],nMonsterId) > 0 then
				tNpcGossip[24957]["tOption1-7"] = {171,172}
				return true
			end
		end
	end
	tNpcGossip[24957]["tOption1-7"] = {171,173}
	return true
end
tNpcGossip[24957]["OptionPoint172"] = "1-8"
tNpcGossip[24957]["OptionPoint173"] = "1-9"

tNpcGossip[24957]["Text1-8"] = {181}
tNpcGossip[24957]["tOption1-8"] = {181}
tNpcGossip[24957]["OptionFunc181"] = "GlobalHalloween_TransferToMonster</N>24957"

tNpcGossip[24957]["Text1-9"] = {191}
tNpcGossip[24957]["tOption1-9"] = {191}
tNpcGossip[24957]["OptionPoint191"] = "1-8"

--活动中(已经完成任务或者身上有面具)
tNpcGossip[24957]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[24957]["tOption1-2"] = {121}
tNpcGossip[24957]["ChkFunc1-2"] = function()
	--判断是否在活动时间内
	
	if not Sys_ChkFullTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		return false
	end
	
	local nSysDyGlobId = tGlobalHalloween_Data["SysDyGlobId"]
	local nData3 = Get_SysDynaGlobalData3(nSysDyGlobId)
	local nData4 = Get_SysDynaGlobalData4(nSysDyGlobId)
	local sDataStr0 = Get_SysDynaGlobalDataStr0(nSysDyGlobId)
	local nEventType=tGlobalHalloween_Data["Stc"][1]["EventType"]
	local nDataType=tGlobalHalloween_Data["Stc"][1]["DataType"]
	local nComplete = tGlobalHalloween_Data["Stc"][1]["Completed"]
	--判断是否已领取奖励
	tNpcGossip[24957]["Option121"] = tGlobalHalloween_Text[24957]["Option121"]

	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		tNpcGossip[24957]["Option121"] = tGlobalHalloween_Text[24957]["Option122"]
	end
	--更新首次完成任务玩家姓名和完成任务玩家人数
	if nData3 <= 0 then
		
		tNpcGossip[24957]["Text125"] = tGlobalHalloween_Text[24957]["Text129"]
	else
		
		tNpcGossip[24957]["Text125"] = string.format(tGlobalHalloween_Text[24957]["Text125"],sDataStr0,nData3)
	end
	
	return true
end
tNpcGossip[24957]["OptionFunc121"] = "GlobalHalloween_GetReward</N>24957"

--获得奖励
tNpcGossip[24957]["Text1-3"] = {131}
tNpcGossip[24957]["tOption1-3"] = {131}

--背包空间不足
tNpcGossip[24957]["Text1-4"] = {141}
tNpcGossip[24957]["tOption1-4"] = {141}

--已完成，没有恶魔面具
tNpcGossip[24957]["Text1-5"] = {151}
tNpcGossip[24957]["tOption1-5"] = {151}


---------------------------------物品部分---------------------------------------------
--恶魔面具
tItem[3326350] = tItem[3326350] or {}
tItem[3326350]["Function"] = function(nItemId,sItemName)
	-- 判断是否处于活动期内，过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["GlobalHalloween"]["ActivityTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		--过期删除log
		local str = string.format(tGlobalHalloween_Data["Log"][nItemId],nNum)
		Sys_SaveActionFestivalLog(str)
		User_TalkChannel2005(tGlobalHalloween_Text["SystemTips"]["OverTime"])
		end 
		return
	end
	--寻路到劳瑞
	local nUserMapId = Get_UserMapId()
	if SpecialServer_ChkNoGiftServer() then
		--判断是否在交易市场
		if nUserMapId ~= tGlobalHalloween_Data["NoGift"] then
			Sys_MsgBox(tGlobalHalloween_Text["SystemTips"]["NotPath2"])
		else
			NpcPosition_PathFind(tGlobalHalloween_Data["FindWay"])
		end
	else
		--判断是否在双龙城
		if nUserMapId ~= tGlobalHalloween_Data["Twins"] then
			Sys_MsgBox(tGlobalHalloween_Text["SystemTips"]["NotPath1"])
		else
			NpcPosition_PathFind(tGlobalHalloween_Data["FindWay"])
		end
	end
end

	---------------------------------------------怪物模块---------------------------------------------

--迈克尔·麦尔斯
local tGlobalHalloween_Boss = {}
	tGlobalHalloween_Boss["ActivityTime"] = tActivityTime["GlobalHalloween"]["ActivityTime"]
	tGlobalHalloween_Boss["Function"] = GlobalHalloween_KillBoss
	tGlobalHalloween_Boss["MonsterId"] = {5747}
table.insert(tMonsterDrop_AreaLoad,tGlobalHalloween_Boss)



---------------------------------------------时间自检---------------------------------------------
local tGlobalHalloween_TimeChk = {}
	--刷新怪
	tGlobalHalloween_TimeChk["ActivityTime"] = tActivityTime["GlobalHalloween"]["ActivityTime"]
	tGlobalHalloween_TimeChk["TimeType"] = 4
	tGlobalHalloween_TimeChk["Multiple"] = {}
	tGlobalHalloween_TimeChk["Multiple"][1]   = "00:00 00:00"
	tGlobalHalloween_TimeChk["Multiple"][2]   = "00:20 00:20"
	tGlobalHalloween_TimeChk["Multiple"][3]   = "00:40 00:40"
	tGlobalHalloween_TimeChk["Multiple"][4]   = "01:00 01:00"
	tGlobalHalloween_TimeChk["Multiple"][5]   = "01:20 01:20"
	tGlobalHalloween_TimeChk["Multiple"][6]   = "01:40 01:40"
	tGlobalHalloween_TimeChk["Multiple"][7]   = "02:00 02:00"
	tGlobalHalloween_TimeChk["Multiple"][8]   = "02:20 02:20"
	tGlobalHalloween_TimeChk["Multiple"][9]   = "02:40 02:40"
	tGlobalHalloween_TimeChk["Multiple"][10]  = "03:00 03:00"
	tGlobalHalloween_TimeChk["Multiple"][11]  = "03:20 03:20"
	tGlobalHalloween_TimeChk["Multiple"][12]  = "03:40 03:40"
	tGlobalHalloween_TimeChk["Multiple"][13]  = "04:00 04:00"
	tGlobalHalloween_TimeChk["Multiple"][14]  = "04:20 04:20"
	tGlobalHalloween_TimeChk["Multiple"][15]  = "04:40 04:40"
	tGlobalHalloween_TimeChk["Multiple"][16]  = "05:00 05:00"
	tGlobalHalloween_TimeChk["Multiple"][17]  = "05:20 05:20"
	tGlobalHalloween_TimeChk["Multiple"][18]  = "05:40 05:40"
	tGlobalHalloween_TimeChk["Multiple"][19]  = "06:00 06:00"
	tGlobalHalloween_TimeChk["Multiple"][20]  = "06:20 06:20"
	tGlobalHalloween_TimeChk["Multiple"][21]  = "06:40 06:40"
	tGlobalHalloween_TimeChk["Multiple"][22]  = "07:00 07:00"
	tGlobalHalloween_TimeChk["Multiple"][23]  = "07:20 07:20"
	tGlobalHalloween_TimeChk["Multiple"][24]  = "07:40 07:40"
	tGlobalHalloween_TimeChk["Multiple"][25]  = "08:00 08:00"
	tGlobalHalloween_TimeChk["Multiple"][26]  = "08:20 08:20"
	tGlobalHalloween_TimeChk["Multiple"][27]  = "08:40 08:40"
	tGlobalHalloween_TimeChk["Multiple"][28]  = "09:00 09:00"
	tGlobalHalloween_TimeChk["Multiple"][29]  = "09:20 09:20"
	tGlobalHalloween_TimeChk["Multiple"][30]  = "09:40 09:40"
	tGlobalHalloween_TimeChk["Multiple"][31]  = "10:00 10:00"
	tGlobalHalloween_TimeChk["Multiple"][32]  = "10:20 10:20"
	tGlobalHalloween_TimeChk["Multiple"][33]  = "10:40 10:40"
	tGlobalHalloween_TimeChk["Multiple"][34]  = "11:00 11:00"
	tGlobalHalloween_TimeChk["Multiple"][35]  = "11:20 11:20"
	tGlobalHalloween_TimeChk["Multiple"][36]  = "11:40 11:40"
	tGlobalHalloween_TimeChk["Multiple"][37]  = "12:00 12:00"
	tGlobalHalloween_TimeChk["Multiple"][38]  = "12:20 12:20"
	tGlobalHalloween_TimeChk["Multiple"][39]  = "12:40 12:40"
	tGlobalHalloween_TimeChk["Multiple"][40]  = "13:00 13:00"
	tGlobalHalloween_TimeChk["Multiple"][41]  = "13:20 13:20"
	tGlobalHalloween_TimeChk["Multiple"][42]  = "13:40 13:40"
	tGlobalHalloween_TimeChk["Multiple"][43]  = "14:00 14:00"
	tGlobalHalloween_TimeChk["Multiple"][44]  = "14:20 14:20"
	tGlobalHalloween_TimeChk["Multiple"][45]  = "14:40 14:40"
	tGlobalHalloween_TimeChk["Multiple"][46]  = "15:00 15:00"
	tGlobalHalloween_TimeChk["Multiple"][47]  = "15:20 15:20"
	tGlobalHalloween_TimeChk["Multiple"][48]  = "15:40 15:40"
	tGlobalHalloween_TimeChk["Multiple"][49]  = "16:00 16:00"
	tGlobalHalloween_TimeChk["Multiple"][50]  = "16:20 16:20"
	tGlobalHalloween_TimeChk["Multiple"][51]  = "16:40 16:40"
	tGlobalHalloween_TimeChk["Multiple"][52]  = "17:00 17:00"
	tGlobalHalloween_TimeChk["Multiple"][53]  = "17:20 17:20"
	tGlobalHalloween_TimeChk["Multiple"][54]  = "17:40 17:40"
	tGlobalHalloween_TimeChk["Multiple"][55]  = "18:00 18:00"
	tGlobalHalloween_TimeChk["Multiple"][56]  = "18:20 18:20"
	tGlobalHalloween_TimeChk["Multiple"][57]  = "18:40 18:40"
	tGlobalHalloween_TimeChk["Multiple"][58]  = "19:00 19:00"
	tGlobalHalloween_TimeChk["Multiple"][59]  = "19:20 19:20"
	tGlobalHalloween_TimeChk["Multiple"][60]  = "19:40 19:40"
	tGlobalHalloween_TimeChk["Multiple"][61]  = "20:00 20:00"
	tGlobalHalloween_TimeChk["Multiple"][62]  = "20:20 20:20"
	tGlobalHalloween_TimeChk["Multiple"][63]  = "20:40 20:40"
	tGlobalHalloween_TimeChk["Multiple"][64]  = "21:00 21:00"
	tGlobalHalloween_TimeChk["Multiple"][65]  = "21:20 21:20"
	tGlobalHalloween_TimeChk["Multiple"][66]  = "21:40 21:40"
	tGlobalHalloween_TimeChk["Multiple"][67]  = "22:00 22:00"
	tGlobalHalloween_TimeChk["Multiple"][68]  = "22:20 22:20"
	tGlobalHalloween_TimeChk["Multiple"][69]  = "22:40 22:40"
	tGlobalHalloween_TimeChk["Multiple"][70]  = "23:00 23:00"
	tGlobalHalloween_TimeChk["Multiple"][71]  = "23:20 23:20"
	tGlobalHalloween_TimeChk["Multiple"][72]  = "23:40 23:40"
	tGlobalHalloween_TimeChk["Func"] = GlobalHalloween_RefrashBoss
table.insert(tSystemTime_InitialData,tGlobalHalloween_TimeChk)


