------------------------------------------------------------------------------------
--Name:			160112[简体征服][活动脚本]2016情人节花魁赛活动--决战花神赛
--Purpose:		2016情人节花魁赛活动--决战花神赛
--Creator:		严振飞
--Created:		2016/01/12
------------------------------------------------------------------------------------

-- 动态码说明：
-- #第三阶段得分
-- #男：51013~51016
-- #女：51017~51020
-- #data0		没用
-- #data1		百合（数量）
-- #data2		兰花（数量）
-- #data3		玫瑰花（数量）
-- #data4		郁金香（数量）
-- #data5		天石（数量）
-- #datastr0	玩家名字
-- #datastr1	玩家ID

-- #用于记录玩家投票神器每天购买数量
-- #男：51056~51059
-- #女：51060~51063
-- #data0		记录是否每天重置
-- #data1		27天石（次数）
-- #data2		79天石（次数）
-- #data3		239天石（次数）
-- #data4		719天石（次数）


-- stc()掩码说明
-- stc(142,43)	记录投票对象（动态掩码）
-- stc(142,44)	记录投票种类（哪种数量的鲜花）
-- stc(142,45)	记录投票数量（鲜花数量）

-- stc(142,46)	表示玩家投鲜花获得的积分	兑换奖励用（兑换礼包时积分减少）
-- stc(142,47)	表示玩家投鲜花获得的积分	线下排名用（只增不减）

-- LOGID:	12000203
-----------------------------------------------------------------------------------
-- 命名规范
-- TheGoddess2016_FinalOnline


--------------------------------------------------常量表配置--------------------------------------------------
-- stc掩码表
local tTheGoddess2016_FinalOnline_Stc = {}
	-- 记录投票对象（掩码编号）
	tTheGoddess2016_FinalOnline_Stc[1] = {}
	tTheGoddess2016_FinalOnline_Stc[1]["EventData"] = 142
	tTheGoddess2016_FinalOnline_Stc[1]["TypeData"] = 43
	-- 记录投票种类（哪种鲜花）
	tTheGoddess2016_FinalOnline_Stc[2] = {}
	tTheGoddess2016_FinalOnline_Stc[2]["EventData"] = 142
	tTheGoddess2016_FinalOnline_Stc[2]["TypeData"] = 44
	-- 记录该种类鲜花的数量种类
	tTheGoddess2016_FinalOnline_Stc[3] = {}
	tTheGoddess2016_FinalOnline_Stc[3]["EventData"] = 142
	tTheGoddess2016_FinalOnline_Stc[3]["TypeData"] = 45

	-- 积分--线下排名用（只增不减）
	tTheGoddess2016_FinalOnline_Stc[4] = {}
	tTheGoddess2016_FinalOnline_Stc[4]["EventData"] = 142
	tTheGoddess2016_FinalOnline_Stc[4]["TypeData"] = 46
	
	-- 积分--兑换奖励用（兑换礼包时积分减少）
	tTheGoddess2016_FinalOnline_Stc[5] = {}
	tTheGoddess2016_FinalOnline_Stc[5]["EventData"] = 142
	tTheGoddess2016_FinalOnline_Stc[5]["TypeData"] = 47

	
	
	
local tTheGoddess2016_FinalOnline_Cont = {}
	-- 活动时间
	tTheGoddess2016_FinalOnline_Cont["ActivityTime"] = "2016-03-14 00:00 2016-03-17 23:59"
	tTheGoddess2016_FinalOnline_Cont["ChkGlobal"] = 51133 		-- 控制欧服（美服）活动时间
	--活动网页
	tTheGoddess2016_FinalOnline_Cont["Web"] = "http://event.co.99.com/mrmsco/?stage=3"
	
	tTheGoddess2016_FinalOnline_Cont["OptEditLen"] = 10 		-- 输入框长度限制
	tTheGoddess2016_FinalOnline_Cont["BroadcastFlw"] = 5 		-- 全服公告花的类型
	-- tTheGoddess2016_FinalOnline_Cont["VoteArtLimint"] = 15 		-- 每日可购买投票神器数量
	tTheGoddess2016_FinalOnline_Cont["Space1"] = 1 				-- 背包空间
	tTheGoddess2016_FinalOnline_Cont["RingId"] = 3008539 		-- 花神指环ID
	tTheGoddess2016_FinalOnline_Cont["Ring2Streng"] = 500 		-- 指环换气力值比
	
-- 指环换外套的ID
local tTheGoddess2016_FinalOnline_Ring2CoatId = {}
	-- 武器外套
	tTheGoddess2016_FinalOnline_Ring2CoatId[5] = {}
	tTheGoddess2016_FinalOnline_Ring2CoatId[5][1] = 350099
	tTheGoddess2016_FinalOnline_Ring2CoatId[5][2] = 360192
	tTheGoddess2016_FinalOnline_Ring2CoatId[5]["ItemAttr"] = "0 0 3 43200 0 0 0 1"
	-- 称号
	tTheGoddess2016_FinalOnline_Ring2CoatId[15] = {}
	tTheGoddess2016_FinalOnline_Ring2CoatId[15][1] = 3008870
	tTheGoddess2016_FinalOnline_Ring2CoatId[15][2] = 3008867
	tTheGoddess2016_FinalOnline_Ring2CoatId[15]["ItemAttr"] = "0 0 3"
	-- 人物外套
	tTheGoddess2016_FinalOnline_Ring2CoatId[30] = {}
	tTheGoddess2016_FinalOnline_Ring2CoatId[30][1] = 193695
	tTheGoddess2016_FinalOnline_Ring2CoatId[30]["ItemAttr"] = "0 0 3 0 0 0 0 1"

	
-- 投票神器天石数据表
local tTheGoddess2016_FinalOnline_VoteArt = {}
	tTheGoddess2016_FinalOnline_VoteArt[1] = 59 		-- 第一种价格
	tTheGoddess2016_FinalOnline_VoteArt[2] = 119 		-- 第二种价格
	tTheGoddess2016_FinalOnline_VoteArt[3] = 239 		-- 第三种价格
	tTheGoddess2016_FinalOnline_VoteArt[4] = 479 		-- 第四种价格
	
-- 鲜花对应的积分
local tTheGoddess2016_FinalOnline_FlwPoint = {}
	tTheGoddess2016_FinalOnline_FlwPoint[1] = 1 		-- 百合
	tTheGoddess2016_FinalOnline_FlwPoint[2] = 1 		-- 兰花
	tTheGoddess2016_FinalOnline_FlwPoint[3] = 1 		-- 玫瑰
	tTheGoddess2016_FinalOnline_FlwPoint[4] = 1 		-- 郁金香
	
-- 投票神器对应给的鲜花数据
local tTheGoddess2016_FinalOnline_Vote2Flw = {}
	-- 第一种价格
	tTheGoddess2016_FinalOnline_Vote2Flw[1] = {}
	tTheGoddess2016_FinalOnline_Vote2Flw[1][1] = 30 		-- 百合
	tTheGoddess2016_FinalOnline_Vote2Flw[1][2] = 30 		-- 兰花
	tTheGoddess2016_FinalOnline_Vote2Flw[1][3] = 30 		-- 玫瑰
	tTheGoddess2016_FinalOnline_Vote2Flw[1][4] = 15 		-- 郁金香
	-- 第二种价格
	tTheGoddess2016_FinalOnline_Vote2Flw[2] = {}
	tTheGoddess2016_FinalOnline_Vote2Flw[2][1] = 60 		-- 百合
	tTheGoddess2016_FinalOnline_Vote2Flw[2][2] = 60 		-- 兰花
	tTheGoddess2016_FinalOnline_Vote2Flw[2][3] = 60 		-- 玫瑰
	tTheGoddess2016_FinalOnline_Vote2Flw[2][4] = 30 		-- 郁金香
	-- 第三种价格
	tTheGoddess2016_FinalOnline_Vote2Flw[3] = {}
	tTheGoddess2016_FinalOnline_Vote2Flw[3][1] = 120 		-- 百合
	tTheGoddess2016_FinalOnline_Vote2Flw[3][2] = 120 		-- 兰花
	tTheGoddess2016_FinalOnline_Vote2Flw[3][3] = 120 		-- 玫瑰
	tTheGoddess2016_FinalOnline_Vote2Flw[3][4] = 60 		-- 郁金香
	-- 第四种价格
	tTheGoddess2016_FinalOnline_Vote2Flw[4] = {}
	tTheGoddess2016_FinalOnline_Vote2Flw[4][1] = 240 		-- 百合
	tTheGoddess2016_FinalOnline_Vote2Flw[4][2] = 240 		-- 兰花
	tTheGoddess2016_FinalOnline_Vote2Flw[4][3] = 240 		-- 玫瑰
	tTheGoddess2016_FinalOnline_Vote2Flw[4][4] = 120 		-- 郁金香

-- 光效
local tTheGoddess2016_FinalOnline_Effect = {}
	tTheGoddess2016_FinalOnline_Effect["Self"] = "self"
	tTheGoddess2016_FinalOnline_Effect["HandInFlw"] = "NEW-flower-r-1"
	tTheGoddess2016_FinalOnline_Effect["RewardPack"] = "NEW-flower-g-1"
	tTheGoddess2016_FinalOnline_Effect["Ring2Coat"] = "zf2-e128"
	tTheGoddess2016_FinalOnline_Effect["Ring2Streng"] = "zf2-e128"

-- 鲜花数量类型
local tTheGoddess2016_FinalOnline_FlwNum = {}
	tTheGoddess2016_FinalOnline_FlwNum[1] = 1
	tTheGoddess2016_FinalOnline_FlwNum[2] = 3
	tTheGoddess2016_FinalOnline_FlwNum[3] = 9
	tTheGoddess2016_FinalOnline_FlwNum[4] = 99
	tTheGoddess2016_FinalOnline_FlwNum[5] = 999

local tTheGoddess2016_FinalOnline_FlwId = {}
	-- 百合
	tTheGoddess2016_FinalOnline_FlwId[1] = {}
	tTheGoddess2016_FinalOnline_FlwId[1][1] = 752001
	tTheGoddess2016_FinalOnline_FlwId[1][2] = 752003
	tTheGoddess2016_FinalOnline_FlwId[1][3] = 752009
	tTheGoddess2016_FinalOnline_FlwId[1][4] = 752099
	tTheGoddess2016_FinalOnline_FlwId[1][5] = 752999
	
	-- 兰花
	tTheGoddess2016_FinalOnline_FlwId[2] = {}
	tTheGoddess2016_FinalOnline_FlwId[2][1] = 753001
	tTheGoddess2016_FinalOnline_FlwId[2][2] = 753003
	tTheGoddess2016_FinalOnline_FlwId[2][3] = 753009
	tTheGoddess2016_FinalOnline_FlwId[2][4] = 753099
	tTheGoddess2016_FinalOnline_FlwId[2][5] = 753999

	-- 玫瑰
	tTheGoddess2016_FinalOnline_FlwId[3] = {}
	tTheGoddess2016_FinalOnline_FlwId[3][1] = 751001
	tTheGoddess2016_FinalOnline_FlwId[3][2] = 751003
	tTheGoddess2016_FinalOnline_FlwId[3][3] = 751009
	tTheGoddess2016_FinalOnline_FlwId[3][4] = 751099
	tTheGoddess2016_FinalOnline_FlwId[3][5] = 751999
	
	-- 郁金香
	tTheGoddess2016_FinalOnline_FlwId[4] = {}
	tTheGoddess2016_FinalOnline_FlwId[4][1] = 754001
	tTheGoddess2016_FinalOnline_FlwId[4][2] = 754003
	tTheGoddess2016_FinalOnline_FlwId[4][3] = 754009
	tTheGoddess2016_FinalOnline_FlwId[4][4] = 754099
	tTheGoddess2016_FinalOnline_FlwId[4][5] = 754999

-- 记录动态码
local tTheGoddess2016_FinalOnline_FlwGlobal = {}

	-- 男神【记录鲜花数量】
	tTheGoddess2016_FinalOnline_FlwGlobal[19087] = 51013
	tTheGoddess2016_FinalOnline_FlwGlobal[19088] = 51014
	tTheGoddess2016_FinalOnline_FlwGlobal[19089] = 51015
	tTheGoddess2016_FinalOnline_FlwGlobal[19090] = 51016
	-- 女神【记录鲜花数量】
	tTheGoddess2016_FinalOnline_FlwGlobal[19091] = 51017
	tTheGoddess2016_FinalOnline_FlwGlobal[19092] = 51018
	tTheGoddess2016_FinalOnline_FlwGlobal[19093] = 51019
	tTheGoddess2016_FinalOnline_FlwGlobal[19120] = 51020
	
local tTheGoddess2016_FinalOnline_VoteGlobal = {}
	-- 男神【记录天石投票次数】
	tTheGoddess2016_FinalOnline_VoteGlobal[19087] = 51056
	tTheGoddess2016_FinalOnline_VoteGlobal[19088] = 51057
	tTheGoddess2016_FinalOnline_VoteGlobal[19089] = 51058
	tTheGoddess2016_FinalOnline_VoteGlobal[19090] = 51059
	-- 女神【记录天石投票次数】
	tTheGoddess2016_FinalOnline_VoteGlobal[19091] = 51060
	tTheGoddess2016_FinalOnline_VoteGlobal[19092] = 51061
	tTheGoddess2016_FinalOnline_VoteGlobal[19093] = 51062
	tTheGoddess2016_FinalOnline_VoteGlobal[19120] = 51063
	
	
	
-- 兑换礼包需要的积分
local tTheGoddess2016_FinalOnline_GiftPoint = {}
	tTheGoddess2016_FinalOnline_GiftPoint[1] = 200 		-- 粉丝追捧礼包
	tTheGoddess2016_FinalOnline_GiftPoint[2] = 1000 		-- 粉丝爱慕礼包
	tTheGoddess2016_FinalOnline_GiftPoint[3] = 3000 		-- 粉丝狂恋礼包

local tTheGoddess2016_FinalOnline_GiftId = {}
	tTheGoddess2016_FinalOnline_GiftId[1] = 3007411		-- 粉丝追捧礼包
	tTheGoddess2016_FinalOnline_GiftId[2] = 3007412		-- 粉丝爱慕礼包
	tTheGoddess2016_FinalOnline_GiftId[3] = 3007413		-- 粉丝狂恋礼包

-- LOG 记录	
local tTheGoddess2016_FinalOnline_Log = {}
	tTheGoddess2016_FinalOnline_Log["HandFlower"] = "0,0,%d,%d,12000203,1[4],0,%d"		-- 上交鲜花
	tTheGoddess2016_FinalOnline_Log["HandEMoney"] = "0,0,2,%d,12000203,1[5],0,%d" 		-- 天石购买投票神器（最后一位增加总分）
	tTheGoddess2016_FinalOnline_Log["GetPack"] = "0,0,0,0,12000203,2,%d,1" 				-- 换取积分礼包
	-- 指环换外套
	tTheGoddess2016_FinalOnline_Log["Ring2Coat"] = "0,0,%d,%d,12000203,2,%d,1"
	-- 指环换气力值
	tTheGoddess2016_FinalOnline_Log["Ring2Streng"] = "0,0,%d,%d,12000203,12,%d,1"

	
	
local tTheGoddess2016_FinalOnline_EmoneyLog = {}
	tTheGoddess2016_FinalOnline_EmoneyLog["HandEMoney"] = "250	4080	%d	%d	1	"
---------------------------------------------------逻辑部分--------------------------------------------------
-- 0点执行清除投票神器掩码
-- function TheGoddess2016_FinalOnline_Func0clock()
	-- 活动时间
	-- if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		-- return
	-- end
	
	-- 是否已清除掩码值
	-- local nGValue = Get_SysDynaGlobalData0(tTheGoddess2016_FinalOnline_VoteGlobal[19087])
	-- if nGValue == 0 then
		-- return
	-- end
	
	-- 清投票神器掩码
	-- for _,v in pairs(tTheGoddess2016_FinalOnline_VoteGlobal) do
		-- Sys_ResetAllSynaGlobalData(v,0)
	-- end
-- end

-- 23点58-59分执行限制清除
function TheGoddess2016_FinalOnline_Func23clock()
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end

	-- 清除限制
	local nGValue = Get_SysDynaGlobalData0(tTheGoddess2016_FinalOnline_VoteGlobal[19087])
	if nGValue == 0 then
		Sys_SetSynaGlobalData0(tTheGoddess2016_FinalOnline_VoteGlobal[19087],1)
	end
end


-- 动态存储表判断活动时间
function TheGoddess2016_FinalOnline_ChkActivityTime()
	local nGlobalValue = Get_SysDynaGlobalData0(tTheGoddess2016_FinalOnline_Cont["ChkGlobal"])
	
	-- 大于0为欧服时间
	if nGlobalValue > 0 then
		tTheGoddess2016_FinalOnline_Cont["ActivityTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		--移动NPC部分
		MoveNpc_NpcInfo[19087]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19088]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19089]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19090]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19091]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19092]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19093]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
		MoveNpc_NpcInfo[19120]["ActivetyTime"] = "2016-03-14 00:00 2016-03-18 07:59"
	end
end

------------------------------------------------------------------------------------------------------

-- 打开天石商店
function TheGoddess2016_FinalOnline_OpenShop()
	if Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		User_OpenDialog()
	end
end

------------------------------------------------------------------------------------------------------

-- 删鲜花给积分
function TheGoddess2016_FinalOnline_DoFlwPiont(nNpcId,nFlwType,nFlwNumType,nFlwNum,sFlwName)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end
	
	--删除鲜花(赠、非赠都行)
	local nFlwId = tTheGoddess2016_FinalOnline_FlwId[nFlwType][nFlwNumType]
	if Item_ChkMulItem(nFlwId,nFlwId,nFlwNum,1) and Item_DelMulItem(nFlwId,nFlwId,nFlwNum,1) then
		-- 积分（只赠不减）
		local nEvent_4 = tTheGoddess2016_FinalOnline_Stc[4]["EventData"]
		local nType_4 = tTheGoddess2016_FinalOnline_Stc[4]["TypeData"]
		
		-- 积分（兑换礼包时积分减少）
		local nEvent_5 = tTheGoddess2016_FinalOnline_Stc[5]["EventData"]
		local nType_5 = tTheGoddess2016_FinalOnline_Stc[5]["TypeData"]

		-- 总积分
		local nPoint = nFlwNum * tTheGoddess2016_FinalOnline_FlwNum[nFlwNumType] * tTheGoddess2016_FinalOnline_FlwPoint[nFlwType]
		
		-- 玩家粉丝积分增加
		Task_AddStatistic(nEvent_4,nType_4,nPoint,1)
		Task_AddStatistic(nEvent_5,nType_5,nPoint,1)
		
		-- 男神\女神积分掩码
		local nEvent_1 = tTheGoddess2016_FinalOnline_Stc[1]["EventData"]
		local nType_1 = tTheGoddess2016_FinalOnline_Stc[1]["TypeData"]
		local nGodGlobal = Get_UserStatisticValue(nEvent_1,nType_1)
		
		-- 对应鲜花数量记录
		local nGlobalPoint = Get_SysDynaGlobalData(nGodGlobal,nFlwType) + nPoint
		Sys_SetSynaGlobalData(nGodGlobal,nFlwType,nGlobalPoint)
		
		-- 为999朵的花,出全服公告
		if nFlwNumType == tTheGoddess2016_FinalOnline_Cont["BroadcastFlw"] then
			local nGodGlobal = Get_UserStatisticValue(tTheGoddess2016_FinalOnline_Stc[1]["EventData"],tTheGoddess2016_FinalOnline_Stc[1]["TypeData"])
			local sGodName = Get_SysDynaGlobalDataStr(nGodGlobal,0)
			local sUserName = Get_UserName()
			sText = string.format(tTheGoddess2016_FinalOnline_Text["Broadcast"],sUserName,sGodName,nFlwNum,sFlwName)
			Sys_NormalBroadcast(sText)
		end
		
		-- 粉丝积分总积分
		local nPlayerAllPoint = Get_UserStatisticValue(nEvent_4,nType_4)
		local nPlayerUsePoint = Get_UserStatisticValue(nEvent_5,nType_5)
		
		-- 记录LOG
		User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["HandInFlw"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_FinalOnline_Log["HandFlower"],nFlwId,nFlwNum,nPoint))
		tNpcGossip[19087]["Text341"] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Text341"]
		tNpcGossip[19087]["Text342"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text341"],nPlayerAllPoint,nPlayerUsePoint)
		tNpcGossip[19087]["Option341"] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Option341"]
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	else
		tNpcGossip[19087]["Text321"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text321"],nFlwNum,sFlwName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end


-- 执行--输入鲜花数量
function TheGoddess2016_FinalOnline_DoFlwInput(nNpcId,nFlwNumType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end

	-- 输入字符判断
	local nFlwNum = tonumber(Get_SysAcceptStr())
	if type(nFlwNum) ~= "number" or nFlwNum <= 0 then
		tNpcGossip[19087]["OptionFunc311"] = string.format("TheGoddess2016_FinalOnline_InputFlwNum</N>%d</N>%d",nNpcId,nFlwNumType)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 鲜花种类
	local nEvent_2 = tTheGoddess2016_FinalOnline_Stc[2]["EventData"]
	local nType_2 = tTheGoddess2016_FinalOnline_Stc[2]["TypeData"]
	local nFlwType = Get_UserStatisticValue(nEvent_2,nType_2)

	-- 数量不够
	local nFlwId = tTheGoddess2016_FinalOnline_FlwId[nFlwType][nFlwNumType]
	local sFlwName = Get_ItemtypeName(nFlwId)

	if not Item_ChkMulItem(nFlwId,nFlwId,nFlwNum) then
		tNpcGossip[19087]["Text321"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text321"],nFlwNum,sFlwName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 二次确认
	tNpcGossip[19087]["Text331"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text331"],nFlwNum,sFlwName)
	tNpcGossip[19087]["OptionFunc331"] = string.format("TheGoddess2016_FinalOnline_DoFlwPiont</N>%d</N>%d</N>%d</N>%d</N>%s",nNpcId,nFlwType,nFlwNumType,nFlwNum,sFlwName)
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end


-- 输入鲜花数量
function TheGoddess2016_FinalOnline_InputFlwNum(nNpcId,nFlwNumType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end
	
	local nEvent_2 = tTheGoddess2016_FinalOnline_Stc[2]["EventData"]
	local nType_2 = tTheGoddess2016_FinalOnline_Stc[2]["TypeData"]
	local nEvent_3 = tTheGoddess2016_FinalOnline_Stc[3]["EventData"]
	local nType_3 = tTheGoddess2016_FinalOnline_Stc[3]["TypeData"]
	-- 取花的种类
	local nFlwType = Get_UserStatisticValue(nEvent_2,nType_2)
	-- 记录该种类鲜花的数量种类
	Task_SetStatistic(nEvent_3,nType_3,nFlwNumType,1)

	-- 出输入框对白
	local sOptEditText = tTheGoddess2016_FinalOnline_Text[19087]["Option231"]
	local nOptEditLen = tTheGoddess2016_FinalOnline_Cont["OptEditLen"]
	local sOptEditFunc = string.format("TheGoddess2016_FinalOnline_DoFlwInput</N>%d</N>%d",nNpcId,nFlwNumType)
	local sOptionFunc = string.format("</F>TheGoddess2016_FinalOnline_ChkFlwType</N>%d</N>%d",nNpcId,nFlwType)
	Sys_DialogText(tTheGoddess2016_FinalOnline_Text[19087]["Text231"])
	Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	Sys_DialogOption(tTheGoddess2016_FinalOnline_Text[19087]["Option232"],sOptionFunc)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end


-- 【为你投票。】--选择花束种类
function TheGoddess2016_FinalOnline_ChkFlwType(nNpcId,nFlwType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end

	local nEvent_2 = tTheGoddess2016_FinalOnline_Stc[2]["EventData"]
	local nType_2 = tTheGoddess2016_FinalOnline_Stc[2]["TypeData"]
	
	-- 记录投票种类（哪种鲜花）
	Task_SetStatistic(nEvent_2,nType_2,nFlwType,1)
	
	-- 出对白
	for nFlwNumType,v in ipairs(tTheGoddess2016_FinalOnline_FlwId[nFlwType]) do
		local sFlwName = Get_ItemtypeName(v)
		local sFunc = "TheGoddess2016_FinalOnline_InputFlwNum</N>%d</N>%d"
		local sOptionText = tTheGoddess2016_FinalOnline_Text[19087]["Option22".. nFlwNumType]
		tNpcGossip[19087]["Option22".. nFlwNumType] = string.format(sOptionText,sFlwName)
		tNpcGossip[19087]["OptionFunc22".. nFlwNumType] = string.format(sFunc,nNpcId,nFlwNumType)
	end
	
	tNpcGossip[19087]["OptionFunc226"] = string.format("LinkNpcGossipFunc_New</N>%d</S>2-1",nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end
	
	
---------------------------------------------------------------------------------------------------------------
-- 投票条件判断
function TheGoddess2016_FinalOnline_IsCanVote(nNpcId,nEMoneyType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return false
	end
	
	-- 次数上限判断
	-- local nVoteGlobal = tTheGoddess2016_FinalOnline_VoteGlobal[nNpcId]
	-- local nVoteTimes = Get_SysDynaGlobalData(nVoteGlobal,nEMoneyType)
	-- local nLimit = tTheGoddess2016_FinalOnline_Cont["VoteArtLimint"]
	local nEMoney = tTheGoddess2016_FinalOnline_VoteArt[nEMoneyType]
	-- if nVoteTimes >= nLimit then
		-- tNpcGossip[19087]["Text431"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text431"],nLimit,nEMoney)
		-- LinkNpcGossipFunc_New(nNpcId,"4-3")
		-- return false
	-- end
	
	-- 金币数量判断
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		TheGoddess2016_FinalOnline_Dialog(nNpcId,"4-2")
		return false
	end
	
	-- 满足条件
	return true
end


-- 【开启投票神器。】--二次确认
function TheGoddess2016_FinalOnline_IsBuyVote(nNpcId,nEMoneyType)
	-- 投票条件判断
	if not TheGoddess2016_FinalOnline_IsCanVote(nNpcId,nEMoneyType) then
		return
	end

	local nEMoney = tTheGoddess2016_FinalOnline_VoteArt[nEMoneyType]
	local nGodGlobal = tTheGoddess2016_FinalOnline_FlwGlobal[nNpcId]
	local nVoteGlobal = tTheGoddess2016_FinalOnline_VoteGlobal[nNpcId]
	
	if User_AddEMoney(-nEMoney) then
		local nPoint = 0 		-- 鲜花记录
		local nFanPoint = 0 	-- 粉丝积分
		
		-- 上限次数记录
		local nTimes = Get_SysDynaGlobalData(nVoteGlobal,nEMoneyType) + 1
		Sys_SetSynaGlobalData(nVoteGlobal,nEMoneyType,nTimes)
		
		-- 鲜花数据记录
		for nFlwType = 1, #tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType] do
			local nFlwNum = tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType][nFlwType]
			local nAllNum = Get_SysDynaGlobalData(nGodGlobal,nFlwType) + nFlwNum
			Sys_SetSynaGlobalData(nGodGlobal,nFlwType,nAllNum)
			nPoint = nPoint + nFlwNum
			nFanPoint = nFanPoint + nFlwNum * tTheGoddess2016_FinalOnline_FlwPoint[nFlwType]
		end
		
		-- 积分（只赠不减）
		local nEvent_4 = tTheGoddess2016_FinalOnline_Stc[4]["EventData"]
		local nType_4 = tTheGoddess2016_FinalOnline_Stc[4]["TypeData"]
		
		-- 积分（兑换礼包时积分减少）
		local nEvent_5 = tTheGoddess2016_FinalOnline_Stc[5]["EventData"]
		local nType_5 = tTheGoddess2016_FinalOnline_Stc[5]["TypeData"]

		-- 玩家粉丝积分增加
		Task_AddStatistic(nEvent_4,nType_4,nFanPoint,1)
		Task_AddStatistic(nEvent_5,nType_5,nFanPoint,1)

		-- 天石记录
		local nAllEMoney = Get_SysDynaGlobalData5(nGodGlobal) + nEMoney
		local sGodName = Get_NpcName(nNpcId)
		Sys_SetSynaGlobalData5(nGodGlobal,nAllEMoney)
		User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["HandInFlw"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_FinalOnline_Log["HandEMoney"],nEMoney,nPoint))
		Sys_SaveEmoneyBuy(string.format(tTheGoddess2016_FinalOnline_EmoneyLog["HandEMoney"],nEMoney,nEMoney))
		User_TalkChannel2005(string.format(tTheGoddess2016_FinalOnline_Text["DoBuyVote"],sGodName,nEMoney))
		TheGoddess2016_FinalOnline_Dialog(nNpcId,"1-1")
	end
end

-- 【开启投票神器。】
function TheGoddess2016_FinalOnline_BuyVoteArt(nEMoneyType)
	local nNpcId = Get_NpcId()
	
	-- 投票条件判断
	if not TheGoddess2016_FinalOnline_IsCanVote(nNpcId,nEMoneyType) then
		return
	end
	
	local nEMoney = tTheGoddess2016_FinalOnline_VoteArt[nEMoneyType]
	
	-- 出二次确认对白
	local nLily = tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType][1]
	local nOrchid = tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType][2]
	local nRose = tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType][3]
	local nTulip = tTheGoddess2016_FinalOnline_Vote2Flw[nEMoneyType][4]
	tNpcGossip[19087]["Text441"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text441"],nEMoney)
	tNpcGossip[19087]["Text442"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text442"],nLily,nRose,nOrchid,nTulip)
	tNpcGossip[19087]["Text443"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text443"],nEMoney)
	tNpcGossip[19087]["OptionFunc441"] = string.format("TheGoddess2016_FinalOnline_IsBuyVote</N>%d</N>%d",nNpcId,nEMoneyType)
	LinkNpcGossipFunc_New(nNpcId,"4-4")
end
	
	
--------------------------------------------------------------------------------------------------------
-- 
function TheGoddess2016_FinalOnline_IsExchGfit(nNpcId,nType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end

	-- 积分不够
	local nEvent_5 = tTheGoddess2016_FinalOnline_Stc[5]["EventData"]
	local nType_5 = tTheGoddess2016_FinalOnline_Stc[5]["TypeData"]
	local nStcValue_5 = Get_UserStatisticValue(nEvent_5,nType_5)
	local nNeedPoint = tTheGoddess2016_FinalOnline_GiftPoint[nType]
	if nStcValue_5 < nNeedPoint then
		tNpcGossip[19087]["Text521"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text521"],nNeedPoint)
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tTheGoddess2016_FinalOnline_Cont["Space1"]) then
		User_TalkChannel2005(tTheGoddess2016_FinalOnline_Text["Space1"])
		return
	end
	
	-- 减积分给礼包
	if Task_AddStatistic(nEvent_5,nType_5,-nNeedPoint,1) then
		Item_AddItem(tTheGoddess2016_FinalOnline_GiftId[nType])
		User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["RewardPack"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_FinalOnline_Log["GetPack"],tTheGoddess2016_FinalOnline_GiftId[nType]))
	
		-- 提示
		local sItemName = Get_ItemtypeName(tTheGoddess2016_FinalOnline_GiftId[nType])
		tNpcGossip[19087]["Text641"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text641"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"6-4")
	end
end


-- 兑换礼包粉丝积分判断
function TheGoddess2016_FinalOnline_ChkGiftPoint(nNpcId,nType,sDialog)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		return
	end
	
	-- 积分不够
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_FinalOnline_Stc[5]["EventData"],tTheGoddess2016_FinalOnline_Stc[5]["TypeData"])
	local nNeedPoint = tTheGoddess2016_FinalOnline_GiftPoint[nType]
	if nStcValue_5 < nNeedPoint then
		tNpcGossip[19087]["Text521"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text521"],nNeedPoint)
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 二次确认
	tNpcGossip[19087]["OptionFunc6".. nType .."1"] = string.format("TheGoddess2016_FinalOnline_IsExchGfit</N>%d</N>%d",nNpcId,nType)
	tNpcGossip[19087]["OptionFunc6".. nType .."2"] = string.format("LinkNpcGossipFunc_New</N>%d</N>5-1",nNpcId)
	TheGoddess2016_FinalOnline_Dialog(nNpcId,sDialog)
end
	
	
---------------------------------------------------------------------------------------------------------------
-- 指环兑换气力值
function TheGoddess2016_FinalOnline_DoRingInput(nNpcId,nRingNum,nType)
	-- 活动时间
	-- if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		-- return
	-- end
	
	-- 输入字符判断
	local nItemNum = tonumber(Get_SysAcceptStr())
	if type(nItemNum) ~= "number" or nItemNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
		-- 数量不够
	local nItemId = tTheGoddess2016_FinalOnline_Cont["RingId"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1) then
		LinkNpcGossipFunc_New(nNpcId,"9-4")
		return
		
	-- 背包空间
	elseif not User_CheckLeftSpace(tTheGoddess2016_FinalOnline_Cont["Space1"]) then
		User_TalkChannel2005(tTheGoddess2016_FinalOnline_Text["Space1"])
		return
		
	-- 删指环给奖励
	elseif Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		-- 走几率
		if math.random(1 , nRingNum * 10000) <= nItemNum * 10000 then
			local nNewItemId = 0
			if nType ~= 0 then
				nNewItemId = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum][nType]
			else
				nNewItemId = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum][1]
			end
			
			local sItemName = Get_ItemtypeName(nNewItemId)
			local sText = ""
			
			-- 为武器外套
			if nRingNum == 5 then
				local sItemAttr = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum]["ItemAttr"]
				Item_AddNewItem(nNewItemId,sItemAttr)
				sText = tTheGoddess2016_FinalOnline_Text["RingGotWeapon"]
			else
				local sItemAttr = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum]["ItemAttr"]
				Item_AddNewItem(nNewItemId,sItemAttr)
				sText = tTheGoddess2016_FinalOnline_Text["RingGotCoat"]
			end

			User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["Ring2Coat"])
			Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_FinalOnline_Log["Ring2Coat"],nItemId,nRingNum,nNewItemId))
			User_TalkChannel2005(string.format(sText,sItemName))
		
		-- 给气力值
		else
			local nValue = nItemNum * tTheGoddess2016_FinalOnline_Cont["Ring2Streng"]
			if User_AddStrengthValue(nValue) then
				User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["Ring2Streng"])
				Sys_SaveActionFestivalLog(tTheGoddess2016_FinalOnline_Log["Ring2Streng"],nItemId,nItemNum,nValue)
				-- 提示
				User_TalkChannel2005(string.format(tTheGoddess2016_FinalOnline_Text["Ring2Streng"],nValue))
			end
		end
	end
end


-- 指环换外套
function TheGoddess2016_FinalOnline_Ring2Coat(nNpcId,nRingNum,nType)
	-- 活动时间
	-- if not Sys_ChkFullTime(tTheGoddess2016_FinalOnline_Cont["ActivityTime"]) then
		-- return
	-- end

	-- 是否有指环
	local nItemId = tTheGoddess2016_FinalOnline_Cont["RingId"]
	if not Item_ChkItem(nItemId,1) then
		LinkNpcGossipFunc_New(nNpcId,"9-2")
		return
	end
	
	-- 数量不够
	if not Item_ChkMulItem(nItemId,nItemId,nRingNum,1) then
		local sDialogText1 = tTheGoddess2016_FinalOnline_Text[19087]["Text931"]
		local sDialogText2 = tTheGoddess2016_FinalOnline_Text[19087]["Text932"]
		local sDialogText3 = tTheGoddess2016_FinalOnline_Text[19087]["Text933"]
		local sOptEditText = tTheGoddess2016_FinalOnline_Text[19087]["Option931"]
		local nOptEditLen = tTheGoddess2016_FinalOnline_Cont["OptEditLen"]
		local sOptEditFunc = string.format("</F>TheGoddess2016_FinalOnline_DoRingInput</N>%d</N>%d</N>%d",nNpcId,nRingNum,nType)
		-- Sys_DialogTaskClear()
		Sys_DialogText(sDialogText1)
		Sys_DialogText(sDialogText2)
		Sys_DialogText(sDialogText3)
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(tTheGoddess2016_FinalOnline_Text[19087]["Option932"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
		
	-- 数量够
	elseif Item_DelMulItem(nItemId,nItemId,nRingNum,1) then
		local nNewItemId = 0
		if nType ~= 0 then
			nNewItemId = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum][nType]
		else
			nNewItemId = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum][1]
		end
		
		local sItemName = Get_ItemtypeName(nNewItemId)
		local sText = ""
		
		-- 为武器外套
		if nRingNum == 5 then
			local sItemAttr = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum]["ItemAttr"]
			Item_AddNewItem(nNewItemId,sItemAttr)
			sText = tTheGoddess2016_FinalOnline_Text["RingGotWeapon"]
		else
			local sItemAttr = tTheGoddess2016_FinalOnline_Ring2CoatId[nRingNum]["ItemAttr"]
			Item_AddNewItem(nNewItemId,sItemAttr)
			sText = tTheGoddess2016_FinalOnline_Text["RingGotCoat"]
		end
		User_EffectAdd(tTheGoddess2016_FinalOnline_Effect["Self"],tTheGoddess2016_FinalOnline_Effect["Ring2Coat"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_FinalOnline_Log["Ring2Coat"],nItemId,nRingNum,nNewItemId))
		User_TalkChannel2005(string.format(sText,sItemName))
	end
end
	
	

	
---------------------------------------------------------------------------------------------------------------
-- 对白组合
function TheGoddess2016_FinalOnline_Dialog(nNpcId,sDialog)

	-- 对白部分
	for _,v in ipairs(tNpcGossip[19087]["Text".. sDialog]) do
		if tTheGoddess2016_FinalOnline_Text[nNpcId]["Text".. v] == nil then
			tNpcGossip[19087]["Text".. v] = tTheGoddess2016_FinalOnline_Text[19087]["Text".. v]
		else
			tNpcGossip[19087]["Text".. v] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Text".. v]
		end
	end
	
	-- 选项部分
	for _,v in ipairs(tNpcGossip[19087]["tOption".. sDialog]) do
		if tTheGoddess2016_FinalOnline_Text[nNpcId]["Option".. v] == nil then
			tNpcGossip[19087]["Option".. v] = tTheGoddess2016_FinalOnline_Text[19087]["Option".. v]
		else
			tNpcGossip[19087]["Option".. v] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Option".. v]
		end
	end
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,sDialog)
end


-- NPC接入函数
function TheGoddess2016_FinalOnline_NpcInfo()
	local nNpcId = Get_NpcId()
	
	-- 活动中
	TheGoddess2016_FinalOnline_Dialog(nNpcId,"1-1")
end

-- 后期NPC接入(19241)花神指环兑换大使
function TheGoddess2016_FinalOnline_RingNpc()
	local nNpcId = Get_NpcId()
	local nUserSex = Get_UserSex()
	tNpcGossip[19087]["Text9-1"] = {9111,912,913}
	tNpcGossip[19087]["OptionPoint911"] = "9-5"
	tNpcGossip[19087]["OptionFunc912"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>15</N>%d",nNpcId,nUserSex)
	tNpcGossip[19087]["OptionFunc913"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>30</N>0",nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"9-1")
end

----------------------------------------------------NPC模版对白配置-------------------------------------------

--【玩家名】（男神）
tNpcFace[5105] = 137
tNpcFace[5106] = 137
tNpcFace[5107] = 137
tNpcFace[5108] = 137
tNpcFace[5109] = 112
tNpcFace[5110] = 112
tNpcFace[5111] = 112
tNpcFace[5112] = 112
tNpcFace[5115] = 112
tNpcGossip[19087] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19088] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19089] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19090] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19091] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19092] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19093] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19120] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19241] = tNpcGossip[19087] or DefaultNpc:new{}
tNpcGossip[19087]["OptionHidden"] = 1

-- 活动中
tNpcGossip[19087]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[19087]["tOption1-1"] = {111,112,113,119,114,115,116,117,118}
tNpcGossip[19087]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19087]["Option111"] = tTheGoddess2016_FinalOnline_Text[19087]["Option111"]
tNpcGossip[19087]["Option112"] = tTheGoddess2016_FinalOnline_Text[19087]["Option112"]
tNpcGossip[19087]["Option113"] = tTheGoddess2016_FinalOnline_Text[19087]["Option113"]
tNpcGossip[19087]["Option119"] = tTheGoddess2016_FinalOnline_Text[19087]["Option119"]
tNpcGossip[19087]["Option114"] = tTheGoddess2016_FinalOnline_Text[19087]["Option114"]
tNpcGossip[19087]["Option115"] = tTheGoddess2016_FinalOnline_Text[19087]["Option115"]
tNpcGossip[19087]["Option116"] = tTheGoddess2016_FinalOnline_Text[19087]["Option116"]
tNpcGossip[19087]["Option117"] = tTheGoddess2016_FinalOnline_Text[19087]["Option117"]
tNpcGossip[19087]["Option118"] = tTheGoddess2016_FinalOnline_Text[19087]["Option118"]
tNpcGossip[19087]["OptionPoint111"] = "2-1"
tNpcGossip[19087]["OptionPoint112"] = "4-1"
tNpcGossip[19087]["OptionPoint113"] = "5-1"
tNpcGossip[19087]["OptionPoint119"] = "9-1"
tNpcGossip[19087]["OptionFunc114"] = "TheGoddess2016_FinalOnline_OpenShop"
tNpcGossip[19087]["OptionFunc115"] = string.format("User_SendWebDialog</S>%s",tTheGoddess2016_FinalOnline_Cont["Web"])
tNpcGossip[19087]["OptionPoint116"] = "7-1"
tNpcGossip[19087]["OptionPoint117"] = "8-1"

-- 【为你投票。】
tNpcGossip[19087]["Text2-1"] = {211,212}
tNpcGossip[19087]["Text211"] = tTheGoddess2016_FinalOnline_Text[19087]["Text211"]
tNpcGossip[19087]["Text212"] = tTheGoddess2016_FinalOnline_Text[19087]["Text212"]
tNpcGossip[19087]["ChkFunc2-1"] = function()

	local nNpcId = Get_NpcId()
	local nEvent_1 = tTheGoddess2016_FinalOnline_Stc[1]["EventData"]
	local nType_1 = tTheGoddess2016_FinalOnline_Stc[1]["TypeData"]
	local nGodGlobal = tTheGoddess2016_FinalOnline_FlwGlobal[nNpcId]
	
	-- 记录投票对象（掩码编号）
	Task_SetStatistic(nEvent_1,nType_1,nGodGlobal,1)
	tNpcGossip[19087]["Text211"] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Text211"]
	tNpcGossip[19087]["Text212"] = tTheGoddess2016_FinalOnline_Text[nNpcId]["Text212"]
	tNpcGossip[19087]["OptionFunc211"] = string.format("TheGoddess2016_FinalOnline_ChkFlwType</N>%d</N>1",nNpcId)
	tNpcGossip[19087]["OptionFunc212"] = string.format("TheGoddess2016_FinalOnline_ChkFlwType</N>%d</N>2",nNpcId)
	tNpcGossip[19087]["OptionFunc213"] = string.format("TheGoddess2016_FinalOnline_ChkFlwType</N>%d</N>3",nNpcId)
	tNpcGossip[19087]["OptionFunc214"] = string.format("TheGoddess2016_FinalOnline_ChkFlwType</N>%d</N>4",nNpcId)
	return true
end
tNpcGossip[19087]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[19087]["Option211"] = tTheGoddess2016_FinalOnline_Text[19087]["Option211"]
tNpcGossip[19087]["Option212"] = tTheGoddess2016_FinalOnline_Text[19087]["Option212"]
tNpcGossip[19087]["Option213"] = tTheGoddess2016_FinalOnline_Text[19087]["Option213"]
tNpcGossip[19087]["Option214"] = tTheGoddess2016_FinalOnline_Text[19087]["Option214"]
tNpcGossip[19087]["Option215"] = tTheGoddess2016_FinalOnline_Text[19087]["Option215"]

-- 【为你投票。】--选择花束种类
tNpcGossip[19087]["Text2-2"] = {221}
tNpcGossip[19087]["Text221"] = tTheGoddess2016_FinalOnline_Text[19087]["Text221"]
tNpcGossip[19087]["tOption2-2"] = {221,222,223,224,225,226}
tNpcGossip[19087]["Option226"] = tTheGoddess2016_FinalOnline_Text[19087]["Option226"]

-- 【为你投票。】--输入鲜花数量字符错误
tNpcGossip[19087]["Text3-1"] = {311}
tNpcGossip[19087]["Text311"] = tTheGoddess2016_FinalOnline_Text[19087]["Text311"]
tNpcGossip[19087]["tOption3-1"] = {311}
tNpcGossip[19087]["Option311"] = tTheGoddess2016_FinalOnline_Text[19087]["Option311"]

-- 【为你投票。】--鲜花数量不足
tNpcGossip[19087]["Text3-2"] = {321}
tNpcGossip[19087]["tOption3-2"] = {321}
tNpcGossip[19087]["Option321"] = tTheGoddess2016_FinalOnline_Text[19087]["Option321"]

-- 【为你投票。】--二次确认
tNpcGossip[19087]["Text3-3"] = {331,332}
tNpcGossip[19087]["Text331"] = tTheGoddess2016_FinalOnline_Text[19087]["Text331"]
tNpcGossip[19087]["Text332"] = tTheGoddess2016_FinalOnline_Text[19087]["Text332"]
tNpcGossip[19087]["tOption3-3"] = {331,332}
tNpcGossip[19087]["Option331"] = tTheGoddess2016_FinalOnline_Text[19087]["Option331"]
tNpcGossip[19087]["Option332"] = tTheGoddess2016_FinalOnline_Text[19087]["Option332"]

-- 【为你投票。】--成功
tNpcGossip[19087]["Text3-4"] = {341,342}
tNpcGossip[19087]["Text341"] = tTheGoddess2016_FinalOnline_Text[19087]["Text341"]
tNpcGossip[19087]["Text342"] = tTheGoddess2016_FinalOnline_Text[19087]["Text342"]
tNpcGossip[19087]["tOption3-4"] = {341}
tNpcGossip[19087]["Option341"] = tTheGoddess2016_FinalOnline_Text[19087]["Option341"]

-- 【开启投票神器。】
tNpcGossip[19087]["Text4-1"] = {411,412,413}
tNpcGossip[19087]["Text411"] = tTheGoddess2016_FinalOnline_Text[19087]["Text411"]
tNpcGossip[19087]["Text412"] = tTheGoddess2016_FinalOnline_Text[19087]["Text412"]
tNpcGossip[19087]["Text413"] = tTheGoddess2016_FinalOnline_Text[19087]["Text413"]
tNpcGossip[19087]["tOption4-1"] = {411,412,413,414,415}
tNpcGossip[19087]["Option411"] = tTheGoddess2016_FinalOnline_Text[19087]["Option411"]
tNpcGossip[19087]["Option412"] = tTheGoddess2016_FinalOnline_Text[19087]["Option412"]
tNpcGossip[19087]["Option413"] = tTheGoddess2016_FinalOnline_Text[19087]["Option413"]
tNpcGossip[19087]["Option414"] = tTheGoddess2016_FinalOnline_Text[19087]["Option414"]
tNpcGossip[19087]["Option415"] = tTheGoddess2016_FinalOnline_Text[19087]["Option415"]
tNpcGossip[19087]["OptionFunc411"] = "TheGoddess2016_FinalOnline_BuyVoteArt</N>1"
tNpcGossip[19087]["OptionFunc412"] = "TheGoddess2016_FinalOnline_BuyVoteArt</N>2"
tNpcGossip[19087]["OptionFunc413"] = "TheGoddess2016_FinalOnline_BuyVoteArt</N>3"
tNpcGossip[19087]["OptionFunc414"] = "TheGoddess2016_FinalOnline_BuyVoteArt</N>4"

--【开启投票神器。】-- 失败、天石不足
tNpcGossip[19087]["Text4-2"] = {421}
tNpcGossip[19087]["Text421"] = tTheGoddess2016_FinalOnline_Text[19087]["Text421"]
tNpcGossip[19087]["tOption4-2"] = {421}
tNpcGossip[19087]["Option421"] = tTheGoddess2016_FinalOnline_Text[19087]["Option421"]

--【开启投票神器。】-- 失败、投票超过上限
tNpcGossip[19087]["Text4-3"] = {431,432}
tNpcGossip[19087]["Text431"] = tTheGoddess2016_FinalOnline_Text[19087]["Text431"]
tNpcGossip[19087]["Text432"] = tTheGoddess2016_FinalOnline_Text[19087]["Text432"]
tNpcGossip[19087]["tOption4-3"] = {431}
tNpcGossip[19087]["Option431"] = tTheGoddess2016_FinalOnline_Text[19087]["Option431"]

--【开启投票神器。】--二次确认对白
tNpcGossip[19087]["Text4-4"] = {441,442,443}
tNpcGossip[19087]["Text441"] = tTheGoddess2016_FinalOnline_Text[19087]["Text441"]
tNpcGossip[19087]["Text442"] = tTheGoddess2016_FinalOnline_Text[19087]["Text442"]
tNpcGossip[19087]["Text443"] = tTheGoddess2016_FinalOnline_Text[19087]["Text443"]
tNpcGossip[19087]["tOption4-4"] = {441,442}
tNpcGossip[19087]["Option441"] = tTheGoddess2016_FinalOnline_Text[19087]["Option441"]
tNpcGossip[19087]["Option442"] = tTheGoddess2016_FinalOnline_Text[19087]["Option442"]

--【开启投票神器。】--成功
tNpcGossip[19087]["Text4-5"] = {451}
tNpcGossip[19087]["Text451"] = tTheGoddess2016_FinalOnline_Text[19087]["Text451"]
tNpcGossip[19087]["tOption4-5"] = {451}
tNpcGossip[19087]["Option451"] = tTheGoddess2016_FinalOnline_Text[19087]["Option451"]
tNpcGossip[19087]["OptionFunc451"] = ""

-- 【换取粉丝礼包。】
tNpcGossip[19087]["Text5-1"] = {511,512,513}
tNpcGossip[19087]["Text511"] = tTheGoddess2016_FinalOnline_Text[19087]["Text511"]
tNpcGossip[19087]["Text512"] = tTheGoddess2016_FinalOnline_Text[19087]["Text512"]
tNpcGossip[19087]["Text513"] = tTheGoddess2016_FinalOnline_Text[19087]["Text513"]
tNpcGossip[19087]["tOption5-1"] = {511,512,513,514,515}
tNpcGossip[19087]["Option511"] = tTheGoddess2016_FinalOnline_Text[19087]["Option511"]
tNpcGossip[19087]["Option512"] = tTheGoddess2016_FinalOnline_Text[19087]["Option512"]
tNpcGossip[19087]["Option513"] = tTheGoddess2016_FinalOnline_Text[19087]["Option513"]
tNpcGossip[19087]["Option514"] = tTheGoddess2016_FinalOnline_Text[19087]["Option514"]
tNpcGossip[19087]["Option515"] = tTheGoddess2016_FinalOnline_Text[19087]["Option515"]
tNpcGossip[19087]["ChkFunc5-1"]= function()
	local nNpcId = Get_NpcId()
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_FinalOnline_Stc[5]["EventData"],tTheGoddess2016_FinalOnline_Stc[5]["TypeData"])
	tNpcGossip[19087]["Text511"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text511"],nStcValue_5)
	tNpcGossip[19087]["OptionFunc511"] = string.format("TheGoddess2016_FinalOnline_ChkGiftPoint</N>%d</N>1</S>6-1",nNpcId)
	tNpcGossip[19087]["OptionFunc512"] = string.format("TheGoddess2016_FinalOnline_ChkGiftPoint</N>%d</N>2</S>6-2",nNpcId)
	tNpcGossip[19087]["OptionFunc513"] = string.format("TheGoddess2016_FinalOnline_ChkGiftPoint</N>%d</N>3</S>6-3",nNpcId)
	tNpcGossip[19087]["OptionFunc514"] = string.format("TheGoddess2016_FinalOnline_Dialog</N>%d</S>1-1",nNpcId)
	return true
end

-- 【换取粉丝礼包。】--积分不足
tNpcGossip[19087]["Text5-2"] = {521}
tNpcGossip[19087]["Text521"] = tTheGoddess2016_FinalOnline_Text[19087]["Text521"]
tNpcGossip[19087]["tOption5-2"] = {521}
tNpcGossip[19087]["Option521"] = tTheGoddess2016_FinalOnline_Text[19087]["Option521"]

-- 粉丝追捧礼包（200点）
tNpcGossip[19087]["Text6-1"] = {611,612,613}
tNpcGossip[19087]["Text611"] = tTheGoddess2016_FinalOnline_Text[19087]["Text611"]
tNpcGossip[19087]["Text612"] = tTheGoddess2016_FinalOnline_Text[19087]["Text612"]
tNpcGossip[19087]["Text613"] = tTheGoddess2016_FinalOnline_Text[19087]["Text613"]
tNpcGossip[19087]["tOption6-1"] = {611,612,613}
tNpcGossip[19087]["Option611"] = tTheGoddess2016_FinalOnline_Text[19087]["Option611"]
tNpcGossip[19087]["Option612"] = tTheGoddess2016_FinalOnline_Text[19087]["Option612"]
tNpcGossip[19087]["Option613"] = tTheGoddess2016_FinalOnline_Text[19087]["Option613"]

-- 粉丝爱慕礼包（1000点）
tNpcGossip[19087]["Text6-2"] = {621,622,623}
tNpcGossip[19087]["Text621"] = tTheGoddess2016_FinalOnline_Text[19087]["Text621"]
tNpcGossip[19087]["Text622"] = tTheGoddess2016_FinalOnline_Text[19087]["Text622"]
tNpcGossip[19087]["Text623"] = tTheGoddess2016_FinalOnline_Text[19087]["Text623"]
tNpcGossip[19087]["tOption6-2"] = {621,622,623}
tNpcGossip[19087]["Option621"] = tTheGoddess2016_FinalOnline_Text[19087]["Option621"]
tNpcGossip[19087]["Option622"] = tTheGoddess2016_FinalOnline_Text[19087]["Option622"]
tNpcGossip[19087]["Option623"] = tTheGoddess2016_FinalOnline_Text[19087]["Option623"]

-- 粉丝狂恋礼包（3000点）
tNpcGossip[19087]["Text6-3"] = {631,632,633}
tNpcGossip[19087]["Text631"] = tTheGoddess2016_FinalOnline_Text[19087]["Text631"]
tNpcGossip[19087]["Text632"] = tTheGoddess2016_FinalOnline_Text[19087]["Text632"]
tNpcGossip[19087]["Text633"] = tTheGoddess2016_FinalOnline_Text[19087]["Text633"]
tNpcGossip[19087]["tOption6-3"] = {631,632,633}
tNpcGossip[19087]["Option631"] = tTheGoddess2016_FinalOnline_Text[19087]["Option631"]
tNpcGossip[19087]["Option632"] = tTheGoddess2016_FinalOnline_Text[19087]["Option632"]
tNpcGossip[19087]["Option633"] = tTheGoddess2016_FinalOnline_Text[19087]["Option633"]

-- 粉丝礼包兑换成功
tNpcGossip[19087]["Text6-4"] = {641}
tNpcGossip[19087]["Text641"] = tTheGoddess2016_FinalOnline_Text[19087]["Text641"]
tNpcGossip[19087]["tOption6-4"] = {641}
tNpcGossip[19087]["Option641"] = tTheGoddess2016_FinalOnline_Text[19087]["Option641"]

-- 【了解比赛详情。】
tNpcGossip[19087]["Text7-1"] = {711,712,713}
tNpcGossip[19087]["Text711"] = tTheGoddess2016_FinalOnline_Text[19087]["Text711"]
tNpcGossip[19087]["Text712"] = tTheGoddess2016_FinalOnline_Text[19087]["Text712"]
tNpcGossip[19087]["Text713"] = tTheGoddess2016_FinalOnline_Text[19087]["Text713"]
tNpcGossip[19087]["tOption7-1"] = {711}
tNpcGossip[19087]["Option711"] = tTheGoddess2016_FinalOnline_Text[19087]["Option711"]
tNpcGossip[19087]["ChkFunc7-1"]= function()
	local nNpcId = Get_NpcId()
	local sGodSex = tTheGoddess2016_FinalOnline_Text["GodSex"][nNpcId]
	local sGodTitle = tTheGoddess2016_FinalOnline_Text["GodTitle"][nNpcId]
	tNpcGossip[19087]["Text711"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text711"],sGodSex)
	tNpcGossip[19087]["Text712"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text712"],sGodSex,sGodSex)
	tNpcGossip[19087]["Text713"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text713"],sGodTitle)
	return true
end

--【查看大赛奖励。】
tNpcGossip[19087]["Text8-1"] = {811,812,813}
tNpcGossip[19087]["Text811"] = tTheGoddess2016_FinalOnline_Text[19087]["Text811"]
tNpcGossip[19087]["Text812"] = tTheGoddess2016_FinalOnline_Text[19087]["Text812"]
tNpcGossip[19087]["Text813"] = tTheGoddess2016_FinalOnline_Text[19087]["Text813"]
tNpcGossip[19087]["tOption8-1"] = {811,812,814,815}
tNpcGossip[19087]["Option811"] = tTheGoddess2016_FinalOnline_Text[19087]["Option811"]
tNpcGossip[19087]["Option812"] = tTheGoddess2016_FinalOnline_Text[19087]["Option812"]
tNpcGossip[19087]["Option813"] = tTheGoddess2016_FinalOnline_Text[19087]["Option813"]
tNpcGossip[19087]["Option814"] = tTheGoddess2016_FinalOnline_Text[19087]["Option814"]
tNpcGossip[19087]["Option815"] = tTheGoddess2016_FinalOnline_Text[19087]["Option815"]
tNpcGossip[19087]["OptionPoint811"] = "8-2"
tNpcGossip[19087]["OptionPoint812"] = "8-3"
tNpcGossip[19087]["OptionPoint813"] = "8-4"
tNpcGossip[19087]["OptionPoint814"] = "8-5"

--【查看大赛奖励。】--花神奖励榜
tNpcGossip[19087]["Text8-2"] = {821,822,823,824,825}
tNpcGossip[19087]["Text821"] = tTheGoddess2016_FinalOnline_Text[19087]["Text821"]
tNpcGossip[19087]["Text822"] = tTheGoddess2016_FinalOnline_Text[19087]["Text822"]
tNpcGossip[19087]["Text823"] = tTheGoddess2016_FinalOnline_Text[19087]["Text823"]
tNpcGossip[19087]["Text824"] = tTheGoddess2016_FinalOnline_Text[19087]["Text824"]
tNpcGossip[19087]["Text825"] = tTheGoddess2016_FinalOnline_Text[19087]["Text825"]
tNpcGossip[19087]["tOption8-2"] = {821}
tNpcGossip[19087]["Option821"] = tTheGoddess2016_FinalOnline_Text[19087]["Option821"]

--【查看大赛奖励。】--粉丝奖励
tNpcGossip[19087]["Text8-3"] = {831,832}
tNpcGossip[19087]["Text831"] = tTheGoddess2016_FinalOnline_Text[19087]["Text831"]
tNpcGossip[19087]["Text832"] = tTheGoddess2016_FinalOnline_Text[19087]["Text832"]
tNpcGossip[19087]["tOption8-3"] = {831}
tNpcGossip[19087]["Option831"] = tTheGoddess2016_FinalOnline_Text[19087]["Option831"]

--【查看大赛奖励。】--如何换取外套
tNpcGossip[19087]["Text8-4"] = {841,842}
tNpcGossip[19087]["Text841"] = tTheGoddess2016_FinalOnline_Text[19087]["Text841"]
tNpcGossip[19087]["Text842"] = tTheGoddess2016_FinalOnline_Text[19087]["Text842"]
tNpcGossip[19087]["tOption8-4"] = {841}
tNpcGossip[19087]["Option841"] = tTheGoddess2016_FinalOnline_Text[19087]["Option841"]

--【查看大赛奖励。】--了解粉丝礼包
tNpcGossip[19087]["Text8-5"] = {851,852}
tNpcGossip[19087]["Text851"] = tTheGoddess2016_FinalOnline_Text[19087]["Text851"]
tNpcGossip[19087]["Text852"] = tTheGoddess2016_FinalOnline_Text[19087]["Text852"]
tNpcGossip[19087]["tOption8-5"] = {851,852}
tNpcGossip[19087]["Option851"] = tTheGoddess2016_FinalOnline_Text[19087]["Option851"]
tNpcGossip[19087]["Option852"] = tTheGoddess2016_FinalOnline_Text[19087]["Option852"]
tNpcGossip[19087]["OptionPoint851"] = "8-6"


-- 了解粉丝礼包奖励。
tNpcGossip[19087]["Text8-6"] = {861,862,863,864,865,866,867,868}
tNpcGossip[19087]["Text861"] = tTheGoddess2016_FinalOnline_Text[19087]["Text861"]
tNpcGossip[19087]["Text862"] = tTheGoddess2016_FinalOnline_Text[19087]["Text862"]
tNpcGossip[19087]["Text863"] = tTheGoddess2016_FinalOnline_Text[19087]["Text863"]
tNpcGossip[19087]["Text864"] = tTheGoddess2016_FinalOnline_Text[19087]["Text864"]
tNpcGossip[19087]["Text865"] = tTheGoddess2016_FinalOnline_Text[19087]["Text865"]
tNpcGossip[19087]["Text866"] = tTheGoddess2016_FinalOnline_Text[19087]["Text866"]
tNpcGossip[19087]["Text867"] = tTheGoddess2016_FinalOnline_Text[19087]["Text867"]
tNpcGossip[19087]["Text868"] = tTheGoddess2016_FinalOnline_Text[19087]["Text868"]
tNpcGossip[19087]["tOption8-6"] = {861}
tNpcGossip[19087]["Option861"] = tTheGoddess2016_FinalOnline_Text[19087]["Option861"]

-- 【花神指环兑换奖励。】
tNpcGossip[19087]["Text9-1"] = {911,912,913}
tNpcGossip[19087]["Text9111"] = tTheGoddess2016_FinalOnline_Text[19087]["Text9111"]
tNpcGossip[19087]["Text911"] = tTheGoddess2016_FinalOnline_Text[19087]["Text911"]
tNpcGossip[19087]["Text912"] = tTheGoddess2016_FinalOnline_Text[19087]["Text912"]
tNpcGossip[19087]["Text913"] = tTheGoddess2016_FinalOnline_Text[19087]["Text913"]
tNpcGossip[19087]["tOption9-1"] = {911,912,913,914}
tNpcGossip[19087]["Option911"] = tTheGoddess2016_FinalOnline_Text[19087]["Option911"]
tNpcGossip[19087]["Option912"] = tTheGoddess2016_FinalOnline_Text[19087]["Option912"]
tNpcGossip[19087]["Option913"] = tTheGoddess2016_FinalOnline_Text[19087]["Option913"]
tNpcGossip[19087]["Option914"] = tTheGoddess2016_FinalOnline_Text[19087]["Option914"]
tNpcGossip[19087]["ChkFunc9-1"] = function()
	local nNpcId = Get_NpcId()
	local nUserSex = Get_UserSex()
	local sGodSex = tTheGoddess2016_FinalOnline_Text["GodSex"][nNpcId]
	tNpcGossip[19087]["Text911"] = string.format(tTheGoddess2016_FinalOnline_Text[19087]["Text911"],sGodSex)
	tNpcGossip[19087]["OptionPoint911"] = "9-5"
	tNpcGossip[19087]["OptionFunc912"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>15</N>%d",nNpcId,nUserSex)
	tNpcGossip[19087]["OptionFunc913"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>30</N>0",nNpcId)
	return true
end

-- 【花神指环兑换奖励。】--失败、没有碎片
tNpcGossip[19087]["Text9-2"] = {921}
tNpcGossip[19087]["Text921"] = tTheGoddess2016_FinalOnline_Text[19087]["Text921"]
tNpcGossip[19087]["tOption9-2"] = {921}
tNpcGossip[19087]["Option921"] = tTheGoddess2016_FinalOnline_Text[19087]["Option921"]

-- 【花神指环兑换奖励。】--输入指环数量 --失败、指环数量不够
tNpcGossip[19087]["Text9-4"] = {941}
tNpcGossip[19087]["Text941"] = tTheGoddess2016_FinalOnline_Text[19087]["Text941"]
tNpcGossip[19087]["tOption9-4"] = {941}
tNpcGossip[19087]["Option941"] = tTheGoddess2016_FinalOnline_Text[19087]["Option941"]

-- 【花神指环兑换奖励。】--换取武器外套
tNpcGossip[19087]["Text9-5"] = {951}
tNpcGossip[19087]["Text951"] = tTheGoddess2016_FinalOnline_Text[19087]["Text951"]
tNpcGossip[19087]["tOption9-5"] = {951,952}
tNpcGossip[19087]["Option951"] = tTheGoddess2016_FinalOnline_Text[19087]["Option951"]
tNpcGossip[19087]["Option952"] = tTheGoddess2016_FinalOnline_Text[19087]["Option952"]
tNpcGossip[19087]["ChkFunc9-5"] = function()
	local nNpcId = Get_NpcId()
	
	-- 是否有指环
	local nItemId = tTheGoddess2016_FinalOnline_Cont["RingId"]
	if not Item_ChkItem(nItemId,1) then
		LinkNpcGossipFunc_New(nNpcId,"9-2")
		return false
	end
	
	tNpcGossip[19087]["OptionFunc951"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>5</N>1",nNpcId)
	tNpcGossip[19087]["OptionFunc952"] = string.format("TheGoddess2016_FinalOnline_Ring2Coat</N>%d</N>5</N>2",nNpcId)
	return true
end


--------------------------------------时间触发-------------------------------------------
-- 0点执行203W
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],TheGoddess2016_FinalOnline_Func0clock)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],TheGoddess2016_FinalOnline_Func0clock)

-- 23点59分执行203W
-- tOntimerMin_HM[2358] = tOntimerMin_HM[2358] or {}
-- table.insert(tOntimerMin_HM[2358],TheGoddess2016_FinalOnline_Func23clock)
-- tOntimerMin_HM[2359] = tOntimerMin_HM[2359] or {}
-- table.insert(tOntimerMin_HM[2359],TheGoddess2016_FinalOnline_Func23clock)

-- 服务器开始加载
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],TheGoddess2016_FinalOnline_ChkActivityTime)