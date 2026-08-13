------------------------------------------------------------------------------------
--Name：           171128[英文征服][活动脚本]Domino广告NPC制作（长期）
--Creator:      杨艳
--Created:     2017/11/28
------------------------------------------------------------------------------------
-- #任务需求:
-- 【英文征服】德州广告NPC制作（长期）
-- 需求：
-- 制作domino广告NPC，长期使用。点击跳出850*480内嵌弹窗，介绍最新domino活动。
-- NPC详细需求见附件。
-- 如有问题，及时沟通。
 -- 更新日期：12月2日

-- 内嵌页网址：						
-- http://co.99.com/guide/event/2017/dominoevent/client/						

------------------------------------------------------------------------------------
--命名前缀
--DominoAdNpc_
------------------------------------------------------------------------------------

--网页
local DominoAdNpc_Web = {}
	DominoAdNpc_Web["The_web"]="http://co.99.com/guide/event/2017/dominoevent/client/"
	DominoAdNpc_Web["The_web1"] = "https://co.99.com/guide/event/cp_distributor_newyorkcrown.shtml"
	DominoAdNpc_Web["Distributor_web"]="https://co.99.com/guide/event/2019/cpdistributor/"


--商人奖励
local tDominoAdNpc_Reward = {}
	tDominoAdNpc_Reward["LogId"] = 12001639
	tDominoAdNpc_Reward["RewardStrengthValue"] = {}
	tDominoAdNpc_Reward["RewardStrengthValue"]["Value"] = 200
	tDominoAdNpc_Reward["EventType"] = 196
	tDominoAdNpc_Reward["DataType"] = 88
	
---------------------------------逻辑部分---------------------------------------------------
--点击NPC弹出内嵌网页
function DominoAdNpc_Web_OpenWeb()
	local nUserId = Get_UserId()
	
	User_SendWebDialog(DominoAdNpc_Web["The_web"],nUserId)
end

--点击NPC弹出内嵌网页
function DominoAdNpc_Web_OpenWebPage()
	local nUserId = Get_UserId()
	
	User_SendWebPage(DominoAdNpc_Web["The_web1"],nUserId)
end

function DominoAdNpc_Link(nNpcId)
	local nUserId = Get_UserId()
	
	User_SendWebDialog(DominoAdNpc_Web["Distributor_web"],nUserId)
	
	RewardTemplate_UseItemAndMsg(tDominoAdNpc_Reward, nUserId)
end



---------------------------------NPC部分---------------------------------------------------

--CPDistributorEnvoy
tNpcFace[3798] = 63
tNpcGossip[24956] = tNpcGossip[24956] or DefaultNpc:new{}
tNpcGossip[24956]["DialogueText"] = tDominoAdNpc_Text[24956]
tNpcGossip[24956]["OptionHidden"] = 1

tNpcGossip[24956]["Text1-1"] = {111,112,113}
tNpcGossip[24956]["ChkFunc1-1"] = function()
	return true
end
tNpcGossip[24956]["tOption1-1"] = {111,112,113}
tNpcGossip[24956]["OptionPoint111"] = "2-1"
tNpcGossip[24956]["OptionPoint112"] = "2-2"
tNpcGossip[24956]["OptionPoint113"] = "2-3"

tNpcGossip[24956]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[24956]["tOption2-1"] = {211}
tNpcGossip[24956]["OptionPoint211"] = "1"

tNpcGossip[24956]["Text2-2"] = {221}
tNpcGossip[24956]["tOption2-2"] = {221}
tNpcGossip[24956]["OptionPoint221"] = "1"

tNpcGossip[24956]["Text2-3"] = {231}
tNpcGossip[24956]["tOption2-3"] = {231}
tNpcGossip[24956]["OptionFunc231"] = "DominoAdNpc_Web_OpenWebPage"









