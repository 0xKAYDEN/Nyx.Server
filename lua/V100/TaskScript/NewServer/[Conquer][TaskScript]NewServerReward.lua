----------------------------------------------------------------------------------------
--Name:		160316[简体征服][任务脚本]新服狂欢活动制作之新服任务狂欢
--Purpose:		新服狂欢活动制作之新服任务狂欢
--Creator:		张磊
--Created:		2016/03/16
----------------------------------------------------------------------------------------

--命名规则
--NewServerReward_

----------------------------------------------------------------------------------------
--掩码说明：

----动态码：
--51131：   data1 表示活动时间是否开启   == 1 表示活动时间开启

----------------------------------------------------------------------------------------



local tNewServerReward_Cont = {}

tNewServerReward_Cont["Strength"] = 500
tNewServerReward_Cont["Global"] = 51131

tNewServerReward_Cont["Level"] = G_User_MaxLev
tNewServerReward_Cont["Space"] = 2

--3008906  清风拂面礼盒
tNewServerReward_Cont[3008906] = {}
tNewServerReward_Cont[3008906][1] = 300
tNewServerReward_Cont[3008906][2] = 100
tNewServerReward_Cont[3008906][3] = 3
tNewServerReward_Cont[3008906][4] = 3302782

--3008907  枫林尽染礼盒
tNewServerReward_Cont[3008907] = {}
tNewServerReward_Cont[3008907][1] = 600
tNewServerReward_Cont[3008907][2] = 200
tNewServerReward_Cont[3008907][3] = 6
tNewServerReward_Cont[3008907][4] = 3302782

--3008908  斩却情丝礼盒
tNewServerReward_Cont[3008908] = {}
tNewServerReward_Cont[3008908][1] = 900
tNewServerReward_Cont[3008908][2] = 300
tNewServerReward_Cont[3008908][3] = 9
tNewServerReward_Cont[3008908][4] = 3302782

--3008909  大漠孤烟礼盒
tNewServerReward_Cont[3008909] = {}
tNewServerReward_Cont[3008909][1] = 1200
tNewServerReward_Cont[3008909][2] = 400
tNewServerReward_Cont[3008909][3] = 12
tNewServerReward_Cont[3008909][4] = 3302782

--3008910  云水芦花礼盒
tNewServerReward_Cont[3008910] = {}
tNewServerReward_Cont[3008910][1] = 1500
tNewServerReward_Cont[3008910][2] = 500
tNewServerReward_Cont[3008910][3] = 15
tNewServerReward_Cont[3008910][4] = 3302782

--3008911  突飞猛进礼包
tNewServerReward_Cont[3008911] = {}
tNewServerReward_Cont[3008911][1] = {Item_AddNewItem,730003,"0 1 3","0,0,3008911,1,18000096,2,730003,1"}
tNewServerReward_Cont[3008911][2] = {Item_AddNewItem,1088000,"0 1 3","0,0,3008911,1,18000096,2,1088000,1"}
tNewServerReward_Cont[3008911][3] = {User_AddStrengthValue,200,"0,0,3008911,1,18000096,2,12,200"}


--3008912  日新月异礼包
tNewServerReward_Cont[3008912] = {}
tNewServerReward_Cont[3008912][1] = 100
tNewServerReward_Cont[3008912][2] = {3002926,"0 3 0"}
tNewServerReward_Cont[3008912][3] = {3002030,"0 1 0"}

tNewServerReward_Cont["Npc"] = {}
tNewServerReward_Cont["Npc"]["Mapid"] = 1002
tNewServerReward_Cont["Npc"]["X"] = 368
tNewServerReward_Cont["Npc"]["Y"] = 451


local tNewServerReward_Log = {}

--活跃礼包LOG
tNewServerReward_Log["OpenPack"] = "0,0,%d,1,18000096,2,12,500"

-- 其他片区礼包
tNewServerReward_Log["RegionPack"] = "0,0,%d,1,18000096,2,4[6][5],%d[%d][%d][%d]"
tNewServerReward_Log["RegionPack_1"] = "0,0,%d,1,18000096,2,6[5],%d[%d][%d]"
-- 日新月异礼包
tNewServerReward_Log["DailyPack"] = "0,0,%d,1,18000096,2,6[3002926][3002030],100[3][1]"

local tNewServerReward_Effect = {}
tNewServerReward_Effect["Self"] = "self"
tNewServerReward_Effect["Effect"] = "lottery"



-- 活跃度礼包打开
function NewServerReward_ItemOpen(nItemId)
	if nItemId == 3005064 then 
		--内嵌世界版图探索活动
		local nUserId = Get_UserId()
		MapExploration_AddStc(21,nUserId)
	end 
	local nGlobal = tNewServerReward_Cont["Global"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobal)
	local nAddStrengthValue = tNewServerReward_Cont["Strength"]
	local sLog = tNewServerReward_Log["OpenPack"]
	
		--1月神纹月 活跃度礼包打开额外获得
	JanRuneImproveMon_ActivePackReward()

	if nGlobalData <= 0 then
		return
	end

	-- 给奖励
	User_AddStrengthValue(nAddStrengthValue)
	Sys_SaveActionTaskLog(string.format(sLog,nItemId))
	Sys_MsgBox(tNewServerReward_Text["GetReward"])

end

function NewServerReward_OpenRegionPack(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nLevel = tNewServerReward_Cont["Level"]
	local nUserLevel = Get_UserLevel()
	local sLog = ""
	local sMsg = ""
	
	local nExp = tNewServerReward_Cont[nItemId][1]
	local nCul = tNewServerReward_Cont[nItemId][2]
	local nBless = tNewServerReward_Cont[nItemId][3]
	local nNewItemId = tNewServerReward_Cont[nItemId][4]
	local sNewName = Get_ItemtypeName(nNewItemId)
	
	if nUserLevel >= nLevel then
		Item_AddNewItem(nNewItemId,"0 1")
		User_AddCultivation(nCul)
		User_AddBless(nBless*24)
		slog = string.format(tNewServerReward_Log["RegionPack_1"],nItemId,nNewItemId,nCul,nBless*24)
		sMsg = string.format(tNewServerReward_Text["RegionReward_1"],sNewName,nCul,nBless)
	else
		Item_AddNewItem(nNewItemId,"0 1")
		User_AddExpTime(nExp)
		User_AddCultivation(nCul)
		User_AddBless(nBless*24)	
		slog = string.format(tNewServerReward_Log["RegionPack"],nExp,nItemId,nNewItemId,nCul,nBless*24)
		sMsg = string.format(tNewServerReward_Text["RegionReward"],sNewName,nExp,nCul,nBless)	
	end
	
	Sys_SaveActionTaskLog(sLog)
	Sys_MsgBox(sMsg)
	User_EffectAdd(tNewServerReward_Effect["Self"],tNewServerReward_Effect["Effect"])
end

function NewServerReward_TaskDaily(nItemId)
	local nSpace = tNewServerReward_Cont["Space"]
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tNewServerReward_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给奖励
		User_AddCultivation(tNewServerReward_Cont[nItemId][1])
		Item_AddNewItem(tNewServerReward_Cont[nItemId][2][1],tNewServerReward_Cont[nItemId][2][2])
		Item_AddNewItem(tNewServerReward_Cont[nItemId][3][1],tNewServerReward_Cont[nItemId][3][2])
		Sys_SaveActionTaskLog(string.format(tNewServerReward_Log["DailyPack"],nItemId))
		Sys_MsgBox(tNewServerReward_Text["DailyReward"])
		User_EffectAdd(tNewServerReward_Effect["Self"],tNewServerReward_Effect["Effect"])
	end
end

--
function NewServerReward_EqGift(nItemId,nFlag)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		
		if nFlag == 3 then
			local fFunc = tNewServerReward_Cont[nItemId][nFlag][1]
			fFunc(tNewServerReward_Cont[nItemId][nFlag][2])
			Sys_SaveActionTaskLog(tNewServerReward_Cont[nItemId][nFlag][3])
			Sys_MsgBox(tNewServerReward_Text["Msg"][tNewServerReward_Cont[nItemId][nFlag][2]])
		else
			local fFunc = tNewServerReward_Cont[nItemId][nFlag][1]
			fFunc(tNewServerReward_Cont[nItemId][nFlag][2],tNewServerReward_Cont[nItemId][nFlag][3])
			Sys_SaveActionTaskLog(tNewServerReward_Cont[nItemId][nFlag][4])
			Sys_MsgBox(tNewServerReward_Text["Msg"][tNewServerReward_Cont[nItemId][nFlag][2]])
		end
		User_EffectAdd(tNewServerReward_Effect["Self"],tNewServerReward_Effect["Effect"])
	end
end

--寻路
function NewServerReward_FindNpc()
	
	Sys_GotoSomeWhere(tNewServerReward_Cont["Npc"]["X"],tNewServerReward_Cont["Npc"]["Y"],tNewServerReward_Cont["Npc"]["Mapid"])
end

-------------------------------------------------------------------NPC模版
tNpcFace[4078] = 5
tNpcGossip[19227] = tNpcGossip[19227] or DefaultNpc:new{}
tNpcGossip[19227]["OptionHidden"] = 1

tNpcGossip[19227]["Text1-1"] = {111,112,113}
tNpcGossip[19227]["Text111"] = tNewServerReward_Text[19227]["Text111"]
tNpcGossip[19227]["Text112"] = tNewServerReward_Text[19227]["Text112"]
tNpcGossip[19227]["Text113"] = tNewServerReward_Text[19227]["Text113"]
tNpcGossip[19227]["tOption1-1"] = {1,2,3,4}


tNpcGossip[19227]["Option1"] = tNewServerReward_Text[19227]["Option1"]
tNpcGossip[19227]["OptionPoint1"] = "2-1"
tNpcGossip[19227]["Option2"] = tNewServerReward_Text[19227]["Option2"]
tNpcGossip[19227]["OptionPoint2"] = "5-1"
tNpcGossip[19227]["Option3"] = tNewServerReward_Text[19227]["Option3"]
tNpcGossip[19227]["OptionPoint3"] = "6-1"
tNpcGossip[19227]["Option4"] = tNewServerReward_Text[19227]["Option4"]

--【了解全新礼包】
tNpcGossip[19227]["Text2-1"] = {211,212}
tNpcGossip[19227]["Text211"] = tNewServerReward_Text[19227]["Text211"]
tNpcGossip[19227]["Text212"] = tNewServerReward_Text[19227]["Text212"]
tNpcGossip[19227]["tOption2-1"] = {5,6,7,8}
tNpcGossip[19227]["Option5"] = tNewServerReward_Text[19227]["Option5"]
tNpcGossip[19227]["OptionPoint5"] = "3-1"
tNpcGossip[19227]["Option6"] = tNewServerReward_Text[19227]["Option6"]
tNpcGossip[19227]["OptionPoint6"] = "4-1"
tNpcGossip[19227]["Option7"] = tNewServerReward_Text[19227]["Option7"]
tNpcGossip[19227]["OptionPoint7"] = "7-1"
tNpcGossip[19227]["Option8"] = tNewServerReward_Text[19227]["Option8"]
tNpcGossip[19227]["OptionPoint8"] = "1-1"

--了解片区任务礼包
tNpcGossip[19227]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[19227]["Text311"] = tNewServerReward_Text[19227]["Text311"]
tNpcGossip[19227]["Text312"] = tNewServerReward_Text[19227]["Text312"]
tNpcGossip[19227]["Text313"] = tNewServerReward_Text[19227]["Text313"]
tNpcGossip[19227]["Text314"] = tNewServerReward_Text[19227]["Text314"]
tNpcGossip[19227]["Text315"] = tNewServerReward_Text[19227]["Text315"]
tNpcGossip[19227]["Text316"] = tNewServerReward_Text[19227]["Text316"]
tNpcGossip[19227]["tOption3-1"] = {9,10}
tNpcGossip[19227]["Option9"] = tNewServerReward_Text[19227]["Option9"]
tNpcGossip[19227]["OptionPoint9"] = "2-1"
tNpcGossip[19227]["Option10"] = tNewServerReward_Text[19227]["Option10"]

--了解装备馈赠任务礼包
tNpcGossip[19227]["Text4-1"] = {411,412}
tNpcGossip[19227]["Text411"] = tNewServerReward_Text[19227]["Text411"]
tNpcGossip[19227]["Text412"] = tNewServerReward_Text[19227]["Text412"]
tNpcGossip[19227]["tOption4-1"] = {9,10}

--了解全新活动
tNpcGossip[19227]["Text5-1"] = {511,512}
tNpcGossip[19227]["Text511"] = tNewServerReward_Text[19227]["Text511"]
tNpcGossip[19227]["Text512"] = tNewServerReward_Text[19227]["Text512"]
tNpcGossip[19227]["tOption5-1"] = {11,12}
tNpcGossip[19227]["Option11"] = tNewServerReward_Text[19227]["Option11"]
tNpcGossip[19227]["OptionFunc11"]= "NewServerReward_FindNpc"
tNpcGossip[19227]["Option12"] = tNewServerReward_Text[19227]["Option12"]
tNpcGossip[19227]["OptionPoint12"] = "1-1"

--【了解活动升级】
tNpcGossip[19227]["Text6-1"] = {611,612,613,614,615,616,617,618,619}
tNpcGossip[19227]["Text611"] = tNewServerReward_Text[19227]["Text611"]
tNpcGossip[19227]["Text612"] = tNewServerReward_Text[19227]["Text612"]
tNpcGossip[19227]["Text613"] = tNewServerReward_Text[19227]["Text613"]
tNpcGossip[19227]["Text614"] = tNewServerReward_Text[19227]["Text614"]
tNpcGossip[19227]["Text615"] = tNewServerReward_Text[19227]["Text615"]
tNpcGossip[19227]["Text616"] = tNewServerReward_Text[19227]["Text616"]
tNpcGossip[19227]["Text617"] = tNewServerReward_Text[19227]["Text617"]
tNpcGossip[19227]["Text618"] = tNewServerReward_Text[19227]["Text618"]
tNpcGossip[19227]["Text619"] = tNewServerReward_Text[19227]["Text619"]
tNpcGossip[19227]["tOption6-1"] = {13,14}
tNpcGossip[19227]["Option13"] = tNewServerReward_Text[19227]["Option13"]
tNpcGossip[19227]["OptionPoint13"] = "1-1"
tNpcGossip[19227]["Option14"] = tNewServerReward_Text[19227]["Option14"]

--了解日常任务礼包
tNpcGossip[19227]["Text7-1"] = {711,712}
tNpcGossip[19227]["Text711"] = tNewServerReward_Text[19227]["Text711"]
tNpcGossip[19227]["Text712"] = tNewServerReward_Text[19227]["Text712"]
tNpcGossip[19227]["tOption7-1"] = {15,16}
tNpcGossip[19227]["Option15"] = tNewServerReward_Text[19227]["Option15"]
tNpcGossip[19227]["OptionPoint15"] = "2-1"
tNpcGossip[19227]["Option16"] = tNewServerReward_Text[19227]["Option16"]

-------------------------------------------------------------------物品模版
tItem[3008911] = {}
tItem[3008911]["Text1-1"] = {111}
tItem[3008911]["Text111"] = tNewServerReward_Text[3008911]["Text111"]
tItem[3008911]["tOption1-1"] = {1,2,3}
tItem[3008911]["Option1"] = tNewServerReward_Text[3008911]["Option1"]
tItem[3008911]["OptionFunc1"] = "NewServerReward_EqGift</N>3008911</N>1"
tItem[3008911]["Option2"] = tNewServerReward_Text[3008911]["Option2"]
tItem[3008911]["OptionFunc2"] = "NewServerReward_EqGift</N>3008911</N>2"
tItem[3008911]["Option3"] = tNewServerReward_Text[3008911]["Option3"]
tItem[3008911]["OptionFunc3"] = "NewServerReward_EqGift</N>3008911</N>3"



-- 3008906	清风拂面礼盒
tItem[3008906] = tItem[3008906] or {}
tItem[3008906]["Function"] = function(nItemId,sItemName)
	NewServerReward_OpenRegionPack(nItemId)
end

-- 3008907	枫林尽染礼盒
tItem[3008907] = tItem[3008907] or {}
tItem[3008907]["Function"] = function(nItemId,sItemName)
	NewServerReward_OpenRegionPack(nItemId)
end

-- 3008908	斩却情丝礼盒
tItem[3008908] = tItem[3008908] or {}
tItem[3008908]["Function"] = function(nItemId,sItemName)
	NewServerReward_OpenRegionPack(nItemId)
end

-- 3008909	大漠孤烟礼盒
tItem[3008909] = tItem[3008909] or {}
tItem[3008909]["Function"] = function(nItemId,sItemName)
	NewServerReward_OpenRegionPack(nItemId)
end

-- 3008910	云水芦花礼盒
tItem[3008910] = tItem[3008910] or {}
tItem[3008910]["Function"] = function(nItemId,sItemName)
	NewServerReward_OpenRegionPack(nItemId)
end


-- 3008912	日新月异礼包
tItem[3008912] = tItem[3008912] or {}
tItem[3008912]["Function"] = function(nItemId,sItemName)
	NewServerReward_TaskDaily(nItemId)
end
