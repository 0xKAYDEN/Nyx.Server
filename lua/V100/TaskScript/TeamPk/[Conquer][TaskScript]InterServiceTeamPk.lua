----------------------------------------------------------------------------
--Name:		[征服][任务脚本]跨服组队PK赛.lua
--Purpose:	跨服组队PK赛
--Creator: 	郑鋆
--Created:	2017/04/27
----------------------------------------------------------------------------

-- 命名前缀
-- InterServiceTeamPk_

-- 常量表
local tInterServiceTeamPk_Constant = {}
	tInterServiceTeamPk_Constant["GlobalId"] = 51598
	-- 入场NPC的活动时间
	tInterServiceTeamPk_Constant["ActivityTime"] = tActivityTime["ServerTeamPk"]["Match"]

	tInterServiceTeamPk_Constant["Emoney"] = 99
	-- 入场门票
	tInterServiceTeamPk_Constant["EntranceTicket"] = 3303237
	-- 参赛的等级要求
	tInterServiceTeamPk_Constant["Level"] = 100
	tInterServiceTeamPk_Constant["Metempsychosis"] = 2
	tInterServiceTeamPk_Constant["Log"] = "0,0,0,0,12000760,1[2],0,0"
	tInterServiceTeamPk_Constant["JoinLog"] = "350	21529	0	0	1	"
	
-- 跨服传送的地图及落脚点配置
local tInterServiceTeamPk_MapPos = {}
	-- 100级以下的组别
	tInterServiceTeamPk_MapPos[1] = {20,21,22,23}
	-- 100~119级别
	tInterServiceTeamPk_MapPos[2] = {24,25,26,27}
	-- 120~129级别
	tInterServiceTeamPk_MapPos[3] = {28,29,30,31}
	-- 130级以上
	tInterServiceTeamPk_MapPos[4] = {32,33,34,35}

-- 报名	
local tInterServiceTeamPk_SignUp = {}
	tInterServiceTeamPk_SignUp["Talk"] = tInterServiceTeamPk_Text[20539]["Success"]
	tInterServiceTeamPk_SignUp["LogId"] = 12000760
	tInterServiceTeamPk_SignUp["LogStep"] = "1[1]"
	tInterServiceTeamPk_SignUp["RewardItem"] = {}
	tInterServiceTeamPk_SignUp["RewardItem"][1] = {}
	tInterServiceTeamPk_SignUp["RewardItem"][1]["Id"] = 3303237
	tInterServiceTeamPk_SignUp["RewardItem"][1]["Attr"] = "0 1"

-- 跨服状态
local tInterServiceTeamPk_Status = {}
	-- 入场
	tInterServiceTeamPk_Status["Entrance"] = 2
	-- 比赛进行中
	tInterServiceTeamPk_Status["InPlay"] = 3
	
-- stc掩码	
local tInterServiceTeamPk_Stc = {}
	tInterServiceTeamPk_Stc["EventType"] = 159
	tInterServiceTeamPk_Stc["DataType"] = 54
	-- 参与值
	tInterServiceTeamPk_Stc["Join"] = 1
	-- 领取奖励
	tInterServiceTeamPk_Stc["Reward"] = 2
	-- 获得前八强奖励
	tInterServiceTeamPk_Stc["FinalEight"] = 3	
	
-- 发奖action
local tInterServiceTeamPk_AwardPrize = {}
	-- 100组别的奖励
	--修改为神纹版本新的奖励action
	tInterServiceTeamPk_AwardPrize[1] = {}
	tInterServiceTeamPk_AwardPrize[1][1] = 567355
	tInterServiceTeamPk_AwardPrize[1][2] = 567356
	tInterServiceTeamPk_AwardPrize[1][3] = 567357
	tInterServiceTeamPk_AwardPrize[1][8] = 567358

	-- 120组别的奖励
	tInterServiceTeamPk_AwardPrize[2] = {}
	tInterServiceTeamPk_AwardPrize[2][1] = 567351
	tInterServiceTeamPk_AwardPrize[2][2] = 567352
	tInterServiceTeamPk_AwardPrize[2][3] = 567353
	tInterServiceTeamPk_AwardPrize[2][8] = 567354

	-- 130组别的奖励
	tInterServiceTeamPk_AwardPrize[3] = {}
	tInterServiceTeamPk_AwardPrize[3][1] = 567347
	tInterServiceTeamPk_AwardPrize[3][2] = 567348
	tInterServiceTeamPk_AwardPrize[3][3] = 567349
	tInterServiceTeamPk_AwardPrize[3][8] = 567350

-- 参与	(神纹版本参与奖添加一个神纹精粹包)
local tInterServiceTeamPk_Join = {}
	tInterServiceTeamPk_Join["LogId"] = 12000760
	tInterServiceTeamPk_Join["LogStep"] = "2[1]"
	tInterServiceTeamPk_Join["RewardItem"] = {}
	tInterServiceTeamPk_Join["RewardItem"][1] = {}
	tInterServiceTeamPk_Join["RewardItem"][1]["Id"] = 729242
	tInterServiceTeamPk_Join["RewardItem"][1]["Attr"] = "0 1 3"
	tInterServiceTeamPk_Join["RewardItem"][2] = {}
	tInterServiceTeamPk_Join["RewardItem"][2]["Id"] = 3306697
	tInterServiceTeamPk_Join["RewardItem"][2]["Attr"] = "0 1"
	-- tInterServiceTeamPk_Join["RewardItem"][1] = {}
	-- tInterServiceTeamPk_Join["RewardItem"][1]["Id"] = 3009001 -- 【库】PiedraEstrellaBrillante[属性:9], 【表格】明亮星陨石
	-- tInterServiceTeamPk_Join["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的PiedraEstrellaBrillante*3
	-- tInterServiceTeamPk_Join["RewardStrengthValue"] = {}
	-- tInterServiceTeamPk_Join["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	
------------------------------------------------------------------逻辑配置-----------------------------------------------------------------------
function InterServiceTeamPk_RestGlobal()
	local nGlobalId = tInterServiceTeamPk_Constant["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobalId)
	
	if nGlobalData == 0 then
		Sys_SetSynaGlobalData0(nGlobalId,0)
		Sys_SetSynaGlobalData1(nGlobalId,1)
	end
end

function InterServiceTeamPk_ReplyGlobal()
	local nGlobalId = tInterServiceTeamPk_Constant["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobalId)
	
	if nGlobalData ~= 0 then
		Sys_SetSynaGlobalData1(nGlobalId,0)
	end
end

-- 获取传送的坐标落脚点
function InterServiceTeamPk_GetMapPos(nUserLev,nUserId)
	local nLev = nUserLev or Get_UserLevel(nUserId)
	local nIndex = 1
	
	if nLev < 100 then
		nIndex = 1
	elseif nLev < 120 then
		nIndex = 2
	elseif nLev < 130 then
		nIndex = 3
	else
		nIndex = 4
	end
	
	local nRandom = math.random(1,#tInterServiceTeamPk_MapPos[nIndex])
	return tInterServiceTeamPk_MapPos[nIndex][nRandom]
end

-- 活动时间检测
function InterServiceTeamPk_ChkActivityTime(nNpcId)
	-- 判断是否在活动前
	if CommonFunc_GetBeforeActivityTime(tInterServiceTeamPk_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return false
	-- 判断是否在活动时间内
	elseif not Sys_ChkFullTime(tInterServiceTeamPk_Constant["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return false
		end
	
	return true
end

-- 报名参赛的条件检测
function InterServiceTeamPk_ChkSignUp(nNpcId)
	local nUserEmoney = Get_UserEMoney()
	
	if nUserEmoney < tInterServiceTeamPk_Constant["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	return true
end

-- 报名参赛
function InterServiceTeamPk_SignUp(nNpcId,nType)
	-- 判断活动时间
	if not InterServiceTeamPk_ChkActivityTime(nNpcId) then
		return
	end
	
	if not InterServiceTeamPk_ChkSignUp(nNpcId) then
		return
	end
	
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
	else
		if not User_AddEMoney(-tInterServiceTeamPk_Constant["Emoney"]) then
			return
		end
		
		RewardTemplate_UseItemAndMsg(tInterServiceTeamPk_SignUp)
	end
end

-- 离开赛场
function InterServiceTeamPk_AwayField()
	local nNpcId = Get_NpcId()
	local nStatus = Get_CrossClanPKStatus()
	
	-- 判断是否还在比赛中
	if nStatus >= tInterServiceTeamPk_Status["InPlay"] then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		Sys_ExitOS()
	end
end

-- 查询界面
function InterServiceTeamPk_Query()
	return Get_QueryCrossClanPKInfo(3)
end

-- 参赛候场
-- function InterServiceTeamPk_JoinTheGame(nNpcId)
	-- -- 判断活动时间
	-- if not InterServiceTeamPk_ChkActivityTime(nNpcId) then
		-- return
	-- end
	-- -- 获得跨服组队PK赛当前状态
	-- local nStatus = Get_CrossClanPKStatus()
	-- if nStatus < tInterServiceTeamPk_Status["Entrance"] then
		-- LinkNpcGossipFunc_New(nNpcId,"4-2")
		-- return
	-- elseif nStatus > tInterServiceTeamPk_Status["Entrance"] then
		-- LinkNpcGossipFunc_New(nNpcId,"4-1")
		-- return
	-- end
	-- -- 判断是否满足入场等级要求
	-- local nUserLevel = Get_UserLevel()
	
	-- if nUserLevel < tInterServiceTeamPk_Constant["Level"] then
		-- User_TalkChannel2005(tInterServiceTeamPk_Text["NoLevel"])
		-- return
	-- end
		-- --判断玩家是否队长
	-- -- if not User_IsTeamLeader() then
		-- -- LinkNpcGossipFunc_New(nNpcId,"4-5")
		-- -- return
	-- -- end
	-- -- 判断是否有组队
	-- local nTeamNum = Get_UserTeamNumbers()
	-- if nTeamNum <= 0 then
		-- LinkNpcGossipFunc_New(nNpcId,"4-3")
		-- return
	-- end
	-- if not Item_ChkItem(tInterServiceTeamPk_Constant["EntranceTicket"]) then
			-- LinkNpcGossipFunc_New(nNpcId,"4-4")
			-- return
	-- end
	-- LinkNpcGossipFunc_New(nNpcId,"6-2")
-- end

-- 进入赛场
function InterServiceTeamPk_EnterField(nNpcId)
	-- 判断活动时间
	if not InterServiceTeamPk_ChkActivityTime(nNpcId) then
		return
	end

	-- 获得跨服组队PK赛当前状态
	local nStatus = Get_CrossClanPKStatus()
	if nStatus < tInterServiceTeamPk_Status["Entrance"] then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	elseif nStatus > tInterServiceTeamPk_Status["Entrance"] then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 判断是否满足入场等级要求
	local nUserLevel = Get_UserLevel()
	local nMetemsychosis = Get_UserMetempsychosis()
	
	if nUserLevel < tInterServiceTeamPk_Constant["Level"] then
		User_TalkChannel2005(tInterServiceTeamPk_Text["NoLevel"])
		return
	end
	
	if nMetemsychosis < tInterServiceTeamPk_Constant["Metempsychosis"] then
		User_TalkChannel2005(tInterServiceTeamPk_Text["NoLevel"])
		return
	end
	-- 判断是否有组队
	local nTeamNum = Get_UserTeamNumbers()
	
	if nTeamNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	local nEvent = tInterServiceTeamPk_Stc["EventType"]
	local nType = tInterServiceTeamPk_Stc["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
		--判断玩家是否队长
	-- if not User_IsTeamLeader() then
		-- LinkNpcGossipFunc_New(nNpcId,"4-5")
		-- return
	-- end
	
	if Task_ChkStcValue(nEvent,nType,"~=",tInterServiceTeamPk_Stc["Join"]) then
		
		-- 判断是否有入场门票
		if not Item_ChkItem(tInterServiceTeamPk_Constant["EntranceTicket"]) then
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		end
		
		if not Item_DelItem(tInterServiceTeamPk_Constant["EntranceTicket"]) then
			
			return
		end
	end
	
	Task_SetStatistic(nEvent,nType,tInterServiceTeamPk_Stc["Join"],1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--记录emonlog方便统计参赛人数
	Sys_SaveEmoneyBuy(tInterServiceTeamPk_Constant["JoinLog"])
	Sys_SaveActionRewardLog(tInterServiceTeamPk_Constant["Log"])
	
	-- 入场
	local nFrontierServerID = Get_FrontierServerID()
	local nPos = InterServiceTeamPk_GetMapPos()
	if Sys_EnterServer(nFrontierServerID,12,0,nPos) then
		User_TalkChannel2005(tInterServiceTeamPk_Text["ChgMap"])
	end
end

-- 领取参与奖
function InterServiceTeamPk_ReceiveAward(nNpcId)
	local nEvent = tInterServiceTeamPk_Stc["EventType"]
	local nType = tInterServiceTeamPk_Stc["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nStatus = Get_CrossClanPKStatus()
	-- 判断是否还在比赛间
	if nStatus == 1 or nStatus == 2 or nStatus == 3 then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	-- 判断玩家是否参与了本场跨服精英PK赛
	if nData < tInterServiceTeamPk_Stc["Reward"] and nData ~= tInterServiceTeamPk_Stc["Join"] then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	-- 判断是否领取过奖励
	if nData >= tInterServiceTeamPk_Stc["Reward"] then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	Task_SetStatistic(nEvent,nType,tInterServiceTeamPk_Stc["Reward"],1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tInterServiceTeamPk_Join)
end

-- 跨服组队PK赛获得奖励
function InterServiceTeamPk_Reward(nUserId,nGroup,nRank)
	if nRank > 3 then
		nRank = 8
	end
	
	local sContent = string.format(tInterServiceTeamPk_Text["Reward"]["Content"],tInterServiceTeamPk_Text["Reward"]["Group"][nGroup],tInterServiceTeamPk_Text["Reward"]["Rank"][nRank])
	Sys_SendMail(nUserId,0,0,tInterServiceTeamPk_AwardPrize[nGroup][nRank],0,30,tInterServiceTeamPk_Text["Reward"]["Sender"],tInterServiceTeamPk_Text["Reward"]["Title"],sContent)
end

-- 输入购买门票数量对白
function InterServiceTeamPk_Dialog(nNpcId)
	Sys_DialogTaskClear()
	Sys_DialogText(tInterServiceTeamPk_Text[nNpcId]["Text611"])
	Sys_DialogOptEdit(tInterServiceTeamPk_Text[nNpcId]["Option24"],10,"</F>InterServiceTeamPk_Purchase</N>" .. nNpcId)
	Sys_DialogOption(tInterServiceTeamPk_Text[nNpcId]["Option25"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function InterServiceTeamPk_Purchase(nNpcId)
	-- 判断活动时间
	if not InterServiceTeamPk_ChkActivityTime(nNpcId) then
		return
	end
	
	local str = Get_SysAcceptStr()
	local nNum = tonumber(str)
	
	-- 判断输入的字符是否有错
	if nNum == nil then
		
		return
	end
	
	local nUserId = Get_UserId()
	local nCostEmoney = tInterServiceTeamPk_Constant["Emoney"]*nNum
	local nUserEmoney = Get_UserEMoney(nUserId)
	
	-- 判断玩家天石数量是否够
	if nCostEmoney > nUserEmoney then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local tReward = CommonFunc_Copy(tInterServiceTeamPk_SignUp)
	tReward["RewardItem"][1]["Attr"] = string.format("0 %d",nNum)
	tReward["Talk"] = ""
	
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tReward,nUserId)
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 扣天石
	if not User_AddEMoney(nCostEmoney) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tReward,nUserId,true)
end

-- 打开天石商店界面
function InterServiceTeamPk_OpenDialog(nNpcId)
	User_OpenDialog(0,nNpcId,0)
end

------------------------------------------------------------------NPC配置-----------------------------------------------------------------------
-- NPC【跨服组队PK赛】殷天雄（市场）
--同步简体神纹版本对白
tNpcFace[5659] = 830
tNpcGossip[20539] = tNpcGossip[20539] or DefaultNpc:new{}
tNpcGossip[20539]["OptionHidden"] = 1
tNpcGossip[20539]["DialogueText"] = tInterServiceTeamPk_Text[20539]

-- 活动时间前
tNpcGossip[20539]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20539]["tOption1-1"] = {1}
tNpcGossip[20539]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tInterServiceTeamPk_Constant["ActivityTime"])
end

-- 【活动中（比赛日当天）】等级不满足条件
tNpcGossip[20539]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20539]["tOption1-2"] = {3}
tNpcGossip[20539]["ChkFunc1-2"] = function ()
	if Sys_ChkFullTime(tInterServiceTeamPk_Constant["ActivityTime"]) then
		local nUserLevel = Get_UserLevel()
		local nMetemsychosis = Get_UserMetempsychosis()

		if nUserLevel < tInterServiceTeamPk_Constant["Level"] then
			return true
	end
	
		if nMetemsychosis < tInterServiceTeamPk_Constant["Metempsychosis"] then
			return true
		end
	end
	
	return false
end

-- 等级满足条件
tNpcGossip[20539]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20539]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tInterServiceTeamPk_Constant["ActivityTime"])
end
tNpcGossip[20539]["tOption1-3"] = {23,5,21,22,2,6}
tNpcGossip[20539]["OptionFunc4"] = "InterServiceTeamPk_SignUp</N>20539</N>1"
tNpcGossip[20539]["OptionFunc5"] = "InterServiceTeamPk_EnterField</N>20539"
tNpcGossip[20539]["OptionFunc21"] = "InterServiceTeamPk_ReceiveAward</N>20539"
tNpcGossip[20539]["OptionFunc22"] = "InterServiceTeamPk_Query"
tNpcGossip[20539]["OptionPoint2"] = "2-1"
tNpcGossip[20539]["OptionFunc23"] = "InterServiceTeamPk_OpenDialog</N>20539"

-- 【活动后】
tNpcGossip[20539]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20539]["tOption1-4"] = {23,21,22,2}

-- 接2、了解规则
tNpcGossip[20539]["Text2-1"] = {212,213,214,215,216,217,218,219,220,221,222}
tNpcGossip[20539]["tOption2-1"] = {8}
tNpcGossip[20539]["OptionPoint8"] = "1"

-- 报名参赛（99天石）
-- 失败，天石不足
tNpcGossip[20539]["Text3-1"] = {311}
tNpcGossip[20539]["tOption3-1"] = {9}

-- 【失败，背包空间不足】
tNpcGossip[20539]["Text3-2"] = {321}
tNpcGossip[20539]["tOption3-2"] = {10}

-- 【成功，二次确认】
tNpcGossip[20539]["Text3-3"] = {331,332}
tNpcGossip[20539]["tOption3-3"] = {11,12}
tNpcGossip[20539]["OptionFunc11"] = "InterServiceTeamPk_SignUp</N>20539</N>2"

-- 进入赛场
-- 【失败，比赛已经开始】
tNpcGossip[20539]["Text4-1"] = {411}
tNpcGossip[20539]["tOption4-1"] = {13}

-- 【失败，还未能进场】
tNpcGossip[20539]["Text4-2"] = {421}
tNpcGossip[20539]["tOption4-2"] = {14}

-- 【失败，未组队】
tNpcGossip[20539]["Text4-3"] = {431}
tNpcGossip[20539]["tOption4-3"] = {15}

-- 【失败，没有门票】
tNpcGossip[20539]["Text4-4"] = {441}
tNpcGossip[20539]["tOption4-4"] = {16}

tNpcGossip[20539]["Text5-1"] = {511}
tNpcGossip[20539]["tOption5-1"] = {17}

tNpcGossip[20539]["Text5-2"] = {521}
tNpcGossip[20539]["tOption5-2"] = {18}

tNpcGossip[20539]["Text5-3"] = {531}
tNpcGossip[20539]["tOption5-3"] = {19}

tNpcGossip[20539]["Text5-4"] = {541}
tNpcGossip[20539]["tOption5-4"] = {20}


-- NPC【跨服组队PK赛】殷天雄（候场区内）
tNpcGossip[20540] = tNpcGossip[20540] or DefaultNpc:new{}
tNpcGossip[20540]["OptionHidden"] = 1
tNpcGossip[20540]["DialogueText"] = tInterServiceTeamPk_Text[20540]

tNpcGossip[20540]["Text1-1"] = {111,112}
tNpcGossip[20540]["tOption1-1"] = {1,2}
tNpcGossip[20540]["OptionFunc1"] = "InterServiceTeamPk_AwayField"

tNpcGossip[20540]["Text1-2"] = {121,122,123}
tNpcGossip[20540]["tOption1-2"] = {4,5}
tNpcGossip[20540]["OptionFunc4"] = "Sys_ExitOS"

tNpcGossip[20541] = tNpcGossip[20540]
tNpcGossip[20542] = tNpcGossip[20540]
tNpcGossip[20543] = tNpcGossip[20540]



------------------------------------------------------------------物品配置-----------------------------------------------------------------------


--PK赛门票3303237 (去除背包信3303372逻辑，直接写在背包信模板中)
tItem[3303237] = tItem[3303237] or {}
tItem[3303237]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["ServerTeamPk"]["UseTicket"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tInterServiceTeamPk_Text[3303237]["OutOfTime"])
		return
	end
	
	NpcPosition_PathFind(20539)
end


tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],InterServiceTeamPk_RestGlobal)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],InterServiceTeamPk_RestGlobal)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],InterServiceTeamPk_RestGlobal)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],InterServiceTeamPk_ReplyGlobal)
tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],InterServiceTeamPk_ReplyGlobal)

tUserAwardCrossClanPKPrize["tFunction"] = tUserAwardCrossClanPKPrize["tFunction"] or {}
table.insert(tUserAwardCrossClanPKPrize["tFunction"],InterServiceTeamPk_Reward)