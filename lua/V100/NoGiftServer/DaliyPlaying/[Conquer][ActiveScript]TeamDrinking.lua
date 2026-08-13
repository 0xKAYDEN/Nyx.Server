------------------------------------------------------------------------------------
--Name:		181010[简体征服][活动脚本]无赠品服务器--日常组队喝酒玩法
--Purpose:	无赠品服务器--日常组队喝酒玩法
--Creator: 	洪聪敏
--Created:	2018/10/10
------------------------------------------------------------------------------------
--命名前缀：TeamDrinking_
--logid:12001182
--lua.ini:41017


--STC
--(184,67) 记录玩家今日吸收的经验
--(184,71) 记录玩家附近队员人数
------------------------------------------------------------------------------------

--常量部分
local tTeamDrinking_Cont = {}
	--留香酒ID
	tTeamDrinking_Cont["Liquor"] = {}
	tTeamDrinking_Cont["Liquor"][1] = 3311066
	tTeamDrinking_Cont["Liquor"][2] = 3311067
	tTeamDrinking_Cont["Liquor"][3] = 3311068
	--封顶经验
	tTeamDrinking_Cont["caps"] = {}
	tTeamDrinking_Cont["caps"][1] = 1500000
	tTeamDrinking_Cont["caps"][2] = 2100000
	tTeamDrinking_Cont["caps"][3] = 3000000
	tTeamDrinking_Cont["caps"][4] = 5000000
	tTeamDrinking_Cont["caps"][5] = 7000000
	tTeamDrinking_Cont["caps"][6] = 10500000
	tTeamDrinking_Cont["caps"][7] = 15000000
	tTeamDrinking_Cont["caps"][8] = 20000000
	tTeamDrinking_Cont["caps"][9] = 25000000
	tTeamDrinking_Cont["caps"][10] = 30000000
	tTeamDrinking_Cont["caps"][11] = 35000000
	tTeamDrinking_Cont["caps"][12] = 60000000
	tTeamDrinking_Cont["caps"][13] = 150000000
	tTeamDrinking_Cont["caps"][14] = 200000000
	tTeamDrinking_Cont["caps"][15] = 200000000
	tTeamDrinking_Cont["caps"][16] = 300000000
	
	
	tTeamDrinking_Cont["caps"][17] = 500000000
	tTeamDrinking_Cont["caps"][18] = 1000000000
	tTeamDrinking_Cont["caps"][19] = 1500000000
	tTeamDrinking_Cont["caps"][20] = 2000000000
	tTeamDrinking_Cont["caps"][21] = 2500000000
	tTeamDrinking_Cont["caps"][22] = 5000000000
	tTeamDrinking_Cont["caps"][23] = 10000000000
	tTeamDrinking_Cont["caps"][24] = 15000000000
	tTeamDrinking_Cont["caps"][25] = 25000000000
	tTeamDrinking_Cont["caps"][26] = 30000000000
	tTeamDrinking_Cont["caps"][27] = 35000000000
	tTeamDrinking_Cont["caps"][28] = 40000000000
	
	
	
	--极品酒经验：（上品经验酒=极品%10/  精品经验酒=极品%50）
	tTeamDrinking_Cont["Wine"] = {}
	tTeamDrinking_Cont["Wine"][1] = 300000
	tTeamDrinking_Cont["Wine"][2] = 420000
	tTeamDrinking_Cont["Wine"][3] = 600000
	tTeamDrinking_Cont["Wine"][4] = 1000000
	tTeamDrinking_Cont["Wine"][5] = 1400000
	tTeamDrinking_Cont["Wine"][6] = 2100000
	tTeamDrinking_Cont["Wine"][7] = 3000000
	tTeamDrinking_Cont["Wine"][8] = 4000000
	tTeamDrinking_Cont["Wine"][9] = 5000000
	tTeamDrinking_Cont["Wine"][10] = 6000000
	tTeamDrinking_Cont["Wine"][11] = 7000000
	tTeamDrinking_Cont["Wine"][12] = 12000000
	tTeamDrinking_Cont["Wine"][13] = 30000000
	tTeamDrinking_Cont["Wine"][14] = 40000000
	tTeamDrinking_Cont["Wine"][15] = 40000000
	tTeamDrinking_Cont["Wine"][16] = 60000000
	tTeamDrinking_Cont["Wine"][17] = 100000000
	tTeamDrinking_Cont["Wine"][18] = 200000000
	tTeamDrinking_Cont["Wine"][19] = 300000000
	tTeamDrinking_Cont["Wine"][20] = 400000000
	tTeamDrinking_Cont["Wine"][21] = 500000000
	tTeamDrinking_Cont["Wine"][22] = 1000000000
	tTeamDrinking_Cont["Wine"][23] = 2000000000
	tTeamDrinking_Cont["Wine"][24] = 3000000000
	tTeamDrinking_Cont["Wine"][25] = 5000000000
	tTeamDrinking_Cont["Wine"][26] = 6000000000
	tTeamDrinking_Cont["Wine"][27] = 7000000000
	tTeamDrinking_Cont["Wine"][28] = 8000000000
	
	--等级区间
	tTeamDrinking_Cont["Level"] = {}
	tTeamDrinking_Cont["Level"][1] = {50,54}
	tTeamDrinking_Cont["Level"][2] = {55,59}
	tTeamDrinking_Cont["Level"][3] = {60,64}
	tTeamDrinking_Cont["Level"][4] = {65,69}
	tTeamDrinking_Cont["Level"][5] = {70,74}
	tTeamDrinking_Cont["Level"][6] = {75,79}
	tTeamDrinking_Cont["Level"][7] = {80,84}
	tTeamDrinking_Cont["Level"][8] = {85,89}
	tTeamDrinking_Cont["Level"][9] = {90,94}
	tTeamDrinking_Cont["Level"][10] = {95,99}
	tTeamDrinking_Cont["Level"][11] = {100,104}
	tTeamDrinking_Cont["Level"][12] = {105,109}
	tTeamDrinking_Cont["Level"][13] = {110,114}
	tTeamDrinking_Cont["Level"][14] = {115,119}
	tTeamDrinking_Cont["Level"][15] = {120,124}
	tTeamDrinking_Cont["Level"][16] = {125,129}
	tTeamDrinking_Cont["Level"][17] = {130,130}
	tTeamDrinking_Cont["Level"][18] = {131,131}
	tTeamDrinking_Cont["Level"][19] = {132,132}
	tTeamDrinking_Cont["Level"][20] = {133,133}
	tTeamDrinking_Cont["Level"][21] = {134,134}
	tTeamDrinking_Cont["Level"][22] = {135,135}
	tTeamDrinking_Cont["Level"][23] = {136,136}
	tTeamDrinking_Cont["Level"][24] = {137,137}
	tTeamDrinking_Cont["Level"][25] = {138,138}
	tTeamDrinking_Cont["Level"][26] = {139,139}
	tTeamDrinking_Cont["Level"][27] = {140,140}
	tTeamDrinking_Cont["Level"][28] = {141,149}
	
	tTeamDrinking_Cont["LevelMin"] = 50
	tTeamDrinking_Cont["Metempsychosis"] = 0
	--喝酒范围
	tTeamDrinking_Cont["WineRange"] = {}
	tTeamDrinking_Cont["WineRange"]["MapID"] = 1036 
	tTeamDrinking_Cont["WineRange"]["PosX"] = 195
	tTeamDrinking_Cont["WineRange"]["PosY"] = 196
	tTeamDrinking_Cont["WineRange"]["Bound"] = 18
	tTeamDrinking_Cont["ChgPoin"] = {}
	tTeamDrinking_Cont["ChgPoin"]["MapId"] = 1036
	tTeamDrinking_Cont["ChgPoin"]["PosX"] = 184
	tTeamDrinking_Cont["ChgPoin"]["PosY"] = 186
	
	tTeamDrinking_Cont["Cultivation"] = {}
	tTeamDrinking_Cont["Cultivation"][3311066] = 10
	tTeamDrinking_Cont["Cultivation"][3311067] = 50
	tTeamDrinking_Cont["Cultivation"][3311068] = 100
	--STC
	tTeamDrinking_Stc = {}
	tTeamDrinking_Stc[1]={}
	tTeamDrinking_Stc[1]["EventType"] = 184
	tTeamDrinking_Stc[1]["DataType"] = 67
	
	tTeamDrinking_Stc[2]={}
	tTeamDrinking_Stc[2]["EventType"] = 184
	tTeamDrinking_Stc[2]["DataType"] = 71
	--计算人员回应的增量
	tTeamDrinking_Stc[2]["CalcAddValue"]=1
	--计算附近人员的增量
	tTeamDrinking_Stc[2]["NearAddValue"]=100
----------------------------------奖励部分--------------------------------------------

	local tTeamDrinking_Reword = {}
	--普通流香酒经验奖励初始
	tTeamDrinking_Reword[3311066] = {}
	tTeamDrinking_Reword[3311066][1] = {}
	tTeamDrinking_Reword[3311066][1]["RewardExp"] = {}
	tTeamDrinking_Reword[3311066][1]["RewardExp"]["Value"] = 30000
	tTeamDrinking_Reword[3311066][1]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tTeamDrinking_Reword[3311066][1]["RewardExp"]["FullValue"] = 10
	tTeamDrinking_Reword[3311066][1]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311066][1]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311066][1]["DeleteItem"][1]["Id"] = 3311066
	tTeamDrinking_Reword[3311066][1]["LogId"] =12001182
	tTeamDrinking_Reword[3311066][1]["LogStep"] = "1[1]"

	--普通流香酒修行值
	tTeamDrinking_Reword[3311066][2] = {}
	tTeamDrinking_Reword[3311066][2]["RewardCultivation"] = {}
	tTeamDrinking_Reword[3311066][2]["RewardCultivation"]["Value"] = 10
	tTeamDrinking_Reword[3311066][2]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311066][2]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311066][2]["DeleteItem"][1]["Id"] = 3311066
	tTeamDrinking_Reword[3311066][2]["Talk"] = tTeamDrinking_Text["Cultivation"][1]
	tTeamDrinking_Reword[3311066][2]["LogId"] =12001178
	tTeamDrinking_Reword[3311066][2]["LogStep"] = "1[2]"


	--上等流香酒经验奖励初始
	tTeamDrinking_Reword[3311067] = {}
	tTeamDrinking_Reword[3311067][1] = {}
	tTeamDrinking_Reword[3311067][1]["RewardExp"] = {}
	tTeamDrinking_Reword[3311067][1]["RewardExp"]["Value"] = 150000
	tTeamDrinking_Reword[3311067][1]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tTeamDrinking_Reword[3311067][1]["RewardExp"]["FullValue"] = 50
	tTeamDrinking_Reword[3311067][1]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311067][1]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311067][1]["DeleteItem"][1]["Id"] = 3311067
	tTeamDrinking_Reword[3311067][1]["LogId"] =12001182
	tTeamDrinking_Reword[3311067][1]["LogStep"] = "2[1]"

	--上等流香酒修行值
	tTeamDrinking_Reword[3311067][2] = {}
	tTeamDrinking_Reword[3311067][2]["RewardCultivation"] = {}
	tTeamDrinking_Reword[3311067][2]["RewardCultivation"]["Value"] = 50
	tTeamDrinking_Reword[3311067][2]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311067][2]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311067][2]["DeleteItem"][1]["Id"] = 3311067
	tTeamDrinking_Reword[3311067][2]["Talk"] = tTeamDrinking_Text["Cultivation"][2]
	tTeamDrinking_Reword[3311067][2]["LogId"] =12001178
	tTeamDrinking_Reword[3311067][2]["LogStep"] = "2[2]"

	
		--特等流香酒经验奖励初始
	tTeamDrinking_Reword[3311068] = {}
	tTeamDrinking_Reword[3311068][1] = {}
	tTeamDrinking_Reword[3311068][1]["RewardExp"] = {}
	tTeamDrinking_Reword[3311068][1]["RewardExp"]["Value"] = 30000
	tTeamDrinking_Reword[3311068][1]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tTeamDrinking_Reword[3311068][1]["RewardExp"]["FullValue"] = 100
	tTeamDrinking_Reword[3311068][1]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311068][1]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311068][1]["DeleteItem"][1]["Id"] = 3311068
	tTeamDrinking_Reword[3311068][1]["LogId"] =12001182
	tTeamDrinking_Reword[3311068][1]["LogStep"] = "3[1]"

	--特等流香酒修行值
	tTeamDrinking_Reword[3311068][2] = {}
	tTeamDrinking_Reword[3311068][2]["RewardCultivation"] = {}
	tTeamDrinking_Reword[3311068][2]["RewardCultivation"]["Value"] = 100
	tTeamDrinking_Reword[3311068][2]["DeleteItem"] = {}
	tTeamDrinking_Reword[3311068][2]["DeleteItem"][1] = {}
	tTeamDrinking_Reword[3311068][2]["DeleteItem"][1]["Id"] = 3311068
	tTeamDrinking_Reword[3311068][2]["Talk"] = tTeamDrinking_Text["Cultivation"][3]
	tTeamDrinking_Reword[3311068][2]["LogId"] =12001178
	tTeamDrinking_Reword[3311068][2]["LogStep"] = "3[2]"

local tTeamDrinking_Log = {}
 tTeamDrinking_Log["Delete"] = "0,0,%d,1,12001178,1,0,0"
---------------------------逻辑部分---------------------------------------------
function TeamDrinking_UserItem(nItemId)
	local nUserId = Get_UserId()
	local nLevel =Get_UserLevel(nUserId)
	local nEvent = tTeamDrinking_Stc[1]["EventType"]
	local nType = tTeamDrinking_Stc[1]["DataType"]
	local nTeamCount=Get_UserTeamNumbers()
	
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	--等级小于50级无法使用
	if nLevel < tTeamDrinking_Cont["LevelMin"] then
		Sys_MsgBox(tTeamDrinking_Text["MinLevel"],nil,nil,nUserId)
		return
	end
	
	--获取玩家等级区间
	local nIndex = TeamDrinking_JudgeLevel(nLevel)
	--满级玩家只能获取修行值
	local nCapsExp = 0
	--获取当前等级封顶经验
	if nLevel < 140 then 
		nCapsExp = tTeamDrinking_Cont["caps"][nIndex]
	end
		
	--获取玩家今日获取经验
	local nUserExp = Get_UserStatisticValue(nEvent,nType,nUserId) * 10000
	--位置判断
	if Get_UserMapId(nUserId)~= tTeamDrinking_Cont["WineRange"]["MapID"] then
		Sys_MsgBox(tTeamDrinking_Text["NotSite"],"TeamDrinking_AutoPath",nil,nUserId)  
		return    
	end
	if not TeamDrinking_JudgeDistance(nUserId) then
		Sys_MsgBox(tTeamDrinking_Text["NotSite"],"TeamDrinking_AutoPath",nil,nUserId)  
		return
	end
	
	--判断玩家是否组队
	if nTeamCount == 0 then
		if nCapsExp ~= 0 then 
			tItem[nItemId]["Text115"] = string.format(tTeamDrinking_Text[nItemId]["Text115"],nUserExp,nCapsExp)
		else
			tItem[nItemId]["Text115"] = string.format(tTeamDrinking_Text["MaxLevel"],tTeamDrinking_Cont["Cultivation"][nItemId])
		end
			--出对话
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	
	--组队但不足三人
	if nTeamCount < 3 then
		if nCapsExp ~= 0 then 
			tItem[nItemId]["Text215"] = string.format(tTeamDrinking_Text[nItemId]["Text215"],nUserExp,nCapsExp)
		else
			tItem[nItemId]["Text215"] = string.format(tTeamDrinking_Text["MaxLevel"],tTeamDrinking_Cont["Cultivation"][nItemId])
		end
		tItem[nItemId]["Text217"] = string.format(tTeamDrinking_Text[nItemId]["Text217"],nTeamCount)
		-- 出对话
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	if nCapsExp ~= 0 then 
		tItem[nItemId]["Text315"] = string.format(tTeamDrinking_Text[nItemId]["Text315"],nUserExp,nCapsExp)
	else
		tItem[nItemId]["Text315"] = string.format(tTeamDrinking_Text["MaxLevel"],tTeamDrinking_Cont["Cultivation"][nItemId])
	end
	tItem[nItemId]["Text317"] = string.format(tTeamDrinking_Text[nItemId]["Text317"],nTeamCount)
	LinkItemGossipFunc_New(nItemId,"3-1")
	
end
--确定喝酒
function TeamDrinking_StartDrink(nItemId)
	local nEvent = tTeamDrinking_Stc[1]["EventType"]
	local nType = tTeamDrinking_Stc[1]["DataType"]
	local nLevel =Get_UserLevel(nUserId)
	local nUserId = Get_UserId()
	
	--判断今日获取经验是否已满
	local nUserExp = Get_UserStatisticValue(nEvent,nType,nUserId) * 10000
	--获取玩家等级区间
	local nIndex = TeamDrinking_JudgeLevel(nLevel)
	--获取当前等级封顶经验
	if nLevel < 140 then 
		local nCapsExp = tTeamDrinking_Cont["caps"][nIndex]
		if nUserExp >= nCapsExp then
			LinkItemGossipFunc_New(nItemId,"4-1")
			return
		end
	end
	User_TeamExeFuncByTeamer(3,string.format("TeamDrinking_JudegeTeamNum</N>%d",nUserId),nUserId)
	Sys_SetLuaTimer(2,string.format("TeamDrinking_ConfirmDrink</N>%d",nItemId),nUserId)
end
--计算饮酒区队伍人数
function TeamDrinking_JudegeTeamNum(nOnwerId,nUserId)
	local nUserId = nUserId or Get_UserId()
	--判断是否在指定位置
	if Get_UserMapId(nUserId)==tTeamDrinking_Cont["WineRange"]["MapID"] and TeamDrinking_JudgeDistance(nUserId) then
		--附近的触发
		User_TeamExeFuncByTeamer(3,string.format("TeamDrinking_TeamFuncNear</N>%d",nOnwerId),nUserId)
	else
		--全地图触发
		User_TeamExeFuncByTeamer(3,string.format("TeamDrinking_TeamFuncNotNear</N>%d",nOnwerId),nUserId)
	end
end

--第二次全队触发函数（不在附近）
function TeamDrinking_TeamFuncNotNear(nOnwerId,nUserId)
	local nUserId=nUserId or Get_UserId()
	if nOnwerId==nUserId then
		Task_AddStatistic(tTeamDrinking_Stc[2]["EventType"],tTeamDrinking_Stc[2]["DataType"],tTeamDrinking_Stc[2]["CalcAddValue"],1,nUserId)
	end
end

--第二次全队触发函数（附近）
function TeamDrinking_TeamFuncNear(nOnwerId,nUserId)
	local nUserId=nUserId or Get_UserId()

	if nOnwerId==nUserId then
		Task_AddStatistic(tTeamDrinking_Stc[2]["EventType"],tTeamDrinking_Stc[2]["DataType"],tTeamDrinking_Stc[2]["CalcAddValue"],1,nUserId)
		Task_AddStatistic(tTeamDrinking_Stc[2]["EventType"],tTeamDrinking_Stc[2]["DataType"],tTeamDrinking_Stc[2]["NearAddValue"],1,nUserId)
	end
end

--今日经验满二次确认
function TeamDrinking_FullComfirm(nItemId)
	local nUserId = Get_UserId()
	
	User_TeamExeFuncByTeamer(3,string.format("TeamDrinking_JudegeTeamNum</N>%d",nUserId),nUserId)
	Sys_SetLuaTimer(2,string.format("TeamDrinking_ConfirmDrink</N>%d",nItemId),nUserId)
end

--开始饮酒
function TeamDrinking_ConfirmDrink(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nLevel =Get_UserLevel(nUserId)
	local nEvent = tTeamDrinking_Stc[1]["EventType"]
	local nType = tTeamDrinking_Stc[1]["DataType"]
	local nEvent_Num = tTeamDrinking_Stc[2]["EventType"]
	local nType_Num = tTeamDrinking_Stc[2]["DataType"]
	local nNearAddValue = tTeamDrinking_Stc[2]["NearAddValue"]
	local nValue=Get_UserStatisticValue(nEvent_Num,nType_Num,nUserId)
	local nCount=nValue%nNearAddValue
	local nTeamCount=(nValue-nCount)/nNearAddValue
	--清空计算人数掩码
	Task_SetStatistic(nEvent_Num,nType_Num,0,1,nUserId)
	if nTeamCount < 3 then
		Sys_MsgBox(tTeamDrinking_Text["NoEnoughTeam"],"TeamDrinking_AutoPath",nil,nUserId)
		return
	end
			
	--等级小于50级无法使用
	if not User_JudgeLevelAndMetempsychosis(tTeamDrinking_Cont["LevelMin"],tTeamDrinking_Cont["Metempsychosis"],nUserId) then
		Sys_MsgBox(tTeamDrinking_Text["MinLevel"],nil,nil,nUserId)
		return
	end
	
	if Get_UserMapId(nUserId)~= tTeamDrinking_Cont["WineRange"]["MapID"] then
		Sys_MsgBox(tTeamDrinking_Text["NotSite"],"TeamDrinking_AutoPath",nil,nUserId)  
		return    
	end
	if not TeamDrinking_JudgeDistance(nUserId) then
		Sys_MsgBox(tTeamDrinking_Text["NotSite"],"TeamDrinking_AutoPath",nil,nUserId)  
		return
	end
	TeamDrinking_Drink(nItemId,nUserId)
end

function TeamDrinking_Drink(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nLevel =Get_UserLevel(nUserId)
	local nEvent = tTeamDrinking_Stc[1]["EventType"]
	local nType = tTeamDrinking_Stc[1]["DataType"]
	--获取玩家等级区间
	local nIndex = TeamDrinking_JudgeLevel(nLevel)
	--获取当前等级封顶经验
	local nCapsExp = tTeamDrinking_Cont["caps"][nIndex]
	--获取玩家今日获取经验
	local nUserExp = Get_UserStatisticValue(nEvent,nType,nUserId) * 10000
	
	--获取应给的经验
	--初始为极品酒经验
	local nAddExp = tTeamDrinking_Cont["Wine"][nIndex]
	if nItemId == tTeamDrinking_Cont["Liquor"][1] then
		nAddExp = nAddExp / 10 
	elseif nItemId == tTeamDrinking_Cont["Liquor"][2] then
		nAddExp = nAddExp / 2 
	end
	
	
	--达到封顶经验给修行值
	if nUserExp >= nCapsExp then
		User_EffectAdd("self","zf2-e128",nUserId)
		RewardTemplate_UseItemAndMsg(tTeamDrinking_Reword[nItemId][2],nUserId)
		return
	end
	
	if nUserExp + nAddExp > nCapsExp then
		nAddExp = nCapsExp - nUserExp
	end
	
	local tReward = CommonFunc_Copy(tTeamDrinking_Reword[nItemId][1])
	tReward["RewardExp"]["Value"] = nAddExp
	
	--加掩码（经验点数值太大，除10000后再记录，否则会出现负数）
	local nData = math.floor(nAddExp / 10000)
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	User_EffectAdd("self","zf2-e128",nUserId)
	RewardTemplate_UseItemAndMsg(tReward,nUserId)
end

--距离判断
function  TeamDrinking_JudgeDistance(nUserId)
	local nUserId = nUserId or Get_UserId()
	--非指定位置使用
	local nNowPosX =  Get_UserPositionX(nUserId) 
	local nNowPosY =  Get_UserPositionY(nUserId)
	local nBound = tTeamDrinking_Cont["WineRange"]["Bound"]
	local nPosX = tTeamDrinking_Cont["WineRange"]["PosX"]
	local nPosY = tTeamDrinking_Cont["WineRange"]["PosY"]
	if (nNowPosX >= nPosX - nBound and nNowPosX <= nPosX + nBound) and (nNowPosY >= nPosY - nBound and nNowPosY <= nPosY + nBound) then
		return true
	else
		return false
	end
end
--寻路到饮酒区域
function TeamDrinking_AutoPath()
	local nUserId = nUserId or Get_UserId()
	local nMapid=Get_UserMapId(nUserId)
	User_ChgMap(tTeamDrinking_Cont["ChgPoin"]["MapId"],tTeamDrinking_Cont["ChgPoin"]["PosX"],tTeamDrinking_Cont["ChgPoin"]["PosY"],0,nUserId)
end
--判断玩家在哪个等级区间
function TeamDrinking_JudgeLevel(nLevel)
	for i,v in pairs(tTeamDrinking_Cont["Level"]) do
		if nLevel>= v[1] and nLevel<= v[2] then
			return i
		end
	end
end

---------------------------------物品部分--------------------------------------------
-- 普通流香酒
tItemFace[3311066] = 1888
tItemFace[3311067] = 1889
tItemFace[3311068] = 1890

tItem[3311066] = tItem[3311066] or {}
tItem[3311066]["Function"] = function(nItemId,sItemName)
	TeamDrinking_UserItem(nItemId)
end
tItem[3311067] = tItem[3311067] or {}
tItem[3311067]["Function"] = function(nItemId,sItemName)
	TeamDrinking_UserItem(nItemId)
end
tItem[3311068] = tItem[3311068] or {}
tItem[3311068]["Function"] = function(nItemId,sItemName)
	TeamDrinking_UserItem(nItemId)
end

tItem[3311066]["DialogueText"] = tTeamDrinking_Text[3311066]
-- 未组队
tItem[3311066]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3311066]["tOption1-1"] = {111}

--组队但人数不够
tItem[3311066]["Text2-1"] = {211,212,213,214,215,216,217}
tItem[3311066]["tOption2-1"] = {211}

--组队且人数足够
tItem[3311066]["Text3-1"] = {311,312,313,314,315,316,317}
tItem[3311066]["tOption3-1"] = {311,312}
tItem[3311066]["OptionFunc311"] = "TeamDrinking_StartDrink</N>3311066"

tItem[3311066]["Text4-1"] = {411,412}
tItem[3311066]["tOption4-1"] = {411,412}
tItem[3311066]["OptionFunc411"] = "TeamDrinking_FullComfirm</N>3311066"

--上等流香酒
tItem[3311067]["DialogueText"] = tTeamDrinking_Text[3311067]
-- 未组队
tItem[3311067]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3311067]["tOption1-1"] = {111}

--组队但人数不够
tItem[3311067]["Text2-1"] = {211,212,213,214,215,216,217}
tItem[3311067]["tOption2-1"] = {211}

--组队且人数足够
tItem[3311067]["Text3-1"] = {311,312,313,314,315,316,317}
tItem[3311067]["tOption3-1"] = {311,312}
tItem[3311067]["OptionFunc311"] = "TeamDrinking_StartDrink</N>3311067"

tItem[3311067]["Text4-1"] = {411,412}
tItem[3311067]["tOption4-1"] = {411,412}
tItem[3311067]["OptionFunc411"] = "TeamDrinking_FullComfirm</N>3311067"


--特等流香酒
tItem[3311068]["DialogueText"] = tTeamDrinking_Text[3311068]
-- 未组队
tItem[3311068]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3311068]["tOption1-1"] = {111}

--组队但人数不够
tItem[3311068]["Text2-1"] = {211,212,213,214,215,216,217}
tItem[3311068]["tOption2-1"] = {211}

--组队且人数足够
tItem[3311068]["Text3-1"] = {311,312,313,314,315,316,317}
tItem[3311068]["tOption3-1"] = {311,312}
tItem[3311068]["OptionFunc311"] = "TeamDrinking_StartDrink</N>3311068"

tItem[3311068]["Text4-1"] = {411,412}
tItem[3311068]["tOption4-1"] = {411,412}
tItem[3311068]["OptionFunc411"] = "TeamDrinking_FullComfirm</N>3311068"


