------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]12月萌宠外套活动（2.3部分）
--Purpose:	12月萌宠外套活动
--Creator: 	范琼
--Created:	2015/11/25
------------------------------------------------------------------------------------
--任务需求：

-- 命名前缀
-- DecemberCutePetUseHair_Match_
--stc掩码说明：
--Eventtype:139
--data:61 :记录发型使用cd时间
--emoneylog说明;
----250 4038 :获得发型
----250 4039 :获得发型
------------------------------------------------数据部分------------------------------

---发型使用数据
local tDecemberCutePetUseHair_Match_HairData = {}
tDecemberCutePetUseHair_Match_HairData["cdTime"] = 10 --使用发型cd时间
tDecemberCutePetUseHair_Match_HairData["Event"] = 139
tDecemberCutePetUseHair_Match_HairData["Data"] = 61
--萌宠发型（绑定）
tDecemberCutePetUseHair_Match_HairData[3007998] = {}
tDecemberCutePetUseHair_Match_HairData[3007998]["schgmapType"] = "style"  
tDecemberCutePetUseHair_Match_HairData[3007998]["typeId"] = 34


--高级萌宠发型（绑定）
tDecemberCutePetUseHair_Match_HairData[3008000] = {}
tDecemberCutePetUseHair_Match_HairData[3008000]["schgmapType"] = "style"  
tDecemberCutePetUseHair_Match_HairData[3008000]["typeId"] = 35


--其他物品数据
local tDecemberCutePetUseHair_Match_otherItemData = {}
--萌宠发型礼包(打开得到萌宠发型（绑定）)
tDecemberCutePetUseHair_Match_otherItemData[3007997] = {}
tDecemberCutePetUseHair_Match_otherItemData[3007997]["nItemId"] = 3007998
tDecemberCutePetUseHair_Match_otherItemData[3007997]["nNum"] = 1

--EmoneyLog
local tDecemberCutePetUseHair_Match_EmoneyLog = {}
tDecemberCutePetUseHair_Match_EmoneyLog[3007998] = "250	4038	0	0	1	"
tDecemberCutePetUseHair_Match_EmoneyLog[3008000] = "250	4039	0	0	1	"

------------------------------------------------逻辑部分------------------------------

--使用发型物品
function DecemberCutePetUseHair_Match_ChangeHair(nItemId,sItemName)
	local nEvent =tDecemberCutePetUseHair_Match_HairData["Event"]
	local nType =tDecemberCutePetUseHair_Match_HairData["Data"]
	if Item_ChkItem(nItemId)  then
		
	else
		--User_TalkChannel2005("")
		return 
	end
	if not Task_StcInterval(nEvent,nType,tDecemberCutePetUseHair_Match_HairData["cdTime"],0) then
		if not	Task_ChkStcValue(nEvent,nType,"==",0) then
			Sys_MsgBox(tDecemberCutePetUseHair_Match_Text["cdTime"])
			return 
		end
	end
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	if tDecemberCutePetUseHair_Match_HairData[nItemId] then	
		if tDecemberCutePetUseHair_Match_HairData[nItemId]["schgmapType"] then
			if not User_HairFaceCheckExist(0,tDecemberCutePetUseHair_Match_HairData[nItemId]["typeId"]) then
				User_HairFaceAward(0,tDecemberCutePetUseHair_Match_HairData[nItemId]["typeId"],0)
			end
			User_ChangeUserHair(tDecemberCutePetUseHair_Match_HairData[nItemId]["typeId"])
			User_TalkChannel2005(string.format(tDecemberCutePetUseHair_Match_Text["ChageHair"],Get_ItemtypeName(nItemId)))
		end
	end
end


--使用萌宠发型礼品 3007997
function DecemberCutePetUseHair_Match_OpenMengChongPack()
	local nItemId = 3007997
	if Item_ChkItem(nItemId) and  Item_DelItem(nItemId) then
		Item_AddItem(tDecemberCutePetUseHair_Match_otherItemData[nItemId]["nItemId"])
		User_TalkChannel2005(tDecemberCutePetUseHair_Match_Text[nItemId]["GetItem"])
		Sys_SaveEmoneyBuy(tDecemberCutePetUseHair_Match_EmoneyLog[3007998])
	else
		local sItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tDecemberCutePetUseHair_Match_Text["LackItem"],sItemName))
	end
end


--使用发型换色道具
function DecemberCutePetUseHair_Match_OpenChangeTool()
	local nItemId = 3008024  --发型换色道具
	local needItem = 3007998 --萌宠发型(绑定)
	local ngetnewItem = 3008000 --高级萌宠发型(绑定)
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(string.format(tDecemberCutePetUseHair_Match_Text["LackItem"],Get_ItemtypeName(nItemId)))
		return
	end
	if Item_ChkItem(needItem) and Item_DelItem(needItem) then
		if Item_DelItem(nItemId) then
			Item_AddItem(ngetnewItem)
			User_TalkChannel2005(tDecemberCutePetUseHair_Match_Text[nItemId]["GetItem"])
			Sys_SaveEmoneyBuy(tDecemberCutePetUseHair_Match_EmoneyLog[3008000])
		end
	else
		User_TalkChannel2005(tDecemberCutePetUseHair_Match_Text["LackItemTQ"])
		return
	end
	
end


---------------------------------------------------------------------------------------------

--萌宠发型礼包(打开得到萌宠发型（绑定）)
tItem[3007997] = tItem[3007997] or {}
tItem[3007997]["Function"] = function(nItemId,sItemName)
	Sys_MsgBox(tDecemberCutePetUseHair_Match_Text[nItemId]["BeSure"],"DecemberCutePetUseHair_Match_OpenMengChongPack")
end

--萌宠发型（绑定）
tItem[3007998] = tItem[3007998] or {}
tItem[3007998]["Function"] = function(nItemId,sItemName)
	DecemberCutePetUseHair_Match_ChangeHair(nItemId,sItemName)
end


--高级萌宠发型（绑定）
tItem[3008000] = tItem[3008000] or {}
tItem[3008000]["Function"] = function(nItemId,sItemName)
	DecemberCutePetUseHair_Match_ChangeHair(nItemId,sItemName)
end

--发型换色道具
tItem[3008024] = tItem[3008024] or {}
tItem[3008024]["Function"] = function(nItemId,sItemName)
	DecemberCutePetUseHair_Match_OpenChangeTool()
end