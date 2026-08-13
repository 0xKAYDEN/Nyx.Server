----------------------------------------------------------------------------
--Name:		[征服][任务脚本]揽月台.lua
--Purpose:	揽月台
--Creator: 	郑鋆
--Created:	2016/11/10
----------------------------------------------------------------------------

-- 命名前缀
-- Moon_

-- 常量表
local tMoon_Const = {}
	tMoon_Const["Money"] = 300
	tMoon_Const["Log"] = "0,0,1,300,18000145,2,0,0"
	-- 传送进去的坐标
	tMoon_Const["Cellx"] = 187
	tMoon_Const["Celly"] = 162

	-- 记录坐标点
	tMoon_Const["MapId"] = 1002
	tMoon_Const["Pointx"] = 410
	tMoon_Const["Pointy"] = 354
	
	-- 揽月仙子的坐标
	tMoon_Const["NPCMapId"] = 1002
	tMoon_Const["NPCPointx"] = 324
	tMoon_Const["NPCPointy"] = 548
	tMoon_Const["NPCRange"] = 10

-- 每个时间段对应的地图ID
local tMoon_MapId = {}
	tMoon_MapId[1] = {}
	tMoon_MapId[1]["Id"] = 1100
	tMoon_MapId[1]["MinDay"] = 1
	tMoon_MapId[1]["MaxDay"] = 3

	tMoon_MapId[2] = {}
	tMoon_MapId[2]["Id"] = 1101
	tMoon_MapId[2]["MinDay"] = 4
	tMoon_MapId[2]["MaxDay"] = 6

	tMoon_MapId[3] = {}
	tMoon_MapId[3]["Id"] = 1102
	tMoon_MapId[3]["MinDay"] = 7
	tMoon_MapId[3]["MaxDay"] = 9

	tMoon_MapId[4] = {}
	tMoon_MapId[4]["Id"] = 1103
	tMoon_MapId[4]["MinDay"] = 10
	tMoon_MapId[4]["MaxDay"] = 12

	tMoon_MapId[5] = {}
	tMoon_MapId[5]["Id"] = 1104
	tMoon_MapId[5]["MinDay"] = 13
	tMoon_MapId[5]["MaxDay"] = 15

	tMoon_MapId[6] = {}
	tMoon_MapId[6]["Id"] = 1105
	tMoon_MapId[6]["MinDay"] = 16
	tMoon_MapId[6]["MaxDay"] = 18

	tMoon_MapId[7] = {}
	tMoon_MapId[7]["Id"] = 1106
	tMoon_MapId[7]["MinDay"] = 19
	tMoon_MapId[7]["MaxDay"] = 21

	tMoon_MapId[8] = {}
	tMoon_MapId[8]["Id"] = 1107
	tMoon_MapId[8]["MinDay"] = 22
	tMoon_MapId[8]["MaxDay"] = 24

	tMoon_MapId[9] = {}
	tMoon_MapId[9]["Id"] = 1108
	tMoon_MapId[9]["MinDay"] = 25
	tMoon_MapId[9]["MaxDay"] = 27

	tMoon_MapId[10] = {}
	tMoon_MapId[10]["Id"] = 1109
	tMoon_MapId[10]["MinDay"] = 28
	tMoon_MapId[10]["MaxDay"] = 30

----------------------------------------------逻辑部分--------------------------------------------
function Moon_Main(nNpcId)
	-- 判断玩家是否在揽月仙子附近
	local nUserMapId = Get_UserMapId()
	
	if nUserMapId ~= tMoon_Const["NPCMapId"] then
		User_TalkChannel2005(tMoon_Text[nNpcId]["NoChange"])
		return
	end
	
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	
	if math.abs(nUserPosX - tMoon_Const["NPCPointx"]) > tMoon_Const["NPCRange"] or math.abs(nUserPosY - tMoon_Const["NPCPointy"]) > tMoon_Const["NPCRange"] then
		User_TalkChannel2005(tMoon_Text[nNpcId]["NoChange"])
		return
	end

	-- 判断玩家身上的银两数
	if not User_CanPutMoney2Bag(-tMoon_Const["Money"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	-- 扣除玩家身上的银两
	if not User_AddMoney(-tMoon_Const["Money"]) then
		return
	end
	
	-- 打log
	Sys_SaveActionTaskLog(tMoon_Const["Log"])
	
	local nMapId = tMoon_MapId[1]["Id"]
	local nYear,nMonth,nDay = CommonFunc_GetLunarTime(os.date("*t",os.time()))

	-- 判断要传送的是哪张地图
	for i,v in pairs (tMoon_MapId) do
		if nDay >= v["MinDay"] and nDay <= v["MaxDay"] then
			nMapId = v["Id"]
			break
		end
	end

	-- 切地图
	User_ChgMap(nMapId,tMoon_Const["Cellx"],tMoon_Const["Celly"])
	-- 记录坐标点
	User_RecordPoint(tMoon_Const["MapId"],tMoon_Const["Pointx"],tMoon_Const["Pointy"])
end

----------------------------------------------NPC配置---------------------------------------------
-- 揽月仙子
tNpcFace[804] = 116
tNpcGossip[19096] = tNpcGossip[19096] or DefaultNpc:new{}
tNpcGossip[19096]["OptionHidden"] = 1
tNpcGossip[19096]["DialogueText"] = tMoon_Text[19096]

tNpcGossip[19096]["Text1-1"] = {111,112,113}
tNpcGossip[19096]["tOption1-1"] = {1,2}
tNpcGossip[19096]["OptionPoint1"] = "2-1"

tNpcGossip[19096]["Text2-1"] = {211}
tNpcGossip[19096]["tOption2-1"] = {3,4}
tNpcGossip[19096]["OptionFunc3"] = "Moon_Main</N>19096"

tNpcGossip[19096]["Text3-1"] = {311}
tNpcGossip[19096]["tOption3-1"] = {5}
