------------------------------------------------------------------------------------
--Name:		160623[英文征服][活动脚本]怀旧服千锤百炼玩家开通法宝调查
--Creator: 	刘益辉
--Created:	2016/06/23
------------------------------------------------------------------------------------

-- 命名前缀
-- TalisInvestigator_
local TalisInvestigator ={}
	TalisInvestigator["sword"]={}
	TalisInvestigator["sword"][1] = {0,99}
	TalisInvestigator["sword"][2] = {100,200}
	TalisInvestigator["sword"][3] = {201,260}
	TalisInvestigator["sword"][4] = {261,999}
	
	TalisInvestigator["Stc"] ={}
	TalisInvestigator["Stc"]["EventType"] = 146
	TalisInvestigator["Stc"]["DataType"] = 50
	
	TalisInvestigator["Log"]={} 
	TalisInvestigator["Log"][1]="0,0,0,0,12000439,1,0,0"
	TalisInvestigator["Log"][2]="0,0,0,0,12000439,2,0,0"
function TalisInvestigator_BefInvestigate(nNpcId,nNum)
	local nBattleLevel = Get_UserBattleLevel()
	
	--已接受调查
	local nEventType = TalisInvestigator["Stc"]["EventType"]
	local nDataType = TalisInvestigator["Stc"]["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">=",1) then
		 LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--战斗力不符
	if  nBattleLevel < TalisInvestigator["sword"][nNum][1] or  nBattleLevel > TalisInvestigator["sword"][nNum][2] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return 
	end


	LinkNpcGossipFunc_New(nNpcId,"3-3")


end

function TalisInvestigator_Investigate(nNum)

	local nEventType = TalisInvestigator["Stc"]["EventType"]
	local nDataType = TalisInvestigator["Stc"]["DataType"]
	Task_SetStatistic(nEventType,nDataType,1,1)
	User_EffectAdd("self","zf2-e281")
	Sys_SaveActionFestivalLog(TalisInvestigator["Log"][nNum])

end

-------------------------------------------npc模块
--新法宝调查员
tNpcFace[4232] = 1
tNpcGossip[11146] = tNpcGossip[11146] or DefaultNpc:new{}
tNpcGossip[11146]["OptionHidden"] = 1

tNpcGossip[11146]["Text1-1"] = {111,112,113}
tNpcGossip[11146]["Text111"] = tTalisInvestigator_Text[11146]["Text111"]
tNpcGossip[11146]["Text112"] = tTalisInvestigator_Text[11146]["Text112"]
tNpcGossip[11146]["Text113"] = tTalisInvestigator_Text[11146]["Text113"]
tNpcGossip[11146]["tOption1-1"] = {111,112}

tNpcGossip[11146]["Option111"] = tTalisInvestigator_Text[11146]["Option111"]
tNpcGossip[11146]["OptionPoint111"] = "2-1"
tNpcGossip[11146]["Option112"] = tTalisInvestigator_Text[11146]["Option112"]

tNpcGossip[11146]["Text2-1"] = {211,212}
tNpcGossip[11146]["Text211"] = tTalisInvestigator_Text[11146]["Text211"]
tNpcGossip[11146]["Text212"] = tTalisInvestigator_Text[11146]["Text212"]
tNpcGossip[11146]["tOption2-1"] = {215,211,212,213,214}
tNpcGossip[11146]["Option211"] = tTalisInvestigator_Text[11146]["Option211"]
tNpcGossip[11146]["OptionFunc211"] = "TalisInvestigator_BefInvestigate</N>11146</N>2"
tNpcGossip[11146]["Option212"] = tTalisInvestigator_Text[11146]["Option212"]
tNpcGossip[11146]["OptionFunc212"] = "TalisInvestigator_BefInvestigate</N>11146</N>3"
tNpcGossip[11146]["Option213"] = tTalisInvestigator_Text[11146]["Option213"]
tNpcGossip[11146]["OptionFunc213"] = "TalisInvestigator_BefInvestigate</N>11146</N>4"
tNpcGossip[11146]["Option214"] = tTalisInvestigator_Text[11146]["Option214"]
tNpcGossip[11146]["Option215"] = tTalisInvestigator_Text[11146]["Option215"]
tNpcGossip[11146]["OptionFunc215"] = "TalisInvestigator_BefInvestigate</N>11146</N>1"

tNpcGossip[11146]["Text3-1"] = {311}
tNpcGossip[11146]["Text311"] = tTalisInvestigator_Text[11146]["Text311"]
tNpcGossip[11146]["tOption3-1"] = {311}
tNpcGossip[11146]["Option311"] = tTalisInvestigator_Text[11146]["Option311"]
tNpcGossip[11146]["OptionPoint311"] = "2-1"

tNpcGossip[11146]["Text3-2"] = {321}
tNpcGossip[11146]["Text321"] = tTalisInvestigator_Text[11146]["Text321"]
tNpcGossip[11146]["tOption3-2"] = {321}
tNpcGossip[11146]["Option321"] = tTalisInvestigator_Text[11146]["Option321"]

tNpcGossip[11146]["Text3-3"] = {331,332,333}
tNpcGossip[11146]["Text331"] = tTalisInvestigator_Text[11146]["Text331"]
tNpcGossip[11146]["Text332"] = tTalisInvestigator_Text[11146]["Text332"]
tNpcGossip[11146]["Text333"] = tTalisInvestigator_Text[11146]["Text333"]
tNpcGossip[11146]["tOption3-3"] = {331,332}
tNpcGossip[11146]["Option331"] = tTalisInvestigator_Text[11146]["Option331"]
tNpcGossip[11146]["OptionFunc331"] = "TalisInvestigator_Investigate</N>1"
tNpcGossip[11146]["Option332"] = tTalisInvestigator_Text[11146]["Option332"]
tNpcGossip[11146]["OptionFunc332"] = "TalisInvestigator_Investigate</N>2"

