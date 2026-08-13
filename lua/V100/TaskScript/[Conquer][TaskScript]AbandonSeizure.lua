------------------------------------------------------------------------------------
--Name:		190625[简体征服][任务脚本]玩家放弃扣押装备需求
--Creator: 	cy
--Created:	2019/06/25
------------------------------------------------------------------------------------








function AbandonSeizure_GiveUp()
	local nUserId = Get_UserId()
	if not User_CheckPkItem(1,nUserId) then
		User_TalkChannel2005(tAbandonSeizure_Text[4542]["NoNeed"],nUserId)
		return
	end
	if User_GiveUpDetainAllItem(nUserId) then
		User_TalkChannel2005(tAbandonSeizure_Text[4542]["Talk"],nUserId)
	end
end











-------------------------------------npc模板----------------------------------------------
----战场先锋官
tNpcFace[873] = 102
----战场先锋官
tNpcGossip[4542] = tNpcGossip[4542] or DefaultNpc:new{}
tNpcGossip[4542]["OptionHidden"] = 1
tNpcGossip[4542]["Text1-1"] = {111}
tNpcGossip[4542]["Text111"] = tAbandonSeizure_Text[4542]["Text111"]
tNpcGossip[4542]["tOption1-1"] = {111}
tNpcGossip[4542]["Option111"] = tAbandonSeizure_Text[4542]["Option111"]
tNpcGossip[4542]["OptionFunc111"] = "AbandonSeizure_GiveUp"  

