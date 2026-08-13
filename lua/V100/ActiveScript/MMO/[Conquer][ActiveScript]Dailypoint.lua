------------------------------------------------------------------------------------
--Name：161028[简体征服][活动脚本]大型MMO互动--日常得积分
--Creator:      翁增锐
--Created:     2016/10/28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini:40372
--12000546
--命名：Dailypoint_

----------------------------------表配置部分--------------------------------------------
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
	tDailypoint_Data["ActivetyUseTime"] = tActivityTime["LinLang"]["ChangeTime"]
	tDailypoint_Data["Cardpiece"] = 3301261
	tDailypoint_Data["Roulette"] = 3767
	tDailypoint_Data["NeedSpace"] = 1
	tDailypoint_Data["NeedNum"] = 3
	
	tDailypoint_Data[1] ={}
	tDailypoint_Data[1]["DrawId"] = 3301261
	tDailypoint_Data[1]["Attr"] = "0 1"
	tDailypoint_Data[1]["Num"] = 1
	
	tDailypoint_Data[2] ={}
	tDailypoint_Data[2]["DrawId"] = 3301261
	tDailypoint_Data[2]["Attr"] = "0 1"
	tDailypoint_Data[2]["Num"] = 1
	
	tDailypoint_Data[3] ={}
	tDailypoint_Data[3]["DrawId"] = 3301261
	tDailypoint_Data[3]["Attr"] = "0 1"
	tDailypoint_Data[3]["Num"] = 1
	
	tDailypoint_Data[4] ={}
	tDailypoint_Data[4]["DrawId"] = 3301262
	tDailypoint_Data[4]["Attr"] = "0 1"
	tDailypoint_Data[4]["Num"] = 1
	
	tDailypoint_Data[5] ={}
	tDailypoint_Data[5]["DrawId"] = 3301262
	tDailypoint_Data[5]["Attr"] = "0 1"
	tDailypoint_Data[5]["Num"] = 1
	
	tDailypoint_Data[6] ={}
	tDailypoint_Data[6]["DrawId"] = 3301262
	tDailypoint_Data[6]["Attr"] = "0 1"
	tDailypoint_Data[6]["Num"] = 1
	
	tDailypoint_Data[7] ={}
	tDailypoint_Data[7]["DrawId"] = 3301262
	tDailypoint_Data[7]["Attr"] = "0 1"
	tDailypoint_Data[7]["Num"] = 1
	
	tDailypoint_Data[8] ={}
	tDailypoint_Data[8]["DrawId"] = 3301262
	tDailypoint_Data[8]["Attr"] = "0 1"
	tDailypoint_Data[8]["Num"] = 1
	
	tDailypoint_Data[9] ={}
	tDailypoint_Data[9]["DrawId"] = 3301262
	tDailypoint_Data[9]["Attr"] = "0 1"
	tDailypoint_Data[9]["Num"] = 1
	
	tDailypoint_Data[10] ={}
	tDailypoint_Data[10]["DrawId"] = 3301262
	tDailypoint_Data[10]["Attr"] = "0 6"
	tDailypoint_Data[10]["Num"] = 6
	
	tDailypoint_Data[11] ={}
	tDailypoint_Data[11]["DrawId"] = 3301262
	tDailypoint_Data[11]["Attr"] = "0 3"
	tDailypoint_Data[11]["Num"] = 3
	
	tDailypoint_Data[12] ={}
	tDailypoint_Data[12]["DrawId"] = 3301262
	tDailypoint_Data[12]["Attr"] = "0 2"
	tDailypoint_Data[12]["Num"] = 2
	

	
local tDailypoint_Compose = {}
--积分卡碎片合成随机积分卡
	tDailypoint_Compose[3301261] = {}
	tDailypoint_Compose[3301261]["DeleteItem"] = {}
	tDailypoint_Compose[3301261]["DeleteItem"][1] = {}
	tDailypoint_Compose[3301261]["DeleteItem"][1]["Id"] = 3301261
	tDailypoint_Compose[3301261]["DeleteItem"][1]["ItemNum"] = 3
	tDailypoint_Compose[3301261]["RewardItem"] = {}
	tDailypoint_Compose[3301261]["RewardItem"][1] = {}
	tDailypoint_Compose[3301261]["RewardItem"][1]["Id"] = 3301262
	tDailypoint_Compose[3301261]["RewardItem"][1]["Attr"] = "0 1"
	tDailypoint_Compose[3301261]["Log"] = "0,0,3301261,3,12000546,2,3301262,1"
	tDailypoint_Compose[3301261]["Talk"] = tDailypoint_Text[3301261]
	
local tDailypoint_Opengift = {}
--30积分卡
	tDailypoint_Opengift[3301263] = {}
	tDailypoint_Opengift[3301263]["DeleteItem"] = {}
	tDailypoint_Opengift[3301263]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301263]["DeleteItem"][1]["Id"] = 3301263
	tDailypoint_Opengift[3301263]["RewardItem"] = {}
	tDailypoint_Opengift[3301263]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301263]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301263]["RewardItem"][1]["Attr"] = "0 30"
	tDailypoint_Opengift[3301263]["Log"] = "0,0,3301263,1,12000546,2,3301255,30"
	tDailypoint_Opengift[3301263]["Talk"] = tDailypoint_Text[3301263]
	
--50积分卡
	tDailypoint_Opengift[3301264] = {}
	tDailypoint_Opengift[3301264]["DeleteItem"] = {}
	tDailypoint_Opengift[3301264]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301264]["DeleteItem"][1]["Id"] = 3301264
	tDailypoint_Opengift[3301264]["RewardItem"] = {}
	tDailypoint_Opengift[3301264]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301264]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301264]["RewardItem"][1]["Attr"] = "0 50"
	tDailypoint_Opengift[3301264]["Log"] = "0,0,3301264,1,12000546,2,3301255,50"
	tDailypoint_Opengift[3301264]["Talk"] = tDailypoint_Text[3301264]
	
--100积分卡
	tDailypoint_Opengift[3301265] = {}
	tDailypoint_Opengift[3301265]["DeleteItem"] = {}
	tDailypoint_Opengift[3301265]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301265]["DeleteItem"][1]["Id"] = 3301265
	tDailypoint_Opengift[3301265]["RewardItem"] = {}
	tDailypoint_Opengift[3301265]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301265]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301265]["RewardItem"][1]["Attr"] = "0 100"
	tDailypoint_Opengift[3301265]["Log"] = "0,0,3301265,1,12000546,2,3301255,100"
	tDailypoint_Opengift[3301265]["Talk"] = tDailypoint_Text[3301265]
	
--200积分卡
	tDailypoint_Opengift[3301266] = {}
	tDailypoint_Opengift[3301266]["DeleteItem"] = {}
	tDailypoint_Opengift[3301266]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301266]["DeleteItem"][1]["Id"] = 3301266
	tDailypoint_Opengift[3301266]["RewardItem"] = {}
	tDailypoint_Opengift[3301266]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301266]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301266]["RewardItem"][1]["Attr"] = "0 200"
	tDailypoint_Opengift[3301266]["Log"] = "0,0,3301266,1,12000546,2,3301255,200"
	tDailypoint_Opengift[3301266]["Talk"] = tDailypoint_Text[3301266]
	
--300积分卡
	tDailypoint_Opengift[3301267] = {}
	tDailypoint_Opengift[3301267]["DeleteItem"] = {}
	tDailypoint_Opengift[3301267]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301267]["DeleteItem"][1]["Id"] = 3301267
	tDailypoint_Opengift[3301267]["RewardItem"] = {}
	tDailypoint_Opengift[3301267]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301267]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301267]["RewardItem"][1]["Attr"] = "0 300"
	tDailypoint_Opengift[3301267]["Log"] = "0,0,3301267,1,12000546,2,3301255,300"
	tDailypoint_Opengift[3301267]["Talk"] = tDailypoint_Text[3301267]
	
--1000积分卡
	tDailypoint_Opengift[3301268] = {}
	tDailypoint_Opengift[3301268]["DeleteItem"] = {}
	tDailypoint_Opengift[3301268]["DeleteItem"][1] = {}
	tDailypoint_Opengift[3301268]["DeleteItem"][1]["Id"] = 3301268
	tDailypoint_Opengift[3301268]["RewardItem"] = {}
	tDailypoint_Opengift[3301268]["RewardItem"][1] = {}
	tDailypoint_Opengift[3301268]["RewardItem"][1]["Id"] = 3301255
	tDailypoint_Opengift[3301268]["RewardItem"][1]["Attr"] = "0 1000"
	tDailypoint_Opengift[3301268]["Log"] = "0,0,3301268,1,12000546,2,3301255,1000"
	tDailypoint_Opengift[3301268]["Talk"] = tDailypoint_Text[3301268]
	
local tDailypoint_Log = {}

	tDailypoint_Log["GetDraw"] = {}
	-- 正气令产出积分卡碎片
	tDailypoint_Log["GetDraw"][1] = "0,0,0,0,12000546,1[1],3301261,1"
	-- 参与5次个人竞技产出1张积分卡碎片
	tDailypoint_Log["GetDraw"][2] = "0,0,0,0,12000546,1[2],3301261,1"
	-- 参与5次组队竞技产出1张积分卡碎片
	tDailypoint_Log["GetDraw"][3] = "0,0,0,0,12000546,1[3],3301261,1"
	-- 决战冥城产出1张随机积分卡
	tDailypoint_Log["GetDraw"][4] = "0,0,0,0,12000546,1[4],3301262,1"
	-- 矿洞冒险产出1张随机积分卡
	tDailypoint_Log["GetDraw"][5] = "0,0,0,0,12000546,1[5],3301262,1"
	-- 战场杀敌产出1张随机积分卡
	tDailypoint_Log["GetDraw"][6] = "0,0,0,0,12000546,1[6],3301262,1"
	-- 赤龙杀怪产出1张随机积分卡
	tDailypoint_Log["GetDraw"][7] = "0,0,0,0,12000546,1[7],3301262,1"
	-- 炼制天机果产出1张随机积分卡
	tDailypoint_Log["GetDraw"][8] = "0,0,0,0,12000546,1[8],3301262,1"
	-- 组队，组队大众，精英PK赛8强包，产出积分卡
	tDailypoint_Log["GetDraw"][9] = "0,0,0,0,12000546,1[9],3301269,1"
	-- 组队，组队大众，精英PK赛第一名，产出积分卡*6
	tDailypoint_Log["GetDraw"][10] = "0,0,0,0,12000546,1[10],3301269,6"
	-- 组队，组队大众，精英PK赛第二名，产出积分卡*3
	tDailypoint_Log["GetDraw"][11] = "0,0,0,0,12000546,1[11],3301269,3"
	-- 组队，组队大众，精英PK赛第三名，产出积分卡*2
	tDailypoint_Log["GetDraw"][12] = "0,0,0,0,12000546,1[12],3301269,2"
	-- 物品过期删除log
	tDailypoint_Log["OverTime"] = "0,0,3301262,1,12000546,2,0,0"
----------------------------------逻辑部分---------------------------------------------
--积分卡碎片合成随机积分卡
function Dailypoint_Compose(nItemId)
	local nSpace = tDailypoint_Data["NeedSpace"]
	local nNum = tDailypoint_Data["NeedNum"]
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tDailypoint_Text["OpenPackFull"])
		return
	end
	if not Item_ChkMulItem(nItemId,nItemId,nNum)  then
		Sys_MsgBox(tDailypoint_Text["Less3"])
		return
	end
	RewardTemplate_UseItem(tDailypoint_Compose[nItemId])
end

function Dailypoint_RewardDraw(nIndex,nUserId)
	-- 活动时间结束
	if not Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		return
	end
	-- 金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	local nGiveItemId = tDailypoint_Data[nIndex]["DrawId"]
	local nGiveNum = tDailypoint_Data[nIndex]["Num"]
	local sItemName = Get_ItemtypeName(nGiveItemId)
	local sText = tDailypoint_Text["RewardDraw"]
	local sAttr =  tDailypoint_Data[nIndex]["Attr"]
	if Item_AddNewItem(nGiveItemId,sAttr,nUserId) then
		User_TalkChannel2005(string.format(sText,nGiveNum,sItemName),nUserId)
	end
	local sLog = tDailypoint_Log["GetDraw"][nIndex]
	Sys_SaveActionFestivalLog(sLog,nUserId)
end

--------------------------------------物品模块-------------------------------------------
--使用随机积分卡
tItem[3301262] = tItem[3301262] or {}
tItem[3301262]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tDailypoint_Data["ActivetyUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = tDailypoint_Log["OverTime"]
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tDailypoint_Text["OverTime"])
		end
		return
	end
	RouletteMould_Main(tDailypoint_Data["Roulette"])
end

-- 使用积分卡碎片
tItem[3301261] = tItem[3301261] or {}
tItem[3301261]["Function"] = function(nItemId,sItemName)
	Dailypoint_Compose(nItemId)
end

-- 使用积分卡
tItem[3301263] = tItem[3301263] or {}
tItem[3301263]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tDailypoint_Opengift[nItemId])
end
for i=3301264,3301268 do
	tItem[i] = tItem[3301263] or {}
end
