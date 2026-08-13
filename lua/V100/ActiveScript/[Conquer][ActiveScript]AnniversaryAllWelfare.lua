------------------------------------------------------------------------------------
--Name：            170420[简体征服][活动脚本]周年庆全服福利活动(4.27-5.1)
--Creator:      陈莺
--Created:     2017/04/20
------------------------------------------------------------------------------------
--任务需求：
--npc 
-- 20532,'祝福大使'

--物品
-- 3303185,'赤炼石+7（赠）
-- 3303186,'赤炼石+6（赠）
-- 3303187,'赤炼石+5（赠）
-- 3303188,'马匹+7（赠）'
-- 3303189,'马匹+6（赠）'
-- 3303190,'马匹+5（赠）'
-- 3303191,'抽奖券'

--logid 12000710

--stc 
--159 44 功勋礼包打开
--159 45 记录祝福
--159 47 背包信

-- AnniversaryAllWelfare_
----------------------------------表配置部分--------------------------------------------
local tAnniversaryAllWelfare_Data = {}
	tAnniversaryAllWelfare_Data["Bef_Time1"]= "2016-04-27 00:00 2017-04-26 23:59"
	tAnniversaryAllWelfare_Data["Bef_Time"]= "2017-04-27 00:00 2017-04-30 23:59"  -- 前期获得时间
	-- tAnniversaryAllWelfare_Data["Bef_Time"]= "2017-04-26 00:00 2017-06-30 23:59"
	tAnniversaryAllWelfare_Data["Now_Time1"]= "2017-05-01 00:00 2017-05-24 23:59"
	tAnniversaryAllWelfare_Data["Now_Time"]= "2017-05-25 00:00 2017-06-04 23:59"
	-- tAnniversaryAllWelfare_Data["ItemTime"]= "2017-04-27 00:00 2017-04-30 23:59"  

	tAnniversaryAllWelfare_Data["Level"] = 135
	tAnniversaryAllWelfare_Data["Metempsychosis"] = 0

local tAnniversaryAllWelfare_Reward = {}
	tAnniversaryAllWelfare_Reward[1] = {}  --正气令
	tAnniversaryAllWelfare_Reward[1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Reward[1]["Space"] = 1
	tAnniversaryAllWelfare_Reward[1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Reward[1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Reward[1]["RewardItem"][1]["Id"] = 3303191  --抽奖券
	tAnniversaryAllWelfare_Reward[1]["RewardItem"][1]["Attr"] = "0 3"
	tAnniversaryAllWelfare_Reward[1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	tAnniversaryAllWelfare_Reward[2] = {}  --功勋礼包
	tAnniversaryAllWelfare_Reward[2]["EventType"] = 159
	tAnniversaryAllWelfare_Reward[2]["DataType"] = 44
	tAnniversaryAllWelfare_Reward[2]["RewardDelay"] = 1
	tAnniversaryAllWelfare_Reward[2]["RewardTimeType"] = 4
	tAnniversaryAllWelfare_Reward[2]["RewardData"] = 1
	tAnniversaryAllWelfare_Reward[2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Reward[2]["Space"] = 1
	tAnniversaryAllWelfare_Reward[2]["RewardItem"] = {}
	tAnniversaryAllWelfare_Reward[2]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Reward[2]["RewardItem"][1]["Id"] = 3303191  --抽奖券
	tAnniversaryAllWelfare_Reward[2]["RewardItem"][1]["Attr"] = "0 3"
	tAnniversaryAllWelfare_Reward[2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Reward[2]["HaveReceiveNoTip"] = 1
	
	---怪物掉落
	tAnniversaryAllWelfare_Reward[3] = {}  --地宫怪物掉落
	tAnniversaryAllWelfare_Reward[3]["EventType"] = 159
	tAnniversaryAllWelfare_Reward[3]["DataType"] = 66
	tAnniversaryAllWelfare_Reward[3]["RewardDelay"] = 1
	tAnniversaryAllWelfare_Reward[3]["RewardTimeType"] = 4
	tAnniversaryAllWelfare_Reward[3]["RewardData"] = 20
	tAnniversaryAllWelfare_Reward[3]["LogId"] = 12000710
	tAnniversaryAllWelfare_Reward[3]["Space"] = 1
	tAnniversaryAllWelfare_Reward[3]["RewardItem"] = {}
	tAnniversaryAllWelfare_Reward[3]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Reward[3]["RewardItem"][1]["Id"] = 3303191  --抽奖券
	tAnniversaryAllWelfare_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	-- tAnniversaryAllWelfare_Reward[3]["RewardEffect"] = {}
	-- tAnniversaryAllWelfare_Reward[3]["RewardEffect"]["SzObj"] = "self"
	-- tAnniversaryAllWelfare_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Reward[3]["HaveReceiveNoTip"] = 1
	tAnniversaryAllWelfare_Reward[3]["Random"] = 100
	
	
	
	
	--获得祝福
	tAnniversaryAllWelfare_Reward["Get"] = {} 
	tAnniversaryAllWelfare_Reward["Get"]["LogId"] = 12000710
	tAnniversaryAllWelfare_Reward["Get"]["Space"] = 1
	tAnniversaryAllWelfare_Reward["Get"]["RewardItem"] = {}
	tAnniversaryAllWelfare_Reward["Get"]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Reward["Get"]["RewardItem"][1]["Id"] = 3303191  --抽奖券
	tAnniversaryAllWelfare_Reward["Get"]["RewardItem"][1]["Attr"] = "0 3"
	tAnniversaryAllWelfare_Reward["Get"]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Reward["Get"]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Reward["Get"]["RewardEffect"]["Effect"] = "angelwing"

local tAnniversaryAllWelfare_Item = {}
	tAnniversaryAllWelfare_Item[3303185] = {}
	tAnniversaryAllWelfare_Item[3303185][1] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303185][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["DeleteItem"][1]["Id"] = 3303185
	tAnniversaryAllWelfare_Item[3303185][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["RewardItem"][1]["Id"] = 730007  --+7赤炼石
	tAnniversaryAllWelfare_Item[3303185][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tAnniversaryAllWelfare_Item[3303185][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303185][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303185][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303185][1]["Talk"] = tAnniversaryAllWelfare_Text[3303185][1]

	tAnniversaryAllWelfare_Item[3303185][2] = {}
	tAnniversaryAllWelfare_Item[3303185][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303185][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303185][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303185][2]["DeleteItem"][1]["Id"] = 3303185
	tAnniversaryAllWelfare_Item[3303185][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303185][2]["RewardStrengthValue"]["Value"] = 10000  --10000点气力值
	tAnniversaryAllWelfare_Item[3303185][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303185][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303185][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303185][2]["Talk"] = tAnniversaryAllWelfare_Text[3303185][2]

	tAnniversaryAllWelfare_Item[3303186] = {}
	tAnniversaryAllWelfare_Item[3303186][1] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303186][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["DeleteItem"][1]["Id"] = 3303186
	tAnniversaryAllWelfare_Item[3303186][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["RewardItem"][1]["Id"] = 730006  --+6赤炼石
	tAnniversaryAllWelfare_Item[3303186][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tAnniversaryAllWelfare_Item[3303186][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303186][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303186][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303186][1]["Talk"] = tAnniversaryAllWelfare_Text[3303186][1]

	
	tAnniversaryAllWelfare_Item[3303186][2] = {}
	tAnniversaryAllWelfare_Item[3303186][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303186][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303186][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303186][2]["DeleteItem"][1]["Id"] = 3303186
	tAnniversaryAllWelfare_Item[3303186][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303186][2]["RewardStrengthValue"]["Value"] = 3000  --3000点气力值
	tAnniversaryAllWelfare_Item[3303186][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303186][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303186][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303186][2]["Talk"] = tAnniversaryAllWelfare_Text[3303186][2]

	
	tAnniversaryAllWelfare_Item[3303187] = {}
	tAnniversaryAllWelfare_Item[3303187][1] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303187][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["DeleteItem"][1]["Id"] = 3303187
	tAnniversaryAllWelfare_Item[3303187][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["RewardItem"][1]["Id"] = 730005  --+5赤炼石
	tAnniversaryAllWelfare_Item[3303187][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tAnniversaryAllWelfare_Item[3303187][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303187][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303187][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303187][1]["Talk"] = tAnniversaryAllWelfare_Text[3303187][1]

	tAnniversaryAllWelfare_Item[3303187][2] = {}
	tAnniversaryAllWelfare_Item[3303187][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303187][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303187][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303187][2]["DeleteItem"][1]["Id"] = 3303187
	tAnniversaryAllWelfare_Item[3303187][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303187][2]["RewardStrengthValue"]["Value"] = 1000  --1000点气力值
	tAnniversaryAllWelfare_Item[3303187][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303187][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303187][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303187][2]["Talk"] = tAnniversaryAllWelfare_Text[3303187][2]

	tAnniversaryAllWelfare_Item[3303188] = {}
	tAnniversaryAllWelfare_Item[3303188][1] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303188][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["DeleteItem"][1]["Id"] = 3303188
	tAnniversaryAllWelfare_Item[3303188][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["RewardItem"][1]["Id"] = 300000  --+7马匹
	tAnniversaryAllWelfare_Item[3303188][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 7"
	tAnniversaryAllWelfare_Item[3303188][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303188][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303188][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303188][1]["Talk"] = tAnniversaryAllWelfare_Text[3303188][1]

	
	tAnniversaryAllWelfare_Item[3303188][2] = {}
	tAnniversaryAllWelfare_Item[3303188][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303188][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303188][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303188][2]["DeleteItem"][1]["Id"] = 3303188
	tAnniversaryAllWelfare_Item[3303188][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303188][2]["RewardStrengthValue"]["Value"] = 10000  --10000点气力值
	tAnniversaryAllWelfare_Item[3303188][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303188][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303188][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303188][2]["Talk"] = tAnniversaryAllWelfare_Text[3303188][2]

	
	tAnniversaryAllWelfare_Item[3303189] = {}
	tAnniversaryAllWelfare_Item[3303189][1] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303189][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["DeleteItem"][1]["Id"] = 3303189
	tAnniversaryAllWelfare_Item[3303189][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["RewardItem"][1]["Id"] = 300000  --+6马匹
	tAnniversaryAllWelfare_Item[3303189][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 6"
	tAnniversaryAllWelfare_Item[3303189][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303189][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303189][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303189][1]["Talk"] = tAnniversaryAllWelfare_Text[3303189][1]

	
	tAnniversaryAllWelfare_Item[3303189][2] = {}
	tAnniversaryAllWelfare_Item[3303189][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303189][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303189][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303189][2]["DeleteItem"][1]["Id"] = 3303189
	tAnniversaryAllWelfare_Item[3303189][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303189][2]["RewardStrengthValue"]["Value"] = 3000  --3000点气力值
	tAnniversaryAllWelfare_Item[3303189][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303189][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303189][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303189][2]["Talk"] = tAnniversaryAllWelfare_Text[3303189][2]

	tAnniversaryAllWelfare_Item[3303190] = {}
	tAnniversaryAllWelfare_Item[3303190][1] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303190][1]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["DeleteItem"][1]["Id"] = 3303190
	tAnniversaryAllWelfare_Item[3303190][1]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["RewardItem"][1]["Id"] = 300000  --+5马匹
	tAnniversaryAllWelfare_Item[3303190][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5"
	tAnniversaryAllWelfare_Item[3303190][1]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303190][1]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303190][1]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303190][1]["Talk"] = tAnniversaryAllWelfare_Text[3303190][1]

	
	tAnniversaryAllWelfare_Item[3303190][2] = {}
	tAnniversaryAllWelfare_Item[3303190][2]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303190][2]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303190][2]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303190][2]["DeleteItem"][1]["Id"] = 3303190
	tAnniversaryAllWelfare_Item[3303190][2]["RewardStrengthValue"] = {}
	tAnniversaryAllWelfare_Item[3303190][2]["RewardStrengthValue"]["Value"] = 1000  --1000点气力值
	tAnniversaryAllWelfare_Item[3303190][2]["RewardEffect"] = {}
	tAnniversaryAllWelfare_Item[3303190][2]["RewardEffect"]["SzObj"] = "self"
	tAnniversaryAllWelfare_Item[3303190][2]["RewardEffect"]["Effect"] = "angelwing"
	tAnniversaryAllWelfare_Item[3303190][2]["Talk"] = tAnniversaryAllWelfare_Text[3303190][2]
	
	tAnniversaryAllWelfare_Item[3303246] = {}
	tAnniversaryAllWelfare_Item[3303246]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303246]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303246]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303246]["DeleteItem"][1]["Id"] = 3303246
	tAnniversaryAllWelfare_Item[3303246]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303246]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303246]["RewardItem"][1]["Id"] = 300000  --+6马匹
	tAnniversaryAllWelfare_Item[3303246]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3"
	
	tAnniversaryAllWelfare_Item[3303247] = {}
	tAnniversaryAllWelfare_Item[3303247]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303247]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303247]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303247]["DeleteItem"][1]["Id"] = 3303247
	tAnniversaryAllWelfare_Item[3303247]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303247]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303247]["RewardItem"][1]["Id"] = 300000  --+6马匹
	tAnniversaryAllWelfare_Item[3303247]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 2"
	
	tAnniversaryAllWelfare_Item[3303248] = {}
	tAnniversaryAllWelfare_Item[3303248]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303248]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303248]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303248]["DeleteItem"][1]["Id"] = 3303248
	tAnniversaryAllWelfare_Item[3303248]["RewardItem"] = {}
	tAnniversaryAllWelfare_Item[3303248]["RewardItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303248]["RewardItem"][1]["Id"] = 300000  --+6马匹
	tAnniversaryAllWelfare_Item[3303248]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 1"	
	
	tAnniversaryAllWelfare_Item[3303330] = {}
	tAnniversaryAllWelfare_Item[3303330]["LogId"] = 12000710
	tAnniversaryAllWelfare_Item[3303330]["DeleteItem"] = {}
	tAnniversaryAllWelfare_Item[3303330]["DeleteItem"][1] = {}
	tAnniversaryAllWelfare_Item[3303330]["DeleteItem"][1]["Id"] = 3303330
	tAnniversaryAllWelfare_Item[3303330]["RewardExpTime"] = {}
	tAnniversaryAllWelfare_Item[3303330]["RewardExpTime"]["Value"] = 900
	tAnniversaryAllWelfare_Item[3303330]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tAnniversaryAllWelfare_Item[3303330]["RewardExpTime"]["FullValue"] = 450
	tAnniversaryAllWelfare_Item[3303330]["Log"] = "0,0,3303330,1,12000710,2,4,900"
	tAnniversaryAllWelfare_Item[3303330]["FullLog"] = "0,0,3303330,1,12000710,2,6,450"
	
local tAnniversaryAllWelfare_Stc = {}
	tAnniversaryAllWelfare_Stc[1] = {}
	tAnniversaryAllWelfare_Stc[1]["EventType"] = 159
	tAnniversaryAllWelfare_Stc[1]["DataType"] = 45
	
local tAnniversaryAllWelfare_Pos = {}
	tAnniversaryAllWelfare_Pos["MapId"] = 1002
	tAnniversaryAllWelfare_Pos["PosX"] = 308
	tAnniversaryAllWelfare_Pos["PosY"] = 244
	tAnniversaryAllWelfare_Pos["NpcId"] = 20532

----------------------------------逻辑部分---------------------------------------------
--隔天清零
function AnniversaryAllWelfare_SetStc(nUserId)
	local nEvent = tAnniversaryAllWelfare_Stc[1]["EventType"]
	local nType = tAnniversaryAllWelfare_Stc[1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then  --隔天清零
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end
--送祝福
function AnniversaryAllWelfare_Blessing(nNpcId,nNum)

	if not Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryAllWelfare_Data["Level"],tAnniversaryAllWelfare_Data["Metempsychosis"]) then 
		return
	end
	
	local nUserId = Get_UserId()
	AnniversaryAllWelfare_SetStc(nUserId)  --隔天清零
	local nEvent = tAnniversaryAllWelfare_Stc[1]["EventType"]
	local nType = tAnniversaryAllWelfare_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	--背包空间
	if not  User_CheckLeftSpace(tAnniversaryAllWelfare_Reward["Get"]["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_UseItem(tAnniversaryAllWelfare_Reward["Get"])
	local sUserName = Get_UserName(nUserId)
	local sBroad = string.format(tAnniversaryAllWelfare_Text["Bless"][nNum],sUserName)
	Sys_SystemBroadcast(sBroad)  --全服广播
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end
function AnniversaryAllWelfare_OptenOption(FormId)
	if not Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnniversaryAllWelfare_Data["Level"],tAnniversaryAllWelfare_Data["Metempsychosis"]) then 
		return
	end
	User_OpenDialog(FormId)
end

-----抽奖券获得途径
function AnniversaryAllWelfare(nNum)
	if not Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		return
	end
	-- if not User_JudgeLevelAndMetempsychosis(tAnniversaryAllWelfare_Data["Level"],tAnniversaryAllWelfare_Data["Metempsychosis"]) then 
		-- return
	-- end
	local nUserId =  Get_UserId()
	if nNum == 2 then
		RewardTemplate_OuterPckage(tAnniversaryAllWelfare_Reward[nNum],nUserId)
		return
	end
	RewardTemplate_UseItem(tAnniversaryAllWelfare_Reward[nNum],nUserId)

end

----------------------------------物品逻辑---------------------------------------------
function AnniversaryAllWelfare_Opten(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tAnniversaryAllWelfare_Item[nItemId][nNum],nUserId)
end

function AnniversaryAllWelfare_OptenGoto(nItemId)
	--过期删除
	if CommonFunc_GetAfterActivityTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAnniversaryAllWelfare_Text["Msg"]["Over"])
		end
		return
	end
	local nMapId = tAnniversaryAllWelfare_Pos["MapId"]
	local nPosX = tAnniversaryAllWelfare_Pos["PosX"]
	local nPosY = tAnniversaryAllWelfare_Pos["PosY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,tAnniversaryAllWelfare_Pos["NpcId"])
end
----------------------------------怪物逻辑---------------------------------------------
function AnniversaryAllWelfare_KillBoss()
	if not Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		return
	end
	if not User_CheckLeftSpace(tAnniversaryAllWelfare_Reward[3]["Space"]) then
		return
	end
	local nEvent = tAnniversaryAllWelfare_Reward[3]["EventType"]
	local nType = tAnniversaryAllWelfare_Reward[3]["DataType"]
	local nUserId = Get_UserId()
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		nNowSingleData = 0
		nData = nNowTotalData*10000 + nNowSingleData
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end

	if nNowSingleData == tAnniversaryAllWelfare_Reward[3]["RewardData"] then
		return
	end

	if Sys_Random(tAnniversaryAllWelfare_Reward[3]["Random"],10000) then
		RewardTemplate_UseItem(tAnniversaryAllWelfare_Reward[3],nUserId)

		if nNowSingleData + 1 == tAnniversaryAllWelfare_Reward[3]["RewardData"] then
			Sys_MsgBox(tAnniversaryAllWelfare_Text["Msg"]["Monster"])
		end
	end
end
--大Boss
function AnniversaryAllWelfare_KillBigBoss(nMonsterId)
	if not Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) then
		return
	end
	local nItemId = tAnniversaryAllWelfare_Reward[3]["RewardItem"][1]["Id"]
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	local nMapId = 10137 
	Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,8,8,1,60)
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[4676] = 36
tNpcGossip[20532]= tNpcGossip[20532] or DefaultNpc:new{}
tNpcGossip[20532]["OptionHidden"] = 1
tNpcGossip[20532]["Text1-1"] = {111,112,113,114}
tNpcGossip[20532]["Text111"] = tAnniversaryAllWelfare_Text[20532]["Text111"]
tNpcGossip[20532]["Text112"] = tAnniversaryAllWelfare_Text[20532]["Text151"]
tNpcGossip[20532]["Text113"] = tAnniversaryAllWelfare_Text[20532]["Text152"]
tNpcGossip[20532]["Text114"] = tAnniversaryAllWelfare_Text[20532]["Text153"]
tNpcGossip[20532]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Bef_Time1"]) 
end
tNpcGossip[20532]["tOption1-1"] = {1}
tNpcGossip[20532]["Option1"] = tAnniversaryAllWelfare_Text[20532]["Option19"]

tNpcGossip[20532]["Text1-2"] = {111,121,122,123}
tNpcGossip[20532]["Text121"] = tAnniversaryAllWelfare_Text[20532]["Text112"]
tNpcGossip[20532]["Text122"] = tAnniversaryAllWelfare_Text[20532]["Text113"]
tNpcGossip[20532]["Text123"] = tAnniversaryAllWelfare_Text[20532]["Text114"]

tNpcGossip[20532]["ChkFunc1-2"]= function()
	AnniversaryAllWelfare_SetStc()
	return Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Bef_Time"]) 
end
tNpcGossip[20532]["tOption1-2"] = {12,13,14}
tNpcGossip[20532]["Option12"] = tAnniversaryAllWelfare_Text[20532]["Option12"]
tNpcGossip[20532]["OptionPoint12"] = "2-1" 
tNpcGossip[20532]["OptionChkFunc12"]= function()
	local nUserId = Get_UserId()
	local nEvent = tAnniversaryAllWelfare_Stc[1]["EventType"]
	local nType = tAnniversaryAllWelfare_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) and (User_JudgeLevelAndMetempsychosis(tAnniversaryAllWelfare_Data["Level"],tAnniversaryAllWelfare_Data["Metempsychosis"])) then
		return true
	else
		return false
	end
end
tNpcGossip[20532]["Option13"] = tAnniversaryAllWelfare_Text[20532]["Option13"]
tNpcGossip[20532]["OptionPoint13"] = "4-1" 
tNpcGossip[20532]["Option14"] = tAnniversaryAllWelfare_Text[20532]["Option14"]
tNpcGossip[20532]["OptionPoint14"] = "5-1" 

--活动前（5月1日至X月X日）
tNpcGossip[20532]["Text1-3"] = {111,131,132}
tNpcGossip[20532]["Text131"] = tAnniversaryAllWelfare_Text[20532]["Text121"]
tNpcGossip[20532]["Text132"] = tAnniversaryAllWelfare_Text[20532]["Text122"]
tNpcGossip[20532]["ChkFunc1-3"]= function()
	AnniversaryAllWelfare_SetStc()
	return Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time1"]) 
end
tNpcGossip[20532]["tOption1-3"] = {15,16}
tNpcGossip[20532]["Option15"] = tAnniversaryAllWelfare_Text[20532]["Option15"]
tNpcGossip[20532]["OptionPoint15"] = "5-1" 
tNpcGossip[20532]["Option16"] = tAnniversaryAllWelfare_Text[20532]["Option16"]

--活动中（活动更新后再打开）
tNpcGossip[20532]["Text1-4"] = {111,141,142,143}
tNpcGossip[20532]["Text141"] = tAnniversaryAllWelfare_Text[20532]["Text141"]
tNpcGossip[20532]["Text142"] = tAnniversaryAllWelfare_Text[20532]["Text142"]
tNpcGossip[20532]["Text143"] = tAnniversaryAllWelfare_Text[20532]["Text143"]

tNpcGossip[20532]["ChkFunc1-4"]= function()
	AnniversaryAllWelfare_SetStc()
	return Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Now_Time"]) 
end
tNpcGossip[20532]["tOption1-4"] = {17,12,13}
tNpcGossip[20532]["Option17"] = tAnniversaryAllWelfare_Text[20532]["Option17"]
tNpcGossip[20532]["OptionFunc17"] = "AnniversaryAllWelfare_OptenOption</N>852"  

--活动后
tNpcGossip[20532]["Text1-5"] = {111,151}
tNpcGossip[20532]["Text151"] = tAnniversaryAllWelfare_Text[20532]["Text131"]

tNpcGossip[20532]["tOption1-5"] = {20}
tNpcGossip[20532]["Option20"] = tAnniversaryAllWelfare_Text[20532]["Option20"]
tNpcGossip[20532]["ChkFunc1-5"]= function()
	return CommonFunc_GetAfterActivityTime(tAnniversaryAllWelfare_Data["Now_Time"]) 
end

-- 接1、周年庆送祝福
tNpcGossip[20532]["Text2-1"] = {211,212}
tNpcGossip[20532]["Text211"] = tAnniversaryAllWelfare_Text[20532]["Text211"]
tNpcGossip[20532]["Text212"] = tAnniversaryAllWelfare_Text[20532]["Text212"]
tNpcGossip[20532]["tOption2-1"] = {21,22,23,24,25,26}
tNpcGossip[20532]["Option21"] = tAnniversaryAllWelfare_Text[20532]["Option21"]
tNpcGossip[20532]["OptionFunc21"] = "AnniversaryAllWelfare_Blessing</N>20532</N>1"  
tNpcGossip[20532]["Option22"] = tAnniversaryAllWelfare_Text[20532]["Option22"]
tNpcGossip[20532]["OptionFunc22"] = "AnniversaryAllWelfare_Blessing</N>20532</N>2"  

tNpcGossip[20532]["Option23"] = tAnniversaryAllWelfare_Text[20532]["Option23"]
tNpcGossip[20532]["OptionFunc23"] = "AnniversaryAllWelfare_Blessing</N>20532</N>3"  

tNpcGossip[20532]["Option24"] = tAnniversaryAllWelfare_Text[20532]["Option24"]
tNpcGossip[20532]["OptionFunc24"] = "AnniversaryAllWelfare_Blessing</N>20532</N>4"  

tNpcGossip[20532]["Option25"] = tAnniversaryAllWelfare_Text[20532]["Option25"]
tNpcGossip[20532]["OptionFunc25"] = "AnniversaryAllWelfare_Blessing</N>20532</N>5"  

tNpcGossip[20532]["Option26"] = tAnniversaryAllWelfare_Text[20532]["Option26"]
tNpcGossip[20532]["OptionFunc26"] = "AnniversaryAllWelfare_Blessing</N>20532</N>6"  

-- 接上、完成周年庆送祝福、获得3枚周年庆幸运星
tNpcGossip[20532]["Text3-1"] = {311}
tNpcGossip[20532]["Text311"] = tAnniversaryAllWelfare_Text[20532]["Text311"]
tNpcGossip[20532]["tOption3-1"] = {31}
tNpcGossip[20532]["Option31"] = tAnniversaryAllWelfare_Text[20532]["Option31"]

-- 【背包满】
tNpcGossip[20532]["Text6-1"] = {611}
tNpcGossip[20532]["Text611"] = tAnniversaryAllWelfare_Text[20532]["Text611"]
tNpcGossip[20532]["tOption6-1"] = {61}
tNpcGossip[20532]["Option61"] = tAnniversaryAllWelfare_Text[20532]["Option61"]


--接2、如何获得周年庆幸运星
tNpcGossip[20532]["Text4-1"] = {412,413,414,417,415,416,412,411}
tNpcGossip[20532]["Text411"] = tAnniversaryAllWelfare_Text[20532]["Text411"]
tNpcGossip[20532]["Text412"] = tAnniversaryAllWelfare_Text[20532]["Text412"]
tNpcGossip[20532]["Text413"] = tAnniversaryAllWelfare_Text[20532]["Text413"]
tNpcGossip[20532]["Text414"] = tAnniversaryAllWelfare_Text[20532]["Text414"]
tNpcGossip[20532]["Text415"] = tAnniversaryAllWelfare_Text[20532]["Text415"]
tNpcGossip[20532]["Text416"] = tAnniversaryAllWelfare_Text[20532]["Text416"]
tNpcGossip[20532]["Text417"] = tAnniversaryAllWelfare_Text[20532]["Text417"]
--tNpcGossip[20532]["Text418"] = tAnniversaryAllWelfare_Text[20532]["Text418"]

tNpcGossip[20532]["tOption4-1"] = {41}
tNpcGossip[20532]["Option41"] = tAnniversaryAllWelfare_Text[20532]["Option41"]
tNpcGossip[20532]["OptionPoint41"] = "1-4" 
-- tNpcGossip[20532]["ChkFunc4-1"]= function()
	-- if Sys_ChkFullTime(tAnniversaryAllWelfare_Data["Bef_Time"]) then
		-- tNpcGossip[20532]["Text416"] = ""
	-- else
		-- tNpcGossip[20532]["Text416"] = tAnniversaryAllWelfare_Text[20532]["Text416"]
	-- end
	-- return true
-- end
--幸运树好礼清单
tNpcGossip[20532]["Text5-1"] = {511,512,513,514,515,516,517}
tNpcGossip[20532]["Text511"] = tAnniversaryAllWelfare_Text[20532]["Text511"]
tNpcGossip[20532]["Text512"] = tAnniversaryAllWelfare_Text[20532]["Text512"]
tNpcGossip[20532]["Text513"] = tAnniversaryAllWelfare_Text[20532]["Text513"]
tNpcGossip[20532]["Text514"] = tAnniversaryAllWelfare_Text[20532]["Text514"]
tNpcGossip[20532]["Text515"] = tAnniversaryAllWelfare_Text[20532]["Text515"]
tNpcGossip[20532]["Text516"] = tAnniversaryAllWelfare_Text[20532]["Text516"]
tNpcGossip[20532]["Text517"] = tAnniversaryAllWelfare_Text[20532]["Text517"]
tNpcGossip[20532]["tOption5-1"] = {51}
tNpcGossip[20532]["Option51"] = tAnniversaryAllWelfare_Text[20532]["Option51"]

---------------------------------物品部分---------------------------------------------
tItemFace[3303185] = 551
tItemFace[3303186] = 552
tItemFace[3303187] = 553
tItemFace[3303188] = 554
tItemFace[3303189] = 555
tItemFace[3303190] = 556
tItemFace[3303198] = 557
tItemFace[3303262] = 579

tItem[3303185] = tItem[3303185] or {}
tItem[3303185]["Text1-1"] = {111}
tItem[3303185]["Text111"] = tAnniversaryAllWelfare_Text[3303185]["Text111"]
tItem[3303185]["tOption1-1"] = {1,2}
tItem[3303185]["Option1"] = tAnniversaryAllWelfare_Text[3303185]["Option1"]
tItem[3303185]["OptionPoint1"] = "2-1"

tItem[3303185]["Option2"] = tAnniversaryAllWelfare_Text[3303185]["Option2"]
tItem[3303185]["OptionPoint2"]="3-1"
tItem[3303185]["ChkFunc1-1"]= function()
	local nItemId = Get_ItemType()
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	tItem[nItemId]["Option1"] = tAnniversaryAllWelfare_Text[nItemId]["Option1"]
	tItem[nItemId]["OptionPoint1"] = "2-1"
	tItem[nItemId]["Option2"] = tAnniversaryAllWelfare_Text[nItemId]["Option2"]
	-- tItem[nItemId]["OptionFunc2"]="AnniversaryAllWelfare_Opten</N>" .. nItemId .. "</N>" .. 2
	tItem[nItemId]["OptionPoint2"] = "3-1"
	return true
end
tItem[3303185]["Text2-1"] = {211}
tItem[3303185]["Text211"] = tAnniversaryAllWelfare_Text[3303185]["Text211"]
tItem[3303185]["tOption2-1"] = {3,4}
tItem[3303185]["Option3"] = tAnniversaryAllWelfare_Text[3303185]["Option3"]
tItem[3303185]["OptionFunc3"]="AnniversaryAllWelfare_Opten</N>3303185"

tItem[3303185]["Option4"] = tAnniversaryAllWelfare_Text[3303185]["Option4"]
tItem[3303185]["OptionPoint4"] = "1-1"
tItem[3303185]["ChkFunc2-1"]= function()
	local nItemId = Get_ItemType() 
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	local sItemName = tAnniversaryAllWelfare_Text[nItemId]["Option1"]
	tItem[nItemId]["Text211"] = string.format(tAnniversaryAllWelfare_Text[3303185]["Text211"],sItemName)
	tItem[nItemId]["Option3"] = tAnniversaryAllWelfare_Text[3303185]["Option3"]
	tItem[nItemId]["OptionFunc3"]="AnniversaryAllWelfare_Opten</N>" .. nItemId .. "</N>" .. 1
	-- tItem[nItemId]["OptionPoint3"]="3-1"
	tItem[nItemId]["Option4"] = tAnniversaryAllWelfare_Text[3303185]["Option4"]
	tItem[nItemId]["OptionPoint4"] = "1-1"
	return true
end

tItem[3303185]["Text3-1"] = {311}
tItem[3303185]["Text311"] = tAnniversaryAllWelfare_Text[3303185]["Text211"]
tItem[3303185]["tOption3-1"] = {5,6}
tItem[3303185]["Option5"] = tAnniversaryAllWelfare_Text[3303185]["Option3"]
tItem[3303185]["OptionFunc5"]="AnniversaryAllWelfare_Opten</N>1"
tItem[3303185]["Option6"] = tAnniversaryAllWelfare_Text[3303185]["Option4"]
tItem[3303185]["OptionPoint6"] = "1-1"
tItem[3303185]["ChkFunc3-1"]= function()
	local nItemId = Get_ItemType() 
	if nItemId == nil or nItemId <= 0 then
		return false
	end
	local sItemName = tAnniversaryAllWelfare_Text[nItemId]["Option2"]
	tItem[nItemId]["Text311"] = string.format(tAnniversaryAllWelfare_Text[3303185]["Text211"],sItemName)
	tItem[nItemId]["Option5"] = tAnniversaryAllWelfare_Text[3303185]["Option3"]
	tItem[nItemId]["OptionFunc5"]="AnniversaryAllWelfare_Opten</N>" .. nItemId .. "</N>" .. 2
	tItem[nItemId]["Option6"] = tAnniversaryAllWelfare_Text[3303185]["Option4"]
	tItem[nItemId]["OptionPoint6"] = "1-1"
	return true
end


for i = 3303186, 3303190 do
	tItem[i] = tItem[3303185] or {}
end

tItem[3303191] = tItem[3303191] or {}
tItem[3303191]["Function"] = function(nItemId,sItemName)
	AnniversaryAllWelfare_OptenGoto(nItemId)
end

tItem[3303246] = tItem[3303246] or {}
tItem[3303246]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAnniversaryAllWelfare_Item[nItemId])
end

tItem[3303247] = tItem[3303247] or {}
tItem[3303247]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAnniversaryAllWelfare_Item[nItemId])
end

tItem[3303248] = tItem[3303248] or {}
tItem[3303248]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAnniversaryAllWelfare_Item[nItemId])
end

tItem[3303330] = tItem[3303330] or {}
tItem[3303330]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAnniversaryAllWelfare_Item[nItemId])
end

---------------------------------怪物部分---------------------------------------------
--新地宫 小怪
-- tMonster[3967] = tMonster[3967] or {}
-- tMonster[3967]["tFunction"] = tMonster[3967]["tFunction"] or {}
-- table.insert(tMonster[3967]["tFunction"],AnniversaryAllWelfare_KillBoss)

-- tMonster[3968] = tMonster[3968] or {}
-- tMonster[3968]["tFunction"] = tMonster[3968]["tFunction"] or {}
-- table.insert(tMonster[3968]["tFunction"],AnniversaryAllWelfare_KillBoss)

-- tMonster[3969] = tMonster[3969] or {}
-- tMonster[3969]["tFunction"] = tMonster[3969]["tFunction"] or {}
-- table.insert(tMonster[3969]["tFunction"],AnniversaryAllWelfare_KillBoss)

---新地宫 boss
-- tMonster[4220] = tMonster[4220] or {}
-- tMonster[4220]["tFunction"] = tMonster[4220]["tFunction"] or {}
-- table.insert(tMonster[4220]["tFunction"],AnniversaryAllWelfare_KillBigBoss)

-- tMonster[4212] = tMonster[4212] or {}
-- tMonster[4212]["tFunction"] = tMonster[4212]["tFunction"] or {}
-- table.insert(tMonster[4212]["tFunction"],AnniversaryAllWelfare_KillBigBoss)

-- tMonster[4271] = tMonster[4271] or {}
-- tMonster[4271]["tFunction"] = tMonster[4271]["tFunction"] or {}
-- table.insert(tMonster[4271]["tFunction"],AnniversaryAllWelfare_KillBigBoss)

-- tMonster[4151] = tMonster[4151] or {}
-- tMonster[4151]["tFunction"] = tMonster[4151]["tFunction"] or {}
-- table.insert(tMonster[4151]["tFunction"],AnniversaryAllWelfare_KillBigBoss)



