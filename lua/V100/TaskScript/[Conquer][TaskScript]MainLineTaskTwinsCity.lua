------------------------------------------------------------------------------------
--Name:			170504[简体征服][任务脚本]换肤版双龙城任务
--Purpose:		换肤版双龙城任务
--Creator:		张世超
--Created:		170504
------------------------------------------------------------------------------------

-- 20065 = V100\TaskScript\[Conquer][TaskScript]MainLineTaskTwinsCity.lua
-- 20065 = V100\任务脚本\[征服][任务脚本]换肤版双龙城主线任务.lua

--命名前缀
--MainLineTaskTwinsCity_

------------------------------任务面板--------------------------------------------
--主线
-- 任务1、 6770	上官逸尘
-- 任务2、 6771	镇魔塔外
-- 任务3、 6772	镇魔塔中调查
-- 任务4、 6773	神秘纸条
-- 任务5、 6774	纸条信息
-- 任务6、 6775	惊天阴谋
-- 任务7、 6776	镇国将军
-- 任务8、 6777	揪出奸细

--隐藏支线
-- 任务1、 6780	市场对话任务1
-- 任务2、 6781	市场对话任务2
-- 任务3、 6782	市场对话任务3

--奸细任务
-- 任务1、 6790	药铺老板
-- 任务2、 6791	镇魔塔外
-- 任务3、 6792	镇魔塔中调查
-- 任务4、 6793	神秘纸条
-- 任务5、 6790	纸条信息
-- 任务6、 6795	惊天阴谋
-- 任务7、 6796	镇国将军
-- 任务8、 6797	揪出奸细


------------------------------常量定义--------------------------------------------
local tMainLineTaskTwinsCity_Cont = {}
	-- 双龙侠义令
	tMainLineTaskTwinsCity_Cont["ChivalryOrder"] = 3303677

	tMainLineTaskTwinsCity_Cont[6770] = {}
	tMainLineTaskTwinsCity_Cont[6770]["Secs"] = 2
	tMainLineTaskTwinsCity_Cont[6770]["ActionId"] = 220
	tMainLineTaskTwinsCity_Cont[6770]["Effect"] = "purpleray"

	tMainLineTaskTwinsCity_Cont[6771] = {}
	tMainLineTaskTwinsCity_Cont[6771]["ZhenYan"] = {20583,20584,20585}
	tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"] = {}
	tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][20583]="2"
	tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][20584]="3"
	tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][20585]="4"
	
	tMainLineTaskTwinsCity_Cont[6771]["GenId"] = {}
	tMainLineTaskTwinsCity_Cont[6771]["GenId"][20583]=20204
	tMainLineTaskTwinsCity_Cont[6771]["GenId"][20584]=20205
	tMainLineTaskTwinsCity_Cont[6771]["GenId"][20585]=20206
	tMainLineTaskTwinsCity_Cont[6771]["Effect"] = "Disapear1"
	tMainLineTaskTwinsCity_Cont[6771]["TaskItem"] = 3303268
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["LogId"] = 18000156
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["Talk"] = tMainLineTaskTwinsCity_Text["Msg"][6771]["EnterMap"]
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303268
	tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1"	
	
	
	
	tMainLineTaskTwinsCity_Cont[6772] = {}
	tMainLineTaskTwinsCity_Cont[6772]["TaskItem"] = 3303269
	
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"]["LogId"] = 18000156	
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303269
	tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1"	
	

	tMainLineTaskTwinsCity_Cont[6774] = {}
	tMainLineTaskTwinsCity_Cont[6774]["TaskItem"] = 3303275
	
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"] = {}
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][20593]="2"
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][20594]="3"
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][20595]="4"	
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][20596]="5"	
	tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][20597]="6"	
	
	--
	tMainLineTaskTwinsCity_Cont[6775] = {}
	tMainLineTaskTwinsCity_Cont[6775]["InstanceId"] = 92
	tMainLineTaskTwinsCity_Cont[6775]["GenId"] = 20204
	tMainLineTaskTwinsCity_Cont[6775]["MonsterId"] = 3287
	tMainLineTaskTwinsCity_Cont[6775]["KillNum"] = 8
	

	tMainLineTaskTwinsCity_Cont[6790] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItem"] = {3303270,3303271,3303272}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["LogId"] = 6790
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303270
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1"
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][2] = {}
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][2]["Id"] = 3303271
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][2]["Attr"] = "0 1"
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][3] = {}
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][3]["Id"] = 3303272
	-- tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"]["RewardItem"][3]["Attr"] = "0 1"

	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270]["LogId"] = 6790
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270]["RewardItem"][1]["Id"] = 3303270
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303270]["RewardItem"][1]["Attr"] = "0 1"

	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271]["LogId"] = 6790
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271]["RewardItem"][1]["Id"] = 3303271
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303271]["RewardItem"][1]["Attr"] = "0 1"

	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272]["LogId"] = 6790
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272]["RewardItem"][1]["Id"] = 3303272
	tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][3303272]["RewardItem"][1]["Attr"] = "0 1"
	
	tMainLineTaskTwinsCity_Cont[6790]["Talk"] = {}
	tMainLineTaskTwinsCity_Cont[6790]["Talk"][1] = "1-3"
	tMainLineTaskTwinsCity_Cont[6790]["Talk"][2] = "1-4"
	tMainLineTaskTwinsCity_Cont[6790]["Talk"][3] = "1-5"	
	
	tMainLineTaskTwinsCity_Cont[6790]["InstanceId"] = 93
	tMainLineTaskTwinsCity_Cont[6790]["GenId"] = 20204
	tMainLineTaskTwinsCity_Cont[6790]["MonsterId"] = 3285
	
	tMainLineTaskTwinsCity_Cont[6790]["Secs"] = 2
	tMainLineTaskTwinsCity_Cont[6790]["ActionId"] = 100
	
	tMainLineTaskTwinsCity_Cont[6792] = {}
	tMainLineTaskTwinsCity_Cont[6792]["Talk"] = {}
	tMainLineTaskTwinsCity_Cont[6792]["Talk"][2] = "1-3"
	tMainLineTaskTwinsCity_Cont[6792]["Talk"][3] = "1-4"
	tMainLineTaskTwinsCity_Cont[6792]["Talk"][4] = "1-5"	
	tMainLineTaskTwinsCity_Cont[6792]["Talk"][1] = "1-2"	
	
	
	tMainLineTaskTwinsCity_Cont[6793] = {}
	tMainLineTaskTwinsCity_Cont[6793]["TaskItem"] = 3303273
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["LogId"] = 6793
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["TalkFlag"] = 105
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303273
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1"
	
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"]["RewardEffect"]["Effect"] = "eidolon"	
	

	tMainLineTaskTwinsCity_Cont[6793]["InstanceId"] = 106
	tMainLineTaskTwinsCity_Cont[6793]["GenId"] = 20204
	tMainLineTaskTwinsCity_Cont[6793]["MonsterId"] = 3286
	tMainLineTaskTwinsCity_Cont[6793]["Secs"] = 2
	tMainLineTaskTwinsCity_Cont[6793]["ActionId"] = 220
	
	tMainLineTaskTwinsCity_Cont[6794] = {}
	tMainLineTaskTwinsCity_Cont[6794]["Secs"] = 5
	tMainLineTaskTwinsCity_Cont[6794]["ActionId"] = 4	
	tMainLineTaskTwinsCity_Cont[6794]["Effect"] = "wclsj"
	
	tMainLineTaskTwinsCity_Cont[6795] = {}
	tMainLineTaskTwinsCity_Cont[6795]["Talk"] = {}
	tMainLineTaskTwinsCity_Cont[6795]["Talk"][1] = "1-6"
	tMainLineTaskTwinsCity_Cont[6795]["Talk"][0] = "1-5"		
	tMainLineTaskTwinsCity_Cont[6795]["Item"] = {3303665,3303666,3303667,3303668,3303669,3303670,3303671,3303672}
	
	
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["LogId"] = 6795
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303673
	tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1"	
	
	
	
	tMainLineTaskTwinsCity_Cont[6796] = {}
	tMainLineTaskTwinsCity_Cont[6796]["TaskItem"] = 3303274
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"]["LogId"] = 18000156
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"]["RewardItem"] = {}
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"]["RewardItem"][1]["Id"] = 3303274
	tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"]["RewardItem"][1]["Attr"] = "0 1 0 1 1"		
	
	tMainLineTaskTwinsCity_Cont[6796]["Status"] = 18
	tMainLineTaskTwinsCity_Cont[6796]["Power"] = 200
	tMainLineTaskTwinsCity_Cont[6796]["Secs"] = 30
	tMainLineTaskTwinsCity_Cont[6796]["Times"] = 1
	tMainLineTaskTwinsCity_Cont[6796]["RemainTime"] = 5
	tMainLineTaskTwinsCity_Cont[6796]["EndTime"] = 1
	tMainLineTaskTwinsCity_Cont[6796]["Recordable"] = 0	
	
	

	
	
	tMainLineTaskTwinsCity_Cont[6797] = {}
	tMainLineTaskTwinsCity_Cont[6797]["TaskItemGive"] = {}
	tMainLineTaskTwinsCity_Cont[6797]["TaskItemGive"]["LogId"] = 6797
	tMainLineTaskTwinsCity_Cont[6797]["TaskItemGive"]["RewardMoney"] = {}
	tMainLineTaskTwinsCity_Cont[6797]["TaskItemGive"]["RewardMoney"]["Value"] = 800	
	
	
	tMainLineTaskTwinsCity_Cont[6797] = {}
	tMainLineTaskTwinsCity_Cont[6797]["Talk"] = {}
	tMainLineTaskTwinsCity_Cont[6797]["Talk"][1] = "2-1"
	tMainLineTaskTwinsCity_Cont[6797]["Talk"][2] = "2-2"
	tMainLineTaskTwinsCity_Cont[6797]["Talk"][3] = "2-3"
	--硝石包id
	tMainLineTaskTwinsCity_Cont[6797]["HandIn"] = {3303678,3303679,3303680,3303681,3303682}	
	
	tMainLineTaskTwinsCity_Cont[6791] = {}
	tMainLineTaskTwinsCity_Cont[6791]["Effect"] = {}	
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][1]= "touzi_1"
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][2]= "touzi_2"
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][3]= "touzi_3"
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][4]= "touzi_4"
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][5]= "touzi_5"
	tMainLineTaskTwinsCity_Cont[6791]["Effect"][6]= "touzi_6"


	
	
local tMainLineTaskTwinsCity_Log = {}
	tMainLineTaskTwinsCity_Log["Id"] = 18000156

local tMainLineTaskTwinsCity_Reward = {}

	tMainLineTaskTwinsCity_Reward[6770] = {}
	tMainLineTaskTwinsCity_Reward[6770]["LogId"] = tMainLineTaskTwinsCity_Log["Id"]
	tMainLineTaskTwinsCity_Reward[6770]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_Reward[6770]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_Reward[6770]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_Reward[6770]["RewardExpTime"] = {}
	tMainLineTaskTwinsCity_Reward[6770]["RewardExpTime"]["Value"] = 10
	tMainLineTaskTwinsCity_Reward[6770]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_Reward[6770]["RewardExpTime"]["FullValue"] = 5	
	
	
	
	
local tMainLineTaskTwinsCity_TaskId = {}
	tMainLineTaskTwinsCity_TaskId[1] = 6770
	tMainLineTaskTwinsCity_TaskId[2] = 6771
	tMainLineTaskTwinsCity_TaskId[3] = 6772
	tMainLineTaskTwinsCity_TaskId[4] = 6773
	tMainLineTaskTwinsCity_TaskId[5] = 6774
	tMainLineTaskTwinsCity_TaskId[6] = 6775
	tMainLineTaskTwinsCity_TaskId[7] = 6776
	tMainLineTaskTwinsCity_TaskId[8] = 6777
	-- tMainLineTaskTwinsCity_TaskId[9] = 6778
	
local tMainLineTaskTwinsCity_BranchTaskId = {}
	tMainLineTaskTwinsCity_BranchTaskId[1] = 6780
	tMainLineTaskTwinsCity_BranchTaskId[2] = 6781
	tMainLineTaskTwinsCity_BranchTaskId[3] = 6782
	tMainLineTaskTwinsCity_BranchTaskId[4] = 6783
	tMainLineTaskTwinsCity_BranchTaskId[5] = 6784
	tMainLineTaskTwinsCity_BranchTaskId[6] = 6785
	tMainLineTaskTwinsCity_BranchTaskId[7] = 6786

--奸细任务
local tMainLineTaskTwinsCity_DetectTaskId = {}
	tMainLineTaskTwinsCity_DetectTaskId[1] = 6790
	tMainLineTaskTwinsCity_DetectTaskId[2] = 6791
	tMainLineTaskTwinsCity_DetectTaskId[3] = 6792
	tMainLineTaskTwinsCity_DetectTaskId[4] = 6793
	-- tMainLineTaskTwinsCity_DetectTaskId[5] = 6794
	tMainLineTaskTwinsCity_DetectTaskId[6] = 6795	
	-- tMainLineTaskTwinsCity_DetectTaskId[7] = 6796
	tMainLineTaskTwinsCity_DetectTaskId[8] = 6797

local tMainLineTaskTwinsCity_DetectTaskNpc = {}
	tMainLineTaskTwinsCity_DetectTaskNpc[6790] = 20676
	tMainLineTaskTwinsCity_DetectTaskNpc[6791] = 20675
	tMainLineTaskTwinsCity_DetectTaskNpc[6792] = 20682
	tMainLineTaskTwinsCity_DetectTaskNpc[6793] = 20678
	tMainLineTaskTwinsCity_DetectTaskNpc[6794] = 20681
	tMainLineTaskTwinsCity_DetectTaskNpc[6795] = 20683	
	tMainLineTaskTwinsCity_DetectTaskNpc[6797] = 20677	
	
	
local tMainLineTaskTwinsCity_ItemUse = {}
	
	tMainLineTaskTwinsCity_ItemUse[3303678] = {}
	tMainLineTaskTwinsCity_ItemUse[3303678]["LogId"] = 6797
	tMainLineTaskTwinsCity_ItemUse[3303678]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303678]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303678]["RewardItem"][1]["Id"] = 3303276
	tMainLineTaskTwinsCity_ItemUse[3303678]["RewardItem"][1]["Attr"] = "0 2"	
	tMainLineTaskTwinsCity_ItemUse[3303678]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303678]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303678]["DeleteItem"][1]["Id"] = 3303678	

	tMainLineTaskTwinsCity_ItemUse[3303679] = {}
	tMainLineTaskTwinsCity_ItemUse[3303679]["LogId"] = 6797
	tMainLineTaskTwinsCity_ItemUse[3303679]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303679]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303679]["RewardItem"][1]["Id"] = 3303276
	tMainLineTaskTwinsCity_ItemUse[3303679]["RewardItem"][1]["Attr"] = "0 3"	
	tMainLineTaskTwinsCity_ItemUse[3303679]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303679]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303679]["DeleteItem"][1]["Id"] = 3303679		
	
	tMainLineTaskTwinsCity_ItemUse[3303680] = {}
	tMainLineTaskTwinsCity_ItemUse[3303680]["LogId"] = 6797
	tMainLineTaskTwinsCity_ItemUse[3303680]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303680]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303680]["RewardItem"][1]["Id"] = 3303276
	tMainLineTaskTwinsCity_ItemUse[3303680]["RewardItem"][1]["Attr"] = "0 4"	
	tMainLineTaskTwinsCity_ItemUse[3303680]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303680]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303680]["DeleteItem"][1]["Id"] = 3303680	

	tMainLineTaskTwinsCity_ItemUse[3303681] = {}
	tMainLineTaskTwinsCity_ItemUse[3303681]["LogId"] = 6797
	tMainLineTaskTwinsCity_ItemUse[3303681]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303681]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303681]["RewardItem"][1]["Id"] = 3303276
	tMainLineTaskTwinsCity_ItemUse[3303681]["RewardItem"][1]["Attr"] = "0 5"	
	tMainLineTaskTwinsCity_ItemUse[3303681]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303681]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303681]["DeleteItem"][1]["Id"] = 3303681	

	tMainLineTaskTwinsCity_ItemUse[3303682] = {}
	tMainLineTaskTwinsCity_ItemUse[3303682]["LogId"] = 6797
	tMainLineTaskTwinsCity_ItemUse[3303682]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303682]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303682]["RewardItem"][1]["Id"] = 3303276
	tMainLineTaskTwinsCity_ItemUse[3303682]["RewardItem"][1]["Attr"] = "0 6"	
	tMainLineTaskTwinsCity_ItemUse[3303682]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303682]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303682]["DeleteItem"][1]["Id"] = 3303682	

	tMainLineTaskTwinsCity_ItemUse[3303673] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304615] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304616] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304617] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304618] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304619] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304620] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304621] = {}
	tMainLineTaskTwinsCity_ItemUse[3303673][3304622] = {}
	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304615]["NpcId"] = 10080	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304616]["NpcId"] = 10053	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304617]["NpcId"] = 10056	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304618]["NpcId"] = 10052	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304619]["NpcId"] = 10051	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304620]["NpcId"] = 20508	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304621]["NpcId"] = 19194	
	tMainLineTaskTwinsCity_ItemUse[3303673][3304622]["NpcId"] = 4652	
	
	
	tMainLineTaskTwinsCity_ItemUse[3303674] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][1]["LogId"] = 3303674
	tMainLineTaskTwinsCity_ItemUse[3303674][1]["Talk"] = tMainLineTaskTwinsCity_Text[3303674]["MsgBox3"]
	tMainLineTaskTwinsCity_ItemUse[3303674][1]["RewardEMoneyMono"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][1]["RewardEMoneyMono"]["Value"] = 1500
	
	tMainLineTaskTwinsCity_ItemUse[3303674][2] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["LogId"] = 3303674
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["Talk"] = tMainLineTaskTwinsCity_Text[3303674]["MsgBox4"]
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["RewardEMoneyMono"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["RewardEMoneyMono"]["Value"] = 1500	
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303674][2]["DeleteItem"][1]["Id"] = 3303674
	
	tMainLineTaskTwinsCity_ItemUse[3303674]["EventType"] = 164
	tMainLineTaskTwinsCity_ItemUse[3303674]["DataType"] = 61
	
	tMainLineTaskTwinsCity_ItemUse[3303677] = {}
	tMainLineTaskTwinsCity_ItemUse[3303677]["LogId"] = 3303677
	tMainLineTaskTwinsCity_ItemUse[3303677]["Talk"] = tMainLineTaskTwinsCity_Text[3303677]["MsgBox1"]
	tMainLineTaskTwinsCity_ItemUse[3303677]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303677]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303677]["DeleteItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_ItemUse[3303677]["DeleteItem"][1]["ItemNum"] = 10
	
	tMainLineTaskTwinsCity_ItemUse[3303677]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303677]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303677]["RewardItem"][1]["Id"] = 3303674
	tMainLineTaskTwinsCity_ItemUse[3303677]["RewardItem"][1]["Attr"] = "0 1"		
	
	
	tMainLineTaskTwinsCity_ItemUse[3303665] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardItem"][1]["Id"] = 3304615
	tMainLineTaskTwinsCity_ItemUse[3303665]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303665]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303665]["DeleteItem"][1]["Id"] = 3303665

	tMainLineTaskTwinsCity_ItemUse[3303666] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardItem"][1]["Id"] = 3304616
	tMainLineTaskTwinsCity_ItemUse[3303666]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303666]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303666]["DeleteItem"][1]["Id"] = 3303666
	
	tMainLineTaskTwinsCity_ItemUse[3303667] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardItem"][1]["Id"] = 3304617
	tMainLineTaskTwinsCity_ItemUse[3303667]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303667]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303667]["DeleteItem"][1]["Id"] = 3303667	
	
	tMainLineTaskTwinsCity_ItemUse[3303668] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardItem"][1]["Id"] = 3304618
	tMainLineTaskTwinsCity_ItemUse[3303668]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303668]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303668]["DeleteItem"][1]["Id"] = 3303668		
	
	tMainLineTaskTwinsCity_ItemUse[3303669] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardItem"][1]["Id"] = 3304619
	tMainLineTaskTwinsCity_ItemUse[3303669]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303669]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303669]["DeleteItem"][1]["Id"] = 3303669			
	
	tMainLineTaskTwinsCity_ItemUse[3303670] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardItem"][1]["Id"] = 3304620
	tMainLineTaskTwinsCity_ItemUse[3303670]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303670]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303670]["DeleteItem"][1]["Id"] = 3303670		
	
	tMainLineTaskTwinsCity_ItemUse[3303671] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardItem"][1]["Id"] = 3304621
	tMainLineTaskTwinsCity_ItemUse[3303671]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303671]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303671]["DeleteItem"][1]["Id"] = 3303671			
	
	
	tMainLineTaskTwinsCity_ItemUse[3303672] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["LogId"] = 6795
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardItem"][1]["Id"] = 3304622
	tMainLineTaskTwinsCity_ItemUse[3303672]["RewardItem"][1]["Attr"] = "0 1"
	tMainLineTaskTwinsCity_ItemUse[3303672]["DeleteItem"] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["DeleteItem"][1] = {}
	tMainLineTaskTwinsCity_ItemUse[3303672]["DeleteItem"][1]["Id"] = 3303672		
	
local tMainLineTaskTwinsCity_prize ={}
	-- 上官逸尘
	tMainLineTaskTwinsCity_prize[6770] = {}
	tMainLineTaskTwinsCity_prize[6770]["LogId"] = 6770
	tMainLineTaskTwinsCity_prize[6770]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6770]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6770]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6770]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6770]["RewardExp"]["Value"] = 60
	tMainLineTaskTwinsCity_prize[6770]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6770]["RewardExp"]["FullValue"] = 1
	tMainLineTaskTwinsCity_prize[6770]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6770]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6770]["RewardItem"][1]["Id"] = 3305051
	tMainLineTaskTwinsCity_prize[6770]["RewardItem"][1]["Attr"] = "0 1"
	-- 上官逸尘（二）
	tMainLineTaskTwinsCity_prize[6785] = {}
	tMainLineTaskTwinsCity_prize[6785]["LogId"] = 6785
	tMainLineTaskTwinsCity_prize[6785]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6785]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6785]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6785]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6785]["RewardExp"]["Value"] = 60
	tMainLineTaskTwinsCity_prize[6785]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6785]["RewardExp"]["FullValue"] = 1	
	-- 镇魔塔外
	tMainLineTaskTwinsCity_prize[6771] = {}
	tMainLineTaskTwinsCity_prize[6771]["LogId"] = 6771
	tMainLineTaskTwinsCity_prize[6771]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6771]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6771]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6771]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6771]["RewardExp"]["Value"] = 100
	tMainLineTaskTwinsCity_prize[6771]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6771]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6771]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6771]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6771]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6771]["RewardItem"][1]["Attr"] = "0 1"
	-- 塔中调查
	tMainLineTaskTwinsCity_prize[6772] = {}
	tMainLineTaskTwinsCity_prize[6772]["LogId"] = 6772
	tMainLineTaskTwinsCity_prize[6772]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6772]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6772]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6772]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6772]["RewardExp"]["Value"] = 100
	tMainLineTaskTwinsCity_prize[6772]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6772]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6772]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6772]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6772]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6772]["RewardItem"][1]["Attr"] = "0 1"	
	-- 神秘纸条
	tMainLineTaskTwinsCity_prize[6773] = {}
	tMainLineTaskTwinsCity_prize[6773]["LogId"] = 6773
	tMainLineTaskTwinsCity_prize[6773]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6773]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6773]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6773]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6773]["RewardExp"]["Value"] = 100
	tMainLineTaskTwinsCity_prize[6773]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6773]["RewardExp"]["FullValue"] = 1	
	-- 纸条信息（一）
	tMainLineTaskTwinsCity_prize[6774] = {}
	tMainLineTaskTwinsCity_prize[6774]["LogId"] = 6774
	tMainLineTaskTwinsCity_prize[6774]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6774]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6774]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6774]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6774]["RewardExp"]["Value"] = 100
	tMainLineTaskTwinsCity_prize[6774]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6774]["RewardExp"]["FullValue"] = 1	
	-- 纸条信息（二）
	tMainLineTaskTwinsCity_prize[6783] = {}
	tMainLineTaskTwinsCity_prize[6783]["LogId"] = 6783
	tMainLineTaskTwinsCity_prize[6783]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6783]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6783]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6783]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6783]["RewardExp"]["Value"] = 200
	tMainLineTaskTwinsCity_prize[6783]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6783]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6783]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6783]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6783]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6783]["RewardItem"][1]["Attr"] = "0 1"		
	-- 惊天阴谋（一）
	tMainLineTaskTwinsCity_prize[6775] = {}
	tMainLineTaskTwinsCity_prize[6775]["LogId"] = 6775
	tMainLineTaskTwinsCity_prize[6775]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6775]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6775]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6775]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6775]["RewardExp"]["Value"] = 200
	tMainLineTaskTwinsCity_prize[6775]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6775]["RewardExp"]["FullValue"] = 1	
	-- 惊天阴谋（二）
	tMainLineTaskTwinsCity_prize[6784] = {}
	tMainLineTaskTwinsCity_prize[6784]["LogId"] = 6784
	tMainLineTaskTwinsCity_prize[6784]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6784]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6784]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6784]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6784]["RewardExp"]["Value"] = 300
	tMainLineTaskTwinsCity_prize[6784]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6784]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6784]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6784]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6784]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6784]["RewardItem"][1]["Attr"] = "0 1"		
	-- 镇国将军
	tMainLineTaskTwinsCity_prize[6776] = {}
	tMainLineTaskTwinsCity_prize[6776]["LogId"] = 6776
	tMainLineTaskTwinsCity_prize[6776]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6776]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6776]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6776]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6776]["RewardExp"]["Value"] = 300
	tMainLineTaskTwinsCity_prize[6776]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6776]["RewardExp"]["FullValue"] = 1	
	-- 揪出奸细
	tMainLineTaskTwinsCity_prize[6777] = {}
	tMainLineTaskTwinsCity_prize[6777]["LogId"] = 6777
	tMainLineTaskTwinsCity_prize[6777]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6777]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6777]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6777]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6777]["RewardExp"]["Value"] = 1000
	tMainLineTaskTwinsCity_prize[6777]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6777]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6777]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6777]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6777]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6777]["RewardItem"][1]["Attr"] = "0 1"			
	-- 调查杂货店老板
	tMainLineTaskTwinsCity_prize[6791] = {}
	tMainLineTaskTwinsCity_prize[6791]["LogId"] = 6791
	tMainLineTaskTwinsCity_prize[6791]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6791]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6791]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6791]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6791]["RewardExp"]["Value"] = 500
	tMainLineTaskTwinsCity_prize[6791]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6791]["RewardExp"]["FullValue"] = 1		
	-- 调查药铺老板
	tMainLineTaskTwinsCity_prize[6790] = {}
	tMainLineTaskTwinsCity_prize[6790]["LogId"] = 6790
	tMainLineTaskTwinsCity_prize[6790]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6790]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6790]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6790]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6790]["RewardExp"]["Value"] = 500
	tMainLineTaskTwinsCity_prize[6790]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6790]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6790]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6790]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6790]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6790]["RewardItem"][1]["Attr"] = "0 1"		
	-- 调查装备馈赠任务大师
	tMainLineTaskTwinsCity_prize[6792] = {}
	tMainLineTaskTwinsCity_prize[6792]["LogId"] = 6792
	tMainLineTaskTwinsCity_prize[6792]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6792]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6792]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6792]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6792]["RewardExp"]["Value"] = 500
	tMainLineTaskTwinsCity_prize[6792]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6792]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6792]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6792]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6792]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6792]["RewardItem"][1]["Attr"] = "0 1"			
	-- 调查铁匠
	tMainLineTaskTwinsCity_prize[6793] = {}
	tMainLineTaskTwinsCity_prize[6793]["LogId"] = 6793
	tMainLineTaskTwinsCity_prize[6793]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6793]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6793]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6793]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6793]["RewardExp"]["Value"] = 500
	tMainLineTaskTwinsCity_prize[6793]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6793]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6793]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6793]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6793]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6793]["RewardItem"][1]["Attr"] = "0 1"	
	-- 调查驿站老板
	tMainLineTaskTwinsCity_prize[6795] = {}
	tMainLineTaskTwinsCity_prize[6795]["LogId"] = 6795
	tMainLineTaskTwinsCity_prize[6795]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6795]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6795]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6795]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6795]["RewardExp"]["Value"] = 1000
	tMainLineTaskTwinsCity_prize[6795]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6795]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6795]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6795]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6795]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6795]["RewardItem"][1]["Attr"] = "0 1"	
	-- 调查防具店老板
	tMainLineTaskTwinsCity_prize[6797] = {}
	tMainLineTaskTwinsCity_prize[6797]["LogId"] = 6797
	tMainLineTaskTwinsCity_prize[6797]["RewardEffect"] = {}
	tMainLineTaskTwinsCity_prize[6797]["RewardEffect"]["SzObj"] = "self"
	tMainLineTaskTwinsCity_prize[6797]["RewardEffect"]["Effect"] = "zf2-e128"
	tMainLineTaskTwinsCity_prize[6797]["RewardExp"] = {}
	tMainLineTaskTwinsCity_prize[6797]["RewardExp"]["Value"] = 500
	tMainLineTaskTwinsCity_prize[6797]["RewardExp"]["FullIndex"] = "RewardCultivation"
	tMainLineTaskTwinsCity_prize[6797]["RewardExp"]["FullValue"] = 1	
	tMainLineTaskTwinsCity_prize[6797]["RewardItem"] = {}
	tMainLineTaskTwinsCity_prize[6797]["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_prize[6797]["RewardItem"][1]["Id"] = 3303677
	tMainLineTaskTwinsCity_prize[6797]["RewardItem"][1]["Attr"] = "0 1"	

-- 状态
local tMainLineTaskTwinsCity_Status = {}
	-- 加速状态
	tMainLineTaskTwinsCity_Status[1] = {}
	tMainLineTaskTwinsCity_Status[1]["Status"] = 18
	tMainLineTaskTwinsCity_Status[1]["Power"] = 200
	tMainLineTaskTwinsCity_Status[1]["Secs"] = 15
	tMainLineTaskTwinsCity_Status[1]["Times"] = 1
	tMainLineTaskTwinsCity_Status[1]["RemainTime"] = 5
	tMainLineTaskTwinsCity_Status[1]["EndTime"] = 1
	-- 眩晕状态
	tMainLineTaskTwinsCity_Status[2] = {}
	tMainLineTaskTwinsCity_Status[2]["Status"] = 55
	tMainLineTaskTwinsCity_Status[2]["Power"] = 50
	tMainLineTaskTwinsCity_Status[2]["Secs"] = 3
	tMainLineTaskTwinsCity_Status[2]["Times"] = 1
	tMainLineTaskTwinsCity_Status[2]["RemainTime"] = 2
	tMainLineTaskTwinsCity_Status[2]["EndTime"] = 1

-- 刺客怪物的坐标
local tMainLineTaskTwinsCity_Assassin = {}
	tMainLineTaskTwinsCity_Assassin["TotalNum"] = 8
	tMainLineTaskTwinsCity_Assassin["NowNum"] = {}
	tMainLineTaskTwinsCity_Assassin[1] = {}
	tMainLineTaskTwinsCity_Assassin[1]["Num"] = 1
	tMainLineTaskTwinsCity_Assassin[1][1] = {}
	tMainLineTaskTwinsCity_Assassin[1][1]["PosX"] = 325
	tMainLineTaskTwinsCity_Assassin[1][1]["PosY"] = 327
	
	tMainLineTaskTwinsCity_Assassin[2] = {}
	tMainLineTaskTwinsCity_Assassin[2]["Num"] = 2
	tMainLineTaskTwinsCity_Assassin[2][1] = {}
	tMainLineTaskTwinsCity_Assassin[2][1]["PosX"] = 332
	tMainLineTaskTwinsCity_Assassin[2][1]["PosY"] = 326
	tMainLineTaskTwinsCity_Assassin[2][2] = {}
	tMainLineTaskTwinsCity_Assassin[2][2]["PosX"] = 332
	tMainLineTaskTwinsCity_Assassin[2][2]["PosY"] = 329

	tMainLineTaskTwinsCity_Assassin[4] = {}
	tMainLineTaskTwinsCity_Assassin[4]["Num"] = 2
	tMainLineTaskTwinsCity_Assassin[4][1] = {}
	tMainLineTaskTwinsCity_Assassin[4][1]["PosX"] = 341
	tMainLineTaskTwinsCity_Assassin[4][1]["PosY"] = 332
	tMainLineTaskTwinsCity_Assassin[4][2] = {}
	tMainLineTaskTwinsCity_Assassin[4][2]["PosX"] = 341
	tMainLineTaskTwinsCity_Assassin[4][2]["PosY"] = 329
	
	tMainLineTaskTwinsCity_Assassin[6] = {}
	tMainLineTaskTwinsCity_Assassin[6]["Num"] = 3
	tMainLineTaskTwinsCity_Assassin[6][1] = {}
	tMainLineTaskTwinsCity_Assassin[6][1]["PosX"] = 349
	tMainLineTaskTwinsCity_Assassin[6][1]["PosY"] = 335
	tMainLineTaskTwinsCity_Assassin[6][2] = {}
	tMainLineTaskTwinsCity_Assassin[6][2]["PosX"] = 349
	tMainLineTaskTwinsCity_Assassin[6][2]["PosY"] = 331
	tMainLineTaskTwinsCity_Assassin[6][3] = {}
	tMainLineTaskTwinsCity_Assassin[6][3]["MonsterId"] = 3988
	tMainLineTaskTwinsCity_Assassin[6][3]["PosX"] = 351
	tMainLineTaskTwinsCity_Assassin[6][3]["PosY"] = 335
	
	
	
	
local tMainLineTaskTwinsCity_Web = {}
	tMainLineTaskTwinsCity_Web["EventType"] = 165
	tMainLineTaskTwinsCity_Web["DataType"] = 26

	-- 镇魔塔守门人
	tMainLineTaskTwinsCity_Web[20582] = {}
	tMainLineTaskTwinsCity_Web[20582]["Web"] = "http://zf.99.com/gamer/2017/08/zmtsmr/"
	tMainLineTaskTwinsCity_Web[20582]["Index"] = 1

	-- 杂货店老板
	tMainLineTaskTwinsCity_Web[20675] = {}
	tMainLineTaskTwinsCity_Web[20675]["Web"] = "http://zf.99.com/gamer/2017/08/zhdlb/"
	tMainLineTaskTwinsCity_Web[20675]["Index"] = 2

	-- 镇国将军
	tMainLineTaskTwinsCity_Web[20590] = {}
	tMainLineTaskTwinsCity_Web[20590]["Web"] = "http://zf.99.com/gamer/2017/08/zgjj/"
	tMainLineTaskTwinsCity_Web[20590]["Index"] = 4

	-- 装备馈赠大使
	tMainLineTaskTwinsCity_Web[20682] = {}
	tMainLineTaskTwinsCity_Web[20682]["Web"] = "http://zf.99.com/gamer/2017/08/zbkzds/"
	tMainLineTaskTwinsCity_Web[20682]["Index"] = 8

	-- 驿站老板
	tMainLineTaskTwinsCity_Web[20683] = {}
	tMainLineTaskTwinsCity_Web[20683]["Web"] = "http://zf.99.com/gamer/2017/08/yzlb/"
	tMainLineTaskTwinsCity_Web[20683]["Index"] = 16

	-- 药铺老板
	tMainLineTaskTwinsCity_Web[20676] = {}
	tMainLineTaskTwinsCity_Web[20676]["Web"] = "http://zf.99.com/gamer/2017/08/yplb/"
	tMainLineTaskTwinsCity_Web[20676]["Index"] = 32

	-- 铁匠
	tMainLineTaskTwinsCity_Web[20678] = {}
	tMainLineTaskTwinsCity_Web[20678]["Web"] = "http://zf.99.com/gamer/2017/08/tj/"
	tMainLineTaskTwinsCity_Web[20678]["Index"] = 64
	
	-- 商行授号大使
	tMainLineTaskTwinsCity_Web[20588] = {}
	tMainLineTaskTwinsCity_Web[20588]["Web"] = "http://zf.99.com/gamer/2017/08/sxshds/"
	tMainLineTaskTwinsCity_Web[20588]["Index"] = 128

	-- 双龙城总兵
	tMainLineTaskTwinsCity_Web[20591] = {}
	tMainLineTaskTwinsCity_Web[20591]["Web"] = "http://zf.99.com/gamer/2017/08/slczb/"
	tMainLineTaskTwinsCity_Web[20591]["Index"] = 256

	-- 日常任务大使
	tMainLineTaskTwinsCity_Web[20587] = {}
	tMainLineTaskTwinsCity_Web[20587]["Web"] = "http://zf.99.com/gamer/2017/08/rcrwds/"
	tMainLineTaskTwinsCity_Web[20587]["Index"] = 512

	-- 九门提督
	tMainLineTaskTwinsCity_Web[20589] = {}
	tMainLineTaskTwinsCity_Web[20589]["Web"] = "http://zf.99.com/gamer/2017/08/jmtd/"
	tMainLineTaskTwinsCity_Web[20589]["Index"] = 1024

-- 漫画
local tMainLineTaskTwinsCity_Cartoon = {}
	tMainLineTaskTwinsCity_Cartoon[1] = "http://zf.99.com/gamer/2017/08/tb/index.shtml"
	tMainLineTaskTwinsCity_Cartoon[2] = "http://zf.99.com/gamer/2017/08/zt/index.shtml"

-- 跳过任务
local tMainLineTaskTwinsCity_Skip = {}
	tMainLineTaskTwinsCity_Skip["CostEMoney"] = 27
	tMainLineTaskTwinsCity_Skip["LogId"] = 18000156
	tMainLineTaskTwinsCity_Skip["Talk"] = tMainLineTaskTwinsCity_Text[20581]["Rward"]
	tMainLineTaskTwinsCity_Skip["RewardItem"] = {}
	tMainLineTaskTwinsCity_Skip["RewardItem"][1] = {}
	tMainLineTaskTwinsCity_Skip["RewardItem"][1]["Id"] = 3303674
	tMainLineTaskTwinsCity_Skip["RewardItem"][1]["Attr"] = "0 1"

-- 剧情相关的任务ID
local tMainLineTaskTwinsCity_SkipTask = {6770,6771,6772,6773,6774,6775,6776,6777,6790,6791,6792,6793,6795,6797,6784,6783,6785,6786}

-- 前置任务配置
local tMainLineTaskTwinsCity_FrontTask = {}
	tMainLineTaskTwinsCity_FrontTask[6790] = 6776
	tMainLineTaskTwinsCity_FrontTask[6791] = 6790
	tMainLineTaskTwinsCity_FrontTask[6792] = 6791
	tMainLineTaskTwinsCity_FrontTask[6793] = 6792
	tMainLineTaskTwinsCity_FrontTask[6795] = 6793
	tMainLineTaskTwinsCity_FrontTask[6797] = 6795
	tMainLineTaskTwinsCity_FrontTask[6777] = 6797

-- NPC对应的任务
local tMainLineTaskTwinsCity_NextTask = {}
	tMainLineTaskTwinsCity_NextTask[20590] = 6790
	tMainLineTaskTwinsCity_NextTask[20676] = 6791
	tMainLineTaskTwinsCity_NextTask[20675] = 6792
	tMainLineTaskTwinsCity_NextTask[20682] = 6793
	tMainLineTaskTwinsCity_NextTask[20678] = 6795
	tMainLineTaskTwinsCity_NextTask[20683] = 6797
	tMainLineTaskTwinsCity_NextTask[20677] = 6777

-- 风水签的坐标点
local tMainLineTaskTwinsCity_FengShui = {}
	tMainLineTaskTwinsCity_FengShui["GenId"] = 22623
	tMainLineTaskTwinsCity_FengShui["Num"] = 10
	tMainLineTaskTwinsCity_FengShui["UserNum"] = {}
	tMainLineTaskTwinsCity_FengShui[1] = {154,209}
	tMainLineTaskTwinsCity_FengShui[2] = {152,220}
	tMainLineTaskTwinsCity_FengShui[3] = {169,206}
	tMainLineTaskTwinsCity_FengShui[4] = {151,221}
	tMainLineTaskTwinsCity_FengShui[5] = {156,231}
	tMainLineTaskTwinsCity_FengShui[6] = {177,233}
	tMainLineTaskTwinsCity_FengShui[7] = {182,217}
	tMainLineTaskTwinsCity_FengShui[8] = {172,206}
	tMainLineTaskTwinsCity_FengShui[9] = {171,202}
	tMainLineTaskTwinsCity_FengShui[10] = {154,206}

-- stc
local tMainLineTaskTwinsCity_Stc = {}
	tMainLineTaskTwinsCity_Stc["EventType"] = 165
	tMainLineTaskTwinsCity_Stc["DataType"] = 60
	tMainLineTaskTwinsCity_Stc["MaxData"] = 1

------------------------------Function部分--------------------------------------------
-- 任务：上官逸尘 第一部分
function MainLineTaskTwinsCity_Npc_20581()
	local nNpcId = 20581
	--闲聊
	-- 判断是否已跳过任务
	local nEvent = tMainLineTaskTwinsCity_Stc["EventType"]
	local nType = tMainLineTaskTwinsCity_Stc["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if Get_NpcMapID() == 1002 then
		if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[1]) == 1) then
			if Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[1]) == 0 then
				LinkNpcGossipFunc_New(nNpcId,"1-4")
				return
			end
		end
		if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 1) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
	end
	
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[1]) == 1) then
		if Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[1]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return			
		end	
	end
	--任务6、惊天阴谋
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[6]) == 1)) and Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[6]) then
		if Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[6]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"6-4")
			return		
		end
	end
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[#tMainLineTaskTwinsCity_TaskId]) == 1) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20582()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	--无任务，闲聊
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6]) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	--任务1、 6770	上官逸尘
	-- User_TalkChannel2005("ooo"..tostring(Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[1])==1))
	--已接受任务，未完成对白
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[6]) == 1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end	

	--任务2、 6771	镇魔塔外
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2]) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[2]) == 1) then
		if not MainLineTaskTwinsCity_ZhenYanChk() then
			--已接受任务，未完成对白
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return		
		else
			-- 任务完成对白
			LinkNpcGossipFunc_New(nNpcId,"1-3")
			return
		end	
	end	
	
	--任务3、镇魔塔中调查
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7]) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end	
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[7]) == 1) then
		if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6771]["TaskItem"]) then
		-- 完成任务对白
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return		
		else
		-- 已接受任务，未完成对白
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return		
		end
	end
	
	-- 任务4、神秘纸条
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[4]) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end	
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[4]) == 1)) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	-- 任务5、纸条信息
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[5]) == 1)) and (not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end	
	
	LinkNpcGossipFunc_New(nNpcId,"5-4")
	
	
end

-- 点击锁眼先触发读条
function MainLineTaskTwinsCity_CheckLock()
	local nNpcId = Get_NpcId() 
	local sFunc = "MainLineTaskTwinsCity_Npc_20583</N>"..nNpcId
	MainLineTaskTwinsCity_Npc_20583(nNpcId)
	-- User_SetExplore(1,tMainLineTaskTwinsCity_Text["Msg"][6771]["Check"],220,sFunc)
end

function MainLineTaskTwinsCity_Npc_20583(nNpcId,nNowUserId)
	-- local nNpcId = Get_NpcId()
	local nUserId = nNowUserId or Get_UserId()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return			
	end
	
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[2],nUserId) == 1) then
		local nOrder = Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[2],nUserId)
		local sPos = tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][nNpcId]

		if not (Get_TaskDetail(tMainLineTaskTwinsCity_TaskId[2],sPos,nUserId) >= 1) then		
			nOrder = nOrder+1
			local nMapId = Get_NpcMapID(nNpcId)
			local nPosX = Get_NpcPositionX(nNpcId)
			local nPosY = Get_NpcPositionY(nNpcId)
			-- local sEffectName = "guard_defshare-1"
			local sEffectName = "BodyDisapear"
			Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		elseif MainLineTaskTwinsCity_ZhenYanChk(nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
			return			
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return			
		end

		if not MainLineTaskTwinsCity_ZhenYanChk(nUserId) then
			if nOrder >= 3 then
				nOrder = 3
				tNpcGossip[20583]["Option121"] = tMainLineTaskTwinsCity_Text[20583]["Option122"]
			else
				tNpcGossip[20583]["Option121"] = tMainLineTaskTwinsCity_Text[20583]["Option121"]
			end
			tNpcGossip[nNpcId]["Text121"] = string.format(tMainLineTaskTwinsCity_Text[20583]["Text121"],tMainLineTaskTwinsCity_Text["Msg"][6771]["Text1"][nOrder])
			tNpcGossip[nNpcId]["Text122"] = string.format(tMainLineTaskTwinsCity_Text[20583]["Text122"],tMainLineTaskTwinsCity_Text["Msg"][6771]["Text2"][nOrder])
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-3")
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20586()
	local nNpcId = Get_NpcId()
	if (Get_UserTransformId() == -1) then
		--已接受任务对白，未变身状态
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	else
		if Get_TaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[7]) == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
	end

end

function MainLineTaskTwinsCity_Npc_20587()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[4]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end		
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[4]) == 1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

function MainLineTaskTwinsCity_Npc_20588()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[5]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end		
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[5]) == 1) then
		if not (Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[5]) == 1) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
	end
	

	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1) then
		
		if not MainLineTaskTwinsCity_Task6774_Flag() then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-6")
			return
		end
	end
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[6]) == 1) then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end
function MainLineTaskTwinsCity_Npc_20589()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	--任务6、惊天阴谋
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[5]) == 1)) and Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5])  then
		if Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[5]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		elseif Get_TaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[5]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20590()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	--任务7、镇国将军
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[7]) == 1)) and Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[7])  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nTaskId = tMainLineTaskTwinsCity_NextTask[nNpcId]
	if Task_ChkTaskDetail(nTaskId) and (Get_TaskDetailCompleteFlag(nTaskId) == 0)  then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end	

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end
function MainLineTaskTwinsCity_Npc_20591()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	--任务8、揪出奸细
	if (not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 1)) and Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[8])  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20679()
	local nNpcId = Get_NpcId()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[2])== 0) then
		if Get_TaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[2]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return		
		else
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return		
		end
	end	
	LinkNpcGossipFunc_New(nNpcId,"1-9")
end

function MainLineTaskTwinsCity_Npc_20680()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		if (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[2])== 0) then
			if Get_TaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[2]) == 0 then
				LinkNpcGossipFunc_New(nNpcId,"1-1")
				return
			elseif Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[2]) == 0 then
				LinkNpcGossipFunc_New(nNpcId,"1-8")
				return
			elseif Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[2]) == 1 then
				LinkNpcGossipFunc_New(nNpcId,"1-9")
				return				
			end
		end
	end

	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
function MainLineTaskTwinsCity_Npc_20675()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[2]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


function MainLineTaskTwinsCity_Npc_20676()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)

	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[1]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		local nData = Get_TaskDetailData1(nTaskId)
		
		if nData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
		elseif nData == 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-6")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		end
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20684()
	local nNpcId = Get_NpcId()
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[1]
	
	if not Task_ChkTaskDetail(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if Get_TaskDetailData1(nTaskId) == 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return		
		
	elseif Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-8")
end

function MainLineTaskTwinsCity_Npc_20678()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[4]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		local nData = Get_TaskDetailData1(nTaskId)
		
		if nData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
		elseif nData == 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		elseif nData == 2 then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
		elseif nData == 3 then
			LinkNpcGossipFunc_New(nNpcId,"1-6")
		elseif nData == 4 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		elseif nData == 5 then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		elseif nData == 6 then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		end
		
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20685()
	local nNpcId = Get_NpcId()
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[4]
	
	if Task_ChkTaskDetail(nTaskId) then
		local nData = Get_TaskDetailData1(nTaskId)
		
		if nData == 1 then
			if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"]) then 
				local nSecs = tMainLineTaskTwinsCity_Cont[6793]["Secs"]
				local nActionId = tMainLineTaskTwinsCity_Cont[6793]["ActionId"]
				local sContent = tMainLineTaskTwinsCity_Text[20678]["MsgBox4"]
				local sFunc = "MainLineTaskTwinsCity_Task6793_5</N>"..nNpcId
				User_SetExplore(nSecs,sContent,nActionId,sFunc)
				return
			else
				LinkNpcGossipFunc_New(nNpcId,"1-2")
				return
			end
		elseif nData == 4 then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
			return
		end
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20687()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[8])  and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[8]) == 0) then
		MainLineTaskTwinsCity_Task6797_6()
		if Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[8]) == 1 then	
			nItemId = 3303276
			nNeedNum = 10
			if Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
				LinkNpcGossipFunc_New(nNpcId,"3-2")
				return
			else	
				LinkNpcGossipFunc_New(nNpcId,"1-2")
				return
			end
		else
			LinkNpcGossipFunc_New(nNpcId,"2-9")
			return		
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end




function MainLineTaskTwinsCity_Npc_20681()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[8]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 0)  then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5]) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
	
		if Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[5]) == 0 then
			if Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[5]) == 0 then
				MainLineTaskTwinsCity_Task6794_1(nNpcId,1)
				-- LinkNpcGossipFunc_New(nNpcId,"1-3")
				return
			else
				LinkNpcGossipFunc_New(nNpcId,"1-5")
				return			
			end
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end	

function MainLineTaskTwinsCity_Npc_20683()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[6]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		local nData = Get_TaskDetailData2(nTaskId)

		if nData >= 1 then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
		
		local nItemId = MainLineTaskTwinsCity_Task6795_3()
		
		if nItemId == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
		
		-- tNpcGossip[20683]["Text163"] = string.format(tMainLineTaskTwinsCity_Text[20683]["Text163"],tMainLineTaskTwinsCity_Text[20683]["MsgBox5"][nItemId],Get_ItemtypeName(nItemId),tMainLineTaskTwinsCity_Text[20683]["MsgBox5"][nItemId])
		-- LinkNpcGossipFunc_New(nNpcId,"1-6")
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end	

function MainLineTaskTwinsCity_Npc_20689()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[8]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 0)  then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7]) then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
		if Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[7]) == 0 then
			LinkNpcGossipFunc_New(nNpcId,"5-5")
			return
		
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"5-8")
	
	
end

function MainLineTaskTwinsCity_Npc_20677()
	local nNpcId = Get_NpcId()
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[8]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		local nData2 = Get_TaskDetailData2(nTaskId)
		
		if nData2 == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		
		local nData = Get_TaskDetailData1(nTaskId)
		
		if nData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20686()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[7]) == 0)  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20688()
	local nNpcId = Get_NpcId()
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[3]) then
		local nFlag = Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[3]) 
		if nFlag ~= nil and nFlag > 0 then
			local sText = tMainLineTaskTwinsCity_Cont[6792]["Talk"][nFlag]
			LinkNpcGossipFunc_New(nNpcId,sText)
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function MainLineTaskTwinsCity_Npc_20682()
	local nNpcId = Get_NpcId()
	MainLineTaskTwinsCity_First(nNpcId)
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[3]
	
	-- 判断前置任务是否完成
	if not MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断任务是否完成
	if Get_TaskDetailCompleteFlag(nTaskId) == 0 then
		local nData2 = Get_TaskDetailData2(nTaskId)
		
		if nData2 == 1 then
			User_EffectAdd("self","tread_ref")
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		elseif nData2 == 2 then
			User_EffectAdd("self","firework-2love")
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		local nData = Get_TaskDetailData1(nTaskId)
		
		if nData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		elseif nData == 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-6")
			return
		end
		
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"1-1")
end


function MainLineTask_EnterChk(nNpcId)
	if Get_UserTeamNumbers() > 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	local nPosX = Get_UserPositionX()
	local nPosY = Get_UserPositionY()
	Task_SetTaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[5],1)
	Task_SetTaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[5],0)
	if User_EnterInstance(tMainLineTaskTwinsCity_Cont[6775]["InstanceId"]) then
		local nMapId = Get_UserMapId()
		User_ChgMap(nMapId,nPosX,nPosY)
	end
	MainLineTaskTwinsCity_Task6775_CreateMonster()
	User_TalkChannel2005(tMainLineTaskTwinsCity_Text["Msg"][6775]["CreateMonster"])
	Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6775]["CreateMonster"])
end





function MainLineTaskTwinsCity_Npc_20593()
	local nNpcId = Get_NpcId()
	
	if nNpcId >= 992990 and nNpcId <= 992993 then
		
	end
	
	if Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[5]) and (Get_TaskDetail(tMainLineTaskTwinsCity_TaskId[5],tMainLineTaskTwinsCity_Cont[6774]["ChatNpc"][nNpcId]) == 0) then
		tNpcGossip[nNpcId]["Text121"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text121"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][1])
		tNpcGossip[nNpcId]["Text122"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text122"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][2])
		tNpcGossip[nNpcId]["Text123"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text123"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][3])
		tNpcGossip[nNpcId]["Text124"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text124"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][4])
		tNpcGossip[nNpcId]["OptionFunc121"] = string.format("MainLineTaskTwinsCity_Npc_nNpcId_1</N>%s",nNpcId)	
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- if nNpcId == 20595 then
		-- User_TalkChannel2005("sdsd")
		-- if Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[8]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 0)  then
			-- MainLineTaskTwinsCity_Npc_20595()
			-- return
		-- end
	-- end
	
	--威武大将军--隐藏支线
	if nNpcId == 20597 then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		if (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[1])== 0) then
			if Get_TaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[1]) == 0 then
				LinkNpcGossipFunc_New(nNpcId,"3-2")
				return		
			else
				LinkNpcGossipFunc_New(nNpcId,"3-3")
				return		
			end
		end
	end
	--月老--隐藏支线
	if nNpcId == 20593 then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[3]) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
		if (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[3])== 0) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return		
		end
	end
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text111"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][1])
	tNpcGossip[nNpcId]["Text112"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text112"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][2])
	tNpcGossip[nNpcId]["Text113"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text113"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][3])
	tNpcGossip[nNpcId]["Text114"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Text114"],tMainLineTaskTwinsCity_Text["Chat"][nNpcId][4])
	LinkNpcGossipFunc_New(nNpcId,"1-1")
	
	
	
end



function MainLineTaskTwinsCity_Npc_nNpcId_1(nNpcId)
	tNpcGossip[nNpcId]["Text211"] =  string.format(tMainLineTaskTwinsCity_Text[20593]["Text211"],tMainLineTaskTwinsCity_Text["TaskTalk"][nNpcId][1])
	tNpcGossip[nNpcId]["Text212"] =  string.format(tMainLineTaskTwinsCity_Text[20593]["Text212"],tMainLineTaskTwinsCity_Text["TaskTalk"][nNpcId][2])
	tNpcGossip[nNpcId]["Text213"] =  string.format(tMainLineTaskTwinsCity_Text[20593]["Text213"],tMainLineTaskTwinsCity_Text["TaskTalk"][nNpcId][3])
	tNpcGossip[nNpcId]["Text214"] =  string.format(tMainLineTaskTwinsCity_Text[20593]["Text214"],tMainLineTaskTwinsCity_Text["TaskTalk"][nNpcId][4])
	tNpcGossip[nNpcId]["Option211"] = string.format(tMainLineTaskTwinsCity_Text[20593]["Option211"],tMainLineTaskTwinsCity_Text["TaskTalk"][nNpcId][5])
	tNpcGossip[nNpcId]["OptionFunc211"] = string.format("MainLineTaskTwinsCity_Task6774_SetFlag</N>%s",nNpcId)	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 前往下一处阵眼
function MainLineTaskTwinsCity_TaskZhenYanFunc(nNpcId,nOrder)
	local nNpcId = Get_NpcId()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[2],0)
	end	
	local nData = Get_TaskDetailData1(tMainLineTaskTwinsCity_TaskId[2])
	local sPos = tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][nNpcId]
	if not (Get_TaskDetail(tMainLineTaskTwinsCity_TaskId[2],sPos) >= 1) then		
		nData = nData+1
	end	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[2],nData)
	
	if nNpcId == 20583 then
		Task_SetTaskDetailData2(tMainLineTaskTwinsCity_TaskId[2],1)
		if not MainLineTaskTwinsCity_ZhenYanChk() then
			NpcPosition_PathFind(20584)
		end
		
	elseif nNpcId == 20584 then
		Task_SetTaskDetailData3(tMainLineTaskTwinsCity_TaskId[2],1)
		if not MainLineTaskTwinsCity_ZhenYanChk() then
			NpcPosition_PathFind(20585)
		end		
	elseif nNpcId == 20585 then
		Task_SetTaskDetailData4(tMainLineTaskTwinsCity_TaskId[2],1)
		if not MainLineTaskTwinsCity_ZhenYanChk() then
			NpcPosition_PathFind(20583)
		end	
	end
	
	if nData >= 3 then
		if Get_TaskDetailData5(tMainLineTaskTwinsCity_TaskId[2]) == 0 then
			Task_SetTaskDetailData5(tMainLineTaskTwinsCity_TaskId[2],1)
			MainLineTaskTwinsCity_CreateMonster(nNpcId)
			Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6771]["Monster"])
		end
	end
	
	--随机刷怪
	-- if Sys_Random(100,300) and (Get_TaskDetailData5(tMainLineTaskTwinsCity_TaskId[2]) == 0) then
		-- Task_SetTaskDetailData5(tMainLineTaskTwinsCity_TaskId[2],1)
		-- local nMapId = Get_UserMapId()
		-- local nPosX = Get_UserPositionX()
		-- local nPosY = Get_UserPositionY()
		-- local nGenId = tMainLineTaskTwinsCity_Cont[6771]["GenId"][nNpcId]
		-- Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,1)
		-- Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6771]["Monster"])
	-- end
	-- if MainLineTaskTwinsCity_ZhenYanChk() then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6771]["Monster"])
	-- end
end

-- 创建叫天鸡
function MainLineTaskTwinsCity_CreateMonster(nNpcId)
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX()
	local nPosY = Get_UserPositionY()
	local nGenId = tMainLineTaskTwinsCity_Cont[6771]["GenId"][nNpcId]
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,3987)
	-- 黑屏效果
	User_Screffect(4)
	-- Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6771]["Monster"])
end

function MainLineTaskTwinsCity_Task6771_Monster()
	-- 判断地图ID
	local nMapId = Get_UserMapId()
	
	if nMapId ~= 10160 then
		return
	end
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[2]) == 1) then
		return
	end	
	Task_SetTaskDetailData4(tMainLineTaskTwinsCity_TaskId[2],1)
	Task_SetTaskDetailData5(tMainLineTaskTwinsCity_TaskId[2],1)

	local sEffect = tMainLineTaskTwinsCity_Cont[6771]["Effect"]
	local sContent = tMainLineTaskTwinsCity_Text["Msg"][6771]["MonsterDie"]
	User_EffectAdd("self",sEffect)
	Sys_MsgBox(sContent,"NpcPosition_PathFind</N>20582")
end

function MainLineTaskTwinsCity_Task6775_Monster()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5]) and (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[5]) == 1) then
		return
	end
	local nNum = Get_TaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[5])+1
	Task_SetTaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[5],nNum)
	if nNum >= tMainLineTaskTwinsCity_Cont[6775]["KillNum"] then
		Task_SetTaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[5],1)
		-- local nMapId = Get_NpcMapID(20589)
		-- local nBoundX = Get_NpcPositionX(20589)
		-- local nBoundY = Get_NpcPositionY(20589)
		-- User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
		-- Sys_MsgBox(tMainLineTaskTwinsCity_Text[20589]["MsgBox1"],"NpcPosition_PathFind</N>20589")
		
		-- 扣除血量
		User_DecLifePercent(99,1)
		-- 眩晕
		MainLineTaskTwinsCity_AddStatus(2)
		-- 黑屏
		User_Screffect(4)
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20589]["MsgBox1"],"MainLineTaskTwinsCity_Leave","MainLineTaskTwinsCity_Leave")
	else
		MainLineTaskTwinsCity_CreateAssassin()
	end
end

-- 李太医对白
function MainLineTaskTwinsCity_Litaiyi()
	local nNpcId = Get_NpcId()
	local nTaskId = tMainLineTaskTwinsCity_BranchTaskId[5]
	
	-- 判断是否有该任务
	if not Task_ChkTaskDetail(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断该任务是否已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if Task_ChkTaskDetailValue(nTaskId,"3",">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 传送出副本
function MainLineTaskTwinsCity_Leave()
	local nMapId = Get_NpcMapID(20941)
	local nBoundX = Get_NpcPositionX(20941)
	local nBoundY = Get_NpcPositionY(20941)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
	
	-- 获取玩家最大血量
	local nUserLife = Get_UserMaxLife()
	User_AddLife(nUserLife)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20589]["MsgBox2"],"NpcPosition_PathFind</N>20941")
end

--阵眼是否都检查过了
function MainLineTaskTwinsCity_ZhenYanChk(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	for i,v in pairs(tMainLineTaskTwinsCity_Cont[6771]["ZhenYan"]) do
		local sPos = tMainLineTaskTwinsCity_Cont[6771]["ZhenYanPos"][v]
		if not (Get_TaskDetail(tMainLineTaskTwinsCity_TaskId[2],sPos,nUserId) >= 1) then
			return false
		end
	end
	return true
end

--霸王叫天鸡-答题
function MainLineTaskTwinsCity_Question(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")

	-- local nFlag = true
	
	-- if nFlag then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- else
		-- LinkNpcGossipFunc_New(nNpcId,"2-3")
		-- return	
	-- end
end

function MainLineTaskTwinsCity_Task6770_1(nNpcId)
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[1]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(tMainLineTaskTwinsCity_Text["Msg"][6770]["NoSpace"])
		return
	end
	
	local nSecs = tMainLineTaskTwinsCity_Cont[6770]["Secs"]
	local nActionId = tMainLineTaskTwinsCity_Cont[6770]["ActionId"]
	local sContent = tMainLineTaskTwinsCity_Text["Msg"][6770]["Content"] 
	local sFunc = "MainLineTaskTwinsCity_EnterMap"
	User_SendWebDialog(tMainLineTaskTwinsCity_Cartoon[1])
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

function MainLineTaskTwinsCity_Task6770_2(nNpcId)
	--完成任务1，自动接受任务2，寻路到阵眼
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6],0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[6]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[6],1)	
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[6],1)	
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[6]])
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[2],0)
	end	
	local nSel = math.random(#tMainLineTaskTwinsCity_Cont[6771]["ZhenYan"])
	NpcPosition_PathFind(tMainLineTaskTwinsCity_Cont[6771]["ZhenYan"][1])
end

function MainLineTaskTwinsCity_Task6771(nNpcId)
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[2]])
	local nSpace1 = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"])
	-- 判断背包空间
	if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6771]["TaskItem"]) then
		local nTotalSpace = nSpace + nSpace1
		if not User_CheckLeftSpace(nTotalSpace) then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return	
		end
	elseif (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[2],0)
	end	

	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[2]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[2],1)		
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7],0)
	end	
	if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6771]["TaskItem"]) then
		RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6771]["TaskItemGive"])
		local nLastItemId = Get_ItemLastAdd()
		Item_Dialog(nLastItemId,tMainLineTaskTwinsCity_Text["Msg"]["Trans"],"MainLineTaskTwinsCity_UseItem")
	else
		User_TalkChannel2005(tMainLineTaskTwinsCity_Text["Msg"][6771]["EnterMap"])
	end
	
	local nMapId = Get_NpcMapID(20586)
	local nBoundX = Get_NpcPositionX(20586)
	local nBoundY = Get_NpcPositionY(20586)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
	-- User_TransForm(13170,0,1,18000)
	NpcPosition_PathFind(20586)
end

function MainLineTaskTwinsCity_UseItem()
	User_TransForm(13170,0,1,18000)
end

function MainLineTaskTwinsCity_Task6772(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7],0)
	end		
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[7],1)			
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[7],1)
	User_SendWebDialog(tMainLineTaskTwinsCity_Cartoon[2])
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[4]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[4],0)
	end	
	NpcPosition_PathFind(20587)
end
function MainLineTaskTwinsCity_Task6773(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[4]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[4],0)
	end

	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[4]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[4],1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[4]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[4],1)			
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[5]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[5],0)
		Map_FireWorks2(tMainLineTaskTwinsCity_Text["Msg"]["Two"])
	end	
	NpcPosition_PathFind(20588)
end
function MainLineTaskTwinsCity_Task6774(nNpcId)
	local tTaskItem = {}
	tTaskItem["LogId"] = 18000156
	tTaskItem["RewardItem"] = {}
	tTaskItem["RewardItem"][1] = {}
	tTaskItem["RewardItem"][1]["Id"] = tMainLineTaskTwinsCity_Cont[6774]["TaskItem"]
	tTaskItem["RewardItem"][1]["Attr"] = "0 1"
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[4]])
	local nSpace1 = RewardTemplate_GetRewardSpace(tTaskItem)
	local nTotalSpace = nSpace + nSpace1
	
	if not User_CheckLeftSpace(nTotalSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return	
	end	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4],0)
	end		
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[4]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[4],1)			
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[6]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[6],0)
	end	
	
	RewardTemplate_UseItemAndMsg(tTaskItem)	
	-- 获得加速状态
	MainLineTaskTwinsCity_AddStatus(1)
	NpcPosition_PathFind(20592)
end
function MainLineTaskTwinsCity_Task6774_1(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"]) and Item_DelItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"])  then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[5]) then
			Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[5],0)
		end	
		RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[5]])
		Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[5],1)	
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4]) then
			Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4],0)
		end
		local nPosX = Get_TrapPosX(992990)
		local nPosY = Get_TrapPosY(992990)
		Sys_GotoSomeWhere(nPosX,nPosY,10160)
	end
end

function MainLineTaskTwinsCity_Task6774_2()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[5]) then
		LinkNpcMain()
	end
	local nNpcId = Get_NpcId()
	--季如风
	if (nNpcId == 6666) and (Get_TaskDetailData2(tMainLineTaskTwinsCity_TaskId[5])==0) then
		ask_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[5],1)	
	end

end
function MainLineTaskTwinsCity_Task6774_Flag()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4]) then
		return false
	end
	if not (Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1) then
		return false
	end
	if not (Get_TaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1) then
		return false
	end
	if not (Get_TaskDetailData4(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1) then
		return false
	end
	if not (Get_TaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1) then
		return false
	end
	-- if not (Get_TaskDetailData6(tMainLineTaskTwinsCity_TaskId[5]) == 1) then
		-- return false
	-- end
	return true
end

function MainLineTaskTwinsCity_Task6774_SetFlag(nNpcId)
	if nNpcId == 20593 then
		Task_SetTaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	elseif nNpcId == 20594 then
		Task_SetTaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	elseif nNpcId == 20595 then
		Task_SetTaskDetailData4(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	elseif nNpcId == 20596 then
		Task_SetTaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	elseif nNpcId == 20597 then
		Task_SetTaskDetailData6(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	end
end


function MainLineTaskTwinsCity_Task6772_TaskItem(nNpcId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
	else
		tTaskItem = {}
		tTaskItem["LogId"] = 18000156
		tTaskItem["RewardItem"] = {}
		tTaskItem["RewardItem"][1] = {}
		tTaskItem["RewardItem"][1]["Id"] = tMainLineTaskTwinsCity_Cont[6772]["TaskItem"] 
		tTaskItem["RewardItem"][1]["Attr"] = "0 1"
		RewardTemplate_UseItemAndMsg(tTaskItem)	
	end
end

function MainLineTaskTwinsCity_Task6774_TaskItem(nNpcId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
	else
		tTaskItem = {}
		tTaskItem["LogId"] = 18000156
		tTaskItem["RewardItem"] = {}
		tTaskItem["RewardItem"][1] = {}
		tTaskItem["RewardItem"][1]["Id"] = tMainLineTaskTwinsCity_Cont[6774]["TaskItem"] 
		tTaskItem["RewardItem"][1]["Attr"] = "0 1"
		RewardTemplate_UseItemAndMsg(tTaskItem)	
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	end
end

function MainLineTaskTwinsCity_Task6775(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5],0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[5]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end

	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_BranchTaskId[5]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[5],1)			
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[7],0)
		Map_FireWorks2(tMainLineTaskTwinsCity_Text["Msg"]["Three"])
		MainLineTaskTwinsCity_AddStatus(1)
	end	
	NpcPosition_PathFind(20590)
end

-- 添加状态
function MainLineTaskTwinsCity_AddStatus(nType)
	local nStatus = tMainLineTaskTwinsCity_Status[nType]["Status"]
	local nPower = tMainLineTaskTwinsCity_Status[nType]["Power"]
	local nSecs = tMainLineTaskTwinsCity_Status[nType]["Secs"]
	local nTimes = tMainLineTaskTwinsCity_Status[nType]["Times"]
	local nunRemainTime = tMainLineTaskTwinsCity_Status[nType]["RemainTime"]
	local nunEndTime = tMainLineTaskTwinsCity_Status[nType]["EndTime"]
	local nUserId = Get_UserId()
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,0,0,0,nUserId)
end

function MainLineTaskTwinsCity_Task6776(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_TaskId[7]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[nTaskId])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end

	-- 设任务掩码值
	Task_SetTaskDetailData1(nTaskId,1,nUserId)
	-- 任务置完成
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[nTaskId])
	
	-- 接后续任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	
	if not Task_ChkTaskDetail(nNextTask,nUserId) then
		Task_AddTaskDetail(nNextTask,0,nUserId)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

function MainLineTaskTwinsCity_Task6777(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[8]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[8],0)
	end

	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[8]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	-- 删掉传送令牌
	if Item_ChkItem(3305051) then
		Item_DelItem(3305051)
	end
	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[8],1)		
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[8]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8],1)	
	local nMapId = 1002
	local nBoundX = Get_UserPositionX()
	local nBoundY = Get_UserPositionY()
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)		
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20591]["MsgBox2"],"NpcPosition_PathFind</N>2001")
	
end

function MainLineTaskTwinsCity_Task6777_1(nNpcId,nMark)
	if (nMark == 2) and MainLineTaskTwinsCity_DeteTaskFinish() then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

function MainLineTaskTwinsCity_DeteTaskFinish()
	for i,v in pairs (tMainLineTaskTwinsCity_DetectTaskId) do
		if not Task_ChkTaskDetail(v) then
			return false
		end
		if Get_TaskDetailCompleteFlag(v) == 0 then
			return false
		end
	end
	return true
end

function MainLineTaskTwinsCity_DeteTaskFinishNpc()
	for i,v in pairs (tMainLineTaskTwinsCity_DetectTaskId) do
		if not Task_ChkTaskDetail(v) then
			return tMainLineTaskTwinsCity_DetectTaskNpc[v]
		end
		if Get_TaskDetailCompleteFlag(v) == 0 then
			return tMainLineTaskTwinsCity_DetectTaskNpc[v]
		end
	end
	return true
end



function MainLineTaskTwinsCity_Task6780_1(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1],0)
		User_TalkChannel2005(tMainLineTaskTwinsCity_Text[20597]["MsgBox1"])
	end	
end

function MainLineTaskTwinsCity_Task6781_1(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2],0)
	end	
end
function MainLineTaskTwinsCity_Task6781_2(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2],0)
	end	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[2],1)		
end
function MainLineTaskTwinsCity_Task6781_3(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2],0)
	end	
	Task_SetTaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[2],1)		
	User_TalkChannel2005(tMainLineTaskTwinsCity_Text[20679]["MsgBox1"])
end


function MainLineTaskTwinsCity_Task6780_Monster()
	if  Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1]) then
		Task_SetTaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[1],1)
		User_TalkChannel2005(tMainLineTaskTwinsCity_Text[20597]["MsgBox2"])
	end
end
function MainLineTaskTwinsCity_Task6780(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[1],0)
	end		
	
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[1],1)		
	LinkNpcGossipFunc_New(nNpcId,"3-5")
	User_TalkChannel2005(tMainLineTaskTwinsCity_Text[20597]["MsgBox3"])
end
function MainLineTaskTwinsCity_Task6781(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[2],0)
	end		
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[2],1)		
end

function MainLineTaskTwinsCity_Task6775_1(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[6]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[6],0)
	end	

	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[6]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[6],1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[6]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[6],1)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[5],0)
	end		
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6774]["TaskItem"]) then
		Item_DelItem(tMainLineTaskTwinsCity_Cont[6774]["TaskItem"])
	end
	
	local nStunStatus = tMainLineTaskTwinsCity_Cont[6796]["Status"]
	local nStunPower = tMainLineTaskTwinsCity_Cont[6796]["Power"]
	local nStunSecs = tMainLineTaskTwinsCity_Cont[6796]["Secs"]
	local nStunTimes = tMainLineTaskTwinsCity_Cont[6796]["Times"]
	local nStunRemainTime = tMainLineTaskTwinsCity_Cont[6796]["RemainTime"]
	local nStunEndTime = tMainLineTaskTwinsCity_Cont[6796]["EndTime"]
	local nStunRecordable = tMainLineTaskTwinsCity_Cont[6796]["Recordable"]
	User_AddRoleStatus(nStunStatus,nStunPower,nStunSecs,nStunTimes,nStunRemainTime,nStunEndTime,nStunRecordable,0,0,Get_UserId())		
	NpcPosition_PathFind(20589)
end

function MainLineTaskTwinsCity_Task6782(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[3]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[3],0)
	end		
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[3],1)		
	User_TalkChannel2005(tMainLineTaskTwinsCity_Text[20593]["MsgBox1"])
end

function MainLineTaskTwinsCity_Task6790(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[1]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[1]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[1]])
	
	for i,v in ipairs(tMainLineTaskTwinsCity_Cont[6790]["TaskItem"]) do
		if Item_ChkItem(v) then
			Item_DelItem(v)
		end
	end
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20676]["MsgBox1"],"NpcPosition_PathFind</N>20675")
end

function MainLineTaskTwinsCity_DeteTaskFinishText()
	if MainLineTaskTwinsCity_DeteTaskFinish() then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20591]["MsgBox1"],"NpcPosition_PathFind</N>20591")
	else
		local nTarget = MainLineTaskTwinsCity_DeteTaskFinishNpc()
		NpcPosition_PathFind(nTarget)
	end
end

function MainLineTaskTwinsCity_Task6791(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[2]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[nTaskId])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[nTaskId])
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20675]["MsgBox1"],"NpcPosition_PathFind</N>20682")
end

function MainLineTaskTwinsCity_Task6792(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[3]
	
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[nTaskId])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[nTaskId])
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20682]["MsgBox1"],"NpcPosition_PathFind</N>20678")
end

function MainLineTaskTwinsCity_Task6793(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[4]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[4]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData4(nTaskId,1,nUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[4]])
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20678]["MsgBox3"],"NpcPosition_PathFind</N>20683")
end


function MainLineTaskTwinsCity_Task6794(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5],0)
	end		
	
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[5],1)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20681]["MsgBox1"],"MainLineTaskTwinsCity_DeteTaskFinishText")
end

function MainLineTaskTwinsCity_Task6795(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6],0)
	end		
	
	-- local nItemId = MainLineTaskTwinsCity_Task6795_3()
	
	-- 判断背包空间
	-- local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_ItemUse[nItemId])
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[6]])
	-- local nTotalSpace = nSpace + nSpace1
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[6],1)
	-- RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_ItemUse[nItemId])
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[6]])
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox1"],"NpcPosition_PathFind</N>20677")
end

function MainLineTaskTwinsCity_Task6795_1(nNpcId)
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox3"])
		return		
	end
	if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1]["Id"]) then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox3"])
			return		
		end		
		RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"])
	end
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6],0)
	end
	
	if not Task_ChkTaskDetail(3887) then
		if not Task_AddTaskDetail(3887,0) then
			Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox4"])
			return
		end
		
		Task_SetTaskDetailCompleteFlag(3887,1)
	end		
	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[6],1)
	User_TaskReward(3887,0)
end


function MainLineTaskTwinsCity_Task6795_2()
	-- if not User_CheckLeftSpace(1) then
		-- Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox3"])
		-- return		
	-- end
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1]["Id"]) and Item_DelItem(tMainLineTaskTwinsCity_Cont[6795]["TaskItemGive"]["RewardItem"][1]["Id"]) then
		User_TaskReward(3887,1)
	end
	
	-- Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[6],1,nUserId)
	-- User_TaskReward(3887,1)
end

function MainLineTaskTwinsCity_Task6795_3()
	for i,v in pairs(tMainLineTaskTwinsCity_Cont[6795]["Item"]) do
		if Item_ChkItem(v) then
			return v
		end
	end
	return 0
end


function MainLineTaskTwinsCity_Task6797(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[8]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[8],0)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[8]])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData3(tMainLineTaskTwinsCity_DetectTaskId[8],1)
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[8],1)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_DetectTaskId[8]])
	
	-- 接下一个任务
	local nNextTask = tMainLineTaskTwinsCity_NextTask[nNpcId]
	MainLineTaskTwinsCity_AddTask(nNextTask)
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20677]["MsgBox1"],"NpcPosition_PathFind</N>20591")
end

function MainLineTaskTwinsCity_Task6797_1(nNpcId)
	if not User_CanPutMoney2Bag(800) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[8]
	
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end		
	
	Task_SetTaskDetailData1(nTaskId,1)
	User_AddMoney(800)
	MainLineTaskTwinsCity_AddStatus(1)
	NpcPosition_PathFind(20687)
end



function MainLineTaskTwinsCity_Task6797_2(nNpcId,nMoney)
	if User_CanPutMoney2Bag(-nMoney) and User_AddMoney(-nMoney) then
		Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[8],2)
		LinkNpcGossipFunc_New(nNpcId,"2-9")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
end

function MainLineTaskTwinsCity_Task6797_3(nNpcId,nFlag)

	if ((User_CanPutMoney2Bag(-800))) and User_AddMoney(-800) then
		Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[8],2)
		LinkNpcGossipFunc_New(nNpcId,"2-9")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
end

function MainLineTaskTwinsCity_Task6797_4(nNpcId)
	local nMoney = 100
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return		
	end	

	if User_CanPutMoney2Bag(-nMoney) and User_AddMoney(-nMoney) then
		User_OpenRewardInterface(21)
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

end

function MainLineTaskTwinsCity_Task6797_5(nNpcId)
	local nItemId = 3303276
	local nNeedNum = 10
	if (Item_ChkMulItem(nItemId,nItemId,nNeedNum)) then
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[8]) then
			Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[8],0)
		end
		
		Item_DelAllItemByType(nItemId)
		Task_SetTaskDetailData2(tMainLineTaskTwinsCity_DetectTaskId[8],1)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	end

end	

function MainLineTaskTwinsCity_Task6797_6()
	for i,v in pairs(tMainLineTaskTwinsCity_Cont[6797]["HandIn"]) do
		local nCalLoop = 0
		while Item_ChkItem(v) do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 MainLineTaskTwinsCity_Task6797_6 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_ItemUse[v])
		end	
	end
end


-- function MainLineTaskTwinsCity_Task6795_1(nNpcId)
	-- if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6]) then
		-- Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[6],0)
	-- end	

	-- local nFlag
	-- local nData1 = Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[6])
	-- local nData2 = Get_TaskDetailData2(tMainLineTaskTwinsCity_DetectTaskId[6])
	-- local sText =tMainLineTaskTwinsCity_Cont[6795]["Talk"][nData1]
	
	-- Task_SetTaskDetailData3(tMainLineTaskTwinsCity_DetectTaskId[6],os.time())
	
	-- if Sys_Random(50,100) then
		-- nFlag= true
	-- else
		-- nFlag= false
	-- end
	-- if nFlag then
		-- Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[6],nData1+1)
		-- LinkNpcGossipFunc_New(nNpcId,sText)
		-- return
	-- else
		-- if nData2 == 0 then
			-- Task_SetTaskDetailData2(tMainLineTaskTwinsCity_DetectTaskId[6],nData2+1)
			-- User_UserRandBoundTrans(10160,371,418,20,20)
			-- Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox2"],"NpcPosition_PathFind</N>20683")
		-- else
			-- LinkNpcGossipFunc_New(nNpcId,"1-8")
		-- end
	-- end
-- end




function MainLineTaskTwinsCity_Task6796_1(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6796]["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return		
	end
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return		
	end
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6796]["TaskItemGive"])
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20686]["MsgBox1"],"NpcPosition_PathFind</N>20689")
end

function MainLineTaskTwinsCity_Task6796_2(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7],0)
	end
	local nStunStatus = tMainLineTaskTwinsCity_Cont[6796]["Status"]
	local nStunPower = tMainLineTaskTwinsCity_Cont[6796]["Power"]
	local nStunSecs = tMainLineTaskTwinsCity_Cont[6796]["Secs"]
	local nStunTimes = tMainLineTaskTwinsCity_Cont[6796]["Times"]
	local nStunRemainTime = tMainLineTaskTwinsCity_Cont[6796]["RemainTime"]
	local nStunEndTime = tMainLineTaskTwinsCity_Cont[6796]["EndTime"]
	local nStunRecordable = tMainLineTaskTwinsCity_Cont[6796]["Recordable"]
	User_AddRoleStatus(nStunStatus,nStunPower,nStunSecs,nStunTimes,nStunRemainTime,nStunEndTime,nStunRecordable,0,0,Get_UserId())		
	NpcPosition_PathFind(20686)
end

function MainLineTaskTwinsCity_Task6796_3(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6796]["TaskItem"]) and Item_DelItem(tMainLineTaskTwinsCity_Cont[6796]["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-7")
	else
		LinkNpcGossipFunc_New(nNpcId,"5-6")
	end
end


function MainLineTaskTwinsCity_Task6796(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[7],0)
	end		
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[7],1)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20595]["MsgBox1"],"MainLineTaskTwinsCity_DeteTaskFinishText")
end




function MainLineTaskTwinsCity_Task6794_1(nNpcId,nSelect)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5],0)
	end
	User_EffectAdd("self",tMainLineTaskTwinsCity_Cont[6794]["Effect"])
	local nSecs = tMainLineTaskTwinsCity_Cont[6794]["Secs"]
	local nActionId = tMainLineTaskTwinsCity_Cont[6794]["ActionId"]
	local sContent = tMainLineTaskTwinsCity_Text[20681]["MsgBox4"]
	local sFunc = "MainLineTaskTwinsCity_Task6790_2"
	User_SetExplore(nSecs,sContent,nActionId,sFunc)	
	
	-- if nSelect == 2 then
		-- local nSecs = tMainLineTaskTwinsCity_Cont[6790]["Secs"]
		-- local nActionId = tMainLineTaskTwinsCity_Cont[6790]["ActionId"]
		-- local sContent = tMainLineTaskTwinsCity_Text[20681]["MsgBox4"]
		-- local sFunc = "MainLineTaskTwinsCity_Task6790_2"
		-- User_SetExplore(nSecs,sContent,nActionId,sFunc)
	-- else
		-- local sContent = tMainLineTaskTwinsCity_Text[20681]["MsgBox2"]
		-- User_TransForm(11689,0,4058,30)
		-- User_TalkChannel2005(sContent)		
		-- LinkNpcGossipFunc_New(nNpcId,"1-4")
		-- return		
	-- end
	
end


function MainLineTaskTwinsCity_Task6790_2(nUserId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5],nUserId) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[5],0,nUserId)
	end
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[5],1,nUserId)	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20684]["MsgBox8"],"NpcPosition_PathFind</N>20681",nil,nUserId)

	
	-- local nMapId = Get_NpcMapID(20681)
	-- local nPosX = Get_NpcPositionX(20681)
	-- local nPosY = Get_NpcPositionY(20681)
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,20681,nUserId)	
end

function MainLineTaskTwinsCity_Task6790_1(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[1]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[1],0)
	end		
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[1],1)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20684]["MsgBox1"],"NpcPosition_PathFind</N>20676")
end

function MainLineTaskTwinsCity_Task6790_TaskItemChk()
	for i,v in ipairs(tMainLineTaskTwinsCity_Cont[6790]["TaskItem"]) do
		if not Item_ChkItem(v) then
			return false
		end
	end
	return true
end

function MainLineTaskTwinsCity_Task6790_TaskItemGive(nNpcId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[1]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"])
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	Task_SetTaskDetailData1(nTaskId,1,nUserId)
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive"])
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

function MainLineTaskTwinsCity_Task6790_Monster()
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[1]
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end		
	Task_SetTaskDetailData1(nTaskId,2)
	local nMapId = Get_NpcMapID(20684)
	local nBoundX = Get_NpcPositionX(20684)
	local nBoundY = Get_NpcPositionY(20684)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20684]["MsgBox3"],"NpcPosition_PathFind</N>20684")
end




function MainLineTaskTwinsCity_Task6790_TaskItemGive2(nItemId,nNpcId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	
	-- 判断是否有该物品了
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6790]["TaskItemGive2"][nItemId])
	LinkNpcGossipFunc_New(nNpcId,"1-9")
	-- if MainLineTaskTwinsCity_Task6790_TaskItemChk() then
		-- LinkNpcGossipFunc_New(nNpcId,"1-9")
	-- else
		-- LinkNpcGossipFunc_New(nNpcId,"1-7")
	-- end
end

function MainLineTaskTwinsCity_Task6790_TaskPill1(nNpcId,nItemId)
	local nSecs = tMainLineTaskTwinsCity_Cont[6790]["Secs"]
	local nActionId = tMainLineTaskTwinsCity_Cont[6790]["ActionId"]
	local sContent = tMainLineTaskTwinsCity_Text[20684]["MsgBox4"]
	local sFunc = "MainLineTaskTwinsCity_Task6790_TaskPill</N>20684</N>"..nItemId
	User_SetExplore(nSecs,sContent,nActionId,sFunc)	

end

-- 调出豹胎易筋丸
function MainLineTaskTwinsCity_Task6790_TaskPill2(nNpcId,nItemId)
	local nUserId = Get_UserId()
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		Item_AddNewItem(nItemId,"0 1")
		local nLastItemId = Get_ItemLastAdd()
		local sFunc = "MainLineTaskTwinsCity_Task6790_TaskPill1</N>20684</N>"..nItemId
		Item_Dialog(nLastItemId,tMainLineTaskTwinsCity_Text["Msg"]["UseItem"],sFunc,nil,nUserId)
	end
end

function MainLineTaskTwinsCity_Task6790_TaskPill(nNpcId,nItemId,nUserId)
	local nFlag = Get_TaskDetailData2(tMainLineTaskTwinsCity_DetectTaskId[1],nUserId)+1
	local sText = tMainLineTaskTwinsCity_Cont[6790]["Talk"][nFlag]
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
	
		-- Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[1],2)
		User_EnterInstance(tMainLineTaskTwinsCity_Cont[6790]["InstanceId"],0,0,0,nUserId)
		local nGenId = tMainLineTaskTwinsCity_Cont[6790]["GenId"]
		local nCreatMonsterId = tMainLineTaskTwinsCity_Cont[6790]["MonsterId"]	
		Monster_AddMonster(Get_UserMapId(nUserId),Get_UserPositionX(nUserId),Get_UserPositionY(nUserId),nGenId,nCreatMonsterId)
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20684]["MsgBox2"],nil,nil,nUserId)
		-- LinkNpcGossipFunc_New(nNpcId,"1-8")	
		return
	
	else
		tNpcGossip[20684]["Text213"] = string.format(tMainLineTaskTwinsCity_Text[20684]["Text213"],Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end	
end

function MainLineTaskTwinsCity_Task6791_Roll(nNpcId,nMark)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[2]
	
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end	

	local nFlag = false
	local nRoll = math.random(1,6)
	User_EffectAdd("self",tMainLineTaskTwinsCity_Cont[6791]["Effect"][nRoll])
	
	if (nRoll >= 4) then
		nRoll = 6
	else
		nRoll = 3
	end
	if nMark == nRoll then
		nFlag = true
	end

	if nFlag then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
end

function MainLineTaskTwinsCity_Task6792_Select(nNpcId,nMark)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[3]
	local nFlag = Get_TaskDetailData1(nTaskId)
	
	if nMark == nFlag then
		Task_SetTaskDetailData2(nTaskId,2)
	else
		Task_SetTaskDetailData2(nTaskId,1)
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-7")
end

function MainLineTaskTwinsCity_Task6792_Select1(nNpcId)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20682]["MsgBox2"],"NpcPosition_PathFind</N>20682")
end

function MainLineTaskTwinsCity_Task6792_1(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[3]
	local nUserId = Get_UserId()
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	Task_SetTaskDetailData1(nTaskId,1,nUserId)
	NpcPosition_PathFind(20688)
end

function MainLineTaskTwinsCity_Task6792_Like(nNpcId)
	local nFlag = math.random(2,4)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[3]
	
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end
	
	Task_SetTaskDetailData1(nTaskId,nFlag)	
	Task_SetTaskDetailData4(nTaskId,1)
	
	if nFlag ~= nil then
		local sText = tMainLineTaskTwinsCity_Cont[6792]["Talk"][nFlag]
		LinkNpcGossipFunc_New(nNpcId,sText)
		return
	end
end


function MainLineTaskTwinsCity_Task6792_Like1(nNpcId)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20688]["MsgBox1"],"NpcPosition_PathFind</N>20682")
end

function MainLineTaskTwinsCity_Task6793_1(nNpcId)
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[4]
	local nUserId = Get_UserId()
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	Task_SetTaskDetailData1(nTaskId,1,nUserId)
	NpcPosition_PathFind(20685)
end

function MainLineTaskTwinsCity_Task6793_2(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-7")
	end
end

function MainLineTaskTwinsCity_Task6793_3(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"]) then
		Item_DelItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"])
	end
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4],2)
	User_EnterInstance(tMainLineTaskTwinsCity_Cont[6793]["InstanceId"])
	local nGenId = tMainLineTaskTwinsCity_Cont[6793]["GenId"]
	local nCreatMonsterId = tMainLineTaskTwinsCity_Cont[6793]["MonsterId"]	
	Monster_AddMonster(Get_UserMapId(),Get_UserPositionX(),Get_UserPositionY(),nGenId,nCreatMonsterId)
end

function MainLineTaskTwinsCity_Task6793_4(nNpcId)
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4],5)
	User_EnterInstance(tMainLineTaskTwinsCity_Cont[6793]["InstanceId"])
	local nGenId = tMainLineTaskTwinsCity_Cont[6793]["GenId"]
	local nCreatMonsterId = tMainLineTaskTwinsCity_Cont[6793]["MonsterId"]	
	Monster_AddMonster(Get_UserMapId(),Get_UserPositionX(),Get_UserPositionY(),nGenId,nCreatMonsterId)
end



function MainLineTaskTwinsCity_Task6793_5(nNpcId,nUserId)
	-- if not User_CheckLeftSpace(1,nUserId) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-4")
		-- return
	-- end

	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"],nUserId)

	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace),nUserId)
		return
	end

	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6793]["TaskItemGive"],nUserId)
	local nLastItemId = Get_ItemLastAdd(nUserId)
	local sFunc = "LinkItemGossipFunc_New</N>3303273</S>1-1"
	Item_Dialog(nLastItemId,tMainLineTaskTwinsCity_Text["Msg"]["UseItem"],sFunc,nil,nUserId)
	-- Sys_MsgBox(tMainLineTaskTwinsCity_Text[20685]["MsgBox2"],"LinkItemGossipFunc_New</N>3303273</S>1-1",nil,nUserId)
	-- LinkItemGossipFunc_New(3303273,"1-1")
	
end

function MainLineTaskTwinsCity_Task6793_6(nNpcId)
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"]) then
		Item_DelItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"])
	end
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4],4)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20685]["MsgBox1"],"NpcPosition_PathFind</N>20678")
end

function MainLineTaskTwinsCity_Task6793_Monster()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[4]) then
		return
	end		
	if Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4]) == 2 then
		Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4],3)
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20678]["MsgBox1"],"NpcPosition_PathFind</N>20678")
	elseif Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4]) == 5 then
		Task_SetTaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4],6)
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20678]["MsgBox2"])
	end
	
	local nMapId = Get_NpcMapID(20678)
	local nBoundX = Get_NpcPositionX(20678)
	local nBoundY = Get_NpcPositionY(20678)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)		
	
	NpcPosition_PathFind(20678)
end

function MainLineTaskTwinsCity_Task6775_CreateMonster()
	local nUserId = Get_UserId()
	local nNowNum = 0
	tMainLineTaskTwinsCity_Assassin["NowNum"][nUserId] = 0
	
	if nNowNum < tMainLineTaskTwinsCity_Assassin["TotalNum"] then
		MainLineTaskTwinsCity_CreateAssassin(nUserId)
	end
end

function MainLineTaskTwinsCity_CreateAssassin(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	tMainLineTaskTwinsCity_Assassin["NowNum"][nUserId] = tMainLineTaskTwinsCity_Assassin["NowNum"][nUserId] + 1
	local nData = tMainLineTaskTwinsCity_Assassin["NowNum"][nUserId]
	
	if tMainLineTaskTwinsCity_Assassin[nData] == nil then
		return
	end
	
	local nGenId = tMainLineTaskTwinsCity_Cont[6775]["GenId"]
	local nCreatMonsterId = tMainLineTaskTwinsCity_Cont[6775]["MonsterId"]
	local nMapId = Get_UserMapId(nUserId)
	local nNum = tMainLineTaskTwinsCity_Assassin[nData]["Num"]
	
	for i = 1,nNum do
		local nPosX = tMainLineTaskTwinsCity_Assassin[nData][i]["PosX"]
		local nPosY = tMainLineTaskTwinsCity_Assassin[nData][i]["PosY"]
		
		if tMainLineTaskTwinsCity_Assassin[nData][i]["MonsterId"] ~= nil then
			nCreatMonsterId = tMainLineTaskTwinsCity_Assassin[nData][i]["MonsterId"]
		end
		
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nCreatMonsterId)
	end
end

function MainLineTaskTwinsCity_Cock(nNpcId)
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[3]])
	local nSpace1 = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"])
	local nTotalSpace = nSpace + nSpace1
	
	if (nTotalSpace > 0) and (not User_CheckLeftSpace(nTotalSpace)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nTotalSpace))
		return
	end

	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6771]["TaskItem"]) then
		Item_DelItem(tMainLineTaskTwinsCity_Cont[6771]["TaskItem"])
	end
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_Cont[6772]["TaskItemGive"])
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[3]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[3],0)
	end
	
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[3]])
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[3],1)		
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7],0)
	end	
	local nMapId = Get_NpcMapID(20582)
	local nBoundX = 227
	local nBoundY =480
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,2,2)	
	User_SetTransform()
	-- NpcPosition_PathFind(20582)
	
	
	Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6773]["Cock"],"NpcPosition_PathFind</N>20582","NpcPosition_PathFind</N>20582")
end

function MainLineTaskTwinsCity_Cock1(nNpcId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[7],0)
	end
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[7],1)			
	LinkNpcGossipFunc_New(nNpcId,"2-2")

end

function MainLineTaskTwinsCity_Item3303269()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[4]) then
		NpcPosition_PathFind(20582)
	else
		-- Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6773]["Cock"])
		NpcPosition_PathFind(20587)
		
	end	
end

function MainLineTaskTwinsCity_Item3303275()
	
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[6]) == 1) then
		NpcPosition_PathFind(20592)
	end
	
end

function MainLineTaskTwinsCity_Item3303673(nItemId)
	if Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_DetectTaskId[6]) == 0 then
		NpcPosition_PathFind(20683)
		return
	end
	if not (Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[8]) == 1) then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["MsgBox6"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nMapId = Get_NpcMapID(tMainLineTaskTwinsCity_ItemUse[3303673][nItemId]["NpcId"])
		local nBoundX = Get_NpcPositionX(tMainLineTaskTwinsCity_ItemUse[3303673][nItemId]["NpcId"])
		local nBoundY = Get_NpcPositionY(tMainLineTaskTwinsCity_ItemUse[3303673][nItemId]["NpcId"])
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,0)	
	end
end

-- 没用过接使用风水签的逻辑
function MainLineTaskTwinsCity_UseFengShui(nNpcId)
	local nItemId = MainLineTaskTwinsCity_Task6795_3()
	
	if nItemId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	MainLineTaskTwinsCity_GeomanticOmenSign(nItemId)
end

-- 新的风水签使用
function MainLineTaskTwinsCity_GeomanticOmenSign(nItemId)
	-- 判断任务是否已接
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[6]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 判断任务是否完成
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
			return
		end
		
		if User_EnterInstance(128) then
			local nGenId = tMainLineTaskTwinsCity_FengShui["GenId"]
			local nUserId = Get_UserId()
			local nMapId = Get_UserMapId(nUserId)
			tMainLineTaskTwinsCity_FengShui["UserNum"][nUserId] = 0
			Task_SetTaskDetailData2(nTaskId,1,nUserId)
			
			-- 创建怪物
			for i = 1,10 do
				local nPosX = tMainLineTaskTwinsCity_FengShui[i][1]
				local nPosY = tMainLineTaskTwinsCity_FengShui[i][2]
				
				Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,3989)
			end
			
			Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["Msg1"])
		end
	end
end

-- 怪物死亡
function MainLineTaskTwinsCity_FengShuiMonster()
	local nUserId = Get_UserId()
	tMainLineTaskTwinsCity_FengShui["UserNum"][nUserId] = tMainLineTaskTwinsCity_FengShui["UserNum"][nUserId] + 1
	
	if tMainLineTaskTwinsCity_FengShui["UserNum"][nUserId] >= tMainLineTaskTwinsCity_FengShui["Num"] then
		local nMapId = Get_NpcMapID(20683)
		local nBoundX = Get_NpcPositionX(20683)
		local nBoundY = Get_NpcPositionY(20683)
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20683]["Msg2"],"NpcPosition_PathFind</N>20683")
	end
end

function MainLineTaskTwinsCity_Item3303674(nItemId)
	if Get_UserMonoEMoney() + 1500 >=  G_User_MaxEmoneyMono then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[3303674]["MsgBox1"])
		return
	end
	local nEvent =tMainLineTaskTwinsCity_ItemUse[3303674]["EventType"]
	local nType =tMainLineTaskTwinsCity_ItemUse[3303674]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,7,4) then
			Sys_MsgBox(tMainLineTaskTwinsCity_Text[3303674]["MsgBox2"])
			return
		end
		RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_ItemUse[3303674][2])
	else
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_ItemUse[3303674][1])
	end
	
	-- 播放光效
	User_EffectAdd("self","rainbow")
	-- 全服公告
	local sUserName = Get_UserName()
	Sys_SystemBroadcast(string.format(tMainLineTaskTwinsCity_Text[3303674]["MsgBox5"],sUserName))
end

function MainLineTaskTwinsCity_Item3303677(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,10) then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[3303677]["MsgBox2"])
		return
	end
	
	local tItemUse = CommonFunc_Copy(tMainLineTaskTwinsCity_ItemUse[3303677])
	local nItemNum = Get_CountItemType(nItemId,0)
	tItemUse["DeleteItem"][1]["ItemNum"] = nItemNum
	
	RewardTemplate_UseItemAndMsg(tItemUse)
end

function MainLineTaskTwinsCity_Task6773_ItemChk(nNpcId)
	if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		local sText = tMainLineTaskTwinsCity_Text["Msg"][6773]["ItemLost"]
		local sFunc = "NpcPosition_PathFind</N>20582"
		Sys_MsgBox(sText,sFunc)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-3")	
end


function MainLineTaskTwinsCity_Task6773_GetFunc()
	local sFunc = "</F>NULL"

	if Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		return sFunc
	end
	
	if Get_TaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		return sFunc
	end

	if Get_TaskDetailData4(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		return sFunc
	end

	if Get_TaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		return sFunc
	end	
	sFunc = "</F>NpcPosition_PathFind</N>20588"
	return sFunc
end

function MainLineTaskTwinsCity_Task6774_ItemChk(nNpcId)

	if not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		local sText = tMainLineTaskTwinsCity_Text["Msg"][6774]["ItemLost"]
		local sFunc = "NpcPosition_PathFind</N>20582"
		Sys_MsgBox(sText,sFunc)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-4")	
end


--增加buff
function MainLineTaskTwinsCity_AddBuff(nUserId)
	User_AddRoleStatus(7,150,9,172800,172800,1,0,0,0,nUserId)
	-- User_AddRoleStatus(7,150,9,172800,172800,1,0,0,0,nUserId)

end
--清除buff
function MainLineTaskTwinsCity_ClearBuff(nUserId)
	User_DelRoleStatus(7)
	-- User_DelRoleStatus(7)

end

function MainLineTaskTwinsCity_EnterComfirm(nUserId)

end

--进入新双龙城
function MainLineTaskTwinsCity_EnterMap(nUserId)
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[1]],nUserId)
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace),nUserId)
		return
	end
	
	local sEffect = tMainLineTaskTwinsCity_Cont[6770]["Effect"]
	-- MainLineTaskTwinsCity_AddBuff(nUserId)
	User_EffectAdd("self",sEffect,nUserId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1],nUserId) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[1],0,nUserId)
	end
	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_prize[tMainLineTaskTwinsCity_TaskId[1]],nUserId)
	Task_SetTaskDetailCompleteFlag(tMainLineTaskTwinsCity_TaskId[1],1,nUserId)
	
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6],nUserId) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6],0,nUserId)
		
	end	
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_BranchTaskId[6],1,nUserId)
	-- if not Task_AddTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[6],nUserId) then
		-- User_TalkChannel2005("2-"..tMainLineTaskTwinsCity_BranchTaskId[6])
	-- end
	
	
	local nMapId = Get_NpcMapID(20592)
	local nBoundX = Get_NpcPositionX(20592)
	local nBoundY = Get_NpcPositionY(20592)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,0,nUserId)
	
	local nMapId1 = Get_NpcMapID(20582)
	local nPosX = Get_NpcPositionX(20582)
	local nPosY = Get_NpcPositionY(20582)	
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId1,20582,nUserId)
	-- Sys(tMainLineTaskTwinsCity_Text["Msg"][6770]["EnterMap"],nUserId)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6770]["EnterMap"],"NpcPosition_PathFind</N>20582","NpcPosition_PathFind</N>20582",nUserId)
	
end


function MainLineTaskTwinsCity_EnterMap2()
	local nUserId = Get_UserId()
	local sEffect = tMainLineTaskTwinsCity_Cont[6770]["Effect"]
	MainLineTaskTwinsCity_AddBuff(nUserId)
	User_EffectAdd("self",sEffect,nUserId)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1],nUserId) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[1],0,nUserId)
	end
	Task_SetTaskDetailData1(tMainLineTaskTwinsCity_TaskId[1],1,nUserId)
	local nMapId = Get_NpcMapID(20592)
	local nBoundX = Get_NpcPositionX(20592)
	local nBoundY = Get_NpcPositionY(20592)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,0,nUserId)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text["Msg"][6770]["EnterMap2"])

end


--背包信函数
function MainLineTaskTwinsCity_Letter(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给修行值
		
		local nCultivation = 30
		User_AddCultivation(nCultivation)
		Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,6,%d",nItemId,nCultivation))
		local str = tBackpackLetter_Text[nItemId]["Cultivation"] or string.format(tBackpackLetter_Text["Cultivation"],nCultivation)
		User_TalkChannel2005(str)
		--自动接受片区任务
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1]) then
			Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[1])
		end
		NpcPosition_PathFind(20581)
	end
end

-- 上线自动接任务
function MainLineTaskTwinsCity_OnLine()
	--自动接受片区任务
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_TaskId[1])
	end
end

-- 返回双龙城
function MainLineTaskTwinsCity_Return()
	local nMapId = Get_UserMapId()
	
	if nMapId ~= 10160 then
		return
	end
	
	User_UserRandBoundTrans(1002,266,432,5,5,0)
end

-- 判断是否首次点击该NPC
function MainLineTaskTwinsCity_First(nNpcId)
	if tMainLineTaskTwinsCity_Web[nNpcId] == nil then
		return
	end

	local nEvent = tMainLineTaskTwinsCity_Web["EventType"]
	local nType = tMainLineTaskTwinsCity_Web["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nNpcType = tMainLineTaskTwinsCity_Web[nNpcId]["Index"]
	local sPszParam = tMainLineTaskTwinsCity_Web[nNpcId]["Web"]

	-- 判断是否点过了
	if Sys_ParseNumbersContain(nNpcType,nData) then
		return
	end

	-- 加掩码
	Task_AddStatistic(nEvent,nType,nNpcType,1)

	-- 弹网页地址
	User_SendWebDialog(sPszParam)
end

-- 自动获取美酒
function MainLineTaskTwinsCity_GoodWine()
	local nTaskId = tMainLineTaskTwinsCity_DetectTaskId[4]
	-- 判断是否有任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	local nData = Get_TaskDetailData1(nTaskId)
	
	if nData == 4 then
		return
	end
	
	if nData ~= 1 then
		return
	end
	
	if Item_ChkItem(tMainLineTaskTwinsCity_Cont[6793]["TaskItem"]) then
		return
	end

	Sys_MsgBox(tMainLineTaskTwinsCity_Text[20685]["MsgBox3"],"MainLineTaskTwinsCity_EnsureGoodWine")
end

function MainLineTaskTwinsCity_EnsureGoodWine()
	local nSecs = tMainLineTaskTwinsCity_Cont[6793]["Secs"]
	local nActionId = tMainLineTaskTwinsCity_Cont[6793]["ActionId"]
	local sContent = tMainLineTaskTwinsCity_Text[20678]["MsgBox4"]
	local sFunc = "MainLineTaskTwinsCity_Task6793_5</N>20685"

	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

-- 跳过任务
function MainLineTaskTwinsCity_Skip(nNpcId)
	local nUserEmoney = Get_UserMonoEMoney()
	
	local nEvent = tMainLineTaskTwinsCity_Stc["EventType"]
	local nType = tMainLineTaskTwinsCity_Stc["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断玩家赠点天石是否满足
	if nUserEmoney < tMainLineTaskTwinsCity_Skip["CostEMoney"] then
		LinkNpcGossipFunc_New(nNpcId,"7-4")
		return
	end
	
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Skip)
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"7-3")
	end
	
	-- 扣除赠点天石
	if User_AddEMoneyMono(-tMainLineTaskTwinsCity_Skip["CostEMoney"]) then
		Sys_SaveActionTaskLog("0,27,0,0,18000164,2,0,0")
		local nEvent = tMainLineTaskTwinsCity_Stc["EventType"]
		local nType = tMainLineTaskTwinsCity_Stc["DataType"]
		
		Task_SetStatistic(nEvent,nType,1,1)
		-- 任务掩码置完成
		MainLineTaskTwinsCity_SkipTask()
		-- 给奖励
		RewardTemplate_UseItem(tMainLineTaskTwinsCity_Skip)
	end
end

-- 天石跳过
function MainLineTaskTwinsCity_SkipEmoney(nNpcId)
	local nUserEmoney = Get_UserEMoney()
	
	local nEvent = tMainLineTaskTwinsCity_Stc["EventType"]
	local nType = tMainLineTaskTwinsCity_Stc["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断玩家天石是否满足
	if nUserEmoney < tMainLineTaskTwinsCity_Skip["CostEMoney"] then
		LinkNpcGossipFunc_New(nNpcId,"7-5")
		return
	end
	
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tMainLineTaskTwinsCity_Skip)
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"7-3")
	end
	
	-- 扣除天石
	if User_AddEMoney(-tMainLineTaskTwinsCity_Skip["CostEMoney"]) then
		Sys_SaveActionTaskLog("27,0,0,0,18000164,2,0,0")
		Sys_SaveEmoneyBuy("350	4472	27	27	1	")
		local nEvent = tMainLineTaskTwinsCity_Stc["EventType"]
		local nType = tMainLineTaskTwinsCity_Stc["DataType"]
		
		Task_SetStatistic(nEvent,nType,1,1)
		-- 任务掩码置完成
		MainLineTaskTwinsCity_SkipTask()
		-- 给奖励
		RewardTemplate_UseItem(tMainLineTaskTwinsCity_Skip)
	end
end

-- 全部掩码置完成
function MainLineTaskTwinsCity_SkipTask()
	for i,v in pairs(tMainLineTaskTwinsCity_SkipTask) do
		if not Task_ChkTaskDetail(v) then
			if Task_AddTaskDetail(v) then
				Task_SetTaskDetailCompleteFlag(v,1)
			end
		else
			Task_SetTaskDetailCompleteFlag(v,1)
		end
	end
end

-- 判断前置任务是否完成
function MainLineTaskTwinsCity_CheckFrontTask(nTaskId)
	local nFrontTaskId = tMainLineTaskTwinsCity_FrontTask[nTaskId]
	
	-- 判断是否有前置任务掩码
	if not Task_ChkTaskDetail(nFrontTaskId) then
		return false
	end
	
	-- 判断前置任务是否完成
	if not Task_ChkTaskDetailValue(nFrontTaskId,"CompleteFlag","==",1) then
		return false
	end
	
	return true
end

function MainLineTaskTwinsCity_AddTask(nTaskId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if MainLineTaskTwinsCity_CheckFrontTask(nTaskId) then
		if not Task_ChkTaskDetail(nTaskId,nUserId) then
			Task_AddTaskDetail(nTaskId,0,nUserId)
		end
	end
end

-- 上线重置CompleteFlag大于1的玩家，把相关任务置完成，如果该任务有给双龙侠义令的并给他补偿
-- function MainLineTaskTwinsCity_OnLineCompensate()
	-- local tCompensate = {}
	-- local nUserId = Get_UserId()
	-- local sSender = tMainLineTaskTwinsCity_Text["Sender"]
	-- local sTitle = tMainLineTaskTwinsCity_Text["Title"]
	-- local sContent = tMainLineTaskTwinsCity_Text["Content"]
	
	-- 判断有哪些异常的任务
	-- for i,v in pairs(tMainLineTaskTwinsCity_SkipTask) do
		-- if Task_ChkTaskDetail(v) then
			-- if Task_ChkTaskDetailValue(v,"CompleteFlag",">",1) then
				-- Task_SetTaskDetailTaskOvertime(v,0)
				-- Task_SetTaskDetailCompleteFlag(v,1)
				
				-- local tReward = tMainLineTaskTwinsCity_prize[v]
				-- if tReward ~= nil and tReward["RewardItem"] ~= nil then
					-- local nItemId = tReward["RewardItem"][1]["Id"]
					
					-- if nItemId == tMainLineTaskTwinsCity_Cont["ChivalryOrder"] then
						-- Sys_SendMail(nUserId,0,0,566513,0,30,sSender,sTitle,sContent)
					-- end
				-- end
			-- end
		-- end
	-- end
-- end

-- 玩家跑城任务全部置完成给奖励
function MainLineTaskTwinsCity_OnLineCompensate()
	local bReset = false
	local tCompensate = {}
	local nUserId = Get_UserId()

	-- 判断玩家等级达到80级
	if not User_JudgeLevelAndMetempsychosis(80,0,nUserId) then
		-- 检测第一个任务是否有接
		if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_TaskId[1]) then
			return
		end
	end
	
	-- 任务掩码置完成
	for i,v in pairs(tMainLineTaskTwinsCity_SkipTask) do
		if Task_ChkTaskDetail(v) then
			if Task_ChkTaskDetailValue(v,"CompleteFlag","~=",1) then
				table.insert(tCompensate,v)
				Task_SetTaskDetailTaskOvertime(v,0)
				Task_SetTaskDetailCompleteFlag(v,1)
			end
		else
			if Task_AddTaskDetail(v) then
				table.insert(tCompensate,v)
				Task_SetTaskDetailCompleteFlag(v,1)
			end
		end
	end
	
	-- 判断置完成里是否有给双龙侠义令
	for i,v in pairs(tCompensate) do
		local tReward = tMainLineTaskTwinsCity_prize[v]
		if tReward ~= nil and tReward["RewardItem"] ~= nil then
			local nItemId = tReward["RewardItem"][1]["Id"]
			
			if nItemId == tMainLineTaskTwinsCity_Cont["ChivalryOrder"] then
				bReset = true
				break
			end
		end
	end

	-- 删除上官任务相关的背包信，令牌
	if Item_ChkItem(3303267) then
		Item_DelAllItemByType(3303267)
	end
	if Item_ChkItem(3305051) then
		Item_DelAllItemByType(3305051)
	end
	
	if bReset then
		-- 删除玩家身上侠义令
		if Item_ChkItem(3303677) then
			Item_DelAllItemByType(3303677)
		end
		
		local nEvent = 165
		local nType = 66
		
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			return
		end

		Task_SetStatistic(nEvent,nType,1,1)
		
		-- -- 判断玩家背包空间(有就给，没有就发邮件)
		-- if not User_CheckLeftSpace(1) then
			-- local sSender = tMainLineTaskTwinsCity_Text["Sender"]
			-- local sTitle = tMainLineTaskTwinsCity_Text["Title"]
			-- local sContent = tMainLineTaskTwinsCity_Text["Content"]
			-- Sys_SendMail(nUserId,0,0,566514,0,30,sSender,sTitle,sContent)
		-- else
			-- -- 给奖励
			-- RewardTemplate_UseItem(tMainLineTaskTwinsCity_Skip)
		-- end
	end
end


--千面郎君
function MainLineTaskTwinsCity_Npc_20991(nNpcId)
	User_OpenDialog(741)
end
------------------------------NPC模板--------------------------------------------
tNpcFace[5686] = 14
tNpcFace[1993] = 84
tNpcFace[5518] = 94
tNpcFace[5483] = 7
tNpcFace[699] = 95

tNpcFace[3] = 120
tNpcFace[5474] = 108
tNpcFace[5520] = 72
tNpcFace[2920] = 246
tNpcFace[5] = 66

tNpcFace[5703] = 65
tNpcFace[5449] = 237
tNpcFace[174] = 75


tNpcGossip[20581] = tNpcGossip[20581] or DefaultNpc:new{}
tNpcGossip[20582] = tNpcGossip[20582] or DefaultNpc:new{}
tNpcGossip[20583] = tNpcGossip[20583] or DefaultNpc:new{}
tNpcGossip[20586] = tNpcGossip[20586] or DefaultNpc:new{}
tNpcGossip[20587] = tNpcGossip[20587] or DefaultNpc:new{}
tNpcGossip[20588] = tNpcGossip[20588] or DefaultNpc:new{}
tNpcGossip[20589] = tNpcGossip[20589] or DefaultNpc:new{}
tNpcGossip[20590] = tNpcGossip[20590] or DefaultNpc:new{}
tNpcGossip[20591] = tNpcGossip[20591] or DefaultNpc:new{}
tNpcGossip[20593] = tNpcGossip[20593] or DefaultNpc:new{}
tNpcGossip[20679] = tNpcGossip[20679] or DefaultNpc:new{}
tNpcGossip[20680] = tNpcGossip[20680] or DefaultNpc:new{}
tNpcGossip[20676] = tNpcGossip[20676] or DefaultNpc:new{}
tNpcGossip[20675] = tNpcGossip[20675] or DefaultNpc:new{}
tNpcGossip[20684] = tNpcGossip[20684] or DefaultNpc:new{}
tNpcGossip[20682] = tNpcGossip[20682] or DefaultNpc:new{}
tNpcGossip[20688] = tNpcGossip[20688] or DefaultNpc:new{}
tNpcGossip[20678] = tNpcGossip[20678] or DefaultNpc:new{}
tNpcGossip[20681] = tNpcGossip[20681] or DefaultNpc:new{}
tNpcGossip[20683] = tNpcGossip[20683] or DefaultNpc:new{}
tNpcGossip[20687] = tNpcGossip[20687] or DefaultNpc:new{}
tNpcGossip[20677] = tNpcGossip[20677] or DefaultNpc:new{}
tNpcGossip[20685] = tNpcGossip[20685] or DefaultNpc:new{}
tNpcGossip[20686] = tNpcGossip[20686] or DefaultNpc:new{}
tNpcGossip[20689] = tNpcGossip[20689] or DefaultNpc:new{}
tNpcGossip[20581]["OptionHidden"] = 1
tNpcGossip[20582]["OptionHidden"] = 1
tNpcGossip[20586]["OptionHidden"] = 1
tNpcGossip[20587]["OptionHidden"] = 1
tNpcGossip[20588]["OptionHidden"] = 1
tNpcGossip[20589]["OptionHidden"] = 1
tNpcGossip[20590]["OptionHidden"] = 1
tNpcGossip[20591]["OptionHidden"] = 1
tNpcGossip[20593]["OptionHidden"] = 1
tNpcGossip[20679]["OptionHidden"] = 1
tNpcGossip[20680]["OptionHidden"] = 1
tNpcGossip[20676]["OptionHidden"] = 1
tNpcGossip[20684]["OptionHidden"] = 1
tNpcGossip[20675]["OptionHidden"] = 1
tNpcGossip[20688]["OptionHidden"] = 1
tNpcGossip[20682]["OptionHidden"] = 1
tNpcGossip[20678]["OptionHidden"] = 1
tNpcGossip[20685]["OptionHidden"] = 1
tNpcGossip[20683]["OptionHidden"] = 1
tNpcGossip[20681]["OptionHidden"] = 1
tNpcGossip[20687]["OptionHidden"] = 1
tNpcGossip[20677]["OptionHidden"] = 1
tNpcGossip[20686]["OptionHidden"] = 1
tNpcGossip[20689]["OptionHidden"] = 1


tNpcFace[4778] = 94

--上官逸尘-闲聊
tNpcGossip[20581]["Text1-1"] = {111}
tNpcGossip[20581]["tOption1-1"] = {111,112}
tNpcGossip[20581]["Text111"] = tMainLineTaskTwinsCity_Text[20581]["Text111"]
tNpcGossip[20581]["Option111"] = tMainLineTaskTwinsCity_Text[20581]["Option111"]
tNpcGossip[20581]["Option112"] = tMainLineTaskTwinsCity_Text[20581]["Option112"]
tNpcGossip[20581]["OptionFunc112"] = "MainLineTaskTwinsCity_Return"
tNpcGossip[20581]["OptionChkFunc112"] = function ()
	return (Get_UserMapId() == 10160)
end

--上官逸尘-未完成
tNpcGossip[20581]["Text1-2"] = {121}
tNpcGossip[20581]["tOption1-2"] = {121,122,112}
tNpcGossip[20581]["Text121"] = tMainLineTaskTwinsCity_Text[20581]["Text121"]
tNpcGossip[20581]["Option121"] = tMainLineTaskTwinsCity_Text[20581]["Option121"]
tNpcGossip[20581]["Option122"] = tMainLineTaskTwinsCity_Text[20581]["Option122"]
tNpcGossip[20581]["OptionFunc121"] = "MainLineTaskTwinsCity_EnterMap2"
tNpcGossip[20581]["OptionChkFunc121"] = function ()
	return (Get_UserMapId() == 1002)
end

--上官逸尘-完成
tNpcGossip[20581]["Text1-3"] = {131,132}
tNpcGossip[20581]["tOption1-3"] = {131,112}
tNpcGossip[20581]["Text131"] = tMainLineTaskTwinsCity_Text[20581]["Text131"]
tNpcGossip[20581]["Text132"] = tMainLineTaskTwinsCity_Text[20581]["Text132"]
tNpcGossip[20581]["Option131"] = tMainLineTaskTwinsCity_Text[20581]["Option131"]


--上官逸尘-未接受任务对白
tNpcGossip[20581]["Text1-4"] = {141,142}
tNpcGossip[20581]["tOption1-4"] = {141,143}
tNpcGossip[20581]["Text141"] = tMainLineTaskTwinsCity_Text[20581]["Text141"]
tNpcGossip[20581]["Text142"] = tMainLineTaskTwinsCity_Text[20581]["Text142"]
tNpcGossip[20581]["Option141"] = tMainLineTaskTwinsCity_Text[20581]["Option141"]
tNpcGossip[20581]["Option142"] = tMainLineTaskTwinsCity_Text[20581]["Option142"]
tNpcGossip[20581]["Option143"] = tMainLineTaskTwinsCity_Text[20581]["Option143"]
tNpcGossip[20581]["OptionPoint141"] = "2-1"
tNpcGossip[20581]["OptionPoint143"] = "7-1"


--上官逸尘-已接受任务，未完成对白
tNpcGossip[20581]["Text1-5"] = {151}
tNpcGossip[20581]["tOption1-5"] = {151}
tNpcGossip[20581]["Text151"] = tMainLineTaskTwinsCity_Text[20581]["Text151"]
tNpcGossip[20581]["Option151"] = tMainLineTaskTwinsCity_Text[20581]["Option151"]
tNpcGossip[20581]["OptionFunc151"] = "NpcPosition_PathFind</N>20582"


tNpcGossip[20581]["Text2-1"] = {211,212}
tNpcGossip[20581]["tOption2-1"] = {211,142}
tNpcGossip[20581]["Text211"] = tMainLineTaskTwinsCity_Text[20581]["Text211"]
tNpcGossip[20581]["Text212"] = tMainLineTaskTwinsCity_Text[20581]["Text212"]
tNpcGossip[20581]["Option211"] = tMainLineTaskTwinsCity_Text[20581]["Option211"]
tNpcGossip[20581]["OptionPoint211"] = "2-2"

--上官逸尘-小事一桩，交给我吧！
tNpcGossip[20581]["Text2-2"] = {221}
tNpcGossip[20581]["tOption2-2"] = {221}
tNpcGossip[20581]["Text221"] = tMainLineTaskTwinsCity_Text[20581]["Text221"]
tNpcGossip[20581]["Option221"] = tMainLineTaskTwinsCity_Text[20581]["Option221"]
tNpcGossip[20581]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6770_1</N>20581"

--上官逸尘-已接任务6，初次对话
tNpcGossip[20581]["Text6-1"] = {611,612}
tNpcGossip[20581]["tOption6-1"] = {611}
tNpcGossip[20581]["Text611"] = tMainLineTaskTwinsCity_Text[20581]["Text611"]
tNpcGossip[20581]["Text612"] = tMainLineTaskTwinsCity_Text[20581]["Text612"]
tNpcGossip[20581]["Option611"] = tMainLineTaskTwinsCity_Text[20581]["Option611"]
tNpcGossip[20581]["OptionPoint611"] = "6-2"
--上官逸尘-将之前发生的事告知上官逸尘
tNpcGossip[20581]["Text6-2"] = {621,622}
tNpcGossip[20581]["tOption6-2"] = {621}
tNpcGossip[20581]["Text621"] = tMainLineTaskTwinsCity_Text[20581]["Text621"]
tNpcGossip[20581]["Text622"] = tMainLineTaskTwinsCity_Text[20581]["Text622"]
tNpcGossip[20581]["Option621"] = tMainLineTaskTwinsCity_Text[20581]["Option621"]
tNpcGossip[20581]["OptionPoint621"] = "6-3"
--上官逸尘-你说什么？！
tNpcGossip[20581]["Text6-3"] = {631,632,633}
tNpcGossip[20581]["tOption6-3"] = {631}
tNpcGossip[20581]["Text631"] = tMainLineTaskTwinsCity_Text[20581]["Text631"]
tNpcGossip[20581]["Text632"] = tMainLineTaskTwinsCity_Text[20581]["Text632"]
tNpcGossip[20581]["Text633"] = tMainLineTaskTwinsCity_Text[20581]["Text633"]
tNpcGossip[20581]["Option631"] = tMainLineTaskTwinsCity_Text[20581]["Option631"]
tNpcGossip[20581]["OptionFunc631"] = "MainLineTaskTwinsCity_Task6775_1</N>20581"
--上官逸尘-已接任务6，再次对话
tNpcGossip[20581]["Text6-4"] = {641}
tNpcGossip[20581]["tOption6-4"] = {641}
tNpcGossip[20581]["Text641"] = tMainLineTaskTwinsCity_Text[20581]["Text641"]
tNpcGossip[20581]["Option641"] = tMainLineTaskTwinsCity_Text[20581]["Option641"]
tNpcGossip[20581]["OptionFunc641"] = "NpcPosition_PathFind</N>20589"

tNpcGossip[20581]["Text7-1"] = {711,712,713}
tNpcGossip[20581]["tOption7-1"] = {711,712}
tNpcGossip[20581]["Text711"] = tMainLineTaskTwinsCity_Text[20581]["Text711"]
tNpcGossip[20581]["Text712"] = tMainLineTaskTwinsCity_Text[20581]["Text712"]
tNpcGossip[20581]["Text713"] = tMainLineTaskTwinsCity_Text[20581]["Text713"]
tNpcGossip[20581]["Option711"] = tMainLineTaskTwinsCity_Text[20581]["Option711"]
tNpcGossip[20581]["Option712"] = tMainLineTaskTwinsCity_Text[20581]["Option712"]
tNpcGossip[20581]["OptionFunc711"] = "MainLineTaskTwinsCity_Skip</N>20581"

tNpcGossip[20581]["Text7-2"] = {721}
tNpcGossip[20581]["tOption7-2"] = {721}
tNpcGossip[20581]["Text721"] = tMainLineTaskTwinsCity_Text[20581]["Text721"]
tNpcGossip[20581]["Option721"] = tMainLineTaskTwinsCity_Text[20581]["Option721"]

tNpcGossip[20581]["Text7-3"] = {731}
tNpcGossip[20581]["tOption7-3"] = {731}
tNpcGossip[20581]["Text731"] = tMainLineTaskTwinsCity_Text[20581]["Text731"]
tNpcGossip[20581]["Option731"] = tMainLineTaskTwinsCity_Text[20581]["Option731"]

tNpcGossip[20581]["Text7-4"] = {741}
tNpcGossip[20581]["tOption7-4"] = {741,742}
tNpcGossip[20581]["Text741"] = tMainLineTaskTwinsCity_Text[20581]["Text741"]
tNpcGossip[20581]["Option741"] = tMainLineTaskTwinsCity_Text[20581]["Option741"]
tNpcGossip[20581]["OptionFunc741"] = "MainLineTaskTwinsCity_SkipEmoney</N>20581"
tNpcGossip[20581]["Option742"] = tMainLineTaskTwinsCity_Text[20581]["Option742"]

tNpcGossip[20581]["Text7-5"] = {751}
tNpcGossip[20581]["tOption7-5"] = {751}
tNpcGossip[20581]["Text751"] = tMainLineTaskTwinsCity_Text[20581]["Text751"]
tNpcGossip[20581]["Option751"] = tMainLineTaskTwinsCity_Text[20581]["Option751"]

--镇魔塔守门人-已接受任务，未完成对白
tNpcGossip[20582]["Text1-1"] = {111}
tNpcGossip[20582]["tOption1-1"] = {111,112}
tNpcGossip[20582]["Text111"] = tMainLineTaskTwinsCity_Text[20582]["Text111"]
tNpcGossip[20582]["Option111"] = tMainLineTaskTwinsCity_Text[20582]["Option111"]
tNpcGossip[20582]["Option112"] = tMainLineTaskTwinsCity_Text[20582]["Option112"]
tNpcGossip[20582]["OptionPoint111"] = "2-1"
tNpcGossip[20582]["OptionPoint112"] = "2-1"

tNpcGossip[20582]["Text2-1"] = {211,212}
tNpcGossip[20582]["tOption2-1"] = {211}
tNpcGossip[20582]["Text211"] = tMainLineTaskTwinsCity_Text[20582]["Text211"]
tNpcGossip[20582]["Text212"] = tMainLineTaskTwinsCity_Text[20582]["Text212"]
tNpcGossip[20582]["Option211"] = tMainLineTaskTwinsCity_Text[20582]["Option211"]
tNpcGossip[20582]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6770_2</N>20582"

--镇魔塔守门人-已接受任务，未完成对白
tNpcGossip[20582]["Text1-2"] = {121}
tNpcGossip[20582]["tOption1-2"] = {121}
tNpcGossip[20582]["Text121"] = tMainLineTaskTwinsCity_Text[20582]["Text121"]
tNpcGossip[20582]["Option121"] = tMainLineTaskTwinsCity_Text[20582]["Option121"]

--镇魔塔守门人-任务完成对白
tNpcGossip[20582]["Text1-3"] = {131,132}
tNpcGossip[20582]["tOption1-3"] = {131}
tNpcGossip[20582]["Text131"] = tMainLineTaskTwinsCity_Text[20582]["Text131"]
tNpcGossip[20582]["Text132"] = tMainLineTaskTwinsCity_Text[20582]["Text132"]
tNpcGossip[20582]["Option131"] = tMainLineTaskTwinsCity_Text[20582]["Option131"]
tNpcGossip[20582]["OptionPoint131"] = "3-1"

tNpcGossip[20582]["Text1-4"] = {141}
tNpcGossip[20582]["tOption1-4"] = {141,142}
tNpcGossip[20582]["Text141"] = tMainLineTaskTwinsCity_Text[20582]["Text141"]
tNpcGossip[20582]["Option141"] = tMainLineTaskTwinsCity_Text[20582]["Option141"]
tNpcGossip[20582]["Option142"] = tMainLineTaskTwinsCity_Text[20582]["Option142"]
tNpcGossip[20582]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6771</N>20582"

--镇魔塔守门人-完成任务对白
tNpcGossip[20582]["Text1-5"] = {151}
tNpcGossip[20582]["tOption1-5"] = {151}
tNpcGossip[20582]["Text151"] = tMainLineTaskTwinsCity_Text[20582]["Text151"]
tNpcGossip[20582]["Option151"] = tMainLineTaskTwinsCity_Text[20582]["Option151"]
tNpcGossip[20582]["OptionPoint151"] = "4-1"
--镇魔塔守门人-已接任务，未完成对白
tNpcGossip[20582]["Text1-6"] = {161}
tNpcGossip[20582]["tOption1-6"] = {161,162}
tNpcGossip[20582]["Text161"] = tMainLineTaskTwinsCity_Text[20582]["Text161"]
tNpcGossip[20582]["Option161"] = tMainLineTaskTwinsCity_Text[20582]["Option161"]
tNpcGossip[20582]["Option162"] = tMainLineTaskTwinsCity_Text[20582]["Option162"]
tNpcGossip[20582]["OptionPoint161"] = "5-1"
tNpcGossip[20582]["OptionFunc162"] = "NpcPosition_PathFind</N>20587"

tNpcGossip[20582]["OptionChkFunc161"] = function ()
	return not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6772]["TaskItem"])
end

--镇魔塔守门人-任务完成对白
tNpcGossip[20582]["Text3-1"] = {311,312}
tNpcGossip[20582]["tOption3-1"] = {311}
tNpcGossip[20582]["Text311"] = tMainLineTaskTwinsCity_Text[20582]["Text311"]
tNpcGossip[20582]["Text312"] = tMainLineTaskTwinsCity_Text[20582]["Text312"]
tNpcGossip[20582]["Option311"] = tMainLineTaskTwinsCity_Text[20582]["Option311"]
tNpcGossip[20582]["OptionFunc311"] = "MainLineTaskTwinsCity_Task6771</N>20582"

--镇魔塔守门人-背包空间不足
tNpcGossip[20582]["Text3-2"] = {321}
tNpcGossip[20582]["tOption3-2"] = {321}
tNpcGossip[20582]["Text321"] = tMainLineTaskTwinsCity_Text[20582]["Text321"]
tNpcGossip[20582]["Option321"] = tMainLineTaskTwinsCity_Text[20582]["Option321"]

--镇魔塔守门人-我找到了这张纸条
tNpcGossip[20582]["Text4-1"] = {411,412}
tNpcGossip[20582]["tOption4-1"] = {411}
tNpcGossip[20582]["Text411"] = tMainLineTaskTwinsCity_Text[20582]["Text411"]
tNpcGossip[20582]["Text412"] = tMainLineTaskTwinsCity_Text[20582]["Text412"]
tNpcGossip[20582]["Option411"] = tMainLineTaskTwinsCity_Text[20582]["Option411"]
tNpcGossip[20582]["OptionFunc411"] = "MainLineTaskTwinsCity_Task6772</N>20582"

--镇魔塔守门人-我把纸条弄丢了
tNpcGossip[20582]["Text5-1"] = {511}
tNpcGossip[20582]["tOption5-1"] = {511}
tNpcGossip[20582]["Text511"] = tMainLineTaskTwinsCity_Text[20582]["Text511"]
tNpcGossip[20582]["Option511"] = tMainLineTaskTwinsCity_Text[20582]["Option511"]
tNpcGossip[20582]["OptionFunc511"] = "MainLineTaskTwinsCity_Task6772_TaskItem</N>20582"
--镇魔塔守门人-【失败，背包空间不足】
tNpcGossip[20582]["Text5-2"] = {521}
tNpcGossip[20582]["tOption5-2"] = {521}
tNpcGossip[20582]["Text521"] = tMainLineTaskTwinsCity_Text[20582]["Text521"]
tNpcGossip[20582]["Option521"] = tMainLineTaskTwinsCity_Text[20582]["Option521"]

tNpcGossip[20582]["Text5-3"] = {531}
tNpcGossip[20582]["tOption5-3"] = {531}
tNpcGossip[20582]["Text531"] = tMainLineTaskTwinsCity_Text[20582]["Text531"]
tNpcGossip[20582]["Option531"] = tMainLineTaskTwinsCity_Text[20582]["Option531"]

tNpcGossip[20582]["Text5-4"] = {541}
tNpcGossip[20582]["tOption5-4"] = {541}
tNpcGossip[20582]["Text541"] = tMainLineTaskTwinsCity_Text[20582]["Text541"]
tNpcGossip[20582]["Option541"] = tMainLineTaskTwinsCity_Text[20582]["Option541"]

--锁妖阵眼-闲聊
tNpcGossip[20583]["Text1-1"] = {111,112}
tNpcGossip[20583]["tOption1-1"] = {111}
tNpcGossip[20583]["Text111"] = tMainLineTaskTwinsCity_Text[20583]["Text111"]
tNpcGossip[20583]["Text112"] = tMainLineTaskTwinsCity_Text[20583]["Text112"]
tNpcGossip[20583]["Option111"] = tMainLineTaskTwinsCity_Text[20583]["Option111"]

--锁妖阵眼-
tNpcGossip[20583]["Text1-2"] = {121,122}
tNpcGossip[20583]["tOption1-2"] = {121}
tNpcGossip[20583]["Text121"] = tMainLineTaskTwinsCity_Text[20583]["Text121"]
tNpcGossip[20583]["Text122"] = tMainLineTaskTwinsCity_Text[20583]["Text122"]
tNpcGossip[20583]["Option121"] = tMainLineTaskTwinsCity_Text[20583]["Option121"]
tNpcGossip[20583]["OptionFunc121"] = "MainLineTaskTwinsCity_TaskZhenYanFunc</N>20583"

tNpcGossip[20583]["Text2-1"] = {211,212,213}
tNpcGossip[20583]["tOption2-1"] = {211}
tNpcGossip[20583]["Text211"] = tMainLineTaskTwinsCity_Text[20583]["Text211"]
tNpcGossip[20583]["Text212"] = tMainLineTaskTwinsCity_Text[20583]["Text212"]
tNpcGossip[20583]["Text213"] = tMainLineTaskTwinsCity_Text[20583]["Text213"]
tNpcGossip[20583]["Option211"] = tMainLineTaskTwinsCity_Text[20583]["Option211"]

-- 全部锁妖阵都已点击完毕
tNpcGossip[20583]["Text1-3"] = {131}
tNpcGossip[20583]["tOption1-3"] = {131}
tNpcGossip[20583]["Text131"] = tMainLineTaskTwinsCity_Text[20583]["Text131"]
tNpcGossip[20583]["Option131"] = tMainLineTaskTwinsCity_Text[20583]["Option131"]
tNpcGossip[20583]["OptionFunc131"] = "NpcPosition_PathFind</N>20582"

tNpcGossip[20584] = tNpcGossip[20583] or DefaultNpc:new{}
tNpcGossip[20585] = tNpcGossip[20583] or DefaultNpc:new{}
tNpcGossip[20584]["OptionHidden"] = 1
tNpcGossip[20585]["OptionHidden"] = 1

--霸王叫天鸡-未变身状态
tNpcGossip[20586]["Text1-1"] = {111,112}
tNpcGossip[20586]["tOption1-1"] = {111}
tNpcGossip[20586]["Text111"] = tMainLineTaskTwinsCity_Text[20586]["Text111"]
tNpcGossip[20586]["Text112"] = tMainLineTaskTwinsCity_Text[20586]["Text112"]
tNpcGossip[20586]["Option111"] = tMainLineTaskTwinsCity_Text[20586]["Option111"]
tNpcGossip[20586]["OptionFunc111"] = "User_TransForm</N>13170</N>0</N>1</N>18000"


--霸王叫天鸡-变身状态中
tNpcGossip[20586]["Text1-2"] = {121,122}
tNpcGossip[20586]["tOption1-2"] = {121}
tNpcGossip[20586]["Text121"] = tMainLineTaskTwinsCity_Text[20586]["Text121"]
tNpcGossip[20586]["Text122"] = tMainLineTaskTwinsCity_Text[20586]["Text122"]
tNpcGossip[20586]["Option121"] = tMainLineTaskTwinsCity_Text[20586]["Option121"]
tNpcGossip[20586]["OptionPoint121"] = "2-1"
--霸王叫天鸡-喂，你能挪挪窝吗？
tNpcGossip[20586]["Text2-1"] = {211}
tNpcGossip[20586]["tOption2-1"] = {211}
tNpcGossip[20586]["Text211"] = tMainLineTaskTwinsCity_Text[20586]["Text211"]
tNpcGossip[20586]["Option211"] = tMainLineTaskTwinsCity_Text[20586]["Option211"]
tNpcGossip[20586]["OptionFunc211"] = "MainLineTaskTwinsCity_Question</N>20586"
--霸王叫天鸡-答题成功，叫天鸡对白
tNpcGossip[20586]["Text2-2"] = {221,222,223}
tNpcGossip[20586]["tOption2-2"] = {221}
tNpcGossip[20586]["Text221"] = tMainLineTaskTwinsCity_Text[20586]["Text221"]
tNpcGossip[20586]["Text222"] = tMainLineTaskTwinsCity_Text[20586]["Text222"]
tNpcGossip[20586]["Text223"] = tMainLineTaskTwinsCity_Text[20586]["Text223"]
tNpcGossip[20586]["Option221"] = tMainLineTaskTwinsCity_Text[20586]["Option221"]
tNpcGossip[20586]["OptionFunc221"] = "MainLineTaskTwinsCity_Cock</N>20586"
--霸王叫天鸡-答题失败，叫天鸡对白
tNpcGossip[20586]["Text2-3"] = {231,232}
tNpcGossip[20586]["tOption2-3"] = {231}
tNpcGossip[20586]["Text231"] = tMainLineTaskTwinsCity_Text[20586]["Text231"]
tNpcGossip[20586]["Text232"] = tMainLineTaskTwinsCity_Text[20586]["Text232"]
tNpcGossip[20586]["Option231"] = tMainLineTaskTwinsCity_Text[20586]["Option231"]
tNpcGossip[20586]["OptionFunc231"] = "MainLineTaskTwinsCity_Question</N>20586"

--霸王叫天鸡-问题1
tNpcGossip[20586]["Text3-1"] = {311,312,313}
tNpcGossip[20586]["tOption3-1"] = {311,312,313,314}
tNpcGossip[20586]["Text311"] = tMainLineTaskTwinsCity_Text[20586]["Text311"]
tNpcGossip[20586]["Text312"] = tMainLineTaskTwinsCity_Text[20586]["Text312"]
tNpcGossip[20586]["Text313"] = tMainLineTaskTwinsCity_Text[20586]["Text313"]
tNpcGossip[20586]["Option311"] = tMainLineTaskTwinsCity_Text[20586]["Option311"]
tNpcGossip[20586]["Option312"] = tMainLineTaskTwinsCity_Text[20586]["Option312"]
tNpcGossip[20586]["Option313"] = tMainLineTaskTwinsCity_Text[20586]["Option313"]
tNpcGossip[20586]["Option314"] = tMainLineTaskTwinsCity_Text[20586]["Option314"]
tNpcGossip[20586]["OptionPoint311"] = "2-3"
tNpcGossip[20586]["OptionPoint312"] = "2-3"
tNpcGossip[20586]["OptionPoint313"] = "3-2"
tNpcGossip[20586]["OptionPoint314"] = "2-3"

--霸王叫天鸡-问题2
tNpcGossip[20586]["Text3-2"] = {321,322,323}
tNpcGossip[20586]["tOption3-2"] = {321,322,323,324}
tNpcGossip[20586]["Text321"] = tMainLineTaskTwinsCity_Text[20586]["Text321"]
tNpcGossip[20586]["Text322"] = tMainLineTaskTwinsCity_Text[20586]["Text322"]
tNpcGossip[20586]["Text323"] = tMainLineTaskTwinsCity_Text[20586]["Text323"]
tNpcGossip[20586]["Option321"] = tMainLineTaskTwinsCity_Text[20586]["Option321"]
tNpcGossip[20586]["Option322"] = tMainLineTaskTwinsCity_Text[20586]["Option322"]
tNpcGossip[20586]["Option323"] = tMainLineTaskTwinsCity_Text[20586]["Option323"]
tNpcGossip[20586]["Option324"] = tMainLineTaskTwinsCity_Text[20586]["Option324"]
tNpcGossip[20586]["OptionPoint321"] = "3-3"
tNpcGossip[20586]["OptionPoint322"] = "2-3"
tNpcGossip[20586]["OptionPoint323"] = "2-3"
tNpcGossip[20586]["OptionPoint324"] = "2-3"

--霸王叫天鸡-问题3
tNpcGossip[20586]["Text3-3"] = {331,332,333}
tNpcGossip[20586]["tOption3-3"] = {331,332,333,334}
tNpcGossip[20586]["Text331"] = tMainLineTaskTwinsCity_Text[20586]["Text331"]
tNpcGossip[20586]["Text332"] = tMainLineTaskTwinsCity_Text[20586]["Text332"]
tNpcGossip[20586]["Text333"] = tMainLineTaskTwinsCity_Text[20586]["Text333"]
tNpcGossip[20586]["Option331"] = tMainLineTaskTwinsCity_Text[20586]["Option331"]
tNpcGossip[20586]["Option332"] = tMainLineTaskTwinsCity_Text[20586]["Option332"]
tNpcGossip[20586]["Option333"] = tMainLineTaskTwinsCity_Text[20586]["Option333"]
tNpcGossip[20586]["Option334"] = tMainLineTaskTwinsCity_Text[20586]["Option334"]
tNpcGossip[20586]["OptionPoint331"] = "2-3"
-- tNpcGossip[20586]["OptionPoint332"] = "2-2"
tNpcGossip[20586]["OptionPoint333"] = "2-3"
tNpcGossip[20586]["OptionPoint334"] = "2-3"
tNpcGossip[20586]["OptionFunc332"] = "MainLineTaskTwinsCity_Cock1</N>20586"








--日常任务大使-已接任务4，对白
tNpcGossip[20587]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20587]["tOption1-1"] = {111}
tNpcGossip[20587]["Text111"] = tMainLineTaskTwinsCity_Text[20587]["Text111"]
tNpcGossip[20587]["Text112"] = tMainLineTaskTwinsCity_Text[20587]["Text112"]
tNpcGossip[20587]["Text113"] = tMainLineTaskTwinsCity_Text[20587]["Text113"]
tNpcGossip[20587]["Text114"] = tMainLineTaskTwinsCity_Text[20587]["Text114"]
tNpcGossip[20587]["Text115"] = tMainLineTaskTwinsCity_Text[20587]["Text115"]
tNpcGossip[20587]["Text116"] = tMainLineTaskTwinsCity_Text[20587]["Text116"]
tNpcGossip[20587]["Option111"] = tMainLineTaskTwinsCity_Text[20587]["Option111"]
tNpcGossip[20587]["OptionFunc111"] = "MainLineTaskTwinsCity_Task6773_ItemChk</N>20587"

--日常任务大使-没有纸条
tNpcGossip[20587]["Text1-2"] = {121}
tNpcGossip[20587]["tOption1-2"] = {121}
tNpcGossip[20587]["Text121"] = tMainLineTaskTwinsCity_Text[20587]["Text121"]
tNpcGossip[20587]["Option121"] = tMainLineTaskTwinsCity_Text[20587]["Option121"]
--日常任务大使-成功
tNpcGossip[20587]["Text1-3"] = {131,132,133}
tNpcGossip[20587]["tOption1-3"] = {131}
tNpcGossip[20587]["Text131"] = tMainLineTaskTwinsCity_Text[20587]["Text131"]
tNpcGossip[20587]["Text132"] = tMainLineTaskTwinsCity_Text[20587]["Text132"]
tNpcGossip[20587]["Text133"] = tMainLineTaskTwinsCity_Text[20587]["Text133"]
tNpcGossip[20587]["Option131"] = tMainLineTaskTwinsCity_Text[20587]["Option131"]
tNpcGossip[20587]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6773</N>20587"

tNpcGossip[20587]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[20587]["tOption1-4"] = {141}
tNpcGossip[20587]["Text141"] = tMainLineTaskTwinsCity_Text[20587]["Text141"]
tNpcGossip[20587]["Text142"] = tMainLineTaskTwinsCity_Text[20587]["Text142"]
tNpcGossip[20587]["Text143"] = tMainLineTaskTwinsCity_Text[20587]["Text143"]
tNpcGossip[20587]["Text144"] = tMainLineTaskTwinsCity_Text[20587]["Text144"]
tNpcGossip[20587]["Text145"] = tMainLineTaskTwinsCity_Text[20587]["Text145"]
tNpcGossip[20587]["Text146"] = tMainLineTaskTwinsCity_Text[20587]["Text146"]
tNpcGossip[20587]["Option141"] = tMainLineTaskTwinsCity_Text[20587]["Option141"]

--商号授号特使-闲聊对白
tNpcGossip[20588]["Text1-1"] = {111,112}
tNpcGossip[20588]["tOption1-1"] = {111}
tNpcGossip[20588]["Text111"] = tMainLineTaskTwinsCity_Text[20588]["Text111"]
tNpcGossip[20588]["Text112"] = tMainLineTaskTwinsCity_Text[20588]["Text112"]
tNpcGossip[20588]["Option111"] = tMainLineTaskTwinsCity_Text[20588]["Option111"]
--商号授号特使-已接任务5，首次对话
tNpcGossip[20588]["Text1-2"] = {121,122}
tNpcGossip[20588]["tOption1-2"] = {121}
tNpcGossip[20588]["Text121"] = tMainLineTaskTwinsCity_Text[20588]["Text121"]
tNpcGossip[20588]["Text122"] = tMainLineTaskTwinsCity_Text[20588]["Text122"]
tNpcGossip[20588]["Option121"] = tMainLineTaskTwinsCity_Text[20588]["Option121"]
tNpcGossip[20588]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6774_ItemChk</N>20588"
--商号授号特使-失败，身上没有纸条
tNpcGossip[20588]["Text1-3"] = {131,132,133}
tNpcGossip[20588]["tOption1-3"] = {131}
tNpcGossip[20588]["Text131"] = tMainLineTaskTwinsCity_Text[20588]["Text131"]
tNpcGossip[20588]["Text132"] = tMainLineTaskTwinsCity_Text[20588]["Text132"]
tNpcGossip[20588]["Text133"] = tMainLineTaskTwinsCity_Text[20588]["Text133"]
tNpcGossip[20588]["Option131"] = tMainLineTaskTwinsCity_Text[20588]["Option131"]
tNpcGossip[20588]["OptionFunc131"] = "NpcPosition_PathFind</N>20582"

--商号授号特使-成功
tNpcGossip[20588]["Text1-4"] = {141,142,143}
tNpcGossip[20588]["tOption1-4"] = {141}
tNpcGossip[20588]["Text141"] = tMainLineTaskTwinsCity_Text[20588]["Text141"]
tNpcGossip[20588]["Text142"] = tMainLineTaskTwinsCity_Text[20588]["Text142"]
tNpcGossip[20588]["Text143"] = tMainLineTaskTwinsCity_Text[20588]["Text143"]
tNpcGossip[20588]["Option141"] = tMainLineTaskTwinsCity_Text[20588]["Option141"]
tNpcGossip[20588]["OptionPoint141"] = "2-1"
--商号授号特使-已接任务5过程中
tNpcGossip[20588]["Text1-5"] = {151}
tNpcGossip[20588]["tOption1-5"] = {151}
tNpcGossip[20588]["Text151"] = tMainLineTaskTwinsCity_Text[20588]["Text151"]
tNpcGossip[20588]["Option151"] = tMainLineTaskTwinsCity_Text[20588]["Option151"]


--商号授号特使-完成任务对白
tNpcGossip[20588]["Text1-6"] = {161,162,163}
tNpcGossip[20588]["tOption1-6"] = {161}
tNpcGossip[20588]["Text161"] = tMainLineTaskTwinsCity_Text[20588]["Text161"]
tNpcGossip[20588]["Text162"] = tMainLineTaskTwinsCity_Text[20588]["Text162"]
tNpcGossip[20588]["Text163"] = tMainLineTaskTwinsCity_Text[20588]["Text163"]
tNpcGossip[20588]["Option161"] = tMainLineTaskTwinsCity_Text[20588]["Option161"]
tNpcGossip[20588]["OptionPoint161"] = "3-1"

tNpcGossip[20588]["Text1-7"] = {171,172}
tNpcGossip[20588]["tOption1-7"] = {171,172}
tNpcGossip[20588]["Text171"] = tMainLineTaskTwinsCity_Text[20588]["Text171"]
tNpcGossip[20588]["Text172"] = tMainLineTaskTwinsCity_Text[20588]["Text172"]
tNpcGossip[20588]["Option171"] = tMainLineTaskTwinsCity_Text[20588]["Option171"]
tNpcGossip[20588]["Option172"] = tMainLineTaskTwinsCity_Text[20588]["Option172"]
tNpcGossip[20588]["OptionFunc171"] = "MainLineTaskTwinsCity_Task6774_TaskItem</N>20588"
tNpcGossip[20588]["OptionChkFunc171"] = function ()
	return not Item_ChkItem(tMainLineTaskTwinsCity_Cont[6774]["TaskItem"])
end


tNpcGossip[20588]["Text2-1"] = {211,212}
tNpcGossip[20588]["tOption2-1"] = {211}
tNpcGossip[20588]["Text211"] = tMainLineTaskTwinsCity_Text[20588]["Text211"]
tNpcGossip[20588]["Text212"] = tMainLineTaskTwinsCity_Text[20588]["Text212"]
tNpcGossip[20588]["Option211"] = tMainLineTaskTwinsCity_Text[20588]["Option211"]
tNpcGossip[20588]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6774_1</N>20588"
--商号授号特使-这……唉，好吧！
tNpcGossip[20588]["Text2-2"] = {221,222,223}
tNpcGossip[20588]["tOption2-2"] = {221}
tNpcGossip[20588]["Text221"] = tMainLineTaskTwinsCity_Text[20588]["Text221"]
tNpcGossip[20588]["Text222"] = tMainLineTaskTwinsCity_Text[20588]["Text222"]
tNpcGossip[20588]["Text223"] = tMainLineTaskTwinsCity_Text[20588]["Text223"]
tNpcGossip[20588]["Option221"] = tMainLineTaskTwinsCity_Text[20588]["Option221"]
tNpcGossip[20588]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6774_1</N>20588"

--商号授号特使-这究竟是什么意思？
tNpcGossip[20588]["Text3-1"] = {311,312,313}
tNpcGossip[20588]["tOption3-1"] = {311}
tNpcGossip[20588]["Text311"] = tMainLineTaskTwinsCity_Text[20588]["Text311"]
tNpcGossip[20588]["Text312"] = tMainLineTaskTwinsCity_Text[20588]["Text312"]
tNpcGossip[20588]["Text313"] = tMainLineTaskTwinsCity_Text[20588]["Text313"]
tNpcGossip[20588]["Option311"] = tMainLineTaskTwinsCity_Text[20588]["Option311"]
tNpcGossip[20588]["OptionFunc311"] = "MainLineTaskTwinsCity_Task6774</N>20588"

tNpcGossip[20588]["Text3-2"] = {321}
tNpcGossip[20588]["tOption3-2"] = {321}
tNpcGossip[20588]["Text321"] = tMainLineTaskTwinsCity_Text[20588]["Text321"]
tNpcGossip[20588]["Option321"] = tMainLineTaskTwinsCity_Text[20588]["Option321"]

tNpcGossip[20588]["Text5-1"] = {511,512}
tNpcGossip[20588]["tOption5-1"] = {511}
tNpcGossip[20588]["Text511"] = tMainLineTaskTwinsCity_Text[20588]["Text511"]
tNpcGossip[20588]["Text512"] = tMainLineTaskTwinsCity_Text[20588]["Text512"]
tNpcGossip[20588]["Option511"] = tMainLineTaskTwinsCity_Text[20588]["Option511"]
tNpcGossip[20588]["Text5-2"] = {521,522}
tNpcGossip[20588]["tOption5-2"] = {521}
tNpcGossip[20588]["Text521"] = tMainLineTaskTwinsCity_Text[20588]["Text521"]
tNpcGossip[20588]["Text522"] = tMainLineTaskTwinsCity_Text[20588]["Text522"]
tNpcGossip[20588]["Option521"] = tMainLineTaskTwinsCity_Text[20588]["Option521"]

--九门提督-闲聊对白
tNpcGossip[20589]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20589]["tOption1-1"] = {111}
tNpcGossip[20589]["Text111"] = tMainLineTaskTwinsCity_Text[20589]["Text111"]
tNpcGossip[20589]["Text112"] = tMainLineTaskTwinsCity_Text[20589]["Text112"]
tNpcGossip[20589]["Text113"] = tMainLineTaskTwinsCity_Text[20589]["Text113"]
tNpcGossip[20589]["Text114"] = tMainLineTaskTwinsCity_Text[20589]["Text114"]
tNpcGossip[20589]["Text115"] = tMainLineTaskTwinsCity_Text[20589]["Text115"]
tNpcGossip[20589]["Text116"] = tMainLineTaskTwinsCity_Text[20589]["Text116"]
tNpcGossip[20589]["Option111"] = tMainLineTaskTwinsCity_Text[20589]["Option111"]
--九门提督-已接任务6，初次对话
tNpcGossip[20589]["Text2-1"] = {211,212}
tNpcGossip[20589]["tOption2-1"] = {211}
tNpcGossip[20589]["Text211"] = tMainLineTaskTwinsCity_Text[20589]["Text211"]
tNpcGossip[20589]["Text212"] = tMainLineTaskTwinsCity_Text[20589]["Text212"]
tNpcGossip[20589]["Option211"] = tMainLineTaskTwinsCity_Text[20589]["Option211"]
tNpcGossip[20589]["OptionPoint211"] = "2-2"
--九门提督-魔族要刺杀镇国将军！
tNpcGossip[20589]["Text2-2"] = {221,222,223}
tNpcGossip[20589]["tOption2-2"] = {221}
tNpcGossip[20589]["Text221"] = tMainLineTaskTwinsCity_Text[20589]["Text221"]
tNpcGossip[20589]["Text222"] = tMainLineTaskTwinsCity_Text[20589]["Text222"]
tNpcGossip[20589]["Text223"] = tMainLineTaskTwinsCity_Text[20589]["Text223"]
tNpcGossip[20589]["Option221"] = tMainLineTaskTwinsCity_Text[20589]["Option221"]
tNpcGossip[20589]["OptionPoint221"] = "2-3"
--九门提督-有刺客！
tNpcGossip[20589]["Text2-3"] = {231}
tNpcGossip[20589]["tOption2-3"] = {231}
tNpcGossip[20589]["Text231"] = tMainLineTaskTwinsCity_Text[20589]["Text231"]
tNpcGossip[20589]["Option231"] = tMainLineTaskTwinsCity_Text[20589]["Option231"]
tNpcGossip[20589]["OptionFunc231"] = "MainLineTask_EnterChk</N>20589"
--九门提督-已接任务6，未击败刺客
tNpcGossip[20589]["Text2-4"] = {241}
tNpcGossip[20589]["tOption2-4"] = {241}
tNpcGossip[20589]["Text241"] = tMainLineTaskTwinsCity_Text[20589]["Text241"]
tNpcGossip[20589]["Option241"] = tMainLineTaskTwinsCity_Text[20589]["Option241"]
tNpcGossip[20589]["OptionFunc241"] = "MainLineTask_EnterChk</N>20589"
--九门提督-已接任务6，已击败刺客
tNpcGossip[20589]["Text2-5"] = {251,252}
tNpcGossip[20589]["tOption2-5"] = {251}
tNpcGossip[20589]["Text251"] = tMainLineTaskTwinsCity_Text[20589]["Text251"]
tNpcGossip[20589]["Text252"] = tMainLineTaskTwinsCity_Text[20589]["Text252"]
tNpcGossip[20589]["Option251"] = tMainLineTaskTwinsCity_Text[20589]["Option251"]
tNpcGossip[20589]["OptionFunc251"] = "MainLineTaskTwinsCity_Task6775</N>20589"
--九门提督-进入副本前检查
tNpcGossip[20589]["Text2-6"] = {261}
tNpcGossip[20589]["tOption2-6"] = {261}
tNpcGossip[20589]["Text261"] = tMainLineTaskTwinsCity_Text[20589]["Text261"]
tNpcGossip[20589]["Option261"] = tMainLineTaskTwinsCity_Text[20589]["Option261"]

--镇国将军-闲聊对白
tNpcGossip[20590]["Text1-1"] = {111,112}
tNpcGossip[20590]["tOption1-1"] = {111}
tNpcGossip[20590]["Text111"] = tMainLineTaskTwinsCity_Text[20590]["Text111"]
tNpcGossip[20590]["Text112"] = tMainLineTaskTwinsCity_Text[20590]["Text112"]
tNpcGossip[20590]["Option111"] = tMainLineTaskTwinsCity_Text[20590]["Option111"]
--镇国将军-任务7进行中，初次对白
tNpcGossip[20590]["Text1-2"] = {121,122}
tNpcGossip[20590]["tOption1-2"] = {121}
tNpcGossip[20590]["Text121"] = tMainLineTaskTwinsCity_Text[20590]["Text121"]
tNpcGossip[20590]["Text122"] = tMainLineTaskTwinsCity_Text[20590]["Text122"]
tNpcGossip[20590]["Option121"] = tMainLineTaskTwinsCity_Text[20590]["Option121"]
tNpcGossip[20590]["OptionPoint121"] = "2-1"
--镇国将军-任务8进行中，未完成任务
tNpcGossip[20590]["Text1-3"] = {131,132}
tNpcGossip[20590]["tOption1-3"] = {131}
tNpcGossip[20590]["Text131"] = tMainLineTaskTwinsCity_Text[20590]["Text131"]
tNpcGossip[20590]["Text132"] = tMainLineTaskTwinsCity_Text[20590]["Text132"]
tNpcGossip[20590]["Option131"] = tMainLineTaskTwinsCity_Text[20590]["Option131"]
tNpcGossip[20590]["OptionFunc131"] = "MainLineTaskTwinsCity_DeteTaskFinishText"

--镇国将军-这都是我该做的
tNpcGossip[20590]["Text2-1"] = {211,212}
tNpcGossip[20590]["tOption2-1"] = {211}
tNpcGossip[20590]["Text211"] = tMainLineTaskTwinsCity_Text[20590]["Text211"]
tNpcGossip[20590]["Text212"] = tMainLineTaskTwinsCity_Text[20590]["Text212"]
tNpcGossip[20590]["Option211"] = tMainLineTaskTwinsCity_Text[20590]["Option211"]
tNpcGossip[20590]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6776</N>20590"

--双龙城总兵-闲聊对白
tNpcGossip[20591]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20591]["tOption1-1"] = {111}
tNpcGossip[20591]["Text111"] = tMainLineTaskTwinsCity_Text[20591]["Text111"]
tNpcGossip[20591]["Text112"] = tMainLineTaskTwinsCity_Text[20591]["Text112"]
tNpcGossip[20591]["Text113"] = tMainLineTaskTwinsCity_Text[20591]["Text113"]
tNpcGossip[20591]["Text114"] = tMainLineTaskTwinsCity_Text[20591]["Text114"]
tNpcGossip[20591]["Text115"] = tMainLineTaskTwinsCity_Text[20591]["Text115"]
tNpcGossip[20591]["Option111"] = tMainLineTaskTwinsCity_Text[20591]["Option111"]
--双龙城总兵-任务8进行中
tNpcGossip[20591]["Text1-2"] = {121,122,123}
tNpcGossip[20591]["tOption1-2"] = {121,122,123,124,125,126,128}
tNpcGossip[20591]["Text121"] = tMainLineTaskTwinsCity_Text[20591]["Text121"]
tNpcGossip[20591]["Text122"] = tMainLineTaskTwinsCity_Text[20591]["Text122"]
tNpcGossip[20591]["Text123"] = tMainLineTaskTwinsCity_Text[20591]["Text123"]
tNpcGossip[20591]["Option121"] = tMainLineTaskTwinsCity_Text[20591]["Option121"]
tNpcGossip[20591]["Option122"] = tMainLineTaskTwinsCity_Text[20591]["Option122"]
tNpcGossip[20591]["Option123"] = tMainLineTaskTwinsCity_Text[20591]["Option123"]
tNpcGossip[20591]["Option124"] = tMainLineTaskTwinsCity_Text[20591]["Option124"]
tNpcGossip[20591]["Option125"] = tMainLineTaskTwinsCity_Text[20591]["Option125"]
tNpcGossip[20591]["Option126"] = tMainLineTaskTwinsCity_Text[20591]["Option126"]
tNpcGossip[20591]["Option127"] = tMainLineTaskTwinsCity_Text[20591]["Option127"]
tNpcGossip[20591]["Option128"] = tMainLineTaskTwinsCity_Text[20591]["Option128"]
tNpcGossip[20591]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>2"
tNpcGossip[20591]["OptionFunc122"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
tNpcGossip[20591]["OptionFunc123"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
tNpcGossip[20591]["OptionFunc124"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
tNpcGossip[20591]["OptionFunc125"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
tNpcGossip[20591]["OptionFunc126"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
tNpcGossip[20591]["OptionFunc127"] = "MainLineTaskTwinsCity_Task6777_1</N>20591</N>1"
--双龙城总兵-奸细就是防具店老板
tNpcGossip[20591]["Text2-1"] = {211,212,213,214}
tNpcGossip[20591]["tOption2-1"] = {211}
tNpcGossip[20591]["Text211"] = tMainLineTaskTwinsCity_Text[20591]["Text211"]
tNpcGossip[20591]["Text212"] = tMainLineTaskTwinsCity_Text[20591]["Text212"]
tNpcGossip[20591]["Text213"] = tMainLineTaskTwinsCity_Text[20591]["Text213"]
tNpcGossip[20591]["Text214"] = tMainLineTaskTwinsCity_Text[20591]["Text214"]
tNpcGossip[20591]["Option211"] = tMainLineTaskTwinsCity_Text[20591]["Option211"]
tNpcGossip[20591]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6777</N>20591"
--双龙城总兵-奸细就是防具店老板
tNpcGossip[20591]["Text2-2"] = {221,222,223}
tNpcGossip[20591]["tOption2-2"] = {221}
tNpcGossip[20591]["Text221"] = tMainLineTaskTwinsCity_Text[20591]["Text221"]
tNpcGossip[20591]["Text222"] = tMainLineTaskTwinsCity_Text[20591]["Text222"]
tNpcGossip[20591]["Text223"] = tMainLineTaskTwinsCity_Text[20591]["Text223"]
tNpcGossip[20591]["Option221"] = tMainLineTaskTwinsCity_Text[20591]["Option221"]
tNpcGossip[20591]["OptionPoint221"] = "1-2"




tNpcGossip[20593]["Text1-1"] = {111,112,113,114}
tNpcGossip[20593]["tOption1-1"] = {111}
tNpcGossip[20593]["Text111"] = tMainLineTaskTwinsCity_Text[20593]["Text111"]
tNpcGossip[20593]["Text112"] = tMainLineTaskTwinsCity_Text[20593]["Text112"]
tNpcGossip[20593]["Text113"] = tMainLineTaskTwinsCity_Text[20593]["Text113"]
tNpcGossip[20593]["Text114"] = tMainLineTaskTwinsCity_Text[20593]["Text114"]
tNpcGossip[20593]["Option111"] = tMainLineTaskTwinsCity_Text[20593]["Option111"]

tNpcGossip[20593]["Text1-2"] = {121,122,123,124}
tNpcGossip[20593]["tOption1-2"] = {121}
tNpcGossip[20593]["Text121"] = tMainLineTaskTwinsCity_Text[20593]["Text121"]
tNpcGossip[20593]["Text122"] = tMainLineTaskTwinsCity_Text[20593]["Text122"]
tNpcGossip[20593]["Text123"] = tMainLineTaskTwinsCity_Text[20593]["Text123"]
tNpcGossip[20593]["Text124"] = tMainLineTaskTwinsCity_Text[20593]["Text124"]
tNpcGossip[20593]["Option121"] = tMainLineTaskTwinsCity_Text[20593]["Option121"]
tNpcGossip[20593]["OptionFunc121"] = "MainLineTaskTwinsCity_Npc_20593_1</N>%s"

tNpcGossip[20593]["Text2-1"] = {211,212,213,214}
tNpcGossip[20593]["tOption2-1"] = {211}
tNpcGossip[20593]["Text211"] = tMainLineTaskTwinsCity_Text[20593]["Text211"]
tNpcGossip[20593]["Text212"] = tMainLineTaskTwinsCity_Text[20593]["Text212"]
tNpcGossip[20593]["Text213"] = tMainLineTaskTwinsCity_Text[20593]["Text213"]
tNpcGossip[20593]["Text214"] = tMainLineTaskTwinsCity_Text[20593]["Text214"]
tNpcGossip[20593]["Option211"] = tMainLineTaskTwinsCity_Text[20593]["Option211"]
tNpcGossip[20593]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6774_SetFlag</N>%s"

--月老-未接任务，NPC对白
tNpcGossip[20593]["Text4-1"] = {411,412,413}
tNpcGossip[20593]["tOption4-1"] = {411}
tNpcGossip[20593]["Text411"] = tMainLineTaskTwinsCity_Text[20593]["Text411"]
tNpcGossip[20593]["Text412"] = tMainLineTaskTwinsCity_Text[20593]["Text412"]
tNpcGossip[20593]["Text413"] = tMainLineTaskTwinsCity_Text[20593]["Text413"]
tNpcGossip[20593]["Option411"] = tMainLineTaskTwinsCity_Text[20593]["Option411"]
tNpcGossip[20593]["OptionPoint411"] = "4-2"

tNpcGossip[20593]["Text4-2"] = {421,422,423}
tNpcGossip[20593]["tOption4-2"] = {421}
tNpcGossip[20593]["Text421"] = tMainLineTaskTwinsCity_Text[20593]["Text421"]
tNpcGossip[20593]["Text422"] = tMainLineTaskTwinsCity_Text[20593]["Text422"]
tNpcGossip[20593]["Text423"] = tMainLineTaskTwinsCity_Text[20593]["Text423"]
tNpcGossip[20593]["Option421"] = tMainLineTaskTwinsCity_Text[20593]["Option421"]
tNpcGossip[20593]["OptionPoint421"] = "4-3"

tNpcGossip[20593]["Text4-3"] = {431,432,433}
tNpcGossip[20593]["tOption4-3"] = {431}
tNpcGossip[20593]["Text431"] = tMainLineTaskTwinsCity_Text[20593]["Text431"]
tNpcGossip[20593]["Text432"] = tMainLineTaskTwinsCity_Text[20593]["Text432"]
tNpcGossip[20593]["Text433"] = tMainLineTaskTwinsCity_Text[20593]["Text433"]
tNpcGossip[20593]["Option431"] = tMainLineTaskTwinsCity_Text[20593]["Option431"]
tNpcGossip[20593]["OptionPoint431"] = "4-4"

tNpcGossip[20593]["Text4-4"] = {441,442,443,444}
tNpcGossip[20593]["tOption4-4"] = {441}
tNpcGossip[20593]["Text441"] = tMainLineTaskTwinsCity_Text[20593]["Text441"]
tNpcGossip[20593]["Text442"] = tMainLineTaskTwinsCity_Text[20593]["Text442"]
tNpcGossip[20593]["Text443"] = tMainLineTaskTwinsCity_Text[20593]["Text443"]
tNpcGossip[20593]["Text444"] = tMainLineTaskTwinsCity_Text[20593]["Text444"]
tNpcGossip[20593]["Option441"] = tMainLineTaskTwinsCity_Text[20593]["Option441"]
tNpcGossip[20593]["OptionPoint441"] = "4-5"

tNpcGossip[20593]["Text4-5"] = {451,452,453}
tNpcGossip[20593]["tOption4-5"] = {451,452}
tNpcGossip[20593]["Text451"] = tMainLineTaskTwinsCity_Text[20593]["Text451"]
tNpcGossip[20593]["Text452"] = tMainLineTaskTwinsCity_Text[20593]["Text452"]
tNpcGossip[20593]["Text453"] = tMainLineTaskTwinsCity_Text[20593]["Text453"]
tNpcGossip[20593]["Option451"] = tMainLineTaskTwinsCity_Text[20593]["Option451"]
tNpcGossip[20593]["Option452"] = tMainLineTaskTwinsCity_Text[20593]["Option452"]
tNpcGossip[20593]["OptionPoint451"] = "4-6"
tNpcGossip[20593]["OptionPoint452"] = "4-7"

tNpcGossip[20593]["Text4-6"] = {461,462,463,464,465}
tNpcGossip[20593]["tOption4-6"] = {461}
tNpcGossip[20593]["Text461"] = tMainLineTaskTwinsCity_Text[20593]["Text461"]
tNpcGossip[20593]["Text462"] = tMainLineTaskTwinsCity_Text[20593]["Text462"]
tNpcGossip[20593]["Text463"] = tMainLineTaskTwinsCity_Text[20593]["Text463"]
tNpcGossip[20593]["Text464"] = tMainLineTaskTwinsCity_Text[20593]["Text464"]
tNpcGossip[20593]["Text465"] = tMainLineTaskTwinsCity_Text[20593]["Text465"]
tNpcGossip[20593]["Option461"] = tMainLineTaskTwinsCity_Text[20593]["Option461"]
-- tNpcGossip[20593]["OptionFunc461"] = "MainLineTaskTwinsCity_Task6782</N>20593"

tNpcGossip[20593]["Text4-7"] = {471,472,473,474}
tNpcGossip[20593]["tOption4-7"] = {471}
tNpcGossip[20593]["Text471"] = tMainLineTaskTwinsCity_Text[20593]["Text471"]
tNpcGossip[20593]["Text472"] = tMainLineTaskTwinsCity_Text[20593]["Text472"]
tNpcGossip[20593]["Text473"] = tMainLineTaskTwinsCity_Text[20593]["Text473"]
tNpcGossip[20593]["Text474"] = tMainLineTaskTwinsCity_Text[20593]["Text474"]
tNpcGossip[20593]["Option471"] = tMainLineTaskTwinsCity_Text[20593]["Option471"]
tNpcGossip[20593]["OptionPoint471"] = "4-8"

tNpcGossip[20593]["Text4-8"] = {481,482,483}
tNpcGossip[20593]["tOption4-8"] = {481}
tNpcGossip[20593]["Text481"] = tMainLineTaskTwinsCity_Text[20593]["Text481"]
tNpcGossip[20593]["Text482"] = tMainLineTaskTwinsCity_Text[20593]["Text482"]
tNpcGossip[20593]["Text483"] = tMainLineTaskTwinsCity_Text[20593]["Text483"]
tNpcGossip[20593]["Option481"] = tMainLineTaskTwinsCity_Text[20593]["Option481"]
tNpcGossip[20593]["OptionFunc481"] = "MainLineTaskTwinsCity_Task6782</N>20593"




tNpcGossip[20594] = tNpcGossip[20593] or DefaultNpc:new{}
tNpcGossip[20595] = tNpcGossip[20593] or DefaultNpc:new{}
tNpcGossip[20596] = tNpcGossip[20593] or DefaultNpc:new{}
tNpcGossip[20597] = tNpcGossip[20593] or DefaultNpc:new{}
tNpcGossip[20594]["OptionHidden"] = 1
tNpcGossip[20595]["OptionHidden"] = 1
tNpcGossip[20596]["OptionHidden"] = 1
tNpcGossip[20597]["OptionHidden"] = 1




--【竞技】威武大将军
tNpcGossip[20597]["Text3-1"] = {311,312,313}
tNpcGossip[20597]["tOption3-1"] = {311,312}
tNpcGossip[20597]["Text311"] = tMainLineTaskTwinsCity_Text[20597]["Text311"]
tNpcGossip[20597]["Text312"] = tMainLineTaskTwinsCity_Text[20597]["Text312"]
tNpcGossip[20597]["Text313"] = tMainLineTaskTwinsCity_Text[20597]["Text313"]
tNpcGossip[20597]["Option311"] = tMainLineTaskTwinsCity_Text[20597]["Option311"]
tNpcGossip[20597]["Option312"] = tMainLineTaskTwinsCity_Text[20597]["Option312"]
tNpcGossip[20597]["OptionPoint311"] = "3-4"
--【竞技】威武大将军-玩家未完成任务
tNpcGossip[20597]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[20597]["tOption3-2"] = {321}
tNpcGossip[20597]["Text321"] = tMainLineTaskTwinsCity_Text[20597]["Text321"]
tNpcGossip[20597]["Text322"] = tMainLineTaskTwinsCity_Text[20597]["Text322"]
tNpcGossip[20597]["Text323"] = tMainLineTaskTwinsCity_Text[20597]["Text323"]
tNpcGossip[20597]["Text324"] = tMainLineTaskTwinsCity_Text[20597]["Text324"]
tNpcGossip[20597]["Text325"] = tMainLineTaskTwinsCity_Text[20597]["Text325"]
tNpcGossip[20597]["Option321"] = tMainLineTaskTwinsCity_Text[20597]["Option321"]
--【竞技】威武大将军-玩家击败怪物属性NPC
tNpcGossip[20597]["Text3-3"] = {331,332,333,334}
tNpcGossip[20597]["tOption3-3"] = {331}
tNpcGossip[20597]["Text331"] = tMainLineTaskTwinsCity_Text[20597]["Text331"]
tNpcGossip[20597]["Text332"] = tMainLineTaskTwinsCity_Text[20597]["Text332"]
tNpcGossip[20597]["Text333"] = tMainLineTaskTwinsCity_Text[20597]["Text333"]
tNpcGossip[20597]["Text334"] = tMainLineTaskTwinsCity_Text[20597]["Text334"]
tNpcGossip[20597]["Option331"] = tMainLineTaskTwinsCity_Text[20597]["Option331"]
tNpcGossip[20597]["OptionFunc331"] = "MainLineTaskTwinsCity_Task6780</N>20597"
--【竞技】威武大将军-为何不去阻止他们？
tNpcGossip[20597]["Text3-4"] = {341,342,343}
tNpcGossip[20597]["tOption3-4"] = {341,342}
tNpcGossip[20597]["Text341"] = tMainLineTaskTwinsCity_Text[20597]["Text341"]
tNpcGossip[20597]["Text342"] = tMainLineTaskTwinsCity_Text[20597]["Text342"]
tNpcGossip[20597]["Text343"] = tMainLineTaskTwinsCity_Text[20597]["Text343"]
tNpcGossip[20597]["Option341"] = tMainLineTaskTwinsCity_Text[20597]["Option341"]
tNpcGossip[20597]["Option342"] = tMainLineTaskTwinsCity_Text[20597]["Option342"]
tNpcGossip[20597]["OptionFunc341"] = "MainLineTaskTwinsCity_Task6780_1</N>20597"
--【竞技】威武大将军-玩家击败怪物属性NPC
tNpcGossip[20597]["Text3-5"] = {351,352,353}
tNpcGossip[20597]["tOption3-5"] = {351}
tNpcGossip[20597]["Text351"] = tMainLineTaskTwinsCity_Text[20597]["Text351"]
tNpcGossip[20597]["Text352"] = tMainLineTaskTwinsCity_Text[20597]["Text352"]
tNpcGossip[20597]["Text353"] = tMainLineTaskTwinsCity_Text[20597]["Text353"]
tNpcGossip[20597]["Option351"] = tMainLineTaskTwinsCity_Text[20597]["Option351"]

--【外套加工】薛夫人-未接任务对白
tNpcGossip[20679]["Text1-1"] = {111,112,113,114}
tNpcGossip[20679]["tOption1-1"] = {111}
tNpcGossip[20679]["Text111"] = tMainLineTaskTwinsCity_Text[20679]["Text111"]
tNpcGossip[20679]["Text112"] = tMainLineTaskTwinsCity_Text[20679]["Text112"]
tNpcGossip[20679]["Text113"] = tMainLineTaskTwinsCity_Text[20679]["Text113"]
tNpcGossip[20679]["Text114"] = tMainLineTaskTwinsCity_Text[20679]["Text114"]
tNpcGossip[20679]["Option111"] = tMainLineTaskTwinsCity_Text[20679]["Option111"]
tNpcGossip[20679]["OptionPoint111"] = "1-2"

tNpcGossip[20679]["Text1-2"] = {121,122,123,124}
tNpcGossip[20679]["tOption1-2"] = {121}
tNpcGossip[20679]["Text121"] = tMainLineTaskTwinsCity_Text[20679]["Text121"]
tNpcGossip[20679]["Text122"] = tMainLineTaskTwinsCity_Text[20679]["Text122"]
tNpcGossip[20679]["Text123"] = tMainLineTaskTwinsCity_Text[20679]["Text123"]
tNpcGossip[20679]["Text124"] = tMainLineTaskTwinsCity_Text[20679]["Text124"]
tNpcGossip[20679]["Option121"] = tMainLineTaskTwinsCity_Text[20679]["Option121"]
tNpcGossip[20679]["OptionPoint121"] = "1-3"

tNpcGossip[20679]["Text1-3"] = {131,132,133,134}
tNpcGossip[20679]["tOption1-3"] = {131}
tNpcGossip[20679]["Text131"] = tMainLineTaskTwinsCity_Text[20679]["Text131"]
tNpcGossip[20679]["Text132"] = tMainLineTaskTwinsCity_Text[20679]["Text132"]
tNpcGossip[20679]["Text133"] = tMainLineTaskTwinsCity_Text[20679]["Text133"]
tNpcGossip[20679]["Text134"] = tMainLineTaskTwinsCity_Text[20679]["Text134"]
tNpcGossip[20679]["Option131"] = tMainLineTaskTwinsCity_Text[20679]["Option131"]
tNpcGossip[20679]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6781_1</N>20679"

--【外套加工】薛夫人-玩家已接任务，未完成
tNpcGossip[20679]["Text1-4"] = {141,142,143,144}
tNpcGossip[20679]["tOption1-4"] = {141}
tNpcGossip[20679]["Text141"] = tMainLineTaskTwinsCity_Text[20679]["Text141"]
tNpcGossip[20679]["Text142"] = tMainLineTaskTwinsCity_Text[20679]["Text142"]
tNpcGossip[20679]["Text143"] = tMainLineTaskTwinsCity_Text[20679]["Text143"]
tNpcGossip[20679]["Text144"] = tMainLineTaskTwinsCity_Text[20679]["Text144"]
tNpcGossip[20679]["Option141"] = tMainLineTaskTwinsCity_Text[20679]["Option141"]

--【外套加工】薛夫人-玩家已与徐素素进行过第1次对话
tNpcGossip[20679]["Text1-5"] = {151,152,153}
tNpcGossip[20679]["tOption1-5"] = {151}
tNpcGossip[20679]["Text151"] = tMainLineTaskTwinsCity_Text[20679]["Text151"]
tNpcGossip[20679]["Text152"] = tMainLineTaskTwinsCity_Text[20679]["Text152"]
tNpcGossip[20679]["Text153"] = tMainLineTaskTwinsCity_Text[20679]["Text153"]
tNpcGossip[20679]["Option151"] = tMainLineTaskTwinsCity_Text[20679]["Option151"]
tNpcGossip[20679]["OptionPoint151"] = "1-6"

tNpcGossip[20679]["Text1-6"] = {161,162,163}
tNpcGossip[20679]["tOption1-6"] = {161}
tNpcGossip[20679]["Text161"] = tMainLineTaskTwinsCity_Text[20679]["Text161"]
tNpcGossip[20679]["Text162"] = tMainLineTaskTwinsCity_Text[20679]["Text162"]
tNpcGossip[20679]["Text163"] = tMainLineTaskTwinsCity_Text[20679]["Text163"]
tNpcGossip[20679]["Option161"] = tMainLineTaskTwinsCity_Text[20679]["Option161"]
tNpcGossip[20679]["OptionPoint161"] = "1-7"

tNpcGossip[20679]["Text1-7"] = {171,172,173}
tNpcGossip[20679]["tOption1-7"] = {171}
tNpcGossip[20679]["Text171"] = tMainLineTaskTwinsCity_Text[20679]["Text171"]
tNpcGossip[20679]["Text172"] = tMainLineTaskTwinsCity_Text[20679]["Text172"]
tNpcGossip[20679]["Text173"] = tMainLineTaskTwinsCity_Text[20679]["Text173"]
tNpcGossip[20679]["Option171"] = tMainLineTaskTwinsCity_Text[20679]["Option171"]
tNpcGossip[20679]["OptionPoint171"] = "1-8"

tNpcGossip[20679]["Text1-8"] = {181,182,183}
tNpcGossip[20679]["tOption1-8"] = {181}
tNpcGossip[20679]["Text181"] = tMainLineTaskTwinsCity_Text[20679]["Text181"]
tNpcGossip[20679]["Text182"] = tMainLineTaskTwinsCity_Text[20679]["Text182"]
tNpcGossip[20679]["Text183"] = tMainLineTaskTwinsCity_Text[20679]["Text183"]
tNpcGossip[20679]["Option181"] = tMainLineTaskTwinsCity_Text[20679]["Option181"]
tNpcGossip[20679]["OptionFunc181"] = "MainLineTaskTwinsCity_Task6781_3</N>20679"

--【外套加工】薛夫人-闲聊
tNpcGossip[20679]["Text1-9"] = {191,192,193}
tNpcGossip[20679]["tOption1-9"] = {191}
tNpcGossip[20679]["Text191"] = tMainLineTaskTwinsCity_Text[20679]["Text191"]
tNpcGossip[20679]["Text192"] = tMainLineTaskTwinsCity_Text[20679]["Text192"]
tNpcGossip[20679]["Text193"] = tMainLineTaskTwinsCity_Text[20679]["Text193"]
tNpcGossip[20679]["Option191"] = tMainLineTaskTwinsCity_Text[20679]["Option191"]

--【外套兑换】徐素素-玩家已接任务对白
tNpcGossip[20680]["Text1-1"] = {111,112,113}
tNpcGossip[20680]["tOption1-1"] = {111}
tNpcGossip[20680]["Text111"] = tMainLineTaskTwinsCity_Text[20680]["Text111"]
tNpcGossip[20680]["Text112"] = tMainLineTaskTwinsCity_Text[20680]["Text112"]
tNpcGossip[20680]["Text113"] = tMainLineTaskTwinsCity_Text[20680]["Text113"]
tNpcGossip[20680]["Option111"] = tMainLineTaskTwinsCity_Text[20680]["Option111"]
tNpcGossip[20680]["OptionPoint111"] = "1-2"

tNpcGossip[20680]["Text1-2"] = {121,122,123}
tNpcGossip[20680]["tOption1-2"] = {121}
tNpcGossip[20680]["Text121"] = tMainLineTaskTwinsCity_Text[20680]["Text121"]
tNpcGossip[20680]["Text122"] = tMainLineTaskTwinsCity_Text[20680]["Text122"]
tNpcGossip[20680]["Text123"] = tMainLineTaskTwinsCity_Text[20680]["Text123"]
tNpcGossip[20680]["Option121"] = tMainLineTaskTwinsCity_Text[20680]["Option121"]
tNpcGossip[20680]["OptionPoint121"] = "1-4"

tNpcGossip[20680]["Text1-4"] = {141,142,143}
tNpcGossip[20680]["tOption1-4"] = {141}
tNpcGossip[20680]["Text141"] = tMainLineTaskTwinsCity_Text[20680]["Text141"]
tNpcGossip[20680]["Text142"] = tMainLineTaskTwinsCity_Text[20680]["Text142"]
tNpcGossip[20680]["Text143"] = tMainLineTaskTwinsCity_Text[20680]["Text143"]
tNpcGossip[20680]["Option141"] = tMainLineTaskTwinsCity_Text[20680]["Option141"]
tNpcGossip[20680]["OptionPoint141"] = "1-5"

tNpcGossip[20680]["Text1-5"] = {151,152,153,154}
tNpcGossip[20680]["tOption1-5"] = {151}
tNpcGossip[20680]["Text151"] = tMainLineTaskTwinsCity_Text[20680]["Text151"]
tNpcGossip[20680]["Text152"] = tMainLineTaskTwinsCity_Text[20680]["Text152"]
tNpcGossip[20680]["Text153"] = tMainLineTaskTwinsCity_Text[20680]["Text153"]
tNpcGossip[20680]["Text154"] = tMainLineTaskTwinsCity_Text[20680]["Text154"]
tNpcGossip[20680]["Option151"] = tMainLineTaskTwinsCity_Text[20680]["Option151"]
tNpcGossip[20680]["OptionPoint151"] = "1-6"

tNpcGossip[20680]["Text1-6"] = {161,162,163,164}
tNpcGossip[20680]["tOption1-6"] = {161}
tNpcGossip[20680]["Text161"] = tMainLineTaskTwinsCity_Text[20680]["Text161"]
tNpcGossip[20680]["Text162"] = tMainLineTaskTwinsCity_Text[20680]["Text162"]
tNpcGossip[20680]["Text163"] = tMainLineTaskTwinsCity_Text[20680]["Text163"]
tNpcGossip[20680]["Text164"] = tMainLineTaskTwinsCity_Text[20680]["Text164"]
tNpcGossip[20680]["Option161"] = tMainLineTaskTwinsCity_Text[20680]["Option161"]
tNpcGossip[20680]["OptionPoint161"] = "1-7"

tNpcGossip[20680]["Text1-7"] = {171,172,173,174}
tNpcGossip[20680]["tOption1-7"] = {171}
tNpcGossip[20680]["Text171"] = tMainLineTaskTwinsCity_Text[20680]["Text171"]
tNpcGossip[20680]["Text172"] = tMainLineTaskTwinsCity_Text[20680]["Text172"]
tNpcGossip[20680]["Text173"] = tMainLineTaskTwinsCity_Text[20680]["Text173"]
tNpcGossip[20680]["Text174"] = tMainLineTaskTwinsCity_Text[20680]["Text174"]
tNpcGossip[20680]["Option171"] = tMainLineTaskTwinsCity_Text[20680]["Option171"]
tNpcGossip[20680]["OptionFunc171"] = "MainLineTaskTwinsCity_Task6781_2</N>20680"

--【外套兑换】徐素素-玩家未带话，NPC对白
tNpcGossip[20680]["Text1-8"] = {181,182,183,184}
tNpcGossip[20680]["tOption1-8"] = {181}
tNpcGossip[20680]["Text181"] = tMainLineTaskTwinsCity_Text[20680]["Text181"]
tNpcGossip[20680]["Text182"] = tMainLineTaskTwinsCity_Text[20680]["Text182"]
tNpcGossip[20680]["Text183"] = tMainLineTaskTwinsCity_Text[20680]["Text183"]
tNpcGossip[20680]["Text184"] = tMainLineTaskTwinsCity_Text[20680]["Text184"]
tNpcGossip[20680]["Option181"] = tMainLineTaskTwinsCity_Text[20680]["Option181"]

--【外套兑换】徐素素-玩家已与薛夫人进行过二次对话，NPC对白
tNpcGossip[20680]["Text1-9"] = {191,192,193,194,195}
tNpcGossip[20680]["tOption1-9"] = {191}
tNpcGossip[20680]["Text191"] = tMainLineTaskTwinsCity_Text[20680]["Text191"]
tNpcGossip[20680]["Text192"] = tMainLineTaskTwinsCity_Text[20680]["Text192"]
tNpcGossip[20680]["Text193"] = tMainLineTaskTwinsCity_Text[20680]["Text193"]
tNpcGossip[20680]["Text194"] = tMainLineTaskTwinsCity_Text[20680]["Text194"]
tNpcGossip[20680]["Text195"] = tMainLineTaskTwinsCity_Text[20680]["Text195"]
tNpcGossip[20680]["Option191"] = tMainLineTaskTwinsCity_Text[20680]["Option191"]
tNpcGossip[20680]["OptionFunc191"] = "MainLineTaskTwinsCity_Task6781</N>20680"

--【外套兑换】徐素素-闲聊
tNpcGossip[20680]["Text2-1"] = {211,212,213}
tNpcGossip[20680]["tOption2-1"] = {211}
tNpcGossip[20680]["Text211"] = tMainLineTaskTwinsCity_Text[20680]["Text211"]
tNpcGossip[20680]["Text212"] = tMainLineTaskTwinsCity_Text[20680]["Text212"]
tNpcGossip[20680]["Text213"] = tMainLineTaskTwinsCity_Text[20680]["Text213"]
tNpcGossip[20680]["Option211"] = tMainLineTaskTwinsCity_Text[20680]["Option211"]


--药铺老板-闲聊
tNpcGossip[20676]["Text1-1"] = {111,112,113}
tNpcGossip[20676]["tOption1-1"] = {111}
tNpcGossip[20676]["Text111"] = tMainLineTaskTwinsCity_Text[20676]["Text111"]
tNpcGossip[20676]["Text112"] = tMainLineTaskTwinsCity_Text[20676]["Text112"]
tNpcGossip[20676]["Text113"] = tMainLineTaskTwinsCity_Text[20676]["Text113"]
tNpcGossip[20676]["Option111"] = tMainLineTaskTwinsCity_Text[20676]["Option111"]

--药铺老板-任务中，出对白
tNpcGossip[20676]["Text1-2"] = {121,122,123}
tNpcGossip[20676]["tOption1-2"] = {121}
tNpcGossip[20676]["Text121"] = tMainLineTaskTwinsCity_Text[20676]["Text121"]
tNpcGossip[20676]["Text122"] = tMainLineTaskTwinsCity_Text[20676]["Text122"]
tNpcGossip[20676]["Text123"] = tMainLineTaskTwinsCity_Text[20676]["Text123"]
tNpcGossip[20676]["Option121"] = tMainLineTaskTwinsCity_Text[20676]["Option121"]
tNpcGossip[20676]["OptionPoint121"] = "1-3"

--药铺老板-任务中，出对白
tNpcGossip[20676]["Text1-3"] = {131,132,133,134}
tNpcGossip[20676]["tOption1-3"] = {131}
tNpcGossip[20676]["Text131"] = tMainLineTaskTwinsCity_Text[20676]["Text131"]
tNpcGossip[20676]["Text132"] = tMainLineTaskTwinsCity_Text[20676]["Text132"]
tNpcGossip[20676]["Text133"] = tMainLineTaskTwinsCity_Text[20676]["Text133"]
tNpcGossip[20676]["Text134"] = tMainLineTaskTwinsCity_Text[20676]["Text134"]
tNpcGossip[20676]["Option131"] = tMainLineTaskTwinsCity_Text[20676]["Option131"]
tNpcGossip[20676]["Option132"] = tMainLineTaskTwinsCity_Text[20676]["Option132"]
tNpcGossip[20676]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6790_TaskItemGive</N>20676"

tNpcGossip[20676]["Text1-4"] = {141,142,143}
tNpcGossip[20676]["tOption1-4"] = {141}
tNpcGossip[20676]["Text141"] = tMainLineTaskTwinsCity_Text[20676]["Text141"]
tNpcGossip[20676]["Text142"] = tMainLineTaskTwinsCity_Text[20676]["Text142"]
tNpcGossip[20676]["Text143"] = tMainLineTaskTwinsCity_Text[20676]["Text143"]
tNpcGossip[20676]["Option141"] = tMainLineTaskTwinsCity_Text[20676]["Option141"]

tNpcGossip[20676]["Text1-5"] = {151,152,153,154,155}
tNpcGossip[20676]["tOption1-5"] = {151}
tNpcGossip[20676]["Text151"] = tMainLineTaskTwinsCity_Text[20676]["Text151"]
tNpcGossip[20676]["Text152"] = tMainLineTaskTwinsCity_Text[20676]["Text152"]
tNpcGossip[20676]["Text153"] = tMainLineTaskTwinsCity_Text[20676]["Text153"]
tNpcGossip[20676]["Text154"] = tMainLineTaskTwinsCity_Text[20676]["Text154"]
tNpcGossip[20676]["Text155"] = tMainLineTaskTwinsCity_Text[20676]["Text155"]
tNpcGossip[20676]["Option151"] = tMainLineTaskTwinsCity_Text[20676]["Option151"]
tNpcGossip[20676]["OptionFunc151"] = "NpcPosition_PathFind</N>20684"

tNpcGossip[20676]["Text1-6"] = {161,162,163}
tNpcGossip[20676]["tOption1-6"] = {161,162}
tNpcGossip[20676]["Text161"] = tMainLineTaskTwinsCity_Text[20676]["Text161"]
tNpcGossip[20676]["Text162"] = tMainLineTaskTwinsCity_Text[20676]["Text162"]
tNpcGossip[20676]["Text163"] = tMainLineTaskTwinsCity_Text[20676]["Text163"]
tNpcGossip[20676]["Option161"] = tMainLineTaskTwinsCity_Text[20676]["Option161"]
tNpcGossip[20676]["Option162"] = tMainLineTaskTwinsCity_Text[20676]["Option162"]
tNpcGossip[20676]["OptionFunc161"] = "NpcPosition_PathFind</N>20684"
tNpcGossip[20676]["OptionFunc162"] = "MainLineTaskTwinsCity_Task6790_TaskItemGive2</N>3303270</N>20676"

tNpcGossip[20676]["Text1-7"] = {171,172,173}
tNpcGossip[20676]["tOption1-7"] = {171,172,173}
tNpcGossip[20676]["Text171"] = tMainLineTaskTwinsCity_Text[20676]["Text171"]
tNpcGossip[20676]["Text172"] = tMainLineTaskTwinsCity_Text[20676]["Text172"]
tNpcGossip[20676]["Text173"] = tMainLineTaskTwinsCity_Text[20676]["Text173"]
tNpcGossip[20676]["Option171"] = tMainLineTaskTwinsCity_Text[20676]["Option171"]
tNpcGossip[20676]["Option172"] = tMainLineTaskTwinsCity_Text[20676]["Option172"]
tNpcGossip[20676]["Option173"] = tMainLineTaskTwinsCity_Text[20676]["Option173"]
tNpcGossip[20676]["OptionFunc171"] = "MainLineTaskTwinsCity_Task6790_TaskItemGive2</N>3303270</N>20676"
tNpcGossip[20676]["OptionFunc172"] = "MainLineTaskTwinsCity_Task6790_TaskItemGive2</N>3303271</N>20676"
tNpcGossip[20676]["OptionFunc173"] = "MainLineTaskTwinsCity_Task6790_TaskItemGive2</N>3303272</N>20676"
tNpcGossip[20676]["OptionChkFunc171"] = function ()
	return not Item_ChkItem(3303270)
end
tNpcGossip[20676]["OptionChkFunc172"] = function ()
	return not Item_ChkItem(3303271)
end
tNpcGossip[20676]["OptionChkFunc173"] = function ()
	return not Item_ChkItem(3303272)
end

tNpcGossip[20676]["Text1-8"] = {181,182,183}
tNpcGossip[20676]["tOption1-8"] = {181}
tNpcGossip[20676]["Text181"] = tMainLineTaskTwinsCity_Text[20676]["Text181"]
tNpcGossip[20676]["Text182"] = tMainLineTaskTwinsCity_Text[20676]["Text182"]
tNpcGossip[20676]["Text183"] = tMainLineTaskTwinsCity_Text[20676]["Text183"]
tNpcGossip[20676]["Option181"] = tMainLineTaskTwinsCity_Text[20676]["Option181"]

tNpcGossip[20676]["Text1-9"] = {191,192,193}
tNpcGossip[20676]["tOption1-9"] = {191}
tNpcGossip[20676]["Text191"] = tMainLineTaskTwinsCity_Text[20676]["Text191"]
tNpcGossip[20676]["Text192"] = tMainLineTaskTwinsCity_Text[20676]["Text192"]
tNpcGossip[20676]["Text193"] = tMainLineTaskTwinsCity_Text[20676]["Text193"]
tNpcGossip[20676]["Option191"] = tMainLineTaskTwinsCity_Text[20676]["Option191"]
tNpcGossip[20676]["OptionFunc191"] = "NpcPosition_PathFind</N>20684"

tNpcGossip[20676]["Text2-1"] = {211,212,213}
tNpcGossip[20676]["tOption2-1"] = {211}
tNpcGossip[20676]["Text211"] = tMainLineTaskTwinsCity_Text[20676]["Text211"]
tNpcGossip[20676]["Text212"] = tMainLineTaskTwinsCity_Text[20676]["Text212"]
tNpcGossip[20676]["Text213"] = tMainLineTaskTwinsCity_Text[20676]["Text213"]
tNpcGossip[20676]["Option211"] = tMainLineTaskTwinsCity_Text[20676]["Option211"]
tNpcGossip[20676]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6790</N>20676"

tNpcGossip[20676]["Text2-2"] = {221,222,223}
tNpcGossip[20676]["tOption2-2"] = {221}
tNpcGossip[20676]["Text221"] = tMainLineTaskTwinsCity_Text[20676]["Text221"]
tNpcGossip[20676]["Text222"] = tMainLineTaskTwinsCity_Text[20676]["Text222"]
tNpcGossip[20676]["Text223"] = tMainLineTaskTwinsCity_Text[20676]["Text223"]
tNpcGossip[20676]["Option221"] = tMainLineTaskTwinsCity_Text[20676]["Option221"]
tNpcGossip[20676]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6790</N>20676"

tNpcGossip[20676]["Text2-3"] = {231}
tNpcGossip[20676]["tOption2-3"] = {231}
tNpcGossip[20676]["Text231"] = tMainLineTaskTwinsCity_Text[20676]["Text231"]
tNpcGossip[20676]["Option231"] = tMainLineTaskTwinsCity_Text[20676]["Option231"]
tNpcGossip[20676]["OptionFunc231"] = "NpcPosition_PathFind</N>20684"

--痛苦的病患-玩家未接调药任务
tNpcGossip[20684]["Text1-1"] = {111,112,113}
tNpcGossip[20684]["tOption1-1"] = {111}
tNpcGossip[20684]["Text111"] = tMainLineTaskTwinsCity_Text[20684]["Text111"]
tNpcGossip[20684]["Text112"] = tMainLineTaskTwinsCity_Text[20684]["Text112"]
tNpcGossip[20684]["Text113"] = tMainLineTaskTwinsCity_Text[20684]["Text113"]
tNpcGossip[20684]["Option111"] = tMainLineTaskTwinsCity_Text[20684]["Option111"]

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-2"] = {121,122,123,124}
tNpcGossip[20684]["tOption1-2"] = {121}
tNpcGossip[20684]["Text121"] = tMainLineTaskTwinsCity_Text[20684]["Text121"]
tNpcGossip[20684]["Text122"] = tMainLineTaskTwinsCity_Text[20684]["Text122"]
tNpcGossip[20684]["Text123"] = tMainLineTaskTwinsCity_Text[20684]["Text123"]
tNpcGossip[20684]["Text124"] = tMainLineTaskTwinsCity_Text[20684]["Text124"]
tNpcGossip[20684]["Option121"] = tMainLineTaskTwinsCity_Text[20684]["Option121"]
tNpcGossip[20684]["Option122"] = tMainLineTaskTwinsCity_Text[20684]["Option122"]
tNpcGossip[20684]["Option123"] = tMainLineTaskTwinsCity_Text[20684]["Option123"]
tNpcGossip[20684]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6790_TaskPill2</N>20684</N>3303270"
tNpcGossip[20684]["OptionFunc122"] = "MainLineTaskTwinsCity_Task6790_TaskPill1</N>20684</N>3303271"
tNpcGossip[20684]["OptionFunc123"] = "MainLineTaskTwinsCity_Task6790_TaskPill1</N>20684</N>3303272"

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-3"] = {131,132,133,134}
tNpcGossip[20684]["tOption1-3"] = {131,132}
tNpcGossip[20684]["Text131"] = tMainLineTaskTwinsCity_Text[20684]["Text131"]
tNpcGossip[20684]["Text132"] = tMainLineTaskTwinsCity_Text[20684]["Text132"]
tNpcGossip[20684]["Text133"] = tMainLineTaskTwinsCity_Text[20684]["Text133"]
tNpcGossip[20684]["Text134"] = tMainLineTaskTwinsCity_Text[20684]["Text134"]
tNpcGossip[20684]["Option131"] = tMainLineTaskTwinsCity_Text[20684]["Option131"]
tNpcGossip[20684]["Option132"] = tMainLineTaskTwinsCity_Text[20684]["Option132"]
tNpcGossip[20684]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6790_TaskPill</N>20684</N>3303271"
tNpcGossip[20684]["OptionFunc132"] = "MainLineTaskTwinsCity_Task6790_TaskPill</N>20684</N>3303272"

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-4"] = {141,142,143,144}
tNpcGossip[20684]["tOption1-4"] = {141}
tNpcGossip[20684]["Text141"] = tMainLineTaskTwinsCity_Text[20684]["Text141"]
tNpcGossip[20684]["Text142"] = tMainLineTaskTwinsCity_Text[20684]["Text142"]
tNpcGossip[20684]["Text143"] = tMainLineTaskTwinsCity_Text[20684]["Text143"]
tNpcGossip[20684]["Text144"] = tMainLineTaskTwinsCity_Text[20684]["Text144"]
tNpcGossip[20684]["Option141"] = tMainLineTaskTwinsCity_Text[20684]["Option141"]
tNpcGossip[20684]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6790_TaskPill</N>20684</N>3303272"

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-5"] = {151,152,153}
tNpcGossip[20684]["tOption1-5"] = {151}
tNpcGossip[20684]["Text151"] = tMainLineTaskTwinsCity_Text[20684]["Text151"]
tNpcGossip[20684]["Text152"] = tMainLineTaskTwinsCity_Text[20684]["Text152"]
tNpcGossip[20684]["Text153"] = tMainLineTaskTwinsCity_Text[20684]["Text153"]
tNpcGossip[20684]["Option151"] = tMainLineTaskTwinsCity_Text[20684]["Option151"]
tNpcGossip[20684]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6790_1</N>20684"

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-6"] = {161,162,163}
tNpcGossip[20684]["tOption1-6"] = {161}
tNpcGossip[20684]["Text161"] = tMainLineTaskTwinsCity_Text[20684]["Text161"]
tNpcGossip[20684]["Text162"] = tMainLineTaskTwinsCity_Text[20684]["Text162"]
tNpcGossip[20684]["Text163"] = tMainLineTaskTwinsCity_Text[20684]["Text163"]
tNpcGossip[20684]["Option161"] = tMainLineTaskTwinsCity_Text[20684]["Option161"]
tNpcGossip[20684]["OptionFunc161"] = "NpcPosition_PathFind</N>20676"

--痛苦的病患-调药任务
tNpcGossip[20684]["Text1-7"] = {171,172,173}
tNpcGossip[20684]["tOption1-7"] = {171}
tNpcGossip[20684]["Text171"] = tMainLineTaskTwinsCity_Text[20684]["Text171"]
tNpcGossip[20684]["Text172"] = tMainLineTaskTwinsCity_Text[20684]["Text172"]
tNpcGossip[20684]["Text173"] = tMainLineTaskTwinsCity_Text[20684]["Text173"]
tNpcGossip[20684]["Option171"] = tMainLineTaskTwinsCity_Text[20684]["Option171"]
tNpcGossip[20684]["OptionFunc171"] = "NpcPosition_PathFind</N>20676"



tNpcGossip[20684]["Text1-8"] = {181,182,183}
tNpcGossip[20684]["tOption1-8"] = {181}
tNpcGossip[20684]["Text181"] = tMainLineTaskTwinsCity_Text[20684]["Text181"]
tNpcGossip[20684]["Text182"] = tMainLineTaskTwinsCity_Text[20684]["Text182"]
tNpcGossip[20684]["Text183"] = tMainLineTaskTwinsCity_Text[20684]["Text183"]
tNpcGossip[20684]["Option181"] = tMainLineTaskTwinsCity_Text[20684]["Option181"]

--痛苦的病患-调药任务
tNpcGossip[20684]["Text2-1"] = {211,212,213}
tNpcGossip[20684]["tOption2-1"] = {211}
tNpcGossip[20684]["Text211"] = tMainLineTaskTwinsCity_Text[20684]["Text211"]
tNpcGossip[20684]["Text212"] = tMainLineTaskTwinsCity_Text[20684]["Text212"]
tNpcGossip[20684]["Text213"] = tMainLineTaskTwinsCity_Text[20684]["Text213"]
tNpcGossip[20684]["Option211"] = tMainLineTaskTwinsCity_Text[20684]["Option211"]
tNpcGossip[20684]["OptionFunc211"] = "NpcPosition_PathFind</N>20676"

--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-1"] = {111,112,113}
tNpcGossip[20675]["tOption1-1"] = {111}
tNpcGossip[20675]["Text111"] = tMainLineTaskTwinsCity_Text[20675]["Text111"]
tNpcGossip[20675]["Text112"] = tMainLineTaskTwinsCity_Text[20675]["Text112"]
tNpcGossip[20675]["Text113"] = tMainLineTaskTwinsCity_Text[20675]["Text113"]
tNpcGossip[20675]["Option111"] = tMainLineTaskTwinsCity_Text[20675]["Option111"]
tNpcGossip[20675]["OptionPoint111"] = "1-2"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-2"] = {121,122,123,124}
tNpcGossip[20675]["tOption1-2"] = {121}
tNpcGossip[20675]["Text121"] = tMainLineTaskTwinsCity_Text[20675]["Text121"]
tNpcGossip[20675]["Text122"] = tMainLineTaskTwinsCity_Text[20675]["Text122"]
tNpcGossip[20675]["Text123"] = tMainLineTaskTwinsCity_Text[20675]["Text123"]
tNpcGossip[20675]["Text124"] = tMainLineTaskTwinsCity_Text[20675]["Text124"]
tNpcGossip[20675]["Option121"] = tMainLineTaskTwinsCity_Text[20675]["Option121"]
tNpcGossip[20675]["OptionPoint121"] = "1-3"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-3"] = {131,132,133}
tNpcGossip[20675]["tOption1-3"] = {131,132}
tNpcGossip[20675]["Text131"] = tMainLineTaskTwinsCity_Text[20675]["Text131"]
tNpcGossip[20675]["Text132"] = tMainLineTaskTwinsCity_Text[20675]["Text132"]
tNpcGossip[20675]["Text133"] = tMainLineTaskTwinsCity_Text[20675]["Text133"]
tNpcGossip[20675]["Option131"] = tMainLineTaskTwinsCity_Text[20675]["Option131"]
tNpcGossip[20675]["Option132"] = tMainLineTaskTwinsCity_Text[20675]["Option132"]
tNpcGossip[20675]["Option133"] = tMainLineTaskTwinsCity_Text[20675]["Option133"]
tNpcGossip[20675]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6791_Roll</N>20675</N>6"
tNpcGossip[20675]["OptionFunc132"] = "MainLineTaskTwinsCity_Task6791_Roll</N>20675</N>3"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-4"] = {141,142,143}
tNpcGossip[20675]["tOption1-4"] = {141,142,143}
tNpcGossip[20675]["Text141"] = tMainLineTaskTwinsCity_Text[20675]["Text141"]
tNpcGossip[20675]["Text142"] = tMainLineTaskTwinsCity_Text[20675]["Text142"]
tNpcGossip[20675]["Text143"] = tMainLineTaskTwinsCity_Text[20675]["Text143"]
tNpcGossip[20675]["Option141"] = tMainLineTaskTwinsCity_Text[20675]["Option141"]
tNpcGossip[20675]["Option142"] = tMainLineTaskTwinsCity_Text[20675]["Option142"]
tNpcGossip[20675]["Option143"] = tMainLineTaskTwinsCity_Text[20675]["Option143"]
tNpcGossip[20675]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6791_Roll</N>20675</N>6"
tNpcGossip[20675]["OptionFunc142"] = "MainLineTaskTwinsCity_Task6791_Roll</N>20675</N>3"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-5"] = {151,152,153}
tNpcGossip[20675]["tOption1-5"] = {151}
tNpcGossip[20675]["Text151"] = tMainLineTaskTwinsCity_Text[20675]["Text151"]
tNpcGossip[20675]["Text152"] = tMainLineTaskTwinsCity_Text[20675]["Text152"]
tNpcGossip[20675]["Text153"] = tMainLineTaskTwinsCity_Text[20675]["Text153"]
tNpcGossip[20675]["Option151"] = tMainLineTaskTwinsCity_Text[20675]["Option151"]
tNpcGossip[20675]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6791</N>20675"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text1-6"] = {161,162,163}
tNpcGossip[20675]["tOption1-6"] = {161}
tNpcGossip[20675]["Text161"] = tMainLineTaskTwinsCity_Text[20675]["Text161"]
tNpcGossip[20675]["Text162"] = tMainLineTaskTwinsCity_Text[20675]["Text162"]
tNpcGossip[20675]["Text163"] = tMainLineTaskTwinsCity_Text[20675]["Text163"]
tNpcGossip[20675]["Option161"] = tMainLineTaskTwinsCity_Text[20675]["Option161"]
tNpcGossip[20675]["Option162"] = tMainLineTaskTwinsCity_Text[20675]["Option162"]
tNpcGossip[20675]["OptionFunc161"] = "MainLineTaskTwinsCity_Task6791</N>20675"
--杂货店老板-已接调查奸细任务
tNpcGossip[20675]["Text2-1"] = {211,212,213}
tNpcGossip[20675]["tOption2-1"] = {211}
tNpcGossip[20675]["Text211"] = tMainLineTaskTwinsCity_Text[20675]["Text211"]
tNpcGossip[20675]["Text212"] = tMainLineTaskTwinsCity_Text[20675]["Text212"]
tNpcGossip[20675]["Text213"] = tMainLineTaskTwinsCity_Text[20675]["Text213"]
tNpcGossip[20675]["Option211"] = tMainLineTaskTwinsCity_Text[20675]["Option211"]


--莫无双-闲聊
tNpcGossip[20688]["Text1-1"] = {111,112,113}
tNpcGossip[20688]["tOption1-1"] = {111}
tNpcGossip[20688]["Text111"] = tMainLineTaskTwinsCity_Text[20688]["Text111"]
tNpcGossip[20688]["Text112"] = tMainLineTaskTwinsCity_Text[20688]["Text112"]
tNpcGossip[20688]["Text113"] = tMainLineTaskTwinsCity_Text[20688]["Text113"]
tNpcGossip[20688]["Option111"] = tMainLineTaskTwinsCity_Text[20688]["Option111"]
--莫无双-闲聊
tNpcGossip[20688]["Text1-2"] = {121,122,123}
tNpcGossip[20688]["tOption1-2"] = {121}
tNpcGossip[20688]["Text121"] = tMainLineTaskTwinsCity_Text[20688]["Text121"]
tNpcGossip[20688]["Text122"] = tMainLineTaskTwinsCity_Text[20688]["Text122"]
tNpcGossip[20688]["Text123"] = tMainLineTaskTwinsCity_Text[20688]["Text123"]
tNpcGossip[20688]["Option121"] = tMainLineTaskTwinsCity_Text[20688]["Option121"]
tNpcGossip[20688]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6792_Like</N>20688"
--莫无双-【接上，NPC随机对白
tNpcGossip[20688]["Text1-3"] = {131,132,133}
tNpcGossip[20688]["tOption1-3"] = {131}
tNpcGossip[20688]["Text131"] = tMainLineTaskTwinsCity_Text[20688]["Text131"]
tNpcGossip[20688]["Text132"] = tMainLineTaskTwinsCity_Text[20688]["Text132"]
tNpcGossip[20688]["Text133"] = tMainLineTaskTwinsCity_Text[20688]["Text133"]
tNpcGossip[20688]["Option131"] = tMainLineTaskTwinsCity_Text[20688]["Option131"]
tNpcGossip[20688]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6792_Like1</N>20688"

--莫无双-【接上，NPC随机对白
tNpcGossip[20688]["Text1-4"] = {141,142,143}
tNpcGossip[20688]["tOption1-4"] = {141}
tNpcGossip[20688]["Text141"] = tMainLineTaskTwinsCity_Text[20688]["Text141"]
tNpcGossip[20688]["Text142"] = tMainLineTaskTwinsCity_Text[20688]["Text142"]
tNpcGossip[20688]["Text143"] = tMainLineTaskTwinsCity_Text[20688]["Text143"]
tNpcGossip[20688]["Option141"] = tMainLineTaskTwinsCity_Text[20688]["Option141"]
tNpcGossip[20688]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6792_Like1</N>20688"

--莫无双-【接上，NPC随机对白
tNpcGossip[20688]["Text1-5"] = {151,152,153}
tNpcGossip[20688]["tOption1-5"] = {151}
tNpcGossip[20688]["Text151"] = tMainLineTaskTwinsCity_Text[20688]["Text151"]
tNpcGossip[20688]["Text152"] = tMainLineTaskTwinsCity_Text[20688]["Text152"]
tNpcGossip[20688]["Text153"] = tMainLineTaskTwinsCity_Text[20688]["Text153"]
tNpcGossip[20688]["Option151"] = tMainLineTaskTwinsCity_Text[20688]["Option151"]
tNpcGossip[20688]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6792_Like1</N>20688"


--装备馈赠任务大师-xianl
tNpcGossip[20682]["Text1-1"] = {111,112,113}
tNpcGossip[20682]["tOption1-1"] = {111}
tNpcGossip[20682]["Text111"] = tMainLineTaskTwinsCity_Text[20682]["Text111"]
tNpcGossip[20682]["Text112"] = tMainLineTaskTwinsCity_Text[20682]["Text112"]
tNpcGossip[20682]["Text113"] = tMainLineTaskTwinsCity_Text[20682]["Text113"]
tNpcGossip[20682]["Option111"] = tMainLineTaskTwinsCity_Text[20682]["Option111"]
--装备馈赠任务大师-玩家已接调查奸细任务，NPC对白
tNpcGossip[20682]["Text1-2"] = {121,122,123}
tNpcGossip[20682]["tOption1-2"] = {121}
tNpcGossip[20682]["Text121"] = tMainLineTaskTwinsCity_Text[20682]["Text121"]
tNpcGossip[20682]["Text122"] = tMainLineTaskTwinsCity_Text[20682]["Text122"]
tNpcGossip[20682]["Text123"] = tMainLineTaskTwinsCity_Text[20682]["Text123"]
tNpcGossip[20682]["Option121"] = tMainLineTaskTwinsCity_Text[20682]["Option121"]
tNpcGossip[20682]["OptionPoint121"] = "1-3"
--装备馈赠任务大师-玩家已接调查奸细任务，NPC对白
tNpcGossip[20682]["Text1-3"] = {131,132,133,134}
tNpcGossip[20682]["tOption1-3"] = {131}
tNpcGossip[20682]["Text131"] = tMainLineTaskTwinsCity_Text[20682]["Text131"]
tNpcGossip[20682]["Text132"] = tMainLineTaskTwinsCity_Text[20682]["Text132"]
tNpcGossip[20682]["Text133"] = tMainLineTaskTwinsCity_Text[20682]["Text133"]
tNpcGossip[20682]["Text134"] = tMainLineTaskTwinsCity_Text[20682]["Text134"]
tNpcGossip[20682]["Option131"] = tMainLineTaskTwinsCity_Text[20682]["Option131"]
tNpcGossip[20682]["Option132"] = tMainLineTaskTwinsCity_Text[20682]["Option132"]
tNpcGossip[20682]["OptionPoint131"] = "1-4"
--装备馈赠任务大师-玩家已接调查奸细任务，NPC对白
tNpcGossip[20682]["Text1-4"] = {141,142,143}
tNpcGossip[20682]["tOption1-4"] = {141}
tNpcGossip[20682]["Text141"] = tMainLineTaskTwinsCity_Text[20682]["Text141"]
tNpcGossip[20682]["Text142"] = tMainLineTaskTwinsCity_Text[20682]["Text142"]
tNpcGossip[20682]["Text143"] = tMainLineTaskTwinsCity_Text[20682]["Text143"]
tNpcGossip[20682]["Option141"] = tMainLineTaskTwinsCity_Text[20682]["Option141"]
tNpcGossip[20682]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6792_1</N>20682"
--装备馈赠任务大师-已接任务，未询问，NPC对白
tNpcGossip[20682]["Text1-5"] = {151,152,153,154}
tNpcGossip[20682]["tOption1-5"] = {151}
tNpcGossip[20682]["Text151"] = tMainLineTaskTwinsCity_Text[20682]["Text151"]
tNpcGossip[20682]["Text152"] = tMainLineTaskTwinsCity_Text[20682]["Text152"]
tNpcGossip[20682]["Text153"] = tMainLineTaskTwinsCity_Text[20682]["Text153"]
tNpcGossip[20682]["Text154"] = tMainLineTaskTwinsCity_Text[20682]["Text154"]
tNpcGossip[20682]["Option151"] = tMainLineTaskTwinsCity_Text[20682]["Option151"]
--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text1-6"] = {161,162,163}
tNpcGossip[20682]["tOption1-6"] = {161,162,163}
tNpcGossip[20682]["Text161"] = tMainLineTaskTwinsCity_Text[20682]["Text161"]
tNpcGossip[20682]["Text162"] = tMainLineTaskTwinsCity_Text[20682]["Text162"]
tNpcGossip[20682]["Text163"] = tMainLineTaskTwinsCity_Text[20682]["Text163"]
tNpcGossip[20682]["Option161"] = tMainLineTaskTwinsCity_Text[20682]["Option161"]
tNpcGossip[20682]["Option162"] = tMainLineTaskTwinsCity_Text[20682]["Option162"]
tNpcGossip[20682]["Option163"] = tMainLineTaskTwinsCity_Text[20682]["Option163"]
tNpcGossip[20682]["OptionFunc161"] = "MainLineTaskTwinsCity_Task6792_Select</N>20682</N>2"
tNpcGossip[20682]["OptionFunc162"] = "MainLineTaskTwinsCity_Task6792_Select</N>20682</N>3"
tNpcGossip[20682]["OptionFunc163"] = "MainLineTaskTwinsCity_Task6792_Select</N>20682</N>4"
--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text1-7"] = {171,172,173}
tNpcGossip[20682]["tOption1-7"] = {171}
tNpcGossip[20682]["Text171"] = tMainLineTaskTwinsCity_Text[20682]["Text171"]
tNpcGossip[20682]["Text172"] = tMainLineTaskTwinsCity_Text[20682]["Text172"]
tNpcGossip[20682]["Text173"] = tMainLineTaskTwinsCity_Text[20682]["Text173"]
tNpcGossip[20682]["Option171"] = tMainLineTaskTwinsCity_Text[20682]["Option171"]
tNpcGossip[20682]["OptionFunc171"] = "MainLineTaskTwinsCity_Task6792_Select1</N>20682"


--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text2-1"] = {211,212,213}
tNpcGossip[20682]["tOption2-1"] = {211}
tNpcGossip[20682]["Text211"] = tMainLineTaskTwinsCity_Text[20682]["Text211"]
tNpcGossip[20682]["Text212"] = tMainLineTaskTwinsCity_Text[20682]["Text212"]
tNpcGossip[20682]["Text213"] = tMainLineTaskTwinsCity_Text[20682]["Text213"]
tNpcGossip[20682]["Option211"] = tMainLineTaskTwinsCity_Text[20682]["Option211"]
tNpcGossip[20682]["OptionPoint211"] = "2-2"
--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text2-2"] = {221,222,223}
tNpcGossip[20682]["tOption2-2"] = {221}
tNpcGossip[20682]["Text221"] = tMainLineTaskTwinsCity_Text[20682]["Text221"]
tNpcGossip[20682]["Text222"] = tMainLineTaskTwinsCity_Text[20682]["Text222"]
tNpcGossip[20682]["Text223"] = tMainLineTaskTwinsCity_Text[20682]["Text223"]
tNpcGossip[20682]["Option221"] = tMainLineTaskTwinsCity_Text[20682]["Option221"]
tNpcGossip[20682]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6792</N>20682"
--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text2-3"] = {231,232,233}
tNpcGossip[20682]["tOption2-3"] = {231}
tNpcGossip[20682]["Text231"] = tMainLineTaskTwinsCity_Text[20682]["Text231"]
tNpcGossip[20682]["Text232"] = tMainLineTaskTwinsCity_Text[20682]["Text232"]
tNpcGossip[20682]["Text233"] = tMainLineTaskTwinsCity_Text[20682]["Text233"]
tNpcGossip[20682]["Option231"] = tMainLineTaskTwinsCity_Text[20682]["Option231"]
tNpcGossip[20682]["OptionPoint231"] = "2-4"
--装备馈赠任务大师-已询问莫无双
tNpcGossip[20682]["Text2-4"] = {241,242,243}
tNpcGossip[20682]["tOption2-4"] = {241}
tNpcGossip[20682]["Text241"] = tMainLineTaskTwinsCity_Text[20682]["Text241"]
tNpcGossip[20682]["Text242"] = tMainLineTaskTwinsCity_Text[20682]["Text242"]
tNpcGossip[20682]["Text243"] = tMainLineTaskTwinsCity_Text[20682]["Text243"]
tNpcGossip[20682]["Option241"] = tMainLineTaskTwinsCity_Text[20682]["Option241"]
tNpcGossip[20682]["OptionFunc241"] = "MainLineTaskTwinsCity_Task6792</N>20682"

--铁匠-闲聊
tNpcGossip[20678]["Text1-1"] = {111,112,113,114}
tNpcGossip[20678]["tOption1-1"] = {111}
tNpcGossip[20678]["Text111"] = tMainLineTaskTwinsCity_Text[20678]["Text111"]
tNpcGossip[20678]["Text112"] = tMainLineTaskTwinsCity_Text[20678]["Text112"]
tNpcGossip[20678]["Text113"] = tMainLineTaskTwinsCity_Text[20678]["Text113"]
tNpcGossip[20678]["Text114"] = tMainLineTaskTwinsCity_Text[20678]["Text114"]
tNpcGossip[20678]["Option111"] = tMainLineTaskTwinsCity_Text[20678]["Option111"]

--铁匠-任务中，初次对白
tNpcGossip[20678]["Text1-2"] = {121,122,123,124}
tNpcGossip[20678]["tOption1-2"] = {121}
tNpcGossip[20678]["Text121"] = tMainLineTaskTwinsCity_Text[20678]["Text121"]
tNpcGossip[20678]["Text122"] = tMainLineTaskTwinsCity_Text[20678]["Text122"]
tNpcGossip[20678]["Text123"] = tMainLineTaskTwinsCity_Text[20678]["Text123"]
tNpcGossip[20678]["Text124"] = tMainLineTaskTwinsCity_Text[20678]["Text124"]
tNpcGossip[20678]["Option121"] = tMainLineTaskTwinsCity_Text[20678]["Option121"]
tNpcGossip[20678]["OptionPoint121"] = "1-3"

--铁匠-你在感慨什么？
tNpcGossip[20678]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20678]["tOption1-3"] = {131}
tNpcGossip[20678]["Text131"] = tMainLineTaskTwinsCity_Text[20678]["Text131"]
tNpcGossip[20678]["Text132"] = tMainLineTaskTwinsCity_Text[20678]["Text132"]
tNpcGossip[20678]["Text133"] = tMainLineTaskTwinsCity_Text[20678]["Text133"]
tNpcGossip[20678]["Text134"] = tMainLineTaskTwinsCity_Text[20678]["Text134"]
tNpcGossip[20678]["Text135"] = tMainLineTaskTwinsCity_Text[20678]["Text135"]
tNpcGossip[20678]["Option131"] = tMainLineTaskTwinsCity_Text[20678]["Option131"]
tNpcGossip[20678]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6793_1</N>20678"

--铁匠-任务中
tNpcGossip[20678]["Text1-4"] = {141,142,143}
tNpcGossip[20678]["tOption1-4"] = {141,142}
tNpcGossip[20678]["Text141"] = tMainLineTaskTwinsCity_Text[20678]["Text141"]
tNpcGossip[20678]["Text142"] = tMainLineTaskTwinsCity_Text[20678]["Text142"]
tNpcGossip[20678]["Text143"] = tMainLineTaskTwinsCity_Text[20678]["Text143"]
tNpcGossip[20678]["Option141"] = tMainLineTaskTwinsCity_Text[20678]["Option141"]
tNpcGossip[20678]["Option142"] = tMainLineTaskTwinsCity_Text[20678]["Option142"]
tNpcGossip[20678]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6793_2</N>20678"
tNpcGossip[20678]["OptionPoint142"] = "2-1"
tNpcGossip[20678]["OptionChkFunc141"] = function ()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[4]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[4],0)
	end
	return (Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4]) == 1)
end
tNpcGossip[20678]["OptionChkFunc142"] = function ()
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[4]) then
		Task_AddTaskDetail(tMainLineTaskTwinsCity_DetectTaskId[4],0)
	end
	return (Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[4]) == 4)
end

--铁匠-任务中
tNpcGossip[20678]["Text1-5"] = {151,152,153,154}
tNpcGossip[20678]["tOption1-5"] = {151}
tNpcGossip[20678]["Text151"] = tMainLineTaskTwinsCity_Text[20678]["Text151"]
tNpcGossip[20678]["Text152"] = tMainLineTaskTwinsCity_Text[20678]["Text152"]
tNpcGossip[20678]["Text153"] = tMainLineTaskTwinsCity_Text[20678]["Text153"]
tNpcGossip[20678]["Text154"] = tMainLineTaskTwinsCity_Text[20678]["Text154"]
tNpcGossip[20678]["Option151"] = tMainLineTaskTwinsCity_Text[20678]["Option151"]
tNpcGossip[20678]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6793_3</N>20678"

--铁匠-任务中
tNpcGossip[20678]["Text1-6"] = {161,162,163}
tNpcGossip[20678]["tOption1-6"] = {161}
tNpcGossip[20678]["Text161"] = tMainLineTaskTwinsCity_Text[20678]["Text161"]
tNpcGossip[20678]["Text162"] = tMainLineTaskTwinsCity_Text[20678]["Text162"]
tNpcGossip[20678]["Text163"] = tMainLineTaskTwinsCity_Text[20678]["Text163"]
tNpcGossip[20678]["Option161"] = tMainLineTaskTwinsCity_Text[20678]["Option161"]
tNpcGossip[20678]["OptionFunc161"] = "MainLineTaskTwinsCity_Task6793</N>20678"

--浸在井中的美酒-任务中，身上没有酒
tNpcGossip[20678]["Text1-7"] = {171,172,173}
tNpcGossip[20678]["tOption1-7"] = {171}
tNpcGossip[20678]["Text171"] = tMainLineTaskTwinsCity_Text[20678]["Text171"]
tNpcGossip[20678]["Text172"] = tMainLineTaskTwinsCity_Text[20678]["Text172"]
tNpcGossip[20678]["Text173"] = tMainLineTaskTwinsCity_Text[20678]["Text173"]
tNpcGossip[20678]["Option171"] = tMainLineTaskTwinsCity_Text[20678]["Option171"]
tNpcGossip[20678]["OptionFunc171"] = "NpcPosition_PathFind</N>20685"

--铁匠-任务中
tNpcGossip[20678]["Text2-1"] = {211,212,213,214}
tNpcGossip[20678]["tOption2-1"] = {211}
tNpcGossip[20678]["Text211"] = tMainLineTaskTwinsCity_Text[20678]["Text211"]
tNpcGossip[20678]["Text212"] = tMainLineTaskTwinsCity_Text[20678]["Text212"]
tNpcGossip[20678]["Text213"] = tMainLineTaskTwinsCity_Text[20678]["Text213"]
tNpcGossip[20678]["Text214"] = tMainLineTaskTwinsCity_Text[20678]["Text214"]
tNpcGossip[20678]["Option211"] = tMainLineTaskTwinsCity_Text[20678]["Option211"]
tNpcGossip[20678]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6793_4</N>20678"

--铁匠-任务中
tNpcGossip[20678]["Text2-2"] = {221,222,223}
tNpcGossip[20678]["tOption2-2"] = {221}
tNpcGossip[20678]["Text221"] = tMainLineTaskTwinsCity_Text[20678]["Text221"]
tNpcGossip[20678]["Text222"] = tMainLineTaskTwinsCity_Text[20678]["Text222"]
tNpcGossip[20678]["Text223"] = tMainLineTaskTwinsCity_Text[20678]["Text223"]
tNpcGossip[20678]["Option221"] = tMainLineTaskTwinsCity_Text[20678]["Option221"]
tNpcGossip[20678]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6793</N>20678"

--浸在井中的美酒-闲聊
tNpcGossip[20685]["Text1-1"] = {111,112,113}
tNpcGossip[20685]["tOption1-1"] = {111}
tNpcGossip[20685]["Text111"] = tMainLineTaskTwinsCity_Text[20685]["Text111"]
tNpcGossip[20685]["Text112"] = tMainLineTaskTwinsCity_Text[20685]["Text112"]
tNpcGossip[20685]["Text113"] = tMainLineTaskTwinsCity_Text[20685]["Text113"]
tNpcGossip[20685]["Option111"] = tMainLineTaskTwinsCity_Text[20685]["Option111"]

--浸在井中的美酒-任务中，身上没有酒
tNpcGossip[20685]["Text1-2"] = {121,122,123}
tNpcGossip[20685]["tOption1-2"] = {121,122}
tNpcGossip[20685]["Text121"] = tMainLineTaskTwinsCity_Text[20685]["Text121"]
tNpcGossip[20685]["Text122"] = tMainLineTaskTwinsCity_Text[20685]["Text122"]
tNpcGossip[20685]["Text123"] = tMainLineTaskTwinsCity_Text[20685]["Text123"]
tNpcGossip[20685]["Option121"] = tMainLineTaskTwinsCity_Text[20685]["Option121"]
tNpcGossip[20685]["Option122"] = tMainLineTaskTwinsCity_Text[20685]["Option122"]
tNpcGossip[20685]["OptionFunc121"] = "NpcPosition_PathFind</N>20678"
tNpcGossip[20685]["OptionFunc122"] = "MainLineTaskTwinsCity_Task6793_6</N>20685"

--浸在井中的美酒-任务中，身上没有酒
tNpcGossip[20685]["Text1-3"] = {131,132,133}
tNpcGossip[20685]["tOption1-3"] = {131}
tNpcGossip[20685]["Text131"] = tMainLineTaskTwinsCity_Text[20685]["Text131"]
tNpcGossip[20685]["Text132"] = tMainLineTaskTwinsCity_Text[20685]["Text132"]
tNpcGossip[20685]["Text133"] = tMainLineTaskTwinsCity_Text[20685]["Text133"]
tNpcGossip[20685]["Option131"] = tMainLineTaskTwinsCity_Text[20685]["Option131"]
tNpcGossip[20685]["OptionFunc131"] = "NpcPosition_PathFind</N>20678"

--浸在井中的美酒-任务中，身上没有酒
tNpcGossip[20685]["Text1-4"] = {141,142,143}
tNpcGossip[20685]["tOption1-4"] = {141}
tNpcGossip[20685]["Text141"] = tMainLineTaskTwinsCity_Text[20685]["Text141"]
tNpcGossip[20685]["Text142"] = tMainLineTaskTwinsCity_Text[20685]["Text142"]
tNpcGossip[20685]["Text143"] = tMainLineTaskTwinsCity_Text[20685]["Text143"]
tNpcGossip[20685]["Option141"] = tMainLineTaskTwinsCity_Text[20685]["Option141"]

--炫舞者-闲聊
tNpcGossip[20681]["Text1-1"] = {111,112,113}
tNpcGossip[20681]["tOption1-1"] = {111}
tNpcGossip[20681]["Text111"] = tMainLineTaskTwinsCity_Text[20681]["Text111"]
tNpcGossip[20681]["Text112"] = tMainLineTaskTwinsCity_Text[20681]["Text112"]
tNpcGossip[20681]["Text113"] = tMainLineTaskTwinsCity_Text[20681]["Text113"]
tNpcGossip[20681]["Option111"] = tMainLineTaskTwinsCity_Text[20681]["Option111"]

--炫舞者-首次对白
tNpcGossip[20681]["Text1-2"] = {121,122,123}
tNpcGossip[20681]["tOption1-2"] = {121}
tNpcGossip[20681]["Text121"] = tMainLineTaskTwinsCity_Text[20681]["Text121"]
tNpcGossip[20681]["Text122"] = tMainLineTaskTwinsCity_Text[20681]["Text122"]
tNpcGossip[20681]["Text123"] = tMainLineTaskTwinsCity_Text[20681]["Text123"]
tNpcGossip[20681]["Option121"] = tMainLineTaskTwinsCity_Text[20681]["Option121"]
tNpcGossip[20681]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6794_1</N>20681</N>1"

--炫舞者-你能教我跳舞吗？
tNpcGossip[20681]["Text1-3"] = {131,132,133,134}
tNpcGossip[20681]["tOption1-3"] = {131,132,133,134}
tNpcGossip[20681]["Text131"] = tMainLineTaskTwinsCity_Text[20681]["Text131"]
tNpcGossip[20681]["Text132"] = tMainLineTaskTwinsCity_Text[20681]["Text132"]
tNpcGossip[20681]["Text133"] = tMainLineTaskTwinsCity_Text[20681]["Text133"]
tNpcGossip[20681]["Text134"] = tMainLineTaskTwinsCity_Text[20681]["Text134"]
tNpcGossip[20681]["Option131"] = tMainLineTaskTwinsCity_Text[20681]["Option131"]
tNpcGossip[20681]["Option132"] = tMainLineTaskTwinsCity_Text[20681]["Option132"]
tNpcGossip[20681]["Option133"] = tMainLineTaskTwinsCity_Text[20681]["Option133"]
tNpcGossip[20681]["Option134"] = tMainLineTaskTwinsCity_Text[20681]["Option134"]
tNpcGossip[20681]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6794_1</N>20681</N>1"
tNpcGossip[20681]["OptionFunc132"] = "MainLineTaskTwinsCity_Task6794_1</N>20681</N>2"
tNpcGossip[20681]["OptionFunc133"] = "MainLineTaskTwinsCity_Task6794_1</N>20681</N>3"

--炫舞者-【舞蹈名】
tNpcGossip[20681]["Text1-4"] = {141,142,143}
tNpcGossip[20681]["tOption1-4"] = {141}
tNpcGossip[20681]["Text141"] = tMainLineTaskTwinsCity_Text[20681]["Text141"]
tNpcGossip[20681]["Text142"] = tMainLineTaskTwinsCity_Text[20681]["Text142"]
tNpcGossip[20681]["Text143"] = tMainLineTaskTwinsCity_Text[20681]["Text143"]
tNpcGossip[20681]["Option141"] = tMainLineTaskTwinsCity_Text[20681]["Option141"]
tNpcGossip[20681]["OptionPoint141"] = "1-3"

--炫舞者-首次对白
tNpcGossip[20681]["Text1-5"] = {151,152,153}
tNpcGossip[20681]["tOption1-5"] = {151}
tNpcGossip[20681]["Text151"] = tMainLineTaskTwinsCity_Text[20681]["Text151"]
tNpcGossip[20681]["Text152"] = tMainLineTaskTwinsCity_Text[20681]["Text152"]
tNpcGossip[20681]["Text153"] = tMainLineTaskTwinsCity_Text[20681]["Text153"]
tNpcGossip[20681]["Option151"] = tMainLineTaskTwinsCity_Text[20681]["Option151"]
tNpcGossip[20681]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6794</N>20681"

--驿站老板-闲聊说
tNpcGossip[20683]["Text1-1"] = {111,112,113}
tNpcGossip[20683]["tOption1-1"] = {111}
tNpcGossip[20683]["Text111"] = tMainLineTaskTwinsCity_Text[20683]["Text111"]
tNpcGossip[20683]["Text112"] = tMainLineTaskTwinsCity_Text[20683]["Text112"]
tNpcGossip[20683]["Text113"] = tMainLineTaskTwinsCity_Text[20683]["Text113"]
tNpcGossip[20683]["Option111"] = tMainLineTaskTwinsCity_Text[20683]["Option111"]

--驿站老板-首次对白
tNpcGossip[20683]["Text1-2"] = {121,122,123}
tNpcGossip[20683]["tOption1-2"] = {121}
tNpcGossip[20683]["Text121"] = tMainLineTaskTwinsCity_Text[20683]["Text121"]
tNpcGossip[20683]["Text122"] = tMainLineTaskTwinsCity_Text[20683]["Text122"]
tNpcGossip[20683]["Text123"] = tMainLineTaskTwinsCity_Text[20683]["Text123"]
tNpcGossip[20683]["Option121"] = tMainLineTaskTwinsCity_Text[20683]["Option121"]
tNpcGossip[20683]["OptionPoint121"] = "1-3"

--驿站老板-首次对白
tNpcGossip[20683]["Text1-3"] = {131,132,133}
tNpcGossip[20683]["tOption1-3"] = {131}
tNpcGossip[20683]["Text131"] = tMainLineTaskTwinsCity_Text[20683]["Text131"]
tNpcGossip[20683]["Text132"] = tMainLineTaskTwinsCity_Text[20683]["Text132"]
tNpcGossip[20683]["Text133"] = tMainLineTaskTwinsCity_Text[20683]["Text133"]
tNpcGossip[20683]["Option131"] = tMainLineTaskTwinsCity_Text[20683]["Option131"]
tNpcGossip[20683]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"

--驿站老板-我来陪你练练吧！
tNpcGossip[20683]["Text1-4"] = {141,142,143,144}
tNpcGossip[20683]["tOption1-4"] = {141,142,143,144}
tNpcGossip[20683]["Text141"] = tMainLineTaskTwinsCity_Text[20683]["Text141"]
tNpcGossip[20683]["Text142"] = tMainLineTaskTwinsCity_Text[20683]["Text142"]
tNpcGossip[20683]["Text143"] = tMainLineTaskTwinsCity_Text[20683]["Text143"]
tNpcGossip[20683]["Text144"] = tMainLineTaskTwinsCity_Text[20683]["Text144"]
tNpcGossip[20683]["Option141"] = tMainLineTaskTwinsCity_Text[20683]["Option141"]
tNpcGossip[20683]["Option142"] = tMainLineTaskTwinsCity_Text[20683]["Option142"]
tNpcGossip[20683]["Option143"] = tMainLineTaskTwinsCity_Text[20683]["Option143"]
tNpcGossip[20683]["Option144"] = tMainLineTaskTwinsCity_Text[20683]["Option144"]
tNpcGossip[20683]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc142"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc143"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"

--驿站老板-战胜NPC，1胜
tNpcGossip[20683]["Text1-5"] = {151,152,153}
tNpcGossip[20683]["tOption1-5"] = {151,152,153}
tNpcGossip[20683]["Text151"] = tMainLineTaskTwinsCity_Text[20683]["Text151"]
tNpcGossip[20683]["Text152"] = tMainLineTaskTwinsCity_Text[20683]["Text152"]
tNpcGossip[20683]["Text153"] = tMainLineTaskTwinsCity_Text[20683]["Text153"]
tNpcGossip[20683]["Option151"] = tMainLineTaskTwinsCity_Text[20683]["Option151"]
tNpcGossip[20683]["Option152"] = tMainLineTaskTwinsCity_Text[20683]["Option152"]
tNpcGossip[20683]["Option153"] = tMainLineTaskTwinsCity_Text[20683]["Option153"]
tNpcGossip[20683]["OptionFunc151"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc152"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc153"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"

--驿站老板-战胜NPC，2胜
tNpcGossip[20683]["Text1-6"] = {161,162,163}
tNpcGossip[20683]["tOption1-6"] = {161}
tNpcGossip[20683]["Text161"] = tMainLineTaskTwinsCity_Text[20683]["Text161"]
tNpcGossip[20683]["Text162"] = tMainLineTaskTwinsCity_Text[20683]["Text162"]
tNpcGossip[20683]["Text163"] = tMainLineTaskTwinsCity_Text[20683]["Text163"]
tNpcGossip[20683]["Option161"] = tMainLineTaskTwinsCity_Text[20683]["Option161"]
tNpcGossip[20683]["OptionFunc161"] = "MainLineTaskTwinsCity_Task6795</N>20683"

--驿站老板-输给NPC，1负
tNpcGossip[20683]["Text1-7"] = {171,172,173}
tNpcGossip[20683]["tOption1-7"] = {171}
tNpcGossip[20683]["Text171"] = tMainLineTaskTwinsCity_Text[20683]["Text171"]
tNpcGossip[20683]["Text172"] = tMainLineTaskTwinsCity_Text[20683]["Text172"]
tNpcGossip[20683]["Text173"] = tMainLineTaskTwinsCity_Text[20683]["Text173"]
tNpcGossip[20683]["Option171"] = tMainLineTaskTwinsCity_Text[20683]["Option171"]

--驿站老板-输给NPC，2负
tNpcGossip[20683]["Text1-8"] = {181,182,183}
tNpcGossip[20683]["tOption1-8"] = {181}
tNpcGossip[20683]["Text181"] = tMainLineTaskTwinsCity_Text[20683]["Text181"]
tNpcGossip[20683]["Text182"] = tMainLineTaskTwinsCity_Text[20683]["Text182"]
tNpcGossip[20683]["Text183"] = tMainLineTaskTwinsCity_Text[20683]["Text183"]
tNpcGossip[20683]["Option181"] = tMainLineTaskTwinsCity_Text[20683]["Option181"]
tNpcGossip[20683]["OptionFunc181"] = "MainLineTaskTwinsCity_Task6795_2</N>20683"

--驿站老板-玩家10秒内赶回NPC处，与NPC对话
tNpcGossip[20683]["Text2-1"] = {211,212,213}
tNpcGossip[20683]["tOption2-1"] = {211,212,213}
tNpcGossip[20683]["Text211"] = tMainLineTaskTwinsCity_Text[20683]["Text211"]
tNpcGossip[20683]["Text212"] = tMainLineTaskTwinsCity_Text[20683]["Text212"]
tNpcGossip[20683]["Text213"] = tMainLineTaskTwinsCity_Text[20683]["Text213"]
tNpcGossip[20683]["Option211"] = tMainLineTaskTwinsCity_Text[20683]["Option211"]
tNpcGossip[20683]["Option212"] = tMainLineTaskTwinsCity_Text[20683]["Option212"]
tNpcGossip[20683]["Option213"] = tMainLineTaskTwinsCity_Text[20683]["Option213"]
tNpcGossip[20683]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc212"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"
tNpcGossip[20683]["OptionFunc213"] = "MainLineTaskTwinsCity_Task6795_1</N>20683"

--驿站老板-玩家没能在10秒内赶回NPC处，与NPC对话
tNpcGossip[20683]["Text2-2"] = {221,222,223}
tNpcGossip[20683]["tOption2-2"] = {221}
tNpcGossip[20683]["Text221"] = tMainLineTaskTwinsCity_Text[20683]["Text221"]
tNpcGossip[20683]["Text222"] = tMainLineTaskTwinsCity_Text[20683]["Text222"]
tNpcGossip[20683]["Text223"] = tMainLineTaskTwinsCity_Text[20683]["Text223"]
tNpcGossip[20683]["Option221"] = tMainLineTaskTwinsCity_Text[20683]["Option221"]
tNpcGossip[20683]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6795_2</N>20683"

tNpcGossip[20683]["Text3-1"] = {311,312}
tNpcGossip[20683]["tOption3-1"] = {311}
tNpcGossip[20683]["Text311"] = tMainLineTaskTwinsCity_Text[20683]["Text311"]
tNpcGossip[20683]["Text312"] = tMainLineTaskTwinsCity_Text[20683]["Text312"]
tNpcGossip[20683]["Option311"] = tMainLineTaskTwinsCity_Text[20683]["Option311"]
tNpcGossip[20683]["OptionFunc311"] = "MainLineTaskTwinsCity_UseFengShui</N>20683"

tNpcGossip[20683]["Text3-2"] = {321,322}
tNpcGossip[20683]["tOption3-2"] = {321}
tNpcGossip[20683]["Text321"] = tMainLineTaskTwinsCity_Text[20683]["Text321"]
tNpcGossip[20683]["Text322"] = tMainLineTaskTwinsCity_Text[20683]["Text322"]
tNpcGossip[20683]["Option321"] = tMainLineTaskTwinsCity_Text[20683]["Option321"]
tNpcGossip[20683]["OptionFunc321"] = "MainLineTaskTwinsCity_Task6795</N>20683"


--装备店老板-闲聊
tNpcFace[5750] = 65
tNpcGossip[20677]["Text1-1"] = {111,112,113}
tNpcGossip[20677]["tOption1-1"] = {111}
tNpcGossip[20677]["Text111"] = tMainLineTaskTwinsCity_Text[20677]["Text111"]
tNpcGossip[20677]["Text112"] = tMainLineTaskTwinsCity_Text[20677]["Text112"]
tNpcGossip[20677]["Text113"] = tMainLineTaskTwinsCity_Text[20677]["Text113"]
tNpcGossip[20677]["Option111"] = tMainLineTaskTwinsCity_Text[20677]["Option111"]

--装备店老板-初次对白
tNpcGossip[20677]["Text1-2"] = {121,122,123}
tNpcGossip[20677]["tOption1-2"] = {121}
tNpcGossip[20677]["Text121"] = tMainLineTaskTwinsCity_Text[20677]["Text121"]
tNpcGossip[20677]["Text122"] = tMainLineTaskTwinsCity_Text[20677]["Text122"]
tNpcGossip[20677]["Text123"] = tMainLineTaskTwinsCity_Text[20677]["Text123"]
tNpcGossip[20677]["Option121"] = tMainLineTaskTwinsCity_Text[20677]["Option121"]
tNpcGossip[20677]["OptionPoint121"] = "1-3"

--装备店老板-你说说看
tNpcGossip[20677]["Text1-3"] = {131,132,133}
tNpcGossip[20677]["tOption1-3"] = {131}
tNpcGossip[20677]["Text131"] = tMainLineTaskTwinsCity_Text[20677]["Text131"]
tNpcGossip[20677]["Text132"] = tMainLineTaskTwinsCity_Text[20677]["Text132"]
tNpcGossip[20677]["Text133"] = tMainLineTaskTwinsCity_Text[20677]["Text133"]
tNpcGossip[20677]["Option131"] = tMainLineTaskTwinsCity_Text[20677]["Option131"]
tNpcGossip[20677]["Option132"] = tMainLineTaskTwinsCity_Text[20677]["Option132"]
tNpcGossip[20677]["OptionPoint131"] = "1-4"

--装备店老板-没问题
tNpcGossip[20677]["Text1-4"] = {141,142,143}
tNpcGossip[20677]["tOption1-4"] = {141}
tNpcGossip[20677]["Text141"] = tMainLineTaskTwinsCity_Text[20677]["Text141"]
tNpcGossip[20677]["Text142"] = tMainLineTaskTwinsCity_Text[20677]["Text142"]
tNpcGossip[20677]["Text143"] = tMainLineTaskTwinsCity_Text[20677]["Text143"]
tNpcGossip[20677]["Option141"] = tMainLineTaskTwinsCity_Text[20677]["Option141"]
tNpcGossip[20677]["OptionFunc141"] = "MainLineTaskTwinsCity_Task6797_1</N>20677"

--装备店老板-没问题
tNpcGossip[20677]["Text1-5"] = {151,152,153}
tNpcGossip[20677]["tOption1-5"] = {151}
tNpcGossip[20677]["Text151"] = tMainLineTaskTwinsCity_Text[20677]["Text151"]
tNpcGossip[20677]["Text152"] = tMainLineTaskTwinsCity_Text[20677]["Text152"]
tNpcGossip[20677]["Text153"] = tMainLineTaskTwinsCity_Text[20677]["Text153"]
tNpcGossip[20677]["Option151"] = tMainLineTaskTwinsCity_Text[20677]["Option151"]

--装备店老板-没问题
tNpcGossip[20677]["Text2-1"] = {211,212,213}
tNpcGossip[20677]["tOption2-1"] = {211,212}
tNpcGossip[20677]["Text211"] = tMainLineTaskTwinsCity_Text[20677]["Text211"]
tNpcGossip[20677]["Text212"] = tMainLineTaskTwinsCity_Text[20677]["Text212"]
tNpcGossip[20677]["Text213"] = tMainLineTaskTwinsCity_Text[20677]["Text213"]
tNpcGossip[20677]["Option211"] = tMainLineTaskTwinsCity_Text[20677]["Option211"]
tNpcGossip[20677]["Option212"] = tMainLineTaskTwinsCity_Text[20677]["Option212"]
tNpcGossip[20677]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6797_5</N>20677"
tNpcGossip[20677]["OptionFunc212"] = "NpcPosition_PathFind</N>20687"
tNpcGossip[20677]["OptionChkFunc211"] = function ()
	local	nItemId = 3303276
	local nNeedNum = 10
	return (Item_ChkMulItem(nItemId,nItemId,nNeedNum))
end
tNpcGossip[20677]["OptionChkFunc212"] = function ()
	local	nItemId = 3303276
	local nNeedNum = 10
	
	return (Get_TaskDetailData1(tMainLineTaskTwinsCity_DetectTaskId[8]) == 1) and (not Item_ChkMulItem(nItemId,nItemId,nNeedNum))
end

--装备店老板-没问题
tNpcGossip[20677]["Text2-2"] = {221,222,223}
tNpcGossip[20677]["tOption2-2"] = {221}
tNpcGossip[20677]["Text221"] = tMainLineTaskTwinsCity_Text[20677]["Text221"]
tNpcGossip[20677]["Text222"] = tMainLineTaskTwinsCity_Text[20677]["Text222"]
tNpcGossip[20677]["Text223"] = tMainLineTaskTwinsCity_Text[20677]["Text223"]
tNpcGossip[20677]["Option221"] = tMainLineTaskTwinsCity_Text[20677]["Option221"]
tNpcGossip[20677]["OptionPoint221"] = "2-3"

--装备店老板-没问题
tNpcGossip[20677]["Text2-3"] = {231,232,233,234}
tNpcGossip[20677]["tOption2-3"] = {231}
tNpcGossip[20677]["Text231"] = tMainLineTaskTwinsCity_Text[20677]["Text231"]
tNpcGossip[20677]["Text232"] = tMainLineTaskTwinsCity_Text[20677]["Text232"]
tNpcGossip[20677]["Text233"] = tMainLineTaskTwinsCity_Text[20677]["Text233"]
tNpcGossip[20677]["Text234"] = tMainLineTaskTwinsCity_Text[20677]["Text234"]
tNpcGossip[20677]["Option231"] = tMainLineTaskTwinsCity_Text[20677]["Option231"]
tNpcGossip[20677]["OptionFunc231"] = "MainLineTaskTwinsCity_Task6797</N>20677"

tNpcGossip[20677]["Text2-6"] = {261,262,263}
tNpcGossip[20677]["tOption2-6"] = {261}
tNpcGossip[20677]["Text261"] = tMainLineTaskTwinsCity_Text[20677]["Text261"]
tNpcGossip[20677]["Text262"] = tMainLineTaskTwinsCity_Text[20677]["Text262"]
tNpcGossip[20677]["Text263"] = tMainLineTaskTwinsCity_Text[20677]["Text263"]
tNpcGossip[20677]["Option261"] = tMainLineTaskTwinsCity_Text[20677]["Option261"]
tNpcGossip[20677]["OptionFunc261"] = "NpcPosition_PathFind</N>20687"

tNpcGossip[20677]["Text3-1"] = {311,312,313}
tNpcGossip[20677]["tOption3-1"] = {311}
tNpcGossip[20677]["Text311"] = tMainLineTaskTwinsCity_Text[20677]["Text311"]
tNpcGossip[20677]["Text312"] = tMainLineTaskTwinsCity_Text[20677]["Text312"]
tNpcGossip[20677]["Text313"] = tMainLineTaskTwinsCity_Text[20677]["Text313"]
tNpcGossip[20677]["Option311"] = tMainLineTaskTwinsCity_Text[20677]["Option311"]
tNpcGossip[20677]["OptionFunc311"] = "NpcPosition_PathFind</N>20687"


--石匠-闲聊对白
tNpcGossip[20687]["Text1-1"] = {111,112,113}
tNpcGossip[20687]["tOption1-1"] = {111}
tNpcGossip[20687]["Text111"] = tMainLineTaskTwinsCity_Text[20687]["Text111"]
tNpcGossip[20687]["Text112"] = tMainLineTaskTwinsCity_Text[20687]["Text112"]
tNpcGossip[20687]["Text113"] = tMainLineTaskTwinsCity_Text[20687]["Text113"]
tNpcGossip[20687]["Option111"] = tMainLineTaskTwinsCity_Text[20687]["Option111"]

--石匠-闲聊对白
tNpcGossip[20687]["Text1-2"] = {121,122,123}
tNpcGossip[20687]["tOption1-2"] = {121}
tNpcGossip[20687]["Text121"] = tMainLineTaskTwinsCity_Text[20687]["Text121"]
tNpcGossip[20687]["Text122"] = tMainLineTaskTwinsCity_Text[20687]["Text122"]
tNpcGossip[20687]["Text123"] = tMainLineTaskTwinsCity_Text[20687]["Text123"]
tNpcGossip[20687]["Option121"] = tMainLineTaskTwinsCity_Text[20687]["Option121"]
tNpcGossip[20687]["Option122"] = tMainLineTaskTwinsCity_Text[20687]["Option122"]
tNpcGossip[20687]["OptionPoint121"] = "1-6"
tNpcGossip[20687]["OptionPoint122"] = "1-6"
--石匠-闲聊对白
tNpcGossip[20687]["Text1-3"] = {131,132,133,134}
tNpcGossip[20687]["tOption1-3"] = {131}
tNpcGossip[20687]["Text131"] = tMainLineTaskTwinsCity_Text[20687]["Text131"]
tNpcGossip[20687]["Text132"] = tMainLineTaskTwinsCity_Text[20687]["Text132"]
tNpcGossip[20687]["Text133"] = tMainLineTaskTwinsCity_Text[20687]["Text133"]
tNpcGossip[20687]["Text134"] = tMainLineTaskTwinsCity_Text[20687]["Text134"]
tNpcGossip[20687]["Option131"] = tMainLineTaskTwinsCity_Text[20687]["Option131"]
tNpcGossip[20687]["OptionFunc131"] = "MainLineTaskTwinsCity_Task6797_2</N>20687</N>1200"

--石匠-闲聊对白
tNpcGossip[20687]["Text1-4"] = {141,142,143}
tNpcGossip[20687]["tOption1-4"] = {141}
tNpcGossip[20687]["Text141"] = tMainLineTaskTwinsCity_Text[20687]["Text141"]
tNpcGossip[20687]["Text142"] = tMainLineTaskTwinsCity_Text[20687]["Text142"]
tNpcGossip[20687]["Text143"] = tMainLineTaskTwinsCity_Text[20687]["Text143"]
tNpcGossip[20687]["Option141"] = tMainLineTaskTwinsCity_Text[20687]["Option141"]

--石匠-不是说好1000银两么？
tNpcGossip[20687]["Text1-6"] = {161,162,163,164}
tNpcGossip[20687]["tOption1-6"] = {161}
tNpcGossip[20687]["Text161"] = tMainLineTaskTwinsCity_Text[20687]["Text161"]
tNpcGossip[20687]["Text162"] = tMainLineTaskTwinsCity_Text[20687]["Text162"]
tNpcGossip[20687]["Text163"] = tMainLineTaskTwinsCity_Text[20687]["Text163"]
tNpcGossip[20687]["Text164"] = tMainLineTaskTwinsCity_Text[20687]["Text164"]
tNpcGossip[20687]["Option161"] = tMainLineTaskTwinsCity_Text[20687]["Option161"]
tNpcGossip[20687]["Option162"] = tMainLineTaskTwinsCity_Text[20687]["Option162"]
tNpcGossip[20687]["Option163"] = tMainLineTaskTwinsCity_Text[20687]["Option163"]
tNpcGossip[20687]["Option164"] = tMainLineTaskTwinsCity_Text[20687]["Option164"]
tNpcGossip[20687]["OptionFunc161"] = "MainLineTaskTwinsCity_Task6797_4</N>20687"
tNpcGossip[20687]["OptionPoint162"] = "2-2"
tNpcGossip[20687]["OptionPoint163"] = "2-3"

--石匠-威逼
tNpcGossip[20687]["Text2-1"] = {211,212,213}
tNpcGossip[20687]["tOption2-1"] = {211}
tNpcGossip[20687]["Text211"] = tMainLineTaskTwinsCity_Text[20687]["Text211"]
tNpcGossip[20687]["Text212"] = tMainLineTaskTwinsCity_Text[20687]["Text212"]
tNpcGossip[20687]["Text213"] = tMainLineTaskTwinsCity_Text[20687]["Text213"]
tNpcGossip[20687]["Option211"] = tMainLineTaskTwinsCity_Text[20687]["Option211"]
tNpcGossip[20687]["OptionFunc211"] = "MainLineTaskTwinsCity_Task6797_3</N>20687</N>1"

--石匠-威逼
tNpcGossip[20687]["Text2-2"] = {221,222,223}
tNpcGossip[20687]["tOption2-2"] = {221}
tNpcGossip[20687]["Text221"] = tMainLineTaskTwinsCity_Text[20687]["Text221"]
tNpcGossip[20687]["Text222"] = tMainLineTaskTwinsCity_Text[20687]["Text222"]
tNpcGossip[20687]["Text223"] = tMainLineTaskTwinsCity_Text[20687]["Text223"]
tNpcGossip[20687]["Option221"] = tMainLineTaskTwinsCity_Text[20687]["Option221"]
tNpcGossip[20687]["OptionFunc221"] = "MainLineTaskTwinsCity_Task6797_3</N>20687</N>2"

--石匠-威逼
tNpcGossip[20687]["Text2-3"] = {231,232,233}
tNpcGossip[20687]["tOption2-3"] = {231}
tNpcGossip[20687]["Text231"] = tMainLineTaskTwinsCity_Text[20687]["Text231"]
tNpcGossip[20687]["Text232"] = tMainLineTaskTwinsCity_Text[20687]["Text232"]
tNpcGossip[20687]["Text233"] = tMainLineTaskTwinsCity_Text[20687]["Text233"]
tNpcGossip[20687]["Option231"] = tMainLineTaskTwinsCity_Text[20687]["Option231"]
tNpcGossip[20687]["OptionFunc231"] = "MainLineTaskTwinsCity_Task6797_2</N>20687</N>1200"

--石匠-威逼
tNpcGossip[20687]["Text2-4"] = {241,242,243}
tNpcGossip[20687]["tOption2-4"] = {241}
tNpcGossip[20687]["Text241"] = tMainLineTaskTwinsCity_Text[20687]["Text241"]
tNpcGossip[20687]["Text242"] = tMainLineTaskTwinsCity_Text[20687]["Text242"]
tNpcGossip[20687]["Text243"] = tMainLineTaskTwinsCity_Text[20687]["Text243"]
tNpcGossip[20687]["Option241"] = tMainLineTaskTwinsCity_Text[20687]["Option241"]


--石匠-威逼
tNpcGossip[20687]["Text2-5"] = {251,252,253}
tNpcGossip[20687]["tOption2-5"] = {251}
tNpcGossip[20687]["Text251"] = tMainLineTaskTwinsCity_Text[20687]["Text251"]
tNpcGossip[20687]["Text252"] = tMainLineTaskTwinsCity_Text[20687]["Text252"]
tNpcGossip[20687]["Text253"] = tMainLineTaskTwinsCity_Text[20687]["Text253"]
tNpcGossip[20687]["Option251"] = tMainLineTaskTwinsCity_Text[20687]["Option251"]
tNpcGossip[20687]["OptionFunc251"] = "MainLineTaskTwinsCity_Task6797_2</N>20687</N>1200"

--石匠-威逼
tNpcGossip[20687]["Text2-9"] = {291,292,293}
tNpcGossip[20687]["tOption2-9"] = {291}
tNpcGossip[20687]["Text291"] = tMainLineTaskTwinsCity_Text[20687]["Text291"]
tNpcGossip[20687]["Text292"] = tMainLineTaskTwinsCity_Text[20687]["Text292"]
tNpcGossip[20687]["Text293"] = tMainLineTaskTwinsCity_Text[20687]["Text293"]
tNpcGossip[20687]["Option291"] = tMainLineTaskTwinsCity_Text[20687]["Option291"]
tNpcGossip[20687]["OptionFunc291"] = "NpcPosition_PathFind</N>20677"

tNpcGossip[20687]["Text3-1"] = {311,312,313}
tNpcGossip[20687]["tOption3-1"] = {311}
tNpcGossip[20687]["Text311"] = tMainLineTaskTwinsCity_Text[20687]["Text311"]
tNpcGossip[20687]["Text312"] = tMainLineTaskTwinsCity_Text[20687]["Text312"]
tNpcGossip[20687]["Text313"] = tMainLineTaskTwinsCity_Text[20687]["Text313"]
tNpcGossip[20687]["Option311"] = tMainLineTaskTwinsCity_Text[20687]["Option311"]
-- tNpcGossip[20687]["OptionFunc311"] = "NpcPosition_PathFind</N>20677"

tNpcGossip[20687]["Text3-2"] = {321}
tNpcGossip[20687]["tOption3-2"] = {321}
tNpcGossip[20687]["Text321"] = tMainLineTaskTwinsCity_Text[20687]["Text321"]
tNpcGossip[20687]["Option321"] = tMainLineTaskTwinsCity_Text[20687]["Option321"]
tNpcGossip[20687]["OptionFunc321"] = "NpcPosition_PathFind</N>20677"

--季如风-首次对白
tNpcGossip[20689]["Text5-1"] = {511,512,513}
tNpcGossip[20689]["tOption5-1"] = {511}
tNpcGossip[20689]["Text511"] = tMainLineTaskTwinsCity_Text[20595]["Text511"]
tNpcGossip[20689]["Text512"] = tMainLineTaskTwinsCity_Text[20595]["Text512"]
tNpcGossip[20689]["Text513"] = tMainLineTaskTwinsCity_Text[20595]["Text513"]
tNpcGossip[20689]["Option511"] = tMainLineTaskTwinsCity_Text[20595]["Option511"]
tNpcGossip[20689]["OptionPoint511"] = "5-2"

tNpcGossip[20689]["Text5-2"] = {521,522,523,524}
tNpcGossip[20689]["tOption5-2"] = {521}
tNpcGossip[20689]["Text521"] = tMainLineTaskTwinsCity_Text[20595]["Text521"]
tNpcGossip[20689]["Text522"] = tMainLineTaskTwinsCity_Text[20595]["Text522"]
tNpcGossip[20689]["Text523"] = tMainLineTaskTwinsCity_Text[20595]["Text523"]
tNpcGossip[20689]["Text524"] = tMainLineTaskTwinsCity_Text[20595]["Text524"]
tNpcGossip[20689]["Option521"] = tMainLineTaskTwinsCity_Text[20595]["Option521"]
tNpcGossip[20689]["OptionPoint521"] = "5-4"

tNpcGossip[20689]["Text5-3"] = {531,532,533}
tNpcGossip[20689]["tOption5-3"] = {531}
tNpcGossip[20689]["Text531"] = tMainLineTaskTwinsCity_Text[20595]["Text531"]
tNpcGossip[20689]["Text532"] = tMainLineTaskTwinsCity_Text[20595]["Text532"]
tNpcGossip[20689]["Text533"] = tMainLineTaskTwinsCity_Text[20595]["Text533"]
tNpcGossip[20689]["Option531"] = tMainLineTaskTwinsCity_Text[20595]["Option531"]

tNpcGossip[20689]["Text5-4"] = {541,542,543}
tNpcGossip[20689]["tOption5-4"] = {541}
tNpcGossip[20689]["Text541"] = tMainLineTaskTwinsCity_Text[20595]["Text541"]
tNpcGossip[20689]["Text542"] = tMainLineTaskTwinsCity_Text[20595]["Text542"]
tNpcGossip[20689]["Text543"] = tMainLineTaskTwinsCity_Text[20595]["Text543"]
tNpcGossip[20689]["Option541"] = tMainLineTaskTwinsCity_Text[20595]["Option541"]
tNpcGossip[20689]["OptionFunc541"] = "MainLineTaskTwinsCity_Task6796_2</N>20689"

tNpcGossip[20689]["Text5-5"] = {551,552,553}
tNpcGossip[20689]["tOption5-5"] = {551,552}
tNpcGossip[20689]["Text551"] = tMainLineTaskTwinsCity_Text[20595]["Text551"]
tNpcGossip[20689]["Text552"] = tMainLineTaskTwinsCity_Text[20595]["Text552"]
tNpcGossip[20689]["Text553"] = tMainLineTaskTwinsCity_Text[20595]["Text553"]
tNpcGossip[20689]["Option551"] = tMainLineTaskTwinsCity_Text[20595]["Option551"]
tNpcGossip[20689]["Option552"] = tMainLineTaskTwinsCity_Text[20595]["Option552"]
tNpcGossip[20689]["OptionFunc551"] = "MainLineTaskTwinsCity_Task6796_3</N>20689"
tNpcGossip[20689]["OptionFunc552"] = "MainLineTaskTwinsCity_Task6796_2</N>20689"

tNpcGossip[20689]["Text5-6"] = {561,562,563}
tNpcGossip[20689]["tOption5-6"] = {561}
tNpcGossip[20689]["Text561"] = tMainLineTaskTwinsCity_Text[20595]["Text561"]
tNpcGossip[20689]["Text562"] = tMainLineTaskTwinsCity_Text[20595]["Text562"]
tNpcGossip[20689]["Text563"] = tMainLineTaskTwinsCity_Text[20595]["Text563"]
tNpcGossip[20689]["Option561"] = tMainLineTaskTwinsCity_Text[20595]["Option561"]
tNpcGossip[20689]["OptionFunc561"] = "MainLineTaskTwinsCity_Task6796_2</N>20689"

tNpcGossip[20689]["Text5-7"] = {571,572,573}
tNpcGossip[20689]["tOption5-7"] = {571}
tNpcGossip[20689]["Text571"] = tMainLineTaskTwinsCity_Text[20595]["Text571"]
tNpcGossip[20689]["Text572"] = tMainLineTaskTwinsCity_Text[20595]["Text572"]
tNpcGossip[20689]["Text573"] = tMainLineTaskTwinsCity_Text[20595]["Text573"]
tNpcGossip[20689]["Option571"] = tMainLineTaskTwinsCity_Text[20595]["Option571"]
tNpcGossip[20689]["OptionFunc571"] = "MainLineTaskTwinsCity_Task6796</N>20689"

tNpcGossip[20689]["Text5-8"] = {581,582,583}
tNpcGossip[20689]["tOption5-8"] = {581}
tNpcGossip[20689]["Text581"] = tMainLineTaskTwinsCity_Text[20595]["Text581"]
tNpcGossip[20689]["Text582"] = tMainLineTaskTwinsCity_Text[20595]["Text582"]
tNpcGossip[20689]["Text583"] = tMainLineTaskTwinsCity_Text[20595]["Text583"]
tNpcGossip[20689]["Option581"] = tMainLineTaskTwinsCity_Text[20595]["Option581"]

--富商土豪磊-闲聊
tNpcGossip[20686]["Text1-1"] = {111,112,113}
tNpcGossip[20686]["tOption1-1"] = {111}
tNpcGossip[20686]["Text111"] = tMainLineTaskTwinsCity_Text[20686]["Text111"]
tNpcGossip[20686]["Text112"] = tMainLineTaskTwinsCity_Text[20686]["Text112"]
tNpcGossip[20686]["Text113"] = tMainLineTaskTwinsCity_Text[20686]["Text113"]
tNpcGossip[20686]["Option111"] = tMainLineTaskTwinsCity_Text[20686]["Option111"]

tNpcGossip[20686]["Text1-2"] = {121,122,123}
tNpcGossip[20686]["tOption1-2"] = {121}
tNpcGossip[20686]["Text121"] = tMainLineTaskTwinsCity_Text[20686]["Text121"]
tNpcGossip[20686]["Text122"] = tMainLineTaskTwinsCity_Text[20686]["Text122"]
tNpcGossip[20686]["Text123"] = tMainLineTaskTwinsCity_Text[20686]["Text123"]
tNpcGossip[20686]["Option121"] = tMainLineTaskTwinsCity_Text[20686]["Option121"]
tNpcGossip[20686]["OptionFunc121"] = "MainLineTaskTwinsCity_Task6796_1</N>20686"

tNpcGossip[20686]["Text1-3"] = {131,132,133}
tNpcGossip[20686]["tOption1-3"] = {131}
tNpcGossip[20686]["Text131"] = tMainLineTaskTwinsCity_Text[20686]["Text131"]
tNpcGossip[20686]["Text132"] = tMainLineTaskTwinsCity_Text[20686]["Text132"]
tNpcGossip[20686]["Text133"] = tMainLineTaskTwinsCity_Text[20686]["Text133"]
tNpcGossip[20686]["Option131"] = tMainLineTaskTwinsCity_Text[20686]["Option131"]

tNpcGossip[20686]["Text1-4"] = {141,142,143}
tNpcGossip[20686]["tOption1-4"] = {141}
tNpcGossip[20686]["Text141"] = tMainLineTaskTwinsCity_Text[20686]["Text141"]
tNpcGossip[20686]["Text142"] = tMainLineTaskTwinsCity_Text[20686]["Text142"]
tNpcGossip[20686]["Text143"] = tMainLineTaskTwinsCity_Text[20686]["Text143"]
tNpcGossip[20686]["Option141"] = tMainLineTaskTwinsCity_Text[20686]["Option141"]

------------------------------------------------------------闲聊NPC对白-----------------------------------------------------------------------------
-- 头像
tNpcFace[5480] = 15
tNpcFace[8] = 67
tNpcFace[5486] = 123
tNpcFace[160] = 6
tNpcFace[5467] = 1
tNpcFace[270] = 110
tNpcFace[5455] = 186
tNpcFace[5176] = 30
tNpcFace[5440] = 56
tNpcFace[5469] = 67
tNpcFace[5452] = 67
tNpcFace[5507] = 9
tNpcFace[5487] = 85
tNpcFace[5438] = 94
tNpcFace[580] = 85
tNpcFace[5437] = 56
tNpcFace[873] = 102
tNpcFace[5683] = 46
tNpcFace[5435] = 67
tNpcFace[759] = 55
tNpcFace[688] = 67
tNpcFace[5442] = 104
tNpcFace[5434] = 30
tNpcFace[5433] = 74
tNpcFace[5436] = 67
tNpcFace[457] = 67
tNpcFace[5488] = 154
tNpcFace[5458] = 59
tNpcFace[5495] = 233
tNpcFace[5444] = 7
tNpcFace[5443] = 116
tNpcFace[5505] = 183
tNpcFace[5460] = 175
tNpcFace[5499] = 8
tNpcFace[849] = 7
tNpcFace[5491] = 26
tNpcFace[5461] = 31
tNpcFace[5445] = 18
tNpcFace[5489] = 40
tNpcFace[5490] = 88
-- tNpcFace[5493] = 0
-- tNpcFace[1798] = 0
tNpcFace[5506] = 218
-- tNpcFace[5477] = 0
tNpcFace[5485] = 7
tNpcFace[5451] = 71
tNpcFace[502] = 7
tNpcFace[5450] = 72
tNpcFace[5482] = 6
tNpcFace[2919] = 245

tNpcFace[2639] = 85
-- tNpcFace[3089] = 0
tNpcFace[5061] = 249
tNpcFace[5496] = 92
tNpcFace[5494] = 107
tNpcFace[3740] = 247

tNpcFace[5432] = 107
tNpcFace[777] = 107
tNpcFace[5468] = 92
tNpcFace[5471] = 28
tNpcFace[5466] = 92
tNpcFace[5465] = 92
tNpcFace[812] = 188
-- tNpcFace[668] = 0
tNpcFace[5448] = 29
tNpcFace[836] = 15
tNpcFace[5464] = 15
tNpcFace[5510] = 6

-- 总捕头
tNpcGossip[21031] = tNpcGossip[21031] or DefaultNpc:new{}
tNpcGossip[21031]["OptionHidden"] = 1
tNpcGossip[21031]["DialogueText"] = tMainLineTaskTwinsCity_Text[21031]
tNpcGossip[21031]["Text1-1"] = {111,112,113}
tNpcGossip[21031]["tOption1-1"] = {1}

-- 陈将军
tNpcGossip[21029] = tNpcGossip[21029] or DefaultNpc:new{}
tNpcGossip[21029]["OptionHidden"] = 1
tNpcGossip[21029]["DialogueText"] = tMainLineTaskTwinsCity_Text[21029]
tNpcGossip[21029]["Text1-1"] = {111,112,113}
tNpcGossip[21029]["tOption1-1"] = {1}

-- 王五
tNpcGossip[20945] = tNpcGossip[20945] or DefaultNpc:new{}
tNpcGossip[20945]["OptionHidden"] = 1
tNpcGossip[20945]["DialogueText"] = tMainLineTaskTwinsCity_Text[20945]
tNpcGossip[20945]["Text1-1"] = {111,112,113}
tNpcGossip[20945]["tOption1-1"] = {1}

-- 罗小羽
tNpcGossip[20937] = tNpcGossip[20937] or DefaultNpc:new{}
tNpcGossip[20937]["OptionHidden"] = 1
tNpcGossip[20937]["DialogueText"] = tMainLineTaskTwinsCity_Text[20937]
tNpcGossip[20937]["Text1-1"] = {111,112,113}
tNpcGossip[20937]["tOption1-1"] = {1}

-- 李元
tNpcGossip[20943] = tNpcGossip[20943] or DefaultNpc:new{}
tNpcGossip[20943]["OptionHidden"] = 1
tNpcGossip[20943]["DialogueText"] = tMainLineTaskTwinsCity_Text[20943]
tNpcGossip[20943]["Text1-1"] = {111,112,113}
tNpcGossip[20943]["tOption1-1"] = {1}

-- 董奉
tNpcGossip[20939] = tNpcGossip[20939] or DefaultNpc:new{}
tNpcGossip[20939]["OptionHidden"] = 1
tNpcGossip[20939]["DialogueText"] = tMainLineTaskTwinsCity_Text[20939]
tNpcGossip[20939]["Text1-1"] = {111,112,113}
tNpcGossip[20939]["tOption1-1"] = {1}

-- 徐处机
tNpcGossip[20946] = tNpcGossip[20946] or DefaultNpc:new{}
tNpcGossip[20946]["OptionHidden"] = 1
tNpcGossip[20946]["DialogueText"] = tMainLineTaskTwinsCity_Text[20946]
tNpcGossip[20946]["Text1-1"] = {111,112,113}
tNpcGossip[20946]["tOption1-1"] = {1}

-- 王凯
tNpcGossip[20935] = tNpcGossip[20935] or DefaultNpc:new{}
tNpcGossip[20935]["OptionHidden"] = 1
tNpcGossip[20935]["DialogueText"] = tMainLineTaskTwinsCity_Text[20935]
tNpcGossip[20935]["Text1-1"] = {111,112,113,114}
tNpcGossip[20935]["tOption1-1"] = {1}

-- 啸天
tNpcGossip[20933] = tNpcGossip[20933] or DefaultNpc:new{}
tNpcGossip[20933]["OptionHidden"] = 1
tNpcGossip[20933]["DialogueText"] = tMainLineTaskTwinsCity_Text[20933]
tNpcGossip[20933]["Text1-1"] = {111,112,113}
tNpcGossip[20933]["tOption1-1"] = {1}

-- 云龙
tNpcGossip[20926] = tNpcGossip[20926] or DefaultNpc:new{}
tNpcGossip[20926]["OptionHidden"] = 1
tNpcGossip[20926]["DialogueText"] = tMainLineTaskTwinsCity_Text[20926]
tNpcGossip[20926]["Text1-1"] = {111,112,113,114}
tNpcGossip[20926]["tOption1-1"] = {1}

-- 无念和尚
tNpcGossip[20920] = tNpcGossip[20920] or DefaultNpc:new{}
tNpcGossip[20920]["OptionHidden"] = 1
tNpcGossip[20920]["DialogueText"] = tMainLineTaskTwinsCity_Text[20920]
tNpcGossip[20920]["Text1-1"] = {111,112,113}
tNpcGossip[20920]["tOption1-1"] = {1}

-- 扁青
tNpcGossip[20940] = tNpcGossip[20940] or DefaultNpc:new{}
tNpcGossip[20940]["OptionHidden"] = 1
tNpcGossip[20940]["DialogueText"] = tMainLineTaskTwinsCity_Text[20940]
tNpcGossip[20940]["Text1-1"] = {111,112,113,114}
tNpcGossip[20940]["tOption1-1"] = {1}

-- 李太医
tNpcGossip[20941] = tNpcGossip[20941] or DefaultNpc:new{}
tNpcGossip[20941]["OptionHidden"] = 1
tNpcGossip[20941]["DialogueText"] = tMainLineTaskTwinsCity_Text[20941]
tNpcGossip[20941]["Text1-1"] = {111,112,113}
tNpcGossip[20941]["tOption1-1"] = {1}

tNpcGossip[20941]["Text1-2"] = {111,112,121,122}
tNpcGossip[20941]["tOption1-2"] = {2}
tNpcGossip[20941]["OptionFunc2"] = "NpcPosition_PathFind</N>20589"

-- 赵圣将军
tNpcGossip[20942] = tNpcGossip[20942] or DefaultNpc:new{}
tNpcGossip[20942]["OptionHidden"] = 1
tNpcGossip[20942]["DialogueText"] = tMainLineTaskTwinsCity_Text[20942]
tNpcGossip[20942]["Text1-1"] = {111,112,113}
tNpcGossip[20942]["tOption1-1"] = {1}

-- 飞燕儿
tNpcGossip[20954] = tNpcGossip[20954] or DefaultNpc:new{}
tNpcGossip[20954]["OptionHidden"] = 1
tNpcGossip[20954]["DialogueText"] = tMainLineTaskTwinsCity_Text[20954]
tNpcGossip[20954]["Text1-1"] = {111,112,113}
tNpcGossip[20954]["tOption1-1"] = {1}

-- 飞云子
tNpcGossip[20953] = tNpcGossip[20953] or DefaultNpc:new{}
tNpcGossip[20953]["OptionHidden"] = 1
tNpcGossip[20953]["DialogueText"] = tMainLineTaskTwinsCity_Text[20953]
tNpcGossip[20953]["Text1-1"] = {111,112,113}
tNpcGossip[20953]["tOption1-1"] = {1}

-- 双龙城副总兵
tNpcGossip[20970] = tNpcGossip[20970] or DefaultNpc:new{}
tNpcGossip[20970]["OptionHidden"] = 1
tNpcGossip[20970]["DialogueText"] = tMainLineTaskTwinsCity_Text[20970]
tNpcGossip[20970]["Text1-1"] = {111,112,113}
tNpcGossip[20970]["tOption1-1"] = {1}

-- 功夫之王
tNpcGossip[21004] = tNpcGossip[21004] or DefaultNpc:new{}
tNpcGossip[21004]["OptionHidden"] = 1
tNpcGossip[21004]["DialogueText"] = tMainLineTaskTwinsCity_Text[21004]
tNpcGossip[21004]["Text1-1"] = {111,112,113}
tNpcGossip[21004]["tOption1-1"] = {1}

-- 揽月仙子
tNpcGossip[21012] = tNpcGossip[21012] or DefaultNpc:new{}
tNpcGossip[21012]["OptionHidden"] = 1
tNpcGossip[21012]["DialogueText"] = tMainLineTaskTwinsCity_Text[21012]
tNpcGossip[21012]["Text1-1"] = {111,112,113}
tNpcGossip[21012]["tOption1-1"] = {1}

-- 乐善
tNpcGossip[21039] = tNpcGossip[21039] or DefaultNpc:new{}
tNpcGossip[21039]["OptionHidden"] = 1
tNpcGossip[21039]["DialogueText"] = tMainLineTaskTwinsCity_Text[21039]
tNpcGossip[21039]["Text1-1"] = {111,112,113}
tNpcGossip[21039]["tOption1-1"] = {1}

-- 神匠回天
tNpcGossip[20995] = tNpcGossip[20995] or DefaultNpc:new{}
tNpcGossip[20995]["OptionHidden"] = 1
tNpcGossip[20995]["DialogueText"] = tMainLineTaskTwinsCity_Text[20995]
tNpcGossip[20995]["Text1-1"] = {111,112,113,114}
tNpcGossip[20995]["tOption1-1"] = {1}

-- 神匠补天
tNpcGossip[20993] = tNpcGossip[20993] or DefaultNpc:new{}
tNpcGossip[20993]["OptionHidden"] = 1
tNpcGossip[20993]["DialogueText"] = tMainLineTaskTwinsCity_Text[20993]
tNpcGossip[20993]["Text1-1"] = {111,112,113,114}
tNpcGossip[20993]["tOption1-1"] = {1}

-- 乾坤五行炉
tNpcGossip[21038] = tNpcGossip[21038] or DefaultNpc:new{}
tNpcGossip[21038]["OptionHidden"] = 1
tNpcGossip[21038]["DialogueText"] = tMainLineTaskTwinsCity_Text[21038]
tNpcGossip[21038]["Text1-1"] = {111,112,113}
tNpcGossip[21038]["tOption1-1"] = {1}

-- 天机道长
tNpcGossip[21040] = tNpcGossip[21040] or DefaultNpc:new{}
tNpcGossip[21040]["OptionHidden"] = 1
tNpcGossip[21040]["DialogueText"] = tMainLineTaskTwinsCity_Text[21040]
tNpcGossip[21040]["Text1-1"] = {111,112,113}
tNpcGossip[21040]["tOption1-1"] = {1}

-- 传功长老
tNpcGossip[20928] = tNpcGossip[20928] or DefaultNpc:new{}
tNpcGossip[20928]["OptionHidden"] = 1
tNpcGossip[20928]["DialogueText"] = tMainLineTaskTwinsCity_Text[20928]
tNpcGossip[20928]["Text1-1"] = {111,112,113,114}
tNpcGossip[20928]["tOption1-1"] = {1}

-- 天石管理员
tNpcGossip[20911] = tNpcGossip[20911] or DefaultNpc:new{}
tNpcGossip[20911]["OptionHidden"] = 1
tNpcGossip[20911]["DialogueText"] = tMainLineTaskTwinsCity_Text[20911]
tNpcGossip[20911]["Text1-1"] = {111,112,113}
tNpcGossip[20911]["tOption1-1"] = {1}

-- 装备赎回专员
tNpcGossip[20936] = tNpcGossip[20936] or DefaultNpc:new{}
tNpcGossip[20936]["OptionHidden"] = 1
tNpcGossip[20936]["DialogueText"] = tMainLineTaskTwinsCity_Text[20936]
tNpcGossip[20936]["Text1-1"] = {111,112,113}
tNpcGossip[20936]["tOption1-1"] = {1}

-- 武器兑换大师（欧星子）
tNpcGossip[20950] = tNpcGossip[20950] or DefaultNpc:new{}
tNpcGossip[20950]["OptionHidden"] = 1
tNpcGossip[20950]["DialogueText"] = tMainLineTaskTwinsCity_Text[20950]
tNpcGossip[20950]["Text1-1"] = {111,112,113}
tNpcGossip[20950]["tOption1-1"] = {1}

-- 小游戏专员（荷婠婠）
tNpcGossip[20958] = tNpcGossip[20958] or DefaultNpc:new{}
tNpcGossip[20958]["OptionHidden"] = 1
tNpcGossip[20958]["DialogueText"] = tMainLineTaskTwinsCity_Text[20958]
tNpcGossip[20958]["Text1-1"] = {111,112,113}
tNpcGossip[20958]["tOption1-1"] = {1}

-- 人物改名服务专员（户籍官员？）
tNpcGossip[20969] = tNpcGossip[20969] or DefaultNpc:new{}
tNpcGossip[20969]["OptionHidden"] = 1
tNpcGossip[20969]["DialogueText"] = tMainLineTaskTwinsCity_Text[20969]
tNpcGossip[20969]["Text1-1"] = {111,112,113}
tNpcGossip[20969]["tOption1-1"] = {1}

-- 神机老人
tNpcGossip[21010] = tNpcGossip[21010] or DefaultNpc:new{}
tNpcGossip[21010]["OptionHidden"] = 1
tNpcGossip[21010]["DialogueText"] = tMainLineTaskTwinsCity_Text[21010]
tNpcGossip[21010]["Text1-1"] = {111,112,113}
tNpcGossip[21010]["tOption1-1"] = {1}

-- 回天道人
tNpcGossip[21041] = tNpcGossip[21041] or DefaultNpc:new{}
tNpcGossip[21041]["OptionHidden"] = 1
tNpcGossip[21041]["DialogueText"] = tMainLineTaskTwinsCity_Text[21041]
tNpcGossip[21041]["Text1-1"] = {111,112,113}
tNpcGossip[21041]["tOption1-1"] = {1}

-- 张木匠
tNpcGossip[21035] = tNpcGossip[21035] or DefaultNpc:new{}
tNpcGossip[21035]["OptionHidden"] = 1
tNpcGossip[21035]["DialogueText"] = tMainLineTaskTwinsCity_Text[21035]
tNpcGossip[21035]["Text1-1"] = {111,112,113}
tNpcGossip[21035]["tOption1-1"] = {1}

-- 市场工匠
tNpcGossip[21034] = tNpcGossip[21034] or DefaultNpc:new{}
tNpcGossip[21034]["OptionHidden"] = 1
tNpcGossip[21034]["DialogueText"] = tMainLineTaskTwinsCity_Text[21034]
tNpcGossip[21034]["Text1-1"] = {111,112,113}
tNpcGossip[21034]["tOption1-1"] = {1}

-- 神秘商人
tNpcGossip[20908] = tNpcGossip[20908] or DefaultNpc:new{}
tNpcGossip[20908]["OptionHidden"] = 1
tNpcGossip[20908]["DialogueText"] = tMainLineTaskTwinsCity_Text[20908]
tNpcGossip[20908]["Text1-1"] = {111,112,113}
tNpcGossip[20908]["tOption1-1"] = {1}

-- 房屋管理员
tNpcGossip[21032] = tNpcGossip[21032] or DefaultNpc:new{}
tNpcGossip[21032]["OptionHidden"] = 1
tNpcGossip[21032]["DialogueText"] = tMainLineTaskTwinsCity_Text[21032]
tNpcGossip[21032]["Text1-1"] = {111,112,113}
tNpcGossip[21032]["tOption1-1"] = {1}

-- 乾坤袋交易商（乾坤真人？）
tNpcGossip[20925] = tNpcGossip[20925] or DefaultNpc:new{}
tNpcGossip[20925]["OptionHidden"] = 1
tNpcGossip[20925]["DialogueText"] = tMainLineTaskTwinsCity_Text[20925]
tNpcGossip[20925]["Text1-1"] = {111,112,113}
tNpcGossip[20925]["tOption1-1"] = {1}

-- 技能遗忘专员（化功长老？）
tNpcGossip[21008] = tNpcGossip[21008] or DefaultNpc:new{}
tNpcGossip[21008]["OptionHidden"] = 1
tNpcGossip[21008]["DialogueText"] = tMainLineTaskTwinsCity_Text[21008]
tNpcGossip[21008]["Text1-1"] = {111,112,113}
tNpcGossip[21008]["tOption1-1"] = {1}

-- 房产总管
tNpcGossip[21033] = tNpcGossip[21033] or DefaultNpc:new{}
tNpcGossip[21033]["OptionHidden"] = 1
tNpcGossip[21033]["DialogueText"] = tMainLineTaskTwinsCity_Text[21033]
tNpcGossip[21033]["Text1-1"] = {111,112,113}
tNpcGossip[21033]["tOption1-1"] = {1}

-- 仓库老板（市场）
tNpcGossip[20902] = tNpcGossip[20902] or DefaultNpc:new{}
tNpcGossip[20902]["OptionHidden"] = 1
tNpcGossip[20902]["DialogueText"] = tMainLineTaskTwinsCity_Text[20902]
tNpcGossip[20902]["Text1-1"] = {111}
tNpcGossip[20902]["tOption1-1"] = {1}

-- 仓库老板（双龙城）
tNpcGossip[20904] = tNpcGossip[20904] or DefaultNpc:new{}
tNpcGossip[20904]["OptionHidden"] = 1
tNpcGossip[20904]["DialogueText"] = tMainLineTaskTwinsCity_Text[20904]
tNpcGossip[20904]["Text1-1"] = {111}
tNpcGossip[20904]["tOption1-1"] = {1}

-- 发型师
tNpcGossip[20989] = tNpcGossip[20989] or DefaultNpc:new{}
tNpcGossip[20989]["OptionHidden"] = 1
tNpcGossip[20989]["DialogueText"] = tMainLineTaskTwinsCity_Text[20989]
tNpcGossip[20989]["Text1-1"] = {111,112,113}
tNpcGossip[20989]["tOption1-1"] = {1}

-- 店小二（市场）
tNpcGossip[20994] = tNpcGossip[20994] or DefaultNpc:new{}
tNpcGossip[20994]["OptionHidden"] = 1
tNpcGossip[20994]["DialogueText"] = tMainLineTaskTwinsCity_Text[20994]
tNpcGossip[20994]["Text1-1"] = {111,112,113}
tNpcGossip[20994]["tOption1-1"] = {1}

-- 店小二（双龙城）
tNpcGossip[21013] = tNpcGossip[21013] or DefaultNpc:new{}
tNpcGossip[21013]["OptionHidden"] = 1
tNpcGossip[21013]["DialogueText"] = tMainLineTaskTwinsCity_Text[21013]
tNpcGossip[21013]["Text1-1"] = {111,112,113}
tNpcGossip[21013]["tOption1-1"] = {1}

-- 千面郎君
tNpcGossip[20991] = tNpcGossip[20991] or DefaultNpc:new{}
tNpcGossip[20991]["OptionHidden"] = 1
tNpcGossip[20991]["DialogueText"] = tMainLineTaskTwinsCity_Text[20991]
tNpcGossip[20991]["Text1-1"] = {111}
tNpcGossip[20991]["tOption1-1"] = {1}
tNpcGossip[20991]["OptionFunc1"] = "MainLineTaskTwinsCity_Npc_20991</N>20991"
tNpcGossip[10020] = tNpcGossip[20991] or DefaultNpc:new{}
-- 家具店老板
tNpcGossip[21037] = tNpcGossip[21037] or DefaultNpc:new{}
tNpcGossip[21037]["OptionHidden"] = 1
tNpcGossip[21037]["DialogueText"] = tMainLineTaskTwinsCity_Text[21037]
tNpcGossip[21037]["Text1-1"] = {111,112,113}
tNpcGossip[21037]["tOption1-1"] = {1}

-- 技能书零售商
tNpcGossip[20909] = tNpcGossip[20909] or DefaultNpc:new{}
tNpcGossip[20909]["OptionHidden"] = 1
tNpcGossip[20909]["DialogueText"] = tMainLineTaskTwinsCity_Text[20909]
tNpcGossip[20909]["Text1-1"] = {111}
tNpcGossip[20909]["tOption1-1"] = {1}

-- 暹罗神医
tNpcGossip[21001] = tNpcGossip[21001] or DefaultNpc:new{}
tNpcGossip[21001]["OptionHidden"] = 1
tNpcGossip[21001]["DialogueText"] = tMainLineTaskTwinsCity_Text[21001]
tNpcGossip[21001]["Text1-1"] = {111,112,113}
tNpcGossip[21001]["tOption1-1"] = {1}

-- 骑术技能训练师
tNpcGossip[20689] = tNpcGossip[20689] or DefaultNpc:new{}
tNpcGossip[20689]["OptionHidden"] = 1
tNpcGossip[20689]["DialogueText"] = tMainLineTaskTwinsCity_Text[20689]
tNpcGossip[20689]["Text1-1"] = {111,112,113}
tNpcGossip[20689]["tOption1-1"] = {1}

-- 摩云真人
tNpcGossip[20921] = tNpcGossip[20921] or DefaultNpc:new{}
tNpcGossip[20921]["OptionHidden"] = 1
tNpcGossip[20921]["DialogueText"] = tMainLineTaskTwinsCity_Text[20921]
tNpcGossip[20921]["Text1-1"] = {111,112,113}
tNpcGossip[20921]["tOption1-1"] = {1}

-- 天结散人
tNpcGossip[20979] = tNpcGossip[20979] or DefaultNpc:new{}
tNpcGossip[20979]["OptionHidden"] = 1
tNpcGossip[20979]["DialogueText"] = tMainLineTaskTwinsCity_Text[20979]
tNpcGossip[20979]["Text1-1"] = {111,112,113}
tNpcGossip[20979]["tOption1-1"] = {1}

-- 清虚道长
tNpcGossip[20997] = tNpcGossip[20997] or DefaultNpc:new{}
tNpcGossip[20997]["OptionHidden"] = 1
tNpcGossip[20997]["DialogueText"] = tMainLineTaskTwinsCity_Text[20997]
tNpcGossip[20997]["Text1-1"] = {111,112,113}
tNpcGossip[20997]["tOption1-1"] = {1}

-- 东方七宿
tNpcGossip[21009] = tNpcGossip[21009] or DefaultNpc:new{}
tNpcGossip[21009]["OptionHidden"] = 1
tNpcGossip[21009]["DialogueText"] = tMainLineTaskTwinsCity_Text[21009]
tNpcGossip[21009]["Text1-1"] = {111,112,113}
tNpcGossip[21009]["tOption1-1"] = {1}

-- 章鱼哥
tNpcGossip[20986] = tNpcGossip[20986] or DefaultNpc:new{}
tNpcGossip[20986]["OptionHidden"] = 1
tNpcGossip[20986]["DialogueText"] = tMainLineTaskTwinsCity_Text[20986]
tNpcGossip[20986]["Text1-1"] = {111,112,113}
tNpcGossip[20986]["tOption1-1"] = {1}

-- 竞技场守卫
tNpcGossip[20992] = tNpcGossip[20992] or DefaultNpc:new{}
tNpcGossip[20992]["OptionHidden"] = 1
tNpcGossip[20992]["DialogueText"] = tMainLineTaskTwinsCity_Text[20992]
tNpcGossip[20992]["Text1-1"] = {111,112,113}
tNpcGossip[20992]["tOption1-1"] = {1}

-- 帮派管理员
tNpcGossip[20906] = tNpcGossip[20906] or DefaultNpc:new{}
tNpcGossip[20906]["OptionHidden"] = 1
tNpcGossip[20906]["DialogueText"] = tMainLineTaskTwinsCity_Text[20906]
tNpcGossip[20906]["Text1-1"] = {111,112,113}
tNpcGossip[20906]["tOption1-1"] = {1}

-- 帮派争霸官员
tNpcGossip[20932] = tNpcGossip[20932] or DefaultNpc:new{}
tNpcGossip[20932]["OptionHidden"] = 1
tNpcGossip[20932]["DialogueText"] = tMainLineTaskTwinsCity_Text[20932]
tNpcGossip[20932]["Text1-1"] = {111,112,113}
tNpcGossip[20932]["tOption1-1"] = {1}

-- 战力PK赛入场员
tNpcGossip[20949] = tNpcGossip[20949] or DefaultNpc:new{}
tNpcGossip[20949]["OptionHidden"] = 1
tNpcGossip[20949]["DialogueText"] = tMainLineTaskTwinsCity_Text[20949]
tNpcGossip[20949]["Text1-1"] = {111,112,113}
tNpcGossip[20949]["tOption1-1"] = {1}

-- 家族总管
tNpcGossip[20951] = tNpcGossip[20951] or DefaultNpc:new{}
tNpcGossip[20951]["OptionHidden"] = 1
tNpcGossip[20951]["DialogueText"] = tMainLineTaskTwinsCity_Text[20951]
tNpcGossip[20951]["Text1-1"] = {111,112,113}
tNpcGossip[20951]["tOption1-1"] = {1}

-- 组队PK赛入场员
tNpcGossip[20978] = tNpcGossip[20978] or DefaultNpc:new{}
tNpcGossip[20978]["OptionHidden"] = 1
tNpcGossip[20978]["DialogueText"] = tMainLineTaskTwinsCity_Text[20978]
tNpcGossip[20978]["Text1-1"] = {111,112,113}
tNpcGossip[20978]["tOption1-1"] = {1}

-- 组队大众PK赛入场员
tNpcGossip[20980] = tNpcGossip[20980] or DefaultNpc:new{}
tNpcGossip[20980]["OptionHidden"] = 1
tNpcGossip[20980]["DialogueText"] = tMainLineTaskTwinsCity_Text[20980]
tNpcGossip[20980]["Text1-1"] = {111,112,113}
tNpcGossip[20980]["tOption1-1"] = {1}

-- 精英PK赛入场员
tNpcGossip[20967] = tNpcGossip[20967] or DefaultNpc:new{}
tNpcGossip[20967]["OptionHidden"] = 1
tNpcGossip[20967]["DialogueText"] = tMainLineTaskTwinsCity_Text[20967]
tNpcGossip[20967]["Text1-1"] = {111,112,113}
tNpcGossip[20967]["tOption1-1"] = {1}

-- 跨服任务大使
tNpcGossip[21005] = tNpcGossip[21005] or DefaultNpc:new{}
tNpcGossip[21005]["OptionHidden"] = 1
tNpcGossip[21005]["DialogueText"] = tMainLineTaskTwinsCity_Text[21005]
tNpcGossip[21005]["Text1-1"] = {111,112,113}
tNpcGossip[21005]["tOption1-1"] = {1}

-- 跨服PK赛特殊入场员
tNpcGossip[20982] = tNpcGossip[20982] or DefaultNpc:new{}
tNpcGossip[20982]["OptionHidden"] = 1
tNpcGossip[20982]["DialogueText"] = tMainLineTaskTwinsCity_Text[20982]
tNpcGossip[20982]["Text1-1"] = {111}
tNpcGossip[20982]["tOption1-1"] = {1}

-- 职业PK赛入场员
tNpcGossip[20913] = tNpcGossip[20913] or DefaultNpc:new{}
tNpcGossip[20913]["OptionHidden"] = 1
tNpcGossip[20913]["DialogueText"] = tMainLineTaskTwinsCity_Text[20913]
tNpcGossip[20913]["Text1-1"] = {111,112,113}
tNpcGossip[20913]["tOption1-1"] = {1}

-- 跨服总决赛入场员
tNpcGossip[21007] = tNpcGossip[21007] or DefaultNpc:new{}
tNpcGossip[21007]["OptionHidden"] = 1
tNpcGossip[21007]["DialogueText"] = tMainLineTaskTwinsCity_Text[21007]
tNpcGossip[21007]["Text1-1"] = {111,112,113}
tNpcGossip[21007]["tOption1-1"] = {1}

-- 仙境引渡使
tNpcGossip[20914] = tNpcGossip[20914] or DefaultNpc:new{}
tNpcGossip[20914]["OptionHidden"] = 1
tNpcGossip[20914]["DialogueText"] = tMainLineTaskTwinsCity_Text[20914]
tNpcGossip[20914]["Text1-1"] = {111,112,113}
tNpcGossip[20914]["tOption1-1"] = {1}

-- 悬赏特使
tNpcGossip[20960] = tNpcGossip[20960] or DefaultNpc:new{}
tNpcGossip[20960]["OptionHidden"] = 1
tNpcGossip[20960]["DialogueText"] = tMainLineTaskTwinsCity_Text[20960]
tNpcGossip[20960]["Text1-1"] = {111,112,113}
tNpcGossip[20960]["tOption1-1"] = {1}

-- 黄泉幽谷传送使
tNpcGossip[20959] = tNpcGossip[20959] or DefaultNpc:new{}
tNpcGossip[20959]["OptionHidden"] = 1
tNpcGossip[20959]["DialogueText"] = tMainLineTaskTwinsCity_Text[20959]
tNpcGossip[20959]["Text1-1"] = {111,112,113}
tNpcGossip[20959]["tOption1-1"] = {1}

-- 技能外套书商人（独孤胜）
tNpcGossip[21002] = tNpcGossip[21002] or DefaultNpc:new{}
tNpcGossip[21002]["OptionHidden"] = 1
tNpcGossip[21002]["DialogueText"] = tMainLineTaskTwinsCity_Text[21002]
tNpcGossip[21002]["Text1-1"] = {111,112,113}
tNpcGossip[21002]["tOption1-1"] = {1}

-- 扫地道人
tNpcGossip[21015] = tNpcGossip[21015] or DefaultNpc:new{}
tNpcGossip[21015]["OptionHidden"] = 1
tNpcGossip[21015]["DialogueText"] = tMainLineTaskTwinsCity_Text[21015]
tNpcGossip[21015]["Text1-1"] = {111}
tNpcGossip[21015]["tOption1-1"] = {1}

-- 赤龙之地引路人
tNpcGossip[21016] = tNpcGossip[21016] or DefaultNpc:new{}
tNpcGossip[21016]["OptionHidden"] = 1
tNpcGossip[21016]["DialogueText"] = tMainLineTaskTwinsCity_Text[21016]
tNpcGossip[21016]["Text1-1"] = {111}
tNpcGossip[21016]["tOption1-1"] = {1}

-- 冰封地穴传送使
tNpcGossip[20957] = tNpcGossip[20957] or DefaultNpc:new{}
tNpcGossip[20957]["OptionHidden"] = 1
tNpcGossip[20957]["DialogueText"] = tMainLineTaskTwinsCity_Text[20957]
tNpcGossip[20957]["Text1-1"] = {111}
tNpcGossip[20957]["tOption1-1"] = {1}

-- 风锥浅滩传送使
tNpcGossip[20987] = tNpcGossip[20987] or DefaultNpc:new{}
tNpcGossip[20987]["OptionHidden"] = 1
tNpcGossip[20987]["DialogueText"] = tMainLineTaskTwinsCity_Text[20987]
tNpcGossip[20987]["Text1-1"] = {111}
tNpcGossip[20987]["tOption1-1"] = {1}

-- 矿工工会助理
tNpcGossip[20931] = tNpcGossip[20931] or DefaultNpc:new{}
tNpcGossip[20931]["OptionHidden"] = 1
tNpcGossip[20931]["DialogueText"] = tMainLineTaskTwinsCity_Text[20931]
tNpcGossip[20931]["Text1-1"] = {111}
tNpcGossip[20931]["tOption1-1"] = {1}

-- 萨文
tNpcGossip[20916] = tNpcGossip[20916] or DefaultNpc:new{}
tNpcGossip[20916]["OptionHidden"] = 1
tNpcGossip[20916]["DialogueText"] = tMainLineTaskTwinsCity_Text[20916]
tNpcGossip[20916]["Text1-1"] = {111,112,113}
tNpcGossip[20916]["tOption1-1"] = {1}

-- 白无忌残魂
tNpcGossip[20998] = tNpcGossip[20998] or DefaultNpc:new{}
tNpcGossip[20998]["OptionHidden"] = 1
tNpcGossip[20998]["DialogueText"] = tMainLineTaskTwinsCity_Text[20998]
tNpcGossip[20998]["Text1-1"] = {111,112,113}
tNpcGossip[20998]["tOption1-1"] = {1}

-- 盔灵
tNpcGossip[20934] = tNpcGossip[20934] or DefaultNpc:new{}
tNpcGossip[20934]["OptionHidden"] = 1
tNpcGossip[20934]["DialogueText"] = tMainLineTaskTwinsCity_Text[20934]
tNpcGossip[20934]["Text1-1"] = {111,112,113}
tNpcGossip[20934]["tOption1-1"] = {1}

-- 姻缘石
tNpcGossip[20907] = tNpcGossip[20907] or DefaultNpc:new{}
tNpcGossip[20907]["OptionHidden"] = 1
tNpcGossip[20907]["DialogueText"] = tMainLineTaskTwinsCity_Text[20907]
tNpcGossip[20907]["Text1-1"] = {111,112,113}
tNpcGossip[20907]["tOption1-1"] = {1}

-- 星辰子
tNpcGossip[21043] = tNpcGossip[21043] or DefaultNpc:new{}
tNpcGossip[21043]["OptionHidden"] = 1
tNpcGossip[21043]["DialogueText"] = tMainLineTaskTwinsCity_Text[21043]
tNpcGossip[21043]["Text1-1"] = {111,112,113}
tNpcGossip[21043]["tOption1-1"] = {1}

-- 七阶神藏
tNpcGossip[21003] = tNpcGossip[21003] or DefaultNpc:new{}
tNpcGossip[21003]["OptionHidden"] = 1
tNpcGossip[21003]["DialogueText"] = tMainLineTaskTwinsCity_Text[21003]
tNpcGossip[21003]["Text1-1"] = {111,112,113}
tNpcGossip[21003]["tOption1-1"] = {1}

-- 张捕快
tNpcGossip[20915] = tNpcGossip[20915] or DefaultNpc:new{}
tNpcGossip[20915]["OptionHidden"] = 1
tNpcGossip[20915]["DialogueText"] = tMainLineTaskTwinsCity_Text[20915]
tNpcGossip[20915]["Text1-1"] = {111,112,113}
tNpcGossip[20915]["tOption1-1"] = {1}

-- 老乞丐
tNpcGossip[20947] = tNpcGossip[20947] or DefaultNpc:new{}
tNpcGossip[20947]["OptionHidden"] = 1
tNpcGossip[20947]["DialogueText"] = tMainLineTaskTwinsCity_Text[20947]
tNpcGossip[20947]["Text1-1"] = {111,112,113}
tNpcGossip[20947]["tOption1-1"] = {1}

-- 收藏家
tNpcGossip[20924] = tNpcGossip[20924] or DefaultNpc:new{}
tNpcGossip[20924]["OptionHidden"] = 1
tNpcGossip[20924]["DialogueText"] = tMainLineTaskTwinsCity_Text[20924]
tNpcGossip[20924]["Text1-1"] = {111}
tNpcGossip[20924]["tOption1-1"] = {1}

-- 拍卖行管理员
tNpcGossip[20985] = tNpcGossip[20985] or DefaultNpc:new{}
tNpcGossip[20985]["OptionHidden"] = 1
tNpcGossip[20985]["DialogueText"] = tMainLineTaskTwinsCity_Text[20985]
tNpcGossip[20985]["Text1-1"] = {111}
tNpcGossip[20985]["tOption1-1"] = {1}

-- 外套换购商人
tNpcGossip[20956] = tNpcGossip[20956] or DefaultNpc:new{}
tNpcGossip[20956]["OptionHidden"] = 1
tNpcGossip[20956]["DialogueText"] = tMainLineTaskTwinsCity_Text[20956]
tNpcGossip[20956]["Text1-1"] = {111}
tNpcGossip[20956]["tOption1-1"] = {1}

-- 药店老板
tNpcGossip[20905] = tNpcGossip[20905] or DefaultNpc:new{}
tNpcGossip[20905]["OptionHidden"] = 1
tNpcGossip[20905]["DialogueText"] = tMainLineTaskTwinsCity_Text[20905]
tNpcGossip[20905]["Text1-1"] = {111}
tNpcGossip[20905]["tOption1-1"] = {1}

-- 驿站老板
tNpcGossip[21023] = tNpcGossip[21023] or DefaultNpc:new{}
tNpcGossip[21023]["OptionHidden"] = 1
tNpcGossip[21023]["DialogueText"] = tMainLineTaskTwinsCity_Text[21023]
tNpcGossip[21023]["Text1-1"] = {111}
tNpcGossip[21023]["tOption1-1"] = {1}

-- 双龙城传送使者
tNpcGossip[21019] = tNpcGossip[21023]
tNpcGossip[21020] = tNpcGossip[21023]
tNpcGossip[21021] = tNpcGossip[21023]
tNpcGossip[21022] = tNpcGossip[21023]

---------------物品模板------------------
tItem[3303267] = tItem[3303267] or {}
tItemFace[3303267] = 810
tItem[3303267]["Text1-1"] = {111,112,113,114}
tItem[3303267]["Text111"] = tMainLineTaskTwinsCity_Text[3303267]["Text"]["111"]
tItem[3303267]["Text112"] = tMainLineTaskTwinsCity_Text[3303267]["Text"]["112"]
tItem[3303267]["Text113"] = tMainLineTaskTwinsCity_Text[3303267]["Text"]["113"]
tItem[3303267]["Text114"] = tMainLineTaskTwinsCity_Text[3303267]["Text"]["114"]
tItem[3303267]["tOption1-1"] = {1}
tItem[3303267]["Option1"] = tMainLineTaskTwinsCity_Text[3303267]["Text"]["Option1"] 
tItem[3303267]["OptionFunc1"] = string.format("MainLineTaskTwinsCity_Letter</N>%d",3303267)

tItem[3303273] = tItem[3303273] or {}
tItemFace[3303273] = 811
tItem[3303273]["Text1-1"] = {111,112,113,114}
tItem[3303273]["Text111"] = tMainLineTaskTwinsCity_Text[20685]["Text121"]
tItem[3303273]["Text112"] = tMainLineTaskTwinsCity_Text[20685]["Text122"]
tItem[3303273]["Text113"] = tMainLineTaskTwinsCity_Text[20685]["Text123"]
tItem[3303273]["Text114"] = ""
tItem[3303273]["tOption1-1"] = {1,2}
tItem[3303273]["Option1"] = tMainLineTaskTwinsCity_Text[20685]["Option121"]
tItem[3303273]["Option2"] = tMainLineTaskTwinsCity_Text[20685]["Option122"]
tItem[3303273]["OptionFunc1"] = "NpcPosition_PathFind</N>20678"
tItem[3303273]["OptionFunc2"] = "MainLineTaskTwinsCity_Task6793_6</N>20685"


-- tMainLineTaskTwinsCity_Text[20685]["Text121"] = ""
-- tMainLineTaskTwinsCity_Text[20685]["Text122"] = ""
-- tMainLineTaskTwinsCity_Text[20685]["Text123"] = "    你隔着泥封都能闻到浓烈的酒香，这一定是坛上好的佳酿。你越闻越是嘴馋，忍不住就想把这坛酒一饮而尽。"
-- tMainLineTaskTwinsCity_Text[20685]["Option121"] = "将美酒带给铁匠  "
-- tMainLineTaskTwinsCity_Text[20685]["Option122"] = "偷偷喝掉美酒"
-- tMainLineTaskTwinsCity_Text[20685]["MsgBox1"] = "你拍开泥封，将坛中美酒一饮而尽。现在得想想怎么应付铁匠的质问了。"

-- tNpcGossip[20685]["OptionFunc121"] = "NpcPosition_PathFind</N>20678"
-- tNpcGossip[20685]["OptionFunc122"] = "MainLineTaskTwinsCity_Task6793_6</N>20685"

tItem[3303268] = tItem[3303268] or {}
tItem[3303268]["Function"] = function(nItemId,sItemName)
	User_TransForm(13170,0,1,18000)
end

tItem[3303269] = tItem[3303269] or {}
tItem[3303269]["Function"] = function(nItemId,sItemName)
	MainLineTaskTwinsCity_Item3303269()
end
tItem[3303275] = tItem[3303275] or {}
tItem[3303275]["Function"] = function(nItemId,sItemName)
	MainLineTaskTwinsCity_Item3303275()
end

tItem[3303665] = tItem[3303665] or {}
tItem[3303665]["Function"] = function(nItemId,sItemName)
	-- MainLineTaskTwinsCity_Item3303673(nItemId)
	MainLineTaskTwinsCity_GeomanticOmenSign(nItemId)
end
tItem[3303666] = tItem[3303665]
tItem[3303667] = tItem[3303665]
tItem[3303668] = tItem[3303665]
tItem[3303669] = tItem[3303665]
tItem[3303670] = tItem[3303665]
tItem[3303671] = tItem[3303665]
tItem[3303672] = tItem[3303665]


tItem[3304615] = tItem[3303665]
tItem[3304616] = tItem[3303665]
tItem[3304617] = tItem[3303665]
tItem[3304618] = tItem[3303665]
tItem[3304619] = tItem[3303665]
tItem[3304620] = tItem[3303665]
tItem[3304621] = tItem[3303665]
tItem[3304622] = tItem[3303665]


tItem[3303276] = tItem[3303276] or {}
tItem[3303276]["Function"] = function(nItemId,sItemName)
	local	nNeedItemId = 3303276
	local nNeedNum = 10
	if Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedNum) then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20677]["MsgBox2"],"NpcPosition_PathFind</N>20677")
		return
	end
end

tItem[3303678] = tItem[3303678] or {}
tItem[3303678]["Function"] = function(nItemId,sItemName)

	RewardTemplate_UseItemAndMsg(tMainLineTaskTwinsCity_ItemUse[nItemId])
	local	nNeedItemId = 3303276
	local nNeedNum = 10
	if Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedNum) then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[20677]["MsgBox2"],"NpcPosition_PathFind</N>20677")
		return
	end
end
tItem[3303679] = tItem[3303678]
tItem[3303680] = tItem[3303678]
tItem[3303681] = tItem[3303678]
tItem[3303682] = tItem[3303678]

tItem[3303673] = tItem[3303673] or {}
tItem[3303673]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(20683)
end

tItem[3303674] = tItem[3303674] or {}
tItem[3303674]["Function"] = function(nItemId,sItemName)
	MainLineTaskTwinsCity_Item3303674(nItemId)
end

tItem[3303677] = tItem[3303677] or {}
tItem[3303677]["Function"] = function(nItemId,sItemName)
	MainLineTaskTwinsCity_Item3303677(nItemId)
end

tItem[723583] = tItem[723583] or {}
tItem[723583]["Function"] = function(nItemId,sItemName)
	Sys_MsgBox(tMainLineTaskTwinsCity_Text[723583])
end

-- 上官逸尘的信物
tItem[3305051] = tItem[3305051] or {}
tItem[3305051]["Function"] = function(nItemId,sItemName)
	-- 判断任务是否都已完成
	local nTaskId = tMainLineTaskTwinsCity_TaskId[8]
	
	if Task_ChkTaskDetail(nTaskId) then
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
			Item_DelAllItemByType(nItemId)
			return
		end
	end
	
	local nMapId = Get_UserMapId()
	-- 判断玩家地图
	if nMapId == 10160 then
		Sys_MsgBox(tMainLineTaskTwinsCity_Text[3305051]["Have"])
		return
	elseif nMapId ~= 1002 then
		User_TalkChannel2005(tMainLineTaskTwinsCity_Text[3305051]["Sure"])
		return
	end
	
	MainLineTaskTwinsCity_EnterMap2()
end

tTrap[1688] = tTrap[1688] or {}
tTrap[1688]["Function"] = function (nTrapId,nTrapType)
	if not Task_ChkTaskDetail(tMainLineTaskTwinsCity_BranchTaskId[4]) then
		return
	end
	
	if Get_TaskDetailCompleteFlag(tMainLineTaskTwinsCity_BranchTaskId[4]) == 1 then
		return
	end	
	
	if nTrapId == 992990 then
		Task_SetTaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[4],1)
	elseif nTrapId == 992991 then
		Task_SetTaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[4],1)	
	elseif nTrapId == 992992 then
		Task_SetTaskDetailData4(tMainLineTaskTwinsCity_BranchTaskId[4],1)			
	elseif nTrapId == 992993 then
		Task_SetTaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[4],1)	
	end
	
	Sys_DialogText(tMainLineTaskTwinsCity_Text["Chat"][nTrapId][1])
	Sys_DialogText(tMainLineTaskTwinsCity_Text["Chat"][nTrapId][2])
	Sys_DialogText(tMainLineTaskTwinsCity_Text["Chat"][nTrapId][3])
	Sys_DialogText(tMainLineTaskTwinsCity_Text["Chat"][nTrapId][4])
	
	if Get_TaskDetailData2(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		local nPosX = Get_TrapPosX(992990)
		local nPosY = Get_TrapPosY(992990)
		local sFunc = "</F>Sys_GotoSomeWhere</N>"..nPosX.."</N>"..nPosY.."</N>10160"
		Sys_DialogOption(tMainLineTaskTwinsCity_Text["Chat"][992990][5],sFunc)
	end
	
	if Get_TaskDetailData3(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		local nPosX = Get_TrapPosX(992991)
		local nPosY = Get_TrapPosY(992991)
		local sFunc = "</F>Sys_GotoSomeWhere</N>"..nPosX.."</N>"..nPosY.."</N>10160"
		Sys_DialogOption(tMainLineTaskTwinsCity_Text["Chat"][992991][5],sFunc)
	end

	if Get_TaskDetailData4(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		local nPosX = Get_TrapPosX(992992)
		local nPosY = Get_TrapPosY(992992)
		local sFunc = "</F>Sys_GotoSomeWhere</N>"..nPosX.."</N>"..nPosY.."</N>10160"
		Sys_DialogOption(tMainLineTaskTwinsCity_Text["Chat"][992992][5],sFunc)
	end

	if Get_TaskDetailData5(tMainLineTaskTwinsCity_BranchTaskId[4]) == 0 then
		local nPosX = Get_TrapPosX(992993)
		local nPosY = Get_TrapPosY(992993)
		local sFunc = "</F>Sys_GotoSomeWhere</N>"..nPosX.."</N>"..nPosY.."</N>10160"
		Sys_DialogOption(tMainLineTaskTwinsCity_Text["Chat"][992993][5],sFunc)
	end	
	
	local sFuncEnd = MainLineTaskTwinsCity_Task6773_GetFunc()
	Sys_DialogOption(tMainLineTaskTwinsCity_Text["Chat"][992993]["GoBack"],sFuncEnd)
	Sys_DialogEnd()
	
end

tTrap[1731] = tTrap[1731] or {}
tTrap[1731]["Function"] = function (nTrapId,nTrapType)
	MainLineTaskTwinsCity_GoodWine()
end

-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,MainLineTaskTwinsCity_OnLine)
-- table.insert(tSystem_PlayLogin_Func,MainLineTaskTwinsCity_OnLineCompensate)
---------------怪物模块------------------
-- 片区怪掉落配置
local tMainLineTaskTwinsCity_AreaLoad = {}
	tMainLineTaskTwinsCity_AreaLoad[6771] = {}
	tMainLineTaskTwinsCity_AreaLoad[6771]["Function"] = MainLineTaskTwinsCity_Task6771_Monster
	tMainLineTaskTwinsCity_AreaLoad[6771]["MonsterId"] = {3987}

	tMainLineTaskTwinsCity_AreaLoad[6775] = {}
	tMainLineTaskTwinsCity_AreaLoad[6775]["Function"] = MainLineTaskTwinsCity_Task6775_Monster
	tMainLineTaskTwinsCity_AreaLoad[6775]["MonsterId"] = {tMainLineTaskTwinsCity_Cont[6775]["MonsterId"],3988}	
	
	tMainLineTaskTwinsCity_AreaLoad[6780] = {}
	tMainLineTaskTwinsCity_AreaLoad[6780]["Function"] = MainLineTaskTwinsCity_Task6780_Monster
	tMainLineTaskTwinsCity_AreaLoad[6780]["MonsterId"] = {3283,3284}		

	tMainLineTaskTwinsCity_AreaLoad[6790] = {}
	tMainLineTaskTwinsCity_AreaLoad[6790]["Function"] = MainLineTaskTwinsCity_Task6790_Monster
	tMainLineTaskTwinsCity_AreaLoad[6790]["MonsterId"] = {3285}		
	
	tMainLineTaskTwinsCity_AreaLoad[6793] = {}
	tMainLineTaskTwinsCity_AreaLoad[6793]["Function"] = MainLineTaskTwinsCity_Task6793_Monster
	tMainLineTaskTwinsCity_AreaLoad[6793]["MonsterId"] = {3286}		
	
	tMainLineTaskTwinsCity_AreaLoad[6795] = {}
	tMainLineTaskTwinsCity_AreaLoad[6795]["Function"] = MainLineTaskTwinsCity_FengShuiMonster
	tMainLineTaskTwinsCity_AreaLoad[6795]["MonsterId"] = {3989}		

	
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6771])
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6775])
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6780])
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6790])
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6793])
table.insert(tMonsterDrop_AreaLoad,tMainLineTaskTwinsCity_AreaLoad[6795])