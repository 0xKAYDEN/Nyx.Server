---------------------------------------------------------------------------------------------------
-- Name:			190513[英文征服][活动脚本]开斋节福利礼包(6.4-6.8)
-- Purpose:			开斋节福利礼包
-- Creator:			戴鑫海
-- Created:			2019/5/13
------------------------------------------------------------------------------------------------------
-- lua.ini
-- 41299
-- 命名前缀
-- tLesserBairam_

-- logid 10002454

-- stc掩码说明
-- stc(195,84)		表示领取第几次礼包。
-- stc(195,94)		=1 表示每日上线领取第一档礼包。
--					=2 表示每日上线领取第二档礼包。
--					=3 表示每日上线领取第三档礼包。
-----------------------------------------------------------------------------------------------------
-- 掩码
local  tLesserBairam_Data = {}
	-- 等级
	tLesserBairam_Data["Level"] = 80
	tLesserBairam_Data["Metempsychosis"] = 0

	-- 物品 
	tLesserBairam_Data["Itemtype"] = {}
	tLesserBairam_Data["Itemtype"]["Pack"] = 3321618
	-- 光效
	tLesserBairam_Data["Effect"] = "angelwing"
	
local  tLesserBairam_Stc = {}
	tLesserBairam_Stc["Stc"] = {}
	tLesserBairam_Stc["Stc"]["Login"] = {}
	tLesserBairam_Stc["Stc"]["Login"]["EventType"] = 195
	tLesserBairam_Stc["Stc"]["Login"]["DataType"] = 94
	
	tLesserBairam_Stc["Level"] = {}
	tLesserBairam_Stc["Level"]["EventType"] = 195
	tLesserBairam_Stc["Level"]["DataType"] = 84
	
-- 奖励表
local tLesserBairam_Reward1 = {}
    -- 上线获得
	tLesserBairam_Reward1["Login"] = {}
	tLesserBairam_Reward1["Login"]["RewardItem"] = {}
	tLesserBairam_Reward1["Login"]["RewardItem"][1] = {}
	tLesserBairam_Reward1["Login"]["RewardItem"][1]["Id"] = 3321618
	tLesserBairam_Reward1["Login"]["RewardItem"][1]["Attr"] = "0 1" 
	tLesserBairam_Reward1["Login"]["LogId"] = 10002454
	tLesserBairam_Reward1["Login"]["RewardEffect"] = {}
	tLesserBairam_Reward1["Login"]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][1][1]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22158
	tLesserBairam_Reward1[3321618] = {}
	tLesserBairam_Reward1[3321618][1] = {}
	tLesserBairam_Reward1[3321618][1][1] = {}
	tLesserBairam_Reward1[3321618][1][1]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][1][1]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][1][1]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:0], 【表格】MeteorScroll
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][1]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][2]["Id"] = 722146 -- 【库】EXPOrb[属性:11], 【表格】EXPOrb
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][2]["Attr"] = "0 3 3" -- EXPOrb*3(赠) *3
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][3] = {}
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][3]["Id"] = 700002 -- 【库】PhoenixGem[属性:0], 【表格】PhoenixGem
	tLesserBairam_Reward1[3321618][1][1]["RewardItem"][3]["Attr"] = "0 1 3" -- PhoenixGem（赠）*1


	tLesserBairam_Reward1[3321618][1][2] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][1][2]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22159
	tLesserBairam_Reward1[3321618][1][2]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][1][2]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][1][2]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][1]["Id"] = 3305801 -- 【库】+1Stone(B)Pack(1)[属性:9], 【表格】+1StonePack
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][1]["Attr"] = "0 2 3" -- +1StonePack*2
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][2]["Id"] = 3303248 -- 【库】Lucky+1SteedPack(B)[属性:11], 【表格】Lucky+1SteedPack（B）
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][2]["Attr"] = "0 1 3" -- Lucky+1SteedPack(B)*1
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][3] = {}
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】DragonBall
	tLesserBairam_Reward1[3321618][1][2]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall（赠）*1


	tLesserBairam_Reward1[3321618][1][3] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][1][3]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22160
	tLesserBairam_Reward1[3321618][1][3]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][1][3]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][1][3]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][1]["Id"] = 3308948 -- 10MeteorScrolls(B)Pack[属性:0], 【表格】SuperMeteorScroll
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][1]["Attr"] = "0 2 3" -- SuperMeteorScroll（赠）*2
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][2]["Id"] = 3301807 -- 【库】+3Stone(B)Pack[属性:9], 【表格】+3StonePack
	tLesserBairam_Reward1[3321618][1][3]["RewardItem"][2]["Attr"] = "0 1 3" -- +3StonePack*1

	tLesserBairam_Reward1[3321618][1][4] = {}
	tLesserBairam_Reward1[3321618][1][4]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][1][4]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][1][4]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:0], 【表格】MeteorScroll
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][1]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][2]["Id"] = 722146 -- 【库】EXPOrb[属性:11], 【表格】EXPOrb
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][2]["Attr"] = "0 3 3" -- EXPOrb*3
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][3] = {}
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][3]["Id"] = 700012 -- 【库】DragonGem[属性:0], 【表格】DragonGem
	tLesserBairam_Reward1[3321618][1][4]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonGem（赠）*1
 
	
	tLesserBairam_Reward1[3321618][2] = {}
	-- ===开斋节福利礼包
	-- ===索引:tLesserBairam_Reward1[3321618][2][1]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22161
	tLesserBairam_Reward1[3321618][2][1] = {}
	tLesserBairam_Reward1[3321618][2][1]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][2][1]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][2][1]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:0], 【表格】MeteorScroll
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- SuperMeteorScroll（赠）*1
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][2]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】TwilightStarStone
	tLesserBairam_Reward1[3321618][2][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tLesserBairam_Reward1[3321618][2][1]["RewardStrengthValue"] = {}
	tLesserBairam_Reward1[3321618][2][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500点气力值


	tLesserBairam_Reward1[3321618][2][2] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][2][2]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22162
	tLesserBairam_Reward1[3321618][2][2]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][2][2]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][2][2]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][1]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:0], 【表格】SuperMeteorScroll
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- MeteorScroll（赠）*1
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][2]["Id"] = 3305436 -- 【库】Bound+2StonePack[属性:9], 【表格】+2StonePack
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][2]["Attr"] = "0 2 3" -- +2StonePack*2
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][3] = {}
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】DragonBall
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][4] = {}
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][4]["Id"] = 700122 -- 【库】GloryGem[属性:0], 【表格】GloryGem
	tLesserBairam_Reward1[3321618][2][2]["RewardItem"][4]["Attr"] = "0 1 3" -- GloryGem（赠）*1


	tLesserBairam_Reward1[3321618][2][3] = {}
	-- ===开斋节福利礼包
	-- ===索引:tLesserBairam_Reward1[3321618][2][3]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22163
	tLesserBairam_Reward1[3321618][2][3]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][2][3]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][2][3]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][1]["Id"] = 3306367 -- 【库】YellowRuneFragment[属性:0], 【表格】YellowRuneFragment
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneFragment（赠）*2
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][2]["Id"] = 3301807 -- 【库】+3Stone(B)Pack[属性:9], 【表格】+3StonePack
	tLesserBairam_Reward1[3321618][2][3]["RewardItem"][2]["Attr"] = "0 2 3" -- +3StonePack*2


	tLesserBairam_Reward1[3321618][3] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][3][1]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22164
	tLesserBairam_Reward1[3321618][3][1] = {}
	tLesserBairam_Reward1[3321618][3][1]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][3][1]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][3][1]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】TwilightStarStone
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】YellowRuneEssence
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][3] = {}
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][3]["Id"] = 3306367 -- 【库】YellowRuneFragment[属性:0], 【表格】YellowRuneFragment
	tLesserBairam_Reward1[3321618][3][1]["RewardItem"][3]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tLesserBairam_Reward1[3321618][3][1]["RewardRepairValue"] = {}
	tLesserBairam_Reward1[3321618][3][1]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】300点修为值


	tLesserBairam_Reward1[3321618][3][2] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][3][2]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22165
	tLesserBairam_Reward1[3321618][3][2]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][3][2]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][3][2]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][1]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】SuperProtectionPill
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][1]["Attr"] = "0 5" -- SuperProtectionPill*5
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】BrightStarStone
	tLesserBairam_Reward1[3321618][3][2]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tLesserBairam_Reward1[3321618][3][2]["RewardStrengthValue"] = {}
	tLesserBairam_Reward1[3321618][3][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值


	tLesserBairam_Reward1[3321618][3][3] = {}
	-- ===开斋节福利礼包
	-- ===索引: tLesserBairam_Reward1[3321618][3][3]
	-- ===Log: 10002454
	-- ===EMoneyLog: 350 22166
	tLesserBairam_Reward1[3321618][3][3]["LogId"] = 10002454
	tLesserBairam_Reward1[3321618][3][3]["RewardEffect"]= {}
	tLesserBairam_Reward1[3321618][3][3]["RewardEffect"]["Effect"] = tLesserBairam_Data["Effect"]
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"] = {}
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][1] = {}
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】RuneCrystal
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][2] = {}
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][2]["Id"] = 3320887 -- 【库】+4Stone(B)Pack[属性:11], 【表格】+4StonePack
	tLesserBairam_Reward1[3321618][3][3]["RewardItem"][2]["Attr"] = "0 1 3" -- +4StonePack*1
	
local tLesserBairam_Log = {}
	tLesserBairam_Log["Log"] = "0,0,%d,%d,10002454,2,0,0"
	----Sys_SaveActionFestivalLog(sText)
	tLesserBairam_Log["EMoneyLog"] = {}
	tLesserBairam_Log["EMoneyLog"][3] = {}
	tLesserBairam_Log["EMoneyLog"][3][3] = "350	22166	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][3][2] = "350	22165	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][3][1] = "350	22164	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][2] = {}
	tLesserBairam_Log["EMoneyLog"][2][3] = "350	22163	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][2][2] = "350	22162	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][2][1] = "350	22161	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][1] = {}
	tLesserBairam_Log["EMoneyLog"][1][4] = "350	22158	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][1][3] = "350	22160	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][1][2] = "350	22159	0	0	1	"
	tLesserBairam_Log["EMoneyLog"][1][1] = "350	22158	0	0	1	"
	----Sys_SaveEmoneyBuy(sText)
	
	
--------------------------------------逻辑部分-------------------------------------------
-- 上线触发
function LesserBairam_GetPack()
	local nEventType = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local nDataType = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	--激情服不上
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["LesserBairam"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tLesserBairam_Data["Level"],tLesserBairam_Data["Metempsychosis"]) then
		return
	end
	-- 判断是否隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		local nItemId = tLesserBairam_Data["Itemtype"]["Pack"]
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
		end
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		Task_SetStatistic(nLevelEventType,nLevelDataType,0,1)
		Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	end
	
	-- 判断掩码
	if Task_ChkStcValue(nEventType,nDataType,">=",1) then
		return
	end
	
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tLesserBairam_Text["NoSpace2"])
		return
	end
	
	-- 获得物品
	if User_JudgeLevelAndMetempsychosis(15,1) and not User_JudgeLevelAndMetempsychosis(15,2)then
		Task_SetStatistic(nEventType,nDataType,2,1)
		Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	elseif User_JudgeLevelAndMetempsychosis(15,2) then
		Task_SetStatistic(nEventType,nDataType,3,1)
		Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	else
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	end
	
	RewardTemplate_UseItemAndMsg(tLesserBairam_Reward1["Login"])
end

-- 3321618 开斋节福利礼包
function LesserBairam_OpenPack(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["LesserBairam"]["ActivityTime"]) then
		Item_DelItem(nItemId)
		Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
		User_TalkChannel2005(tLesserBairam_Text[3321618]["TimeOut"])
		return
	end

	local Ret = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local Rdt = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nLevel = Get_UserStatisticValue(nLevelEventType,nLevelDataType)+1
	local nSpace = RewardTemplate_GetRewardSpace(tLesserBairam_Reward1[nItemId][nRank][nLevel])
	local nReward = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel]
	
	--判断是否超过30分钟
	if Get_UserStatisticValue(nLevelEventType,nLevelDataType) ~= 0 and not Task_StcInterval(nLevelEventType,nLevelDataType,30,1) then
		User_TalkChannel2005(tLesserBairam_Text[3321618]["Time"])
		return
	end
	
	--判断背包
	local sMsg = string.format(tLesserBairam_Text[3321618]["NoSpace"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- -- 发奖
	local sMsg2 = string.format(tLesserBairam_Text[3321618][nLevel],nReward)
	if nLevel == 3 then
		local sMsg3 = string.format(tLesserBairam_Text[3321618][3],nReward)
		if Item_DelItem(nItemId) then
			Task_SetStatistic(nLevelEventType,nLevelDataType,3,1)
			Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
			RewardTemplate_UseItemAndMsg(tLesserBairam_Reward1[nItemId][nRank][3])
			Sys_SaveEmoneyBuy(tLesserBairam_Log["EMoneyLog"][nRank][nLevel])
			User_TalkChannel2005(sMsg3)
		end
		return
	end
	Task_SetStatistic(nLevelEventType,nLevelDataType,nLevel,1)
	Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	RewardTemplate_UseItemAndMsg(tLesserBairam_Reward1[nItemId][nRank][nLevel])
	Sys_SaveEmoneyBuy(tLesserBairam_Log["EMoneyLog"][nRank][nLevel])
	User_TalkChannel2005(sMsg2)
end

function LesserBairam_OpenPack2(nItemId)
 	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["LesserBairam"]["ActivityTime"]) then
	   if Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
			User_TalkChannel2005(tLesserBairam_Text[3321618]["TimeOut"])
	   end
	   return
	end

	local Ret = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local Rdt = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nLevel = Get_UserStatisticValue(nLevelEventType,nLevelDataType)+1
	local nSpace = RewardTemplate_GetRewardSpace(tLesserBairam_Reward1[nItemId][nRank][nLevel])
	local nReward = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel]
	
	--判断是否超过30分钟
	if Get_UserStatisticValue(nLevelEventType,nLevelDataType) ~= 0 and not Task_StcInterval(nLevelEventType,nLevelDataType,30,1) then
		User_TalkChannel2005(tLesserBairam_Text[3321618]["Time"])
		return
	end
	
	--判断背包
	local sMsg = string.format(tLesserBairam_Text[3321618]["NoSpace"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(sMsg)
		return
	end
	
	Task_SetStatistic(nLevelEventType,nLevelDataType,nLevel,1)
	Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	RewardTemplate_UseItemAndMsg(tLesserBairam_Reward1[nItemId][nRank][nLevel])
	Sys_SaveEmoneyBuy(tLesserBairam_Log["EMoneyLog"][nRank][nLevel])
end

function LesserBairam_OpenPack3(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["LesserBairam"]["ActivityTime"]) then
		Item_DelItem(nItemId)
		Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
		User_TalkChannel2005(tLesserBairam_Text[3321618]["TimeOut"])
		return
	end
	
	local Ret = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local Rdt = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nLevel = Get_UserStatisticValue(nLevelEventType,nLevelDataType)+1
	local nSpace = RewardTemplate_GetRewardSpace(tLesserBairam_Reward1[nItemId][nRank][nLevel])
	local nReward = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel]
	
	--判断是否超过30分钟
	if Get_UserStatisticValue(nLevelEventType,nLevelDataType) ~= 0 and not Task_StcInterval(nLevelEventType,nLevelDataType,30,1) then
		User_TalkChannel2005(tLesserBairam_Text[3321618]["Time"])
		return
	end
	
	--判断背包
	local sMsg = string.format(tLesserBairam_Text[3321618]["NoSpace"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(sMsg)
		return
	end
	
	Task_SetStatistic(nLevelEventType,nLevelDataType,nLevel,1)
	Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
	RewardTemplate_UseItemAndMsg(tLesserBairam_Reward1[nItemId][nRank][4])
	Sys_SaveEmoneyBuy(tLesserBairam_Log["EMoneyLog"][nRank][4])
end
--------------------------------------物品配置-------------------------------------------
-- 3321618 开斋节福利礼包
tItemFace[3321618] = 2289 
tItem[3321618] = tItem[3321618] or {}
tItem[3321618]["DialogueText"] = tLesserBairam_Text[3321618]
tItem[3321618]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["LesserBairam"]["ActivityTime"]) then
		if Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
			User_TalkChannel2005(tLesserBairam_Text[3321618]["TimeOut"])
		end
		return
	end
	
	
	local nEventType = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local nDataType = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	--隔天使用删除并提示
	if Task_StcInterval(nEventType,nDataType,1,4) then
		local nItemId = tLesserBairam_Data["Itemtype"]["Pack"]
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tLesserBairam_Log["Log"],nItemId,1))
			User_TalkChannel2005(tLesserBairam_Text[3321618]["TimeOut2"])
		end
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		Task_SetStatistic(nLevelEventType,nLevelDataType,0,1)
		Task_SetStcTimestamp(nLevelEventType,nLevelDataType,0)
		return
	end
	if Get_UserStatisticValue(nEventType,nDataType) == 1 and Get_UserStatisticValue(nLevelEventType,nLevelDataType) == 0 then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3321618]["Text1-1"] = {111,112,113,114,115,116}
tItem[3321618]["tOption1-1"] = {1,2}
tItem[3321618]["ChkFunc1-1"] = function()
	local nItemId = tLesserBairam_Data["Itemtype"]["Pack"]
	local Ret = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local Rdt = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nLevel = Get_UserStatisticValue(nLevelEventType,nLevelDataType)+1
	if nLevel > 3 then
		if Item_DelItem(nItemId) then
		return false
		end
	end
	local nReward = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel]
	local nReward2 = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel+1]
	tItem[3321618]["Text113"] = string.format(tLesserBairam_Text[3321618]["Text113"],nLevel)
	tItem[3321618]["Text114"] = string.format(tLesserBairam_Text[3321618]["Text114"],nReward)
	tItem[3321618]["Text115"] = string.format(tLesserBairam_Text[3321618]["Text115"],nReward2)
	return true
end
tItem[3321618]["Text1-2"] = {111,112,113,114,115,116}
tItem[3321618]["tOption1-2"] = {3,4,2}
tItem[3321618]["ChkFunc1-2"] = function()
	local Ret = tLesserBairam_Stc["Stc"]["Login"]["EventType"]
	local Rdt = tLesserBairam_Stc["Stc"]["Login"]["DataType"]
	local nLevelEventType = tLesserBairam_Stc["Level"]["EventType"]
	local nLevelDataType = tLesserBairam_Stc["Level"]["DataType"]
	
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nLevel = Get_UserStatisticValue(nLevelEventType,nLevelDataType)+1
	local nReward = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel]
	local nReward2 = tLesserBairam_Text[3321618]["Reward"][nRank][nLevel+1]
	
	tItem[3321618]["Text113"] = string.format(tLesserBairam_Text[3321618]["Text113"],nLevel)
	tItem[3321618]["Text114"] = string.format(tLesserBairam_Text[3321618]["Text114"],nReward)
	tItem[3321618]["Text115"] = string.format(tLesserBairam_Text[3321618]["Text115"],nReward2)
	return true
end
tItem[3321618]["OptionFunc1"] = "LesserBairam_OpenPack</N>3321618"
tItem[3321618]["OptionFunc3"] = "LesserBairam_OpenPack2</N>3321618"
tItem[3321618]["OptionFunc4"] = "LesserBairam_OpenPack3</N>3321618"
--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,LesserBairam_GetPack)
