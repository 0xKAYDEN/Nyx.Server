---Name:160323[简体征服][活动脚本]2016儿童节活动之吹泡泡(5.30-6.03)
--Creator: 	陈莺
--Created:	2016-03-23
--------------------------------------------------------------------------------
--npc 
-- 10621,'喵咪'
-- 10623,'山娃'
-- 10624,'园丁师傅'
-- 10625 大内侍卫
-- 10626 女寨主

---logid 10002193
--物品
-- 3003735,空瓶子
-- 3003736,无香肥皂
-- 3003737,花香肥皂
-- 3003738,果香肥皂
-- 3003739,肥皂粉
-- 3003740,河水
-- 3003741,初始肥皂水
-- 3003742,有色土颜料
-- 3003743,花泥颜料
-- 3003744,矿物颜料
-- 3003745,神秘颜料
-- 3003746,泡泡水
-- 3003747,泡泡水
-- 3003748,泡泡的马甲

--掩码说明  12455 - 12459
--124,55 =1接任务，=2领取奖励
--124,56 做出正常的气泡 = 1 做出绝美的梦幻气泡 = 2 领奖时候清0
--124,57 叫天鸡掉落限制
--124,58 斑鸠鸟掉落限制
--124,59 罗罗鸟掉落限制


--命名规范
--tChildrenDay2016BlowingBubbles_
------------------------------------------------------------------------------------------
local tChildrenDay2016BlowingBubbles_Data = {}
	tChildrenDay2016BlowingBubbles_Data["Bef_Time"]= "2016-05-18 00:00 2017-05-31 23:59"
	tChildrenDay2016BlowingBubbles_Data["Now_Time"] = "2017-06-01 00:00 2017-06-07 23:59"
	-- tChildrenDay2016BlowingBubbles_Data["Bef_Time"]= "2015-05-18 00:00 2016-03-29 23:59"
	-- tChildrenDay2016BlowingBubbles_Data["Now_Time"] = "2016-03-30 00:00 2016-06-03 23:59"

	tChildrenDay2016BlowingBubbles_Data["Space"] = 1
	tChildrenDay2016BlowingBubbles_Data["Space2"] = 2
	-- tChildrenDay2016BlowingBubbles_Data["BagSpace"] = 40  --背包空间最大
	tChildrenDay2016BlowingBubbles_Data["Level"] = 80  --玩家等级
	tChildrenDay2016BlowingBubbles_Data["Metempsychosis"] = 0
	tChildrenDay2016BlowingBubbles_Data["RewardEffect"] = "LevelUp-1"
	tChildrenDay2016BlowingBubbles_Data["Getffect"] = "Intone"
	tChildrenDay2016BlowingBubbles_Data[3003748] = "balloon41-1"
	tChildrenDay2016BlowingBubbles_Data[1] = "CircleUp"
	tChildrenDay2016BlowingBubbles_Data[2] = "ballblast"
	tChildrenDay2016BlowingBubbles_Data[3] = "replacedisappear"
	tChildrenDay2016BlowingBubbles_Data[4] = "scene_bedbladder"
	
local tChildrenDay2016BlowingBubbles_Sct = {}
--124,55 =1接任务，=2领取奖励
	tChildrenDay2016BlowingBubbles_Sct["Task"] = {}
	tChildrenDay2016BlowingBubbles_Sct["Task"]["EventType"] = 124
	tChildrenDay2016BlowingBubbles_Sct["Task"]["DataType"] = 55
	tChildrenDay2016BlowingBubbles_Sct["Task"]["Complete"] = 2
	tChildrenDay2016BlowingBubbles_Sct["Task"]["Accept"] = 1
	
--124,56 做出正常的气泡 = 1 做出绝美的梦幻气泡 = 2 领奖时候清0
	tChildrenDay2016BlowingBubbles_Sct["Bubbles"] = {}
	tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["EventType"] = 124
	tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["DataType"] = 56
	tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["General"] = 1
	tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["Special"] = 2
---怪物掩码限制
	tChildrenDay2016BlowingBubbles_Sct[1] = {}  --叫天鸡掉落限制
	tChildrenDay2016BlowingBubbles_Sct[1]["EventType"] = 124
	tChildrenDay2016BlowingBubbles_Sct[1]["DataType"] = 57
	
	tChildrenDay2016BlowingBubbles_Sct[2] = {}  --斑鸠鸟掉落限制
	tChildrenDay2016BlowingBubbles_Sct[2]["EventType"] = 124
	tChildrenDay2016BlowingBubbles_Sct[2]["DataType"] = 58

	tChildrenDay2016BlowingBubbles_Sct[3] = {}  --罗罗鸟掉落限制
	tChildrenDay2016BlowingBubbles_Sct[3]["EventType"] = 124
	tChildrenDay2016BlowingBubbles_Sct[3]["DataType"] = 59

-- 记录高级神魂积分
	tChildrenDay2016BlowingBubbles_Sct[19230] = {}
	tChildrenDay2016BlowingBubbles_Sct[19230]["EventType"] = 143
	tChildrenDay2016BlowingBubbles_Sct[19230]["DataType"] = 48
	
local tChildrenDay2016BlowingBubbles_Effect = {}
	tChildrenDay2016BlowingBubbles_Effect["GetEffect"] = "angelwing"
	
local tChildrenDay2016BlowingBubbles_Log = {}
	tChildrenDay2016BlowingBubbles_Log["Accept"] = "0,0,0,0,10002193,1[1],3003735,1"  ---接任务获得空瓶子
	tChildrenDay2016BlowingBubbles_Log["GetItem"] = "0,0,0,0,10002193,2,%d,1"  --获得任务物品
	tChildrenDay2016BlowingBubbles_Log["DelItem"] = "0,0,%d,1,10002193,3,0,0" --删除任务物品
	tChildrenDay2016BlowingBubbles_Log["Complete"] = "0,0,0,0,10002193,1[2],3003625,1"  --完成任务获得节日礼包
	tChildrenDay2016BlowingBubbles_Log["GetWater"] = "0,0,%d,1,10002193,2,%d,1"  --物品使用
	tChildrenDay2016BlowingBubbles_Log["SoapPowder"] = "0,0,%d[%d],1[1],10002193,2,%d,1"  --肥皂粉使用
	tChildrenDay2016BlowingBubbles_Log[3003748] = "0,0,3003748,1,10002193,3,1,1"  --道具使用
	tChildrenDay2016BlowingBubbles_Log["LogId"] = 10002193
	tChildrenDay2016BlowingBubbles_Log["FestivalId"] = 3285

local tChildrenDay2016BlowingBubbles_ItemId = {}
--点击物品给物品
	tChildrenDay2016BlowingBubbles_ItemId[3003735] = 3003740
	tChildrenDay2016BlowingBubbles_ItemId[3003736] = 3003739
	tChildrenDay2016BlowingBubbles_ItemId[3003737] = 3003739
	tChildrenDay2016BlowingBubbles_ItemId[3003738] = 3003739
	tChildrenDay2016BlowingBubbles_ItemId[3003739] = 3003741
	tChildrenDay2016BlowingBubbles_ItemId[3003740] = 3003741

	tChildrenDay2016BlowingBubbles_ItemId[3003742] = 3003746
	tChildrenDay2016BlowingBubbles_ItemId[3003743] = 3003746
	tChildrenDay2016BlowingBubbles_ItemId[3003744] = 3003746
	tChildrenDay2016BlowingBubbles_ItemId[3003745] = 3003747

	-- tChildrenDay2016BlowingBubbles_ItemId[3003741] = 3003741
--npc处给物品
	tChildrenDay2016BlowingBubbles_ItemId[10623] = 3003742
	tChildrenDay2016BlowingBubbles_ItemId[10624] = 3003743
	tChildrenDay2016BlowingBubbles_ItemId[10625] = 3003744
	tChildrenDay2016BlowingBubbles_ItemId[10626] = 3003745
	tChildrenDay2016BlowingBubbles_ItemId[3003746] = 3003746
	tChildrenDay2016BlowingBubbles_ItemId[3003747] = 3003747
	tChildrenDay2016BlowingBubbles_ItemId["Bottle"] = 3003735
	tChildrenDay2016BlowingBubbles_ItemId["SpecialItem"] = 3003748
	-- tChildrenDay2016BlowingBubbles_ItemId["SoapPowder"] = 3003739
	-- tChildrenDay2016BlowingBubbles_ItemId["Water"] = 3003740
---怪物掉落物品
	tChildrenDay2016BlowingBubbles_ItemId[1] = 3003736
	tChildrenDay2016BlowingBubbles_ItemId[2] = 3003737
	tChildrenDay2016BlowingBubbles_ItemId[3] = 3003738

	tChildrenDay2016BlowingBubbles_ItemId["ItemAttr"] = "0 1 0 1440 1"
---使用物品需要的物品
local tChildrenDay2016BlowingBubbles_NeedItem = {}
	tChildrenDay2016BlowingBubbles_NeedItem[3003739] = 3003740
	tChildrenDay2016BlowingBubbles_NeedItem[3003740] = 3003739
	tChildrenDay2016BlowingBubbles_NeedItem[3003742] = 3003741
	tChildrenDay2016BlowingBubbles_NeedItem[3003743] = 3003741
	tChildrenDay2016BlowingBubbles_NeedItem[3003744] = 3003741
	tChildrenDay2016BlowingBubbles_NeedItem[3003745] = 3003741

local tChildrenDay2016BlowingBubbles_position = {}
	tChildrenDay2016BlowingBubbles_position["MapId"] = 1002
	tChildrenDay2016BlowingBubbles_position["PosX"] = 250
	tChildrenDay2016BlowingBubbles_position["PosY"] = 375
	
local tChildrenDay2016BlowingBubbles_Get = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746] = {}
--##3003746,泡泡水-非神秘颜料合成
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746]["ItemChanceSum"] = 10000

	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][1] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][1]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][1]["ItemChance"] = 5000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][1]["Item_1"] = 1
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][2] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][2]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][2]["ItemChance"] = 3000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][2]["Item_1"] = 2
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][3] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][3]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][3]["ItemChance"] = 1000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][3]["Item_1"] = 3
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][4] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][4]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][4]["ItemChance"] = 1000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003746][4]["Item_1"] = 4
	
-----##3003747,泡泡水-神秘颜料合成
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747]["ItemChanceSum"] = 10000

	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][1] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][1]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][1]["ItemChance"] = 6000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][1]["Item_1"] = 1
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][2] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][2]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][2]["ItemChance"] = 2000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][2]["Item_1"] = 4
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][3] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][3]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][3]["ItemChance"] = 1000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][3]["Item_1"] = 2
	
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][4] = {}
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][4]["RandomItemChanceType"] = 2
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][4]["ItemChance"] = 1000
	tChildrenDay2016BlowingBubbles_Get["Reward"][3003747][4]["Item_1"] = 3

---------------------------------------------逻辑部分---------------------------------------------
---判断是否有接任务
function ChildrenDay2016BlowingBubbles_AcceptTask()
	local nTaskEvent = tChildrenDay2016BlowingBubbles_Sct["Task"]["EventType"]
	local nTaskData = tChildrenDay2016BlowingBubbles_Sct["Task"]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskData,'<',tChildrenDay2016BlowingBubbles_Sct["Task"]["Accept"]) then
		return true
	else
		return false
	end
end
---检测时间
function ChildrenDay2016BlowingBubbles_ChkTime()
	if not Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Now_Time"]) then
		return true
	end
	return false
end
--检测等级
function ChildrenDay2016BlowingBubbles_ChkLevel()
	if not User_JudgeLevelAndMetempsychosis(tChildrenDay2016BlowingBubbles_Data["Level"],tChildrenDay2016BlowingBubbles_Data["Metempsychosis"]) then 
		return true
	else
		return false
	end
end
---判断是否完成任务
function ChildrenDay2016BlowingBubbles_FinishTask()
	local nTaskEvent = tChildrenDay2016BlowingBubbles_Sct["Task"]["EventType"]
	local nTaskData = tChildrenDay2016BlowingBubbles_Sct["Task"]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskData,'>=',tChildrenDay2016BlowingBubbles_Sct["Task"]["Complete"]) then
		return true
	else
		return false
	end
end
----置任务掩码
function ChildrenDay2016BlowingBubbles_SetTaskStc(nNum)
	local nTaskEvent = tChildrenDay2016BlowingBubbles_Sct["Task"]["EventType"]
	local nTaskData = tChildrenDay2016BlowingBubbles_Sct["Task"]["DataType"]
	Task_SetStatistic(nTaskEvent,nTaskData,nNum,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskData,0)
end
---置吹泡泡掩码
function ChildrenDay2016BlowingBubbles_SetBubbleStc(nNum)
	local nBubblesEvent = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["EventType"]
	local nBubblesData = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["DataType"]
	Task_SetStatistic(nBubblesEvent,nBubblesData,nNum,1)
	Task_SetStcTimestamp(nBubblesEvent,nBubblesData,0)
end



---交给我来办吧！
function ChildrenDay2016BlowingBubbles_GetBottle(nNpcId)
---检测时间
	if ChildrenDay2016BlowingBubbles_ChkTime() then
		return
	end
--判断等级
	if ChildrenDay2016BlowingBubbles_ChkLevel() then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
---判断是否完成任务
	if ChildrenDay2016BlowingBubbles_FinishTask() then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
-- 是否已有空瓶子
	if Item_ChkItem(tChildrenDay2016BlowingBubbles_ItemId["Bottle"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
--检测背包空间
	if not User_CheckLeftSpace(tChildrenDay2016BlowingBubbles_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
--打掩码
	ChildrenDay2016BlowingBubbles_SetTaskStc(tChildrenDay2016BlowingBubbles_Sct["Task"]["Accept"])
	Item_AddItem(tChildrenDay2016BlowingBubbles_ItemId["Bottle"])  ---给空瓶
	Sys_SaveActionFestivalLog(tChildrenDay2016BlowingBubbles_Log["Accept"])
	User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data["Getffect"])  --光效
	LinkNpcGossipFunc_New(nNpcId,"3-2")
	User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["GetBottle"])
end

---补领空瓶子。
function ChildrenDay2016BlowingBubbles_ReplaceBottle(nNpcId)
---检测时间
	if ChildrenDay2016BlowingBubbles_ChkTime() then
		return
	end

--判断等级
	if ChildrenDay2016BlowingBubbles_ChkLevel() then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
---判断是否完成任务
	if ChildrenDay2016BlowingBubbles_FinishTask() then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
--判断是否有接任务
	if ChildrenDay2016BlowingBubbles_AcceptTask() then
		return
	end
-- 判断是否有空瓶子
	if Item_ChkItem(tChildrenDay2016BlowingBubbles_ItemId["Bottle"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
--检测背包空间
	if not User_CheckLeftSpace(tChildrenDay2016BlowingBubbles_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
---补领成功
	Item_AddItem(tChildrenDay2016BlowingBubbles_ItemId["Bottle"])  ---给空瓶
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

---领取报酬。
function ChildrenDay2016BlowingBubbles_RewardItem(nNpcId)
---检测时间
	if ChildrenDay2016BlowingBubbles_ChkTime() then
		return
	end

--判断等级
	if ChildrenDay2016BlowingBubbles_ChkLevel() then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
---判断是否完成任务
	if ChildrenDay2016BlowingBubbles_FinishTask() then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
--是否完成吹泡泡过程
	local nTaskEvent = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["EventType"]
	local nTaskData = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskData,'<',tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["General"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
--检测背包空间
	if not User_CheckLeftSpace(tChildrenDay2016BlowingBubbles_Data["Space2"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
--置掩码
	ChildrenDay2016BlowingBubbles_SetTaskStc(tChildrenDay2016BlowingBubbles_Sct["Task"]["Complete"])
--删任务物品
	-- for a = 1,tChildrenDay2016BlowingBubbles_Data["BagSpace"] do
		for i = 3003735,3003747  do
			if Item_ChkItem(i) then
				if Item_DelAllItemByType(i) then
					local sDelItemLog = string.format(tChildrenDay2016BlowingBubbles_Log["GetItem"],i)
					Sys_SaveActionFestivalLog(sDelItemLog)
				end
			end
		end
	-- end
---额外奖励
	if Task_ChkStcValue(nTaskEvent,nTaskData,'>=',tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["Special"]) then
		Item_AddNewItem(tChildrenDay2016BlowingBubbles_ItemId["SpecialItem"],tChildrenDay2016BlowingBubbles_ItemId["ItemAttr"])
		local sLog = string.format(tChildrenDay2016BlowingBubbles_Log["GetItem"],tChildrenDay2016BlowingBubbles_ItemId["SpecialItem"])
		Sys_SaveActionFestivalLog(sLog)
	end
	ChildrenDay2016BlowingBubbles_SetBubbleStc(0)  --吹泡泡掩码置0
	FestivalGeneralPackage_GetGift(tChildrenDay2016BlowingBubbles_Log["FestivalId"],tChildrenDay2016BlowingBubbles_Log["LogId"])
	Sys_SaveActionFestivalLog(tChildrenDay2016BlowingBubbles_Log["Complete"])  --log
	User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data["RewardEffect"])  --光效
	LinkNpcGossipFunc_New(nNpcId,"5-1")

end
------------------------------------------山娃npc等
function ChildrenDay2016BlowingBubbles_GiveTaskItem(nNpcId)
---检测时间
	if ChildrenDay2016BlowingBubbles_ChkTime() then
		return
	end
---判断等级
	if ChildrenDay2016BlowingBubbles_ChkLevel() then
		return
	end

---判断任务是否完成
	if ChildrenDay2016BlowingBubbles_FinishTask() then
		return
	end
---检测背包空间
	if not User_CheckLeftSpace(tChildrenDay2016BlowingBubbles_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	Item_AddItem(tChildrenDay2016BlowingBubbles_ItemId[nNpcId])
	local sTaskItemLog = string.format(tChildrenDay2016BlowingBubbles_Log["GetItem"],tChildrenDay2016BlowingBubbles_ItemId[nNpcId])
	Sys_SaveActionFestivalLog(sTaskItemLog)
	User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"][nNpcId])
	User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data["Getffect"])  --光效
end
---------------------------------------------物品逻辑---------------------------------------------
--过期删除物品
function ChildrenDay2016BlowingBubbles_DeleteItem(nItemId)
	if not Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tChildrenDay2016BlowingBubbles_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["OverTime"])
		end
		return true
	end
	return false
end

--判断距离=>距离内true,距离外false
function ChildrenDay2016BlowingBubbles_Distance(nUserX,nUserY,nPosX,nPosY)

	local nX_Distance = math.abs(nUserX-nPosX)
	local nY_Distance = math.abs(nUserY-nPosY)
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < 5 and nY_Distance < 5 then
		return true
	else
		return false
	end
end

---空瓶子
function ChildrenDay2016BlowingBubbles_Bottle(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	if Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Bef_Time"]) then
		User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["BefTime"])
	end
--过期删除物品
	if ChildrenDay2016BlowingBubbles_DeleteItem(nItemId) then
		return
	end
	if nItemId == tChildrenDay2016BlowingBubbles_ItemId["Bottle"] then  --空瓶
	---判断地图
		local nMapId = tChildrenDay2016BlowingBubbles_position["MapId"]
		local nUserMapId = Get_UserMapId(0)
		if nUserMapId ~= nMapId then
			Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["NoPlace"],"ChildrenDay2016BlowingBubbles_Goto")
			return
		end
		local nUserX = Get_UserPositionX(0)
		local nUserY = Get_UserPositionY(0)
		local nPosX = tChildrenDay2016BlowingBubbles_position["PosX"]
		local nPosY = tChildrenDay2016BlowingBubbles_position["PosY"]
		if not ChildrenDay2016BlowingBubbles_Distance(nUserX,nUserY,nPosX,nPosY) then
			Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["NoPlace"],"ChildrenDay2016BlowingBubbles_Goto")
			return
		end
	end

--给物品
	ChildrenDay2016BlowingBubbles_AddItem(nItemId)
	local sLog = string.format(tChildrenDay2016BlowingBubbles_Log["GetWater"],nItemId,tChildrenDay2016BlowingBubbles_ItemId[nItemId])
	Sys_SaveActionFestivalLog(sLog)

end
-- 无香肥皂-果香肥皂
function ChildrenDay2016BlowingBubbles_SoapItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Bef_Time"]) then
		User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["BefTime"])
	end

--过期删除物品
	if ChildrenDay2016BlowingBubbles_DeleteItem(nItemId) then
		return
	end

	--检测是否有需要的物品
	if not Item_ChkItem(tChildrenDay2016BlowingBubbles_NeedItem[nItemId]) then
		Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text["MsgBox"][nItemId])
		return
	end
	if Item_DelItem(tChildrenDay2016BlowingBubbles_NeedItem[nItemId]) then --删除需要合成的物品
--给物品
		ChildrenDay2016BlowingBubbles_AddItem(nItemId)
		local sLog = string.format(tChildrenDay2016BlowingBubbles_Log["SoapPowder"],nItemId,tChildrenDay2016BlowingBubbles_NeedItem[nItemId],tChildrenDay2016BlowingBubbles_ItemId[nItemId])
		Sys_SaveActionFestivalLog(sLog)
	end
end
---给物品
function ChildrenDay2016BlowingBubbles_AddItem(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Item_AddItem(tChildrenDay2016BlowingBubbles_ItemId[nItemId])
		User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data["Getffect"])  --光效
		Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text[nItemId])
	end
end
---泡泡水
function ChildrenDay2016BlowingBubbles_BubbleWater(nItemId)
--活动时间前
	if Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Bef_Time"]) then
		User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["BefTime"])
	end

--过期删除物品
	if ChildrenDay2016BlowingBubbles_DeleteItem(nItemId) then
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tChildrenDay2016BlowingBubbles_Get["Reward"],nItemId)  
		local nNumber = tNum[1]["tAward"][1]["Item_1"]
		-- Sys_MsgBox(tostring(nNumber))
		if nNumber == 1 then
			local nBubblesEvent = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["EventType"]
			local nBubblesData = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["DataType"]
			if Task_ChkStcValue(nBubblesEvent,nBubblesData,'<',tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["Special"]) then
				ChildrenDay2016BlowingBubbles_SetBubbleStc(tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["General"])
			end
		end
		if nNumber == 4 then
			ChildrenDay2016BlowingBubbles_SetBubbleStc(tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["Special"])
		end
		local sLog =string.format(tChildrenDay2016BlowingBubbles_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data[nNumber])  --光效
		Sys_MsgBox(tChildrenDay2016BlowingBubbles_Text["MsgBox"][nNumber])
	end
end
---泡泡的马甲 3003748
function ChildrenDay2016BlowingBubbles_BubbleEffect(nItemId)
	if Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Bef_Time"]) then
		User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["BefTime"])
	end

--过期删除物品
	if ChildrenDay2016BlowingBubbles_DeleteItem(nItemId) then
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_EffectDel("self",tChildrenDay2016BlowingBubbles_Data[3003748])
		User_EffectAdd("self",tChildrenDay2016BlowingBubbles_Data[3003748])  --光效
		Sys_SaveActionFestivalLog(tChildrenDay2016BlowingBubbles_Log[3003748])
	end
end
---自动寻路
function ChildrenDay2016BlowingBubbles_Goto()
	local nMapId = tChildrenDay2016BlowingBubbles_position["MapId"]
	local nPosX = tChildrenDay2016BlowingBubbles_position["PosX"]
	local nPosY = tChildrenDay2016BlowingBubbles_position["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)
end

---------------------------------------------怪物逻辑---------------------------------------------
function ChildrenDay2016BlowingBubbles_DropItem(nMonsterTypeId)
	-- 检测时间
	if ChildrenDay2016BlowingBubbles_ChkTime() then
		return
	end
---判断是否完成任务
	if ChildrenDay2016BlowingBubbles_FinishTask() then
		return
	end
--判断是否有接任务
	if ChildrenDay2016BlowingBubbles_AcceptTask() then
		return
	end
	
	local nEvent = tChildrenDay2016BlowingBubbles_Sct[nMonsterTypeId]["EventType"]
	local nData = tChildrenDay2016BlowingBubbles_Sct[nMonsterTypeId]["DataType"]
	if Task_StcInterval(nEvent,nData,1,4) then  --隔天
		Task_SetStatistic(nEvent,nData,0,1)
		-- Task_SetStcTimestamp(nEvent,nData,0)
	end
	if Task_ChkStcValue(nEvent,nData,">=",20) then
		return
	end
-----检测背包空间
	if not User_CheckLeftSpace(tChildrenDay2016BlowingBubbles_Data["Space"]) then
		User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text["MsgBox"]["NoSpace"])
		return
	end

---掩码加1
	Task_AddStatistic(nEvent,nData,1,1,0)
	Task_SetStcTimestamp(nEvent,nData,0)
	Item_AddItem(tChildrenDay2016BlowingBubbles_ItemId[nMonsterTypeId])
	local sLog = string.format(tChildrenDay2016BlowingBubbles_Log["GetItem"],tChildrenDay2016BlowingBubbles_ItemId[nMonsterTypeId])
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tChildrenDay2016BlowingBubbles_Text[nMonsterTypeId])
end


--隔天清零
function ChildrenDay2016BlowingBubbles_ResetStc()
	local nTaskEvent = tChildrenDay2016BlowingBubbles_Sct["Task"]["EventType"]
	local nTaskData = tChildrenDay2016BlowingBubbles_Sct["Task"]["DataType"]
	local nBubblesEvent = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["EventType"]
	local nBubblesData = tChildrenDay2016BlowingBubbles_Sct["Bubbles"]["DataType"]

	if Task_StcInterval(nTaskEvent,nTaskData,1,4) then  --隔天
		Task_SetStatistic(nTaskEvent,nTaskData,0,1)
		Task_SetStcTimestamp(nTaskEvent,nTaskData,0)
		Task_SetStatistic(nBubblesEvent,nBubblesData,0,1)
		Task_SetStcTimestamp(nBubblesEvent,nBubblesData,0)
	end
end

---------------------------------------------npc模板---------------------------------------------
---------------------------npc喵咪 10621
tNpcFace[2973] = 121

tNpcGossip[10621] = tNpcGossip[10621] or DefaultNpc:new{}
tNpcGossip[10621]["OptionHidden"] = 1
--活动时间前
tNpcGossip[10621]["Text1-1"] = {111,112,113,114}
tNpcGossip[10621]["Text111"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text111"]
tNpcGossip[10621]["Text112"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text112"]
tNpcGossip[10621]["Text113"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text113"]
tNpcGossip[10621]["Text114"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text114"]

tNpcGossip[10621]["tOption1-1"] = {1}
tNpcGossip[10621]["Option1"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option1"]
tNpcGossip[10621]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Bef_Time"])
end

--活动时间中
tNpcGossip[10621]["Text1-2"] = {121,122,123,124}
tNpcGossip[10621]["Text121"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text311"]
tNpcGossip[10621]["Text122"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text312"]
tNpcGossip[10621]["Text123"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text313"]
tNpcGossip[10621]["Text124"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text314"]
tNpcGossip[10621]["tOption1-2"] = {31,32,33,34,35}
tNpcGossip[10621]["Option31"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option31"]
tNpcGossip[10621]["OptionFunc31"] = "ChildrenDay2016BlowingBubbles_GetBottle</N>10621"
tNpcGossip[10621]["OptionChkFunc31"] = function()
	return ChildrenDay2016BlowingBubbles_AcceptTask()
end
tNpcGossip[10621]["Option32"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option32"]
tNpcGossip[10621]["OptionFunc32"] = "ChildrenDay2016BlowingBubbles_ReplaceBottle</N>10621"
tNpcGossip[10621]["OptionChkFunc32"] = function()
	return not ChildrenDay2016BlowingBubbles_AcceptTask()
end

tNpcGossip[10621]["Option33"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option33"]
tNpcGossip[10621]["OptionFunc33"] = "ChildrenDay2016BlowingBubbles_RewardItem</N>10621"

tNpcGossip[10621]["Option34"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option34"]
tNpcGossip[10621]["OptionPoint34"]="6-1"
tNpcGossip[10621]["Option35"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option35"]

tNpcGossip[10621]["ChkFunc1-2"] = function()
-- Sys_MsgBox("111")  --测试
	ChildrenDay2016BlowingBubbles_ResetStc()  --隔天清零
	return Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Now_Time"])
end

--活动时间后
tNpcGossip[10621]["Text1-3"] = {131}
tNpcGossip[10621]["Text131"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text211"]
tNpcGossip[10621]["tOption1-3"] = {21}
tNpcGossip[10621]["Option21"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option21"]
tNpcGossip[10621]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Now_Time"])
end

-- 【玩家选1、成功、交给玩家空瓶子】
tNpcGossip[10621]["Text3-2"] = {321}
tNpcGossip[10621]["Text321"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text321"]
tNpcGossip[10621]["tOption3-2"] = {41}
tNpcGossip[10621]["Option41"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option41"]
-- 【玩家选1、失败、背包满】
tNpcGossip[10621]["Text3-3"] = {331}
tNpcGossip[10621]["Text331"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text331"]
tNpcGossip[10621]["tOption3-3"] = {42}
tNpcGossip[10621]["Option42"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option42"]
-- 【玩家选1、失败、玩家等级不足】
tNpcGossip[10621]["Text3-4"] = {341}
tNpcGossip[10621]["Text341"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text341"]
tNpcGossip[10621]["tOption3-4"] = {43}
tNpcGossip[10621]["Option43"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option43"]
-- 【玩家选1、失败、当日已完成该任务】
tNpcGossip[10621]["Text3-5"] = {351}
tNpcGossip[10621]["Text351"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text351"]
tNpcGossip[10621]["tOption3-5"] = {44}
tNpcGossip[10621]["Option44"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option44"]

tNpcGossip[10621]["Text3-6"] = {361}
tNpcGossip[10621]["Text361"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text361"]
tNpcGossip[10621]["tOption3-6"] = {45}
tNpcGossip[10621]["Option45"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option45"]

---------------------------------------补领
-- 【玩家选2、成功、补领道具】
tNpcGossip[10621]["Text4-1"] = {411}
tNpcGossip[10621]["Text411"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text411"]
tNpcGossip[10621]["tOption4-1"] = {51}
tNpcGossip[10621]["Option51"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option51"]
-- 【玩家选2、失败、背包满】
tNpcGossip[10621]["Text4-2"] = {421}
tNpcGossip[10621]["Text421"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text421"]
tNpcGossip[10621]["tOption4-2"] = {52}
tNpcGossip[10621]["Option52"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option52"]
-- 【玩家选2、失败、背包里道具齐全无需再补】
tNpcGossip[10621]["Text4-3"] = {431}
tNpcGossip[10621]["Text431"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text431"]
tNpcGossip[10621]["tOption4-3"] = {53}
tNpcGossip[10621]["Option53"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option53"]


------------------------------------------领取奖励
-- 玩家选3、领取活动奖励
tNpcGossip[10621]["Text5-1"] = {511}
tNpcGossip[10621]["Text511"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text511"]
tNpcGossip[10621]["tOption5-1"] = {61}
tNpcGossip[10621]["Option61"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option61"]
-- 【玩家选3、失败、未接该活动】
tNpcGossip[10621]["Text5-2"] = {521}
tNpcGossip[10621]["Text521"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text521"]
tNpcGossip[10621]["tOption5-2"] = {62}
tNpcGossip[10621]["Option62"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option62"]
-- 【玩家选3、失败、玩家未完成吹泡泡过程】
tNpcGossip[10621]["Text5-3"] = {531}
tNpcGossip[10621]["Text531"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text531"]
tNpcGossip[10621]["tOption5-3"] = {63}
tNpcGossip[10621]["Option63"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option63"]
-- 【玩家选3、失败、已领取当天奖励】
tNpcGossip[10621]["Text5-4"] = {541}
tNpcGossip[10621]["Text541"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text541"]
tNpcGossip[10621]["tOption5-4"] = {64}
tNpcGossip[10621]["Option64"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option64"]
---------------------------------------------查看规则
-- 【玩家选4、查看规则】
tNpcGossip[10621]["Text6-1"] = {611,612}
tNpcGossip[10621]["Text611"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text611"]
tNpcGossip[10621]["Text612"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text612"]
tNpcGossip[10621]["tOption6-1"] = {71}
tNpcGossip[10621]["Option71"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option71"]
tNpcGossip[10621]["OptionPoint71"]="6-2"
--下一页
tNpcGossip[10621]["Text6-2"] = {621,622}
tNpcGossip[10621]["Text621"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text621"]
tNpcGossip[10621]["Text622"] = tChildrenDay2016BlowingBubbles_Text[10621]["Text622"]
tNpcGossip[10621]["tOption6-2"] = {72}
tNpcGossip[10621]["Option72"] = tChildrenDay2016BlowingBubbles_Text[10621]["Option72"]

--------------------------------------npc山娃 10623
tNpcFace[3024] = 36
tNpcFace[3025] = 90
tNpcFace[3026] = 92
tNpcFace[3027] = 2

tNpcGossip[10623] = tNpcGossip[10623] or DefaultNpc:new{}
tNpcGossip[10623]["OptionHidden"] = 1
---闲聊对白
tNpcGossip[10623]["Text1-1"] = {111}
tNpcGossip[10623]["Text111"] = tChildrenDay2016BlowingBubbles_Text[10623]["Text311"]
tNpcGossip[10623]["tOption1-1"] = {1}
tNpcGossip[10623]["Option1"] = tChildrenDay2016BlowingBubbles_Text[10623]["Option31"]
tNpcGossip[10623]["ChkFunc1-1"] = function()
	local nNpcId = Get_NpcId()
	tNpcGossip[10623]["Text111"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Text311"]
	tNpcGossip[10623]["Option1"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Option31"]
	return (not Sys_ChkFullTime(tChildrenDay2016BlowingBubbles_Data["Now_Time"])) or ChildrenDay2016BlowingBubbles_AcceptTask() or ChildrenDay2016BlowingBubbles_FinishTask() or Item_ChkItem(tChildrenDay2016BlowingBubbles_ItemId[nNpcId])
end
--主对白
tNpcGossip[10623]["Text1-2"] = {121}
tNpcGossip[10623]["Text121"] = tChildrenDay2016BlowingBubbles_Text[10623]["Text111"]
tNpcGossip[10623]["tOption1-2"] = {21}
tNpcGossip[10623]["Option21"] = tChildrenDay2016BlowingBubbles_Text[10623]["Option1"]
tNpcGossip[10623]["OptionFunc21"] = "ChildrenDay2016BlowingBubbles_GiveTaskItem</N>10623"

tNpcGossip[10623]["ChkFunc1-2"] = function()
	local nNpcId = Get_NpcId()
	tNpcGossip[10623]["Text211"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Text111"]
	tNpcGossip[10623]["Option21"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Option1"]
	tNpcGossip[10623]["OptionFunc21"] = "ChildrenDay2016BlowingBubbles_GiveTaskItem</N>" .. nNpcId

	return true
end
---背包满
tNpcGossip[10623]["Text3-1"] = {311}
tNpcGossip[10623]["Text311"] = tChildrenDay2016BlowingBubbles_Text[10623]["Text211"]
tNpcGossip[10623]["tOption3-1"] = {31}
tNpcGossip[10623]["Option31"] = tChildrenDay2016BlowingBubbles_Text[10623]["Option21"]
tNpcGossip[10623]["ChkFunc3-1"] = function()
	local nNpcId = Get_NpcId()
	tNpcGossip[10623]["Text311"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Text211"]
	tNpcGossip[10623]["Option31"] = tChildrenDay2016BlowingBubbles_Text[nNpcId]["Option21"]
	return true
end
-----园丁师傅 大内侍卫 女寨主
tNpcGossip[10624] = tNpcGossip[10623]
tNpcGossip[10625] = tNpcGossip[10623]
tNpcGossip[10626] = tNpcGossip[10623]

---------------------------------------------物品模板---------------------------------------------
-- 空瓶子 3003735
tItem[3003735] = tItem[3003735] or {}
tItem[3003735]["Function"] = function (nItemId,sItemName)
	ChildrenDay2016BlowingBubbles_Bottle(nItemId)
end
--无香肥皂 花香肥皂 果香肥皂
for i= 3003736,3003738 do
	tItem[i] = tItem[3003735] or {}
end

--肥皂粉 
tItem[3003739] = tItem[3003739] or {}
tItem[3003739]["Function"] = function (nItemId,sItemName)
	ChildrenDay2016BlowingBubbles_SoapItem(nItemId)
end
--河水 有色土颜料 花泥颜料 矿物颜料
for i= 3003740,3003745 do
	tItem[i] = tItem[3003739] or {}
end
---3003746-3003747 泡泡水
tItem[3003746] = tItem[3003746] or {}
tItem[3003746]["Function"] = function (nItemId,sItemName)
	ChildrenDay2016BlowingBubbles_BubbleWater(nItemId)
end
tItem[3003747] = tItem[3003746] or {}

-- 3003748,道具
tItem[3003748] = tItem[3003748] or {}
tItem[3003748]["Function"] = function (nItemId,sItemName)
	ChildrenDay2016BlowingBubbles_BubbleEffect(nItemId)
end
---------------------------------------------怪物模板---------------------------------------------
-- -- 	1	叫天鸡	9593200
-- tMonster[1] = tMonster[1] or {}
-- tMonster[1]["tFunction"] = tMonster[1]["tFunction"] or {}
-- table.insert(tMonster[1]["tFunction"],ChildrenDay2016BlowingBubbles_DropItem)

-- -- 	2	斑鸠王	9593210
-- tMonster[2] = tMonster[2] or {}
-- tMonster[2]["tFunction"] = tMonster[2]["tFunction"] or {}
-- table.insert(tMonster[2]["tFunction"],ChildrenDay2016BlowingBubbles_DropItem)

-- --	3	罗罗鸟	9593220
-- tMonster[3] = tMonster[3] or {}
-- tMonster[3]["tFunction"] = tMonster[3]["tFunction"] or {}
-- table.insert(tMonster[3]["tFunction"],ChildrenDay2016BlowingBubbles_DropItem)


