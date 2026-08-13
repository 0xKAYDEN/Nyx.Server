------------------------------------------------------------------------------------
--Name:			[阿拉伯征服][活动脚本]2015伊历新年活动之红包大放送
--Purpose:		伊历新年活动之红包大放送
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
--	ArabicNewYear2015_RedEnvelope_

--------------------------------------------------------------------------------
--	掩码说明
--	stc掩码	
--	stc(135,16)	> 0 表示：当天已经完成任务
--	stc(135,17)     表示：记录玩家积累的福气值【主要由怪物死亡触发】
--	stc(135,18)		表示: 开启红包和通宝的个数    每天红包和通宝一共只能开30个
--------------------------------------------------------------------------------

--task_detail 3319
--LOGID	12000111




--常量表配置
local tArabicNewYear2015_RedEnvelope_Cont = {}
	--活动时间
	tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	tArabicNewYear2015_RedEnvelope_Cont["BeforeActivityTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]
	
	tArabicNewYear2015_RedEnvelope_Cont["Time900"] = "09:00 09:59"
	tArabicNewYear2015_RedEnvelope_Cont["Time1200"] = "12:00 12:59"
	tArabicNewYear2015_RedEnvelope_Cont["Time2000"] = "20:00 20:59"

	
	--玩家等级要求
	tArabicNewYear2015_RedEnvelope_Cont["Metempsychosis"] = 0
	tArabicNewYear2015_RedEnvelope_Cont["Level"] = 80
	tArabicNewYear2015_RedEnvelope_Cont["Level140"] = 140
	--背包空间	
	tArabicNewYear2015_RedEnvelope_Cont["BagSpace"] = 1

	--节日礼包相关
	tArabicNewYear2015_RedEnvelope_Cont["FestivalId"] = 3319

	--刷物品的范围
	tArabicNewYear2015_RedEnvelope_Cont["Scope"] = 5	
	tArabicNewYear2015_RedEnvelope_Cont["Nums"] = 6
	tArabicNewYear2015_RedEnvelope_Cont["Timer"] = 15
	
	--完成奖励
	tArabicNewYear2015_RedEnvelope_Cont["20Exp"] = 20
	tArabicNewYear2015_RedEnvelope_Cont["10Exp"] = 10
	tArabicNewYear2015_RedEnvelope_Cont["10Cul"] = 10
	tArabicNewYear2015_RedEnvelope_Cont["5Cul"] = 5
	
	--npc位置
	--18575 CannoneerRay
	tArabicNewYear2015_RedEnvelope_Cont["NpcMapid"] = 1002
	tArabicNewYear2015_RedEnvelope_Cont["NpcCellx"] = 328
	tArabicNewYear2015_RedEnvelope_Cont["NpcCelly"] = 504
	
	--刷物品的坐标
local tArabicNewYear2015_RedEnvelope_Pos = {}
	tArabicNewYear2015_RedEnvelope_Pos["Mapid"] = 1002
	
	tArabicNewYear2015_RedEnvelope_Pos["Cellx_1"] = 328
	tArabicNewYear2015_RedEnvelope_Pos["Celly_1"] = 497
	
	tArabicNewYear2015_RedEnvelope_Pos["Cellx_2"] = 334
	tArabicNewYear2015_RedEnvelope_Pos["Celly_2"] = 497
	
	tArabicNewYear2015_RedEnvelope_Pos["Cellx_3"] = 340
	tArabicNewYear2015_RedEnvelope_Pos["Celly_3"] = 497

local tArabicNewYear2015_RedEnvelope_Stc = {}
	
	tArabicNewYear2015_RedEnvelope_Stc[1] = {}
	tArabicNewYear2015_RedEnvelope_Stc[1]["StcEvent"] = 135
	tArabicNewYear2015_RedEnvelope_Stc[1]["StcType"] = 16
	tArabicNewYear2015_RedEnvelope_Stc[1]["Complete"] = 1
	
	tArabicNewYear2015_RedEnvelope_Stc[2] = {}
	tArabicNewYear2015_RedEnvelope_Stc[2]["StcEvent"] = 135
	tArabicNewYear2015_RedEnvelope_Stc[2]["StcType"] = 17
	tArabicNewYear2015_RedEnvelope_Stc[2]["Values"] = 99
	
	tArabicNewYear2015_RedEnvelope_Stc[3] = {}
	tArabicNewYear2015_RedEnvelope_Stc[3]["StcEvent"] = 135
	tArabicNewYear2015_RedEnvelope_Stc[3]["StcType"] = 18
	tArabicNewYear2015_RedEnvelope_Stc[3]["Number"] = 30	

local tArabicNewYear2015_RedEnvelope_Item = {}
	--相关物品
	tArabicNewYear2015_RedEnvelope_Item["Item3006747"] = 3006747
	tArabicNewYear2015_RedEnvelope_Item["Item3006748"] = 3006748
	tArabicNewYear2015_RedEnvelope_Item["Item3006749"] = 3006749
	tArabicNewYear2015_RedEnvelope_Item["Item3006750"] = 3006750
	
	--LOG 中记录 节日礼包的ID
	tArabicNewYear2015_RedEnvelope_Item["Item3003625"] = 3003625

--各种光效
local tArabicNewYear2015_RedEnvelope_Effect = {}
	tArabicNewYear2015_RedEnvelope_Effect["Spunk"] = "spunk"
	tArabicNewYear2015_RedEnvelope_Effect["Fireworks"] = "firemagic"
	tArabicNewYear2015_RedEnvelope_Effect["User"] = "self"
	
--LOG 表
local tArabicNewYear2015_RedEnvelope_LOG = {}
	--接任务时领取LOG
	tArabicNewYear2015_RedEnvelope_LOG["GeneralLog"] = "0,0,%d[%d],%d[%d],12000111,2,%s,%s"
	tArabicNewYear2015_RedEnvelope_LOG["CompleteLog"] = "0,0,%d,%d,12000111,2,%d,%d"
	tArabicNewYear2015_RedEnvelope_LOG["GetEgg"] = "0,0,0,0,12000111,2,%d,1"
	tArabicNewYear2015_RedEnvelope_LOG["ItemUser"] = "0,0,%d,%d,12000111,2,%d,%d"
	
	tArabicNewYear2015_RedEnvelope_LOG["Complete"] = 12000111
	

--------------------------------------逻辑部分-----------------------------------------
--是否完成活动任务 --返回true 表示：当天已经完成任务
function ArabicNewYear2015_RedEnvelope_Complete()

	local nEvent = tArabicNewYear2015_RedEnvelope_Stc[1]["StcEvent"]
	local nType = tArabicNewYear2015_RedEnvelope_Stc[1]["StcType"]
	local nComplete = tArabicNewYear2015_RedEnvelope_Stc[1]["Complete"]
	
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

--领取吉祥彩蛋。
function ArabicNewYear2015_RedEnvelope_ReceivedEggs(nNpcId)

	if not Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nMetempsychosis = tArabicNewYear2015_RedEnvelope_Cont["Metempsychosis"]
	local nLevel = tArabicNewYear2015_RedEnvelope_Cont["Level"]	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["LessLevel"])
		return
	end
	
	if ArabicNewYear2015_RedEnvelope_Complete() then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Completed"])
		return
	end

	local nItem = tArabicNewYear2015_RedEnvelope_Item["Item3006747"]
	if Item_ChkItem(nItem) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["ReceivedEggs"])
		return
	end

	local nSpace = tArabicNewYear2015_RedEnvelope_Cont["BagSpace"]
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["FullSpace"])
		return
	end

	if Item_AddItem(nItem,0,1) then
		local str = string.format(tArabicNewYear2015_RedEnvelope_LOG["GetEgg"],nItem)
		
		Sys_SaveActionFestivalLog(str)
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["GetEgg"])
	end
end

--发射彩蛋
function ArabicNewYear2015_RedEnvelope_LaunchEggs(nNpcId)
	if not Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nMetempsychosis = tArabicNewYear2015_RedEnvelope_Cont["Metempsychosis"]
	local nLevel = tArabicNewYear2015_RedEnvelope_Cont["Level"]	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["LessLevel"])
		return
	end
	
	if ArabicNewYear2015_RedEnvelope_Complete() then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Completed"])
		return
	end
	
	local nItem =  tArabicNewYear2015_RedEnvelope_Item["Item3006747"]
	if not Item_ChkItem(nItem) then
		local nCellx = tArabicNewYear2015_RedEnvelope_Cont["NpcCellx"]
		local nCelly = tArabicNewYear2015_RedEnvelope_Cont["NpcCelly"]
		local str = string.format(ArabicNewYear2015_RedEnvelope_Text["FindNpc"],tostring(nCellx),tostring(nCelly))
			User_TalkChannel2005(str)
		return
	end
	
	--完成任务
	local nEvent = tArabicNewYear2015_RedEnvelope_Stc[1]["StcEvent"]
	local nType = tArabicNewYear2015_RedEnvelope_Stc[1]["StcType"]
	local nComplete = tArabicNewYear2015_RedEnvelope_Stc[1]["Complete"]
	
	if Item_DelItem(nItem) then		
		Task_SetStatistic(nEvent,nType,nComplete,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		local nItem_Activity = tArabicNewYear2015_RedEnvelope_Item["Item3003625"]
		local str_Log = string.format(tArabicNewYear2015_RedEnvelope_LOG["CompleteLog"],nItem,1,nItem_Activity,1)
		
		FestivalGeneralPackage_GetGift(tArabicNewYear2015_RedEnvelope_Cont["FestivalId"],tArabicNewYear2015_RedEnvelope_LOG["Complete"])
		Sys_SaveActionFestivalLog(str_Log)
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["LaunchEgg"])
		
		local sEff_User = tArabicNewYear2015_RedEnvelope_Effect["User"]
		local sEff_Eff = tArabicNewYear2015_RedEnvelope_Effect["Spunk"]
		
		User_EffectAdd(sEff_User,sEff_Eff)
		
		--随机位置播放烟花
		
		local nRandomNum = math.random(3)
		
		local nScope= tArabicNewYear2015_RedEnvelope_Cont["Scope"]
		local nNums = tArabicNewYear2015_RedEnvelope_Cont["Nums"]
		local nTimer = tArabicNewYear2015_RedEnvelope_Cont["Timer"]
		local nMpId = tArabicNewYear2015_RedEnvelope_Pos["Mapid"]
		local sEffectName = tArabicNewYear2015_RedEnvelope_Effect["Fireworks"]	
		local nPosX = 0
		local nPosY = 0
		local nItemId = 0
		
		if nRandomNum == 1 then			
			nPosX = tArabicNewYear2015_RedEnvelope_Pos["Cellx_1"]
			nPosY = tArabicNewYear2015_RedEnvelope_Pos["Celly_1"]				
		elseif nRandomNum == 2 then
			nPosX = tArabicNewYear2015_RedEnvelope_Pos["Cellx_2"]
			nPosY = tArabicNewYear2015_RedEnvelope_Pos["Celly_2"]
		else
			nPosX = tArabicNewYear2015_RedEnvelope_Pos["Cellx_3"]
			nPosY = tArabicNewYear2015_RedEnvelope_Pos["Celly_3"]		
		end
		
		local nRandom = math.random(2)
		if nRandom == 1 then
			nItemId = tArabicNewYear2015_RedEnvelope_Item["Item3006748"]				
		else
			nItemId = tArabicNewYear2015_RedEnvelope_Item["Item3006749"]
		end
		
		Map_Effect(nMpId,nPosX,nPosY,sEffectName)		
		Map_DropMultiItems(nMpId,nItemId,nPosX,nPosY,nScope,nScope,nNums,nTimer)
	end
end

--判断吉祥红包 和 通宝 的使用个数  30个/每天
function ArabicNewYear2015_RedEnvelope_MoreThanThirty()
	local nEvent = tArabicNewYear2015_RedEnvelope_Stc[3]["StcEvent"]
	local nType = tArabicNewYear2015_RedEnvelope_Stc[3]["StcType"]
	local nLimit = tArabicNewYear2015_RedEnvelope_Stc[3]["Number"]
	
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		return false
	else
		if Task_ChkStcValue(nEvent,nType,">=",nLimit) then
			return true
		else
			return false
		end
	end
end


--物品使用
function ArabicNewYear2015_RedEnvelope_UseItem(nItemId)

	if Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["TimeIsNot"])
		return
	end
	
	if not Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		if Item_DelItem(nItemId) then
			local str = string.format(tArabicNewYear2015_RedEnvelope_LOG["ItemUser"],nItemId,1,0,0)
			Sys_SaveActionFestivalLog(str)
			User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["TimeExpired"])
			return
		end
	end
	
	local nMetempsychosis = tArabicNewYear2015_RedEnvelope_Cont["Metempsychosis"]
	local nLevel = tArabicNewYear2015_RedEnvelope_Cont["Level"]	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["LessLevelNotUse"])
		return
	end
	
	if ArabicNewYear2015_RedEnvelope_MoreThanThirty() then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["MoreThan30"])
		return
	end
	
	local nMaterial = tArabicNewYear2015_RedEnvelope_Item["Item3006750"]
	
	if not Item_ChkItem(nMaterial) then
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["LackOfProps"])
		return
	end
	
	local nHongBao = tArabicNewYear2015_RedEnvelope_Item["Item3006748"]
	local nTongBao = tArabicNewYear2015_RedEnvelope_Item["Item3006749"]
	
	local nEvent = tArabicNewYear2015_RedEnvelope_Stc[3]["StcEvent"]
	local nType = tArabicNewYear2015_RedEnvelope_Stc[3]["StcType"]

	local nLevel140 = tArabicNewYear2015_RedEnvelope_Cont["Level140"]
	local nUserLevel = Get_UserLevel()
	
	
	if nItemId == nHongBao then
		if Item_DelItem(nItemId) and Item_DelItem(nMaterial) then			
			if nUserLevel >= nLevel140 then
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				User_AddCultivation(tArabicNewYear2015_RedEnvelope_Cont["10Cul"])
				
				Sys_SaveActionFestivalLog(string.format(tArabicNewYear2015_RedEnvelope_LOG["GeneralLog"],nItemId,nMaterial,1,1,"6",tostring(tArabicNewYear2015_RedEnvelope_Cont["10Cul"])))
				User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Get10Cul_HongBao"])				
			else
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				User_AddExpTime(tArabicNewYear2015_RedEnvelope_Cont["20Exp"])
				
				Sys_SaveActionFestivalLog(string.format(tArabicNewYear2015_RedEnvelope_LOG["GeneralLog"],nItemId,nMaterial,1,1,"4",tostring(tArabicNewYear2015_RedEnvelope_Cont["20Exp"])))
				User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Get20Exp_HongBao"])
				
			end
		else
			return
		end
	else
		if Item_DelItem(nItemId) and Item_DelItem(nMaterial) then			
			if nUserLevel >= nLevel140 then
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				User_AddCultivation(tArabicNewYear2015_RedEnvelope_Cont["10Cul"])

				Sys_SaveActionFestivalLog(string.format(tArabicNewYear2015_RedEnvelope_LOG["GeneralLog"],nItemId,nMaterial,1,1,"6",tostring(tArabicNewYear2015_RedEnvelope_Cont["10Cul"])))
				User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Get10Cul_TongBao"])				
			else
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				User_AddExpTime(tArabicNewYear2015_RedEnvelope_Cont["10Exp"])
				User_AddCultivation(tArabicNewYear2015_RedEnvelope_Cont["5Cul"])
				local str = string.format("%d[%d]",tArabicNewYear2015_RedEnvelope_Cont["10Exp"],tArabicNewYear2015_RedEnvelope_Cont["5Cul"])
				Sys_SaveActionFestivalLog(string.format(tArabicNewYear2015_RedEnvelope_LOG["GeneralLog"],nItemId,nMaterial,1,1,"4[6]",str))
				User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["Get10Exp_TongBao"])
				
			end
		else
			return
		end		
	end
end

--怪物死亡

function ArabicNewYear2015_RedEnvelope_KillMonster()
	if not Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		return
	end
	
	local nMetempsychosis = tArabicNewYear2015_RedEnvelope_Cont["Metempsychosis"]
	local nLevel = tArabicNewYear2015_RedEnvelope_Cont["Level"]	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	local nItem_3006748 = tArabicNewYear2015_RedEnvelope_Item["Item3006748"]
	local nItem_3006749 = tArabicNewYear2015_RedEnvelope_Item["Item3006749"]
	local nItem_3006750 = tArabicNewYear2015_RedEnvelope_Item["Item3006750"]
	local nEvent = tArabicNewYear2015_RedEnvelope_Stc[2]["StcEvent"]
	local nType = tArabicNewYear2015_RedEnvelope_Stc[2]["StcType"]
	local nValues = tArabicNewYear2015_RedEnvelope_Stc[2]["Values"]
	

	if not (Item_ChkItem(nItem_3006748) or Item_ChkItem(nItem_3006749))then
		return
	end
	
	
	local nSpace = tArabicNewYear2015_RedEnvelope_Cont["BagSpace"]
	local nNum = nValues - 1
	
	if Task_ChkStcValue(nEvent,nType,"<",nNum) then
		Task_AddStatistic(nEvent,nType,1,1)
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",nNum) then
		Task_AddStatistic(nEvent,nType,1,1)
		User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["GoodValue99"])
		return
	else
		if not User_CheckLeftSpace(nSpace) then
			return
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
			if Item_AddItem(nItem_3006750) then
				local str = string.format(tArabicNewYear2015_RedEnvelope_LOG["ItemUser"],0,0,nItem_3006750,1)
				Sys_SaveActionFestivalLog(str)
				User_TalkChannel2005(ArabicNewYear2015_RedEnvelope_Text["GetPolyGoodyBag"])
			end
		end
	end

end

--------------------------------------NPC模块-------------------------------------------
--18575	炮手雷大哥
tNpcFace[3707] = 93
tNpcGossip[18575] = tNpcGossip[18575] or DefaultNpc:new{}
tNpcGossip[18575]["OptionHidden"] = 1

--活动时间前
tNpcGossip[18575]["Text1-1"] = {111,112,113,114}
tNpcGossip[18575]["Text111"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text111"]
tNpcGossip[18575]["Text112"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text112"]
tNpcGossip[18575]["Text113"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text113"]
tNpcGossip[18575]["Text114"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text114"]
tNpcGossip[18575]["tOption1-1"] = {1}
tNpcGossip[18575]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["BeforeActivityTime"])
end

--活动时间中
tNpcGossip[18575]["Text1-2"] = {121,122,123,124}
tNpcGossip[18575]["Text121"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text121"]
tNpcGossip[18575]["Text122"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text122"]
tNpcGossip[18575]["Text123"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text123"]
tNpcGossip[18575]["Text124"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text124"]
tNpcGossip[18575]["tOption1-2"] = {2,3,4}
tNpcGossip[18575]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"])
end

--活动时间后
tNpcGossip[18575]["Text1-3"] = {131}
tNpcGossip[18575]["Text131"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text131"]
tNpcGossip[18575]["tOption1-3"] = {5}

--了解活动详情
tNpcGossip[18575]["Text2-1"] = {211,212,213}
tNpcGossip[18575]["Text211"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text211"]
tNpcGossip[18575]["Text212"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text212"]
tNpcGossip[18575]["Text213"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text213"]
tNpcGossip[18575]["tOption2-1"] = {6,7}

--如何获得聚福袋？
tNpcGossip[18575]["Text3-1"] = {311,312}
tNpcGossip[18575]["Text311"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text311"]
tNpcGossip[18575]["Text312"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Text312"]
tNpcGossip[18575]["tOption3-1"] = {8,4}

----吉祥火炮
tNpcGossip[18576] = tNpcGossip[18576] or DefaultNpc:new{}
tNpcGossip[18576]["OptionHidden"] = 1

--对白
tNpcGossip[18576]["Text1-1"] = {111}
tNpcGossip[18576]["Text111"] = ArabicNewYear2015_RedEnvelope_Text[18576]["Text111"]
tNpcGossip[18576]["tOption1-1"] = {2,3}

--非活动时间无法发射对白
tNpcGossip[18576]["Text2-1"] = {211}
tNpcGossip[18576]["Text211"] = ArabicNewYear2015_RedEnvelope_Text[18576]["Text211"]
tNpcGossip[18576]["tOption2-1"] = {3}


--选项
tNpcGossip[18575]["Option1"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option1"]
tNpcGossip[18575]["Option2"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option2"]
tNpcGossip[18575]["OptionFunc2"]="ArabicNewYear2015_RedEnvelope_ReceivedEggs</N>18575"
tNpcGossip[18575]["OptionChkFunc2"] = function ()
	if (not ArabicNewYear2015_RedEnvelope_Complete()) and Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		if Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time900"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time1200"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time2000"]) then
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[18575]["Option3"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option3"]
tNpcGossip[18575]["OptionPoint3"] = "2-1"
tNpcGossip[18575]["OptionChkFunc3"] = function ()
	return  Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"])
end

tNpcGossip[18575]["Option4"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option4"]
tNpcGossip[18575]["Option5"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option5"]
tNpcGossip[18575]["Option6"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option6"]
tNpcGossip[18575]["OptionPoint6"] = "3-1"
tNpcGossip[18575]["OptionChkFunc6"] = function ()
	return  Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"])
end

tNpcGossip[18575]["Option7"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option7"]
tNpcGossip[18575]["OptionPoint7"] = "1-1"

tNpcGossip[18575]["Option8"] = ArabicNewYear2015_RedEnvelope_Text[18575]["Option8"]
tNpcGossip[18575]["OptionPoint8"] = "2-1"

tNpcGossip[18576]["Option1"] = ArabicNewYear2015_RedEnvelope_Text[18576]["Option1"]
tNpcGossip[18576]["Option2"] = ArabicNewYear2015_RedEnvelope_Text[18576]["Option2"]
tNpcGossip[18576]["OptionFunc2"]="ArabicNewYear2015_RedEnvelope_LaunchEggs</N>18576"
tNpcGossip[18576]["OptionChkFunc2"] = function ()
	if (not ArabicNewYear2015_RedEnvelope_Complete()) and Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		if Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time900"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time1200"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time2000"]) then
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[18576]["Option3"] = ArabicNewYear2015_RedEnvelope_Text[18576]["Option3"]
-- tNpcGossip[18576]["OptionChkFunc3"] = function ()
	-- if (not ArabicNewYear2015_RedEnvelope_Complete()) and Sys_ChkFullTime(tArabicNewYear2015_RedEnvelope_Cont["ActivityTime"]) then
		-- if Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time900"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time1200"]) or Sys_ChkDayTime(tArabicNewYear2015_RedEnvelope_Cont["Time2000"]) then
			-- return true
		-- else
			-- return false
		-- end
	-- else
		-- return false
	-- end
-- end

-------------------------------------物品使用模块-----------------------------------
tItem[3006748] = tItem[3006748] or {}
tItem[3006748]["Function"] = function(nItemId,sItemName)
	local nItemId = tArabicNewYear2015_RedEnvelope_Item["Item3006748"]
	
	ArabicNewYear2015_RedEnvelope_UseItem(nItemId)
end

tItem[3006749] = tItem[3006749] or {}
tItem[3006749]["Function"] = function(nItemId,sItemName)
	local nItemId = tArabicNewYear2015_RedEnvelope_Item["Item3006749"]
	
	ArabicNewYear2015_RedEnvelope_UseItem(nItemId)
end

-------------------------------------怪物死亡模块-----------------------------------
-- -- 第一片区
-- -- 	1	叫天鸡	9593200
-- tMonster[1] = tMonster[1] or {}
-- tMonster[1]["tFunction"] = tMonster[1]["tFunction"] or {}
-- table.insert(tMonster[1]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- -- 	2	斑鸠王	9593210
-- tMonster[2] = tMonster[2] or {}
-- tMonster[2]["tFunction"] = tMonster[2]["tFunction"] or {}
-- table.insert(tMonster[2]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	3	罗罗鸟	9593220
-- tMonster[3] = tMonster[3] or {}
-- tMonster[3]["tFunction"] = tMonster[3]["tFunction"] or {}
-- table.insert(tMonster[3]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	4	幽冥鬼斧王	9593230
-- tMonster[4] = tMonster[4] or {}
-- tMonster[4]["tFunction"] = tMonster[4]["tFunction"] or {}
-- table.insert(tMonster[4]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	5	蹑空鬼斧王	9593240
-- tMonster[5] = tMonster[5] or {}
-- tMonster[5]["tFunction"] = tMonster[5]["tFunction"] or {}
-- table.insert(tMonster[5]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)


-- -- 第二片区
-- --	6	翼蛇	9593250
-- tMonster[6] = tMonster[6] or {}
-- tMonster[6]["tFunction"] = tMonster[6]["tFunction"] or {}
-- table.insert(tMonster[6]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	7	土匪	9593260
-- tMonster[7] = tMonster[7] or {}
-- tMonster[7]["tFunction"] = tMonster[7]["tFunction"] or {}
-- table.insert(tMonster[7]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	8	火鼠	9593270
-- tMonster[8] = tMonster[8] or {}
-- tMonster[8]["tFunction"] = tMonster[8]["tFunction"] or {}
-- table.insert(tMonster[8]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	9	火精灵	9593280
-- tMonster[9] = tMonster[9] or {}
-- tMonster[9]["tFunction"] = tMonster[9]["tFunction"] or {}
-- table.insert(tMonster[9]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	66	精悍土匪	9593290
-- tMonster[66] = tMonster[66] or {}
-- tMonster[66]["tFunction"] = tMonster[66]["tFunction"] or {}
-- table.insert(tMonster[66]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	67	尖牙火鼠	9593300
-- tMonster[67] = tMonster[67] or {}
-- tMonster[67]["tFunction"] = tMonster[67]["tFunction"] or {}
-- table.insert(tMonster[67]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)


-- -- 第三片区
-- --	10	须猕猴	9593310
-- tMonster[10] = tMonster[10] or {}
-- tMonster[10]["tFunction"] = tMonster[10]["tFunction"] or {}
-- table.insert(tMonster[10]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	11	巨臂猿	9593320
-- tMonster[11] = tMonster[11] or {}
-- tMonster[11]["tFunction"] = tMonster[11]["tFunction"] or {}
-- table.insert(tMonster[11]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	12	天雷巨猿	9593330
-- tMonster[12] = tMonster[12] or {}
-- tMonster[12]["tFunction"] = tMonster[12]["tFunction"] or {}
-- table.insert(tMonster[12]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	13	蛇人	9593340
-- tMonster[13] = tMonster[13] or {}
-- tMonster[13]["tFunction"] = tMonster[13]["tFunction"] or {}
-- table.insert(tMonster[13]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)


-- -- 第四片区
-- --	14	沙怪	9593350
-- tMonster[14] = tMonster[14] or {}
-- tMonster[14]["tFunction"] = tMonster[14]["tFunction"] or {}
-- table.insert(tMonster[14]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	15	锤山怪	9593360
-- tMonster[15] = tMonster[15] or {}
-- tMonster[15]["tFunction"] = tMonster[15]["tFunction"] or {}
-- table.insert(tMonster[15]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	16	巨石怪	9593370
-- tMonster[16] = tMonster[16] or {}
-- tMonster[16]["tFunction"] = tMonster[16]["tFunction"] or {}
-- table.insert(tMonster[16]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	17	鬼刃	9593380
-- tMonster[17] = tMonster[17] or {}
-- tMonster[17]["tFunction"] = tMonster[17]["tFunction"] or {}
-- table.insert(tMonster[17]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	73	砾沙怪	9593390
-- tMonster[73] = tMonster[73] or {}
-- tMonster[73]["tFunction"] = tMonster[73]["tFunction"] or {}
-- table.insert(tMonster[73]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)


-- -- 第五片区
-- --	18	金臂鸟人	4081200
-- tMonster[18] = tMonster[18] or {}
-- tMonster[18]["tFunction"] = tMonster[18]["tFunction"] or {}
-- table.insert(tMonster[18]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	19	银羽鹰王	4081254
-- tMonster[19] = tMonster[19] or {}
-- tMonster[19]["tFunction"] = tMonster[19]["tFunction"] or {}
-- table.insert(tMonster[19]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	55	湖岛强匪	4081258
-- tMonster[55] = tMonster[55] or {}
-- tMonster[55]["tFunction"] = tMonster[55]["tFunction"] or {}
-- table.insert(tMonster[55]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	78	银羽鹰魔	4081255
-- tMonster[78] = tMonster[78] or {}
-- tMonster[78]["tFunction"] = tMonster[78]["tFunction"] or {}
-- table.insert(tMonster[78]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	79	湖岛悍匪	4081259
-- tMonster[79] = tMonster[79] or {}
-- tMonster[79]["tFunction"] = tMonster[79]["tFunction"] or {}
-- table.insert(tMonster[79]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	84	匪兵	9593450
-- tMonster[84] = tMonster[84] or {}
-- tMonster[84]["tFunction"] = tMonster[84]["tFunction"] or {}
-- table.insert(tMonster[84]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- -- 第六片区
-- --	20	土墓蝠	9593460
-- tMonster[20] = tMonster[20] or {}
-- tMonster[20]["tFunction"] = tMonster[20]["tFunction"] or {}
-- table.insert(tMonster[20]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	56	嗜血蝙蝠	9593470
-- tMonster[56] = tMonster[56] or {}
-- tMonster[56]["tFunction"] = tMonster[56]["tFunction"] or {}
-- table.insert(tMonster[56]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	57	牛怪	9593480
-- tMonster[57] = tMonster[57] or {}
-- tMonster[57]["tFunction"] = tMonster[57]["tFunction"] or {}
-- table.insert(tMonster[57]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	58	血影红魔	9593490
-- tMonster[58] = tMonster[58] or {}
-- tMonster[58]["tFunction"] = tMonster[58]["tFunction"] or {}
-- table.insert(tMonster[58]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)



-- -- 第七片区
-- --	2411	冰凌腾蛇	9979200
-- tMonster[2411] = tMonster[2411] or {}
-- tMonster[2411]["tFunction"] = tMonster[2411]["tFunction"] or {}
-- table.insert(tMonster[2411]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	2416	冰煞邪刀	9979210
-- tMonster[2416] = tMonster[2416] or {}
-- tMonster[2416]["tFunction"] = tMonster[2416]["tFunction"] or {}
-- table.insert(tMonster[2416]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)



-- -- 第八片区
-- --	2686	深海亡魂	98054381
-- tMonster[2686] = tMonster[2686] or {}
-- tMonster[2686]["tFunction"] = tMonster[2686]["tFunction"] or {}
-- table.insert(tMonster[2686]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)

-- --	2687	深海魔魂	98054382
-- tMonster[2687] = tMonster[2687] or {}
-- tMonster[2687]["tFunction"] = tMonster[2687]["tFunction"] or {}
-- table.insert(tMonster[2687]["tFunction"],ArabicNewYear2015_RedEnvelope_KillMonster)








