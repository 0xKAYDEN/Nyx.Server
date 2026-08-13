------------------------------------------------------------------------------------
--Name:		160303[英文征服][任务脚本]3月德州包发奖action制作
--Purpose:	3月德州包发奖action制作
--Creator: 	张世超
--Created:	2016/03/02
------------------------------------------------------------------------------------
-- 命名前缀
-- TexasAwardMarch_

local TexasAwardMarch_Effect = "changefig"

--活动时间
local tTexasAwardMarch_Prize = {}
-- (3008454,'主播特权礼包'
tTexasAwardMarch_Prize[3008454] ={}
tTexasAwardMarch_Prize[3008454]["Log"] = "0,0,3008454,1,12000318,2,1[3008758][3008759],100000[1][1]"
tTexasAwardMarch_Prize[3008454]["Space"] = 1
tTexasAwardMarch_Prize[3008454][1] = {}
tTexasAwardMarch_Prize[3008454][2] = {}
tTexasAwardMarch_Prize[3008454][3] = {}
tTexasAwardMarch_Prize[3008454][1]["Type"] = 1
tTexasAwardMarch_Prize[3008454][1]["Attr"] = 100000
tTexasAwardMarch_Prize[3008454][2]["Type"] = 3008758
tTexasAwardMarch_Prize[3008454][2]["Attr"] = ""
tTexasAwardMarch_Prize[3008454][3]["Type"] = 3008759
tTexasAwardMarch_Prize[3008454][3]["Attr"] = ""
-- (3008455,'粉丝贡献礼包'
tTexasAwardMarch_Prize[3008455] ={}
tTexasAwardMarch_Prize[3008455]["Log"] = "0,0,3008455,1,12000318,2,1[3008460][3008466],100000[1][1]"
tTexasAwardMarch_Prize[3008455]["Space"] = 1
tTexasAwardMarch_Prize[3008455][1] = {}
tTexasAwardMarch_Prize[3008455][2] = {}
tTexasAwardMarch_Prize[3008455][3] = {}
tTexasAwardMarch_Prize[3008455][1]["Type"] = 1
tTexasAwardMarch_Prize[3008455][1]["Attr"] = 100000
tTexasAwardMarch_Prize[3008455][2]["Type"] = 3008460
tTexasAwardMarch_Prize[3008455][2]["Attr"] = ""
tTexasAwardMarch_Prize[3008455][3]["Type"] = 3008466
tTexasAwardMarch_Prize[3008455][3]["Attr"] = ""
-------------------------逻辑------------------------------------------------------

function TexasAwardMarch_Open(nItemId,sItemName)
	if not User_CanPutMoney2Bag(tTexasAwardMarch_Prize[nItemId][1]["Attr"]) then
		User_TalkChannel2005(tTexasAwardMarch_Text["Msg"]["TooMuchSliver"])
		return 
	end
	
	if not User_CheckLeftSpace(tTexasAwardMarch_Prize[nItemId]["Space"]) then 
		User_TalkChannel2005(tTexasAwardMarch_Text["Msg"]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		User_AddMoney(tTexasAwardMarch_Prize[nItemId][1]["Attr"])
		Item_AddNewItem(tTexasAwardMarch_Prize[nItemId][2]["Type"],tTexasAwardMarch_Prize[nItemId][2]["Attr"])
		Item_AddNewItem(tTexasAwardMarch_Prize[nItemId][3]["Type"],tTexasAwardMarch_Prize[nItemId][3]["Attr"])
		User_EffectAdd("self",TexasAwardMarch_Effect)
		Sys_SaveActionFestivalLog(tTexasAwardMarch_Prize[nItemId]["Log"])	
		User_TalkChannel2005(tTexasAwardMarch_Text["Msg"]["Award"][nItemId])
	end
	
end


------------------------物品模版----------------------------------------------------
tItem[3008454] = tItem[3008454] or {}
tItem[3008454]["Function"] = function(nItemId,sItemName)
	TexasAwardMarch_Open(nItemId,sItemName)
end

tItem[3008455] = tItem[3008455] or {}
tItem[3008455]["Function"] = function(nItemId,sItemName)
	TexasAwardMarch_Open(nItemId,sItemName)
end







