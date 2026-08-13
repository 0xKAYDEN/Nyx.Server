------------------------------------------------------------------------------------
--Name：            200410[英文征服][活动脚本]5月精准营销（5.07-5.31）
--Creator:      林嘉鑫
--Created:     2020-04-10
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tMayPrecisionPush_data = {}
	-- 天石（赠）礼盒A花费奖励
	tMayPrecisionPush_data[3330667] = {}
	tMayPrecisionPush_data[3330667][1] = {}
	tMayPrecisionPush_data[3330667][1]["Emoney"] = 1000
	tMayPrecisionPush_data[3330667][1]["CpsValue"] = 5000
	tMayPrecisionPush_data[3330667][2] = {}
	tMayPrecisionPush_data[3330667][2]["Emoney"] = 5000
	tMayPrecisionPush_data[3330667][2]["CpsValue"] = 35000
	tMayPrecisionPush_data[3330667][3] = {}
	tMayPrecisionPush_data[3330667][3]["Emoney"] = 10000
	tMayPrecisionPush_data[3330667][3]["CpsValue"] = 80000
	-- 天石（赠）礼盒B花费奖励
	tMayPrecisionPush_data[3330669] = {}
	tMayPrecisionPush_data[3330669][1] = {}
	tMayPrecisionPush_data[3330669][1]["Emoney"] = 499
	tMayPrecisionPush_data[3330669][1]["CpsValue"] = 2500
	tMayPrecisionPush_data[3330669][2] = {}
	tMayPrecisionPush_data[3330669][2]["Emoney"] = 999
	tMayPrecisionPush_data[3330669][2]["CpsValue"] = 7000
	tMayPrecisionPush_data[3330669][3] = {}
	tMayPrecisionPush_data[3330669][3]["Emoney"] = 1999
	tMayPrecisionPush_data[3330669][3]["CpsValue"] = 16000

local tMayPrecisionPush_Log = {}
	tMayPrecisionPush_Log["DelItem"] = "0,0,%d,%d,12001959,2,0,0"
	tMayPrecisionPush_Log[3330667] = {}
	tMayPrecisionPush_Log[3330667][1] = "350	23138	1000	1000	1	"
	tMayPrecisionPush_Log[3330667][2] = "350	23139	5000	5000	1	"
	tMayPrecisionPush_Log[3330667][3] = "350	23140	10000	10000	1	"
	tMayPrecisionPush_Log[3330669] = {}
	tMayPrecisionPush_Log[3330669][1] = "350	23141	499	499	1	"
	tMayPrecisionPush_Log[3330669][2] = "350	23142	999	999	1	"
	tMayPrecisionPush_Log[3330669][3] = "350	23143	1999	1999	1	"

local tMayPrecisionPush_Stc = {}
	-- 天石（赠）礼盒A打开次数
	tMayPrecisionPush_Stc[3330667] = {}
	tMayPrecisionPush_Stc[3330667]["EventType"] = 218
	tMayPrecisionPush_Stc[3330667]["DataType"] = 80
	tMayPrecisionPush_Stc[3330667]["LimitData"] = 3
	-- 天石（赠）礼盒B打开次数
	tMayPrecisionPush_Stc[3330669] = {}
	tMayPrecisionPush_Stc[3330669]["EventType"] = 218
	tMayPrecisionPush_Stc[3330669]["DataType"] = 81
	tMayPrecisionPush_Stc[3330669]["LimitData"] = 3


local tMayPrecisionPush_Pack = {}
	-- ===天石（赠）礼盒A
	-- ===索引: tMayPrecisionPush_Pack[3330667][1]
	tMayPrecisionPush_Pack[3330667] = {}
	tMayPrecisionPush_Pack[3330667][1] = {}
	tMayPrecisionPush_Pack[3330667][1]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330667][1]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330667][1]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000天石（赠）
	tMayPrecisionPush_Pack[3330667][1]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330667][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330667][1]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330667][2] = {}
	-- ===天石（赠）礼盒A
	-- ===索引: tMayPrecisionPush_Pack[3330667][2]
	tMayPrecisionPush_Pack[3330667][2]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330667][2]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330667][2]["RewardEMoneyMono"]["Value"] = 35000 -- 天石（赠）, 【需求】35000天石（赠）
	tMayPrecisionPush_Pack[3330667][2]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330667][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330667][2]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330667][3] = {}
	-- ===天石（赠）礼盒A
	-- ===索引: tMayPrecisionPush_Pack[3330667][3]
	tMayPrecisionPush_Pack[3330667][3]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330667][3]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330667][3]["RewardEMoneyMono"]["Value"] = 80000 -- 天石（赠）, 【需求】80000天石（赠）
	tMayPrecisionPush_Pack[3330667][3]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330667][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330667][3]["RewardEffect"]["Effect"] = "angelwing"

	
	-- ===天石（赠）礼盒B
	-- ===索引: tMayPrecisionPush_Pack[3330669][1]
	tMayPrecisionPush_Pack[3330669] = {}
	tMayPrecisionPush_Pack[3330669][1] = {}
	tMayPrecisionPush_Pack[3330669][1]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330669][1]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330669][1]["RewardEMoneyMono"]["Value"] = 2500 -- 天石（赠）, 【需求】2500天石（赠）
	tMayPrecisionPush_Pack[3330669][1]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330669][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330669][1]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330669][2] = {}
	-- ===天石（赠）礼盒B
	-- ===索引: tMayPrecisionPush_Pack[3330669][2]
	tMayPrecisionPush_Pack[3330669][2]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330669][2]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330669][2]["RewardEMoneyMono"]["Value"] = 7000 -- 天石（赠）, 【需求】7000天石（赠）
	tMayPrecisionPush_Pack[3330669][2]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330669][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330669][2]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330669][3] = {}
	-- ===天石（赠）礼盒B
	-- ===索引: tMayPrecisionPush_Pack[3330669][3]
	tMayPrecisionPush_Pack[3330669][3]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330669][3]["RewardEMoneyMono"] = {}
	tMayPrecisionPush_Pack[3330669][3]["RewardEMoneyMono"]["Value"] = 16000 -- 天石（赠）, 【需求】16000天石（赠）
	tMayPrecisionPush_Pack[3330669][3]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330669][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330669][3]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330666] = {}
	-- ===天石（赠）礼盒A
	-- ===索引: tMayPrecisionPush_Pack[3330666]
	-- ===删除: 3330666,1
	tMayPrecisionPush_Pack[3330666]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330666]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330666]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330666]["DeleteItem"][1]["Id"] = 3330666
	tMayPrecisionPush_Pack[3330666]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330666]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330666]["RewardItem"][1]["Id"] = 3330667
	tMayPrecisionPush_Pack[3330666]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMayPrecisionPush_Pack[3330666]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330666]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330666]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330668] = {}
	-- ===天石（赠）礼盒B
	-- ===索引: tMayPrecisionPush_Pack[3330668]
	-- ===删除: 3330668,1
	tMayPrecisionPush_Pack[3330668]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330668]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330668]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330668]["DeleteItem"][1]["Id"] = 3330668
	tMayPrecisionPush_Pack[3330668]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330668]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330668]["RewardItem"][1]["Id"] = 3330669
	tMayPrecisionPush_Pack[3330668]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMayPrecisionPush_Pack[3330668]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330668]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330668]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330670] = {}
	-- ===周年天石代金券礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330670]
	-- ===删除: 3330670,1
	-- ===EmoneyLog: 350,23144
	tMayPrecisionPush_Pack[3330670]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330670]["EmoneyLog"] = "350	23144	199	199	1	"
	tMayPrecisionPush_Pack[3330670]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330670]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330670]["DeleteItem"][1]["Id"] = 3330670
	tMayPrecisionPush_Pack[3330670]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330670]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330670]["RewardItem"][1]["Id"] = 3315860
	tMayPrecisionPush_Pack[3330670]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330670]["RewardItem"][2] = {}
	tMayPrecisionPush_Pack[3330670]["RewardItem"][2]["Id"] = 3315861
	tMayPrecisionPush_Pack[3330670]["RewardItem"][2]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330670]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330670]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330670]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330671] = {}
	-- ===周年天石（赠）代金券礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330671]
	-- ===删除: 3330671,1
	-- ===EmoneyLog: 350,23145
	tMayPrecisionPush_Pack[3330671]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330671]["EmoneyLog"] = "350	23145	29	29	1	"
	tMayPrecisionPush_Pack[3330671]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330671]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330671]["DeleteItem"][1]["Id"] = 3330671
	tMayPrecisionPush_Pack[3330671]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330671]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330671]["RewardItem"][1]["Id"] = 3316040
	tMayPrecisionPush_Pack[3330671]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330671]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330671]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330671]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330672] = {}
	-- ===赤炼石礼盒A
	-- ===索引: tMayPrecisionPush_Pack[3330672]
	-- ===删除: 3330672,1
	-- ===EmoneyLog: 350,23146
	tMayPrecisionPush_Pack[3330672]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330672]["EmoneyLog"] = "350	23146	7999	7999	1	"
	tMayPrecisionPush_Pack[3330672]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330672]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330672]["DeleteItem"][1]["Id"] = 3330672
	tMayPrecisionPush_Pack[3330672]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330672]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330672]["RewardItem"][1]["Id"] = 730007
	tMayPrecisionPush_Pack[3330672]["RewardItem"][1]["Attr"] = "0 5 3"
	tMayPrecisionPush_Pack[3330672]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330672]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330672]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330673] = {}
	-- ===赤炼石礼盒B
	-- ===索引: tMayPrecisionPush_Pack[3330673]
	-- ===删除: 3330673,1
	-- ===EmoneyLog: 350,23147
	tMayPrecisionPush_Pack[3330673]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330673]["EmoneyLog"] = "350	23147	20999	20999	1	"
	tMayPrecisionPush_Pack[3330673]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330673]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330673]["DeleteItem"][1]["Id"] = 3330673
	tMayPrecisionPush_Pack[3330673]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330673]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330673]["RewardItem"][1]["Id"] = 730008
	tMayPrecisionPush_Pack[3330673]["RewardItem"][1]["Attr"] = "0 5 3"
	tMayPrecisionPush_Pack[3330673]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330673]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330673]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330674] = {}
	-- ===星陨石礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330674]
	-- ===删除: 3330674,1
	-- ===EmoneyLog: 350,23148
	tMayPrecisionPush_Pack[3330674]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330674]["EmoneyLog"] = "350	23148	7500	7500	1	"
	tMayPrecisionPush_Pack[3330674]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330674]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330674]["DeleteItem"][1]["Id"] = 3330674
	tMayPrecisionPush_Pack[3330674]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330674]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330674]["RewardItem"][1]["Id"] = 3009003
	tMayPrecisionPush_Pack[3330674]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tMayPrecisionPush_Pack[3330674]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330674]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330674]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330675] = {}
	-- ===百合礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330675]
	-- ===删除: 3330675,1
	-- ===EmoneyLog: 350,23149
	tMayPrecisionPush_Pack[3330675]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330675]["EmoneyLog"] = "350	23149	450	450	1	"
	tMayPrecisionPush_Pack[3330675]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330675]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330675]["DeleteItem"][1]["Id"] = 3330675
	tMayPrecisionPush_Pack[3330675]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330675]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330675]["RewardItem"][1]["Id"] = 752999
	tMayPrecisionPush_Pack[3330675]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330675]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330675]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330675]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330676] = {}
	-- ===百合礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330676]
	-- ===删除: 3330676,1
	-- ===EmoneyLog: 350,23150
	tMayPrecisionPush_Pack[3330676]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330676]["EmoneyLog"] = "350	23150	450	450	1	"
	tMayPrecisionPush_Pack[3330676]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330676]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330676]["DeleteItem"][1]["Id"] = 3330676
	tMayPrecisionPush_Pack[3330676]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330676]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330676]["RewardItem"][1]["Id"] = 751999
	tMayPrecisionPush_Pack[3330676]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330676]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330676]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330677] = {}
	-- ===百合礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330677]
	-- ===删除: 3330677,1
	-- ===EmoneyLog: 350,23151
	tMayPrecisionPush_Pack[3330677]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330677]["EmoneyLog"] = "350	23151	450	450	1	"
	tMayPrecisionPush_Pack[3330677]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330677]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330677]["DeleteItem"][1]["Id"] = 3330677
	tMayPrecisionPush_Pack[3330677]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330677]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330677]["RewardItem"][1]["Id"] = 753999
	tMayPrecisionPush_Pack[3330677]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330677]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330677]["RewardEffect"]["Effect"] = "angelwing"


	tMayPrecisionPush_Pack[3330678] = {}
	-- ===百合礼盒
	-- ===索引: tMayPrecisionPush_Pack[3330678]
	-- ===删除: 3330678,1
	-- ===EmoneyLog: 350,23152
	tMayPrecisionPush_Pack[3330678]["LogId"] = 12001959
	tMayPrecisionPush_Pack[3330678]["EmoneyLog"] = "350	23152	899	899	1	"
	tMayPrecisionPush_Pack[3330678]["DeleteItem"] = {}
	tMayPrecisionPush_Pack[3330678]["DeleteItem"][1] = {}
	tMayPrecisionPush_Pack[3330678]["DeleteItem"][1]["Id"] = 3330678
	tMayPrecisionPush_Pack[3330678]["RewardItem"] = {}
	tMayPrecisionPush_Pack[3330678]["RewardItem"][1] = {}
	tMayPrecisionPush_Pack[3330678]["RewardItem"][1]["Id"] = 754999
	tMayPrecisionPush_Pack[3330678]["RewardItem"][1]["Attr"] = "0 1"
	tMayPrecisionPush_Pack[3330678]["RewardEffect"] = {}
	tMayPrecisionPush_Pack[3330678]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayPrecisionPush_Pack[3330678]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
-- 打开天石（赠）三重礼盒
function MayPrecisionPush_OpenCPsPack(nItemId,nEmoney,nAwardValue)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tMayPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tMayPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tMayPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tMayPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	-- 天石数量判断
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tMayPrecisionPush_Text["Msg"]["NoEMoneyOpen"])
		return
	end
	-- 赠点天石上限判断
	if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
		Sys_MsgBox(tMayPrecisionPush_Text["Msg"]["OverEMoneyMono"])
		return
	end
	if User_AddEMoney(-nEmoney) then
		Task_AddStatistic(nEvent,nType,1,1)
		RewardTemplate_UseItemAndMsg(tMayPrecisionPush_Pack[nItemId][nData + 1])
		Sys_SaveEmoneyBuy(tMayPrecisionPush_Log[nItemId][nData + 1])
		-- 最后一次重置并删除
		if Get_UserStatisticValue(nEvent,nType) >= tMayPrecisionPush_Stc[nItemId]["LimitData"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,0,1)
				-- 删除礼包log
				local sDelPackLog = string.format(tMayPrecisionPush_Log["DelItem"],nItemId,1)
				Sys_SaveActionFestivalLog(sDelPackLog)
			end
		end
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3330666] = tItem[3330666] or {}
tItem[3330666]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tMayPrecisionPush_Pack[nItemId])
end
tItem[3330668] = tItem[3330666]
tItem[3330670] = tItem[3330666]
tItem[3330671] = tItem[3330666]
tItem[3330672] = tItem[3330666]
tItem[3330673] = tItem[3330666]
tItem[3330674] = tItem[3330666]
tItem[3330675] = tItem[3330666]
tItem[3330676] = tItem[3330666]
tItem[3330677] = tItem[3330666]
tItem[3330678] = tItem[3330666]

--------物品有对白模板
-- 天石（赠）三重礼盒
tItemFace[3330667] = 1003
tItem[3330667] = tItem[3330667] or {}
tItem[3330667]["DialogueText"] = tMayPrecisionPush_Text["CPPack"]
tItem[3330667]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tMayPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tMayPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tMayPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tMayPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	if tMayPrecisionPush_data[nItemId][nData + 1] ~= nil then 
		local nEmoney = tMayPrecisionPush_data[nItemId][nData + 1]["Emoney"]
		local nAwardValue = tMayPrecisionPush_data[nItemId][nData + 1]["CpsValue"]
		local nTimes = tMayPrecisionPush_Text["Times"][nData + 1]
		tItem[nItemId]["Text111"] = string.format(tMayPrecisionPush_Text["CPPack"]["Text111"],nTimes,nEmoney,nAwardValue)
		tItem[nItemId]["Option111"] = string.format(tMayPrecisionPush_Text["CPPack"]["Option111"],nEmoney)
		tItem[nItemId]["Text211"] = string.format(tMayPrecisionPush_Text["CPPack"]["Text211"],nEmoney,nAwardValue)
		tItem[nItemId]["Option211"] = string.format(tMayPrecisionPush_Text["CPPack"]["Option211"],nEmoney)
		tItem[nItemId]["OptionFunc211"] = "MayPrecisionPush_OpenCPsPack</N>"..nItemId.."</N>"..nEmoney.."</N>"..nAwardValue
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3330667]["Text1-1"] = {111}
tItem[3330667]["tOption1-1"] = {111,112}
tItem[3330667]["OptionPoint111"] = "2-1"

tItem[3330667]["Text2-1"] = {211}
tItem[3330667]["tOption2-1"] = {211,212}

tItemFace[3330669] = 1004
tItem[3330669] = tItem[3330667]