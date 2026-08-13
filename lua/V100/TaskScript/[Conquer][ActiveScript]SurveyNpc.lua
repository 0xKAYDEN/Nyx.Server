--------------------------------------------------------------------------------
---Name:160301[英文征服][任务脚本]制作法语玩家问卷调查NPC(只刷Siruis_EU)
--Creator: 	陈莺
--Created:	2016-03-01
--------------------------------------------------------------------------------
--npc 
-- 19214  

--命名规范
--SurveyNpc_

----------------------------------------npc逻辑部分-------------------------------------------
function SurveyNpc_LoginWeb()
	User_SendWebPage(tSurveyNpc_Text[19214]["Website"])

end
--------------------------------------npc模板----------------------------------------------
-- 19214
---NPC头像
tNpcFace[4068] = 1

tNpcGossip[19214] = tNpcGossip[19214] or DefaultNpc:new{}
tNpcGossip[19214]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19214]["Text1-1"] = {111,112}
tNpcGossip[19214]["Text111"] = tSurveyNpc_Text[19214]["Text111"]
tNpcGossip[19214]["Text112"] = tSurveyNpc_Text[19214]["Text112"]
tNpcGossip[19214]["tOption1-1"] = {1,2}
tNpcGossip[19214]["Option1"] = tSurveyNpc_Text[19214]["Option1"]
tNpcGossip[19214]["OptionFunc1"] = "SurveyNpc_LoginWeb"
tNpcGossip[19214]["Option2"] = tSurveyNpc_Text[19214]["Option2"]
