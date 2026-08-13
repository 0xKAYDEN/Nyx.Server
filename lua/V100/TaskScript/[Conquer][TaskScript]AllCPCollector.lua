------------------------------------------------------------------------------------
--Name:		160824[英文征服][任务脚本]集中营添加新回收天石NPC
--Creator: 	翁增锐
--Created:	2016/08/25
------------------------------------------------------------------------------------

--命名空间:
--AllCPCollector
--luaini:21041

----------------------------------------数据配置--------------------------------------
--常量表配置
local tAllCPCollector_Log={}
tAllCPCollector_Log["EmoneyLog"]="350	20294	%d	%d	1	"

-----------------------逻辑函数--------------------------------
function AllCPCollector_SureEmoney()
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	if nUserEMoney == 0 then
		User_TalkChannel2005(tAllCPCollector_Text["NoCP"])
	else
		--扣除天石
		User_AddEMoney_Repo(-nUserEMoney)
		User_TalkChannel2005(tAllCPCollector_Text["DelSuccess"])
		--EmoneyLog
		 Sys_SaveEmoneyBuy(string.format(tAllCPCollector_Log["EmoneyLog"],nUserEMoney,nUserEMoney))
	end
end


-------------------------NPC模块----------------------------------------------
tNpcFace[4312] = 1
tNpcGossip[19457] = tNpcGossip[19457] or DefaultNpc:new{}
tNpcGossip[19457]["OptionHidden"] = 1

tNpcGossip[19457]["Text1-1"] = {111}
tNpcGossip[19457]["Text111"] = tAllCPCollector_Text[19457]["Text111"]
tNpcGossip[19457]["tOption1-1"] = {111,112}

tNpcGossip[19457]["Option111"] = tAllCPCollector_Text[19457]["Option111"]
tNpcGossip[19457]["OptionFunc111"] = "AllCPCollector_SureEmoney"

tNpcGossip[19457]["Option112"] = tAllCPCollector_Text[19457]["Option112"]