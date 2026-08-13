------------------------------------------------------------------------------------
--Name:			181014[简体征服][无赠品服务器]旧双龙城传回新双龙城
--Purpose:		驿站老板
--Creator:		郑鋆
--Created:		2018-10-14
------------------------------------------------------------------------------------
-- 前缀
-- PostStat_

-- 传送回双龙城
function PostStat_Main()
	local nUserMap = Get_UserMapId()
	User_UserRandBoundTrans(10364,313,304,5,5)
end

-------------------------------NPC模板
tNpcGossip[23384] = tNpcGossip[23384] or DefaultNpc:new{}
tNpcGossip[23384]["OptionHidden"] = 1
tNpcGossip[23384]["DialogueText"] = tPostStat_Text[23384]

tNpcGossip[23384]["Text1-1"] = {111}
tNpcGossip[23384]["tOption1-1"] = {111}
tNpcGossip[23384]["OptionFunc111"] = "PostStat_Main"

tNpcGossip[23385] = tNpcGossip[23384]
tNpcGossip[23386] = tNpcGossip[23384]
tNpcGossip[23428] = tNpcGossip[23384]
tNpcGossip[23429] = tNpcGossip[23384]
tNpcGossip[23430] = tNpcGossip[23384]
tNpcGossip[23431] = tNpcGossip[23384]
tNpcGossip[23432] = tNpcGossip[23384]
tNpcGossip[23433] = tNpcGossip[23384]
tNpcGossip[23434] = tNpcGossip[23384]
tNpcGossip[23435] = tNpcGossip[23384]
tNpcGossip[23441] = tNpcGossip[23384]
tNpcGossip[23442] = tNpcGossip[23384]
tNpcGossip[23443] = tNpcGossip[23384]
tNpcGossip[23444] = tNpcGossip[23384]
tNpcGossip[23445] = tNpcGossip[23384]
tNpcGossip[23446] = tNpcGossip[23384]
tNpcGossip[23447] = tNpcGossip[23384]
tNpcGossip[23448] = tNpcGossip[23384]
tNpcGossip[23449] = tNpcGossip[23384]
tNpcGossip[23450] = tNpcGossip[23384]
tNpcGossip[23451] = tNpcGossip[23384]
tNpcGossip[23452] = tNpcGossip[23384]
tNpcGossip[23453] = tNpcGossip[23384]


