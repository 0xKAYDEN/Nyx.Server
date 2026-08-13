------------------------------------------------------------------------------------
--Name:			[征服][任务脚本]跨服任务搬金砖
--Purpose:		跨服任务搬金砖
--Creator: 		郑鋆
--Created:		2014/12/16
------------------------------------------------------------------------------------

-- 命名前缀
-- ServiceTask_MoveGold_

-- 掩码说明
-- 136 32  是否领取过背包信
-- 136 33  npc处每天答题的次数

-- logId:	12000138

--新增帮派奖励
--一周清空一次 180 04
--每天只能打开一次津贴礼包 180 05(弃用)

local tServiceTask_Newstc = {}
tServiceTask_Newstc[1] = {}
tServiceTask_Newstc[1]["Eventdata"] = 180
tServiceTask_Newstc[1]["Typedata"] = 04
tServiceTask_Newstc[2] = {}
tServiceTask_Newstc[2]["Eventdata"] = 180
tServiceTask_Newstc[2]["Typedata"] = 05

local tServiceTask_NewGifttip = {}
--tServiceTask_NewGifttip[3310263] = 1
--tServiceTask_NewGifttip[3310264] = 2
--tServiceTask_NewGifttip[3310265] = 3
--tServiceTask_NewGifttip[3310266] = 4
--tServiceTask_NewGifttip[3310267] = 5
tServiceTask_NewGifttip[3007259] = 1
tServiceTask_NewGifttip[3007260] = 2
tServiceTask_NewGifttip[3007261] = 3
tServiceTask_NewGifttip[3007262] = 4
tServiceTask_NewGifttip[3007263] = 5

-- 常量表
local tServiceTask_MoveGold_Count = {}
	-- 玩家等级要求
	tServiceTask_MoveGold_Count["Metempsychosis"] = 1
	tServiceTask_MoveGold_Count["Level"] = 110

	-- 任务taskId
	tServiceTask_MoveGold_Count["TaskId"] = 30012
	
	-- 最多完成次数
	tServiceTask_MoveGold_Count["MaxNum"] = 3
	
	-- 动作ID
	tServiceTask_MoveGold_Count["Action"] = 220

	-- 奖励的积分值
	tServiceTask_MoveGold_Count["Score"] = 3
	
	tServiceTask_MoveGold_Count["PlunderEmoneyLog"] = "350	4311	0	0	1	"
	tServiceTask_MoveGold_Count["ShanghaiEmoneyLog"] = "350	4312	0	0	1	"

	-- 搬砖的范围
	tServiceTask_MoveGold_Count["MinPosX"] = 338
	tServiceTask_MoveGold_Count["MaxPosX"] = 354
	tServiceTask_MoveGold_Count["MinPosY"] = 313
	tServiceTask_MoveGold_Count["MaxPosY"] = 329

-- 各个品质的金砖对应的积分
local tServiceTask_MoveGold_Score = {}
	tServiceTask_MoveGold_Score[0] = 50
	tServiceTask_MoveGold_Score[1] = 70
	tServiceTask_MoveGold_Score[2] = 100
	tServiceTask_MoveGold_Score[3] = 150
	tServiceTask_MoveGold_Score[4] = 200

-- 津贴礼包配置
local tServiceTask_MoveGold_PackageAllowance = {}
	-- 至尊皇族津贴
	tServiceTask_MoveGold_PackageAllowance[3006989] = {}
	tServiceTask_MoveGold_PackageAllowance[3006989]["Space"] = 10
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"] = {}
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][1] = {}
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][1]["Id"] = 3002029
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][1]["Attr"] = "0 10 0 0 1"
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][2] = {}
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][2]["Id"] = 3003124
	tServiceTask_MoveGold_PackageAllowance[3006989]["Item"][2]["Attr"] = "0 10 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tServiceTask_MoveGold_PackageAllowance[3006989]["StrengthValue"] = 1500
	tServiceTask_MoveGold_PackageAllowance[3006989]["Log"] = "0,0,3006989,1,12000138,2,3002029[3003124][12],10[10][1500]"

	-- 名门望族津贴
	tServiceTask_MoveGold_PackageAllowance[3006990] = {}
	tServiceTask_MoveGold_PackageAllowance[3006990]["Space"] = 8
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"] = {}
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][1] = {}
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][1]["Id"] = 3002029
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][1]["Attr"] = "0 8 0 0 1"
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][2] = {}
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][2]["Id"] = 3003124
	tServiceTask_MoveGold_PackageAllowance[3006990]["Item"][2]["Attr"] = "0 8 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tServiceTask_MoveGold_PackageAllowance[3006990]["StrengthValue"] = 1000
	tServiceTask_MoveGold_PackageAllowance[3006990]["Log"] = "0,0,3006990,1,12000138,2,3002029[3003124][12],8[8][1000]"

	-- 达官贵人津贴
	tServiceTask_MoveGold_PackageAllowance[3006991] = {}
	tServiceTask_MoveGold_PackageAllowance[3006991]["Space"] = 5
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"] = {}
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][1] = {}
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][1]["Id"] = 3002029
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][1]["Attr"] = "0 5 0 0 1"
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][2] = {}
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][2]["Id"] = 3003124
	tServiceTask_MoveGold_PackageAllowance[3006991]["Item"][2]["Attr"] = "0 5 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tServiceTask_MoveGold_PackageAllowance[3006991]["StrengthValue"] = 700
	tServiceTask_MoveGold_PackageAllowance[3006991]["Log"] = "0,0,3006991,1,12000138,2,3002029[3003124][12],5[5][700]"

	-- 保家卫国津贴
	tServiceTask_MoveGold_PackageAllowance[3006992] = {}
	tServiceTask_MoveGold_PackageAllowance[3006992]["Space"] = 2
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"] = {}
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][1] = {}
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][1]["Id"] = 3002029
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][1]["Attr"] = "0 2 0 0 1"
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][2] = {}
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][2]["Id"] = 3003124
	tServiceTask_MoveGold_PackageAllowance[3006992]["Item"][2]["Attr"] = "0 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tServiceTask_MoveGold_PackageAllowance[3006992]["StrengthValue"] = 500
	tServiceTask_MoveGold_PackageAllowance[3006992]["Log"] = "0,0,3006992,1,12000138,2,3002029[3003124][12],2[3][500]"

	-- 绝世佳人津贴
	tServiceTask_MoveGold_PackageAllowance[3006993] = {}
	tServiceTask_MoveGold_PackageAllowance[3006993]["Space"] = 6
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"] = {}
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][1] = {}
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][1]["Id"] = 3002029
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][1]["Attr"] = "0 6 0 0 1"
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][2] = {}
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][2]["Id"] = 3003124
	tServiceTask_MoveGold_PackageAllowance[3006993]["Item"][2]["Attr"] = "0 6 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tServiceTask_MoveGold_PackageAllowance[3006993]["StrengthValue"] = 800
	tServiceTask_MoveGold_PackageAllowance[3006993]["Log"] = "0,0,3006993,1,12000138,2,3002029[3003124][12],6[6][800]"

local tServiceTask_MoveGold_Allowance = {}
	-- 3007259	【特权】至尊皇族津贴	
	tServiceTask_MoveGold_Allowance[3007259] = {}
	tServiceTask_MoveGold_Allowance[3007259][1] = {}
	tServiceTask_MoveGold_Allowance[3007259][1]["Id"] = 3006989
	tServiceTask_MoveGold_Allowance[3007259][1]["Effect"] = "angelwing"
	tServiceTask_MoveGold_Allowance[3007259][1]["Index"] = "RewardTrainPackage"
	tServiceTask_MoveGold_Allowance[3007259][2] = {}
	tServiceTask_MoveGold_Allowance[3007259][2]["StrengthValue"] = 2000
	tServiceTask_MoveGold_Allowance[3007259][2]["SevenStrengthValue"] = 14000
	tServiceTask_MoveGold_Allowance[3007259][2]["Effect"] = "eidolon"
	tServiceTask_MoveGold_Allowance[3007259][2]["Index"] = "RewardStrengthValue"
	
	-- 3007260	【特权】名门望族津贴	
	tServiceTask_MoveGold_Allowance[3007260] = {}
	tServiceTask_MoveGold_Allowance[3007260][1] = {}
	tServiceTask_MoveGold_Allowance[3007260][1]["Id"] = 3006990
	tServiceTask_MoveGold_Allowance[3007260][1]["Effect"] = "angelwing"
	tServiceTask_MoveGold_Allowance[3007260][1]["Index"] = "RewardTrainPackage"
	tServiceTask_MoveGold_Allowance[3007260][2] = {}
	tServiceTask_MoveGold_Allowance[3007260][2]["StrengthValue"] = 1600
	tServiceTask_MoveGold_Allowance[3007260][2]["SevenStrengthValue"] = 11200
	tServiceTask_MoveGold_Allowance[3007260][2]["Effect"] = "eidolon"
	tServiceTask_MoveGold_Allowance[3007260][2]["Index"] = "RewardStrengthValue"
	
	-- 3007261	【特权】达官贵人津贴	
	tServiceTask_MoveGold_Allowance[3007261] = {}
	tServiceTask_MoveGold_Allowance[3007261][1] = {}
	tServiceTask_MoveGold_Allowance[3007261][1]["Id"] = 3006991
	tServiceTask_MoveGold_Allowance[3007261][1]["Effect"] = "angelwing"
	tServiceTask_MoveGold_Allowance[3007261][1]["Index"] = "RewardTrainPackage"
	tServiceTask_MoveGold_Allowance[3007261][2] = {}
	tServiceTask_MoveGold_Allowance[3007261][2]["StrengthValue"] = 1000
	tServiceTask_MoveGold_Allowance[3007261][2]["SevenStrengthValue"] = 7000
	tServiceTask_MoveGold_Allowance[3007261][2]["Effect"] = "eidolon"
	tServiceTask_MoveGold_Allowance[3007261][2]["Index"] = "RewardStrengthValue"
	
	-- 3007262	【特权】保家卫国津贴	
	tServiceTask_MoveGold_Allowance[3007262] = {}
	tServiceTask_MoveGold_Allowance[3007262][1] = {}
	tServiceTask_MoveGold_Allowance[3007262][1]["Id"] = 3006992
	tServiceTask_MoveGold_Allowance[3007262][1]["Effect"] = "angelwing"
	tServiceTask_MoveGold_Allowance[3007262][1]["Index"] = "RewardTrainPackage"
	tServiceTask_MoveGold_Allowance[3007262][2] = {}
	tServiceTask_MoveGold_Allowance[3007262][2]["StrengthValue"] = 600
	tServiceTask_MoveGold_Allowance[3007262][2]["SevenStrengthValue"] = 4200
	tServiceTask_MoveGold_Allowance[3007262][2]["Effect"] = "eidolon"
	tServiceTask_MoveGold_Allowance[3007262][2]["Index"] = "RewardStrengthValue"
	
	-- 3007263	【特权】绝世佳人津贴
	tServiceTask_MoveGold_Allowance[3007263] = {}
	tServiceTask_MoveGold_Allowance[3007263] = {}
	tServiceTask_MoveGold_Allowance[3007263][1] = {}
	tServiceTask_MoveGold_Allowance[3007263][1]["Id"] = 3006993
	tServiceTask_MoveGold_Allowance[3007263][1]["Effect"] = "angelwing"
	tServiceTask_MoveGold_Allowance[3007263][1]["Index"] = "RewardTrainPackage"
	tServiceTask_MoveGold_Allowance[3007263][2] = {}
	tServiceTask_MoveGold_Allowance[3007263][2]["StrengthValue"] = 1200
	tServiceTask_MoveGold_Allowance[3007263][2]["SevenStrengthValue"] = 8400
	tServiceTask_MoveGold_Allowance[3007263][2]["Effect"] = "eidolon"
	tServiceTask_MoveGold_Allowance[3007263][2]["Index"] = "RewardStrengthValue"

-- 俸禄礼包
local tServiceTask_MoveGold_SalaryPackage = {}
	tServiceTask_MoveGold_SalaryPackage["Log"] = "0,0,%d,1,12000138,2,12[14][6],%d[%d][%d]"
	-- 3006994	【庶民】俸禄礼包	
	tServiceTask_MoveGold_SalaryPackage[3006994] = {}
	tServiceTask_MoveGold_SalaryPackage[3006994]["AddStrengthValue"] = 100
	tServiceTask_MoveGold_SalaryPackage[3006994]["AddRidingPoints"] = 300
	tServiceTask_MoveGold_SalaryPackage[3006994]["AddCultivation"] = 40
	
	-- 3006995	【伍长】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3006995] = {}
	tServiceTask_MoveGold_SalaryPackage[3006995]["AddStrengthValue"] = 150
	tServiceTask_MoveGold_SalaryPackage[3006995]["AddRidingPoints"] = 450
	tServiceTask_MoveGold_SalaryPackage[3006995]["AddCultivation"] = 60
	
	-- 3006996	【什长】俸禄礼包	
	tServiceTask_MoveGold_SalaryPackage[3006996] = {}
	tServiceTask_MoveGold_SalaryPackage[3006996]["AddStrengthValue"] = 180
	tServiceTask_MoveGold_SalaryPackage[3006996]["AddRidingPoints"] = 500
	tServiceTask_MoveGold_SalaryPackage[3006996]["AddCultivation"] = 70
	
	-- 3006997	【百夫长】俸禄礼包	
	tServiceTask_MoveGold_SalaryPackage[3006997] = {}
	tServiceTask_MoveGold_SalaryPackage[3006997]["AddStrengthValue"] = 210
	tServiceTask_MoveGold_SalaryPackage[3006997]["AddRidingPoints"] = 550
	tServiceTask_MoveGold_SalaryPackage[3006997]["AddCultivation"] = 80
	
	-- 3006998	【都尉】俸禄礼包	
	tServiceTask_MoveGold_SalaryPackage[3006998] = {}
	tServiceTask_MoveGold_SalaryPackage[3006998]["AddStrengthValue"] = 250
	tServiceTask_MoveGold_SalaryPackage[3006998]["AddRidingPoints"] = 600
	tServiceTask_MoveGold_SalaryPackage[3006998]["AddCultivation"] = 90
	
	-- 3006999	【校尉】俸禄礼包	
	tServiceTask_MoveGold_SalaryPackage[3006999] = {}
	tServiceTask_MoveGold_SalaryPackage[3006999]["AddStrengthValue"] = 280
	tServiceTask_MoveGold_SalaryPackage[3006999]["AddRidingPoints"] = 650
	tServiceTask_MoveGold_SalaryPackage[3006999]["AddCultivation"] = 100
	
	-- 3007000	【中郎将】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007000] = {}
	tServiceTask_MoveGold_SalaryPackage[3007000]["AddStrengthValue"] = 310
	tServiceTask_MoveGold_SalaryPackage[3007000]["AddRidingPoints"] = 700
	tServiceTask_MoveGold_SalaryPackage[3007000]["AddCultivation"] = 110
	
	-- 3007001	【裨将】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007001] = {}
	tServiceTask_MoveGold_SalaryPackage[3007001]["AddStrengthValue"] = 350
	tServiceTask_MoveGold_SalaryPackage[3007001]["AddRidingPoints"] = 750
	tServiceTask_MoveGold_SalaryPackage[3007001]["AddCultivation"] = 120
	
	-- 3007002	【偏将】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007002] = {}
	tServiceTask_MoveGold_SalaryPackage[3007002]["AddStrengthValue"] = 390
	tServiceTask_MoveGold_SalaryPackage[3007002]["AddRidingPoints"] = 800
	tServiceTask_MoveGold_SalaryPackage[3007002]["AddCultivation"] = 130
	
	-- 3007003	【将军】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007003] = {}
	tServiceTask_MoveGold_SalaryPackage[3007003]["AddStrengthValue"] = 430
	tServiceTask_MoveGold_SalaryPackage[3007003]["AddRidingPoints"] = 850
	tServiceTask_MoveGold_SalaryPackage[3007003]["AddCultivation"] = 140
	
	-- 3007004	【卫将军】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007004] = {}
	tServiceTask_MoveGold_SalaryPackage[3007004]["AddStrengthValue"] = 470
	tServiceTask_MoveGold_SalaryPackage[3007004]["AddRidingPoints"] = 900
	tServiceTask_MoveGold_SalaryPackage[3007004]["AddCultivation"] = 150
	
	-- 3007005	【车骑将军】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007005] = {}
	tServiceTask_MoveGold_SalaryPackage[3007005]["AddStrengthValue"] = 500
	tServiceTask_MoveGold_SalaryPackage[3007005]["AddRidingPoints"] = 1000
	tServiceTask_MoveGold_SalaryPackage[3007005]["AddCultivation"] = 160
	
	-- 3007006	【骠骑将军】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007006] = {}
	tServiceTask_MoveGold_SalaryPackage[3007006]["AddStrengthValue"] = 550
	tServiceTask_MoveGold_SalaryPackage[3007006]["AddRidingPoints"] = 1100
	tServiceTask_MoveGold_SalaryPackage[3007006]["AddCultivation"] = 180
	
	-- 3007007	【大将军】俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007007] = {}
	tServiceTask_MoveGold_SalaryPackage[3007007]["AddStrengthValue"] = 600
	tServiceTask_MoveGold_SalaryPackage[3007007]["AddRidingPoints"] = 1200
	tServiceTask_MoveGold_SalaryPackage[3007007]["AddCultivation"] = 200
	
	-- 3007435	朝廷俸禄礼包
	tServiceTask_MoveGold_SalaryPackage[3007435] = {}
	tServiceTask_MoveGold_SalaryPackage[3007435]["AddStrengthValue"] = 200
	tServiceTask_MoveGold_SalaryPackage[3007435]["AddRidingPoints"] = 600
	tServiceTask_MoveGold_SalaryPackage[3007435]["AddCultivation"] = 140

local tServiceTask_Newfight_pack = {}
--国境津贴礼包
tServiceTask_Newfight_pack[3310256] = {}
tServiceTask_Newfight_pack[3310256]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310256]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310256]["DeleteItem"][1]["Id"] = 3310256
tServiceTask_Newfight_pack[3310256]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310256]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310256]["RewardItem"][1]["Id"] = 3310225
tServiceTask_Newfight_pack[3310256]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
tServiceTask_Newfight_pack[3310256]["RewardItem"][2] = {} 
tServiceTask_Newfight_pack[3310256]["RewardItem"][2]["Id"] = 3310257
tServiceTask_Newfight_pack[3310256]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
tServiceTask_Newfight_pack[3310256]["RewardItem"][3] = {} 
tServiceTask_Newfight_pack[3310256]["RewardItem"][3]["Id"] = 3310258
tServiceTask_Newfight_pack[3310256]["RewardItem"][3]["Attr"] = "0 1 0 1440 1"
tServiceTask_Newfight_pack[3310256]["RewardItem"][4] = {} 
tServiceTask_Newfight_pack[3310256]["RewardItem"][4]["Id"] = 3310259
tServiceTask_Newfight_pack[3310256]["RewardItem"][4]["Attr"] = "0 1 0 1440 1"
tServiceTask_Newfight_pack[3310256]["RewardItem"][5] = {} 
tServiceTask_Newfight_pack[3310256]["RewardItem"][5]["Id"] = 3310260
tServiceTask_Newfight_pack[3310256]["RewardItem"][5]["Attr"] = "0 1 0 1440 1"
tServiceTask_Newfight_pack[3310256]["LogId"] = 12000138


--【津贴】名门望族*5
tServiceTask_Newfight_pack[3310257] = {}
tServiceTask_Newfight_pack[3310257]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310257]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310257]["DeleteItem"][1]["Id"] = 3310257
tServiceTask_Newfight_pack[3310257]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310257]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310257]["RewardItem"][1]["Id"] = 3007260
tServiceTask_Newfight_pack[3310257]["RewardItem"][1]["Attr"] = "0 5 0 10080 1"
tServiceTask_Newfight_pack[3310257]["LogId"] = 12000138

--【津贴】至尊贵族*1
tServiceTask_Newfight_pack[3310225] = {}
tServiceTask_Newfight_pack[3310225]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310225]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310225]["DeleteItem"][1]["Id"] = 3310225
tServiceTask_Newfight_pack[3310225]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310225]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310225]["RewardItem"][1]["Id"] = 3007259
tServiceTask_Newfight_pack[3310225]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
tServiceTask_Newfight_pack[3310225]["LogId"] = 12000138

--【津贴】达官贵人*11
tServiceTask_Newfight_pack[3310258] = {}
tServiceTask_Newfight_pack[3310258]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310258]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310258]["DeleteItem"][1]["Id"] = 3310258
tServiceTask_Newfight_pack[3310258]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310258]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310258]["RewardItem"][1]["Id"] = 3007261
tServiceTask_Newfight_pack[3310258]["RewardItem"][1]["Attr"] = "0 11 0 10080 1"
tServiceTask_Newfight_pack[3310258]["LogId"] = 12000138

--【津贴】保家卫国*20
tServiceTask_Newfight_pack[3310259] = {}
tServiceTask_Newfight_pack[3310259]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310259]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310259]["DeleteItem"][1]["Id"] = 3310259
tServiceTask_Newfight_pack[3310259]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310259]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310259]["RewardItem"][1]["Id"] = 3310262
tServiceTask_Newfight_pack[3310259]["RewardItem"][1]["Attr"] = "0 2 0 1440 1"
tServiceTask_Newfight_pack[3310259]["LogId"] = 12000138
--【津贴】保家卫国*10
tServiceTask_Newfight_pack[3310262] = {}
tServiceTask_Newfight_pack[3310262]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310262]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310262]["DeleteItem"][1]["Id"] = 3310262
tServiceTask_Newfight_pack[3310262]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310262]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310262]["RewardItem"][1]["Id"] = 3007262
tServiceTask_Newfight_pack[3310262]["RewardItem"][1]["Attr"] = "0 10 0 10080 1"
tServiceTask_Newfight_pack[3310262]["LogId"] = 12000138

--【津贴】绝世佳人*2
tServiceTask_Newfight_pack[3310260] = {}
tServiceTask_Newfight_pack[3310260]["DeleteItem"] = {}
tServiceTask_Newfight_pack[3310260]["DeleteItem"][1] = {}
tServiceTask_Newfight_pack[3310260]["DeleteItem"][1]["Id"] = 3310260
tServiceTask_Newfight_pack[3310260]["RewardItem"] = {}
tServiceTask_Newfight_pack[3310260]["RewardItem"][1] = {} 
tServiceTask_Newfight_pack[3310260]["RewardItem"][1]["Id"] = 3007263
tServiceTask_Newfight_pack[3310260]["RewardItem"][1]["Attr"] = "0 2 0 10080 1"
tServiceTask_Newfight_pack[3310260]["LogId"] = 12000138

--判断玩家背包中特权礼包赠的特权礼包
local nServiceTask_SelectedItem = {}
nServiceTask_SelectedItem[1] = 3007259
nServiceTask_SelectedItem[2] = 3007260
nServiceTask_SelectedItem[3] = 3007261
nServiceTask_SelectedItem[4] = 3007262
nServiceTask_SelectedItem[5] = 3007263

--存贮打开的物品临时表
local nServiceTask_GlobalId


-- ===索引: tServiceTask_OctoberSever[3310256]
-- ===删除: 3310256,1
local tServiceTask_OctoberSever = {}
tServiceTask_OctoberSever[3310256] = {}
tServiceTask_OctoberSever[3310256]["RewardItem"] = {}
tServiceTask_OctoberSever[3310256]["RewardItem"][1] = {}
tServiceTask_OctoberSever[3310256]["RewardItem"][1]["Id"] = 3314018 -- 【库】 3314018【10000CPsPack】[属性:8]
tServiceTask_OctoberSever[3310256]["RewardItem"][1]["Attr"] = "0 2"
tServiceTask_OctoberSever[3310256]["RewardEffect"] = {}
tServiceTask_OctoberSever[3310256]["RewardEffect"]["SzObj"] = "self"
tServiceTask_OctoberSever[3310256]["RewardEffect"]["Effect"] = "angelwing"

--新老服区分globalid 
local tServiceTask_NewGlobalId = {}
tServiceTask_NewGlobalId["Global"] = 53779
--------------------------------------逻辑部分-----------------------------------------
-- 交砖NPC
function ServiceTask_MoveGold_Npc()
	-- 判断是否是跨服玩家
	if not User_IsCross() then
		SendHandBrickInfo(1)
	end
end

-- 搬砖函数
function ServiceTask_MoveGold_MoveBrick()
	local nUserId = Get_UserId()

	-- 判断是否加入联盟
	if not User_IsInLeague() then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoAlliance"])
		return
	end

	-- 获取玩家当前所在服务器的金砖数量
	local nGoldNum = Get_CountryBrickAmount()

	-- 判断是否是跨服玩家
	if not User_IsCross(nUserId) then
		-- 判断是否本联盟的金砖
		local nCountryId = Get_CountryId()
		local nLeagueId = Get_UserLeagueId(nUserId)
		
		-- 判断本服是否有执政盟
		if nCountryId <= 0 then
			User_TalkChannel2005(tServiceTask_MoveGold_Text["NoAU"])
			return
		end
		
		-- 判断是否是本盟的玩家
		if nCountryId == nLeagueId then
			SendHandBrickInfo(0)
			return
		end
		
		return
	end
	
	-- 判断是否可以掠夺
	if not User_IsInPlunderWar() then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoPredatoryWar"])
		SendHandBrickInfo(0)
		return
	end

	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tServiceTask_MoveGold_Count["Level"],tServiceTask_MoveGold_Count["Metempsychosis"]) then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoLevel"])
		return
	end
	
	-- 判断金砖的数量
	-- if nGoldNum == nil or nGoldNum <= 0 then
		-- User_TalkChannel2005(tServiceTask_MoveGold_Text["NoGold"])
		-- return
	-- end
	--判断当前服务器金砖是否有九龙罩状态，有九龙罩状态不能搬砖
	if User_IsImmunePlunder() then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["HaveJLZ"])
		return
	end
		
	-- 判断玩家位置
	local nCellX = Get_UserPositionX(nUserId)
	local nCellY = Get_UserPositionY(nUserId)
	
	if not (nCellX >= tServiceTask_MoveGold_Count["MinPosX"] and nCellX <= tServiceTask_MoveGold_Count["MaxPosX"]
			and nCellY >= tServiceTask_MoveGold_Count["MinPosY"] and nCellY <= tServiceTask_MoveGold_Count["MaxPosY"] ) then
	
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoRange"])
		return
	end

	Sys_SaveActionParamLog("action_gz","0,0,0,0,18000077,2,0,0")
	
	local nNpcId = Get_NpcId()
	User_BeginMoveGoldBrick(tServiceTask_MoveGold_Count["Action"],tServiceTask_MoveGold_Text["Read"],nNpcId,nUserId)
end

-- 搬砖成功操作
function ServiceTask_MoveGold_MoveSuccess(nUserId)
	local nQuality = Get_BrickQuality(nUserId)
	
	if nQuality < 0 then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["MoveSuccess"],nUserId)
	else
		User_TalkChannel2005(tServiceTask_MoveGold_Text["Quality"][nQuality],nUserId)
	end
	
	Sys_SaveEmoneyBuy(tServiceTask_MoveGold_Count["PlunderEmoneyLog"],nUserId)
end

-- 搬砖失败提示
function ServiceTask_MoveGold_MoveFail(nUserId)
	User_TalkChannel2005(tServiceTask_MoveGold_Text["MoveFail"],nUserId)
end

-- 交砖成功函数
-- nNormal 表示区分正常交砖还是国家没金砖的时候交砖的奖励
-- nQuality	金砖的品质
function ServiceTask_MoveGold_MakeBrickSuccess(nNormal,nQuality,nUserId)
	User_TalkChannel2005(tServiceTask_MoveGold_Text["MoveGoldSuccess"],nUserId)
	Sys_SaveEmoneyBuy(tServiceTask_MoveGold_Count["ShanghaiEmoneyLog"],nUserId)

	-- local nTaskId = tServiceTask_MoveGold_Count["TaskId"]
	
	-- 判断是否有接任务
	-- if Task_ChkTaskDetail(nTaskId) then
		-- local nTime = os.time()

		-- 判断是否隔天
		-- if Task_DetailInterval(nTaskId,1,4) then
			-- Task_SetTaskDetailData6(nTaskId,0)
		-- end
		
		-- local nData = Get_TaskDetailData6(nTaskId) + 1
		-- Task_SetTaskDetailData6(nTaskId,nData)
		-- Task_SetTaskDetailData7(nTaskId,nTime)
		-- Task_SetTaskDetailData1(nTaskId,0)

		-- 加积分
		if National_War_AddIntegral(tServiceTask_MoveGold_Score[nQuality],nUserId) then
			User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["Success"],tServiceTask_MoveGold_Score[nQuality]),nUserId)
		end
		
		User_EffectAdd("self","accession",nUserId)
	-- end
end

-- 交砖失败函数
function ServiceTask_MoveGold_MakeBrickFail(nUserId)
	User_TalkChannel2005(tServiceTask_MoveGold_Text["MoveGoldFail"],nUserId)
end

-- 建立联盟。
function ServiceTask_MoveGold_EstablishAlliance(nNpcId)
	-- 判断是否加入联盟
	if User_IsInLeague() then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nRank = Get_UserGuildRank()

	-- 判断是否是帮主
	if nRank ~= 1000 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nGuildId = Get_UserGuildId(nUserId)
	-- local nEmoney = Get_UserSynEmoney(nGuildId)
	
	-- 判断帮派天石数量是否够
	-- if nEmoney < 3000 then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	-- 判断帮派等级
	local nSynLevel = Get_UserSynLevel(nGuildId)
	if nSynLevel < 9 then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoGangRank"])
		return
	end
	
	-- 判断本服战旗赛
	-- local nVexillum = Get_VexillumRank(nGuildId)
	
	-- if nVexillum > 7 or nVexillum < 0 then
		-- User_TalkChannel2005(tServiceTask_MoveGold_Text["NoStandardTournam"])
		-- return
	-- end

	User_OpenDialog(693)
end

-- 更改联盟名称
function ServiceTask_MoveGold_ChangeAllianceName(nNpcId)
	-- 判断是否加入联盟
	if not User_IsInLeague() then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoLeague"])
		return
	end
	
	-- 判断是否是盟主
	if not User_IsLeagueLeader() then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["DynamicAlliance"])
		return
	end

	User_OpenDialog(723)
end

-- 玩家每天上线免费领取喇叭
function ServiceTask_MoveGold_GetSpeakerNum()
	-- 判断今天是否领取过
	local nEvent = 136
	local nType = 16
	
	if not Task_StcInterval(nEvent,nType,1,4) then
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			return
		end
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoSpace1"])
		return
	end
	
	local nItemNum = User_GetSpeakerNumEveryDay()
	
	if nItemNum <= 0 then
		return
	end
	
	-- 判断是否有100个喇叭
	if Item_ChkMulItem(3002218,3002218,100,1) then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["ItemNumFull"])
		return
	end

	local sItemAttr = string.format("0 %d 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3",nItemNum)
	
	Item_AddNewItem(3002218,sItemAttr)
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["RewardItem"],nItemNum))
end

-- 津贴礼包
function ServiceTask_MoveGold_PackageAllowance(nItemId)
	local nSpace = tServiceTask_MoveGold_PackageAllowance[nItemId]["Space"]
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		local sCont = tServiceTask_MoveGold_Text["OpenPackage"]
		local tItemNum = {}
		
		User_AddStrengthValue(tServiceTask_MoveGold_PackageAllowance[nItemId]["StrengthValue"])

		for i = 1,#tServiceTask_MoveGold_PackageAllowance[nItemId]["Item"] do
			local v = tServiceTask_MoveGold_PackageAllowance[nItemId]["Item"][i]
			local tItemAttr = Sys_Split(v["Attr"]," ")
			local sItemNum = tItemAttr[2]
			table.insert(tItemNum,tonumber(sItemNum))
			Item_AddNewItem(v["Id"],v["Attr"])
		end

		sCont = string.format(sCont,tItemNum[1],tItemNum[2])
		
		-- 打log
		Sys_SaveActionFestivalLog(tServiceTask_MoveGold_PackageAllowance[nItemId]["Log"])

		-- 给提示
		User_TalkChannel2005(sCont)
		
		User_EffectAdd("self","angelwing")
	end
end

-- 俸禄礼包
function ServiceTask_MoveGold_SalaryPackage(nItemId)
	if tServiceTask_MoveGold_SalaryPackage[nItemId] == nil then
		return
	end

	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		local nAddStrengthValue = tServiceTask_MoveGold_SalaryPackage[nItemId]["AddStrengthValue"]
		local nAddCultivation = tServiceTask_MoveGold_SalaryPackage[nItemId]["AddCultivation"] 
		local nAddRidingPoints = tServiceTask_MoveGold_SalaryPackage[nItemId]["AddRidingPoints"]
		local sLog = string.format(tServiceTask_MoveGold_SalaryPackage["Log"],nItemId,nAddStrengthValue,nAddRidingPoints,nAddCultivation)
		local sCount = string.format(tServiceTask_MoveGold_Text["OpenSalaryPackage"],nAddStrengthValue,nAddRidingPoints,nAddCultivation)
		
		-- 加气力值
		User_AddStrengthValue(nAddStrengthValue)
		-- 加修行值
		User_AddCultivation(nAddCultivation)
		-- 加骑宠积分
		User_AddRidingPoints(nAddRidingPoints)
		
		Sys_SaveActionFestivalLog(sLog)
		
		User_TalkChannel2005(sCount)
	end
end

--新礼包掩码清理
function ServiceTask_Cleanstc()

	local nUserId = Get_UserId()
	local nEventWeek = tServiceTask_Newstc[1]["Eventdata"]
	local nDataWeek = tServiceTask_Newstc[1]["Typedata"]
	
	if Task_StcInterval(nEventWeek,nDataWeek,1,5,nUserId) then
		Task_SetStatistic(nEventWeek,nDataWeek,0,1,nUserId)
		Task_SetStcTimestamp(nEventWeek,nDataWeek,0,nUserId)
	end
	
end

--周限制在礼包打开时候做限制
function ServiceTask_Daylimit()
		--清理掩码
	ServiceTask_Cleanstc()
	
	local nEventWeek = tServiceTask_Newstc[1]["Eventdata"]
	local nDataWeek = tServiceTask_Newstc[1]["Typedata"]
	local nWeekstc = Get_UserStatisticValue(nEventWeek,nDataWeek)
	local nLaststc = tServiceTask_NewGifttip[nItemId]
	if (nWeekstc ~= 0) and (nLaststc ~= nWeekstc) then
		return false
	end
	
	return true
	
end

--只做周限制判断
function ServiceTask_Weeklimit(nItemId)
	
		--清理掩码
	ServiceTask_Cleanstc()
	
	local nEventWeek = tServiceTask_Newstc[1]["Eventdata"]
	local nDataWeek = tServiceTask_Newstc[1]["Typedata"]
	local nWeekstc = Get_UserStatisticValue(nEventWeek,nDataWeek)
	local nLaststc = tServiceTask_NewGifttip[nItemId]
	if (nWeekstc ~= 0) and (nLaststc ~= nWeekstc) then
		--tItem[nItemId]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
		return true
	end
	
	--[[
	tItem[nItemId]["Text112"] = tServiceTask_MoveGold_Text[3007259]["112"]
	
	--一天只能打开
	local nEventDay = tServiceTask_Newstc[2]["Eventdata"]
	local nDataDay = tServiceTask_Newstc[2]["Typedata"]

	if Task_ChkStcValue(nEventDay,nDataDay,"==",1) then
		tItem[nItemId]["Text112"] = tServiceTask_MoveGold_Text[3007259]["112"]
		return true
	end
	]]--
	return true
	
end

-- 给修炼礼包
function ServiceTask_MoveGold_UseAllowance(nItemId,nType)
	if Item_ChkItem(nItemId,1) then
		
		--背包空间判断
		if nType == 1 then
			if not User_CheckLeftSpace(7) then
				User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["NewNospace"],7))
				return
			end
		end
		
		--清理掩码
		ServiceTask_Cleanstc()
		--一周只能打开一次
		local nEventWeek = tServiceTask_Newstc[1]["Eventdata"]
		local nDataWeek = tServiceTask_Newstc[1]["Typedata"]
		
		local nWeekstc = Get_UserStatisticValue(nEventWeek,nDataWeek)
		local nLaststc = tServiceTask_NewGifttip[nItemId]
		if (nWeekstc ~= 0) and (nLaststc ~= nWeekstc) then
			User_TalkChannel2005(tServiceTask_MoveGold_Text["Weekopened"])
			Sys_MsgBox(tServiceTask_MoveGold_Text["Weekopened"])
			return false
		end
		
		--新添加掩码
		--周掩码清理
		Task_SetStatistic(nEventWeek,nDataWeek,nLaststc,1)
		Task_SetStcTimestamp(nEventWeek,nDataWeek,0)
		
		Item_DelItem(nItemId,1)
		
		local sIndex = tServiceTask_MoveGold_Allowance[nItemId][nType]["Index"]
		local sCount = tServiceTask_MoveGold_Text[sIndex]
		local sLog = "0,0,%d,1,12000138,2,%d,%d"
		
		if nType == 1 then
			local sItemName = Get_ItemtypeName(tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"])
			Item_AddItem(tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"],0,7)
			sLog = string.format(sLog,nItemId,tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"],7)
			sCount = string.format(sCount,sItemName)
		else
			User_AddStrengthValue(tServiceTask_MoveGold_Allowance[nItemId][nType]["SevenStrengthValue"])
			sLog = string.format(sLog,nItemId,12,tServiceTask_MoveGold_Allowance[nItemId][nType]["SevenStrengthValue"])
			sCount = string.format(sCount,tServiceTask_MoveGold_Allowance[nItemId][nType]["SevenStrengthValue"])
		end
		
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sCount)
		User_EffectAdd("self",tServiceTask_MoveGold_Allowance[nItemId][nType]["Effect"])
	end
end

--帮战奖励新增奖励,新增周判断
function ServiceTask_WeekNewfightpack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	local nNspace = RewardTemplate_GetRewardSpace(tServiceTask_Newfight_pack[nItemId])
	if not User_CheckLeftSpace(nNspace) then
		User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["NewNospace"],nNspace))
		return
	end
	
	--清理掩码
	ServiceTask_Cleanstc()
	
	local nEventWeek = tServiceTask_Newstc[1]["Eventdata"]
	local nDataWeek = tServiceTask_Newstc[1]["Typedata"]
	local nWeekstc = Get_UserStatisticValue(nEventWeek,nDataWeek)
	local nLaststc = tServiceTask_NewGifttip[nItemId]
	if (nWeekstc ~= 0) and (nLaststc ~= nWeekstc) then
		User_TalkChannel2005(tServiceTask_MoveGold_Text["Weekopened"])
		Sys_MsgBox(tServiceTask_MoveGold_Text["Weekopened"])
		return false
	end
	
	--周
	Task_SetStatistic(nEventWeek,nDataWeek,nLaststc,1)
	Task_SetStcTimestamp(nEventWeek,nDataWeek,0)
	
	--打开礼包
	RewardTemplate_UseItemAndMsg(tServiceTask_Newfight_pack[nItemId])
end


----帮战奖励新增
function ServiceTask_Newfightpack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	local nNspace = RewardTemplate_GetRewardSpace(tServiceTask_Newfight_pack[nItemId])
	
	--10月新服2帮战天石奖励礼包
	--10月新服2背包空间判断
	local nGetGlobalId = Get_SysDynaGlobalData0(tServiceTask_NewGlobalId["Global"])
	if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
		and tServiceTask_OctoberSever[nItemId] ~= nil then
		nNspace = nNspace + 1
	end
	
	if not User_CheckLeftSpace(nNspace) then
		User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["NewNospace"],nNspace))
		return
	end
	
	--打开礼包
	RewardTemplate_UseItemAndMsg(tServiceTask_Newfight_pack[nItemId])
	
	--10月新服
	if nGetGlobalId == 1 and Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["HundredActivityTime"]) 
		and tServiceTask_OctoberSever[nItemId] ~= nil then
		RewardTemplate_UseItemAndMsg(tServiceTask_OctoberSever[nItemId])
	end
end

--玩家是否有赠的物品
function ServiceTask_Bexit(nItemId)
	tItem[nItemId]["tOption1-2"] = {}

	--判断玩家背包中是否有赠的礼包
	for i,v in pairs(nServiceTask_SelectedItem) do
		
		if Item_ChkItem(v,2) then
			--玩家存在赠品礼包
			tItem[nItemId]["Option4"] = tServiceTask_NewmoveGold_Text["OpenGift"]
			tItem[nItemId]["OptionFunc4"]="LinkItemGossipFunc_New</N>"..nItemId.."</S>2-1"
			table.insert(tItem[nItemId]["tOption1-2"],4)
			break
		end
	end
	
	tItem[nItemId]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
	table.insert(tItem[nItemId]["tOption1-2"],3)
	return true
end

--单个礼包打开获得
function ServiceTask_MoveGold_SimpleUseAllowance(nItemId,nType)
	if not Item_ChkItem(nItemId,2) then
		return
	end
	
	--背包空间判断
	if nType == 1 then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(string.format(tServiceTask_MoveGold_Text["NewNospace"],1))
			return
		end
	end
	
	Item_DelItem(nItemId,2)
	
	local sIndex = tServiceTask_MoveGold_Allowance[nItemId][nType]["Index"]
	local sCount = tServiceTask_MoveGold_Text[sIndex]
	local sLog = "0,0,%d,1,12000138,2,%d,%d"
	
	if nType == 1 then
		local sItemName = Get_ItemtypeName(tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"])
		Item_AddItem(tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"],0,1)
		sLog = string.format(sLog,nItemId,tServiceTask_MoveGold_Allowance[nItemId][nType]["Id"],1)
		sCount = string.format(sCount,sItemName)
	else
		User_AddStrengthValue(tServiceTask_MoveGold_Allowance[nItemId][nType]["StrengthValue"])
		sLog = string.format(sLog,nItemId,12,tServiceTask_MoveGold_Allowance[nItemId][nType]["StrengthValue"])
		sCount = string.format(sCount,tServiceTask_MoveGold_Allowance[nItemId][nType]["StrengthValue"])
	end
	
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sCount)
	User_EffectAdd("self",tServiceTask_MoveGold_Allowance[nItemId][nType]["Effect"])
end

--7分1礼包打开获得
function ServiceTask_ChoiceopenItemcheck(nItemId)
	tItem[nItemId]["Text311"] = tServiceTask_NewmoveGold_Text[nServiceTask_GlobalId]["Text111"]
	tItem[nItemId]["Option31"] = tServiceTask_NewmoveGold_Text[nServiceTask_GlobalId]["Option1"]
	tItem[nItemId]["Option32"] = tServiceTask_NewmoveGold_Text[nServiceTask_GlobalId]["Option2"]
	tItem[nItemId]["OptionFunc31"]="ServiceTask_MoveGold_SimpleUseAllowance</N>"..nServiceTask_GlobalId.."</N>1"
	tItem[nItemId]["OptionFunc32"]="ServiceTask_MoveGold_SimpleUseAllowance</N>"..nServiceTask_GlobalId.."</N>2"
	return true
end

--点击单个物品选项
function ServiceTask_clickBexitItem(nItemId,nChoiceitem)
	nServiceTask_GlobalId = nChoiceitem
	LinkItemGossipFunc_New(nItemId,"3-1")
end

--判断玩家中的赠品数量
function ServiceTask_BexitItem(nItemId)
	tItem[nItemId]["tOption2-1"] = {}
	--判断玩家背包中是否有赠的礼包
	local nNum = 20
	for i,v in pairs(nServiceTask_SelectedItem) do
		local sItemOption = "Option"..(nNum+i)
		local sItemOptionFunc = "OptionFunc"..(nNum+i)
		if Item_ChkItem(v,2) then
			--玩家存在赠品礼包
			tItem[nItemId][sItemOption] = tServiceTask_NewmoveGold_Text["BItemId"][v]
			tItem[nItemId][sItemOptionFunc]="ServiceTask_clickBexitItem</N>"..nItemId.."</N>"..v
			
			table.insert(tItem[nItemId]["tOption2-1"],nNum+i)
		end
	end
	return true
end

--------------------------------------NPC模块-------------------------------------------
-- 跨服任务大使
-- 选项
tNpcGossip[17400]["Option156"] = tServiceTask_MoveGold_Text[17400]["Option156"]
tNpcGossip[17400]["OptionFunc156"]="ServiceTask_MoveGold_Npc"

-- 联盟建立指挥官
tNpcFace[15] = 7
tNpcGossip[10003] = tNpcGossip[10003] or DefaultNpc:new{}
tNpcGossip[10003]["OptionHidden"] = 1

-- 【玩家选1、接受任务】
tNpcGossip[10003]["Text1-1"] = {111,112}
tNpcGossip[10003]["Text111"] = tServiceTask_MoveGold_Text[10003]["111"]
tNpcGossip[10003]["Text112"] = tServiceTask_MoveGold_Text[10003]["112"]
tNpcGossip[10003]["tOption1-1"] = {1,6,2}

tNpcGossip[10003]["Text2-1"] = {211}
tNpcGossip[10003]["Text211"] = tServiceTask_MoveGold_Text[10003]["211"]
tNpcGossip[10003]["tOption2-1"] = {3}

tNpcGossip[10003]["Text2-2"] = {221}
tNpcGossip[10003]["Text221"] = tServiceTask_MoveGold_Text[10003]["221"]
tNpcGossip[10003]["tOption2-2"] = {4}

tNpcGossip[10003]["Text2-3"] = {231}
tNpcGossip[10003]["Text231"] = tServiceTask_MoveGold_Text[10003]["231"]
tNpcGossip[10003]["tOption2-3"] = {5}

tNpcGossip[10003]["Option1"] = tServiceTask_MoveGold_Text[10003]["Option1"]
tNpcGossip[10003]["OptionFunc1"]="ServiceTask_MoveGold_EstablishAlliance</N>10003"
tNpcGossip[10003]["OptionChkFunc1"] = function ()
	return not User_IsInLeague()
end

tNpcGossip[10003]["Option2"] = tServiceTask_MoveGold_Text[10003]["Option2"]
tNpcGossip[10003]["Option3"] = tServiceTask_MoveGold_Text[10003]["Option3"]
tNpcGossip[10003]["Option4"] = tServiceTask_MoveGold_Text[10003]["Option4"]
tNpcGossip[10003]["Option5"] = tServiceTask_MoveGold_Text[10003]["Option5"]
tNpcGossip[10003]["Option6"] = tServiceTask_MoveGold_Text[10003]["Option6"]
tNpcGossip[10003]["OptionFunc6"]="ServiceTask_MoveGold_ChangeAllianceName</N>10003"
tNpcGossip[10003]["OptionChkFunc6"] = function ()
	return User_IsInLeague()
end

-- 津贴的礼包
-------------------------A包
tItem[3006989] = tItem[3006989] or {}
tItem[3006989]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_PackageAllowance(nItemId)
end

tItem[3006990] = tItem[3006990] or {}
tItem[3006990]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_PackageAllowance(nItemId)
end

tItem[3006991] = tItem[3006991] or {}
tItem[3006991]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_PackageAllowance(nItemId)
end

tItem[3006992] = tItem[3006992] or {}
tItem[3006992]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_PackageAllowance(nItemId)
end

tItem[3006993] = tItem[3006993] or {}
tItem[3006993]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_PackageAllowance(nItemId)
end

-------------------------
-- 3007259	【特权】至尊皇族津贴
-- 3007260	【特权】名门望族津贴
-- 3007261	【特权】达官贵人津贴
-- 3007262	【特权】保家卫国津贴
-- 3007263	【特权】绝世佳人津贴

tItemFace[3007259] = 1667
tItem[3007259] = tItem[3007259] or {}
tItem[3007259]["Text1-1"] = {111}
tItem[3007259]["Text111"] = tServiceTask_MoveGold_Text[3007259]["111"]
tItem[3007259]["tOption1-1"] = {1,2}
tItem[3007259]["Option1"] = tServiceTask_MoveGold_Text[3007259]["Option1"]
tItem[3007259]["OptionFunc1"]="ServiceTask_MoveGold_UseAllowance</N>3007259</N>1"
tItem[3007259]["Option2"] = tServiceTask_MoveGold_Text[3007259]["Option2"]
tItem[3007259]["OptionFunc2"]="ServiceTask_MoveGold_UseAllowance</N>3007259</N>2"
tItem[3007259]["ChkFunc1-1"] = function()
	return ServiceTask_Daylimit()
end
tItem[3007259]["Text1-2"] = {112}
tItem[3007259]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
tItem[3007259]["tOption1-2"] = {3}
tItem[3007259]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
tItem[3007259]["ChkFunc1-2"] = function()
	return ServiceTask_Bexit(3007259)
end

--检查玩家背包中的赠品津贴礼包
tItem[3007259]["Text2-1"] = {211}
tItem[3007259]["Text211"] = tServiceTask_NewmoveGold_Text["OpenGifttext"]
tItem[3007259]["tOption2-1"] = {}
tItem[3007259]["ChkFunc2-1"] = function()
	return ServiceTask_BexitItem(3007259)
end

tItem[3007259]["Text3-1"] = {311}
tItem[3007259]["Text311"] = tServiceTask_NewmoveGold_Text[3007259]["Text111"]
tItem[3007259]["tOption3-1"] = {31,32}
tItem[3007259]["ChkFunc3-1"] = function()
	return ServiceTask_ChoiceopenItemcheck(3007259)
end


tItemFace[3007260] = 1668
tItem[3007260] = tItem[3007260] or {}
tItem[3007260]["Text1-1"] = {111}
tItem[3007260]["Text111"] = tServiceTask_MoveGold_Text[3007260]["111"]
tItem[3007260]["tOption1-1"] = {1,2}
tItem[3007260]["Option1"] = tServiceTask_MoveGold_Text[3007260]["Option1"]
tItem[3007260]["OptionFunc1"]="ServiceTask_MoveGold_UseAllowance</N>3007260</N>1"
tItem[3007260]["Option2"] = tServiceTask_MoveGold_Text[3007260]["Option2"]
tItem[3007260]["OptionFunc2"]="ServiceTask_MoveGold_UseAllowance</N>3007260</N>2"
tItem[3007260]["ChkFunc1-1"] = function()
	return ServiceTask_Daylimit()
end
tItem[3007260]["Text1-2"] = {112}
tItem[3007260]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
tItem[3007260]["tOption1-2"] = {3}
tItem[3007260]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
tItem[3007260]["ChkFunc1-2"] = function()
	return ServiceTask_Bexit(3007260)
end
--检查玩家背包中的赠品津贴礼包
tItem[3007260]["Text2-1"] = {211}
tItem[3007260]["Text211"] = tServiceTask_NewmoveGold_Text["OpenGifttext"]
tItem[3007260]["tOption2-1"] = {}
tItem[3007260]["ChkFunc2-1"] = function()
	return ServiceTask_BexitItem(3007260)
end

tItem[3007260]["Text3-1"] = {311}
tItem[3007260]["Text311"] = tServiceTask_NewmoveGold_Text[3007259]["Text111"]
tItem[3007260]["tOption3-1"] = {31,32}
tItem[3007260]["ChkFunc3-1"] = function()
	return ServiceTask_ChoiceopenItemcheck(3007260)
end

tItemFace[3007261] = 1669
tItem[3007261] = tItem[3007261] or {}
tItem[3007261]["Text1-1"] = {111}
tItem[3007261]["Text111"] = tServiceTask_MoveGold_Text[3007261]["111"]
tItem[3007261]["tOption1-1"] = {1,2}
tItem[3007261]["Option1"] = tServiceTask_MoveGold_Text[3007261]["Option1"]
tItem[3007261]["OptionFunc1"]="ServiceTask_MoveGold_UseAllowance</N>3007261</N>1"
tItem[3007261]["Option2"] = tServiceTask_MoveGold_Text[3007261]["Option2"]
tItem[3007261]["OptionFunc2"]="ServiceTask_MoveGold_UseAllowance</N>3007261</N>2"
tItem[3007261]["ChkFunc1-1"] = function()
	return ServiceTask_Daylimit()
end
tItem[3007261]["Text1-2"] = {112}
tItem[3007261]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
tItem[3007261]["tOption1-2"] = {3}
tItem[3007261]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
tItem[3007261]["ChkFunc1-2"] = function()
	return ServiceTask_Bexit(3007261)
end
--检查玩家背包中的赠品津贴礼包
tItem[3007261]["Text2-1"] = {211}
tItem[3007261]["Text211"] = tServiceTask_NewmoveGold_Text["OpenGifttext"]
tItem[3007261]["tOption2-1"] = {}
tItem[3007261]["ChkFunc2-1"] = function()
	return ServiceTask_BexitItem(3007261)
end

tItem[3007261]["Text3-1"] = {311}
tItem[3007261]["Text311"] = tServiceTask_NewmoveGold_Text[3007259]["Text111"]
tItem[3007261]["tOption3-1"] = {31,32}
tItem[3007261]["ChkFunc3-1"] = function()
	return ServiceTask_ChoiceopenItemcheck(3007261)
end

tItemFace[3007262] = 1670
tItem[3007262] = tItem[3007262] or {}
tItem[3007262]["Text1-1"] = {111}
tItem[3007262]["Text111"] = tServiceTask_MoveGold_Text[3007262]["111"]
tItem[3007262]["tOption1-1"] = {1,2}
tItem[3007262]["Option1"] = tServiceTask_MoveGold_Text[3007262]["Option1"]
tItem[3007262]["OptionFunc1"]="ServiceTask_MoveGold_UseAllowance</N>3007262</N>1"
tItem[3007262]["Option2"] = tServiceTask_MoveGold_Text[3007262]["Option2"]
tItem[3007262]["OptionFunc2"]="ServiceTask_MoveGold_UseAllowance</N>3007262</N>2"
tItem[3007262]["ChkFunc1-1"] = function()
	return ServiceTask_Daylimit()
end
tItem[3007262]["Text1-2"] = {112}
tItem[3007262]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
tItem[3007262]["tOption1-2"] = {3}
tItem[3007262]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
tItem[3007262]["ChkFunc1-2"] = function()
	return ServiceTask_Bexit(3007262)
end
--检查玩家背包中的赠品津贴礼包
tItem[3007262]["Text2-1"] = {211}
tItem[3007262]["Text211"] = tServiceTask_NewmoveGold_Text["OpenGifttext"]
tItem[3007262]["tOption2-1"] = {}
tItem[3007262]["ChkFunc2-1"] = function()
	return ServiceTask_BexitItem(3007262)
end

tItem[3007262]["Text3-1"] = {311}
tItem[3007262]["Text311"] = tServiceTask_NewmoveGold_Text[3007259]["Text111"]
tItem[3007262]["tOption3-1"] = {31,32}
tItem[3007262]["ChkFunc3-1"] = function()
	return ServiceTask_ChoiceopenItemcheck(3007262)
end


tItemFace[3007263] = 1671
tItem[3007263] = tItem[3007263] or {}
tItem[3007263]["Text1-1"] = {111}
tItem[3007263]["Text111"] = tServiceTask_MoveGold_Text[3007263]["111"]
tItem[3007263]["tOption1-1"] = {1,2}
tItem[3007263]["Option1"] = tServiceTask_MoveGold_Text[3007263]["Option1"]
tItem[3007263]["OptionFunc1"]="ServiceTask_MoveGold_UseAllowance</N>3007263</N>1"
tItem[3007263]["Option2"] = tServiceTask_MoveGold_Text[3007263]["Option2"]
tItem[3007263]["OptionFunc2"]="ServiceTask_MoveGold_UseAllowance</N>3007263</N>2"
tItem[3007263]["ChkFunc1-1"] = function()
	return ServiceTask_Daylimit()
end
tItem[3007263]["Text1-2"] = {112}
tItem[3007263]["Text112"] = tServiceTask_MoveGold_Text[3007259]["113"]
tItem[3007263]["tOption1-2"] = {3}
tItem[3007263]["Option3"] = tServiceTask_MoveGold_Text[3007259]["Option3"]
tItem[3007263]["ChkFunc1-2"] = function()
	return ServiceTask_Bexit(3007263)
end
--检查玩家背包中的赠品津贴礼包
tItem[3007263]["Text2-1"] = {211}
tItem[3007263]["Text211"] = tServiceTask_NewmoveGold_Text["OpenGifttext"]
tItem[3007263]["tOption2-1"] = {}
tItem[3007263]["ChkFunc2-1"] = function()
	return ServiceTask_BexitItem(3007263)
end

tItem[3007263]["Text3-1"] = {311}
tItem[3007263]["Text311"] = tServiceTask_NewmoveGold_Text[3007259]["Text111"]
tItem[3007263]["tOption3-1"] = {31,32}
tItem[3007263]["ChkFunc3-1"] = function()
	return ServiceTask_ChoiceopenItemcheck(3007263)
end

-- 俸禄礼包
tItem[3006994] = tItem[3006994] or {}
tItem[3006994]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3006995] = tItem[3006995] or {}
tItem[3006995]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3006996] = tItem[3006996] or {}
tItem[3006996]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3006997] = tItem[3006997] or {}
tItem[3006997]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3006998] = tItem[3006998] or {}
tItem[3006998]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3006999] = tItem[3006999] or {}
tItem[3006999]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007000] = tItem[3007000] or {}
tItem[3007000]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007001] = tItem[3007001] or {}
tItem[3007001]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007002] = tItem[3007002] or {}
tItem[3007002]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007003] = tItem[3007003] or {}
tItem[3007003]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007004] = tItem[3007004] or {}
tItem[3007004]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007005] = tItem[3007005] or {}
tItem[3007005]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007006] = tItem[3007006] or {}
tItem[3007006]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007007] = tItem[3007007] or {}
tItem[3007007]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

tItem[3007435] = tItem[3007435] or {}
tItem[3007435]["Function"] = function(nItemId,sItemName)
	ServiceTask_MoveGold_SalaryPackage(nItemId)
end

--国境津贴礼包
tItem[3310256] = tItem[3310256] or {}
tItem[3310256]["Function"] = function(nItemId,sItemName)
	ServiceTask_Newfightpack(nItemId)
end

--津贴各种礼包
--给一天时效
tItem[3310262] = tItem[3310256] or {}
tItem[3310225] = tItem[3310256] or {}
tItem[3310257] = tItem[3310256] or {}
tItem[3310258] = tItem[3310256] or {}
tItem[3310259] = tItem[3310256] or {}
tItem[3310260] = tItem[3310256] or {}


--给7天时效
--[[
tItem[3310263] = tItem[3310263] or {}
tItem[3310263]["Function"] = function(nItemId,sItemName)
	ServiceTask_WeekNewfightpack(nItemId)
end
tItem[3310264] = tItem[3310263] or {}
tItem[3310265] = tItem[3310263] or {}
tItem[3310266] = tItem[3310263] or {}
tItem[3310267] = tItem[3310263] or {}
]]--

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ServiceTask_MoveGold_GetSpeakerNum)