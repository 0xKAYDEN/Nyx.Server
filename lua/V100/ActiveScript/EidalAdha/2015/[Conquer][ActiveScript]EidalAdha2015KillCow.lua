------------------------------------------------------------------------------------
--Name:			150525[阿语征服][活动脚本]宰牲节(9.23-9.30)-杀怪
--Purpose:		宰牲节活动(9.23-9.30)-杀怪
--Creator:		黄昕哲
--Created:		2015/05/12
------------------------------------------------------------------------------------
--复用自2014年宰牲节活动

--命名前缀
--EidalAdha2015_KillCow_

--掩码说明
--活动	logid		stc
--灭怪	10002247	stc(127,64)
--所有活动隔天清理	stc(127,89)
--所有活动完成	stc(127,95)

--常量表配置

--npc头像表
local tEidalAdha2015_KillCow_NpcFace = {}
	tEidalAdha2015_KillCow_NpcFace["WY"] = 3
	tEidalAdha2015_KillCow_NpcFace["LGM"] = 84

--其他活动数据表
local tEidalAdha2015_KillCow_Cont = {}
	--物品id
	tEidalAdha2015_KillCow_Cont["WaterId"] = 3002956
	--背包空间
	tEidalAdha2015_KillCow_Cont["BagSpace"] = 1
	--礼包相关
	tEidalAdha2015_KillCow_Cont["FestivalId"] = 3307
	tEidalAdha2015_KillCow_Cont["LogId"] = 10002247
	--活动时间
	tEidalAdha2015_KillCow_Cont["BeforeActivityTime"] = "2015-01-12 00:00 2017-09-01 23:59"
	tEidalAdha2015_KillCow_Cont["ActivityTime"] = "2017-09-02 00:00 2017-09-08 23:59"
	--玩家等级需求
	tEidalAdha2015_KillCow_Cont["Metempsychosis"] = 0
	tEidalAdha2015_KillCow_Cont["Level"] = 80
	--显影为牛的状态
	tEidalAdha2015_KillCow_Cont["FailStatus"] = {}
	tEidalAdha2015_KillCow_Cont["FailStatus"]["Status"] = 55
	tEidalAdha2015_KillCow_Cont["FailStatus"]["Power"] = 200
	tEidalAdha2015_KillCow_Cont["FailStatus"]["Secs"] = 2
	tEidalAdha2015_KillCow_Cont["FailStatus"]["Times"] = 1
	tEidalAdha2015_KillCow_Cont["FailStatus"]["RemainTime"] = 2
	tEidalAdha2015_KillCow_Cont["FailStatus"]["EndTime"] = 1
	tEidalAdha2015_KillCow_Cont["FailStatus"]["Recordable"] = 1
	--dyna
	tEidalAdha2015_KillCow_Cont["DynaGlobalData"] = 50608
	--距离
	tEidalAdha2015_KillCow_Cont["Distance"] = 7
	--特效
	--tEidalAdha2015_KillCow_Cont["BornEffect"] = "born"
	tEidalAdha2015_KillCow_Cont["GiftEffect"] = "zf2-e280"
	--掩码 
--stc(127,64) =>消灭怪物的阶段  =1 领取道具 =2杀死怪物 =3领取奖励
	tEidalAdha2015_KillCow_Cont["Phase"] = {}
	tEidalAdha2015_KillCow_Cont["Phase"]["EventType"] = 127
	tEidalAdha2015_KillCow_Cont["Phase"]["DateType"] = 64
	tEidalAdha2015_KillCow_Cont["Phase"]["NoTask"] = 0
	tEidalAdha2015_KillCow_Cont["Phase"]["GetItem"] = 1
	tEidalAdha2015_KillCow_Cont["Phase"]["KillMon"] = 2
	tEidalAdha2015_KillCow_Cont["Phase"]["GetReward"] = 3

--stc(127,86) 点牛读条前,存储牛的npcid
	tEidalAdha2015_KillCow_Cont["CowId"] = {}
 	tEidalAdha2015_KillCow_Cont["CowId"]["EventType"] = 127
	tEidalAdha2015_KillCow_Cont["CowId"]["DateType"] = 68
	
--概率和随机表
	tEidalAdha2015_KillCow_Cont["Chance"] = {}
	--读条后判断为牛
	tEidalAdha2015_KillCow_Cont["Chance"]["FailMax"] = 4
	tEidalAdha2015_KillCow_Cont["Chance"]["Fail"] = 1
	--掉落宝石的几率
	tEidalAdha2015_KillCow_Cont["Chance"]["JewMax"] = 100
	tEidalAdha2015_KillCow_Cont["Chance"]["Jew"] = 35
	--掉落宝石的种类
	tEidalAdha2015_KillCow_Cont["Chance"]["Type"] = 4
	--牛对话的种类
	tEidalAdha2015_KillCow_Cont["Chance"]["CowTalk"] = 4
--npc位置表
local tEidalAdha2015_KillCow_Pos = {}
tEidalAdha2015_KillCow_Pos["MapId"] = 1002
--鲁格曼位置
	tEidalAdha2015_KillCow_Pos["LGM"] = {}
	tEidalAdha2015_KillCow_Pos["LGM"]["CellX"] = 287
	tEidalAdha2015_KillCow_Pos["LGM"]["CellY"] = 385
--班尔纳位置
	tEidalAdha2015_KillCow_Pos["BEN"] = {}
	tEidalAdha2015_KillCow_Pos["BEN"]["CellX"] = 300
	tEidalAdha2015_KillCow_Pos["BEN"]["CellY"] = 371
--牛导航用位置
	tEidalAdha2015_KillCow_Pos["Cow"] = {}
	tEidalAdha2015_KillCow_Pos["Cow"]["CellX"] = 277
	tEidalAdha2015_KillCow_Pos["Cow"]["CellY"] = 392
	--牛1位置
	tEidalAdha2015_KillCow_Pos[16891] = {}
	tEidalAdha2015_KillCow_Pos[16891]["CellX"] = 273
	tEidalAdha2015_KillCow_Pos[16891]["CellY"] = 392
	--牛2位置
	tEidalAdha2015_KillCow_Pos[16892] = {}
	tEidalAdha2015_KillCow_Pos[16892]["CellX"] = 279
	tEidalAdha2015_KillCow_Pos[16892]["CellY"] = 394
	--牛3位置
	tEidalAdha2015_KillCow_Pos[16893] = {}
	tEidalAdha2015_KillCow_Pos[16893]["CellX"] = 285
	tEidalAdha2015_KillCow_Pos[16893]["CellY"] = 392
	--牛4位置
	tEidalAdha2015_KillCow_Pos[16894] = {}
	tEidalAdha2015_KillCow_Pos[16894]["CellX"] = 291
	tEidalAdha2015_KillCow_Pos[16894]["CellY"] = 394
	--牛5位置
	tEidalAdha2015_KillCow_Pos[16895] = {}
	tEidalAdha2015_KillCow_Pos[16895]["CellX"] = 297
	tEidalAdha2015_KillCow_Pos[16895]["CellY"] = 392
	--牛6位置
	tEidalAdha2015_KillCow_Pos[16896] = {}
	tEidalAdha2015_KillCow_Pos[16896]["CellX"] = 303
	tEidalAdha2015_KillCow_Pos[16896]["CellY"] = 394
	--玩家被撞飞的位置
	tEidalAdha2015_KillCow_Pos["User"] = {}
	tEidalAdha2015_KillCow_Pos["User"]["CellX"] = 283
	tEidalAdha2015_KillCow_Pos["User"]["CellY"] = 420
--log表
local tEidalAdha2015_KillCow_Log = {}
	tEidalAdha2015_KillCow_Log["LogId"] = "10002247"
	tEidalAdha2015_KillCow_Log["RewardGet"] = "0,0,0,0,10002247,2,3003625,1"
	tEidalAdha2015_KillCow_Log["MonsterKill"] = "0,0,0,0,10002247,1[2],0,0"
	tEidalAdha2015_KillCow_Log["AfterActDel"] = "0,0,30029561,10002247,3,0,0"
	tEidalAdha2015_KillCow_Log["WaterGet"] = "0,0,0,0,10002247,1[1],3002956,1"

--牛id表
local tEidalAdha2015_KillCow_CowId = {}
	tEidalAdha2015_KillCow_CowId["Start"] = 16891
	tEidalAdha2015_KillCow_CowId["End"] = 16896
	
--牛怪掉落宝石id表
local tEidalAdha2015_KillCow_Jew = {700041,700031,700021,700011,700001,700051,700061}

------------------------逻辑部分--------------------------
--任务阶段掩码stc(127,64)检测  =1 领取道具 =2杀死怪物 =3领取奖励
function EidalAdha2015_KillCow_PhaseChk(sOpt,nPhase,nUserId)
	local nEvent = tEidalAdha2015_KillCow_Cont["Phase"]["EventType"]
	local nType = tEidalAdha2015_KillCow_Cont["Phase"]["DateType"]
	if Task_ChkStcValue(nEvent,nType,sOpt,nPhase,nUserId) then
		return true
	else
		return false
	end
end

--判断是否隔天 =>false领取显影水,=>true领取奖励
function EidalAdha2015_KillCow_CrossDayClear()
	local nPhaseEvent = tEidalAdha2015_KillCow_Cont["Phase"]["EventType"]
	local nPhaseType = tEidalAdha2015_KillCow_Cont["Phase"]["DateType"]
	if EidalAdha2015_KillCow_PhaseChk(">=",tEidalAdha2015_KillCow_Cont["Phase"]["GetReward"]) and not Task_StcInterval(nPhaseEvent,nPhaseType,1,4) then
		-->=3 且未隔天
		return true
	elseif Task_StcInterval(nPhaseEvent,nPhaseType,1,4) then
		--隔天,重置stc(127,64)掩码和时间戳
		Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_KillCow_Cont["Phase"]["NoTask"],1,0)
		Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0,0)
		--接到全活动隔天清理94347000
		EidalAdha2015_Ceremony_ResetAllStc()
	else
		--其他情况未隔天
	end
	return false
end

--判断距离=>距离内true,距离外false
function EidalAdha2015_KillCow_Distance()
	--当前牛的id
	local nCowId = Get_NpcId()
	--根据npcid取到npc坐标
	local nPosX = Get_NpcPositionX(nCowId)
	local nPosY = Get_NpcPositionY(nCowId)
	--玩家坐标
	local nPlayerX = Get_UserPositionX()
	local nPlayerY = Get_UserPositionY()
	local nX_Distance = math.abs(nPlayerX-nPosX)
	local nY_Distance = math.abs(nPlayerY-nPosY)
	--比较npc的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < tEidalAdha2015_KillCow_Cont["Distance"] and nY_Distance < tEidalAdha2015_KillCow_Cont["Distance"] then
		return true
	else
		return false
	end
end

--给我显影水tEidalAdha2015_KillCow_Cont["WaterId"]
function EidalAdha2015_KillCow_WaterGet(nNpcId)
	if not Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) then
		return
	end
	--检测掩码,是否已经完成
	if EidalAdha2015_KillCow_PhaseChk(">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	--检测转生或等级,80级以上或1转以上
	local nPlayerLev = Get_UserLevel()
	if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_KillCow_Cont["Level"],tEidalAdha2015_KillCow_Cont["Metempsychosis"]) then
		--等级不足
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--补领,检测掩码是否==1
	if EidalAdha2015_KillCow_PhaseChk("==",1) then
	--检查背包显影水
		if Item_ChkItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then 
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		--检查背包
		elseif User_CheckLeftSpace(tEidalAdha2015_KillCow_Cont["BagSpace"]) then
			Item_AddItem(tEidalAdha2015_KillCow_Cont["WaterId"])
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		end
		return
	end
	--掩码==0,清理同类物品
	if EidalAdha2015_KillCow_PhaseChk("==",0) then
		if Item_ChkItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
			if Item_DelItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
			end
		end
	end
	--检查背包
	if User_CheckLeftSpace(tEidalAdha2015_KillCow_Cont["BagSpace"]) then
		--改变掩码--改变时间戳	--给予物品,monopoly=11--写入log--对话
		local nPhaseEvent = tEidalAdha2015_KillCow_Cont["Phase"]["EventType"]
		local nPhaseType = tEidalAdha2015_KillCow_Cont["Phase"]["DateType"]
		Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_KillCow_Cont["Phase"]["GetItem"],1,0)
		Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0,0)
		Item_AddItem(tEidalAdha2015_KillCow_Cont["WaterId"])
		EidalAdha2015_KillCow_MonIdReset()
		Sys_SaveActionFestivalLog(tEidalAdha2015_KillCow_Log["WaterGet"])
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
end

--领取报酬
function EidalAdha2015_KillCow_RewardApply(nNpcId)
	--检测活动时间
	if Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) then
	--检测掩码
		--已领过奖
		if EidalAdha2015_KillCow_PhaseChk(">=",3) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		--给奖
		elseif EidalAdha2015_KillCow_PhaseChk("==",2) then
			EidalAdha2015_KillCow_RewardGet(16890)
		--尚未完成
		else
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		end
	end
end

--确认无误,给予报酬
function EidalAdha2015_KillCow_RewardGet(nNpcId)
	--检测显影水tEidalAdha2015_KillCow_Cont["WaterId"]并删除
	if Item_ChkItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
		if Item_DelItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
		end
	end
	--检测背包
	if User_CheckLeftSpace(tEidalAdha2015_KillCow_Cont["BagSpace"]) then
		--改变掩码--重置时间戳--写入log--特效--通用礼包10002247--接到所有活动完成检查--对话
		local nPhaseEvent = tEidalAdha2015_KillCow_Cont["Phase"]["EventType"]
		local nPhaseType = tEidalAdha2015_KillCow_Cont["Phase"]["DateType"]
		Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_KillCow_Cont["Phase"]["GetReward"],1,0)
		Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0,0)
		Sys_SaveActionFestivalLog(tEidalAdha2015_KillCow_Log["RewardGet"])
		User_EffectAdd("self",tEidalAdha2015_KillCow_Cont["GiftEffect"])
		FestivalGeneralPackage_GetGift(tEidalAdha2015_KillCow_Cont["FestivalId"],tEidalAdha2015_KillCow_Log["LogId"])
		EidalAdha2015_Ceremony_AllComplete()
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end

--牛 16891-16896
function NpcProcess_Cow()
	--随机4句对话tEidalAdha2015_KillCow_Text["Cow"]["Text111"]-tEidalAdha2015_KillCow_Text["Cow"]["Text141"]
	local nRandom = math.random(tEidalAdha2015_KillCow_Cont["Chance"]["CowTalk"])
	local nCowId = Get_NpcId()
	local sCowDialog = tEidalAdha2015_KillCow_Text["Cow"]["Text1" .. nRandom .. "1"]
	if Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) then
		Sys_DialogText(sCowDialog)
		--活动时间内,则可以使用显影水
		Sys_DialogOption(tEidalAdha2015_KillCow_Text["Cow"]["Option111"],"</F>EidalAdha2015_KillCow_CowChk</N>" .. nCowId)
		Sys_DialogOption(tEidalAdha2015_KillCow_Text["Cow"]["Option112"],"</F>NULL")
		Sys_DialogFace(nCowId)
		Sys_DialogEnd()
	else
		--活动时间外
		Sys_DialogText(sCowDialog)
		Sys_DialogOption(tEidalAdha2015_KillCow_Text["Cow"]["Option112"],"</F>NULL")
		Sys_DialogFace(nCowId)
		Sys_DialogEnd()
	end
end
--对牛使用显影水
function EidalAdha2015_KillCow_CowChk(nNpcId)
	--检测时间
	if not Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) then
		return
	end
	--检测阶段掩码>=2
	if EidalAdha2015_KillCow_PhaseChk(">=",2) then
		--提示已经完成任务
		User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["TaskFin"])
	else
		--检测掩码==1 and 显影水
		if EidalAdha2015_KillCow_PhaseChk("==",1) and Item_ChkItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
			EidalAdha2015_KillCow_WaterOnCow(nNpcId)
		else
			--提示无显影水
			User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["NoWater"])
		end
	end
end

--94339990 与牛互动
function EidalAdha2015_KillCow_WaterOnCow(nCowId)
--判断距离
	if EidalAdha2015_KillCow_Distance() then
		--存储牛id
		local nCowIdEvent = tEidalAdha2015_KillCow_Cont["CowId"]["EventType"]
		local nCowIdType = tEidalAdha2015_KillCow_Cont["CowId"]["DateType"]
		Task_SetStatistic(nCowIdEvent,nCowIdType,nCowId,1,0)
		--读条,1秒,期间执行220号动作,成功则执行函数
		User_SetExplore(1,tEidalAdha2015_KillCow_Text["Casting"]["UseWater"],220,"</F>EidalAdha2015_KillCow_CowDetect</N>" .. nCowId)
	else
		--提示距离太远
		User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["Distance"])
	end
end

--显影后进行判断
function EidalAdha2015_KillCow_CowDetect(nCowId,nUserId)
	--地图中牛怪数量 t为无牛怪,f为已有牛怪
	-- if Monster_GetMonsterByName(tEidalAdha2015_KillCow_Pos["MapId"],tEidalAdha2015_KillCow_Text["MonName"]["CowMon"]) < 1 then
	local nMonsterId =7580
		-- if  Get_SysTempData(1,tEidalAdha2015_KillCow_Pos["MapId"],nMonsterId) == 0 then
		local nMonId = Get_SysDynaGlobalData0(tEidalAdha2015_KillCow_Cont["DynaGlobalData"])
		local nCowIdEvent = tEidalAdha2015_KillCow_Cont["CowId"]["EventType"]
		local nCowIdType = tEidalAdha2015_KillCow_Cont["CowId"]["DateType"]
		--定位牛id 94340013
		if Task_ChkStcValue(nCowIdEvent,nCowIdType,"==",nMonId,nUserId) then
			--牛怪94340014
			EidalAdha2015_KillCow_IsMonster(nCowId,nUserId)
		else
			--牛94340200
			EidalAdha2015_KillCow_IsCow(nUserId)
		end
	-- else
	-- --已有牛怪
		-- User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["MonRemain"],nUserId)
	-- end
end

--牛怪=>94340014删除显影水tEidalAdha2015_KillCow_Cont["WaterId"],移走当前牛,创建牛怪,移回其他牛.重置新牛id,随机选择id
function EidalAdha2015_KillCow_IsMonster(nCowId,nUserId)
	if Item_ChkItem(tEidalAdha2015_KillCow_Cont["WaterId"],1,0,nUserId) then
		if Item_DelItem(tEidalAdha2015_KillCow_Cont["WaterId"],1,0,nUserId) then
		end
		--遍历所有牛,将非当前牛移回原地,当前牛移到集中营
		for nCowMovInId = tEidalAdha2015_KillCow_CowId["Start"],tEidalAdha2015_KillCow_CowId["End"] do
			--根据牛id取原本的地图id和坐标
			local nPosX = tEidalAdha2015_KillCow_Pos[nCowMovInId]["CellX"]
			local nPosY = tEidalAdha2015_KillCow_Pos[nCowMovInId]["CellY"]
			local nMapId = tEidalAdha2015_KillCow_Pos["MapId"]
			if nCowMovInId ~= nCowId then
				--其他牛,移回原地
				Npc_MoveNpcPos(nCowMovInId,nMapId,nPosX,nPosY)
			else
				--当前牛
				Npc_MoveNpcPos(nCowId,5000,50,50)
				--创建怪物(因为程序本身提供接口关系,x坐标-3)
				-- Monster_AddMonster(nMapId,nPosX-3,nPosY,17068,7580)
				-- Monster_AddMonster(nMapId,286,401,17068,7580)
				-- Sys_SetTempData(1,nMapId,7580,1)
				--不用杀牛怪(会被卫兵杀死)，直接完成
				EidalAdha2015_KillCow_MonKill(nUserId)
			end
		end
		EidalAdha2015_KillCow_MonIdReset()
		--发现牛怪
		-- User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["DetectSuccess"],nUserId)
	--无道具
	else
		User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["NoWater"],nUserId)
	end
end

--重置牛怪id 
function EidalAdha2015_KillCow_MonIdReset()
	local nNpcMapId = 0
	--被移出的牛id
	local nOldMonId = 0
	--将要被移出的牛id
	local nNewMonId = 0
	for nTmpNpcId = tEidalAdha2015_KillCow_CowId["Start"],tEidalAdha2015_KillCow_CowId["End"] do
		nNpcMapId = Get_NpcMapID(nTmpNpcId)
		--存在被移动到集中营的牛npc,取出npcid并且跳出循环,不存在则nOldMon==0,新牛id无限制随意取值
		if nNpcMapId == 5000 then
			nOldMonId = nTmpNpcId
			break
		end
	end
	--新牛id和已被移出的旧牛id不同
	repeat
		nNewMonId = math.random(tEidalAdha2015_KillCow_CowId["Start"],tEidalAdha2015_KillCow_CowId["End"])
	until nNewMonId ~= nOldMonId
	--存储新牛id
	Sys_SetSynaGlobalData0(tEidalAdha2015_KillCow_Cont["DynaGlobalData"],nNewMonId)
end

--正常牛=>94340200,改变状态,强制位移,广播提示
function EidalAdha2015_KillCow_IsCow(nUserId)
	local nCowRes = math.random(tEidalAdha2015_KillCow_Cont["Chance"]["Fail"],tEidalAdha2015_KillCow_Cont["Chance"]["FailMax"]) - 1
	if nCowRes == 0 then 
		-- local nUserId = Get_UserId()
		local nStatus = tEidalAdha2015_KillCow_Cont["FailStatus"]["Status"]
		local nPower = tEidalAdha2015_KillCow_Cont["FailStatus"]["Power"]
		local nSecs = tEidalAdha2015_KillCow_Cont["FailStatus"]["Secs"]
		local nTimes = tEidalAdha2015_KillCow_Cont["FailStatus"]["Times"]
		local nRemainTime = tEidalAdha2015_KillCow_Cont["FailStatus"]["RemainTime"]
		local nEndtime = tEidalAdha2015_KillCow_Cont["FailStatus"]["EndTime"]
		local nRecordable = tEidalAdha2015_KillCow_Cont["FailStatus"]["Recordable"]
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndtime,nRecordable,0,0,nUserId)
		--移动玩家到 "1002 283 420 5 5"
		if Get_NpcMapID() ~= Get_UserMapId(nUserId) then
			User_TalkChannel2005(tTransferFail_Text["MsgTip"],nUserId)
			return
		end
		User_UserRandBoundTrans(tEidalAdha2015_KillCow_Pos["MapId"],tEidalAdha2015_KillCow_Pos["User"]["CellX"],tEidalAdha2015_KillCow_Pos["User"]["CellY"],5,5,0,nUserId)
	end
	User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["DetectFail" .. nCowRes],nUserId)
end

--牛怪死亡
function EidalAdha2015_KillCow_MonKill(nUserId)
	--检测时间及掩码
	if Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) and EidalAdha2015_KillCow_PhaseChk("==",1,nUserId) then
		--改变掩码,重置时间戳,写日志,掉落随机普通宝石,弹框提示,确认则开始自动寻路
		local nPhaseEvent = tEidalAdha2015_KillCow_Cont["Phase"]["EventType"]
		local nPhaseType = tEidalAdha2015_KillCow_Cont["Phase"]["DateType"]
		Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_KillCow_Cont["Phase"]["KillMon"],1,nUserId)
		Sys_SaveActionFestivalLog(tEidalAdha2015_KillCow_Log["MonsterKill"],nUserId)
		
		-- local nUserMapId = Get_UserMapId()
		-- Sys_SetTempData(1,nUserMapId,7580,0)
		
		-- if math.random(1,tEidalAdha2015_KillCow_Cont["Chance"]["JewMax"]) <= tEidalAdha2015_KillCow_Cont["Chance"]["Jew"] then
			-- local nJewType = math.random(tEidalAdha2015_KillCow_Cont["Chance"]["Type"])
			-- Monster_SysDropItem(tEidalAdha2015_KillCow_Jew[nJewType])
		-- end
		Sys_MsgBox(tEidalAdha2015_KillCow_Text["Item"]["KillMon"],"</F>EidalAdha2015_KillCow_AutoFindPath</S>LGM","NULL",nUserId)
	end
end

------------物品部分-----------
--显影水tEidalAdha2015_KillCow_Cont["WaterId"]
function EidalAdha2015_KillCow_Water()
	--检测时间
	if Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"]) then
	--正常使用,提示
		User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["UseWater"])
	else
	--物品过期,写入日志,删除物品,提示
		Sys_SaveActionFestivalLog(tEidalAdha2015_KillCow_Log["AfterActDel"])
		if Item_DelItem(tEidalAdha2015_KillCow_Cont["WaterId"]) then
		end
		User_TalkChannel2005(tEidalAdha2015_KillCow_Text["Item"]["DeleteWater"])
	end
end

-------------------------导航部分---------------------------
function EidalAdha2015_KillCow_AutoFindPath(sNpcName)
	local nCellX = tEidalAdha2015_KillCow_Pos[sNpcName]["CellX"]
	local nCellY = tEidalAdha2015_KillCow_Pos[sNpcName]["CellY"]
	local nMapId = tEidalAdha2015_KillCow_Pos["MapId"]
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId)
end

-------------------------Npc模板---------------------------
--王英16883,lookface=30980
	tNpcFace[3098] = tEidalAdha2015_KillCow_NpcFace["WY"]
	tNpcGossip[16883] = tNpcGossip[16883] or DefaultNpc:new{}
	tNpcGossip[16883]["OptionHidden"] = 1
	
--活动前对话
	tNpcGossip[16883]["Text1-1"] = {111}
	tNpcGossip[16883]["Text111"] = tEidalAdha2015_KillCow_Text[16883]["Text111"]
	tNpcGossip[16883]["tOption1-1"] = {1}
	tNpcGossip[16883]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["BeforeActivityTime"])
	end
	tNpcGossip[16883]["Option1"] = tEidalAdha2015_KillCow_Text[16883]["Option1"]

--活动中对话
	tNpcGossip[16883]["Text1-2"] = {121}
	tNpcGossip[16883]["Text121"] = tEidalAdha2015_KillCow_Text[16883]["Text121"]
	tNpcGossip[16883]["tOption1-2"] = {2,3}
	tNpcGossip[16883]["ChkFunc1-2"] = function()
		return Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"])
	end
	tNpcGossip[16883]["Option2"] = tEidalAdha2015_KillCow_Text[16883]["Option2"]
	tNpcGossip[16883]["OptionFunc2"] = "EidalAdha2015_KillCow_AutoFindPath</S>LGM"
	tNpcGossip[16883]["Option3"] = tEidalAdha2015_KillCow_Text[16883]["Option3"]

--活动后对话
	tNpcGossip[16883]["Text1-3"] = {131}
	tNpcGossip[16883]["Text131"] = tEidalAdha2015_KillCow_Text[16883]["Text131"]
	tNpcGossip[16883]["tOption1-3"] = {4}
	tNpcGossip[16883]["Option4"] = tEidalAdha2015_KillCow_Text[16883]["Option4"]

--鲁格曼16890,lookface= 31054
	tNpcFace[3105] = tEidalAdha2015_KillCow_NpcFace["LGM"]
	tNpcGossip[16890] = tNpcGossip[16890] or DefaultNpc:new{}
	tNpcGossip[16890]["OptionHidden"] = 1

--活动前对话
	tNpcGossip[16890]["Text1-1"] = {111}
	tNpcGossip[16890]["Text111"] = tEidalAdha2015_KillCow_Text[16890]["Text111"]
	tNpcGossip[16890]["tOption1-1"] = {1}
	tNpcGossip[16890]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["BeforeActivityTime"])
	end
	tNpcGossip[16890]["Option1"] = tEidalAdha2015_KillCow_Text[16890]["Option1"]

--活动中对话1-隔天=false,选项为2,4,隔天=1 选项为3,4
	tNpcGossip[16890]["Text1-2"] = {121}
	tNpcGossip[16890]["Text121"] = tEidalAdha2015_KillCow_Text[16890]["Text131"]
	tNpcGossip[16890]["tOption1-2"] = {2,3,4}
	tNpcGossip[16890]["ChkFunc1-2"] = function()
		return Sys_ChkFullTime(tEidalAdha2015_KillCow_Cont["ActivityTime"])
	end
	tNpcGossip[16890]["Option2"] = tEidalAdha2015_KillCow_Text[16890]["Option2"]
	tNpcGossip[16890]["OptionFunc2"] = "EidalAdha2015_KillCow_WaterGet</N>16890"
	tNpcGossip[16890]["OptionChkFunc2"] = function()
		return not EidalAdha2015_KillCow_CrossDayClear()
	end
	tNpcGossip[16890]["Option3"] = tEidalAdha2015_KillCow_Text[16890]["Option3"]
	tNpcGossip[16890]["OptionFunc3"] = "EidalAdha2015_KillCow_RewardApply</N>16890"
	tNpcGossip[16890]["OptionChkFunc3"] = function()
		return EidalAdha2015_KillCow_PhaseChk(">=",2)
	end
	tNpcGossip[16890]["Option4"] = tEidalAdha2015_KillCow_Text[16890]["Option4"]
	tNpcGossip[16890]["OptionPoint4"] = "4-1"
	
--活动后对话
	tNpcGossip[16890]["Text1-3"] = {131}
	tNpcGossip[16890]["Text131"] = tEidalAdha2015_KillCow_Text[16890]["Text121"]
	tNpcGossip[16890]["tOption1-3"] = {5}
	tNpcGossip[16890]["Option5"] = tEidalAdha2015_KillCow_Text[16890]["Option5"]
	
--活动中二级对话
--选1失败对话,等级不足
	tNpcGossip[16890]["Text2-1"] = {211}
	tNpcGossip[16890]["Text211"] = tEidalAdha2015_KillCow_Text[16890]["Text211"]
	tNpcGossip[16890]["tOption2-1"] = {6}
	tNpcGossip[16890]["Option6"] = tEidalAdha2015_KillCow_Text[16890]["Option6"]
--选1失败对话,已有道具
	tNpcGossip[16890]["Text2-2"] = {221}
	tNpcGossip[16890]["Text221"] = tEidalAdha2015_KillCow_Text[16890]["Text221"]
	tNpcGossip[16890]["tOption2-2"] = {7}
	tNpcGossip[16890]["Option7"] = tEidalAdha2015_KillCow_Text[16890]["Option7"]

--选1失败对话,背包已满
	tNpcGossip[16890]["Text2-3"] = {231}
	tNpcGossip[16890]["Text231"] = tEidalAdha2015_KillCow_Text[16890]["Text231"]
	tNpcGossip[16890]["tOption2-3"] = {8}
	tNpcGossip[16890]["Option8"] = tEidalAdha2015_KillCow_Text[16890]["Option8"]

--选1失败对话.已完成过任务
	tNpcGossip[16890]["Text2-4"] = {241}
	tNpcGossip[16890]["Text241"] = tEidalAdha2015_KillCow_Text[16890]["Text241"]
	tNpcGossip[16890]["tOption2-4"] = {7}
--选1成功,领取道具
	tNpcGossip[16890]["Text2-5"] = {251}
	tNpcGossip[16890]["Text251"] = tEidalAdha2015_KillCow_Text[16890]["Text251"]
	tNpcGossip[16890]["tOption2-5"] = {9}
	tNpcGossip[16890]["Option9"] = tEidalAdha2015_KillCow_Text[16890]["Option9"]
	tNpcGossip[16890]["OptionFunc9"] = "EidalAdha2015_KillCow_AutoFindPath</S>Cow"

--选2失败对话,已领取过报酬
	tNpcGossip[16890]["Text3-1"] = {311}
	tNpcGossip[16890]["Text311"] = tEidalAdha2015_KillCow_Text[16890]["Text311"]
	tNpcGossip[16890]["tOption3-1"] = {10}
	tNpcGossip[16890]["Option10"] = tEidalAdha2015_KillCow_Text[16890]["Option10"]

--选2失败对话,背包已满
	tNpcGossip[16890]["Text3-2"] = {321}
	tNpcGossip[16890]["Text321"] = tEidalAdha2015_KillCow_Text[16890]["Text321"]
	tNpcGossip[16890]["tOption3-2"] = {11}
	tNpcGossip[16890]["Option11"] = tEidalAdha2015_KillCow_Text[16890]["Option11"]

--选2失败对话,尚未完成任务
	tNpcGossip[16890]["Text3-3"] = {331}
	tNpcGossip[16890]["Text331"] = tEidalAdha2015_KillCow_Text[16890]["Text331"]
	tNpcGossip[16890]["tOption3-3"] = {9}
--选2成功对话,获取礼包
	tNpcGossip[16890]["Text3-4"] = {341}
	tNpcGossip[16890]["Text341"] = tEidalAdha2015_KillCow_Text[16890]["Text341"]
	tNpcGossip[16890]["tOption3-4"] = {12}
	tNpcGossip[16890]["Option12"] = tEidalAdha2015_KillCow_Text[16890]["Option12"]

--选3对话
	tNpcGossip[16890]["Text4-1"] = {411}
	tNpcGossip[16890]["Text411"] = tEidalAdha2015_KillCow_Text[16890]["Text411"]
	tNpcGossip[16890]["tOption4-1"] = {13}
	tNpcGossip[16890]["Option13"] = tEidalAdha2015_KillCow_Text[16890]["Option13"]


------------怪物模板-----------
-- tMonster[7580] = tMonster[7580] or {}
-- tMonster[7580]["tFunction"] = tMonster[7580]["tFunction"] or {}
-- table.insert(tMonster[7580]["tFunction"],EidalAdha2015_KillCow_MonKill)

