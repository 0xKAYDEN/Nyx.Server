------------------------------------------------------------------------------------
--Name:			[阿拉伯征服][活动脚本]2015伊历新年活动之新年烟花大会
--Purpose:		2015伊历新年活动之新年烟花大会
--Creator:		张磊
--Created:		2015/06/09
------------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--需求：

--【阿拉伯征服】伊历新年活动制作
--活动时间：10.14-10.21
--请复用2014年伊历新年活动。
--做2套，优先lua制作，待9月底影响进度的前提下，用sql制作
--新年祈福----张磊制作
--天降幸运兽----丁晨制作
--守护古兰经----严振飞制作
--此单由张磊整合，活动气氛布置，总npc，还有多余出来的部分都有张磊处理。
--******************************************************************
--*郑江文(设计中心任务部脚本程序处端游业务组)在2015-06-08 11:03修改任务(任务号：5323926)时补充了如下需求：
--******************************************************************
--张磊改做，红包大放送和烟花大会两个活动。
--------------------------------------------------------------------------------

--	命名前缀
--	ArabicNewYear2015_Fireworks_

--------------------------------------------------------------------------------
--	掩码说明
--	stc掩码	
--	stc(135,44)	    <100 表示记录使用烟花的个数  == 100 表示完成任务了

--------------------------------------------------------------------------------

-- ##########################ID 替换
-- #17125		18669
-- #3189		3730
-- #10002324	12000128
-- #stc(129,26)	stc(135,44)
-- #3004758	3006889




--常量表配置
local ArabicNewYear2015_Fireworks_Cont = {}
	--活动时间
	ArabicNewYear2015_Fireworks_Cont["ActivityTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	ArabicNewYear2015_Fireworks_Cont["BeforeActivityTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]

	--玩家等级要求
	ArabicNewYear2015_Fireworks_Cont["Metempsychosis"] = 0
	ArabicNewYear2015_Fireworks_Cont["Level"] = 80
	ArabicNewYear2015_Fireworks_Cont["Level140"] = 140
	--背包空间	
	ArabicNewYear2015_Fireworks_Cont["BagSpace"] = 1

	--节日礼包相关
	ArabicNewYear2015_Fireworks_Cont["FestivalId"] = 3319

	--完成奖励
	ArabicNewYear2015_Fireworks_Cont["20Exp"] = 20
	ArabicNewYear2015_Fireworks_Cont["5Exp"] = 5
	ArabicNewYear2015_Fireworks_Cont["10Cul"] = 10
	ArabicNewYear2015_Fireworks_Cont["2Cul"] = 2
	
	--npc位置
	--18669 floria
	ArabicNewYear2015_Fireworks_Cont["NpcMapid"] = 1002
	ArabicNewYear2015_Fireworks_Cont["NpcCellx"] = 313
	ArabicNewYear2015_Fireworks_Cont["NpcCelly"] = 491
	
	--放烟花的坐标点
	ArabicNewYear2015_Fireworks_Cont["ActivityX"] = 371
	ArabicNewYear2015_Fireworks_Cont["ActivityY"] = 363
	
	--概率
	ArabicNewYear2015_Fireworks_Cont["nStart"] = 50
	ArabicNewYear2015_Fireworks_Cont["nEnd"] = 1000
	
	--燃放的烟花位置
	ArabicNewYear2015_Fireworks_Cont["X_Min"] = 368
	ArabicNewYear2015_Fireworks_Cont["X_Max"] = 374
	ArabicNewYear2015_Fireworks_Cont["Y_Min"] = 361
	ArabicNewYear2015_Fireworks_Cont["Y_Max"] = 366
	
	--燃放烟花的个数判断
	ArabicNewYear2015_Fireworks_Cont["Use19"] = 19
	ArabicNewYear2015_Fireworks_Cont["Use18"] = 18
	
	
local ArabicNewYear2015_Fireworks_Stc = {}
	
	ArabicNewYear2015_Fireworks_Stc["StcEvent"] = 135
	ArabicNewYear2015_Fireworks_Stc["StcType"] = 44
	ArabicNewYear2015_Fireworks_Stc["Complete"] = 100
	
	ArabicNewYear2015_Fireworks_Stc["Data_Used"] = 20
	
	
local ArabicNewYear2015_Fireworks_Item = {}
	--相关物品
	ArabicNewYear2015_Fireworks_Item["Item3006889"] = 3006889
	ArabicNewYear2015_Fireworks_Item["Item_num"] = 20

	--LOG 中记录 节日礼包的ID
	ArabicNewYear2015_Fireworks_Item["Item3003625"] = 3003625

--各种光效
local ArabicNewYear2015_Fireworks_Effect = {}

	ArabicNewYear2015_Fireworks_Effect[1] = {}
	ArabicNewYear2015_Fireworks_Effect[1][1] = "FF07"
	ArabicNewYear2015_Fireworks_Effect[1][2] = "FF12"
	ArabicNewYear2015_Fireworks_Effect[1][3] = "FF16"
	ArabicNewYear2015_Fireworks_Effect[1][4] = "FF17"
	ArabicNewYear2015_Fireworks_Effect[1][5] = "FF18"
	
	ArabicNewYear2015_Fireworks_Effect[2] = {}
	ArabicNewYear2015_Fireworks_Effect[2][1] = "role-select1"
	ArabicNewYear2015_Fireworks_Effect[2][2] = "role-select2"
	ArabicNewYear2015_Fireworks_Effect[2][3] = "role-select3"
	ArabicNewYear2015_Fireworks_Effect[2][4] = "role-select4"
	ArabicNewYear2015_Fireworks_Effect[2][5] = "zf2-e128"
	
--LOG 表
local ArabicNewYear2015_Fireworks_LOG = {}
	--接任务时领取LOG
	ArabicNewYear2015_Fireworks_LOG["FireworkLog"] = "0,0,%s,%s,12000128,2,%s,%s"
	ArabicNewYear2015_Fireworks_LOG["Complete"] = 12000128
	

--------------------------------------逻辑部分-----------------------------------------
--是否完成活动任务 --返回true 表示：当天已经完成任务
function ArabicNewYear2015_Fireworks_Complete()

	local nEvent = ArabicNewYear2015_Fireworks_Stc["StcEvent"]
	local nType = ArabicNewYear2015_Fireworks_Stc["StcType"]
	local nComplete = ArabicNewYear2015_Fireworks_Stc["Complete"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then	
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)			
			return false
		else		
			return true
		end
	else
		return false
	end
end

--带我到节日活动区域
function ArabicNewYear2015_Fireworks_FindWay(nNpcId)
	local nPosX = ArabicNewYear2015_Fireworks_Cont["ActivityX"]
	local nPosY = ArabicNewYear2015_Fireworks_Cont["ActivityY"]
	local nMapId = ArabicNewYear2015_Fireworks_Cont["NpcMapid"]
		
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

--怪物死亡

function ArabicNewYear2015_Fireworks_KillMonster() 
	if not Sys_ChkFullTime(ArabicNewYear2015_Fireworks_Cont["ActivityTime"]) then
		return
	end
	
	local nMetempsychosis = ArabicNewYear2015_Fireworks_Cont["Metempsychosis"]
	local nLevel = ArabicNewYear2015_Fireworks_Cont["Level"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	if ArabicNewYear2015_Fireworks_Complete() then
		return
	end
	
	local nItemId = ArabicNewYear2015_Fireworks_Item["Item3006889"]
	local nItem_num = ArabicNewYear2015_Fireworks_Item["Item_num"]
	
	if Item_ChkMulItem(nItemId,nItemId,nItem_num) then
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Fireworks_20"])
		return
	end
	
	local nSpace = ArabicNewYear2015_Fireworks_Cont["BagSpace"]
	
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	local nStartNum = ArabicNewYear2015_Fireworks_Cont["nStart"]
	local nEndNum = ArabicNewYear2015_Fireworks_Cont["nEnd"]
	
	if Sys_Random(nStartNum,nEndNum) then
		local nItemId = ArabicNewYear2015_Fireworks_Item["Item3006889"]
		Item_AddItem(nItemId)
		local str = string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],"0","0",tostring(nItemId),"1")
		Sys_SaveActionFestivalLog(str)
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Get_Firework"])
	end
end

--烟花使用
function ArabicNewYear2015_Fireworks_UseItem(nItemId)

	if not Sys_ChkFullTime(ArabicNewYear2015_Fireworks_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		return
	end

	local nMetempsychosis = ArabicNewYear2015_Fireworks_Cont["Metempsychosis"]
	local nLevel = ArabicNewYear2015_Fireworks_Cont["Level"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Less_Level"])
		return
	end
	
	if ArabicNewYear2015_Fireworks_Complete() then

		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Use_20Fireworks"])
		return
	end
	
	local nEvent = ArabicNewYear2015_Fireworks_Stc["StcEvent"]
	local nType = ArabicNewYear2015_Fireworks_Stc["StcType"]
	local nItem_use = ArabicNewYear2015_Fireworks_Stc["Data_Used"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nItem_use) then
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Use_20Fireworks"])
		return
	end
	
	local nMapId = ArabicNewYear2015_Fireworks_Cont["NpcMapid"]
	local nUserMapId = Get_UserMapId()
	
	if nMapId ~= nUserMapId then
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["MapError"])
		return
	end
	
	local nUser_X = Get_UserPositionX()
	local nUser_Y = Get_UserPositionY()
	
	if not (nUser_X >= ArabicNewYear2015_Fireworks_Cont["X_Min"] and nUser_X <= ArabicNewYear2015_Fireworks_Cont["X_Max"] and nUser_Y >= ArabicNewYear2015_Fireworks_Cont["Y_Min"] and nUser_Y <= ArabicNewYear2015_Fireworks_Cont["Y_Max"]) then
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["MapError"])
		return
	end
	
	--燃放烟花
	local nUse_19 = ArabicNewYear2015_Fireworks_Cont["Use19"]
	local nUse_18 = ArabicNewYear2015_Fireworks_Cont["Use18"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nUse_19) then			
		local nSpace = ArabicNewYear2015_Fireworks_Cont["BagSpace"]	
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["SpaceMsg"])
			return
		end
		
		Item_DelItem(nItemId)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStatistic(nEvent,nType,100,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		local nItem_Activity = ArabicNewYear2015_Fireworks_Item["Item3003625"]
		local str_Log = string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItemId),"1",tostring(nItem_Activity),"1")

		FestivalGeneralPackage_GetGift(ArabicNewYear2015_Fireworks_Cont["FestivalId"],ArabicNewYear2015_Fireworks_LOG["Complete"])
		Sys_SaveActionFestivalLog(str_Log)

	elseif Task_ChkStcValue(nEvent,nType,">=",nUse_18) then	
		Item_DelItem(nItemId)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["SpaceMsg"])
		local str_Log = string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItemId),"1","0","0")
		Sys_SaveActionFestivalLog(str_Log)		
	else
		Item_DelItem(nItemId)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		-- User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["SpaceMsg"])
		local str_Log = string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItemId),"1","0","0")
		Sys_SaveActionFestivalLog(str_Log)
	end
	

	ArabicNewYear2015_Fireworks_GetGift()
	
end


--给奖励     
function ArabicNewYear2015_Fireworks_GetGift()

	local nStartNum = ArabicNewYear2015_Fireworks_Cont["nStart"]
	local nEndNum = ArabicNewYear2015_Fireworks_Cont["nEnd"]
	local nMapId = ArabicNewYear2015_Fireworks_Cont["NpcMapid"]
	local nPosX = Get_UserPositionX()
	local nPosY = Get_UserPositionY()
	local nLevel = Get_UserLevel()
	local nMaxLevel = ArabicNewYear2015_Fireworks_Cont["Level140"]
	local nItem = ArabicNewYear2015_Fireworks_Item["Item3006889"]
	local nRandNum = math.random(1,5)
	
	if Sys_Random(nStartNum,nEndNum) then

		Map_Effect(nMapId, nPosX, nPosY, ArabicNewYear2015_Fireworks_Effect[2][nRandNum])
		if nLevel >= nMaxLevel then
			
			User_AddCultivation(ArabicNewYear2015_Fireworks_Cont["10Cul"])
			Sys_SaveActionFestivalLog(string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItem),"1","6",tostring(ArabicNewYear2015_Fireworks_Cont["10Cul"])))
			User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Get10CUL"])			
			
		else
			User_AddExpTime(ArabicNewYear2015_Fireworks_Cont["20Exp"])
			Sys_SaveActionFestivalLog(string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItem),"1","4",tostring(ArabicNewYear2015_Fireworks_Cont["20Exp"])))
			User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Get20EXP"])			
			
		end
	else
		Map_Effect(nMapId, nPosX, nPosY, ArabicNewYear2015_Fireworks_Effect[1][nRandNum])
		if nLevel >= nMaxLevel then
			
			User_AddCultivation(ArabicNewYear2015_Fireworks_Cont["2Cul"])
			Sys_SaveActionFestivalLog(string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItem),"1","6",tostring(ArabicNewYear2015_Fireworks_Cont["2Cul"])))
			User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Get2CUL"])			
			
		else
			User_AddExpTime(ArabicNewYear2015_Fireworks_Cont["5Exp"])
			Sys_SaveActionFestivalLog(string.format(ArabicNewYear2015_Fireworks_LOG["FireworkLog"],tostring(nItem),"1","4",tostring(ArabicNewYear2015_Fireworks_Cont["5Exp"])))
			User_TalkChannel2005(ArabicNewYear2015_Fireworks_Text["Get5EXP"])			
		end
	
	end

end

--------------------------------------NPC模块-------------------------------------------
--18669	烟花大使花小小
tNpcFace[3730] = 1
tNpcGossip[18669] = tNpcGossip[18669] or DefaultNpc:new{}
tNpcGossip[18669]["OptionHidden"] = 1

--活动时间前
tNpcGossip[18669]["Text1-1"] = {111,112,113}
tNpcGossip[18669]["Text111"] = ArabicNewYear2015_Fireworks_Text[18669]["Text111"]
tNpcGossip[18669]["Text112"] = ArabicNewYear2015_Fireworks_Text[18669]["Text112"]
tNpcGossip[18669]["Text113"] = ArabicNewYear2015_Fireworks_Text[18669]["Text113"]
tNpcGossip[18669]["tOption1-1"] = {1}
tNpcGossip[18669]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(ArabicNewYear2015_Fireworks_Cont["BeforeActivityTime"])
end

--活动时间中
tNpcGossip[18669]["Text1-2"] = {121,122,123}
tNpcGossip[18669]["Text121"] = ArabicNewYear2015_Fireworks_Text[18669]["Text121"]
tNpcGossip[18669]["Text122"] = ArabicNewYear2015_Fireworks_Text[18669]["Text122"]
tNpcGossip[18669]["Text123"] = ArabicNewYear2015_Fireworks_Text[18669]["Text123"]
tNpcGossip[18669]["tOption1-2"] = {2,3}
tNpcGossip[18669]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(ArabicNewYear2015_Fireworks_Cont["ActivityTime"])
end

--活动时间后
tNpcGossip[18669]["Text1-3"] = {131}
tNpcGossip[18669]["Text131"] = ArabicNewYear2015_Fireworks_Text[18669]["Text131"]
tNpcGossip[18669]["tOption1-3"] = {4}

--选项

tNpcGossip[18669]["Option1"] = ArabicNewYear2015_Fireworks_Text[18669]["Option1"]
tNpcGossip[18669]["Option2"] = ArabicNewYear2015_Fireworks_Text[18669]["Option2"]
tNpcGossip[18669]["OptionFunc2"]="ArabicNewYear2015_Fireworks_FindWay</N>18669"
tNpcGossip[18669]["OptionChkFunc2"] = function ()
	return  Sys_ChkFullTime(ArabicNewYear2015_Fireworks_Cont["ActivityTime"]) 
end

tNpcGossip[18669]["Option3"] = ArabicNewYear2015_Fireworks_Text[18669]["Option3"]
tNpcGossip[18669]["Option4"] = ArabicNewYear2015_Fireworks_Text[18669]["Option4"]



-------------------------------------物品使用模块-----------------------------------
tItem[3006889] = tItem[3006889] or {}
tItem[3006889]["Function"] = function(nItemId,sItemName)
	local nItemId = ArabicNewYear2015_Fireworks_Item["Item3006889"]
	
	ArabicNewYear2015_Fireworks_UseItem(nItemId)
end

-------------------------------------怪物死亡模块-----------------------------------
-- -- 第一片区
-- -- 	1	叫天鸡	9593200
-- tMonster[1] = tMonster[1] or {}
-- tMonster[1]["tFunction"] = tMonster[1]["tFunction"] or {}
-- table.insert(tMonster[1]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- -- 	2	斑鸠王	9593210
-- tMonster[2] = tMonster[2] or {}
-- tMonster[2]["tFunction"] = tMonster[2]["tFunction"] or {}
-- table.insert(tMonster[2]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	3	罗罗鸟	9593220
-- tMonster[3] = tMonster[3] or {}
-- tMonster[3]["tFunction"] = tMonster[3]["tFunction"] or {}
-- table.insert(tMonster[3]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	4	幽冥鬼斧王	9593230
-- tMonster[4] = tMonster[4] or {}
-- tMonster[4]["tFunction"] = tMonster[4]["tFunction"] or {}
-- table.insert(tMonster[4]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	5	蹑空鬼斧王	9593240
-- tMonster[5] = tMonster[5] or {}
-- tMonster[5]["tFunction"] = tMonster[5]["tFunction"] or {}
-- table.insert(tMonster[5]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)


-- -- 第二片区
-- --	6	翼蛇	9593250
-- tMonster[6] = tMonster[6] or {}
-- tMonster[6]["tFunction"] = tMonster[6]["tFunction"] or {}
-- table.insert(tMonster[6]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	7	土匪	9593260
-- tMonster[7] = tMonster[7] or {}
-- tMonster[7]["tFunction"] = tMonster[7]["tFunction"] or {}
-- table.insert(tMonster[7]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	8	火鼠	9593270
-- tMonster[8] = tMonster[8] or {}
-- tMonster[8]["tFunction"] = tMonster[8]["tFunction"] or {}
-- table.insert(tMonster[8]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	9	火精灵	9593280
-- tMonster[9] = tMonster[9] or {}
-- tMonster[9]["tFunction"] = tMonster[9]["tFunction"] or {}
-- table.insert(tMonster[9]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	66	精悍土匪	9593290
-- tMonster[66] = tMonster[66] or {}
-- tMonster[66]["tFunction"] = tMonster[66]["tFunction"] or {}
-- table.insert(tMonster[66]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	67	尖牙火鼠	9593300
-- tMonster[67] = tMonster[67] or {}
-- tMonster[67]["tFunction"] = tMonster[67]["tFunction"] or {}
-- table.insert(tMonster[67]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)


-- -- 第三片区
-- --	10	须猕猴	9593310
-- tMonster[10] = tMonster[10] or {}
-- tMonster[10]["tFunction"] = tMonster[10]["tFunction"] or {}
-- table.insert(tMonster[10]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	11	巨臂猿	9593320
-- tMonster[11] = tMonster[11] or {}
-- tMonster[11]["tFunction"] = tMonster[11]["tFunction"] or {}
-- table.insert(tMonster[11]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	12	天雷巨猿	9593330
-- tMonster[12] = tMonster[12] or {}
-- tMonster[12]["tFunction"] = tMonster[12]["tFunction"] or {}
-- table.insert(tMonster[12]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	13	蛇人	9593340
-- tMonster[13] = tMonster[13] or {}
-- tMonster[13]["tFunction"] = tMonster[13]["tFunction"] or {}
-- table.insert(tMonster[13]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)


-- -- 第四片区
-- --	14	沙怪	9593350
-- tMonster[14] = tMonster[14] or {}
-- tMonster[14]["tFunction"] = tMonster[14]["tFunction"] or {}
-- table.insert(tMonster[14]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	15	锤山怪	9593360
-- tMonster[15] = tMonster[15] or {}
-- tMonster[15]["tFunction"] = tMonster[15]["tFunction"] or {}
-- table.insert(tMonster[15]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	16	巨石怪	9593370
-- tMonster[16] = tMonster[16] or {}
-- tMonster[16]["tFunction"] = tMonster[16]["tFunction"] or {}
-- table.insert(tMonster[16]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	17	鬼刃	9593380
-- tMonster[17] = tMonster[17] or {}
-- tMonster[17]["tFunction"] = tMonster[17]["tFunction"] or {}
-- table.insert(tMonster[17]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	73	砾沙怪	9593390
-- tMonster[73] = tMonster[73] or {}
-- tMonster[73]["tFunction"] = tMonster[73]["tFunction"] or {}
-- table.insert(tMonster[73]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)


-- -- 第五片区
-- --	18	金臂鸟人	4081200
-- tMonster[18] = tMonster[18] or {}
-- tMonster[18]["tFunction"] = tMonster[18]["tFunction"] or {}
-- table.insert(tMonster[18]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	19	银羽鹰王	4081254
-- tMonster[19] = tMonster[19] or {}
-- tMonster[19]["tFunction"] = tMonster[19]["tFunction"] or {}
-- table.insert(tMonster[19]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	55	湖岛强匪	4081258
-- tMonster[55] = tMonster[55] or {}
-- tMonster[55]["tFunction"] = tMonster[55]["tFunction"] or {}
-- table.insert(tMonster[55]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	78	银羽鹰魔	4081255
-- tMonster[78] = tMonster[78] or {}
-- tMonster[78]["tFunction"] = tMonster[78]["tFunction"] or {}
-- table.insert(tMonster[78]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	79	湖岛悍匪	4081259
-- tMonster[79] = tMonster[79] or {}
-- tMonster[79]["tFunction"] = tMonster[79]["tFunction"] or {}
-- table.insert(tMonster[79]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	84	匪兵	9593450
-- tMonster[84] = tMonster[84] or {}
-- tMonster[84]["tFunction"] = tMonster[84]["tFunction"] or {}
-- table.insert(tMonster[84]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- -- 第六片区
-- --	20	土墓蝠	9593460
-- tMonster[20] = tMonster[20] or {}
-- tMonster[20]["tFunction"] = tMonster[20]["tFunction"] or {}
-- table.insert(tMonster[20]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	56	嗜血蝙蝠	9593470
-- tMonster[56] = tMonster[56] or {}
-- tMonster[56]["tFunction"] = tMonster[56]["tFunction"] or {}
-- table.insert(tMonster[56]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	57	牛怪	9593480
-- tMonster[57] = tMonster[57] or {}
-- tMonster[57]["tFunction"] = tMonster[57]["tFunction"] or {}
-- table.insert(tMonster[57]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	58	血影红魔	9593490
-- tMonster[58] = tMonster[58] or {}
-- tMonster[58]["tFunction"] = tMonster[58]["tFunction"] or {}
-- table.insert(tMonster[58]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)



-- -- 第七片区
-- --	2411	冰凌腾蛇	9979200
-- tMonster[2411] = tMonster[2411] or {}
-- tMonster[2411]["tFunction"] = tMonster[2411]["tFunction"] or {}
-- table.insert(tMonster[2411]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	2416	冰煞邪刀	9979210
-- tMonster[2416] = tMonster[2416] or {}
-- tMonster[2416]["tFunction"] = tMonster[2416]["tFunction"] or {}
-- table.insert(tMonster[2416]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)



-- -- 第八片区
-- --	2686	深海亡魂	98054381
-- tMonster[2686] = tMonster[2686] or {}
-- tMonster[2686]["tFunction"] = tMonster[2686]["tFunction"] or {}
-- table.insert(tMonster[2686]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)

-- --	2687	深海魔魂	98054382
-- tMonster[2687] = tMonster[2687] or {}
-- tMonster[2687]["tFunction"] = tMonster[2687]["tFunction"] or {}
-- table.insert(tMonster[2687]["tFunction"],ArabicNewYear2015_Fireworks_KillMonster)








