------------------------------------------------------------------------------------
--Name:			[口袋征服][活动脚本]隐私政策NPC制作
--Creator: 		严振飞
--Created:		2018/05/23
------------------------------------------------------------------------------------
--命名前缀
--PolicyNpc_




-- 上线弹开隐私政策：
function PolicyNpc_OnLine()
	local nUserId = Get_UserId()
	
	-- 判断是否弹过
	if Task_ChkStcValue(177,28,">=",1,nUserId) then
		return
	end
	
	Task_SetStatistic(177,28,1,1,nUserId)
	PolicyNpc_OnLineSendWeb()
end

function PolicyNpc_OnLineSendWeb()
	User_SendWebDialog("http://co.99.com/useragreement/")
end

------------------------------------模块部分配置------------------------------------
-- 凌云子
tNpcFace[6094]=29
tNpcGossip[22972] = tNpcGossip[22972] or DefaultNpc:new{}
tNpcGossip[22972]["OptionHidden"] = 1
tNpcGossip[22972]["DialogueText"] = tPolicyNpc_Text[22972]
-- 首页
tNpcGossip[22972]["Text1-1"]={111,112,113,114,115}
tNpcGossip[22972]["tOption1-1"]={111,112}
tNpcGossip[22972]["OptionFunc111"] = "PolicyNpc_OnLineSendWeb"


tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,PolicyNpc_OnLine)






