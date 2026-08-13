------------------------------------------------------------------------------------
--Name:		190625[简体征服][任务脚本]上古神器--功能开启引导
--Creator: 	傅伟龙
--Created:	2019/06/25
------------------------------------------------------------------------------------
--任务需求：


--命名规范：ArtifactFunctionGuide_

--------------------------------------数据部分配置-------------------------------------
local tArtifactFunctionGuide_Cont = {}
	tArtifactFunctionGuide_Cont["ActTime"] = tActivityTime["ArtifactFunctionGuide"]["ActTime"]

	
	tArtifactFunctionGuide_Cont["Level"] = 110
	tArtifactFunctionGuide_Cont["Mete"] = 1
	
--网页
local tArtifactFunctionGuide_Web = {}
	tArtifactFunctionGuide_Web["Web"] = "https://co.99.com/guide/event/2019/relicinspiration/"

local tArtifactFunctionGuide_Stc = {}
tArtifactFunctionGuide_Stc[1] ={}
tArtifactFunctionGuide_Stc[1]["EventType"] = 199
tArtifactFunctionGuide_Stc[1]["DataType"] = 94
	
--------------------------------------npc逻辑配置-------------------------------------------

--打开页面
function ArtifactFunctionGuide_OpenWeb(nNpcId)
	local nUserId = Get_UserId()
	User_SendWebDialog(tArtifactFunctionGuide_Web["Web"],nUserId)
end

--功能引导
function ArtifactFunctionGuide_OpenGuide()
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tArtifactFunctionGuide_Cont["ActTime"]) then
		Sys_MsgBox(tArtifactFunctionGuide_Text["TimeOut"])
		return
	end
	
	local nLevel = tArtifactFunctionGuide_Cont["Level"]
	local nMete = tArtifactFunctionGuide_Cont["Mete"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		Sys_MsgBox(tArtifactFunctionGuide_Text["NoLev"])
		return 
	end
	
	local nEvent = tArtifactFunctionGuide_Stc[1]["EventType"]
	local nType = tArtifactFunctionGuide_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		Sys_MsgBox(tArtifactFunctionGuide_Text["Guide"])
		return
	end
	
	if not User_CheckLeftSpace(2) then
		User_TalkChannel2005(tArtifactFunctionGuide_Text["NoSapce"])
		return
	end
	
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	for i = 1, 2 do
		local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,1,0,0,0,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		User_TalkChannel2005(string.format(tArtifactFunctionGuide_Text["MsgRewardItem"],sItemName))
	end
	
	User_NotifyClientStartGuide(1,nUserId)
end


--------------------------------------npc模块配置-------------------------------------------

tNpcFace[6418] = 28
tNpcGossip[24468] = tNpcGossip[24468] or DefaultNpc:new{}
tNpcGossip[24468]["OptionHidden"] = 1
tNpcGossip[24468]["DialogueText"] = tArtifactFunctionGuide_Text[24468]

tNpcGossip[24468]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24468]["tOption1-1"] = {111,112}
tNpcGossip[24468]["OptionFunc111"] = "ArtifactFunctionGuide_OpenGuide</N>24468"
tNpcGossip[24468]["OptionFunc112"] = "ArtifactFunctionGuide_OpenWeb</N>24468"







