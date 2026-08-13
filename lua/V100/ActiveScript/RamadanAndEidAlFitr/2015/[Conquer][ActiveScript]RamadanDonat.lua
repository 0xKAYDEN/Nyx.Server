------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]斋月的捐赠
--Purpose:		2015年斋月节和开斋节活动之斋月的捐赠
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------

-- 命名规则
-- RamadanDonat2015_

-- logID 	12000053

-- 常量表
local tRamadanDonat2015_Constant = {}
	-- 活动时间
	tRamadanDonat2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-05-25 23:59"
	tRamadanDonat2015_Constant["ActivityTime"] = "2017-05-26 00:00 2017-06-24 23:59"

	-- 玩家等级要求
	tRamadanDonat2015_Constant["Metempsychosis"] = 0
	tRamadanDonat2015_Constant["Level"] = 80
	tRamadanDonat2015_Constant["MaxLevel"] = 140
	
	tRamadanDonat2015_Constant["FestivalId"] = 3419
	tRamadanDonat2015_Constant["LogId"] = 12000053
	
	tRamadanDonat2015_Constant["ExpLog"] = "0,0,1,100000,12000053,2,4,%d"
	tRamadanDonat2015_Constant["CultivationLog"] = "0,0,1,100000,12000053,2,6,%d"
	
	-- 掩码
	tRamadanDonat2015_Constant["EventType"] = 133
	tRamadanDonat2015_Constant["DataType"] = 70
	tRamadanDonat2015_Constant["CompleteData"] = 1
	
	tRamadanDonat2015_Constant["HighReward"] = 5

-- 金额对应的经验或者修为值
local tRamadanDonat2015_Info = {}
	-- 10万
	tRamadanDonat2015_Info[1] = {}
	tRamadanDonat2015_Info[1]["Money"] = 100000
	tRamadanDonat2015_Info[1]["Exp"] = 20
	tRamadanDonat2015_Info[1]["Cultivation"] = 10
	tRamadanDonat2015_Info[1]["Effect"] = "angelwing3"
	tRamadanDonat2015_Info[1]["Space"] = 0
	
	-- 20万
	tRamadanDonat2015_Info[2] = {}
	tRamadanDonat2015_Info[2]["Money"] = 200000
	tRamadanDonat2015_Info[2]["Exp"] = 40
	tRamadanDonat2015_Info[2]["Cultivation"] = 20
	tRamadanDonat2015_Info[2]["Effect"] = "angelwing3"
	tRamadanDonat2015_Info[2]["Space"] = 0
	
	-- 30万
	tRamadanDonat2015_Info[3] = {}
	tRamadanDonat2015_Info[3]["Money"] = 300000
	tRamadanDonat2015_Info[3]["Exp"] = 60
	tRamadanDonat2015_Info[3]["Cultivation"] = 30
	tRamadanDonat2015_Info[3]["Effect"] = "angelwing3"
	tRamadanDonat2015_Info[3]["Space"] = 0
	
	-- 40万
	tRamadanDonat2015_Info[4] = {}
	tRamadanDonat2015_Info[4]["Money"] = 400000
	tRamadanDonat2015_Info[4]["Exp"] = 80
	tRamadanDonat2015_Info[4]["Cultivation"] = 40
	tRamadanDonat2015_Info[4]["Effect"] = "angelwing3"
	tRamadanDonat2015_Info[4]["Space"] = 0
	
	-- 50万
	tRamadanDonat2015_Info[5] = {}
	tRamadanDonat2015_Info[5]["Money"] = 500000
	tRamadanDonat2015_Info[5]["Exp"] = 100
	tRamadanDonat2015_Info[5]["Cultivation"] = 50
	tRamadanDonat2015_Info[5]["Effect"] = "zf2-e128"
	tRamadanDonat2015_Info[5]["Space"] = 1
--------------------------------------逻辑部分-----------------------------------------	
-- 公共判断
function RamadanDonat2015_JudgePublic(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tRamadanDonat2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return true
	end
	
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tRamadanDonat2015_Constant["Level"],tRamadanDonat2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return true
	end
	
	return false
end

-- 捐赠前判断
function RamadanDonat2015_JudgeDonat(nNpcId)
	if RamadanDonat2015_JudgePublic(nNpcId) then
		return
	end
	
	-- 判断今天是否捐赠过
	local nEvent = tRamadanDonat2015_Constant["EventType"]
	local nType = tRamadanDonat2015_Constant["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",tRamadanDonat2015_Constant["CompleteData"]) then
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		else
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 捐献金额
function RamadanDonat2015_DonatAmount(nNpcId,nType)
	if RamadanDonat2015_JudgePublic(nNpcId) then
		return
	end
	
	local nMoney = -tRamadanDonat2015_Info[nType]["Money"]
	
	-- 判断玩家金钱是否满足
	if not User_CanPutMoney2Bag(nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 判断背包空间
	local nSpace = tRamadanDonat2015_Info[nType]["Space"]
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 设掩码
	Task_SetStatistic(tRamadanDonat2015_Constant["EventType"],tRamadanDonat2015_Constant["DataType"],tRamadanDonat2015_Constant["CompleteData"],1)
	Task_SetStcTimestamp(tRamadanDonat2015_Constant["EventType"],tRamadanDonat2015_Constant["DataType"],0,0)

	-- 扣钱
	User_AddMoney(nMoney)
	
	-- 给奖励
	local nLevel = Get_UserLevel()
	local sLog = ""
	local nCultivation = tRamadanDonat2015_Info[nType]["Cultivation"]
	local nExp = tRamadanDonat2015_Info[nType]["Exp"]
	local sPrompt = ""
	
	-- 给经验或者修行值
	if nLevel >= tRamadanDonat2015_Constant["MaxLevel"] then
		User_AddCultivation(nCultivation)
		sLog = string.format(tRamadanDonat2015_Constant["CultivationLog"],nCultivation)
		sPrompt = string.format(tRamadanDonat2015_Text["PracticeValue"],nCultivation)
	else
		User_AddExpTime(nExp)
		sLog = string.format(tRamadanDonat2015_Constant["ExpLog"],nExp)
		sPrompt = string.format(tRamadanDonat2015_Text["Exp"],nExp)
	end
	
	-- 给通用礼包
	if nType >= tRamadanDonat2015_Constant["HighReward"] then
		FestivalGeneralPackage_GetGift(tRamadanDonat2015_Constant["FestivalId"],tRamadanDonat2015_Constant["LogId"])
		
		if nLevel >= tRamadanDonat2015_Constant["MaxLevel"] then
			sPrompt = tRamadanDonat2015_Text["MaxPracticeValue"]
		else
			sPrompt = tRamadanDonat2015_Text["MaxExp"]
		end
	end
	
	-- 打log
	Sys_SaveActionFestivalLog(sLog)
	
	-- 播光效
	User_EffectAdd("self",tRamadanDonat2015_Info[nType]["Effect"])
	
	-- 给提示
	User_TalkChannel2005(sPrompt)
end

--------------------------------------NPC模块-------------------------------------------
-- 慈善大使
tNpcFace[2977] = 109
tNpcGossip[18394] = tNpcGossip[18394] or DefaultNpc:new{}
tNpcGossip[18394]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18394]["Text1-1"] = {111,112,113}
tNpcGossip[18394]["Text111"] = tRamadanDonat2015_Text[18394]["111"]
tNpcGossip[18394]["Text112"] = tRamadanDonat2015_Text[18394]["112"]
tNpcGossip[18394]["Text113"] = tRamadanDonat2015_Text[18394]["113"]
tNpcGossip[18394]["tOption1-1"] = {1}
tNpcGossip[18394]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tRamadanDonat2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18394]["Text1-2"] = {121,122,123}
tNpcGossip[18394]["Text121"] = tRamadanDonat2015_Text[18394]["121"]
tNpcGossip[18394]["Text122"] = tRamadanDonat2015_Text[18394]["122"]
tNpcGossip[18394]["Text123"] = tRamadanDonat2015_Text[18394]["123"]
tNpcGossip[18394]["tOption1-2"] = {3,4,5}
tNpcGossip[18394]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tRamadanDonat2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18394]["Text1-3"] = {131}
tNpcGossip[18394]["Text131"] = tRamadanDonat2015_Text[18394]["131"]
tNpcGossip[18394]["tOption1-3"] = {2}

-- 修为不足
tNpcGossip[18394]["Text2-1"] = {211}
tNpcGossip[18394]["Text211"] = tRamadanDonat2015_Text[18394]["211"]
tNpcGossip[18394]["tOption2-1"] = {6}

-- 当天已完成
tNpcGossip[18394]["Text2-2"] = {221,222}
tNpcGossip[18394]["Text221"] = tRamadanDonat2015_Text[18394]["221"]
tNpcGossip[18394]["Text222"] = tRamadanDonat2015_Text[18394]["222"]
tNpcGossip[18394]["tOption2-2"] = {7}

-- 捐赠的金额
tNpcGossip[18394]["Text2-3"] = {231}
tNpcGossip[18394]["Text231"] = tRamadanDonat2015_Text[18394]["231"]
tNpcGossip[18394]["tOption2-3"] = {8,9,10,11,12,13}

-- 金额不足
tNpcGossip[18394]["Text3-1"] = {311}
tNpcGossip[18394]["Text311"] = tRamadanDonat2015_Text[18394]["311"]
tNpcGossip[18394]["tOption3-1"] = {14}

-- 背包空间不足
tNpcGossip[18394]["Text3-2"] = {321}
tNpcGossip[18394]["Text321"] = tRamadanDonat2015_Text[18394]["321"]
tNpcGossip[18394]["tOption3-2"] = {16}

-- 活动详情
tNpcGossip[18394]["Text4-1"] = {411,412,413,414}
tNpcGossip[18394]["Text411"] = tRamadanDonat2015_Text[18394]["411"]
tNpcGossip[18394]["Text412"] = tRamadanDonat2015_Text[18394]["412"]
tNpcGossip[18394]["Text413"] = tRamadanDonat2015_Text[18394]["413"]
tNpcGossip[18394]["Text414"] = tRamadanDonat2015_Text[18394]["414"]
tNpcGossip[18394]["tOption4-1"] = {15}

-- 选项
tNpcGossip[18394]["Option1"] = tRamadanDonat2015_Text[18394]["Option1"]
tNpcGossip[18394]["Option2"] = tRamadanDonat2015_Text[18394]["Option2"]
tNpcGossip[18394]["Option3"] = tRamadanDonat2015_Text[18394]["Option3"]
tNpcGossip[18394]["OptionFunc3"]="RamadanDonat2015_JudgeDonat</N>18394"
tNpcGossip[18394]["Option4"] = tRamadanDonat2015_Text[18394]["Option4"]
tNpcGossip[18394]["OptionPoint4"]="4"
tNpcGossip[18394]["Option5"] = tRamadanDonat2015_Text[18394]["Option5"]
tNpcGossip[18394]["Option6"] = tRamadanDonat2015_Text[18394]["Option6"]
tNpcGossip[18394]["Option7"] = tRamadanDonat2015_Text[18394]["Option7"]
tNpcGossip[18394]["Option8"] = tRamadanDonat2015_Text[18394]["Option8"]
tNpcGossip[18394]["OptionFunc8"]="RamadanDonat2015_DonatAmount</N>18394</N>1"
tNpcGossip[18394]["Option9"] = tRamadanDonat2015_Text[18394]["Option9"]
tNpcGossip[18394]["OptionFunc9"]="RamadanDonat2015_DonatAmount</N>18394</N>2"
tNpcGossip[18394]["Option10"] = tRamadanDonat2015_Text[18394]["Option10"]
tNpcGossip[18394]["OptionFunc10"]="RamadanDonat2015_DonatAmount</N>18394</N>3"
tNpcGossip[18394]["Option11"] = tRamadanDonat2015_Text[18394]["Option11"]
tNpcGossip[18394]["OptionFunc11"]="RamadanDonat2015_DonatAmount</N>18394</N>4"
tNpcGossip[18394]["Option12"] = tRamadanDonat2015_Text[18394]["Option12"]
tNpcGossip[18394]["OptionFunc12"]="RamadanDonat2015_DonatAmount</N>18394</N>5"
tNpcGossip[18394]["Option13"] = tRamadanDonat2015_Text[18394]["Option13"]
tNpcGossip[18394]["Option14"] = tRamadanDonat2015_Text[18394]["Option14"]
tNpcGossip[18394]["Option15"] = tRamadanDonat2015_Text[18394]["Option15"]
tNpcGossip[18394]["Option16"] = tRamadanDonat2015_Text[18394]["Option16"]