--------------------------------------------------------------------------------
---Name:160725[英文征服][活动脚本]山中无老虎活动制作(8.25-9.07)
--Creator: 	许乐
--Created:	2016-07-25
--------------------------------------------------------------------------------
-- #安排山中无老虎活动制作，具体需求内容在附件中，如有问题，请及时沟通，谢谢！
-- #活动时间：2016.8.25-9.07
-- #为了方便活动数据统计，部分 log 需要做成 emoney buy log，具体情况见附件。
-- #备注：复用的简体链接里有年终促销的部分，这部分促销不做，具体情况和高威沟通过，如有问题，请及时沟通。
-- ##复用链接
--  http://nderp.99.com/Forum/TopicList-240569.aspx
--------------------------------------------------------------------------------
-- -- 修改内容
-- 1	过年促销礼包不上				
-- 2	放烟花去掉促销礼包				
-- 3	秒杀的3个促销礼包替换成3个红包				
-- 4	抽奖去掉促销礼包，概率加到其他道具上				
-- 5	合成面具的后面加赠字				
-- 6	促销的道具礼包，放到两个NPC身上卖，之前的春节促销专员不要了				
-- 7	背包信替换				
-- 8	坐骑碎片图标替换				
-- 9	普通表情道具可兑换成200气力值，高级表情道具可兑换成2000气力值。				
--------------------------------------------------------------------------------
---Name:160112[简体征服][活动脚本]年终大促及年兽促销活动(02.01-02.29)
--Creator: 	陈莺
--Created:	2016-01-12
--------------------------------------------------------------------------------
--logid:12000302
--stc 14157-14159  外部物品修改使用
--stc 14160 记录分期礼包次数
--stc 14161 记录背包信
--stc 14162 记录每天上线获得一天时效的悠嘻猴
--stc 14165-14173 记录各个礼包打开的次数

--命名规范
--NewYearPromote_
----------------------------------------数据部分-------------------------------------------
local tNewYearPromote_Flag = {}
	tNewYearPromote_Flag[3008590] = 1  --普通表情道具碎片
	tNewYearPromote_Flag[200553] = 1  --普通表情1悠嘻猴坐骑

	local tNewYearPromote_PeitItemId = {}
	tNewYearPromote_PeitItemId[1] = 200553  --普通表情1悠嘻猴坐骑
	tNewYearPromote_PeitItemId[2] = 200554  --普通表情2悠嘻猴坐骑
	tNewYearPromote_PeitItemId[3] = 200555  --普通表情3悠嘻猴坐骑
	tNewYearPromote_PeitItemId[4] = 200556  --普通表情4悠嘻猴坐骑
	tNewYearPromote_PeitItemId[5] = 200557  --普通表情5悠嘻猴坐骑
	tNewYearPromote_PeitItemId[6] = 200558  --普通表情6悠嘻猴坐骑
	tNewYearPromote_PeitItemId[7] = 200559  --忍者男悠嘻猴坐骑
	tNewYearPromote_PeitItemId[8] = 200560  --忍者女悠嘻猴坐骑

local tNewYearPromote_MaskItemId = {}
	tNewYearPromote_MaskItemId[1] = 3008593
	tNewYearPromote_MaskItemId[2] = 3008594
	tNewYearPromote_MaskItemId[3] = 3008595
	tNewYearPromote_MaskItemId[4] = 3008596
	tNewYearPromote_MaskItemId[5] = 3008597
	tNewYearPromote_MaskItemId[6] = 3008598
	
	--打开豪华悠嘻猴坐骑套包
local tNewYearPromote_OpenItem = {}
	tNewYearPromote_OpenItem[3008577] = {} 
	tNewYearPromote_OpenItem[3008577][1] = {200553,["Attr"]="0 1 0 0 0 0 0 1"}  --普通表情1悠嘻猴坐骑
	tNewYearPromote_OpenItem[3008577][2] = {3008593,["Attr"]="0 1"}  --6种普通表情道具
	tNewYearPromote_OpenItem[3008577][3] = {3008594,["Attr"]="0 1"}  
	tNewYearPromote_OpenItem[3008577][4] = {3008595,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577][5] = {3008596,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577][6] = {3008597,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577][7] = {3008598,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577][8] = {3008591,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577][9] = {3008592,["Attr"]="0 1"}
	tNewYearPromote_OpenItem[3008577]["Space"] = 8
	tNewYearPromote_OpenItem[3008577]["Log"] = "0,0,3008577,1,12000302,2,200553[3008593][3008594][3008595][3008596][3008597][3008598][3008591][3008592],1[1][1][1][1][1][1][1][1][1]"
	tNewYearPromote_OpenItem[3008577]["Effect"] = "angelwing"
--悠嘻猴坐骑礼包
	tNewYearPromote_OpenItem[3008578] = {}  
	tNewYearPromote_OpenItem[3008578][1] = {200553,["Attr"]="0 1 0 0 0 0 0 1"}
	tNewYearPromote_OpenItem[3008578]["Log"] = "0,0,3008578,1,12000302,2,200553,1"
	tNewYearPromote_OpenItem[3008578]["Effect"] = "angelwing"

--猴王天天献瑞礼包
	tNewYearPromote_OpenItem[3008702] = {}  
	tNewYearPromote_OpenItem[3008702][1] = {200559,["Attr"]="0 1 0 0 0 0 0 1"}
	tNewYearPromote_OpenItem[3008702]["Log"] = "0,0,3008702,1,12000302,2,200559,1"
	tNewYearPromote_OpenItem[3008702]["Effect"] = "angelwing"

--猴王西西献瑞礼包
	tNewYearPromote_OpenItem[3008703] = {}  
	tNewYearPromote_OpenItem[3008703][1] = {200560,["Attr"]="0 1 0 0 0 0 0 1"}
	tNewYearPromote_OpenItem[3008703]["Log"] = "0,0,3008703,1,12000302,2,200560,1"
	tNewYearPromote_OpenItem[3008703]["Effect"] = "angelwing"

--悠嘻猴坐骑分期礼包
	tNewYearPromote_OpenItem[3008579] = {}
	tNewYearPromote_OpenItem[3008579][1] = {200553,3008579,["Attr1"]="0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3",["Attr2"]="0 1 0 21600 1",["Stc"]=1,["Space"]=1}
	tNewYearPromote_OpenItem[3008579][2] = {200553,3008579,["Attr1"]="0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3",["Attr2"]="0 1 0 21600 1",["Stc"]=2,["Space"]=1}
	tNewYearPromote_OpenItem[3008579][3] = {200553,3008579,["Attr1"]="0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3",["Attr2"]="0 1 0 21600 1",["Stc"]=3,["Space"]=1}
	tNewYearPromote_OpenItem[3008579][4] = {200553,3008579,["Attr1"]="0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3",["Attr2"]="0 1 0 21600 1",["Stc"]=4,["Space"]=1}
	tNewYearPromote_OpenItem[3008579][5] = {200553,3008579,["Attr1"]="0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3",["Attr2"]="0 1 0 21600 1",["Stc"]=5,["Space"]=1}
	tNewYearPromote_OpenItem[3008579][6] = {200553,["Attr1"]="0 1 0 0 0 0 0 1",["Stc"]=0}
	tNewYearPromote_OpenItem[3008579]["Emoney"] = 988
	tNewYearPromote_OpenItem[3008579]["EmoneyLog"] = "250	4002	988	988	1	"
	
-----------碎片-----------
-- 3008588 悠嘻猴坐骑碎片
	tNewYearPromote_OpenItem[3008588] = {} 
	tNewYearPromote_OpenItem[3008588][1] = 200553
	tNewYearPromote_OpenItem[3008588]["Attr"] = "0 1 3 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearPromote_OpenItem[3008588]["Num"] = 15
	tNewYearPromote_OpenItem[3008588]["Effect"] = "angelwing"
	tNewYearPromote_OpenItem[3008588]["Amount"] = 1
	tNewYearPromote_OpenItem[3008588]["Log"] ={}
	tNewYearPromote_OpenItem[3008588]["EmoneyLog"] ={}
	tNewYearPromote_OpenItem[3008588]["Log"][1] = "0,0,3008588,15,12000302,1[3],%d,1"
	tNewYearPromote_OpenItem[3008588]["EmoneyLog"][1] = "350	20272	0	0	1	"
	
--3008589 高级表情道具碎片
	tNewYearPromote_OpenItem[3008589] = {} 
	tNewYearPromote_OpenItem[3008589][1] = 3008591
	tNewYearPromote_OpenItem[3008589][2] = 3008592
	tNewYearPromote_OpenItem[3008589]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearPromote_OpenItem[3008589]["Num"] = 20
	tNewYearPromote_OpenItem[3008589]["Effect"] = "angelwing"
	tNewYearPromote_OpenItem[3008589]["Amount"] = 2
	tNewYearPromote_OpenItem[3008589]["Log"] = {}
	tNewYearPromote_OpenItem[3008589]["EmoneyLog"] ={}
	tNewYearPromote_OpenItem[3008589]["Log"][1] = "0,0,3008589,20,12000302,1[4],%d,1"
	tNewYearPromote_OpenItem[3008589]["Log"][2] = "0,0,3008589,20,12000302,1[5],%d,1"
	tNewYearPromote_OpenItem[3008589]["EmoneyLog"][1] = "350	20273	0	0	1	"
	tNewYearPromote_OpenItem[3008589]["EmoneyLog"][2] = "350	20274	0	0	1	"
	
----3008590 普通表情道具碎片合成概率
 	local tNewYearPromote_ComposeGet = {}
	tNewYearPromote_ComposeGet["Attr"] = "0 1 3"
	tNewYearPromote_ComposeGet["Reward"] = {}
	tNewYearPromote_ComposeGet["Reward"][1] = {}
	tNewYearPromote_ComposeGet["Reward"][1]["ItemChanceSum"] = 10000

	tNewYearPromote_ComposeGet["Reward"][1][1] = {}
	tNewYearPromote_ComposeGet["Reward"][1][1]["RandomItemChanceType"] = 2
	tNewYearPromote_ComposeGet["Reward"][1][1]["ItemChance"] = 2000
	tNewYearPromote_ComposeGet["Reward"][1][1]["Item_1"] = 3008594
	
	tNewYearPromote_ComposeGet["Reward"][1][2] = {}
	tNewYearPromote_ComposeGet["Reward"][1][2]["RandomItemChanceType"] = 2
	tNewYearPromote_ComposeGet["Reward"][1][2]["ItemChance"] = 2000
	tNewYearPromote_ComposeGet["Reward"][1][2]["Item_1"] = 3008595
	
	tNewYearPromote_ComposeGet["Reward"][1][3] = {}
	tNewYearPromote_ComposeGet["Reward"][1][3]["RandomItemChanceType"] = 2
	tNewYearPromote_ComposeGet["Reward"][1][3]["ItemChance"] = 2000
	tNewYearPromote_ComposeGet["Reward"][1][3]["Item_1"] = 3008596

	tNewYearPromote_ComposeGet["Reward"][1][4] = {}
	tNewYearPromote_ComposeGet["Reward"][1][4]["RandomItemChanceType"] = 2
	tNewYearPromote_ComposeGet["Reward"][1][4]["ItemChance"] = 2000
	tNewYearPromote_ComposeGet["Reward"][1][4]["Item_1"] = 3008597

	tNewYearPromote_ComposeGet["Reward"][1][5] = {}
	tNewYearPromote_ComposeGet["Reward"][1][5]["RandomItemChanceType"] = 2
	tNewYearPromote_ComposeGet["Reward"][1][5]["ItemChance"] = 2000
	tNewYearPromote_ComposeGet["Reward"][1][5]["Item_1"] = 3008598

---根据面具id给坐骑
	tNewYearPromote_PropItem = {}
	tNewYearPromote_PropItem[3008591] = 200559
	tNewYearPromote_PropItem[3008592] = 200560
	tNewYearPromote_PropItem[3008593] = 200553
	tNewYearPromote_PropItem[3008594] = 200554
	tNewYearPromote_PropItem[3008595] = 200555
	tNewYearPromote_PropItem[3008596] = 200556
	tNewYearPromote_PropItem[3008597] = 200557
	tNewYearPromote_PropItem[3008598] = 200558
	tNewYearPromote_PropItem["Effect"] = "eidolon"
	tNewYearPromote_PropItem["Attr"]={}
	tNewYearPromote_PropItem["Attr"][1] = "0 1 0 0 0 0 0 1"
	tNewYearPromote_PropItem["Attr"][3] = "0 1 3 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3"

--log表
local tNewYearPromote_Log = {}
	tNewYearPromote_Log["Overtime"] ="0,0,%d,1,12000302,1,0,0"  --过期删除物品log
	tNewYearPromote_Log["OnTime"] = "0,0,0,0,12000302,2,200553,1"  --上线获得物品log
	tNewYearPromote_Log[3008590] = "0,0,3008590,5,12000302,2,%d,1"  --普通碎片合成log
	tNewYearPromote_Log["Success"] = "0,0,%d,1,12000302,2,%d,2"   -- 赌碎片成功
	tNewYearPromote_Log["Fail"] = "0,0,%d,1,12000302,1,0,0"   --赌碎片失败
	tNewYearPromote_Log[1] = "988,0,0,0,12000302,2,200553,1"  --分期礼包前5期
	tNewYearPromote_Log[2] = "988,0,3008579,1,12000302,2,200553,1" --第6期
	tNewYearPromote_Log["Compose"] = "0,0,%d[%d],1[1],12000302,2,%d,1" --面具
	tNewYearPromote_Log["Banana"] = "0,0,3008609,1,12000302,2,12,20" --面具
	tNewYearPromote_Log["ExchangeStrength"] = "0,0,%d,1,12000302,2,12,%d" -- 兑换气力值
	
	tNewYearPromote_Log["DatePack"] = {}
	tNewYearPromote_Log["DatePack"][1] = "350	20278	988	988	1	"  --分期礼包前5期
	tNewYearPromote_Log["DatePack"][2] = "350	20279	988	988	1	" --第6期
	
	tNewYearPromote_Log["ComposeMask"] = "350	20280	0	0	1	"  --普通碎片合成log

local tNewYearPromote_Data = {}
	tNewYearPromote_Data["Now_Time"] = "2016-08-25 00:00 2016-09-07 23:59"
	tNewYearPromote_Data["Space"] = 1
	tNewYearPromote_Data["StrengthValue"] = 20
	tNewYearPromote_Data["NeedNum"] = 5  --普通碎片需要的数量
	tNewYearPromote_Data["Attr"] = "0 1 3 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3"  ---上线给坐骑属性
	tNewYearPromote_Data["Effect"] = "angelwing"
	tNewYearPromote_Data["Attr_1"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"  ---普通碎片合成物品属性
	tNewYearPromote_Data["NeedLevel"] = 80
	tNewYearPromote_Data["NeedMetempsychosis"] = 0
	tNewYearPromote_Data["MapId"] = 1002
	tNewYearPromote_Data["nPosX"] = 255
	tNewYearPromote_Data["nPosY"] = 229
	tNewYearPromote_Data["NpcId"] = 19080
	tNewYearPromote_Data["ItemId"] = 3008590
	tNewYearPromote_Data["Attr_2"] = "0 5"
	tNewYearPromote_Data["Space2"] = 2
	
	-- 新增 面具可兑换气力值
	tNewYearPromote_Data["ExchangeStrength"] = {}
	tNewYearPromote_Data["ExchangeStrength"][3008591] = 2000
	tNewYearPromote_Data["ExchangeStrength"][3008592] = 2000
	tNewYearPromote_Data["ExchangeStrength"][3008593] = 200
	tNewYearPromote_Data["ExchangeStrength"][3008594] = 200
	tNewYearPromote_Data["ExchangeStrength"][3008595] = 200
	tNewYearPromote_Data["ExchangeStrength"][3008596] = 200
	tNewYearPromote_Data["ExchangeStrength"][3008597] = 200
	tNewYearPromote_Data["ExchangeStrength"][3008598] = 200
	
 local tNewYearPromote_Stc = {}
 --记录分期礼包次数
	tNewYearPromote_Stc["StageTime"] = {}
	tNewYearPromote_Stc["StageTime"]["EventType"] = 141
	tNewYearPromote_Stc["StageTime"]["DataType"] = 60
	tNewYearPromote_Stc["StageTime"]["Data"] = 5
--记录上线获得坐骑
	tNewYearPromote_Stc["OnTime"] = {}
	tNewYearPromote_Stc["OnTime"]["EventType"] = 141
	tNewYearPromote_Stc["OnTime"]["DataType"] = 62
	tNewYearPromote_Stc["OnTime"]["Data"] = 1
	
----------------------------------------上线获得坐骑-------------------------------------------
function NewYearPromote_OnTime()
	local nOnTimeEvent = tNewYearPromote_Stc["OnTime"]["EventType"]
	local nOnTimeData = tNewYearPromote_Stc["OnTime"]["DataType"]
	
	if not Sys_ChkFullTime(tNewYearPromote_Data["Now_Time"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNewYearPromote_Data["NeedLevel"],tNewYearPromote_Data["NeedMetempsychosis"]) then
		return
	end

	if Task_ChkStcValue(nOnTimeEvent,nOnTimeData,">=",tNewYearPromote_Stc["OnTime"]["Data"]) then
		return
	end
	
	---判断背包空间
	if not User_CheckLeftSpace(tNewYearPromote_Data["Space2"]) then
		User_TalkChannel2005(tNewYearPromote_Text["NotSpace"][200553]) --出提示
		return
	end
	
	Task_SetStatistic(nOnTimeEvent,nOnTimeData,tNewYearPromote_Stc["OnTime"]["Data"],1,0)
	Task_SetStcTimestamp(nOnTimeEvent,nOnTimeData,0)

	Item_AddNewItem(tNewYearPromote_Data["ItemId"],tNewYearPromote_Data["Attr_2"])
	Item_AddNewItem(tNewYearPromote_PeitItemId[1],tNewYearPromote_Data["Attr"]) --永久呆萌猴坐骑赠
	-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_PeitItemId[1])   ----判断称号是否给过
	Sys_SaveActionFestivalLog(tNewYearPromote_Log["OnTime"])
	User_EffectAdd("self",tNewYearPromote_Data["Effect"])  --光效
	User_TalkChannel2005(tNewYearPromote_Text["MsgBox"][200553]) --出提示
end

--------------------------------------物品模板----------------------------------------------
---3008577 - 3008578
function NewYearPromote_OpenItem(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--检测背包空间
	if tNewYearPromote_OpenItem[nItemId]["Space"] ~= nil then
		if not User_CheckLeftSpace(tNewYearPromote_OpenItem[nItemId]["Space"]) then
			User_TalkChannel2005(tNewYearPromote_Text["NotSpace"][3008577]) --出提示
			return
		end
	end

	if Item_DelItem(nItemId) then
		for i=1,#tNewYearPromote_OpenItem[nItemId] do
			local nAddItemId = tNewYearPromote_OpenItem[nItemId][i][1]
			local sAttr = tNewYearPromote_OpenItem[nItemId][i]["Attr"]
			-- if tNewYearPromote_Flag[nAddItemId] then
				-- NewYearPromote_Npc_GetTiTle(nAddItemId)   ----判断称号是否给过
			-- end
			Item_AddNewItem(nAddItemId,sAttr)
		end
		Sys_SaveActionFestivalLog(tNewYearPromote_OpenItem[nItemId]["Log"])
		User_TalkChannel2005(tNewYearPromote_Text["MsgBox"][nItemId]) --出提示
		User_EffectAdd("self",tNewYearPromote_OpenItem[nItemId]["Effect"]) --光效
	end
end

--过期删除物品函数封装
function NewYearPromote_OverTimeDelItem(nItemId,sItemName)
	if not Sys_ChkFullTime(tNewYearPromote_Data["Now_Time"]) then
		if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
			local sText = string.format(tNewYearPromote_Text["Overtime"],sItemName)
			local sLog = string.format(tNewYearPromote_Log["Overtime"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(sText)
		end
		return true
	end
		return false
end

--分期礼包 3008579
function NewYearPromote_StageItem(nItemId,sItemName)
	-- if NewYearPromote_OverTimeDelItem(nItemId,sItemName) then
		-- return
	-- end
	local nStageTimeEvent = tNewYearPromote_Stc["StageTime"]["EventType"]
	local nStageTimeData = tNewYearPromote_Stc["StageTime"]["DataType"]
	local nStageTimeStc = Get_UserStatisticValue(nStageTimeEvent,nStageTimeData)
	if nStageTimeStc < tNewYearPromote_Stc["StageTime"]["Data"] then --出不同对白
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		LinkItemGossipFunc_New(nItemId,"1-2")
	end
end 

function NewYearPromote_StageItemopen(nItemId,nTime)
local nStageTimeEvent = tNewYearPromote_Stc["StageTime"]["EventType"]
local nStageTimeData = tNewYearPromote_Stc["StageTime"]["DataType"]
local nStageTimeStc = Get_UserStatisticValue(nStageTimeEvent,nStageTimeData)+1
local nEmoney = Get_UserEMoney() 
local nNeedEmoney = tNewYearPromote_OpenItem[nItemId]["Emoney"]
	if nEmoney < nNeedEmoney then
		User_TalkChannel2005(tNewYearPromote_Text["NoEmoney"])
		return
	end
	if tNewYearPromote_OpenItem[nItemId][nStageTimeStc]["Space"]~= nil then
		if not User_CheckLeftSpace(tNewYearPromote_OpenItem[nItemId][nStageTimeStc]["Space"]) then
			User_TalkChannel2005(tNewYearPromote_Text[nItemId]["NoSpace"])
			return
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) and User_AddEMoney(-nNeedEmoney) then
		Sys_SaveEmoneyBuy(tNewYearPromote_OpenItem[3008579]["EmoneyLog"])  ---emoneybuglog
		Task_SetStatistic(nStageTimeEvent,nStageTimeData,tNewYearPromote_OpenItem[nItemId][nStageTimeStc]["Stc"],1,0)
		-- if nStageTimeStc == 6 then  -------判断称号是否给过
			-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_OpenItem[nItemId][nStageTimeStc][1])
		-- end
		Item_AddNewItem(tNewYearPromote_OpenItem[nItemId][nStageTimeStc][1],tNewYearPromote_OpenItem[nItemId][nStageTimeStc]["Attr1"])
		if tNewYearPromote_OpenItem[nItemId][nStageTimeStc][2] ~= nil then
			Item_AddNewItem(tNewYearPromote_OpenItem[nItemId][nStageTimeStc][2],tNewYearPromote_OpenItem[nItemId][nStageTimeStc]["Attr2"])
		end
		Sys_SaveActionFestivalLog(tNewYearPromote_Log[nTime])
		Sys_SaveEmoneyBuy(tNewYearPromote_Log["DatePack"][nTime])
		
		User_TalkChannel2005(tNewYearPromote_Text[nItemId][nTime])
	end
end

--3008588 悠嘻猴坐骑碎片
function NewYearPromote_UseComposeItem(nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
--过期删除物品
	if NewYearPromote_OverTimeDelItem(nItemId,sItemName) then
		return
	end

	if not Item_ChkItem(nItemId) then
		-- User_TalkChannel2005(tNewYearPromote_Text["MsgBox"][nItemId])
		return
	end
	Sys_DialogText(tNewYearPromote_Text[nItemId]["Text111"])
	Sys_DialogText(tNewYearPromote_Text[nItemId]["Text112"])
	Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option1"],"</F>NewYearPromote_GamblingItem</N>" .. nItemId)
	Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option2"],"</F>NewYearPromote_ComposeItem</N>" .. nItemId)
	Sys_DialogEnd()
end

--A、1个（48%几率变成2个）。
function NewYearPromote_GamblingItem(nItemId)
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tNewYearPromote_Text["MsgBox"][nItemId])
		return
	end
	if not User_CheckLeftSpace(tNewYearPromote_Data["Space"]) then
		User_TalkChannel2005(tNewYearPromote_Text[3008588]["NotSpace"]) --出提示
		return
	end

	--成功
	if Sys_Random(48,100) then
		Item_AddNewItem(nItemId,"0 1")
		local sLog = string.format(tNewYearPromote_Log["Success"],nItemId,nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_EffectAdd("self",tNewYearPromote_Data["Effect"])
		Sys_DialogText(tNewYearPromote_Text[nItemId]["Text131"])
		Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option4"],"</F>NewYearPromote_UseComposeItem</N>" .. nItemId)
		Sys_DialogEnd()
		return
	else
	--失败
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tNewYearPromote_Log["Fail"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_DialogText(tNewYearPromote_Text[nItemId]["Text121"])
			Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option3"],"</F>NewYearPromote_UseComposeItem</N>" .. nItemId)
			Sys_DialogEnd()
		end
	end
end

--B、5个（合成普通灵猴面具）。20个合成为高级表情道具。15个可以合成为永久1%普通表情1神佑悠嘻猴坐骑（赠）。
function NewYearPromote_ComposeItem(nItemId)
---判断物品
	if tNewYearPromote_Flag[nItemId] then  --普通表情道具碎片合成
		NewYearPromote_CommonBits(nItemId)
		return
	end

	local nNum = tNewYearPromote_OpenItem[nItemId]["Num"]  --合成碎片需要的数量
--检测物品
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_DialogText(tNewYearPromote_Text[nItemId]["Text141"]) 
		Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option5"],"</F>NULL")
		Sys_DialogEnd()
		return
	end
--判断背包
	if not User_CheckLeftSpace(tNewYearPromote_Data["Space"]) then
		User_TalkChannel2005(tNewYearPromote_Text[3008588]["NotSpace"]) --出提示
		return
	end

--随机物品
	if Item_DelMulItem(nItemId,nItemId,nNum) then
		local nItemFlag = math.random(1,tNewYearPromote_OpenItem[nItemId]["Amount"])
		local nAddItemId = tNewYearPromote_OpenItem[nItemId][nItemFlag]
		-- if tNewYearPromote_Flag[nAddItemId] then ---判断给的是坐骑
			-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_OpenItem[nItemId][nItemFlag]) ------判断称号是否给过
		-- end
		Item_AddNewItem(nAddItemId,tNewYearPromote_OpenItem[nItemId]["Attr"])
		User_TalkChannel2005(tNewYearPromote_Text[nItemId][nItemFlag]) --出提示
		if tNewYearPromote_OpenItem[nItemId]["Log"][nItemFlag] ~= nil then --判断log是否为空
			local sLog = string.format(tNewYearPromote_OpenItem[nItemId]["Log"][nItemFlag],nAddItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		if tNewYearPromote_OpenItem[nItemId]["EmoneyLog"][nItemFlag] ~= nil then --判断log是否为空
			local sLog = tNewYearPromote_OpenItem[nItemId]["EmoneyLog"][nItemFlag]
			Sys_SaveEmoneyBuy(sLog)
		end
		
		User_EffectAdd("self",tNewYearPromote_OpenItem[nItemId]["Effect"]) --光效
	end
end

--普通表情道具碎片合成
function NewYearPromote_CommonBits(nItemId)
	local nNum = tNewYearPromote_Data["NeedNum"]  --合成碎片需要的数量
--检测物品
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_DialogText(tNewYearPromote_Text[nItemId]["Text141"]) 
		Sys_DialogOption(tNewYearPromote_Text[nItemId]["Option5"],"</F>NULL")
		Sys_DialogEnd()
		return
	end
--判断背包
	if not User_CheckLeftSpace(tNewYearPromote_Data["Space"]) then
		User_TalkChannel2005(tNewYearPromote_Text[3008588]["NotSpace"]) --出提示
		return
	end
	if Item_DelMulItem(nItemId,nItemId,nNum) then
		local flat,tNum = Probabil_RandomAward(tNewYearPromote_ComposeGet["Reward"],1)  
		local nAddItemId = tNum[1]["tAward"][1]["Item_1"]
		Item_AddNewItem(nAddItemId,tNewYearPromote_ComposeGet["Attr"])
		User_TalkChannel2005(tNewYearPromote_Text[nItemId][nAddItemId]) --出提示
		local sLog = string.format(tNewYearPromote_Log[3008590],nAddItemId)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tNewYearPromote_Log["ComposeMask"])
		User_EffectAdd("self",tNewYearPromote_Data["Effect"]) --光效
	end
end

--3008591-3008598 忍者男表情道具-普通表情6道具
function NewYearPromote_PropItem(nItemId)
	local nStrength = tNewYearPromote_Data["ExchangeStrength"][nItemId]
	Sys_DialogText(tNewYearPromote_Text[nItemId]["Text111"])
	Sys_DialogText(tNewYearPromote_Text[nItemId]["Text112"])
	Sys_DialogText(tNewYearPromote_Text[nItemId]["Text113"])
	Sys_DialogOption(tNewYearPromote_Text[3008591]["Option1"],"</F>NewYearPromote_PropConfirm</N>" .. nItemId)
	Sys_DialogOption(string.format(tNewYearPromote_Text[3008591]["Option3"],nStrength),"</F>NewYearPromote_ExchangeStrenth</N>" .. nItemId .. "</N>" .. nStrength)
	-- Sys_DialogOption(tNewYearPromote_Text[3008591]["Option2"],"</F>NULL")
	Sys_DialogEnd()
end

function NewYearPromote_PropConfirm(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nPropItemId = tNewYearPromote_PropItem[nItemId]
	local sName = Get_ItemtypeName(nPropItemId)
----检测背包是否已有要变身的坐骑
	if  Item_ChkMulItem(tNewYearPromote_PropItem[nItemId],tNewYearPromote_PropItem[nItemId],1,1,0,0,0)then

		local sText2 = string.format(tNewYearPromote_Text["MsgBox"]["Geted"],sName)
		User_TalkChannel2005(sText2)
		return
	end

	if Item_ChkMulItem(200559,200559,1,1,0,0,0) then --天天
		local sText = string.format(tNewYearPromote_Text["TianTian"],sName)
		Sys_DialogText(sText)
		Sys_DialogOption(tNewYearPromote_Text["OptionTian1"],"</F>NewYearPromote_PropConfirm2</N>" .. nItemId .. "</N>" .. 200559)
		Sys_DialogOption(tNewYearPromote_Text["OptionTian2"],"</F>NULL")
		Sys_DialogEnd()
		return
	end
	if Item_ChkMulItem(200560,200560,1,1,0,0,0) then --西西
		local sText = string.format(tNewYearPromote_Text["XiXi"],sName)
		Sys_DialogText(sText)
		Sys_DialogOption(tNewYearPromote_Text["OptionTian1"],"</F>NewYearPromote_PropConfirm2</N>" .. nItemId .. "</N>" .. 200560)
		Sys_DialogOption(tNewYearPromote_Text["OptionTian2"],"</F>NULL")
		Sys_DialogEnd()
		return
	end
	NewYearPromote_PropConfirm1(nItemId) --其他坐骑
end

function NewYearPromote_PropConfirm2(nItemId,nItem1)
	if not (Item_ChkItem(nItemId) and Item_ChkItem(nItem1)) then
		return
	end
	local nFlag = 0
	if Item_ChkMulItem(nItem1,nItem1,1,1,0,0,0) then
		if Item_ChkMulItem(nItem1,nItem1,1,2,0,0,0) then
			nFlag = 2  --2是赠品
			-- nItem1 = i
			
		else  --0是非赠品
			nFlag = 0
			-- nItem1 = i
			
		end
	end
	-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_PropItem[nItemId])
	if Item_DelMulItem(nItem1,nItem1,1,nFlag,0,0,0) and  Item_DelItem(nItemId,1)then
		-- local sAttr = string.format (tNewYearPromote_PropItem["Attr"][nFlag+1],nTime)
		Item_AddNewItem(tNewYearPromote_PropItem[nItemId],tNewYearPromote_PropItem["Attr"][nFlag+1])
		User_TalkChannel2005(tNewYearPromote_Text[nItemId]["Success"])
		User_EffectAdd("self",tNewYearPromote_PropItem["Effect"])  --光效
		local sLog = string.format(tNewYearPromote_Log["Compose"],nItemId,nItem1,tNewYearPromote_PropItem[nItemId])
		Sys_SaveActionFestivalLog(sLog)

	end
end

function NewYearPromote_PropConfirm1(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nFlag = 0
	local nItem1 = 0  --要删除的坐骑
	local nTime = 0
	local nSavetime = 0
--检测物品属性赠品或非赠品
		
	for k,i in pairs(tNewYearPromote_PeitItemId) do
		if Item_ChkMulItem(i,i,1,1,0,0,0) then
			if Item_ChkMulItem(i,i,1,2,0,0,0) then
				nFlag = 2  --2是赠品
				nItem1 = i
				break
			else  --0是非赠品
				nFlag = 0
				nItem1 = i
				break
			end
		end
	end
	
	if nItem1 == 0 then
		User_TalkChannel2005(tNewYearPromote_Text[3008591]["Fail"])
		return
	end
-- -- 判断称号是否给过
	-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_PropItem[nItemId])
	if Item_DelMulItem(nItem1,nItem1,1,nFlag,0,0,0) and  Item_DelItem(nItemId,1)then
		-- local sAttr = string.format (tNewYearPromote_PropItem["Attr"][nFlag+1],nTime)
		Item_AddNewItem(tNewYearPromote_PropItem[nItemId],tNewYearPromote_PropItem["Attr"][nFlag+1])
		User_TalkChannel2005(tNewYearPromote_Text[nItemId]["Success"])
		User_EffectAdd("self",tNewYearPromote_PropItem["Effect"])  --光效
		local sLog = string.format(tNewYearPromote_Log["Compose"],nItemId,nItem1,tNewYearPromote_PropItem[nItemId])
		Sys_SaveActionFestivalLog(sLog)

	end
	
end

-- 兑换气力值
function NewYearPromote_ExchangeStrenth(nItemId,nStrength)
	local sName = Get_ItemtypeName(nItemId)
	Sys_DialogText(string.format(tNewYearPromote_Text[3008591]["Text211"],sName,nStrength))
	Sys_DialogOption(tNewYearPromote_Text[3008591]["Option4"],"</F>NewYearPromote_SureToExchange</N>" .. nItemId .. "</N>" .. nStrength)
	Sys_DialogOption(tNewYearPromote_Text[3008591]["Option5"],"</F>NULL")
	Sys_DialogEnd()
end

-- 二次确认是否兑换气力值
function NewYearPromote_SureToExchange(nItemId,nStrength)
	local sName = Get_ItemtypeName(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddStrengthValue(nStrength)  --填加气力值
		User_TalkChannel2005(string.format(tNewYearPromote_Text[3008591]["Strength"],nStrength))  
		Sys_SaveActionFestivalLog(string.format(tNewYearPromote_Log["ExchangeStrength"],nItemId,nStrength))
		User_EffectAdd("self",tNewYearPromote_Data["Effect"])
	else
		User_TalkChannel2005(string.format(tNewYearPromote_Text[3008591]["NoItem"],sName))
	end
end

---点击香蕉
function NewYearPromote_BananaItem(nItemId)
	-- 检测时间
	if not Sys_ChkFullTime(tNewYearPromote_Data["Now_Time"]) then
		if Item_DelItem(nItemId) then
			User_AddStrengthValue(tNewYearPromote_Data["StrengthValue"])  --填加气力值
			User_TalkChannel2005(tNewYearPromote_Text["MsgBox"]["StrengthValue"])  
			Sys_SaveActionFestivalLog(tNewYearPromote_Log["Banana"])
		end
		return
	end
	local nMapId = tNewYearPromote_Data["MapId"]
	local nPosX = tNewYearPromote_Data["nPosX"]
	local nPosY = tNewYearPromote_Data["nPosY"]
	local NpcId = tNewYearPromote_Data["NpcId"]

	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,NpcId)
end

--------------------------------------物品模板----------------------------------------------
-- 3008577 豪华悠嘻猴坐骑套包
tItem[3008577] = tItem[3008577] or {}
tItem[3008577]["Function"] = function(nItemId,sItemName)
	NewYearPromote_OpenItem(nItemId)
end
--3008578 悠嘻猴坐骑礼包
tItem[3008578] = tItem[3008577] or {}
-- 猴王天天献瑞礼包 3008702
tItem[3008702] = tItem[3008577] or {}
-- 猴王西西献瑞礼包 3008703
tItem[3008703] = tItem[3008577] or {}

--3008579 悠嘻猴坐骑分期礼包
tItem[3008579] = tItem[3008579] or {}
tItem[3008579]["Function"] = function(nItemId,sItemName)
	NewYearPromote_StageItem(nItemId,sItemName)
end
tItem[3008579]["Text1-1"] = {111}
tItem[3008579]["Text111"] = tNewYearPromote_Text[3008579]["Text111"]
tItem[3008579]["tOption1-1"] = {1,2}
tItem[3008579]["Option1"] = tNewYearPromote_Text[3008579]["Option1"]
tItem[3008579]["Option2"] = tNewYearPromote_Text[3008579]["Option2"]
tItem[3008579]["OptionPoint1"] = "1-3"

tItem[3008579]["Text1-2"] = {121}
tItem[3008579]["Text121"] = tNewYearPromote_Text[3008579]["Text121"]
tItem[3008579]["tOption1-2"] = {3,4}
tItem[3008579]["Option3"] = tNewYearPromote_Text[3008579]["Option3"]
tItem[3008579]["Option4"] = tNewYearPromote_Text[3008579]["Option4"]
tItem[3008579]["OptionPoint3"] = "1-4"

tItem[3008579]["Text1-3"] = {131}
tItem[3008579]["Text131"] = tNewYearPromote_Text[3008579]["Text131"]
tItem[3008579]["tOption1-3"] = {5,6}
tItem[3008579]["Option5"] = tNewYearPromote_Text[3008579]["Option5"]
tItem[3008579]["Option6"] = tNewYearPromote_Text[3008579]["Option6"]
tItem[3008579]["OptionFunc5"] = "NewYearPromote_StageItemopen</N>3008579</N>1"

tItem[3008579]["Text1-4"] = {141}
tItem[3008579]["Text141"] = tNewYearPromote_Text[3008579]["Text131"]
tItem[3008579]["tOption1-4"] = {7,6}
tItem[3008579]["Option7"] = tNewYearPromote_Text[3008579]["Option5"]
tItem[3008579]["OptionFunc7"] = "NewYearPromote_StageItemopen</N>3008579</N>2"

-- 3008588 悠嘻猴坐骑碎片
tItem[3008588] = tItem[3008588] or {}
tItem[3008588]["Function"] = function(nItemId,sItemName)
	NewYearPromote_UseComposeItem(nItemId)
end
--3008589 3008590 高级表情道具碎片 普通表情道具碎片
for i=3008589,3008590 do
	tItem[i] = tItem[3008588]
end

-- 3008591-3008598 忍者男表情道具-普通表情6道具
tItem[3008591] = tItem[3008591] or {}
tItem[3008591]["Function"] = function(nItemId,sItemName)
	NewYearPromote_PropItem(nItemId)
end
for i=3008592,3008598 do
	tItem[i] = tItem[3008591]
end

---香蕉
tItem[3008609] = tItem[3008609] or {}
tItem[3008609]["Function"] = function(nItemId,sItemName)
	NewYearPromote_BananaItem(nItemId)
end

-- -- 上线随机获得坐骑
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,NewYearPromote_OnTime)

