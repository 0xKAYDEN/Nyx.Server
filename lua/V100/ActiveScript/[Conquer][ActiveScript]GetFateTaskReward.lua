------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]练气版本--每日练气惊喜
--Creator:		洪聪敏
--Created:		2019/03/18
------------------------------------------------------------------------------------
--luaini：41184
--logid: 12001357

------------------------------------------------------------------------------------
local tGetFateTaskReward_Reward = {}
	-- ===任务1
	-- ===索引:1
	tGetFateTaskReward_Reward[1] = {}
	tGetFateTaskReward_Reward[1]["LogId"] = 12001357
	tGetFateTaskReward_Reward[1]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[1]["RewardStrengthValue"]["Value"] = 50 -- 气力值
	tGetFateTaskReward_Reward[1]["RewardNoNeedTip"] = 1

	-- ===任务2
	-- ===索引:2
	tGetFateTaskReward_Reward[2] = {}
	tGetFateTaskReward_Reward[2]["LogId"] = 12001357
	tGetFateTaskReward_Reward[2]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[2]["RewardStrengthValue"]["Value"] = 50 -- 气力值
	tGetFateTaskReward_Reward[2]["RewardNoNeedTip"] = 1

	-- ===任务3
	-- ===索引:3
	tGetFateTaskReward_Reward[3] = {}
	tGetFateTaskReward_Reward[3]["LogId"] = 12001357
	tGetFateTaskReward_Reward[3]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[3]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tGetFateTaskReward_Reward[3]["RewardNoNeedTip"] = 1

	-- ===任务4
	-- ===索引:4
	tGetFateTaskReward_Reward[4] = {}
	tGetFateTaskReward_Reward[4]["LogId"] = 12001357
	tGetFateTaskReward_Reward[4]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[4]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tGetFateTaskReward_Reward[4]["RewardNoNeedTip"] = 1
	
	-- ===任务5
	-- ===索引:5
	tGetFateTaskReward_Reward[5] = {}
	tGetFateTaskReward_Reward[5]["LogId"] = 12001357
	tGetFateTaskReward_Reward[5]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[5]["RewardStrengthValue"]["Value"] = 200 -- 气力值
	tGetFateTaskReward_Reward[5]["RewardNoNeedTip"] = 1

	-- ===任务6
	-- ===索引:6
	tGetFateTaskReward_Reward[6] = {}
	tGetFateTaskReward_Reward[6]["LogId"] = 12001357
	tGetFateTaskReward_Reward[6]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[6]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[6]["RewardNoNeedTip"] = 1

	-- ===任务7
	-- ===索引:7
	tGetFateTaskReward_Reward[7] = {}
	tGetFateTaskReward_Reward[7]["LogId"] = 12001357
	tGetFateTaskReward_Reward[7]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[7]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tGetFateTaskReward_Reward[7]["RewardNoNeedTip"] = 1

	-- ===任务8
	-- ===索引:8
	tGetFateTaskReward_Reward[8] = {}
	tGetFateTaskReward_Reward[8]["LogId"] = 12001357
	tGetFateTaskReward_Reward[8]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[8]["RewardStrengthValue"]["Value"] = 1500 -- 气力值
	tGetFateTaskReward_Reward[8]["RewardNoNeedTip"] = 1

	-- ===任务9
	-- ===索引:9
	tGetFateTaskReward_Reward[9] = {}
	tGetFateTaskReward_Reward[9]["LogId"] = 12001357
	tGetFateTaskReward_Reward[9]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[9]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tGetFateTaskReward_Reward[9]["RewardNoNeedTip"] = 1

	-- ===任务10
	-- ===索引:10
	tGetFateTaskReward_Reward[10] = {}
	tGetFateTaskReward_Reward[10]["LogId"] = 12001357
	tGetFateTaskReward_Reward[10]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[10]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tGetFateTaskReward_Reward[10]["RewardNoNeedTip"] = 1

	-- ===任务11
	-- ===索引:11
	tGetFateTaskReward_Reward[11] = {}
	tGetFateTaskReward_Reward[11]["LogId"] = 12001357
	tGetFateTaskReward_Reward[11]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[11]["RewardStrengthValue"]["Value"] = 200 -- 气力值
	tGetFateTaskReward_Reward[11]["RewardNoNeedTip"] = 1

	-- ===任务12
	-- ===索引:12
	tGetFateTaskReward_Reward[12] = {}
	tGetFateTaskReward_Reward[12]["LogId"] = 12001357
	tGetFateTaskReward_Reward[12]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[12]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[12]["RewardNoNeedTip"] = 1

	-- ===任务13
	-- ===索引:13
	tGetFateTaskReward_Reward[13] = {}
	tGetFateTaskReward_Reward[13]["LogId"] = 12001357
	tGetFateTaskReward_Reward[13]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[13]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tGetFateTaskReward_Reward[13]["RewardNoNeedTip"] = 1

	-- ===任务14
	-- ===索引:14
	tGetFateTaskReward_Reward[14] = {}
	tGetFateTaskReward_Reward[14]["LogId"] = 12001357
	tGetFateTaskReward_Reward[14]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[14]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tGetFateTaskReward_Reward[14]["RewardNoNeedTip"] = 1

	-- ===任务15
	-- ===索引:15
	tGetFateTaskReward_Reward[15] = {}
	tGetFateTaskReward_Reward[15]["LogId"] = 12001357
	tGetFateTaskReward_Reward[15]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[15]["RewardStrengthValue"]["Value"] = 150 -- 气力值
	tGetFateTaskReward_Reward[15]["RewardNoNeedTip"] = 1

	-- ===任务16
	-- ===索引:16
	tGetFateTaskReward_Reward[16] = {}
	tGetFateTaskReward_Reward[16]["LogId"] = 12001357
	tGetFateTaskReward_Reward[16]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[16]["RewardStrengthValue"]["Value"] = 300 -- 气力值
	tGetFateTaskReward_Reward[16]["RewardNoNeedTip"] = 1

	-- ===任务17
	-- ===索引:17
	tGetFateTaskReward_Reward[17] = {}
	tGetFateTaskReward_Reward[17]["LogId"] = 12001357
	tGetFateTaskReward_Reward[17]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[17]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tGetFateTaskReward_Reward[17]["RewardNoNeedTip"] = 1

	-- ===任务18
	-- ===索引:18
	tGetFateTaskReward_Reward[18] = {}
	tGetFateTaskReward_Reward[18]["LogId"] = 12001357
	tGetFateTaskReward_Reward[18]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[18]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tGetFateTaskReward_Reward[18]["RewardNoNeedTip"] = 1

	-- ===任务19
	-- ===索引:19
	tGetFateTaskReward_Reward[19] = {}
	tGetFateTaskReward_Reward[19]["LogId"] = 12001357
	tGetFateTaskReward_Reward[19]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[19]["RewardStrengthValue"]["Value"] = 4000 -- 气力值
	tGetFateTaskReward_Reward[19]["RewardNoNeedTip"] = 1

	-- ===任务20
	-- ===索引:20
	tGetFateTaskReward_Reward[20] = {}
	tGetFateTaskReward_Reward[20]["LogId"] = 12001357
	tGetFateTaskReward_Reward[20]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[20]["RewardStrengthValue"]["Value"] = 200 -- 气力值
	tGetFateTaskReward_Reward[20]["RewardNoNeedTip"] = 1

	-- ===任务21
	-- ===索引:21
	tGetFateTaskReward_Reward[21] = {}
	tGetFateTaskReward_Reward[21]["LogId"] = 12001357
	tGetFateTaskReward_Reward[21]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[21]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[21]["RewardNoNeedTip"] = 1

	-- ===任务22
	-- ===索引:22
	tGetFateTaskReward_Reward[22] = {}
	tGetFateTaskReward_Reward[22]["LogId"] = 12001357
	tGetFateTaskReward_Reward[22]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[22]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tGetFateTaskReward_Reward[22]["RewardNoNeedTip"] = 1

	-- ===任务23
	-- ===索引:23
	tGetFateTaskReward_Reward[23] = {}
	tGetFateTaskReward_Reward[23]["LogId"] = 12001357
	tGetFateTaskReward_Reward[23]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[23]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	tGetFateTaskReward_Reward[23]["RewardNoNeedTip"] = 1

	-- ===任务24
	-- ===索引:24
	tGetFateTaskReward_Reward[24] = {}
	tGetFateTaskReward_Reward[24]["LogId"] = 12001357
	tGetFateTaskReward_Reward[24]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[24]["RewardStrengthValue"]["Value"] = 4000 -- 气力值
	tGetFateTaskReward_Reward[24]["RewardNoNeedTip"] = 1

	-- ===任务25
	-- ===索引:25
	tGetFateTaskReward_Reward[25] = {}
	tGetFateTaskReward_Reward[25]["LogId"] = 12001357
	tGetFateTaskReward_Reward[25]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[25]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tGetFateTaskReward_Reward[25]["RewardNoNeedTip"] = 1

	-- ===任务26
	-- ===索引:26
	tGetFateTaskReward_Reward[26] = {}
	tGetFateTaskReward_Reward[26]["LogId"] = 12001357
	tGetFateTaskReward_Reward[26]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[26]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[26]["RewardNoNeedTip"] = 1

	-- ===任务27
	-- ===索引:27
	tGetFateTaskReward_Reward[27] = {}
	tGetFateTaskReward_Reward[27]["LogId"] = 12001357
	tGetFateTaskReward_Reward[27]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[27]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[27]["RewardNoNeedTip"] = 1

	-- ===任务28
	-- ===索引:28
	tGetFateTaskReward_Reward[28] = {}
	tGetFateTaskReward_Reward[28]["LogId"] = 12001357
	tGetFateTaskReward_Reward[28]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[28]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tGetFateTaskReward_Reward[28]["RewardNoNeedTip"] = 1

	-- ===任务29
	-- ===索引:29
	tGetFateTaskReward_Reward[29] = {}
	tGetFateTaskReward_Reward[29]["LogId"] = 12001357
	tGetFateTaskReward_Reward[29]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[29]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tGetFateTaskReward_Reward[29]["RewardNoNeedTip"] = 1

	-- ===任务30
	-- ===索引:30
	tGetFateTaskReward_Reward[30] = {}
	tGetFateTaskReward_Reward[30]["LogId"] = 12001357
	tGetFateTaskReward_Reward[30]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[30]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	tGetFateTaskReward_Reward[30]["RewardNoNeedTip"] = 1

	-- ===任务31
	-- ===索引:31
	tGetFateTaskReward_Reward[31] = {}
	tGetFateTaskReward_Reward[31]["LogId"] = 12001357
	tGetFateTaskReward_Reward[31]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[31]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tGetFateTaskReward_Reward[31]["RewardNoNeedTip"] = 1

	-- ===任务32
	-- ===索引:32
	tGetFateTaskReward_Reward[32] = {}
	tGetFateTaskReward_Reward[32]["LogId"] = 12001357
	tGetFateTaskReward_Reward[32]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[32]["RewardStrengthValue"]["Value"] = 10000 -- 气力值
	tGetFateTaskReward_Reward[32]["RewardNoNeedTip"] = 1

	-- ===任务40
	-- ===索引:40
	tGetFateTaskReward_Reward[40] = {}
	tGetFateTaskReward_Reward[40]["LogId"] = 12001357
	tGetFateTaskReward_Reward[40]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[40]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[40]["RewardNoNeedTip"] = 1

	-- ===任务41
	-- ===索引:41
	tGetFateTaskReward_Reward[41] = {}
	tGetFateTaskReward_Reward[41]["LogId"] = 12001357
	tGetFateTaskReward_Reward[41]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[41]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[41]["RewardNoNeedTip"] = 1

	-- ===任务42
	-- ===索引:42
	tGetFateTaskReward_Reward[42] = {}
	tGetFateTaskReward_Reward[42]["LogId"] = 12001357
	tGetFateTaskReward_Reward[42]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[42]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[42]["RewardNoNeedTip"] = 1

	-- ===任务43
	-- ===索引:43
	tGetFateTaskReward_Reward[43] = {}
	tGetFateTaskReward_Reward[43]["LogId"] = 12001357
	tGetFateTaskReward_Reward[43]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[43]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[43]["RewardNoNeedTip"] = 1

	-- ===任务44
	-- ===索引:44
	tGetFateTaskReward_Reward[44] = {}
	tGetFateTaskReward_Reward[44]["LogId"] = 12001357
	tGetFateTaskReward_Reward[44]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[44]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[44]["RewardNoNeedTip"] = 1

	-- ===任务45
	-- ===索引:45
	tGetFateTaskReward_Reward[45] = {}
	tGetFateTaskReward_Reward[45]["LogId"] = 12001357
	tGetFateTaskReward_Reward[45]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[45]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[45]["RewardNoNeedTip"] = 1

	-- ===任务46
	-- ===索引:46
	tGetFateTaskReward_Reward[46] = {}
	tGetFateTaskReward_Reward[46]["LogId"] = 12001357
	tGetFateTaskReward_Reward[46]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[46]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[46]["RewardNoNeedTip"] = 1

	-- ===任务47
	-- ===索引:47
	tGetFateTaskReward_Reward[47] = {}
	tGetFateTaskReward_Reward[47]["LogId"] = 12001357
	tGetFateTaskReward_Reward[47]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[47]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[47]["RewardNoNeedTip"] = 1

	-- ===任务48
	-- ===索引:48
	tGetFateTaskReward_Reward[48] = {}
	tGetFateTaskReward_Reward[48]["LogId"] = 12001357
	tGetFateTaskReward_Reward[48]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[48]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[48]["RewardNoNeedTip"] = 1

	-- ===任务49
	-- ===索引:49
	tGetFateTaskReward_Reward[49] = {}
	tGetFateTaskReward_Reward[49]["LogId"] = 12001357
	tGetFateTaskReward_Reward[49]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[49]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[49]["RewardNoNeedTip"] = 1

	-- ===任务50
	-- ===索引:50
	tGetFateTaskReward_Reward[50] = {}
	tGetFateTaskReward_Reward[50]["LogId"] = 12001357
	tGetFateTaskReward_Reward[50]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[50]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[50]["RewardNoNeedTip"] = 1

	-- ===任务51
	-- ===索引:51
	tGetFateTaskReward_Reward[51] = {}
	tGetFateTaskReward_Reward[51]["LogId"] = 12001357
	tGetFateTaskReward_Reward[51]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[51]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[51]["RewardNoNeedTip"] = 1

	-- ===任务52
	-- ===索引:52
	tGetFateTaskReward_Reward[52] = {}
	tGetFateTaskReward_Reward[52]["LogId"] = 12001357
	tGetFateTaskReward_Reward[52]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[52]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[52]["RewardNoNeedTip"] = 1

	-- ===任务53
	-- ===索引:53
	tGetFateTaskReward_Reward[53] = {}
	tGetFateTaskReward_Reward[53]["LogId"] = 12001357
	tGetFateTaskReward_Reward[53]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[53]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[53]["RewardNoNeedTip"] = 1

	-- ===任务54
	-- ===索引:54
	tGetFateTaskReward_Reward[54] = {}
	tGetFateTaskReward_Reward[54]["LogId"] = 12001357
	tGetFateTaskReward_Reward[54]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[54]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[54]["RewardNoNeedTip"] = 1

	-- ===任务55
	-- ===索引:55
	tGetFateTaskReward_Reward[55] = {}
	tGetFateTaskReward_Reward[55]["LogId"] = 12001357
	tGetFateTaskReward_Reward[55]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[55]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[55]["RewardNoNeedTip"] = 1

	-- ===任务56
	-- ===索引:56
	tGetFateTaskReward_Reward[56] = {}
	tGetFateTaskReward_Reward[56]["LogId"] = 12001357
	tGetFateTaskReward_Reward[56]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[56]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[56]["RewardNoNeedTip"] = 1

	-- ===任务57
	-- ===索引:57
	tGetFateTaskReward_Reward[57] = {}
	tGetFateTaskReward_Reward[57]["LogId"] = 12001357
	tGetFateTaskReward_Reward[57]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[57]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[57]["RewardNoNeedTip"] = 1

	-- ===任务58
	-- ===索引:58
	tGetFateTaskReward_Reward[58] = {}
	tGetFateTaskReward_Reward[58]["LogId"] = 12001357
	tGetFateTaskReward_Reward[58]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[58]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[58]["RewardNoNeedTip"] = 1

	-- ===任务59
	-- ===索引:59
	tGetFateTaskReward_Reward[59] = {}
	tGetFateTaskReward_Reward[59]["LogId"] = 12001357
	tGetFateTaskReward_Reward[59]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[59]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[59]["RewardNoNeedTip"] = 1

	-- ===任务60
	-- ===索引:60
	tGetFateTaskReward_Reward[60] = {}
	tGetFateTaskReward_Reward[60]["LogId"] = 12001357
	tGetFateTaskReward_Reward[60]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[60]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[60]["RewardNoNeedTip"] = 1

	-- ===任务61
	-- ===索引:61
	tGetFateTaskReward_Reward[61] = {}
	tGetFateTaskReward_Reward[61]["LogId"] = 12001357
	tGetFateTaskReward_Reward[61]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[61]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[61]["RewardNoNeedTip"] = 1

	-- ===任务62
	-- ===索引:62
	tGetFateTaskReward_Reward[62] = {}
	tGetFateTaskReward_Reward[62]["LogId"] = 12001357
	tGetFateTaskReward_Reward[62]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[62]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[62]["RewardNoNeedTip"] = 1

	-- ===任务63
	-- ===索引:63
	tGetFateTaskReward_Reward[63] = {}
	tGetFateTaskReward_Reward[63]["LogId"] = 12001357
	tGetFateTaskReward_Reward[63]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[63]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[63]["RewardNoNeedTip"] = 1

	-- ===任务64
	-- ===索引:64
	tGetFateTaskReward_Reward[64] = {}
	tGetFateTaskReward_Reward[64]["LogId"] = 12001357
	tGetFateTaskReward_Reward[64]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[64]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[64]["RewardNoNeedTip"] = 1

	-- ===任务65
	-- ===索引:65
	tGetFateTaskReward_Reward[65] = {}
	tGetFateTaskReward_Reward[65]["LogId"] = 12001357
	tGetFateTaskReward_Reward[65]["RewardStrengthValue"] = {}
	tGetFateTaskReward_Reward[65]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tGetFateTaskReward_Reward[65]["RewardNoNeedTip"] = 1

-------------------------------------------逻辑部分---------------------------------------

-- 参数：nUserId nTaskId
function GetFateTaskReward_GetReward(nUserId,nTaskId)
--按比例返还的任务直接给奖励
	if nTaskId >= 33 and nTaskId <=39 then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tGetFateTaskReward_Reward[nTaskId],nUserId)
end

-- 超过99级后每炼10万经验给2万气力
function GetFateTaskReward_Mail(nUserId,nType)
	local sSender = tGetFateTaskReward_Text["Sender"]
	local sTitle = tGetFateTaskReward_Text["Title"]
	local sContent = tGetFateTaskReward_Text["Content"]

	Sys_SendMail(nUserId,0,0,568737,0,7,sSender,sTitle,sContent,0)
end

--练气惊喜
tGetFateTaskReward["tFunction"] = tGetFateTaskReward["tFunction"] or {}
table.insert(tGetFateTaskReward["tFunction"],GetFateTaskReward_GetReward)


table.insert(tTrainingVitalityExpOverMax["tFunction"],GetFateTaskReward_Mail)