--------------------------------------------------
--Name:		[征服][任务脚本]玩家获得称号与成就
--Purpose:	玩家获得称号与成就
--Creator: 	张磊
--Created:	2016/01/14
--------------------------------------------------
	--logid :12001256


	
local tPlayerGetAchievementTitle_Cont = {}
	tPlayerGetAchievementTitle_Cont["CoatAchTitle"] = {}
	tPlayerGetAchievementTitle_Cont["CoatAchTitle"][1] = {2005,6,0}
	tPlayerGetAchievementTitle_Cont["CoatAchTitle"][2] = {2006,7,0}
	--测试，五件五星外套，给个翅膀外套，翅膀咩有，先用聚神丹代替测试
	
	tPlayerGetAchievementTitle_Cont["Vitality"] = {}
	tPlayerGetAchievementTitle_Cont["Vitality"][1600] = {2018,1,0}
	
	tPlayerGetAchievementTitle_Cont["Gongfu"] = {}
	tPlayerGetAchievementTitle_Cont["Gongfu"][1] = {81000,2004,5,0}

	tPlayerGetAchievementTitle_Cont["Achivement"] = {}
	tPlayerGetAchievementTitle_Cont["Achivement"][1] = {320,2001,2,0}
	
	tPlayerGetAchievementTitle_Cont["TitleOneCoat"] = {}
	tPlayerGetAchievementTitle_Cont["TitleOneCoat"][1] = {6003,22,0}
	tPlayerGetAchievementTitle_Cont["TitleOneCoat"][2] = {6004,23,0}
	
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"] = {}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][1] = {}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][1][1] = {1,11227,10}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][1][2] = {1,11229,50}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][1][3] = {1,11231,100}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][1][4] = {1,11301,200}
	
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][2] = {}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][2][1] = {2,11226,10}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][2][2] = {2,11228,50}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][2][3] = {2,11230,100}
	tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][2][4] = {2,11232,200}	
	
	tPlayerGetAchievementTitle_Cont["TitleSyn"] = {}
	tPlayerGetAchievementTitle_Cont["TitleSyn"][1] = {2002,3,10080}
	tPlayerGetAchievementTitle_Cont["TitleSyn"][2] = {2003,4,10085}
	
	tPlayerGetAchievementTitle_Cont["AchivementOneCoat"] = {}
	tPlayerGetAchievementTitle_Cont["AchivementOneCoat"][1] = 11225
	tPlayerGetAchievementTitle_Cont["AchivementOneCoat"][2] = 11224
	
	-- 添加精英PK赛翅膀   7天时效
	tPlayerGetAchievementTitle_Cont["EliteWings"] = {}
	tPlayerGetAchievementTitle_Cont["EliteWings"][1] = {6001,20,10080}
	
	-- 添加跨服战旗赛 给帮主加翅膀
	tPlayerGetAchievementTitle_Cont["CrossVexillumWings"] = {}
	tPlayerGetAchievementTitle_Cont["CrossVexillumWings"][1] = {6002,21,43200}
	
	-- 练气称号分数限制
	tPlayerGetAchievementTitle_Cont["TitleStren"] = {}
	tPlayerGetAchievementTitle_Cont["TitleStren"][1] = 1600
	
	-- 合成天下无敌的称号数据
	tPlayerGetAchievementTitle_Cont["WorldBeater"] = {}
	tPlayerGetAchievementTitle_Cont["WorldBeater"]["DelItem"] = 2100085
	tPlayerGetAchievementTitle_Cont["WorldBeater"]["DelItemNum"] = 12
	tPlayerGetAchievementTitle_Cont["WorldBeater"]["AwardItem"] = 2100095
	tPlayerGetAchievementTitle_Cont["WorldBeater"]["Attr"] = "0 1 0 0 0 0 0 1"
	
	tPlayerGetAchievementTitle_Cont["WorldBeater"]["Title"] = {2034,6011}

	local tPlayerGetAchievementTitle_log = {}
	tPlayerGetAchievementTitle_log["GetTitle"] = "0,0,0,1,12001256,%d,%d,1"
	tPlayerGetAchievementTitle_log["LogFile"] = "gmlog/action_festival_log"
	-- --新给称号log
	-- tPlayerGetAchievementTitle_log["GetTitle"][1]= "0,0,0,1,12001256,1[1],2003,1"
	-- --延长称号时效log
	-- tPlayerGetAchievementTitle_log["GetTitle"][2]= "0,0,0,1,12001256,1[2],2003,1"
	-- --新给翅膀log
	-- tPlayerGetAchievementTitle_log["GetTitle"][3]= "0,0,0,1,12001256,2[1],6002,1"
	-- --延长翅膀时效log
	-- tPlayerGetAchievementTitle_log["GetTitle"][4]= "0,0,0,1,12001256,2[2],6002,1"
	
	
local tPlayerGetAchievementTitle_Ach = {}
	--妹妹你大胆的往前走成就
	tPlayerGetAchievementTitle_Ach[1] = {}
	tPlayerGetAchievementTitle_Ach[1]["Id"] = 11010
	tPlayerGetAchievementTitle_Ach[1]["Level"] = 70
	tPlayerGetAchievementTitle_Ach[1]["Metempsychosis"] = 1
	
-- 放入外套时调用的函数

function CheckInItemToCoat(nUserId,nFlag)

	local nCoatNum = Get_UserStarLevCoatCount(nFlag,4,nUserId)
	local nTitleType = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][3]
	
	-- 获得一件的成就
	local nCoatNums = Get_UserStarLevCoatCount(nFlag,1,nUserId)
	
	if nCoatNums >= 1 then
		if not User_ChkAchByAchPosition(tPlayerGetAchievementTitle_Cont["AchivementOneCoat"][nFlag],nUserId) then
			User_AddAchByAchPosition(tPlayerGetAchievementTitle_Cont["AchivementOneCoat"][nFlag],nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetAch"],tPlayerGetAchievementTitle_Text["AchivementFlag"][nFlag]),nUserId)
		end
	end	
	
	if nCoatNum >= 5 then
		if not User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["CoatAchTitle"][nFlag]),nUserId)
		end
	end
	
	local nFiveStarCoatNum = Get_UserStarLevCoatCount(nFlag,5,nUserId)
	
	local nTitleType1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][1]
	local nTitleId1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][2]
	local nSaveTime1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][3]
	
	if nFiveStarCoatNum >= 1 then
		if not User_CheckTitle(nTitleType1,nTitleId1,nUserId) then
			User_AwardTitle(nTitleType1,nTitleId1,nSaveTime1,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetWings"],tPlayerGetAchievementTitle_Text["TitleOneCoat"][nFlag]),nUserId)
		end
	end

	
	local nCoatNum = Get_UserStarLevCoatCount(nFlag,1,nUserId)
	
	for i=1,#tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][nFlag] do
		if nCoatNum == tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][nFlag][i][3] then
			if not User_ChkAchByAchPosition(tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][nFlag][i][2],nUserId) then
				User_AddAchByAchPosition(tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][nFlag][i][2],nUserId)
				local nAchNum = tPlayerGetAchievementTitle_Cont["AchivementOtherCoat"][nFlag][i][2]
				User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetAch"],	tPlayerGetAchievementTitle_Text["AchivementCoat"][nAchNum]),nUserId)
			end			
		end
	end

end


tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],CheckInItemToCoat)

-- 取出外套时调用的函数
function CheckOutItemToCoat(nUserId,nFlag)
	--拥有4星及4星以上服装外套5件    “雍容华贵”
	--拥有4星及4星以上坐骑外套5件    “一骑绝尘”
	local nCoatNum = Get_UserStarLevCoatCount(nFlag,4,nUserId)
	local nTitleType = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][3]

	--少于5件则删掉称号。策划说取出外套不做添加称号成就操作。
	if nCoatNum < 5 then
		if User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_DeleteTitle(nTitleType,nTitleId,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["DelTitle"],tPlayerGetAchievementTitle_Text["CoatAchTitle"][nFlag]),nUserId)
		end		
	end
	local nFiveStarCoatNum = Get_UserStarLevCoatCount(nFlag,5,nUserId)
	local nTitleType1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][1]
	local nTitleId1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][2]
	local nSaveTime1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][3]
	
	if nFiveStarCoatNum < 1 then		
		if User_CheckTitle(nTitleType1,nTitleId1,nUserId) then
			User_DeleteTitle(nTitleType1,nTitleId1,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["DelWings"],tPlayerGetAchievementTitle_Text["TitleOneCoat"][nFlag]),nUserId)
		end		
	end
end

tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],CheckOutItemToCoat)


-- 时效外套到期时的处理
function DelUserItemToCoat(nUserId,nFlag)
	--拥有4星及4星以上服装外套5件    “雍容华贵”
	--拥有4星及4星以上坐骑外套5件    “一骑绝尘”
	local nCoatNum = Get_UserStarLevCoatCount(nFlag,4,nUserId)
	local nTitleType = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["CoatAchTitle"][nFlag][3]

	--少于5件则删掉称号。策划说取出外套不做添加称号成就操作。
	if nCoatNum < 5 then
		if User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_DeleteTitle(nTitleType,nTitleId,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["DelTitle"],tPlayerGetAchievementTitle_Text["CoatAchTitle"][nFlag]),nUserId)
		end		
	end
	local nFiveStarCoatNum = Get_UserStarLevCoatCount(nFlag,5,nUserId)
	local nTitleType1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][1]
	local nTitleId1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][2]
	local nSaveTime1 = tPlayerGetAchievementTitle_Cont["TitleOneCoat"][nFlag][3]
	
	if nFiveStarCoatNum < 1 then		
		if User_CheckTitle(nTitleType1,nTitleId1,nUserId) then
			User_DeleteTitle(nTitleType1,nTitleId1,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["DelWings"],tPlayerGetAchievementTitle_Text["TitleOneCoat"][nFlag]),nUserId)
		end		
	end
end

tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],DelUserItemToCoat)

-- 练气成功时调用  四门都达到400分 获得称号
function TrainingVitality(nUserId)
	local nVitaNum = Get_UserFateAttriScore(1,nUserId) + Get_UserFateAttriScore(2,nUserId) + Get_UserFateAttriScore(3,nUserId) + Get_UserFateAttriScore(4,nUserId)
	local nTitleStren = tPlayerGetAchievementTitle_Cont["TitleStren"][1]
	if nVitaNum >= nTitleStren then
		local nTitleType = tPlayerGetAchievementTitle_Cont["Vitality"][1600][1]
		local nTitleId = tPlayerGetAchievementTitle_Cont["Vitality"][1600][2]
		local nSaveTime = tPlayerGetAchievementTitle_Cont["Vitality"][1600][3]
		
		if not User_CheckTitle(nTitleType,nTitleId,nUserId) then		
			User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["Vitality"][1]),nUserId)
		end
	end
end

tProcessTrainingVitality["tFunction"] = tProcessTrainingVitality["tFunction"] or {}
table.insert(tProcessTrainingVitality["tFunction"],TrainingVitality)

-- //修炼自创武功，替换属性后的操作
function ReplaceGongfuValue(nUserId,nFlag)
	local nGF_TotalPower = Get_UserGongfuTotalPowerValue(nUserId)
	local nGF_TotalPowerLimt = tPlayerGetAchievementTitle_Cont["Gongfu"][1][1]
	local nTitleType = tPlayerGetAchievementTitle_Cont["Gongfu"][1][2]
	local nTitleId = tPlayerGetAchievementTitle_Cont["Gongfu"][1][3]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["Gongfu"][1][4]

	if nGF_TotalPower >= nGF_TotalPowerLimt then
		if not User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["Gongfu"][1]),nUserId)
		end
	end
end

tReplaceGongfuValue["tFunction"] = tReplaceGongfuValue["tFunction"] or {}
table.insert(tReplaceGongfuValue["tFunction"],ReplaceGongfuValue)

--//战旗赛结束后的操作
function AfterVexillum()
	local nGuildId = Get_VlmFirstRankSynId()
	local nSynWandId = Get_SynWangId(nGuildId)
	local nTitleType = tPlayerGetAchievementTitle_Cont["TitleSyn"][1][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["TitleSyn"][1][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["TitleSyn"][1][3]
	
	-- 判断是否有称号
	if not User_CheckTitle(nTitleType,nTitleId,nSynWandId) then
		User_AwardTitle(nTitleType,nTitleId,nSaveTime,nSynWandId)
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["TitleSyn"][1]),nSynWandId)
	end
end

tAfterVexillum["tFunction"] = tAfterVexillum["tFunction"] or {}
table.insert(tAfterVexillum["tFunction"],AfterVexillum)

--//跨服战旗赛结束后的操作
function AfterCrossVexillum()
	local nGuildId = Get_CrossVlmFirstRank()
	local nSynWandId = Get_SynWangId(nGuildId)
	local nTitleType = tPlayerGetAchievementTitle_Cont["TitleSyn"][2][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["TitleSyn"][2][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["TitleSyn"][2][3]
	--给称号log只记录玩家ID和帮派ID
	local sLogText = string.format(tPlayerGetAchievementTitle_log["GetTitle"],nSynWandId,nGuildId)
	-- 判断是否有称号,无则添加，有则累加时间
	if not User_CheckTitle(nTitleType,nTitleId,nSynWandId) then
		User_AwardTitle(nTitleType,nTitleId,nSaveTime,nSynWandId)
		
		SaveCustomLog(tPlayerGetAchievementTitle_log["LogFile"],sLogText)
		-- Sys_SaveActionFestivalLog(tPlayerGetAchievementTitle_log["GetTitle"][1])
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["TitleSyn"][2]),nSynWandId)
	else
		User_TitleAddTime(nTitleType,nTitleId,nSaveTime,nSynWandId)
		SaveCustomLog(tPlayerGetAchievementTitle_log["LogFile"],sLogText)
		-- Sys_SaveActionFestivalLog(tPlayerGetAchievementTitle_log["GetTitle"][2])
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["AddTitleTime"],tPlayerGetAchievementTitle_Text["CrossVexillumWings"][2],tPlayerGetAchievementTitle_Text["SysMsg"][nSaveTime]),nSynWandId)
	end
	
	-- 判断帮主是否有翅膀，无则添加，有则累加时间
	local nTitleType1 = tPlayerGetAchievementTitle_Cont["CrossVexillumWings"][1][1]
	local nTitleId1 = tPlayerGetAchievementTitle_Cont["CrossVexillumWings"][1][2]
	-- local nSaveTime1 = tPlayerGetAchievementTitle_Cont["CrossVexillumWings"][1][3]
	
	if not User_CheckTitle(nTitleType1,nTitleId1,nSynWandId) then
		User_AwardTitle(nTitleType1,nTitleId1,nSaveTime,nSynWandId)
		SaveCustomLog(tPlayerGetAchievementTitle_log["LogFile"],sLogText)
		-- Sys_SaveActionFestivalLog(tPlayerGetAchievementTitle_log["GetTitle"][3])
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetWings"],tPlayerGetAchievementTitle_Text["CrossVexillumWings"][1]),nSynWandId)
	else
		User_TitleAddTime(nTitleType1,nTitleId1,nSaveTime,nSynWandId)
		SaveCustomLog(tPlayerGetAchievementTitle_log["LogFile"],sLogText)
		-- Sys_SaveActionFestivalLog(tPlayerGetAchievementTitle_log["GetTitle"][4])
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["AddWingsTime"],tPlayerGetAchievementTitle_Text["CrossVexillumWings"][1],tPlayerGetAchievementTitle_Text["SysMsg"][nSaveTime]),nSynWandId)
	end
end

tAfterCrossVexillum["tFunction"] = tAfterCrossVexillum["tFunction"] or {}
table.insert(tAfterCrossVexillum["tFunction"],AfterCrossVexillum)

-- 玩家每次获得成就，调用LUA接口UserAchivementCount，参数传入玩家当前拥有的成就数量。
function AchivementCount(nAchivementNum,nUserId)
	-- local nUserId = Get_UserId() 
	--成就超过320个
	local nAchNum = tPlayerGetAchievementTitle_Cont["Achivement"][1][1]
	local nTitleType = tPlayerGetAchievementTitle_Cont["Achivement"][1][2]
	local nTitleId = tPlayerGetAchievementTitle_Cont["Achivement"][1][3]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["Achivement"][1][4]
	if nAchivementNum >= nAchNum then
		if not User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["Achivement"][1]),nUserId)
		end
	end
end

tAchivementCount["tFunction"] = tAchivementCount["tFunction"] or {}
table.insert(tAchivementCount["tFunction"],AchivementCount)



function ElitePKChampionshipWings()
	local nTitleType = tPlayerGetAchievementTitle_Cont["EliteWings"][1][1]
	local nTitleId = tPlayerGetAchievementTitle_Cont["EliteWings"][1][2]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["EliteWings"][1][3]
	local nUserId = Get_UserId()
	
	if not User_CheckTitle(nTitleType,nTitleId,nUserId) then
		User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetWings"],tPlayerGetAchievementTitle_Text["EliteWings"][1]),nUserId)
	else
		User_TitleAddTime(nTitleType,nTitleId,nSaveTime,nUserId)
		User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["AddWingsTime"],tPlayerGetAchievementTitle_Text["EliteWings"][1],tPlayerGetAchievementTitle_Text["SysMsg"][nSaveTime]),nUserId)
	end
end


--添加上线检测练功是否达到81000给称号
function PlayerAddTitle()
	local nGF_TotalPower = Get_UserGongfuTotalPowerValue()
	local nGF_TotalPowerLimt = tPlayerGetAchievementTitle_Cont["Gongfu"][1][1]
	local nTitleType = tPlayerGetAchievementTitle_Cont["Gongfu"][1][2]
	local nTitleId = tPlayerGetAchievementTitle_Cont["Gongfu"][1][3]
	local nSaveTime = tPlayerGetAchievementTitle_Cont["Gongfu"][1][4]
	local nAchId = tPlayerGetAchievementTitle_Ach[1]["Id"]
	local nLevel = tPlayerGetAchievementTitle_Ach[1]["Level"]
	local nMete = tPlayerGetAchievementTitle_Ach[1]["Metempsychosis"]
	local nUserId = Get_UserId()

	if nGF_TotalPower >= nGF_TotalPowerLimt then
		if not User_CheckTitle(nTitleType,nTitleId,nUserId) then
			User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
			User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["GetTitle"],tPlayerGetAchievementTitle_Text["Gongfu"][1]),nUserId)
		end
	end
	--玩家上线给妹妹你大胆的向前走成就
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		if not User_ChkAchByAchPosition(nAchId,nUserId)then
			User_AddAchByAchPosition(nAchId,nUserId)
		end
	end
end

--新增“天下无敌称号和御天翅膀”获得     97280401
function PlayerGetAchievementTitle_WorldBeater()
	--判断玩家是否有12座王者纪念杯
	local nDelItem = tPlayerGetAchievementTitle_Cont["WorldBeater"]["DelItem"]
	local nNum = tPlayerGetAchievementTitle_Cont["WorldBeater"]["DelItemNum"]
	local nAward = tPlayerGetAchievementTitle_Cont["WorldBeater"]["AwardItem"]
	local sAttr = tPlayerGetAchievementTitle_Cont["WorldBeater"]["Attr"]
	
	if not Item_ChkMulItem(nDelItem,nDelItem,nNum) then
		local str = tPlayerGetAchievementTitle_Text["SysMsg"]["WorldBeaterNoItem"]
		local nDelItemName = Get_ItemtypeName(nDelItem)
		local nAwardName = Get_ItemtypeName(nAward)
		User_TalkChannel2005(string.format(str,nNum,nDelItemName,nAwardName))
		return
	end
	
	if not Item_DelMulItem(nDelItem,nDelItem,nNum) then
		return
	end
	
	if not Item_AddNewItem(nAward,sAttr) then
		return
	end
	
	User_TalkChannel2005(string.format(tPlayerGetAchievementTitle_Text["SysMsg"]["WorldBeaterGetItem"],Get_ItemtypeName(nAward)))
	
	local nUserId = Get_UserId()
	--判断玩家是否拥有称号
	for k,v in pairs(tPlayerGetAchievementTitle_Cont["WorldBeater"]["Title"]) do 
		if not User_CheckTitle(v,v,nUserId) then
			User_AwardTitle(v,v,0,nUserId)
			local sTitleName = tPlayerGetAchievementTitle_Text["SysMsg"]["WorldBeaterTitle"][v][1]	
			local sTitleType = tPlayerGetAchievementTitle_Text["SysMsg"]["WorldBeaterTitle"][v][2]
			local str = tPlayerGetAchievementTitle_Text["SysMsg"]["WorldBeaterGetTitle"]
			User_TalkChannel2005(string.format(str,sTitleName,sTitleType))	
		end
	end
end


table.insert(tSystem_PlayLogin_Func,PlayerAddTitle)