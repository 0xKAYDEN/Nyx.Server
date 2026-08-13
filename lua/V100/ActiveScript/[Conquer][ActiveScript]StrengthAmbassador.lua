--------------------------------------------------------------------------------
---Name:160107[英文征服][活动脚本]练气高分奖励NPC增加(01.14-01.31)
--Creator: 	陈莺
--Created:	2016-01-07
--------------------------------------------------------------------------------
--npc 
-- 19071  炼气大使

--命名规范
--StrengthAmbassador_

----------------------------------------npc逻辑部分-------------------------------------------
function StrengthAmbassador_LoginWeb()
	User_SendWebPage(tStrengthAmbassador_Text[19071]["Website"])

end
--------------------------------------npc模板----------------------------------------------
--炼气大使 19071
---NPC头像
tNpcFace[3971] = 1

tNpcGossip[19071] = tNpcGossip[19071] or DefaultNpc:new{}
tNpcGossip[19071]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19071]["Text1-1"] = {111,112,113,114}
tNpcGossip[19071]["Text111"] = tStrengthAmbassador_Text[19071]["Text111"]
tNpcGossip[19071]["Text112"] = tStrengthAmbassador_Text[19071]["Text112"]
tNpcGossip[19071]["Text113"] = tStrengthAmbassador_Text[19071]["Text113"]
tNpcGossip[19071]["Text114"] = tStrengthAmbassador_Text[19071]["Text114"]
tNpcGossip[19071]["tOption1-1"] = {1,2}
tNpcGossip[19071]["Option1"] = tStrengthAmbassador_Text[19071]["Option1"]
tNpcGossip[19071]["OptionFunc1"] = "StrengthAmbassador_LoginWeb"
tNpcGossip[19071]["Option2"] = tStrengthAmbassador_Text[19071]["Option2"]
