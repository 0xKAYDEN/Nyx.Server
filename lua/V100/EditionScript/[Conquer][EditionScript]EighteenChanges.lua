------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]十八变功能
--Creator:		郑鋆
--Created:		2019/12/08
------------------------------------------------------------------------------------

-- 十八变
-- 命名前缀
-- EighteenChanges_


-- 常量表
local tEighteenChanges_Constant = {}
	-- 配置活动时间
	tEighteenChanges_Constant["ActivetyTime"] = tActivityTime["EighteenChanges"]["ActivityTime"]
	
	-- 阶段数掩码
	tEighteenChanges_Constant["Level"] = {}
	tEighteenChanges_Constant["Level"]["ActiveType"] = 0
	tEighteenChanges_Constant["Level"]["EventType"] = 1
	
	-- 积分掩码
	tEighteenChanges_Constant["Integration"] = {}
	tEighteenChanges_Constant["Integration"]["ActiveType"] = 0
	tEighteenChanges_Constant["Integration"]["EventType"] = 999

	-- 活动结束的时间戳
	tEighteenChanges_Constant["EndTime"] = 1588348799
	
	tEighteenChanges_Constant["GlobalId"] = 54751
	
-- 存放玩家连续成功次数
local tEighteenChanges_Continuous = {}
-- 存放玩家参与双炉的数据
local tEighteenChanges_DoubleFurnace = {}

-- 阶段任务数据表
-- =	1 ,表示参与界面升级
-- =	2 ,表示界面升级成功
-- =	3 ,表示参与装备界面重铸(策划需求跟界面重铸分为同一类，所以该类型没有用)
-- =	4 ,表示装备界面重铸成功(策划需求跟界面重铸分为同一类，所以该类型没有用)
-- =	5 ,表示参与NPC重铸
-- =	6 ,表示NPC重铸成功
-- =	7 ,表示参与NPC冶炼
-- =	8 ,表示NPC冶炼成功
-- =	9 ,表示参与NPC融合
-- =	10,表示NPC融合成功
-- =	11,表示右键兑换掉灵珠
-- =	12,表示参与界面重铸

-- 跳阶类（至少成功跳阶两阶以上）
-- tEighteenChanges_Info[2]["StepHopping"] = {}
-- 挑战成功1次，任意阶段，任意玩法都累计次数
-- tEighteenChanges_Info[2]["StepHopping"]["All"] = 1
-- tEighteenChanges_Info[2]["StepHopping"]["MinSoulId"] = 4200003
-- tEighteenChanges_Info[2]["StepHopping"]["MinStepHopping"] = 2
-- tEighteenChanges_Info[2]["StepHopping"]["ActiveType"] = 0
-- tEighteenChanges_Info[2]["StepHopping"]["EventType"] = 11


local tEighteenChanges_Info = {}
	-- -- 第一阶段
	-- tEighteenChanges_Info[1] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[1]["ActiveType"] = 0
	-- tEighteenChanges_Info[1]["EventType"] = 2
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[1]["Participate"] = {}
	-- -- 在灵珠升级界面升级1次，任意阶
	-- tEighteenChanges_Info[1]["Participate"][1] = {}
	-- tEighteenChanges_Info[1]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[1]["Participate"][1]["EventType"] = 3
	-- -- 冶炼锻造任意等级灵珠1次
	-- -- tEighteenChanges_Info[1]["Participate"][7] = {}
	-- -- tEighteenChanges_Info[1]["Participate"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[1]["Participate"][7]["EventType"] = 4
	-- -- 兑换任意阶灵珠1次
	-- tEighteenChanges_Info[1]["Participate"][11] = {}
	-- tEighteenChanges_Info[1]["Participate"][11]["ActiveType"] = 0
	-- tEighteenChanges_Info[1]["Participate"][11]["EventType"] = 82
	-- -- 挑战类
	-- tEighteenChanges_Info[1]["Challenge"] = {}
	-- -- 挑战成功1次，任意阶段，任意玩法都累计次数
	-- tEighteenChanges_Info[1]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[1]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[1]["Challenge"]["EventType"] = 5
	-- -- 参与灵珠相关玩法2次
	-- tEighteenChanges_Info[1]["GrandTotal"] = {}
	-- tEighteenChanges_Info[1]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[1]["GrandTotal"]["EventType"] = 6

	-- -- 第二阶段
	-- tEighteenChanges_Info[2] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[2]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["EventType"] = 7
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[2]["Participate"] = {}
	-- -- 在灵珠升级界面升级1次，任意阶
	-- tEighteenChanges_Info[2]["Participate"][1] = {}
	-- tEighteenChanges_Info[2]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["Participate"][1]["EventType"] = 8
	-- -- 重铸任意等级灵珠1次
	-- tEighteenChanges_Info[2]["Participate"][5] = {}
	-- tEighteenChanges_Info[2]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["Participate"][5]["EventType"] = 9
	-- -- 冶炼锻造任意等级灵珠1次
	-- -- tEighteenChanges_Info[2]["Participate"][7] = {}
	-- -- tEighteenChanges_Info[2]["Participate"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[2]["Participate"][7]["EventType"] = 10
	-- -- 挑战类
	-- tEighteenChanges_Info[2]["Challenge"] = {}
	-- -- 通过任意灵珠玩法升级灵珠1次
	-- tEighteenChanges_Info[2]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[2]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["Challenge"]["EventType"] = 11
	-- -- 合成几阶类	合成3阶以上灵珠1次
	-- tEighteenChanges_Info[2]["Composite"] = {}
	-- tEighteenChanges_Info[2]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["Composite"]["EventType"] = 83
	-- tEighteenChanges_Info[2]["Composite"]["MinSoulId"] = 4200003
	-- -- 累计类
	-- tEighteenChanges_Info[2]["GrandTotal"] = {}
	-- -- 参与灵珠相关玩法3次
	-- tEighteenChanges_Info[2]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[2]["GrandTotal"]["EventType"] = 12
	
	
	-- -- 第三阶段
	-- tEighteenChanges_Info[3] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[3]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["EventType"] = 13
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[3]["Participate"] = {}
	-- -- 在灵珠升级界面升级1次，3阶以上
	-- tEighteenChanges_Info[3]["Participate"][1] = {}
	-- tEighteenChanges_Info[3]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Participate"][1]["EventType"] = 14
	-- tEighteenChanges_Info[3]["Participate"][1]["MinSoulId"] = 4200003
	-- -- 重铸3阶以上灵珠1次
	-- tEighteenChanges_Info[3]["Participate"][5] = {}
	-- tEighteenChanges_Info[3]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Participate"][5]["EventType"] = 15
	-- tEighteenChanges_Info[3]["Participate"][5]["MinSoulId"] = 4200003
	-- -- 冶炼锻造3阶以上灵珠1次
	-- tEighteenChanges_Info[3]["Participate"][7] = {}
	-- tEighteenChanges_Info[3]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Participate"][7]["EventType"] = 16
	-- tEighteenChanges_Info[3]["Participate"][7]["MinSoulId"] = 4200003
	-- -- 参与融合玩法融合3阶以上灵珠
	-- tEighteenChanges_Info[3]["Participate"][9] = {}
	-- tEighteenChanges_Info[3]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Participate"][9]["EventType"] = 17
	-- tEighteenChanges_Info[3]["Participate"][9]["MinSoulId"] = 4200003
	-- -- 挑战类
	-- tEighteenChanges_Info[3]["Challenge"] = {}
	-- -- 通过任意灵珠玩法升级灵珠2次
	-- tEighteenChanges_Info[3]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[3]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Challenge"]["EventType"] = 18
	-- -- 合成几阶类	合成4阶以上灵珠1次
	-- tEighteenChanges_Info[3]["Composite"] = {}
	-- tEighteenChanges_Info[3]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["Composite"]["EventType"] = 84
	-- tEighteenChanges_Info[3]["Composite"]["MinSoulId"] = 4200004
	-- -- 累计类		参与灵珠相关玩法4次
	-- tEighteenChanges_Info[3]["GrandTotal"] = {}
	-- tEighteenChanges_Info[3]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[3]["GrandTotal"]["EventType"] = 19
	
	
	-- -- 第四阶段
	-- tEighteenChanges_Info[4] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[4]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["EventType"] = 20
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[4]["Participate"] = {}
	-- -- 在灵珠升级界面升级2次，3阶以上
	-- tEighteenChanges_Info[4]["Participate"][1] = {}
	-- tEighteenChanges_Info[4]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Participate"][1]["EventType"] = 21
	-- tEighteenChanges_Info[4]["Participate"][1]["MinSoulId"] = 4200003
	-- -- 重铸3阶以上灵珠1次
	-- tEighteenChanges_Info[4]["Participate"][5] = {}
	-- tEighteenChanges_Info[4]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Participate"][5]["EventType"] = 22
	-- tEighteenChanges_Info[4]["Participate"][5]["MinSoulId"] = 4200003
	-- -- 冶炼锻造3阶以上灵珠2次
	-- tEighteenChanges_Info[4]["Participate"][7] = {}
	-- tEighteenChanges_Info[4]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Participate"][7]["EventType"] = 23
	-- tEighteenChanges_Info[4]["Participate"][7]["MinSoulId"] = 4200003
	-- -- 参与融合玩法1次，3阶以上
	-- tEighteenChanges_Info[4]["Participate"][9] = {}
	-- tEighteenChanges_Info[4]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Participate"][9]["EventType"] = 24
	-- tEighteenChanges_Info[4]["Participate"][9]["MinSoulId"] = 4200003
	-- -- 挑战类		通过任意灵珠玩法升级灵珠2次
	-- tEighteenChanges_Info[4]["Challenge"] = {}
	-- tEighteenChanges_Info[4]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[4]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Challenge"]["EventType"] = 25
	-- -- 界面重铸玩法完成一次连续成功2次
	-- tEighteenChanges_Info[4]["Continuous"] = {}
	-- tEighteenChanges_Info[4]["Continuous"][2] = {}
	-- tEighteenChanges_Info[4]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Continuous"][2]["EventType"] = 26
	-- tEighteenChanges_Info[4]["Continuous"][2]["MinNum"] = 2
	-- -- 使用4阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[4]["AllParticipate"] = {}
	-- tEighteenChanges_Info[4]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["AllParticipate"]["EventType"] = 85
	-- tEighteenChanges_Info[4]["AllParticipate"]["MinSoulId"] = 4200004
	-- -- 合成几阶类	合成4阶以上灵珠1次
	-- tEighteenChanges_Info[4]["Composite"] = {}
	-- tEighteenChanges_Info[4]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["Composite"]["EventType"] = 86
	-- tEighteenChanges_Info[4]["Composite"]["MinSoulId"] = 4200004
	-- -- 累计类		任意玩法参与6次
	-- tEighteenChanges_Info[4]["GrandTotal"] = {}
	-- tEighteenChanges_Info[4]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[4]["GrandTotal"]["EventType"] = 27

	-- -- 第五阶段
	-- tEighteenChanges_Info[5] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[5]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["EventType"] = 28
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[5]["Participate"] = {}
	-- -- 在灵珠升级界面升级2次，4阶以上
	-- tEighteenChanges_Info[5]["Participate"][1] = {}
	-- tEighteenChanges_Info[5]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Participate"][1]["EventType"] = 29
	-- tEighteenChanges_Info[5]["Participate"][1]["MinSoulId"] = 4200004
	-- -- 重铸4阶以上灵珠2次
	-- tEighteenChanges_Info[5]["Participate"][5] = {}
	-- tEighteenChanges_Info[5]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Participate"][5]["EventType"] = 30
	-- tEighteenChanges_Info[5]["Participate"][5]["MinSoulId"] = 4200004
	-- -- 冶炼锻造4阶以上灵珠2次
	-- tEighteenChanges_Info[5]["Participate"][7] = {}
	-- tEighteenChanges_Info[5]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Participate"][7]["EventType"] = 31
	-- tEighteenChanges_Info[5]["Participate"][7]["MinSoulId"] = 4200004
	-- -- 参与2次融合玩法融合4阶以上灵珠
	-- tEighteenChanges_Info[5]["Participate"][9] = {}
	-- tEighteenChanges_Info[5]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Participate"][9]["EventType"] = 32
	-- tEighteenChanges_Info[5]["Participate"][9]["MinSoulId"] = 4200004
	-- -- 挑战类		通过任意灵珠玩法升级灵珠4次
	-- tEighteenChanges_Info[5]["Challenge"] = {}
	-- tEighteenChanges_Info[5]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[5]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Challenge"]["EventType"] = 33
	-- -- 连续成功类
	-- tEighteenChanges_Info[5]["Continuous"] = {}
	-- -- 重铸4阶以上灵珠，连续2次成功
	-- tEighteenChanges_Info[5]["Continuous"][2] = {}
	-- tEighteenChanges_Info[5]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Continuous"][2]["EventType"] = 34
	-- tEighteenChanges_Info[5]["Continuous"][2]["MinNum"] = 2
	-- -- 冶炼4阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Info[5]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[5]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[5]["Continuous"][8]["EventType"] = 35
	-- -- tEighteenChanges_Info[5]["Continuous"][8]["MinNum"] = 2
	-- -- 合成几阶类	合成5阶以上灵珠1次
	-- tEighteenChanges_Info[5]["Composite"] = {}
	-- tEighteenChanges_Info[5]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["Composite"]["EventType"] = 87
	-- tEighteenChanges_Info[5]["Composite"]["MinSoulId"] = 4200006
	-- -- 使用3阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[5]["StepHopping"] = {}
	-- tEighteenChanges_Info[5]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[5]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["StepHopping"]["EventType"] = 88
	-- tEighteenChanges_Info[5]["StepHopping"]["MinSoulId"] = 4200003
	-- tEighteenChanges_Info[5]["StepHopping"]["MinStepHopping"] = 2
	-- -- 使用5阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[5]["AllParticipate"] = {}
	-- tEighteenChanges_Info[5]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["AllParticipate"]["EventType"] = 89
	-- tEighteenChanges_Info[5]["AllParticipate"]["MinSoulId"] = 4200005
	-- -- 累计类		参与灵珠相关玩法8次
	-- tEighteenChanges_Info[5]["GrandTotal"] = {}
	-- tEighteenChanges_Info[5]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[5]["GrandTotal"]["EventType"] = 36
	
	
	-- -- 第六阶段
	-- tEighteenChanges_Info[6] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[6]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["EventType"] = 37
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[6]["Participate"] = {}
	-- -- 在灵珠升级界面升级3次，5阶以上
	-- tEighteenChanges_Info[6]["Participate"][1] = {}
	-- tEighteenChanges_Info[6]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Participate"][1]["EventType"] = 38
	-- tEighteenChanges_Info[6]["Participate"][1]["MinSoulId"] = 4200005
	-- -- 重铸5阶以上灵珠3次
	-- tEighteenChanges_Info[6]["Participate"][5] = {}
	-- tEighteenChanges_Info[6]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Participate"][5]["EventType"] = 39
	-- tEighteenChanges_Info[6]["Participate"][5]["MinSoulId"] = 4200005
	-- -- 冶炼5阶以上灵珠3次
	-- tEighteenChanges_Info[6]["Participate"][7] = {}
	-- tEighteenChanges_Info[6]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Participate"][7]["EventType"] = 40
	-- tEighteenChanges_Info[6]["Participate"][7]["MinSoulId"] = 4200005
	-- -- 参与3次融合玩法融合5阶以上灵珠
	-- tEighteenChanges_Info[6]["Participate"][9] = {}
	-- tEighteenChanges_Info[6]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Participate"][9]["EventType"] = 41
	-- tEighteenChanges_Info[6]["Participate"][9]["MinSoulId"] = 4200005
	-- -- 挑战类		通过任意灵珠玩法升级灵珠4次
	-- tEighteenChanges_Info[6]["Challenge"] = {}
	-- tEighteenChanges_Info[6]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[6]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Challenge"]["EventType"] = 42
	-- -- 连续成功类
	-- tEighteenChanges_Info[6]["Continuous"] = {}
	-- -- 重铸5阶以上灵珠，连续2次成功
	-- tEighteenChanges_Info[6]["Continuous"][2] = {}
	-- tEighteenChanges_Info[6]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Continuous"][2]["EventType"] = 43
	-- tEighteenChanges_Info[6]["Continuous"][2]["MinNum"] = 2
	-- -- 冶炼5阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Info[6]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[6]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[6]["Continuous"][8]["EventType"] = 44
	-- -- tEighteenChanges_Info[6]["Continuous"][8]["MinNum"] = 2
	-- -- 累计类		参与灵珠相关玩法12次
	-- tEighteenChanges_Info[6]["GrandTotal"] = {}
	-- tEighteenChanges_Info[6]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["GrandTotal"]["EventType"] = 45
	-- -- 使用4阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[6]["StepHopping"] = {}
	-- tEighteenChanges_Info[6]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[6]["StepHopping"]["MinSoulId"] = 4200004
	-- tEighteenChanges_Info[6]["StepHopping"]["MinStepHopping"] = 2
	-- tEighteenChanges_Info[6]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["StepHopping"]["EventType"] = 90
	-- -- 使用6阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[6]["AllParticipate"] = {}
	-- tEighteenChanges_Info[6]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["AllParticipate"]["EventType"] = 91
	-- tEighteenChanges_Info[6]["AllParticipate"]["MinSoulId"] = 4200006
	
	-- -- 合成几阶类	合成6阶以上灵珠1次
	-- tEighteenChanges_Info[6]["Composite"] = {}
	-- tEighteenChanges_Info[6]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[6]["Composite"]["EventType"] = 46
	-- tEighteenChanges_Info[6]["Composite"]["MinSoulId"] = 4200006
	
	-- --第七阶段
	-- tEighteenChanges_Info[7] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[7]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["EventType"] = 47
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[7]["Participate"] = {}
	-- -- 在灵珠升级界面升级4次，5阶以上
	-- tEighteenChanges_Info[7]["Participate"][1] = {}
	-- tEighteenChanges_Info[7]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Participate"][1]["EventType"] = 76
	-- tEighteenChanges_Info[7]["Participate"][1]["MinSoulId"] = 4200005
	-- -- 重铸5阶以上灵珠4次
	-- tEighteenChanges_Info[7]["Participate"][5] = {}
	-- tEighteenChanges_Info[7]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Participate"][5]["EventType"] = 48
	-- tEighteenChanges_Info[7]["Participate"][5]["MinSoulId"] = 4200005
	-- -- 冶炼5阶以上灵珠4次
	-- tEighteenChanges_Info[7]["Participate"][7] = {}
	-- tEighteenChanges_Info[7]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Participate"][7]["EventType"] = 49
	-- tEighteenChanges_Info[7]["Participate"][7]["MinSoulId"] = 4200005
	-- -- 参与4次融合玩法融合5阶以上灵珠
	-- tEighteenChanges_Info[7]["Participate"][9] = {}
	-- tEighteenChanges_Info[7]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Participate"][9]["EventType"] = 50
	-- tEighteenChanges_Info[7]["Participate"][9]["MinSoulId"] = 4200005
	-- -- 挑战类		通过任意灵珠玩法升级灵珠6次
	-- tEighteenChanges_Info[7]["Challenge"] = {}
	-- tEighteenChanges_Info[7]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[7]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Challenge"]["EventType"] = 51
	-- -- 连续成功类
	-- tEighteenChanges_Info[7]["Continuous"] = {}
	-- -- 界面重铸5阶以上灵珠，连续成功2次
	-- tEighteenChanges_Info[7]["Continuous"][2] = {}
	-- tEighteenChanges_Info[7]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Continuous"][2]["EventType"] = 77
	-- tEighteenChanges_Info[7]["Continuous"][2]["MinNum"] = 2
		-- -- 重铸5阶以上灵珠，连续2次成功
	-- tEighteenChanges_Info[7]["Continuous"][6] = {}
	-- tEighteenChanges_Info[7]["Continuous"][6]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Continuous"][6]["EventType"] = 52
	-- tEighteenChanges_Info[7]["Continuous"][6]["MinNum"] = 2
	-- -- 冶炼5阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Info[7]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[7]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[7]["Continuous"][8]["EventType"] = 53
	-- -- tEighteenChanges_Info[7]["Continuous"][8]["MinNum"] = 2

	-- -- 累计类		参与灵珠相关玩法16次
	-- tEighteenChanges_Info[7]["GrandTotal"] = {}
	-- tEighteenChanges_Info[7]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["GrandTotal"]["EventType"] = 54
	-- -- 使用5阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[7]["StepHopping"] = {}
	-- tEighteenChanges_Info[7]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[7]["StepHopping"]["MinSoulId"] = 4200005
	-- tEighteenChanges_Info[7]["StepHopping"]["MinStepHopping"] = 2
	-- tEighteenChanges_Info[7]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["StepHopping"]["EventType"] = 92
	-- -- 使用6阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[7]["AllParticipate"] = {}
	-- tEighteenChanges_Info[7]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["AllParticipate"]["EventType"] = 93
	-- tEighteenChanges_Info[7]["AllParticipate"]["MinSoulId"] = 4200006
	
	-- -- 合成几阶类	合成6阶以上灵珠2次
	-- tEighteenChanges_Info[7]["Composite"] = {}
	-- tEighteenChanges_Info[7]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[7]["Composite"]["EventType"] = 55
	-- tEighteenChanges_Info[7]["Composite"]["MinSoulId"] = 4200006
	
	-- -- 第八阶段
		-- tEighteenChanges_Info[8] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[8]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["EventType"] = 56
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[8]["Participate"] = {}
	-- -- 在灵珠升级界面升级5次，6阶以上
	-- tEighteenChanges_Info[8]["Participate"][1] = {}
	-- tEighteenChanges_Info[8]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Participate"][1]["EventType"] = 78
	-- tEighteenChanges_Info[8]["Participate"][1]["MinSoulId"] = 4200006
	-- -- 重铸6阶以上灵珠5次
	-- tEighteenChanges_Info[8]["Participate"][5] = {}
	-- tEighteenChanges_Info[8]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Participate"][5]["EventType"] = 57
	-- tEighteenChanges_Info[8]["Participate"][5]["MinSoulId"] = 4200006
	-- -- 冶炼6阶以上灵珠5次
	-- tEighteenChanges_Info[8]["Participate"][7] = {}
	-- tEighteenChanges_Info[8]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Participate"][7]["EventType"] = 58
	-- tEighteenChanges_Info[8]["Participate"][7]["MinSoulId"] = 4200006
	-- -- 参与融合玩法融合6阶以上灵珠5次
	-- tEighteenChanges_Info[8]["Participate"][9] = {}
	-- tEighteenChanges_Info[8]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Participate"][9]["EventType"] = 59
	-- tEighteenChanges_Info[8]["Participate"][9]["MinSoulId"] = 4200006
	
	-- -- 挑战类		通过任意灵珠玩法升级灵珠8次
	-- tEighteenChanges_Info[8]["Challenge"] = {}
	-- tEighteenChanges_Info[8]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[8]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Challenge"]["EventType"] = 60
	-- -- 连续成功类
	-- tEighteenChanges_Info[8]["Continuous"] = {}
	-- -- 界面重铸6阶以上灵珠，连续成功2次
	-- tEighteenChanges_Info[8]["Continuous"][2] = {}
	-- tEighteenChanges_Info[8]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Continuous"][2]["EventType"] = 79
	-- tEighteenChanges_Info[8]["Continuous"][2]["MinNum"] = 2
		-- -- 重铸6阶以上灵珠，连续2次成功
	-- tEighteenChanges_Info[8]["Continuous"][6] = {}
	-- tEighteenChanges_Info[8]["Continuous"][6]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Continuous"][6]["EventType"] = 61
	-- tEighteenChanges_Info[8]["Continuous"][6]["MinNum"] = 2
	-- -- 冶炼6阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Info[8]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[8]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[8]["Continuous"][8]["EventType"] = 62
	-- -- tEighteenChanges_Info[8]["Continuous"][8]["MinNum"] = 2
	
	-- -- 融合6阶以上灵珠，连续成功2次
	-- tEighteenChanges_Info[8]["Continuous"][10] = {}
	-- tEighteenChanges_Info[8]["Continuous"][10]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Continuous"][10]["EventType"] = 63
	-- tEighteenChanges_Info[8]["Continuous"][10]["MinNum"] = 1
	
	-- -- 累计类		参与灵珠相关玩法20次
	-- tEighteenChanges_Info[8]["GrandTotal"] = {}
	-- tEighteenChanges_Info[8]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["GrandTotal"]["EventType"] = 64
	-- -- 使用6阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[8]["StepHopping"] = {}
	-- tEighteenChanges_Info[8]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[8]["StepHopping"]["MinSoulId"] = 4200006
	-- tEighteenChanges_Info[8]["StepHopping"]["MinStepHopping"] = 2
	-- tEighteenChanges_Info[8]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["StepHopping"]["EventType"] = 94
	-- -- 使用7阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[8]["AllParticipate"] = {}
	-- tEighteenChanges_Info[8]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["AllParticipate"]["EventType"] = 95
	-- tEighteenChanges_Info[8]["AllParticipate"]["MinSoulId"] = 4200007
	
	-- -- 合成几阶类	合成7阶以上灵珠3次
	-- tEighteenChanges_Info[8]["Composite"] = {}
	-- tEighteenChanges_Info[8]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[8]["Composite"]["EventType"] = 65
	-- tEighteenChanges_Info[8]["Composite"]["MinSoulId"] = 4200007
	
	-- -- 第九阶段
	-- tEighteenChanges_Info[9] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[9]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["EventType"] = 66
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[9]["Participate"] = {}
	-- -- 在灵珠升级界面升级6次，7阶以上
	-- tEighteenChanges_Info[9]["Participate"][1] = {}
	-- tEighteenChanges_Info[9]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Participate"][1]["EventType"] = 80
	-- tEighteenChanges_Info[9]["Participate"][1]["MinSoulId"] = 4200007
	-- -- 重铸7阶以上灵珠6次
	-- tEighteenChanges_Info[9]["Participate"][5] = {}
	-- tEighteenChanges_Info[9]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Participate"][5]["EventType"] = 67
	-- tEighteenChanges_Info[9]["Participate"][5]["MinSoulId"] = 4200007
	-- -- 冶炼7阶以上灵珠6次
	-- tEighteenChanges_Info[9]["Participate"][7] = {}
	-- tEighteenChanges_Info[9]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Participate"][7]["EventType"] = 68
	-- tEighteenChanges_Info[9]["Participate"][7]["MinSoulId"] = 4200007
	-- -- 参与融合玩法融合7阶以上灵珠6次
	-- tEighteenChanges_Info[9]["Participate"][9] = {}
	-- tEighteenChanges_Info[9]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Participate"][9]["EventType"] = 69
	-- tEighteenChanges_Info[9]["Participate"][9]["MinSoulId"] = 4200007
	
	-- -- 挑战类		通过任意灵珠玩法升级灵珠10次
	-- tEighteenChanges_Info[9]["Challenge"] = {}
	-- tEighteenChanges_Info[9]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[9]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Challenge"]["EventType"] = 70
	-- -- 连续成功类
	-- tEighteenChanges_Info[9]["Continuous"] = {}
	-- -- 界面重铸7阶以上灵珠，连续成功2次
	-- tEighteenChanges_Info[9]["Continuous"][2] = {}
	-- tEighteenChanges_Info[9]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Continuous"][2]["EventType"] = 81
	-- tEighteenChanges_Info[9]["Continuous"][2]["MinNum"] = 2
	-- -- 重铸7阶以上灵珠，连续2次成功
	-- tEighteenChanges_Info[9]["Continuous"][6] = {}
	-- tEighteenChanges_Info[9]["Continuous"][6]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Continuous"][6]["EventType"] = 71
	-- tEighteenChanges_Info[9]["Continuous"][6]["MinNum"] = 2
	-- -- 冶炼7阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Info[9]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[9]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[9]["Continuous"][8]["EventType"] = 72
	-- -- tEighteenChanges_Info[9]["Continuous"][8]["MinNum"] = 2
	-- -- 融合7阶以上灵珠，连续成功2次
	-- tEighteenChanges_Info[9]["Continuous"][10] = {}
	-- tEighteenChanges_Info[9]["Continuous"][10]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Continuous"][10]["EventType"] = 73
	-- tEighteenChanges_Info[9]["Continuous"][10]["MinNum"] = 1
	-- -- 使用7阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[9]["StepHopping"] = {}
	-- tEighteenChanges_Info[9]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[9]["StepHopping"]["MinSoulId"] = 4200007
	-- tEighteenChanges_Info[9]["StepHopping"]["MinStepHopping"] = 2
	-- tEighteenChanges_Info[9]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["StepHopping"]["EventType"] = 96
	-- -- 使用8阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[9]["AllParticipate"] = {}
	-- tEighteenChanges_Info[9]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["AllParticipate"]["EventType"] = 97
	-- tEighteenChanges_Info[9]["AllParticipate"]["MinSoulId"] = 4200008
	
	-- -- 累计类		参与灵珠相关玩法24次
	-- tEighteenChanges_Info[9]["GrandTotal"] = {}
	-- tEighteenChanges_Info[9]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["GrandTotal"]["EventType"] = 74
	-- -- 合成几阶类	合成8阶以上灵珠4次
	-- tEighteenChanges_Info[9]["Composite"] = {}
	-- tEighteenChanges_Info[9]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[9]["Composite"]["EventType"] = 75
	-- tEighteenChanges_Info[9]["Composite"]["MinSoulId"] = 4200008
	
	-- -- 第十阶段
	-- tEighteenChanges_Info[10] = {}
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Info[10]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["EventType"] = 98
	-- -- 参与类(下标为上面任务类型的下标)
	-- tEighteenChanges_Info[10]["Participate"] = {}
	-- -- 在灵珠升级界面升级7次，8阶以上
	-- tEighteenChanges_Info[10]["Participate"][1] = {}
	-- tEighteenChanges_Info[10]["Participate"][1]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Participate"][1]["EventType"] = 99
	-- tEighteenChanges_Info[10]["Participate"][1]["MinSoulId"] = 4200008
	-- -- 重铸8阶以上灵珠7次
	-- tEighteenChanges_Info[10]["Participate"][5] = {}
	-- tEighteenChanges_Info[10]["Participate"][5]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Participate"][5]["EventType"] = 100
	-- tEighteenChanges_Info[10]["Participate"][5]["MinSoulId"] = 4200008
	-- -- 冶炼8阶以上灵珠7次
	-- tEighteenChanges_Info[10]["Participate"][7] = {}
	-- tEighteenChanges_Info[10]["Participate"][7]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Participate"][7]["EventType"] = 101
	-- tEighteenChanges_Info[10]["Participate"][7]["MinSoulId"] = 4200008
	-- -- 参与融合玩法融合8阶以上灵珠7次
	-- tEighteenChanges_Info[10]["Participate"][9] = {}
	-- tEighteenChanges_Info[10]["Participate"][9]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Participate"][9]["EventType"] = 102
	-- tEighteenChanges_Info[10]["Participate"][9]["MinSoulId"] = 4200008
	
	-- -- 挑战类		通过任意灵珠玩法升级灵珠15次
	-- tEighteenChanges_Info[10]["Challenge"] = {}
	-- tEighteenChanges_Info[10]["Challenge"]["All"] = 1
	-- tEighteenChanges_Info[10]["Challenge"]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Challenge"]["EventType"] = 103
	-- -- 连续成功类
	-- tEighteenChanges_Info[10]["Continuous"] = {}
	-- -- 界面重铸玩法8阶以上灵珠连续成功2次
	-- tEighteenChanges_Info[10]["Continuous"][2] = {}
	-- tEighteenChanges_Info[10]["Continuous"][2]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Continuous"][2]["EventType"] = 104
	-- tEighteenChanges_Info[10]["Continuous"][2]["MinNum"] = 2
	-- -- 冶炼玩法连续成功2次，8阶段以上
	-- -- tEighteenChanges_Info[10]["Continuous"][8] = {}
	-- -- tEighteenChanges_Info[10]["Continuous"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Info[10]["Continuous"][8]["EventType"] = 105
	-- -- tEighteenChanges_Info[10]["Continuous"][8]["MinNum"] = 2
	-- -- 重铸连续成功2次，8阶段以上
	-- tEighteenChanges_Info[10]["Continuous"][6] = {}
	-- tEighteenChanges_Info[10]["Continuous"][6]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Continuous"][6]["EventType"] = 106
	-- tEighteenChanges_Info[10]["Continuous"][6]["MinNum"] = 2
	-- -- 融合玩法连续成功2次，8阶段以上
	-- tEighteenChanges_Info[10]["Continuous"][10] = {}
	-- tEighteenChanges_Info[10]["Continuous"][10]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Continuous"][10]["EventType"] = 107
	-- tEighteenChanges_Info[10]["Continuous"][10]["MinNum"] = 2
	-- -- 使用8阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Info[10]["StepHopping"] = {}
	-- tEighteenChanges_Info[10]["StepHopping"]["All"] = 1
	-- tEighteenChanges_Info[10]["StepHopping"]["MinSoulId"] = 4200008
	-- tEighteenChanges_Info[10]["StepHopping"]["MinStepHopping"] = 2
	-- tEighteenChanges_Info[10]["StepHopping"]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["StepHopping"]["EventType"] = 108
	-- -- 使用9阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Info[10]["AllParticipate"] = {}
	-- tEighteenChanges_Info[10]["AllParticipate"]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["AllParticipate"]["EventType"] = 109
	-- tEighteenChanges_Info[10]["AllParticipate"]["MinSoulId"] = 4200009
	
	-- -- 累计类		参与灵珠相关玩法28次
	-- tEighteenChanges_Info[10]["GrandTotal"] = {}
	-- tEighteenChanges_Info[10]["GrandTotal"]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["GrandTotal"]["EventType"] = 110
	-- -- 合成几阶类	合成9阶以上灵珠6次
	-- tEighteenChanges_Info[10]["Composite"] = {}
	-- tEighteenChanges_Info[10]["Composite"]["ActiveType"] = 0
	-- tEighteenChanges_Info[10]["Composite"]["EventType"] = 111
	-- tEighteenChanges_Info[10]["Composite"]["MinSoulId"] = 4200009
	
	-- 第一阶段
	tEighteenChanges_Info[1] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[1]["ActiveType"] = 0
	tEighteenChanges_Info[1]["EventType"] = 2
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[1]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[1]["Participate"][1] = {}
	-- 在龙魂升级界面升级1次，3至12阶
	tEighteenChanges_Info[1]["Participate"][1][1] ={} 
	tEighteenChanges_Info[1]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][1][1]["EventType"] = 3
	tEighteenChanges_Info[1]["Participate"][1][1]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级2次，3至12阶
	tEighteenChanges_Info[1]["Participate"][1][2] ={} 
	tEighteenChanges_Info[1]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][1][2]["EventType"] = 4
	tEighteenChanges_Info[1]["Participate"][1][2]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级3次，3至12阶
	tEighteenChanges_Info[1]["Participate"][1][3] ={} 
	tEighteenChanges_Info[1]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][1][3]["EventType"] = 5
	tEighteenChanges_Info[1]["Participate"][1][3]["MinSoulId"] = 4200003
	
	tEighteenChanges_Info[1]["Participate"][12]= {}
	-- 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Info[1]["Participate"][12][1] ={} 
	tEighteenChanges_Info[1]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][12][1]["EventType"] = 6
	tEighteenChanges_Info[1]["Participate"][12][1]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Info[1]["Participate"][12][2] ={} 
	tEighteenChanges_Info[1]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][12][2]["EventType"] = 7
	tEighteenChanges_Info[1]["Participate"][12][2]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Info[1]["Participate"][12][3] ={} 
	tEighteenChanges_Info[1]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[1]["Participate"][12][3]["EventType"] = 8
	tEighteenChanges_Info[1]["Participate"][12][3]["MinSoulId"] = 4200003
	
	-- 第2阶段
	tEighteenChanges_Info[2] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[2]["ActiveType"] = 0
	tEighteenChanges_Info[2]["EventType"] = 9
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[2]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[2]["Participate"][1] = {}
	-- 在龙魂升级界面升级1次，3至12阶
	tEighteenChanges_Info[2]["Participate"][1][1] ={} 
	tEighteenChanges_Info[2]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][1][1]["EventType"] = 10
	tEighteenChanges_Info[2]["Participate"][1][1]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级2次，3至12阶
	tEighteenChanges_Info[2]["Participate"][1][2] ={} 
	tEighteenChanges_Info[2]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][1][2]["EventType"] = 11
	tEighteenChanges_Info[2]["Participate"][1][2]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级3次，3至12阶
	tEighteenChanges_Info[2]["Participate"][1][3] ={} 
	tEighteenChanges_Info[2]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][1][3]["EventType"] = 12
	tEighteenChanges_Info[2]["Participate"][1][3]["MinSoulId"] = 4200003
	
	tEighteenChanges_Info[2]["Participate"][12]= {}
	-- 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Info[2]["Participate"][12][1] ={} 
	tEighteenChanges_Info[2]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][12][1]["EventType"] = 13
	tEighteenChanges_Info[2]["Participate"][12][1]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Info[2]["Participate"][12][2] ={} 
	tEighteenChanges_Info[2]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][12][2]["EventType"] = 14
	tEighteenChanges_Info[2]["Participate"][12][2]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Info[2]["Participate"][12][3] ={} 
	tEighteenChanges_Info[2]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[2]["Participate"][12][3]["EventType"] = 15
	
	-- 第3阶段
	tEighteenChanges_Info[3] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[3]["ActiveType"] = 0
	tEighteenChanges_Info[3]["EventType"] = 16
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[3]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[3]["Participate"][1] = {}
	-- 在龙魂升级界面升级1次，3至12阶
	tEighteenChanges_Info[3]["Participate"][1][1] ={} 
	tEighteenChanges_Info[3]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][1][1]["EventType"] = 17
	tEighteenChanges_Info[3]["Participate"][1][1]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级2次，3至12阶
	tEighteenChanges_Info[3]["Participate"][1][2] ={} 
	tEighteenChanges_Info[3]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][1][2]["EventType"] = 18
	tEighteenChanges_Info[3]["Participate"][1][2]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级3次，3至12阶
	tEighteenChanges_Info[3]["Participate"][1][3] ={} 
	tEighteenChanges_Info[3]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][1][3]["EventType"] = 19
	tEighteenChanges_Info[3]["Participate"][1][3]["MinSoulId"] = 4200003
	
	tEighteenChanges_Info[3]["Participate"][12]= {}
	-- 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Info[3]["Participate"][12][1] ={} 
	tEighteenChanges_Info[3]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][12][1]["EventType"] = 20
	tEighteenChanges_Info[3]["Participate"][12][1]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Info[3]["Participate"][12][2] ={} 
	tEighteenChanges_Info[3]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][12][2]["EventType"] = 21
	tEighteenChanges_Info[3]["Participate"][12][2]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Info[3]["Participate"][12][3] ={} 
	tEighteenChanges_Info[3]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[3]["Participate"][12][3]["EventType"] = 22
	tEighteenChanges_Info[3]["Participate"][12][3]["MinSoulId"] = 4200003
	
	-- 第4阶段
	tEighteenChanges_Info[4] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[4]["ActiveType"] = 0
	tEighteenChanges_Info[4]["EventType"] = 23
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[4]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[4]["Participate"][1] = {}
	-- 在龙魂升级界面升级1次，3至12阶
	tEighteenChanges_Info[4]["Participate"][1][1] ={} 
	tEighteenChanges_Info[4]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][1][1]["EventType"] = 24
	tEighteenChanges_Info[4]["Participate"][1][1]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级2次，3至12阶
	tEighteenChanges_Info[4]["Participate"][1][2] ={} 
	tEighteenChanges_Info[4]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][1][2]["EventType"] = 25
	tEighteenChanges_Info[4]["Participate"][1][2]["MinSoulId"] = 4200003
	-- 在龙魂升级界面升级3次，3至12阶
	tEighteenChanges_Info[4]["Participate"][1][3] ={} 
	tEighteenChanges_Info[4]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][1][3]["EventType"] = 26
	tEighteenChanges_Info[4]["Participate"][1][3]["MinSoulId"] = 4200003
	
	tEighteenChanges_Info[4]["Participate"][12]= {}
	-- 在龙魂重铸界面升级2次，3至12阶阶
	tEighteenChanges_Info[4]["Participate"][12][1] ={} 
	tEighteenChanges_Info[4]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][12][1]["EventType"] = 27
	tEighteenChanges_Info[4]["Participate"][12][1]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级4次，3至12阶
	tEighteenChanges_Info[4]["Participate"][12][2] ={} 
	tEighteenChanges_Info[4]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][12][2]["EventType"] = 28
	tEighteenChanges_Info[4]["Participate"][12][2]["MinSoulId"] = 4200003
	-- 在龙魂重铸界面升级6次，3至12阶
	tEighteenChanges_Info[4]["Participate"][12][3] ={} 
	tEighteenChanges_Info[4]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[4]["Participate"][12][3]["EventType"] = 29
	tEighteenChanges_Info[4]["Participate"][12][3]["MinSoulId"] = 4200003
	
		-- 第5阶段
	tEighteenChanges_Info[5] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[5]["ActiveType"] = 0
	tEighteenChanges_Info[5]["EventType"] = 30
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[5]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[5]["Participate"][1] = {}
	-- 在龙魂升级界面升级1次，4至12阶
	tEighteenChanges_Info[5]["Participate"][1][1] ={} 
	tEighteenChanges_Info[5]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][1][1]["EventType"] = 31
	tEighteenChanges_Info[5]["Participate"][1][1]["MinSoulId"] = 4200004
	-- 在龙魂升级界面升级2次，4至12阶
	tEighteenChanges_Info[5]["Participate"][1][2] ={} 
	tEighteenChanges_Info[5]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][1][2]["EventType"] = 32
	tEighteenChanges_Info[5]["Participate"][1][2]["MinSoulId"] = 4200004
	-- 在龙魂升级界面升级3次，4至12阶
	tEighteenChanges_Info[5]["Participate"][1][3] ={} 
	tEighteenChanges_Info[5]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][1][3]["EventType"] = 33
	tEighteenChanges_Info[5]["Participate"][1][3]["MinSoulId"] = 4200004
	
	tEighteenChanges_Info[5]["Participate"][12]= {}
	-- 在龙魂重铸界面升级2次，4至12阶
	tEighteenChanges_Info[5]["Participate"][12][1] ={} 
	tEighteenChanges_Info[5]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][12][1]["EventType"] = 34
	tEighteenChanges_Info[5]["Participate"][12][1]["MinSoulId"] = 4200004
	-- 在龙魂重铸界面升级4次，4至12阶
	tEighteenChanges_Info[5]["Participate"][12][2] ={} 
	tEighteenChanges_Info[5]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][12][2]["EventType"] = 35
	tEighteenChanges_Info[5]["Participate"][12][2]["MinSoulId"] = 4200004
	-- 在龙魂重铸界面升级6次，4至12阶
	tEighteenChanges_Info[5]["Participate"][12][3] ={} 
	tEighteenChanges_Info[5]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[5]["Participate"][12][3]["EventType"] = 36
	tEighteenChanges_Info[5]["Participate"][12][3]["MinSoulId"] = 4200004
	
	-- 第6阶段
	tEighteenChanges_Info[6] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[6]["ActiveType"] = 0
	tEighteenChanges_Info[6]["EventType"] = 37
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[6]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[6]["Participate"][1] = {}
	-- 在龙魂升级界面升级2次，5至12阶
	tEighteenChanges_Info[6]["Participate"][1][1] ={} 
	tEighteenChanges_Info[6]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][1][1]["EventType"] = 38
	tEighteenChanges_Info[6]["Participate"][1][1]["MinSoulId"] = 4200005
	-- 在龙魂升级界面升级3次，5至12阶
	tEighteenChanges_Info[6]["Participate"][1][2] ={} 
	tEighteenChanges_Info[6]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][1][2]["EventType"] = 39
	tEighteenChanges_Info[6]["Participate"][1][2]["MinSoulId"] = 4200005
	-- 在龙魂升级界面升级6次，5至12
	tEighteenChanges_Info[6]["Participate"][1][3] ={} 
	tEighteenChanges_Info[6]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][1][3]["EventType"] = 40
	tEighteenChanges_Info[6]["Participate"][1][3]["MinSoulId"] = 4200005
	
	tEighteenChanges_Info[6]["Participate"][12]= {}
	-- 在龙魂重铸界面升级3次，5至12阶
	tEighteenChanges_Info[6]["Participate"][12][1] ={} 
	tEighteenChanges_Info[6]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][12][1]["EventType"] = 41
	tEighteenChanges_Info[6]["Participate"][12][1]["MinSoulId"] = 4200005
	-- 在龙魂重铸界面升级6次，5至12阶
	tEighteenChanges_Info[6]["Participate"][12][2] ={} 
	tEighteenChanges_Info[6]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][12][2]["EventType"] = 42
	tEighteenChanges_Info[6]["Participate"][12][2]["MinSoulId"] = 4200005
	-- 在龙魂重铸界面升级9次，5至12阶
	tEighteenChanges_Info[6]["Participate"][12][3] ={} 
	tEighteenChanges_Info[6]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[6]["Participate"][12][3]["EventType"] = 43
	tEighteenChanges_Info[6]["Participate"][12][3]["MinSoulId"] = 4200005
	
		-- 第7阶段
	tEighteenChanges_Info[7] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[7]["ActiveType"] = 0
	tEighteenChanges_Info[7]["EventType"] = 44
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[7]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[7]["Participate"][1] = {}
	-- 在龙魂升级界面升级2次，5至12阶
	tEighteenChanges_Info[7]["Participate"][1][1] ={} 
	tEighteenChanges_Info[7]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][1][1]["EventType"] = 45
	tEighteenChanges_Info[7]["Participate"][1][1]["MinSoulId"] = 4200005
	-- 在龙魂升级界面升级3次，5至12阶
	tEighteenChanges_Info[7]["Participate"][1][2] ={} 
	tEighteenChanges_Info[7]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][1][2]["EventType"] = 46
	tEighteenChanges_Info[7]["Participate"][1][2]["MinSoulId"] = 4200005
	-- 在龙魂升级界面升级6次，5至12
	tEighteenChanges_Info[7]["Participate"][1][3] ={} 
	tEighteenChanges_Info[7]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][1][3]["EventType"] = 47
	tEighteenChanges_Info[7]["Participate"][1][3]["MinSoulId"] = 4200005
	
	tEighteenChanges_Info[7]["Participate"][12]= {}
	-- 在龙魂重铸界面升级4次，5至12阶
	tEighteenChanges_Info[7]["Participate"][12][1] ={} 
	tEighteenChanges_Info[7]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][12][1]["EventType"] = 48
	tEighteenChanges_Info[7]["Participate"][12][1]["MinSoulId"] = 4200005
	-- 在龙魂重铸界面升级8次，5至12阶
	tEighteenChanges_Info[7]["Participate"][12][2] ={} 
	tEighteenChanges_Info[7]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][12][2]["EventType"] = 49
	tEighteenChanges_Info[7]["Participate"][12][2]["MinSoulId"] = 4200005
	-- 在龙魂重铸界面升级12次，5至12阶
	tEighteenChanges_Info[7]["Participate"][12][3] ={} 
	tEighteenChanges_Info[7]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[7]["Participate"][12][3]["EventType"] = 50
	tEighteenChanges_Info[7]["Participate"][12][3]["MinSoulId"] = 4200005
	
	-- 第8阶段
	tEighteenChanges_Info[8] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[8]["ActiveType"] = 0
	tEighteenChanges_Info[8]["EventType"] = 51
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[8]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[8]["Participate"][1] = {}
	-- 在龙魂升级界面升级3次，6至12阶
	tEighteenChanges_Info[8]["Participate"][1][1] ={} 
	tEighteenChanges_Info[8]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][1][1]["EventType"] = 52
	tEighteenChanges_Info[8]["Participate"][1][1]["MinSoulId"] = 4200006
	-- 在龙魂升级界面升级6次，6至12阶
	tEighteenChanges_Info[8]["Participate"][1][2] ={} 
	tEighteenChanges_Info[8]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][1][2]["EventType"] = 53
	tEighteenChanges_Info[8]["Participate"][1][2]["MinSoulId"] = 4200006
	-- 在龙魂升级界面升级9次，6至12阶
	tEighteenChanges_Info[8]["Participate"][1][3] ={} 
	tEighteenChanges_Info[8]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][1][3]["EventType"] = 54
	tEighteenChanges_Info[8]["Participate"][1][3]["MinSoulId"] = 4200006
	
	tEighteenChanges_Info[8]["Participate"][12]= {}
	-- 在龙魂重铸界面升级5次，6至12阶
	tEighteenChanges_Info[8]["Participate"][12][1] ={} 
	tEighteenChanges_Info[8]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][12][1]["EventType"] = 55
	tEighteenChanges_Info[8]["Participate"][12][1]["MinSoulId"] = 4200006
	-- 在龙魂重铸界面升级10次，6至12阶
	tEighteenChanges_Info[8]["Participate"][12][2] ={} 
	tEighteenChanges_Info[8]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][12][2]["EventType"] = 56
	tEighteenChanges_Info[8]["Participate"][12][2]["MinSoulId"] = 4200006
	-- 在龙魂重铸界面升级15次，6至12阶
	tEighteenChanges_Info[8]["Participate"][12][3] ={} 
	tEighteenChanges_Info[8]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[8]["Participate"][12][3]["EventType"] = 57
	tEighteenChanges_Info[8]["Participate"][12][3]["MinSoulId"] = 4200006
	
		-- 第9阶段
	tEighteenChanges_Info[9] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[9]["ActiveType"] = 0
	tEighteenChanges_Info[9]["EventType"] = 58
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[9]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[9]["Participate"][1] = {}
	-- 在龙魂升级界面升级3次，7至12阶
	tEighteenChanges_Info[9]["Participate"][1][1] ={} 
	tEighteenChanges_Info[9]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][1][1]["EventType"] = 59
	tEighteenChanges_Info[9]["Participate"][1][1]["MinSoulId"] = 4200007
	-- 在龙魂升级界面升级6次，7至12阶
	tEighteenChanges_Info[9]["Participate"][1][2] ={} 
	tEighteenChanges_Info[9]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][1][2]["EventType"] = 60
	tEighteenChanges_Info[9]["Participate"][1][2]["MinSoulId"] = 4200007
	-- 在龙魂升级界面升级9次，7至12阶
	tEighteenChanges_Info[9]["Participate"][1][3] ={} 
	tEighteenChanges_Info[9]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][1][3]["EventType"] = 61
	tEighteenChanges_Info[9]["Participate"][1][3]["MinSoulId"] = 4200007
	
	tEighteenChanges_Info[9]["Participate"][12]= {}
	-- 在龙魂重铸界面升级6次，7至12阶
	tEighteenChanges_Info[9]["Participate"][12][1] ={} 
	tEighteenChanges_Info[9]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][12][1]["EventType"] = 62
	tEighteenChanges_Info[9]["Participate"][12][1]["MinSoulId"] = 4200007
	-- 在龙魂重铸界面升级12次，7至12阶
	tEighteenChanges_Info[9]["Participate"][12][2] ={} 
	tEighteenChanges_Info[9]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][12][2]["EventType"] = 63
	tEighteenChanges_Info[9]["Participate"][12][2]["MinSoulId"] = 4200007
	-- 在龙魂重铸界面升级18次，7至12阶
	tEighteenChanges_Info[9]["Participate"][12][3] ={} 
	tEighteenChanges_Info[9]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[9]["Participate"][12][3]["EventType"] = 64
	tEighteenChanges_Info[9]["Participate"][12][3]["MinSoulId"] = 4200007
	
		-- 第10阶段
	tEighteenChanges_Info[10] = {}
	-- 记录完成任务次数以及领取大奖的掩码
	tEighteenChanges_Info[10]["ActiveType"] = 0
	tEighteenChanges_Info[10]["EventType"] = 65
	-- 参与类(下标为上面任务类型的下标)
	tEighteenChanges_Info[10]["Participate"] = {}
	-- 在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Info[10]["Participate"][1] = {}
	-- 在龙魂升级界面升级5次，8至12阶
	tEighteenChanges_Info[10]["Participate"][1][1] ={} 
	tEighteenChanges_Info[10]["Participate"][1][1]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][1][1]["EventType"] = 66
	tEighteenChanges_Info[10]["Participate"][1][1]["MinSoulId"] = 4200008
	-- 在龙魂升级界面升级10次，8至12阶
	tEighteenChanges_Info[10]["Participate"][1][2] ={} 
	tEighteenChanges_Info[10]["Participate"][1][2]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][1][2]["EventType"] = 67
	tEighteenChanges_Info[10]["Participate"][1][2]["MinSoulId"] = 4200008
	-- 在龙魂升级界面升级15次，8至12阶
	tEighteenChanges_Info[10]["Participate"][1][3] ={} 
	tEighteenChanges_Info[10]["Participate"][1][3]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][1][3]["EventType"] = 68
	tEighteenChanges_Info[10]["Participate"][1][3]["MinSoulId"] = 4200008
	
	tEighteenChanges_Info[10]["Participate"][12]= {}
	-- 在龙魂重铸界面升级7次，8至12阶
	tEighteenChanges_Info[10]["Participate"][12][1] ={} 
	tEighteenChanges_Info[10]["Participate"][12][1]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][12][1]["EventType"] = 69
	tEighteenChanges_Info[10]["Participate"][12][1]["MinSoulId"] = 4200008
	-- 在龙魂重铸界面升级14次，8至12阶
	tEighteenChanges_Info[10]["Participate"][12][2] ={} 
	tEighteenChanges_Info[10]["Participate"][12][2]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][12][2]["EventType"] = 70
	tEighteenChanges_Info[10]["Participate"][12][2]["MinSoulId"] = 4200008
	-- 在龙魂重铸界面升级21次，8至12阶
	tEighteenChanges_Info[10]["Participate"][12][3] ={} 
	tEighteenChanges_Info[10]["Participate"][12][3]["ActiveType"] = 0
	tEighteenChanges_Info[10]["Participate"][12][3]["EventType"] = 71
	tEighteenChanges_Info[10]["Participate"][12][3]["MinSoulId"] = 4200008
	
-- 掩码对应的需求值以及奖励
local tEighteenChanges_Stc = {}
	tEighteenChanges_Stc[0] = {}
	tEighteenChanges_Stc[0][2] = {}
	tEighteenChanges_Stc[0][2]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][2]["RewardIndex"] = 101
	tEighteenChanges_Stc[0][2]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][2]["Complete"] = {}
	tEighteenChanges_Stc[0][2]["Complete"][1] = {}
	tEighteenChanges_Stc[0][2]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][1]["EventType"] = 3
	tEighteenChanges_Stc[0][2]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][2]["Complete"][2] = {}
	tEighteenChanges_Stc[0][2]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][2]["EventType"] = 4
	tEighteenChanges_Stc[0][2]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][2]["Complete"][3] = {}
	tEighteenChanges_Stc[0][2]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][3]["EventType"] = 5
	tEighteenChanges_Stc[0][2]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][2]["Complete"][4] = {}
	tEighteenChanges_Stc[0][2]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][4]["EventType"] = 6
	tEighteenChanges_Stc[0][2]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][2]["Complete"][5] = {}
	tEighteenChanges_Stc[0][2]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][5]["EventType"] = 7
	tEighteenChanges_Stc[0][2]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][2]["Complete"][6] = {}
	tEighteenChanges_Stc[0][2]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][2]["Complete"][6]["EventType"] = 8
	tEighteenChanges_Stc[0][2]["Complete"][6]["Data"] = 1
	-- 第一阶段	在龙魂升级界面升级1次，3至12阶
	tEighteenChanges_Stc[0][3] = {}
	tEighteenChanges_Stc[0][3]["RewardIndex"] = 1
	tEighteenChanges_Stc[0][3]["NeedNum"] = 1
	tEighteenChanges_Stc[0][3]["Complete"] = 1
	tEighteenChanges_Stc[0][3]["NeedTaskNum"] = 0

	-- 第一阶段	在龙魂升级界面升级2次，3至12阶
	tEighteenChanges_Stc[0][4] = {}
	tEighteenChanges_Stc[0][4]["RewardIndex"] = 2
	tEighteenChanges_Stc[0][4]["NeedNum"] = 2
	tEighteenChanges_Stc[0][4]["Complete"] = 2
	tEighteenChanges_Stc[0][4]["NeedTaskNum"] = 0
	
	-- 第一阶段	在龙魂升级界面升级3次，3至12阶
	tEighteenChanges_Stc[0][5] = {}
	tEighteenChanges_Stc[0][5]["RewardIndex"] = 3
	tEighteenChanges_Stc[0][5]["NeedNum"] = 3
	tEighteenChanges_Stc[0][5]["Complete"] = 4
	tEighteenChanges_Stc[0][5]["NeedTaskNum"] = 0
	
	-- 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Stc[0][6] = {}
	tEighteenChanges_Stc[0][6]["RewardIndex"] = 4
	tEighteenChanges_Stc[0][6]["NeedNum"] = 1
	tEighteenChanges_Stc[0][6]["Complete"] = 8
	tEighteenChanges_Stc[0][6]["NeedTaskNum"] = 0

	-- 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Stc[0][7] = {}
	tEighteenChanges_Stc[0][7]["RewardIndex"] = 5
	tEighteenChanges_Stc[0][7]["NeedNum"] = 3
	tEighteenChanges_Stc[0][7]["Complete"] = 16
	tEighteenChanges_Stc[0][7]["NeedTaskNum"] = 0
	
	-- 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Stc[0][8] = {}
	tEighteenChanges_Stc[0][8]["RewardIndex"] = 6
	tEighteenChanges_Stc[0][8]["NeedNum"] = 5
	tEighteenChanges_Stc[0][8]["Complete"] = 32
	tEighteenChanges_Stc[0][8]["NeedTaskNum"] = 0
	
	
	tEighteenChanges_Stc[0][9] = {}
	tEighteenChanges_Stc[0][9]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][9]["RewardIndex"] = 102
	tEighteenChanges_Stc[0][9]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][9]["Complete"] = {}
	tEighteenChanges_Stc[0][9]["Complete"][1] = {}
	tEighteenChanges_Stc[0][9]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][1]["EventType"] = 10
	tEighteenChanges_Stc[0][9]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][9]["Complete"][2] = {}
	tEighteenChanges_Stc[0][9]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][2]["EventType"] = 11
	tEighteenChanges_Stc[0][9]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][9]["Complete"][3] = {}
	tEighteenChanges_Stc[0][9]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][3]["EventType"] = 12
	tEighteenChanges_Stc[0][9]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][9]["Complete"][4] = {}
	tEighteenChanges_Stc[0][9]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][4]["EventType"] = 13
	tEighteenChanges_Stc[0][9]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][9]["Complete"][5] = {}
	tEighteenChanges_Stc[0][9]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][5]["EventType"] = 14
	tEighteenChanges_Stc[0][9]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][9]["Complete"][6] = {}
	tEighteenChanges_Stc[0][9]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][9]["Complete"][6]["EventType"] = 15
	tEighteenChanges_Stc[0][9]["Complete"][6]["Data"] = 1
	-- 第二阶段	在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Stc[0][10] = {}
	tEighteenChanges_Stc[0][10]["RewardIndex"] = 7
	tEighteenChanges_Stc[0][10]["NeedNum"] = 1
	tEighteenChanges_Stc[0][10]["Complete"] = 1
	tEighteenChanges_Stc[0][10]["NeedTaskNum"] = 0

	-- 第二阶段	在灵珠升级界面升级2次，任意阶
	tEighteenChanges_Stc[0][11] = {}
	tEighteenChanges_Stc[0][11]["RewardIndex"] = 8
	tEighteenChanges_Stc[0][11]["NeedNum"] = 2
	tEighteenChanges_Stc[0][11]["Complete"] = 2
	tEighteenChanges_Stc[0][11]["NeedTaskNum"] = 0
	
	-- 第二阶段	在灵珠升级界面升级3次，任意阶
	tEighteenChanges_Stc[0][12] = {}
	tEighteenChanges_Stc[0][12]["RewardIndex"] = 9
	tEighteenChanges_Stc[0][12]["NeedNum"] = 3
	tEighteenChanges_Stc[0][12]["Complete"] = 4
	tEighteenChanges_Stc[0][12]["NeedTaskNum"] = 0
	
	-- 第二阶段 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Stc[0][13] = {}
	tEighteenChanges_Stc[0][13]["RewardIndex"] = 10
	tEighteenChanges_Stc[0][13]["NeedNum"] = 1
	tEighteenChanges_Stc[0][13]["Complete"] = 8
	tEighteenChanges_Stc[0][13]["NeedTaskNum"] = 0

	-- 第二阶段 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Stc[0][14] = {}
	tEighteenChanges_Stc[0][14]["RewardIndex"] = 11
	tEighteenChanges_Stc[0][14]["NeedNum"] = 3
	tEighteenChanges_Stc[0][14]["Complete"] = 16
	tEighteenChanges_Stc[0][14]["NeedTaskNum"] = 0
	
	-- 第二阶段 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Stc[0][15] = {}
	tEighteenChanges_Stc[0][15]["RewardIndex"] = 12
	tEighteenChanges_Stc[0][15]["NeedNum"] = 5
	tEighteenChanges_Stc[0][15]["Complete"] = 32
	tEighteenChanges_Stc[0][15]["NeedTaskNum"] = 0
	
	tEighteenChanges_Stc[0][16] = {}
	tEighteenChanges_Stc[0][16]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][16]["RewardIndex"] = 103
	tEighteenChanges_Stc[0][16]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][16]["Complete"] = {}
	tEighteenChanges_Stc[0][16]["Complete"][1] = {}
	tEighteenChanges_Stc[0][16]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][1]["EventType"] = 17
	tEighteenChanges_Stc[0][16]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][16]["Complete"][2] = {}
	tEighteenChanges_Stc[0][16]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][2]["EventType"] = 18
	tEighteenChanges_Stc[0][16]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][16]["Complete"][3] = {}
	tEighteenChanges_Stc[0][16]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][3]["EventType"] = 19
	tEighteenChanges_Stc[0][16]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][16]["Complete"][4] = {}
	tEighteenChanges_Stc[0][16]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][4]["EventType"] = 20
	tEighteenChanges_Stc[0][16]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][16]["Complete"][5] = {}
	tEighteenChanges_Stc[0][16]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][5]["EventType"] = 21
	tEighteenChanges_Stc[0][16]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][16]["Complete"][6] = {}
	tEighteenChanges_Stc[0][16]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][16]["Complete"][6]["EventType"] = 22
	tEighteenChanges_Stc[0][16]["Complete"][6]["Data"] = 1
	-- 第三阶段	在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Stc[0][17] = {}
	tEighteenChanges_Stc[0][17]["RewardIndex"] = 13
	tEighteenChanges_Stc[0][17]["NeedNum"] = 1
	tEighteenChanges_Stc[0][17]["Complete"] = 1
	tEighteenChanges_Stc[0][17]["NeedTaskNum"] = 0

	-- 第三阶段	在灵珠升级界面升级2次，任意阶
	tEighteenChanges_Stc[0][18] = {}
	tEighteenChanges_Stc[0][18]["RewardIndex"] = 14
	tEighteenChanges_Stc[0][18]["NeedNum"] = 2
	tEighteenChanges_Stc[0][18]["Complete"] = 2
	tEighteenChanges_Stc[0][18]["NeedTaskNum"] = 0
	
	-- 第三阶段	在灵珠升级界面升级3次，任意阶
	tEighteenChanges_Stc[0][19] = {}
	tEighteenChanges_Stc[0][19]["RewardIndex"] = 15
	tEighteenChanges_Stc[0][19]["NeedNum"] = 3
	tEighteenChanges_Stc[0][19]["Complete"] = 4
	tEighteenChanges_Stc[0][19]["NeedTaskNum"] = 0
	
	-- 第三阶段 在龙魂重铸界面升级1次，3至12阶
	tEighteenChanges_Stc[0][20] = {}
	tEighteenChanges_Stc[0][20]["RewardIndex"] = 16
	tEighteenChanges_Stc[0][20]["NeedNum"] = 1
	tEighteenChanges_Stc[0][20]["Complete"] = 8
	tEighteenChanges_Stc[0][20]["NeedTaskNum"] = 0

	-- 第三阶段 在龙魂重铸界面升级3次，3至12阶
	tEighteenChanges_Stc[0][21] = {}
	tEighteenChanges_Stc[0][21]["RewardIndex"] = 17
	tEighteenChanges_Stc[0][21]["NeedNum"] = 3
	tEighteenChanges_Stc[0][21]["Complete"] = 16
	tEighteenChanges_Stc[0][21]["NeedTaskNum"] = 0
	
	-- 第三阶段 在龙魂重铸界面升级5次，3至12阶
	tEighteenChanges_Stc[0][22] = {}
	tEighteenChanges_Stc[0][22]["RewardIndex"] = 18
	tEighteenChanges_Stc[0][22]["NeedNum"] = 5
	tEighteenChanges_Stc[0][22]["Complete"] = 32
	tEighteenChanges_Stc[0][22]["NeedTaskNum"] = 0
	
	tEighteenChanges_Stc[0][23] = {}
	tEighteenChanges_Stc[0][23]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][23]["RewardIndex"] = 104
	tEighteenChanges_Stc[0][23]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][23]["Complete"] = {}
	tEighteenChanges_Stc[0][23]["Complete"][1] = {}
	tEighteenChanges_Stc[0][23]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][1]["EventType"] = 24
	tEighteenChanges_Stc[0][23]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][23]["Complete"][2] = {}
	tEighteenChanges_Stc[0][23]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][2]["EventType"] = 25
	tEighteenChanges_Stc[0][23]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][23]["Complete"][3] = {}
	tEighteenChanges_Stc[0][23]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][3]["EventType"] = 26
	tEighteenChanges_Stc[0][23]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][23]["Complete"][4] = {}
	tEighteenChanges_Stc[0][23]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][4]["EventType"] = 27
	tEighteenChanges_Stc[0][23]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][23]["Complete"][5] = {}
	tEighteenChanges_Stc[0][23]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][5]["EventType"] = 28
	tEighteenChanges_Stc[0][23]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][23]["Complete"][6] = {}
	tEighteenChanges_Stc[0][23]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][23]["Complete"][6]["EventType"] = 29
	tEighteenChanges_Stc[0][23]["Complete"][6]["Data"] = 1
	-- 第4阶段	在灵珠升级界面升级1次，任意阶
	tEighteenChanges_Stc[0][24] = {}
	tEighteenChanges_Stc[0][24]["RewardIndex"] = 19
	tEighteenChanges_Stc[0][24]["NeedNum"] = 1
	tEighteenChanges_Stc[0][24]["Complete"] = 1
	tEighteenChanges_Stc[0][24]["NeedTaskNum"] = 0

	-- 第4阶段	在灵珠升级界面升级2次，任意阶
	tEighteenChanges_Stc[0][25] = {}
	tEighteenChanges_Stc[0][25]["RewardIndex"] = 20
	tEighteenChanges_Stc[0][25]["NeedNum"] = 2
	tEighteenChanges_Stc[0][25]["Complete"] = 2
	tEighteenChanges_Stc[0][25]["NeedTaskNum"] = 0
	
	-- 第4阶段	在灵珠升级界面升级3次，任意阶
	tEighteenChanges_Stc[0][26] = {}
	tEighteenChanges_Stc[0][26]["RewardIndex"] = 21
	tEighteenChanges_Stc[0][26]["NeedNum"] = 3
	tEighteenChanges_Stc[0][26]["Complete"] = 4
	tEighteenChanges_Stc[0][26]["NeedTaskNum"] = 0
	
	-- 第4阶段 在龙魂重铸界面升级2次，3至12阶
	tEighteenChanges_Stc[0][27] = {}
	tEighteenChanges_Stc[0][27]["RewardIndex"] = 22
	tEighteenChanges_Stc[0][27]["NeedNum"] = 2
	tEighteenChanges_Stc[0][27]["Complete"] = 8
	tEighteenChanges_Stc[0][27]["NeedTaskNum"] = 0

	-- 第4阶段 在龙魂重铸界面升级4次，3至12阶
	tEighteenChanges_Stc[0][28] = {}
	tEighteenChanges_Stc[0][28]["RewardIndex"] = 23
	tEighteenChanges_Stc[0][28]["NeedNum"] = 4
	tEighteenChanges_Stc[0][28]["Complete"] = 16
	tEighteenChanges_Stc[0][28]["NeedTaskNum"] = 0
	
	-- 第4阶段 在龙魂重铸界面升级6次，3至12阶
	tEighteenChanges_Stc[0][29] = {}
	tEighteenChanges_Stc[0][29]["RewardIndex"] = 24
	tEighteenChanges_Stc[0][29]["NeedNum"] = 6
	tEighteenChanges_Stc[0][29]["Complete"] = 32
	tEighteenChanges_Stc[0][29]["NeedTaskNum"] = 0
	
	tEighteenChanges_Stc[0][30] = {}
	tEighteenChanges_Stc[0][30]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][30]["RewardIndex"] = 105
	tEighteenChanges_Stc[0][30]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][30]["Complete"] = {}
	tEighteenChanges_Stc[0][30]["Complete"][1] = {}
	tEighteenChanges_Stc[0][30]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][1]["EventType"] = 31
	tEighteenChanges_Stc[0][30]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][30]["Complete"][2] = {}
	tEighteenChanges_Stc[0][30]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][2]["EventType"] = 32
	tEighteenChanges_Stc[0][30]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][30]["Complete"][3] = {}
	tEighteenChanges_Stc[0][30]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][3]["EventType"] = 33
	tEighteenChanges_Stc[0][30]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][30]["Complete"][4] = {}
	tEighteenChanges_Stc[0][30]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][4]["EventType"] = 34
	tEighteenChanges_Stc[0][30]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][30]["Complete"][5] = {}
	tEighteenChanges_Stc[0][30]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][5]["EventType"] = 35
	tEighteenChanges_Stc[0][30]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][30]["Complete"][6] = {}
	tEighteenChanges_Stc[0][30]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][30]["Complete"][6]["EventType"] = 36
	tEighteenChanges_Stc[0][30]["Complete"][6]["Data"] = 1
	-- 第5阶段	在龙魂升级界面升级1次，4至12阶
	tEighteenChanges_Stc[0][31] = {}
	tEighteenChanges_Stc[0][31]["RewardIndex"] = 25
	tEighteenChanges_Stc[0][31]["NeedNum"] = 1
	tEighteenChanges_Stc[0][31]["Complete"] = 1
	tEighteenChanges_Stc[0][31]["NeedTaskNum"] = 0

	-- 第5阶段	在龙魂升级界面升级2次，4至12阶
	tEighteenChanges_Stc[0][32] = {}
	tEighteenChanges_Stc[0][32]["RewardIndex"] = 26
	tEighteenChanges_Stc[0][32]["NeedNum"] = 2
	tEighteenChanges_Stc[0][32]["Complete"] = 2
	tEighteenChanges_Stc[0][32]["NeedTaskNum"] = 0
	
	-- 第5阶段	在龙魂升级界面升级3次，4至12阶
	tEighteenChanges_Stc[0][33] = {}
	tEighteenChanges_Stc[0][33]["RewardIndex"] = 27
	tEighteenChanges_Stc[0][33]["NeedNum"] = 3
	tEighteenChanges_Stc[0][33]["Complete"] = 4
	tEighteenChanges_Stc[0][33]["NeedTaskNum"] = 0
	
	-- 第5阶段 在龙魂重铸界面升级2次，4至12阶
	tEighteenChanges_Stc[0][34] = {}
	tEighteenChanges_Stc[0][34]["RewardIndex"] = 28
	tEighteenChanges_Stc[0][34]["NeedNum"] = 2
	tEighteenChanges_Stc[0][34]["Complete"] = 8
	tEighteenChanges_Stc[0][34]["NeedTaskNum"] = 0

	-- 第5阶段 在龙魂重铸界面升级4次，4至12阶
	tEighteenChanges_Stc[0][35] = {}
	tEighteenChanges_Stc[0][35]["RewardIndex"] = 29
	tEighteenChanges_Stc[0][35]["NeedNum"] = 4
	tEighteenChanges_Stc[0][35]["Complete"] = 16
	tEighteenChanges_Stc[0][35]["NeedTaskNum"] = 0
	
	-- 第5阶段 在龙魂重铸界面升级6次，4至12阶
	tEighteenChanges_Stc[0][36] = {}
	tEighteenChanges_Stc[0][36]["RewardIndex"] = 30
	tEighteenChanges_Stc[0][36]["NeedNum"] = 6
	tEighteenChanges_Stc[0][36]["Complete"] = 32
	tEighteenChanges_Stc[0][36]["NeedTaskNum"] = 0
	
		tEighteenChanges_Stc[0][37] = {}
	tEighteenChanges_Stc[0][37]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][37]["RewardIndex"] = 106
	tEighteenChanges_Stc[0][37]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][37]["Complete"] = {}
	tEighteenChanges_Stc[0][37]["Complete"][1] = {}
	tEighteenChanges_Stc[0][37]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][1]["EventType"] = 38
	tEighteenChanges_Stc[0][37]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][37]["Complete"][2] = {}
	tEighteenChanges_Stc[0][37]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][2]["EventType"] = 39
	tEighteenChanges_Stc[0][37]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][37]["Complete"][3] = {}
	tEighteenChanges_Stc[0][37]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][3]["EventType"] = 40
	tEighteenChanges_Stc[0][37]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][37]["Complete"][4] = {}
	tEighteenChanges_Stc[0][37]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][4]["EventType"] = 41
	tEighteenChanges_Stc[0][37]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][37]["Complete"][5] = {}
	tEighteenChanges_Stc[0][37]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][5]["EventType"] = 42
	tEighteenChanges_Stc[0][37]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][37]["Complete"][6] = {}
	tEighteenChanges_Stc[0][37]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][37]["Complete"][6]["EventType"] = 43
	tEighteenChanges_Stc[0][37]["Complete"][6]["Data"] = 1
	-- 第6阶段	在龙魂升级界面升级2次，5至12阶
	tEighteenChanges_Stc[0][38] = {}
	tEighteenChanges_Stc[0][38]["RewardIndex"] = 31
	tEighteenChanges_Stc[0][38]["NeedNum"] = 2
	tEighteenChanges_Stc[0][38]["Complete"] = 1
	tEighteenChanges_Stc[0][38]["NeedTaskNum"] = 0

	-- 第6阶段	在龙魂升级界面升级3次，5至12阶
	tEighteenChanges_Stc[0][39] = {}
	tEighteenChanges_Stc[0][39]["RewardIndex"] = 32
	tEighteenChanges_Stc[0][39]["NeedNum"] = 3
	tEighteenChanges_Stc[0][39]["Complete"] = 2
	tEighteenChanges_Stc[0][39]["NeedTaskNum"] = 0
	
	-- 第6阶段	在龙魂升级界面升级6次，5至12阶
	tEighteenChanges_Stc[0][40] = {}
	tEighteenChanges_Stc[0][40]["RewardIndex"] = 33
	tEighteenChanges_Stc[0][40]["NeedNum"] = 6
	tEighteenChanges_Stc[0][40]["Complete"] = 4
	tEighteenChanges_Stc[0][40]["NeedTaskNum"] = 0
	
	-- 第6阶段 在龙魂重铸界面升级3次，5至12阶
	tEighteenChanges_Stc[0][41] = {}
	tEighteenChanges_Stc[0][41]["RewardIndex"] = 34
	tEighteenChanges_Stc[0][41]["NeedNum"] = 3
	tEighteenChanges_Stc[0][41]["Complete"] = 8
	tEighteenChanges_Stc[0][41]["NeedTaskNum"] = 0

	-- 第6阶段 在龙魂重铸界面升级6次，5至12阶
	tEighteenChanges_Stc[0][42] = {}
	tEighteenChanges_Stc[0][42]["RewardIndex"] = 35
	tEighteenChanges_Stc[0][42]["NeedNum"] = 6
	tEighteenChanges_Stc[0][42]["Complete"] = 16
	tEighteenChanges_Stc[0][42]["NeedTaskNum"] = 0
	
	-- 第6阶段 在龙魂重铸界面升级9次，5至12阶
	tEighteenChanges_Stc[0][43] = {}
	tEighteenChanges_Stc[0][43]["RewardIndex"] = 36
	tEighteenChanges_Stc[0][43]["NeedNum"] = 9
	tEighteenChanges_Stc[0][43]["Complete"] = 32
	tEighteenChanges_Stc[0][43]["NeedTaskNum"] = 0
	
	tEighteenChanges_Stc[0][44] = {}
	tEighteenChanges_Stc[0][44]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][44]["RewardIndex"] = 107
	tEighteenChanges_Stc[0][44]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][44]["Complete"] = {}
	tEighteenChanges_Stc[0][44]["Complete"][1] = {}
	tEighteenChanges_Stc[0][44]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][1]["EventType"] = 45
	tEighteenChanges_Stc[0][44]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][44]["Complete"][2] = {}
	tEighteenChanges_Stc[0][44]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][2]["EventType"] = 46
	tEighteenChanges_Stc[0][44]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][44]["Complete"][3] = {}
	tEighteenChanges_Stc[0][44]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][3]["EventType"] = 47
	tEighteenChanges_Stc[0][44]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][44]["Complete"][4] = {}
	tEighteenChanges_Stc[0][44]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][4]["EventType"] = 48
	tEighteenChanges_Stc[0][44]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][44]["Complete"][5] = {}
	tEighteenChanges_Stc[0][44]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][5]["EventType"] = 49
	tEighteenChanges_Stc[0][44]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][44]["Complete"][6] = {}
	tEighteenChanges_Stc[0][44]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][44]["Complete"][6]["EventType"] = 50
	tEighteenChanges_Stc[0][44]["Complete"][6]["Data"] = 1
	-- 第7阶段	在龙魂升级界面升级2次，5至12阶
	tEighteenChanges_Stc[0][45] = {}
	tEighteenChanges_Stc[0][45]["RewardIndex"] = 37
	tEighteenChanges_Stc[0][45]["NeedNum"] = 2
	tEighteenChanges_Stc[0][45]["Complete"] = 1
	tEighteenChanges_Stc[0][45]["NeedTaskNum"] = 0

	-- 第7阶段	在龙魂升级界面升级3次，5至12阶
	tEighteenChanges_Stc[0][46] = {}
	tEighteenChanges_Stc[0][46]["RewardIndex"] = 38
	tEighteenChanges_Stc[0][46]["NeedNum"] = 3
	tEighteenChanges_Stc[0][46]["Complete"] = 2
	tEighteenChanges_Stc[0][46]["NeedTaskNum"] = 0
	
	-- 第7阶段	在龙魂升级界面升级6次，5至12阶
	tEighteenChanges_Stc[0][47] = {}
	tEighteenChanges_Stc[0][47]["RewardIndex"] = 39
	tEighteenChanges_Stc[0][47]["NeedNum"] = 6
	tEighteenChanges_Stc[0][47]["Complete"] = 4
	tEighteenChanges_Stc[0][47]["NeedTaskNum"] = 0
	
	-- 第7阶段 在龙魂重铸界面升级4次，5至12阶
	tEighteenChanges_Stc[0][48] = {}
	tEighteenChanges_Stc[0][48]["RewardIndex"] = 40
	tEighteenChanges_Stc[0][48]["NeedNum"] = 4
	tEighteenChanges_Stc[0][48]["Complete"] = 8
	tEighteenChanges_Stc[0][48]["NeedTaskNum"] = 0

	-- 第7阶段 在龙魂重铸界面升级8次，5至12阶
	tEighteenChanges_Stc[0][49] = {}
	tEighteenChanges_Stc[0][49]["RewardIndex"] = 41
	tEighteenChanges_Stc[0][49]["NeedNum"] = 8
	tEighteenChanges_Stc[0][49]["Complete"] = 16
	tEighteenChanges_Stc[0][49]["NeedTaskNum"] = 0
	
	-- 第7阶段 在龙魂重铸界面升级12次，5至12阶
	tEighteenChanges_Stc[0][50] = {}
	tEighteenChanges_Stc[0][50]["RewardIndex"] = 42
	tEighteenChanges_Stc[0][50]["NeedNum"] = 12
	tEighteenChanges_Stc[0][50]["Complete"] = 32
	tEighteenChanges_Stc[0][50]["NeedTaskNum"] = 0
	
	
	tEighteenChanges_Stc[0][51] = {}
	tEighteenChanges_Stc[0][51]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][51]["RewardIndex"] = 108
	tEighteenChanges_Stc[0][51]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][51]["Complete"] = {}
	tEighteenChanges_Stc[0][51]["Complete"][1] = {}
	tEighteenChanges_Stc[0][51]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][1]["EventType"] = 52
	tEighteenChanges_Stc[0][51]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][51]["Complete"][2] = {}
	tEighteenChanges_Stc[0][51]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][2]["EventType"] = 53
	tEighteenChanges_Stc[0][51]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][51]["Complete"][3] = {}
	tEighteenChanges_Stc[0][51]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][3]["EventType"] = 54
	tEighteenChanges_Stc[0][51]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][51]["Complete"][4] = {}
	tEighteenChanges_Stc[0][51]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][4]["EventType"] = 55
	tEighteenChanges_Stc[0][51]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][51]["Complete"][5] = {}
	tEighteenChanges_Stc[0][51]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][5]["EventType"] = 56
	tEighteenChanges_Stc[0][51]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][51]["Complete"][6] = {}
	tEighteenChanges_Stc[0][51]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][51]["Complete"][6]["EventType"] = 57
	tEighteenChanges_Stc[0][51]["Complete"][6]["Data"] = 1
	-- 第8阶段	在龙魂升级界面升级3次，7至12阶
	tEighteenChanges_Stc[0][52] = {}
	tEighteenChanges_Stc[0][52]["RewardIndex"] = 43
	tEighteenChanges_Stc[0][52]["NeedNum"] = 3
	tEighteenChanges_Stc[0][52]["Complete"] = 1
	tEighteenChanges_Stc[0][52]["NeedTaskNum"] = 0

	-- 第8阶段	在龙魂升级界面升级6次，7至12阶
	tEighteenChanges_Stc[0][53] = {}
	tEighteenChanges_Stc[0][53]["RewardIndex"] = 44
	tEighteenChanges_Stc[0][53]["NeedNum"] = 6
	tEighteenChanges_Stc[0][53]["Complete"] = 2
	tEighteenChanges_Stc[0][53]["NeedTaskNum"] = 0
	
	-- 第8阶段	在龙魂升级界面升级9次，7至12阶
	tEighteenChanges_Stc[0][54] = {}
	tEighteenChanges_Stc[0][54]["RewardIndex"] = 45
	tEighteenChanges_Stc[0][54]["NeedNum"] = 9
	tEighteenChanges_Stc[0][54]["Complete"] = 4
	tEighteenChanges_Stc[0][54]["NeedTaskNum"] = 0
	
	-- 第8阶段 在龙魂重铸界面升级6次，7至12阶
	tEighteenChanges_Stc[0][55] = {}
	tEighteenChanges_Stc[0][55]["RewardIndex"] = 46
	tEighteenChanges_Stc[0][55]["NeedNum"] = 5
	tEighteenChanges_Stc[0][55]["Complete"] = 8
	tEighteenChanges_Stc[0][55]["NeedTaskNum"] = 0

	-- 第8阶段 在龙魂重铸界面升级12次，7至12阶
	tEighteenChanges_Stc[0][56] = {}
	tEighteenChanges_Stc[0][56]["RewardIndex"] = 47
	tEighteenChanges_Stc[0][56]["NeedNum"] = 10
	tEighteenChanges_Stc[0][56]["Complete"] = 16
	tEighteenChanges_Stc[0][56]["NeedTaskNum"] = 0
	
	-- 第8阶段 在龙魂重铸界面升级18次，7至12阶
	tEighteenChanges_Stc[0][57] = {}
	tEighteenChanges_Stc[0][57]["RewardIndex"] = 48
	tEighteenChanges_Stc[0][57]["NeedNum"] = 15
	tEighteenChanges_Stc[0][57]["Complete"] = 32
	tEighteenChanges_Stc[0][57]["NeedTaskNum"] = 0
	
	
	tEighteenChanges_Stc[0][58] = {}
	tEighteenChanges_Stc[0][58]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][58]["RewardIndex"] = 109
	tEighteenChanges_Stc[0][58]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][58]["Complete"] = {}
	tEighteenChanges_Stc[0][58]["Complete"][1] = {}
	tEighteenChanges_Stc[0][58]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][1]["EventType"] = 59
	tEighteenChanges_Stc[0][58]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][58]["Complete"][2] = {}
	tEighteenChanges_Stc[0][58]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][2]["EventType"] = 60
	tEighteenChanges_Stc[0][58]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][58]["Complete"][3] = {}
	tEighteenChanges_Stc[0][58]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][3]["EventType"] = 61
	tEighteenChanges_Stc[0][58]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][58]["Complete"][4] = {}
	tEighteenChanges_Stc[0][58]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][4]["EventType"] = 62
	tEighteenChanges_Stc[0][58]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][58]["Complete"][5] = {}
	tEighteenChanges_Stc[0][58]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][5]["EventType"] = 63
	tEighteenChanges_Stc[0][58]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][58]["Complete"][6] = {}
	tEighteenChanges_Stc[0][58]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][58]["Complete"][6]["EventType"] = 64
	tEighteenChanges_Stc[0][58]["Complete"][6]["Data"] = 1
	-- 第9阶段	在龙魂升级界面升级3次，7至12阶
	tEighteenChanges_Stc[0][59] = {}
	tEighteenChanges_Stc[0][59]["RewardIndex"] = 49
	tEighteenChanges_Stc[0][59]["NeedNum"] = 3
	tEighteenChanges_Stc[0][59]["Complete"] = 1
	tEighteenChanges_Stc[0][59]["NeedTaskNum"] = 0

	-- 第9阶段	在龙魂升级界面升级6次，7至12阶
	tEighteenChanges_Stc[0][60] = {}
	tEighteenChanges_Stc[0][60]["RewardIndex"] = 50
	tEighteenChanges_Stc[0][60]["NeedNum"] = 6
	tEighteenChanges_Stc[0][60]["Complete"] = 2
	tEighteenChanges_Stc[0][60]["NeedTaskNum"] = 0
	
	-- 第9阶段	在龙魂升级界面升级9次，7至12阶
	tEighteenChanges_Stc[0][61] = {}
	tEighteenChanges_Stc[0][61]["RewardIndex"] = 51
	tEighteenChanges_Stc[0][61]["NeedNum"] = 9
	tEighteenChanges_Stc[0][61]["Complete"] = 4
	tEighteenChanges_Stc[0][61]["NeedTaskNum"] = 0
	
	-- 第9阶段 在龙魂重铸界面升级6次，7至12阶
	tEighteenChanges_Stc[0][62] = {}
	tEighteenChanges_Stc[0][62]["RewardIndex"] = 52
	tEighteenChanges_Stc[0][62]["NeedNum"] = 6
	tEighteenChanges_Stc[0][62]["Complete"] = 8
	tEighteenChanges_Stc[0][62]["NeedTaskNum"] = 0

	-- 第9阶段 在龙魂重铸界面升级12次，7至12阶
	tEighteenChanges_Stc[0][63] = {}
	tEighteenChanges_Stc[0][63]["RewardIndex"] = 53
	tEighteenChanges_Stc[0][63]["NeedNum"] = 12
	tEighteenChanges_Stc[0][63]["Complete"] = 16
	tEighteenChanges_Stc[0][63]["NeedTaskNum"] = 0
	
	-- 第9阶段 在龙魂重铸界面升级18次，7至12阶
	tEighteenChanges_Stc[0][64] = {}
	tEighteenChanges_Stc[0][64]["RewardIndex"] = 54
	tEighteenChanges_Stc[0][64]["NeedNum"] = 18
	tEighteenChanges_Stc[0][64]["Complete"] = 32
	tEighteenChanges_Stc[0][64]["NeedTaskNum"] = 0
	
	
	
	
	
	tEighteenChanges_Stc[0][65] = {}
	tEighteenChanges_Stc[0][65]["GrandPrize"] = 1
	tEighteenChanges_Stc[0][65]["RewardIndex"] = 110
	tEighteenChanges_Stc[0][65]["NeedNum"] = 63
	-- 领取大奖的前置要求
	tEighteenChanges_Stc[0][65]["Complete"] = {}
	tEighteenChanges_Stc[0][65]["Complete"][1] = {}
	tEighteenChanges_Stc[0][65]["Complete"][1]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][1]["EventType"] = 66
	tEighteenChanges_Stc[0][65]["Complete"][1]["Data"] = 1
	tEighteenChanges_Stc[0][65]["Complete"][2] = {}
	tEighteenChanges_Stc[0][65]["Complete"][2]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][2]["EventType"] = 67
	tEighteenChanges_Stc[0][65]["Complete"][2]["Data"] = 1
	tEighteenChanges_Stc[0][65]["Complete"][3] = {}
	tEighteenChanges_Stc[0][65]["Complete"][3]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][3]["EventType"] = 68
	tEighteenChanges_Stc[0][65]["Complete"][3]["Data"] = 1
	tEighteenChanges_Stc[0][65]["Complete"][4] = {}
	tEighteenChanges_Stc[0][65]["Complete"][4]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][4]["EventType"] = 69
	tEighteenChanges_Stc[0][65]["Complete"][4]["Data"] = 1
	tEighteenChanges_Stc[0][65]["Complete"][5] = {}
	tEighteenChanges_Stc[0][65]["Complete"][5]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][5]["EventType"] = 70
	tEighteenChanges_Stc[0][65]["Complete"][5]["Data"] = 1
	tEighteenChanges_Stc[0][65]["Complete"][6] = {}
	tEighteenChanges_Stc[0][65]["Complete"][6]["ActiveType"] = 0
	tEighteenChanges_Stc[0][65]["Complete"][6]["EventType"] = 71
	tEighteenChanges_Stc[0][65]["Complete"][6]["Data"] = 1
	-- 第10阶段	在龙魂升级界面升级5次，8至12阶
	tEighteenChanges_Stc[0][66] = {}
	tEighteenChanges_Stc[0][66]["RewardIndex"] = 55
	tEighteenChanges_Stc[0][66]["NeedNum"] = 5
	tEighteenChanges_Stc[0][66]["Complete"] = 1
	tEighteenChanges_Stc[0][66]["NeedTaskNum"] = 0

	-- 第10阶段	在龙魂升级界面升级10次，8至12阶
	tEighteenChanges_Stc[0][67] = {}
	tEighteenChanges_Stc[0][67]["RewardIndex"] = 56
	tEighteenChanges_Stc[0][67]["NeedNum"] = 10
	tEighteenChanges_Stc[0][67]["Complete"] = 2
	tEighteenChanges_Stc[0][67]["NeedTaskNum"] = 0
	
	-- 第10阶段	在龙魂升级界面升级15次，8至12阶
	tEighteenChanges_Stc[0][68] = {}
	tEighteenChanges_Stc[0][68]["RewardIndex"] = 57
	tEighteenChanges_Stc[0][68]["NeedNum"] = 15
	tEighteenChanges_Stc[0][68]["Complete"] = 4
	tEighteenChanges_Stc[0][68]["NeedTaskNum"] = 0
	
	-- 第10阶段 在龙魂重铸界面升级7次，8至12阶
	tEighteenChanges_Stc[0][69] = {}
	tEighteenChanges_Stc[0][69]["RewardIndex"] = 58
	tEighteenChanges_Stc[0][69]["NeedNum"] = 7
	tEighteenChanges_Stc[0][69]["Complete"] = 8
	tEighteenChanges_Stc[0][69]["NeedTaskNum"] = 0

	-- 第10阶段 在龙魂重铸界面升级14次，8至12阶
	tEighteenChanges_Stc[0][70] = {}
	tEighteenChanges_Stc[0][70]["RewardIndex"] = 59
	tEighteenChanges_Stc[0][70]["NeedNum"] = 14
	tEighteenChanges_Stc[0][70]["Complete"] = 16
	tEighteenChanges_Stc[0][70]["NeedTaskNum"] = 0
	
	-- 第10阶段 在龙魂重铸界面升级21次，8至12阶
	tEighteenChanges_Stc[0][71] = {}
	tEighteenChanges_Stc[0][71]["RewardIndex"] = 60
	tEighteenChanges_Stc[0][71]["NeedNum"] = 21
	tEighteenChanges_Stc[0][71]["Complete"] = 32
	tEighteenChanges_Stc[0][71]["NeedTaskNum"] = 0
	-- tEighteenChanges_Stc[0] = {}
	-- -- 第一阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][2] = {}
	-- tEighteenChanges_Stc[0][2]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][2]["RewardIndex"] = 101
	-- tEighteenChanges_Stc[0][2]["NeedNum"] = 15
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][2]["Complete"] = {}
	-- tEighteenChanges_Stc[0][2]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][2]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][2]["Complete"][1]["EventType"] = 3
	-- tEighteenChanges_Stc[0][2]["Complete"][1]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][2]["Complete"][2] = {}
	-- -- tEighteenChanges_Stc[0][2]["Complete"][2]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][2]["Complete"][2]["EventType"] = 4
	-- -- tEighteenChanges_Stc[0][2]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][2]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][2]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][2]["Complete"][3]["EventType"] = 82
	-- tEighteenChanges_Stc[0][2]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][2]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][2]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][2]["Complete"][4]["EventType"] = 5
	-- tEighteenChanges_Stc[0][2]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][2]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][2]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][2]["Complete"][5]["EventType"] = 6
	-- tEighteenChanges_Stc[0][2]["Complete"][5]["Data"] = 1
	-- -- 第一阶段	在灵珠升级界面升级1次，任意阶
	-- tEighteenChanges_Stc[0][3] = {}
	-- tEighteenChanges_Stc[0][3]["RewardIndex"] = 1
	-- tEighteenChanges_Stc[0][3]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][3]["Complete"] = 1
	-- tEighteenChanges_Stc[0][3]["NeedTaskNum"] = 15
	-- -- 第一阶段	冶炼锻造任意等级灵珠1次
	-- -- tEighteenChanges_Stc[0][4] = {}
	-- -- tEighteenChanges_Stc[0][4]["RewardIndex"] = 2
	-- -- tEighteenChanges_Stc[0][4]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][4]["Complete"] = 2
	
	-- -- 兑换任意阶灵珠1次
	-- tEighteenChanges_Stc[0][82] = {}
	-- tEighteenChanges_Stc[0][82]["RewardIndex"] = 3
	-- tEighteenChanges_Stc[0][82]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][82]["Complete"] = 2
	-- tEighteenChanges_Stc[0][82]["NeedTaskNum"] = 15
	
	-- -- 第一阶段	挑战成功1次，任意阶段，任意玩法都累计次数
	-- tEighteenChanges_Stc[0][5] = {}
	-- tEighteenChanges_Stc[0][5]["RewardIndex"] = 4
	-- tEighteenChanges_Stc[0][5]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][5]["Complete"] = 4
	-- tEighteenChanges_Stc[0][5]["NeedTaskNum"] = 15
	
	-- -- 第一阶段	任意玩法参与2次
	-- tEighteenChanges_Stc[0][6] = {}
	-- tEighteenChanges_Stc[0][6]["RewardIndex"] = 5
	-- tEighteenChanges_Stc[0][6]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][6]["Complete"] = 8
	-- tEighteenChanges_Stc[0][6]["NeedTaskNum"] = 15
	
	-- -- 第二阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][7] = {}
	-- tEighteenChanges_Stc[0][7]["RewardIndex"] = 102
	-- tEighteenChanges_Stc[0][7]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][7]["NeedNum"] = 31
	
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][7]["Complete"] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][7]["Complete"][1]["EventType"] = 8
	-- tEighteenChanges_Stc[0][7]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][7]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][7]["Complete"][2]["EventType"] = 9
	-- tEighteenChanges_Stc[0][7]["Complete"][2]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][7]["Complete"][3] = {}
	-- -- tEighteenChanges_Stc[0][7]["Complete"][3]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][7]["Complete"][3]["EventType"] = 10
	-- -- tEighteenChanges_Stc[0][7]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][7]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][7]["Complete"][4]["EventType"] = 11
	-- tEighteenChanges_Stc[0][7]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][7]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][7]["Complete"][5]["EventType"] = 83
	-- tEighteenChanges_Stc[0][7]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][7]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][7]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][7]["Complete"][6]["EventType"] = 12
	-- tEighteenChanges_Stc[0][7]["Complete"][6]["Data"] = 1
	-- -- 第二阶段	在灵珠升级界面升级1次，任意阶
	-- tEighteenChanges_Stc[0][8] = {}
	-- tEighteenChanges_Stc[0][8]["RewardIndex"] = 6
	-- tEighteenChanges_Stc[0][8]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][8]["Complete"] = 1
	-- tEighteenChanges_Stc[0][8]["NeedTaskNum"] = 30
	
	-- -- 第二阶段	重铸任意等级灵珠1次
	-- tEighteenChanges_Stc[0][9] = {}
	-- tEighteenChanges_Stc[0][9]["RewardIndex"] = 7
	-- tEighteenChanges_Stc[0][9]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][9]["Complete"] = 2
	-- tEighteenChanges_Stc[0][9]["NeedTaskNum"] = 30
	-- -- 第二阶段	冶炼锻造任意等级灵珠1次
	-- -- tEighteenChanges_Stc[0][10] = {}
	-- -- tEighteenChanges_Stc[0][10]["RewardIndex"] = 8
	-- -- tEighteenChanges_Stc[0][10]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][10]["Complete"] = 4
	-- -- 第二阶段	通过任意灵珠玩法升级灵珠1次
	-- tEighteenChanges_Stc[0][11] = {}
	-- tEighteenChanges_Stc[0][11]["RewardIndex"] = 9
	-- tEighteenChanges_Stc[0][11]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][11]["Complete"] = 4
	-- tEighteenChanges_Stc[0][11]["NeedTaskNum"] = 30
	
	-- -- 第二阶段	成功升级到3阶段一次
	-- tEighteenChanges_Stc[0][83] = {}
	-- tEighteenChanges_Stc[0][83]["RewardIndex"] = 10
	-- tEighteenChanges_Stc[0][83]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][83]["Complete"] = 8
	-- tEighteenChanges_Stc[0][83]["NeedTaskNum"] = 30
	-- -- 第二阶段	参与灵珠相关玩法3次
	-- tEighteenChanges_Stc[0][12] = {}
	-- tEighteenChanges_Stc[0][12]["RewardIndex"] = 11
	-- tEighteenChanges_Stc[0][12]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][12]["Complete"] = 16
	-- tEighteenChanges_Stc[0][12]["NeedTaskNum"] = 30
	
	-- -- 第三阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][13] = {}
	-- tEighteenChanges_Stc[0][13]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][13]["RewardIndex"] = 103
	-- tEighteenChanges_Stc[0][13]["NeedNum"] = 127
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][13]["Complete"] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][1]["EventType"] = 14
	-- tEighteenChanges_Stc[0][13]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][2]["EventType"] = 15
	-- tEighteenChanges_Stc[0][13]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][3]["EventType"] = 16
	-- tEighteenChanges_Stc[0][13]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][4]["EventType"] = 17
	-- tEighteenChanges_Stc[0][13]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][5]["EventType"] = 18
	-- tEighteenChanges_Stc[0][13]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][6]["EventType"] = 84
	-- tEighteenChanges_Stc[0][13]["Complete"][6]["Data"] = 1
	-- tEighteenChanges_Stc[0][13]["Complete"][7] = {}
	-- tEighteenChanges_Stc[0][13]["Complete"][7]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][13]["Complete"][7]["EventType"] = 19
	-- tEighteenChanges_Stc[0][13]["Complete"][7]["Data"] = 1
	-- -- 第三阶段	在灵珠升级界面升级1次，3阶以上
	-- tEighteenChanges_Stc[0][14] = {}
	-- tEighteenChanges_Stc[0][14]["RewardIndex"] = 12
	-- tEighteenChanges_Stc[0][14]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][14]["Complete"] = 1
	-- -- 第三阶段	重铸3阶以上灵珠1次
	-- tEighteenChanges_Stc[0][15] = {}
	-- tEighteenChanges_Stc[0][15]["RewardIndex"] = 13
	-- tEighteenChanges_Stc[0][15]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][15]["Complete"] = 2
	-- -- 第三阶段	冶炼锻造3阶以上灵珠1次
	-- tEighteenChanges_Stc[0][16] = {}
	-- tEighteenChanges_Stc[0][16]["RewardIndex"] = 14
	-- tEighteenChanges_Stc[0][16]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][16]["Complete"] = 4
	-- -- 第三阶段	参与融合玩法融合3阶以上灵珠
	-- tEighteenChanges_Stc[0][17] = {}
	-- tEighteenChanges_Stc[0][17]["RewardIndex"] = 15
	-- tEighteenChanges_Stc[0][17]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][17]["Complete"] = 8
	-- -- 第三阶段	通过任意灵珠玩法升级灵珠2次
	-- tEighteenChanges_Stc[0][18] = {}
	-- tEighteenChanges_Stc[0][18]["RewardIndex"] = 16
	-- tEighteenChanges_Stc[0][18]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][18]["Complete"] = 16
	-- -- 第二阶段	合成4阶以上灵珠1次
	-- tEighteenChanges_Stc[0][84] = {}
	-- tEighteenChanges_Stc[0][84]["RewardIndex"] = 17
	-- tEighteenChanges_Stc[0][84]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][84]["Complete"] = 32
	-- -- 第三阶段	参与灵珠相关玩法4次
	-- tEighteenChanges_Stc[0][19] = {}
	-- tEighteenChanges_Stc[0][19]["RewardIndex"] = 18
	-- tEighteenChanges_Stc[0][19]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][19]["Complete"] = 64
	
	-- -- 第四阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][20] = {}
	-- tEighteenChanges_Stc[0][20]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][20]["RewardIndex"] = 104
	-- tEighteenChanges_Stc[0][20]["NeedNum"] = 511
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][20]["Complete"] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][1]["EventType"] = 21
	-- tEighteenChanges_Stc[0][20]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][2]["EventType"] = 22
	-- tEighteenChanges_Stc[0][20]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][3]["EventType"] = 23
	-- tEighteenChanges_Stc[0][20]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][4]["EventType"] = 24
	-- tEighteenChanges_Stc[0][20]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][5]["EventType"] = 25
	-- tEighteenChanges_Stc[0][20]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][6]["EventType"] = 26
	-- tEighteenChanges_Stc[0][20]["Complete"][6]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][7] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][7]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][7]["EventType"] = 85
	-- tEighteenChanges_Stc[0][20]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][8]["EventType"] = 86
	-- tEighteenChanges_Stc[0][20]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][20]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][20]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][20]["Complete"][9]["EventType"] = 27
	-- tEighteenChanges_Stc[0][20]["Complete"][9]["Data"] = 1
	-- -- 第四阶段	在灵珠升级界面升级2次，3阶以上
	-- tEighteenChanges_Stc[0][21] = {}
	-- tEighteenChanges_Stc[0][21]["RewardIndex"] = 19
	-- tEighteenChanges_Stc[0][21]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][21]["Complete"] = 1
	-- -- 第四阶段	重铸3阶以上灵珠1次
	-- tEighteenChanges_Stc[0][22] = {}
	-- tEighteenChanges_Stc[0][22]["RewardIndex"] = 20
	-- tEighteenChanges_Stc[0][22]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][22]["Complete"] = 2
	-- -- 第四阶段	冶炼锻造3阶以上灵珠2次
	-- tEighteenChanges_Stc[0][23] = {}
	-- tEighteenChanges_Stc[0][23]["RewardIndex"] = 21
	-- tEighteenChanges_Stc[0][23]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][23]["Complete"] = 4
	-- -- 第四阶段	参与融合玩法1次，3阶以上
	-- tEighteenChanges_Stc[0][24] = {}
	-- tEighteenChanges_Stc[0][24]["RewardIndex"] = 22
	-- tEighteenChanges_Stc[0][24]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][24]["Complete"] = 8
	-- -- 第四阶段	通过任意灵珠玩法升级灵珠2次
	-- tEighteenChanges_Stc[0][25] = {}
	-- tEighteenChanges_Stc[0][25]["RewardIndex"] = 23
	-- tEighteenChanges_Stc[0][25]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][25]["Complete"] = 16
	-- -- 第四阶段	界面重铸玩法完成一次连续成功2次
	-- tEighteenChanges_Stc[0][26] = {}
	-- tEighteenChanges_Stc[0][26]["RewardIndex"] = 24
	-- tEighteenChanges_Stc[0][26]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][26]["Complete"] = 32
	-- -- 第二阶段	使用4阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][85] = {}
	-- tEighteenChanges_Stc[0][85]["RewardIndex"] = 25
	-- tEighteenChanges_Stc[0][85]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][85]["Complete"] = 64
	-- -- 第二阶段	合成4阶以上灵珠1次
	-- tEighteenChanges_Stc[0][86] = {}
	-- tEighteenChanges_Stc[0][86]["RewardIndex"] = 26
	-- tEighteenChanges_Stc[0][86]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][86]["Complete"] = 128
	
	-- -- 第四阶段	任意玩法参与6次
	-- tEighteenChanges_Stc[0][27] = {}
	-- tEighteenChanges_Stc[0][27]["RewardIndex"] = 27
	-- tEighteenChanges_Stc[0][27]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][27]["Complete"] = 256
	
	-- -- 第五阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][28] = {}
	-- tEighteenChanges_Stc[0][28]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][28]["RewardIndex"] = 105
	-- tEighteenChanges_Stc[0][28]["NeedNum"] = 1023
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][28]["Complete"] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][1]["EventType"] = 29
	-- tEighteenChanges_Stc[0][28]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][2]["EventType"] = 30
	-- tEighteenChanges_Stc[0][28]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][3]["EventType"] = 31
	-- tEighteenChanges_Stc[0][28]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][4]["EventType"] = 32
	-- tEighteenChanges_Stc[0][28]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][5]["EventType"] = 33
	-- tEighteenChanges_Stc[0][28]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][6]["EventType"] = 34
	-- tEighteenChanges_Stc[0][28]["Complete"][6]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][28]["Complete"][7] = {}
	-- -- tEighteenChanges_Stc[0][28]["Complete"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][28]["Complete"][7]["EventType"] = 35
	-- -- tEighteenChanges_Stc[0][28]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][8]["EventType"] = 87
	-- tEighteenChanges_Stc[0][28]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][9]["EventType"] = 88
	-- tEighteenChanges_Stc[0][28]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][10]["EventType"] = 89
	-- tEighteenChanges_Stc[0][28]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][28]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][28]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][28]["Complete"][11]["EventType"] = 36
	-- tEighteenChanges_Stc[0][28]["Complete"][11]["Data"] = 1
	-- -- 第五阶段	在灵珠升级界面升级2次，4阶以上
	-- tEighteenChanges_Stc[0][29] = {}
	-- tEighteenChanges_Stc[0][29]["RewardIndex"] = 28
	-- tEighteenChanges_Stc[0][29]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][29]["Complete"] = 1
	-- -- 第五阶段	重铸4阶以上灵珠2次
	-- tEighteenChanges_Stc[0][30] = {}
	-- tEighteenChanges_Stc[0][30]["RewardIndex"] = 29
	-- tEighteenChanges_Stc[0][30]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][30]["Complete"] = 2
	-- -- 第五阶段	冶炼锻造4阶以上灵珠2次
	-- tEighteenChanges_Stc[0][31] = {}
	-- tEighteenChanges_Stc[0][31]["RewardIndex"] = 30
	-- tEighteenChanges_Stc[0][31]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][31]["Complete"] = 4
	-- -- 第五阶段	参与2次融合玩法融合4阶以上灵珠
	-- tEighteenChanges_Stc[0][32] = {}
	-- tEighteenChanges_Stc[0][32]["RewardIndex"] = 31
	-- tEighteenChanges_Stc[0][32]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][32]["Complete"] = 8
	-- -- 第五阶段	通过任意灵珠玩法升级灵珠4次
	-- tEighteenChanges_Stc[0][33] = {}
	-- tEighteenChanges_Stc[0][33]["RewardIndex"] = 32
	-- tEighteenChanges_Stc[0][33]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][33]["Complete"] = 16
	-- -- 第五阶段	重铸4阶以上灵珠，连续2次成功
	-- tEighteenChanges_Stc[0][34] = {}
	-- tEighteenChanges_Stc[0][34]["RewardIndex"] = 33
	-- tEighteenChanges_Stc[0][34]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][34]["Complete"] = 32
	-- -- 第五阶段	冶炼4阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Stc[0][35] = {}
	-- -- tEighteenChanges_Stc[0][35]["RewardIndex"] = 34
	-- -- tEighteenChanges_Stc[0][35]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][35]["Complete"] = 64
	-- -- 第五阶段	合成5阶以上灵珠1次
	-- tEighteenChanges_Stc[0][87] = {}
	-- tEighteenChanges_Stc[0][87]["RewardIndex"] = 35
	-- tEighteenChanges_Stc[0][87]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][87]["Complete"] = 64
	-- -- 第五阶段	使用4阶以上灵珠大成功1次
	-- tEighteenChanges_Stc[0][88] = {}
	-- tEighteenChanges_Stc[0][88]["RewardIndex"] = 36
	-- tEighteenChanges_Stc[0][88]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][88]["Complete"] = 128
	-- -- 第五阶段	使用5阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][89] = {}
	-- tEighteenChanges_Stc[0][89]["RewardIndex"] = 37
	-- tEighteenChanges_Stc[0][89]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][89]["Complete"] = 256
	-- -- 第五阶段	参与灵珠相关玩法8次
	-- tEighteenChanges_Stc[0][36] = {}
	-- tEighteenChanges_Stc[0][36]["RewardIndex"] = 38
	-- tEighteenChanges_Stc[0][36]["NeedNum"] = 8
	-- tEighteenChanges_Stc[0][36]["Complete"] = 512
	
	-- -- 第六阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][37] = {}
	-- tEighteenChanges_Stc[0][37]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][37]["RewardIndex"] = 106
	-- tEighteenChanges_Stc[0][37]["NeedNum"] = 1023
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][37]["Complete"] = {}
	-- -- tEighteenChanges_Stc[0][37]["Complete"][1] = {}
	-- -- tEighteenChanges_Stc[0][37]["Complete"][1]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][37]["Complete"][1]["EventType"] = 38
	-- -- tEighteenChanges_Stc[0][37]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][1]["EventType"] = 38
	-- tEighteenChanges_Stc[0][37]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][2]["EventType"] = 39
	-- tEighteenChanges_Stc[0][37]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][3]["EventType"] = 40
	-- tEighteenChanges_Stc[0][37]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][4]["EventType"] = 41
	-- tEighteenChanges_Stc[0][37]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][5]["EventType"] = 42
	-- tEighteenChanges_Stc[0][37]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][6]["EventType"] = 43
	-- tEighteenChanges_Stc[0][37]["Complete"][6]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][37]["Complete"][7] = {}
	-- -- tEighteenChanges_Stc[0][37]["Complete"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][37]["Complete"][7]["EventType"] = 44
	-- -- tEighteenChanges_Stc[0][37]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][8]["EventType"] = 45
	-- tEighteenChanges_Stc[0][37]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][9]["EventType"] = 90
	-- tEighteenChanges_Stc[0][37]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][10]["EventType"] = 91
	-- tEighteenChanges_Stc[0][37]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][37]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][37]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][37]["Complete"][11]["EventType"] = 46
	-- tEighteenChanges_Stc[0][37]["Complete"][11]["Data"] = 1
	-- -- 第六阶段	在灵珠升级界面升级3次，5阶以上
	-- tEighteenChanges_Stc[0][38] = {}
	-- tEighteenChanges_Stc[0][38]["RewardIndex"] = 39
	-- tEighteenChanges_Stc[0][38]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][38]["Complete"] = 1
	-- -- 第六阶段	重铸5阶以上灵珠3次
	-- tEighteenChanges_Stc[0][39] = {}
	-- tEighteenChanges_Stc[0][39]["RewardIndex"] = 40
	-- tEighteenChanges_Stc[0][39]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][39]["Complete"] = 2
	-- -- 第六阶段	参与双炉3次，3阶以上
	-- tEighteenChanges_Stc[0][40] = {}
	-- tEighteenChanges_Stc[0][40]["RewardIndex"] = 41
	-- tEighteenChanges_Stc[0][40]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][40]["Complete"] = 4
	-- -- 第六阶段	参与杀怪灵珠3次，3阶以上
	-- tEighteenChanges_Stc[0][41] = {}
	-- tEighteenChanges_Stc[0][41]["RewardIndex"] = 42
	-- tEighteenChanges_Stc[0][41]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][41]["Complete"] = 8
	-- -- 第六阶段	通过任意灵珠玩法升级灵珠4次
	-- tEighteenChanges_Stc[0][42] = {}
	-- tEighteenChanges_Stc[0][42]["RewardIndex"] = 43
	-- tEighteenChanges_Stc[0][42]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][42]["Complete"] = 16
	-- -- 第六阶段	界面重铸玩法完成一次连续成功2次
	-- tEighteenChanges_Stc[0][43] = {}
	-- tEighteenChanges_Stc[0][43]["RewardIndex"] = 44
	-- tEighteenChanges_Stc[0][43]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][43]["Complete"] = 32
	-- -- 第六阶段	双炉玩法连续成功2次
	-- -- tEighteenChanges_Stc[0][44] = {}
	-- -- tEighteenChanges_Stc[0][44]["RewardIndex"] = 45
	-- -- tEighteenChanges_Stc[0][44]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][44]["Complete"] = 64
	-- -- 第六阶段	参与灵珠相关玩法12次
	-- tEighteenChanges_Stc[0][45] = {}
	-- tEighteenChanges_Stc[0][45]["RewardIndex"] = 46
	-- tEighteenChanges_Stc[0][45]["NeedNum"] = 12
	-- tEighteenChanges_Stc[0][45]["Complete"] = 64
	-- -- 第六阶段	使用4阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Stc[0][90] = {}
	-- tEighteenChanges_Stc[0][90]["RewardIndex"] = 47
	-- tEighteenChanges_Stc[0][90]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][90]["Complete"] = 128
	-- -- 第六阶段	使用6阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][91] = {}
	-- tEighteenChanges_Stc[0][91]["RewardIndex"] = 48
	-- tEighteenChanges_Stc[0][91]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][91]["Complete"] = 256
	-- -- 第六阶段	合成6阶以上灵珠1次
	-- tEighteenChanges_Stc[0][46] = {}
	-- tEighteenChanges_Stc[0][46]["RewardIndex"] = 49
	-- tEighteenChanges_Stc[0][46]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][46]["Complete"] = 512
	
	-- -- 第七阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][47] = {}
	-- tEighteenChanges_Stc[0][47]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][47]["RewardIndex"] = 107
	-- tEighteenChanges_Stc[0][47]["NeedNum"] = 2047
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][47]["Complete"] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][1]["EventType"] = 76
	-- tEighteenChanges_Stc[0][47]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][2]["EventType"] = 48
	-- tEighteenChanges_Stc[0][47]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][3]["EventType"] = 49
	-- tEighteenChanges_Stc[0][47]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][4]["EventType"] = 50
	-- tEighteenChanges_Stc[0][47]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][5]["EventType"] = 51
	-- tEighteenChanges_Stc[0][47]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][6]["EventType"] = 77
	-- tEighteenChanges_Stc[0][47]["Complete"][6]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][47]["Complete"][7] = {}
	-- -- tEighteenChanges_Stc[0][47]["Complete"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][47]["Complete"][7]["EventType"] = 53
	-- -- tEighteenChanges_Stc[0][47]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][8]["EventType"] = 52
	-- tEighteenChanges_Stc[0][47]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][9]["EventType"] = 54
	-- tEighteenChanges_Stc[0][47]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][10]["EventType"] = 92
	-- tEighteenChanges_Stc[0][47]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][11]["EventType"] = 93
	-- tEighteenChanges_Stc[0][47]["Complete"][11]["Data"] = 1
	-- tEighteenChanges_Stc[0][47]["Complete"][12] = {}
	-- tEighteenChanges_Stc[0][47]["Complete"][12]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][47]["Complete"][12]["EventType"] = 55
	-- tEighteenChanges_Stc[0][47]["Complete"][12]["Data"] = 1
	-- -- 第七阶段	在灵珠升级界面升级4次，5阶以上
	-- tEighteenChanges_Stc[0][76] = {}
	-- tEighteenChanges_Stc[0][76]["RewardIndex"] = 50
	-- tEighteenChanges_Stc[0][76]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][76]["Complete"] = 1
	-- -- 第七阶段	重铸5阶以上灵珠4次
	-- tEighteenChanges_Stc[0][48] = {}
	-- tEighteenChanges_Stc[0][48]["RewardIndex"] = 51
	-- tEighteenChanges_Stc[0][48]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][48]["Complete"] = 2
	-- -- 第七阶段	冶炼5阶以上灵珠4次
	-- tEighteenChanges_Stc[0][49] = {}
	-- tEighteenChanges_Stc[0][49]["RewardIndex"] = 52
	-- tEighteenChanges_Stc[0][49]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][49]["Complete"] = 4
	-- -- 第七阶段	参与4次融合玩法融合5阶以上灵珠
	-- tEighteenChanges_Stc[0][50] = {}
	-- tEighteenChanges_Stc[0][50]["RewardIndex"] = 53
	-- tEighteenChanges_Stc[0][50]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][50]["Complete"] = 8
	-- -- 第七阶段	通过任意灵珠玩法升级灵珠6次
	-- tEighteenChanges_Stc[0][51] = {}
	-- tEighteenChanges_Stc[0][51]["RewardIndex"] = 54
	-- tEighteenChanges_Stc[0][51]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][51]["Complete"] = 16
	-- -- 第七阶段	界面重铸5阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][77] = {}
	-- tEighteenChanges_Stc[0][77]["RewardIndex"] = 55
	-- tEighteenChanges_Stc[0][77]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][77]["Complete"] = 32
	-- -- 第七阶段	冶炼5阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Stc[0][53] = {}
	-- -- tEighteenChanges_Stc[0][53]["RewardIndex"] = 56
	-- -- tEighteenChanges_Stc[0][53]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][53]["Complete"] = 64
	-- -- 第七阶段	重铸5阶以上灵珠，连续2次成功
	-- tEighteenChanges_Stc[0][52] = {}
	-- tEighteenChanges_Stc[0][52]["RewardIndex"] = 57
	-- tEighteenChanges_Stc[0][52]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][52]["Complete"] = 64
	-- -- 第七阶段	参与灵珠相关玩法16次
	-- tEighteenChanges_Stc[0][54] = {}
	-- tEighteenChanges_Stc[0][54]["RewardIndex"] = 58
	-- tEighteenChanges_Stc[0][54]["NeedNum"] = 16
	-- tEighteenChanges_Stc[0][54]["Complete"] = 128
	-- -- 第7阶段	使用5阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Stc[0][92] = {}
	-- tEighteenChanges_Stc[0][92]["RewardIndex"] = 59
	-- tEighteenChanges_Stc[0][92]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][92]["Complete"] = 256
	-- -- 合成几阶类	使用6阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][93] = {}
	-- tEighteenChanges_Stc[0][93]["RewardIndex"] = 60
	-- tEighteenChanges_Stc[0][93]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][93]["Complete"] = 512
	-- -- 第七阶段	合成6阶以上灵珠2次
	-- tEighteenChanges_Stc[0][55] = {}
	-- tEighteenChanges_Stc[0][55]["RewardIndex"] = 61
	-- tEighteenChanges_Stc[0][55]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][55]["Complete"] = 1024
	
	-- -- 第八阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][56] = {}
	-- tEighteenChanges_Stc[0][56]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][56]["RewardIndex"] = 108
	-- tEighteenChanges_Stc[0][56]["NeedNum"] = 4095
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][56]["Complete"] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][1]["EventType"] = 78
	-- tEighteenChanges_Stc[0][56]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][2]["EventType"] = 57
	-- tEighteenChanges_Stc[0][56]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][3]["EventType"] = 58
	-- tEighteenChanges_Stc[0][56]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][4]["EventType"] = 59
	-- tEighteenChanges_Stc[0][56]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][5]["EventType"] = 60
	-- tEighteenChanges_Stc[0][56]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][6]["EventType"] = 79
	-- tEighteenChanges_Stc[0][56]["Complete"][6]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][56]["Complete"][7] = {}
	-- -- tEighteenChanges_Stc[0][56]["Complete"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][56]["Complete"][7]["EventType"] = 62
	-- -- tEighteenChanges_Stc[0][56]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][8]["EventType"] = 61
	-- tEighteenChanges_Stc[0][56]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][9]["EventType"] = 63
	-- tEighteenChanges_Stc[0][56]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][10]["EventType"] = 64
	-- tEighteenChanges_Stc[0][56]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][11]["EventType"] = 94
	-- tEighteenChanges_Stc[0][56]["Complete"][11]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][12] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][12]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][12]["EventType"] = 95
	-- tEighteenChanges_Stc[0][56]["Complete"][12]["Data"] = 1
	-- tEighteenChanges_Stc[0][56]["Complete"][13] = {}
	-- tEighteenChanges_Stc[0][56]["Complete"][13]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][56]["Complete"][13]["EventType"] = 65
	-- tEighteenChanges_Stc[0][56]["Complete"][13]["Data"] = 1
	-- -- 第八阶段	在灵珠升级界面升级5次，6阶以上
	-- tEighteenChanges_Stc[0][78] = {}
	-- tEighteenChanges_Stc[0][78]["RewardIndex"] = 62
	-- tEighteenChanges_Stc[0][78]["NeedNum"] = 5
	-- tEighteenChanges_Stc[0][78]["Complete"] = 1
	-- -- 第八阶段	重铸6阶以上灵珠5次
	-- tEighteenChanges_Stc[0][57] = {}
	-- tEighteenChanges_Stc[0][57]["RewardIndex"] = 63
	-- tEighteenChanges_Stc[0][57]["NeedNum"] = 5
	-- tEighteenChanges_Stc[0][57]["Complete"] = 2
	-- -- 第八阶段	冶炼6阶以上灵珠5次
	-- tEighteenChanges_Stc[0][58] = {}
	-- tEighteenChanges_Stc[0][58]["RewardIndex"] = 64
	-- tEighteenChanges_Stc[0][58]["NeedNum"] = 5
	-- tEighteenChanges_Stc[0][58]["Complete"] = 4
	-- -- 第八阶段	参与融合玩法融合6阶以上灵珠5次
	-- tEighteenChanges_Stc[0][59] = {}
	-- tEighteenChanges_Stc[0][59]["RewardIndex"] = 65
	-- tEighteenChanges_Stc[0][59]["NeedNum"] = 5
	-- tEighteenChanges_Stc[0][59]["Complete"] = 8
	-- -- 第八阶段	通过任意灵珠玩法升级灵珠8次
	-- tEighteenChanges_Stc[0][60] = {}
	-- tEighteenChanges_Stc[0][60]["RewardIndex"] = 66
	-- tEighteenChanges_Stc[0][60]["NeedNum"] = 8
	-- tEighteenChanges_Stc[0][60]["Complete"] = 16
	-- -- 第八阶段	界面重铸6阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][79] = {}
	-- tEighteenChanges_Stc[0][79]["RewardIndex"] = 67
	-- tEighteenChanges_Stc[0][79]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][79]["Complete"] = 32
	-- -- 第八阶段	冶炼玩法，连续2次成功
	-- -- tEighteenChanges_Stc[0][62] = {}
	-- -- tEighteenChanges_Stc[0][62]["RewardIndex"] = 68
	-- -- tEighteenChanges_Stc[0][62]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][62]["Complete"] = 64
	-- -- 第八阶段	重铸6阶以上灵珠，连续2次成功
	-- tEighteenChanges_Stc[0][61] = {}
	-- tEighteenChanges_Stc[0][61]["RewardIndex"] = 69
	-- tEighteenChanges_Stc[0][61]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][61]["Complete"] = 64
	-- -- 第八阶段	融合6阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][63] = {}
	-- tEighteenChanges_Stc[0][63]["RewardIndex"] = 70
	-- tEighteenChanges_Stc[0][63]["NeedNum"] = 2
	-- tEighteenChanges_Stc[0][63]["Complete"] = 128
	-- -- 第八阶段	参与灵珠相关玩法20次
	-- tEighteenChanges_Stc[0][64] = {}
	-- tEighteenChanges_Stc[0][64]["RewardIndex"] = 71
	-- tEighteenChanges_Stc[0][64]["NeedNum"] = 20
	-- tEighteenChanges_Stc[0][64]["Complete"] = 256
	-- -- 第八阶段	使用6阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Stc[0][94] = {}
	-- tEighteenChanges_Stc[0][94]["RewardIndex"] = 72
	-- tEighteenChanges_Stc[0][94]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][94]["Complete"] = 512
	-- -- 使用7阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][95] = {}
	-- tEighteenChanges_Stc[0][95]["RewardIndex"] = 73
	-- tEighteenChanges_Stc[0][95]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][95]["Complete"] = 1024
	
	-- -- 第八阶段	合成7阶以上灵珠3次
	-- tEighteenChanges_Stc[0][65] = {}
	-- tEighteenChanges_Stc[0][65]["RewardIndex"] = 74
	-- tEighteenChanges_Stc[0][65]["NeedNum"] = 3
	-- tEighteenChanges_Stc[0][65]["Complete"] = 2048
	
-- -- 第九阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][66] = {}
	-- tEighteenChanges_Stc[0][66]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][66]["RewardIndex"] = 109
	-- tEighteenChanges_Stc[0][66]["NeedNum"] = 4095
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][66]["Complete"] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][1]["EventType"] = 80
	-- tEighteenChanges_Stc[0][66]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][2]["EventType"] = 67
	-- tEighteenChanges_Stc[0][66]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][3]["EventType"] = 68
	-- tEighteenChanges_Stc[0][66]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][4]["EventType"] = 69
	-- tEighteenChanges_Stc[0][66]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][5]["EventType"] = 70
	-- tEighteenChanges_Stc[0][66]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][6]["EventType"] = 81
	-- tEighteenChanges_Stc[0][66]["Complete"][6]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][7] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][7]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][7]["EventType"] = 71
	-- tEighteenChanges_Stc[0][66]["Complete"][7]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][66]["Complete"][8] = {}
	-- -- tEighteenChanges_Stc[0][66]["Complete"][8]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][66]["Complete"][8]["EventType"] = 72
	-- -- tEighteenChanges_Stc[0][66]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][9]["EventType"] = 73
	-- tEighteenChanges_Stc[0][66]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][10]["EventType"] = 96
	-- tEighteenChanges_Stc[0][66]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][11]["EventType"] = 97
	-- tEighteenChanges_Stc[0][66]["Complete"][11]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][12] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][12]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][12]["EventType"] = 74
	-- tEighteenChanges_Stc[0][66]["Complete"][12]["Data"] = 1
	-- tEighteenChanges_Stc[0][66]["Complete"][13] = {}
	-- tEighteenChanges_Stc[0][66]["Complete"][13]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][66]["Complete"][13]["EventType"] = 75
	-- tEighteenChanges_Stc[0][66]["Complete"][13]["Data"] = 1
	-- -- 第九阶段	在灵珠升级界面升级6次，7阶以上
	-- tEighteenChanges_Stc[0][80] = {}
	-- tEighteenChanges_Stc[0][80]["RewardIndex"] = 75
	-- tEighteenChanges_Stc[0][80]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][80]["Complete"] = 1
	-- -- 第九阶段	重铸7阶以上灵珠6次
	-- tEighteenChanges_Stc[0][67] = {}
	-- tEighteenChanges_Stc[0][67]["RewardIndex"] = 76
	-- tEighteenChanges_Stc[0][67]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][67]["Complete"] = 2
	-- -- 第九阶段	冶炼7阶以上灵珠6次
	-- tEighteenChanges_Stc[0][68] = {}
	-- tEighteenChanges_Stc[0][68]["RewardIndex"] = 77
	-- tEighteenChanges_Stc[0][68]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][68]["Complete"] = 4
	-- -- 第九阶段	参与融合玩法融合7阶以上灵珠6次
	-- tEighteenChanges_Stc[0][69] = {}
	-- tEighteenChanges_Stc[0][69]["RewardIndex"] = 78
	-- tEighteenChanges_Stc[0][69]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][69]["Complete"] = 8
	-- -- 第九阶段	通过任意灵珠玩法升级灵珠10次
	-- tEighteenChanges_Stc[0][70] = {}
	-- tEighteenChanges_Stc[0][70]["RewardIndex"] = 79
	-- tEighteenChanges_Stc[0][70]["NeedNum"] = 10
	-- tEighteenChanges_Stc[0][70]["Complete"] = 16
	-- -- 第九阶段	界面重铸7阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][81] = {}
	-- tEighteenChanges_Stc[0][81]["RewardIndex"] = 80
	-- tEighteenChanges_Stc[0][81]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][81]["Complete"] = 32
	-- -- 第九阶段	重铸7阶以上灵珠，连续2次成功
	-- tEighteenChanges_Stc[0][71] = {}
	-- tEighteenChanges_Stc[0][71]["RewardIndex"] = 81
	-- tEighteenChanges_Stc[0][71]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][71]["Complete"] = 64
	-- -- 第九阶段	冶炼7阶以上灵珠，连续2次成功
	-- -- tEighteenChanges_Stc[0][72] = {}
	-- -- tEighteenChanges_Stc[0][72]["RewardIndex"] = 82
	-- -- tEighteenChanges_Stc[0][72]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][72]["Complete"] = 128
	-- -- 第九阶段	融合7阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][73] = {}
	-- tEighteenChanges_Stc[0][73]["RewardIndex"] = 83
	-- tEighteenChanges_Stc[0][73]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][73]["Complete"] = 128
	-- -- 使用7阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Stc[0][96] = {}
	-- tEighteenChanges_Stc[0][96]["RewardIndex"] = 84
	-- tEighteenChanges_Stc[0][96]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][96]["Complete"] = 256
	-- -- 使用8阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][97] = {}
	-- tEighteenChanges_Stc[0][97]["RewardIndex"] = 85
	-- tEighteenChanges_Stc[0][97]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][97]["Complete"] = 512
	
	-- -- 第九阶段	参与灵珠相关玩法24次
	-- tEighteenChanges_Stc[0][74] = {}
	-- tEighteenChanges_Stc[0][74]["RewardIndex"] = 86
	-- tEighteenChanges_Stc[0][74]["NeedNum"] = 24
	-- tEighteenChanges_Stc[0][74]["Complete"] = 1024
	-- -- 第九阶段	合成8阶以上灵珠4次
	-- tEighteenChanges_Stc[0][75] = {}
	-- tEighteenChanges_Stc[0][75]["RewardIndex"] = 87
	-- tEighteenChanges_Stc[0][75]["NeedNum"] = 4
	-- tEighteenChanges_Stc[0][75]["Complete"] = 2048
	
-- -- 第十阶段
	-- -- 记录完成任务次数以及领取大奖的掩码
	-- tEighteenChanges_Stc[0][98] = {}
	-- tEighteenChanges_Stc[0][98]["GrandPrize"] = 1
	-- tEighteenChanges_Stc[0][98]["RewardIndex"] = 110
	-- tEighteenChanges_Stc[0][98]["NeedNum"] = 4095
	-- -- 领取大奖的前置要求
	-- tEighteenChanges_Stc[0][98]["Complete"] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][1] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][1]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][1]["EventType"] = 99
	-- tEighteenChanges_Stc[0][98]["Complete"][1]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][2] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][2]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][2]["EventType"] = 100
	-- tEighteenChanges_Stc[0][98]["Complete"][2]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][3] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][3]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][3]["EventType"] = 101
	-- tEighteenChanges_Stc[0][98]["Complete"][3]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][4] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][4]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][4]["EventType"] = 102
	-- tEighteenChanges_Stc[0][98]["Complete"][4]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][5] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][5]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][5]["EventType"] = 103
	-- tEighteenChanges_Stc[0][98]["Complete"][5]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][6] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][6]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][6]["EventType"] = 104
	-- tEighteenChanges_Stc[0][98]["Complete"][6]["Data"] = 1
	-- -- tEighteenChanges_Stc[0][98]["Complete"][7] = {}
	-- -- tEighteenChanges_Stc[0][98]["Complete"][7]["ActiveType"] = 0
	-- -- tEighteenChanges_Stc[0][98]["Complete"][7]["EventType"] = 105
	-- -- tEighteenChanges_Stc[0][98]["Complete"][7]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][8] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][8]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][8]["EventType"] = 106
	-- tEighteenChanges_Stc[0][98]["Complete"][8]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][9] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][9]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][9]["EventType"] = 107
	-- tEighteenChanges_Stc[0][98]["Complete"][9]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][10] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][10]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][10]["EventType"] = 108
	-- tEighteenChanges_Stc[0][98]["Complete"][10]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][11] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][11]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][11]["EventType"] = 109
	-- tEighteenChanges_Stc[0][98]["Complete"][11]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][12] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][12]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][12]["EventType"] = 110
	-- tEighteenChanges_Stc[0][98]["Complete"][12]["Data"] = 1
	-- tEighteenChanges_Stc[0][98]["Complete"][13] = {}
	-- tEighteenChanges_Stc[0][98]["Complete"][13]["ActiveType"] = 0
	-- tEighteenChanges_Stc[0][98]["Complete"][13]["EventType"] = 111
	-- tEighteenChanges_Stc[0][98]["Complete"][13]["Data"] = 1
	-- -- 第十阶段	在灵珠升级界面升级7次，8阶以上
	-- tEighteenChanges_Stc[0][99] = {}
	-- tEighteenChanges_Stc[0][99]["RewardIndex"] = 88
	-- tEighteenChanges_Stc[0][99]["NeedNum"] = 7
	-- tEighteenChanges_Stc[0][99]["Complete"] = 1
	-- -- 第十阶段	重铸8阶以上灵珠7次
	-- tEighteenChanges_Stc[0][100] = {}
	-- tEighteenChanges_Stc[0][100]["RewardIndex"] = 89
	-- tEighteenChanges_Stc[0][100]["NeedNum"] = 7
	-- tEighteenChanges_Stc[0][100]["Complete"] = 2
	-- -- 第十阶段	冶炼8阶以上灵珠7次
	-- tEighteenChanges_Stc[0][101] = {}
	-- tEighteenChanges_Stc[0][101]["RewardIndex"] = 90
	-- tEighteenChanges_Stc[0][101]["NeedNum"] = 7
	-- tEighteenChanges_Stc[0][101]["Complete"] = 4
	-- -- 第十阶段	参与融合玩法融合8阶以上灵珠7次
	-- tEighteenChanges_Stc[0][102] = {}
	-- tEighteenChanges_Stc[0][102]["RewardIndex"] = 91
	-- tEighteenChanges_Stc[0][102]["NeedNum"] = 7
	-- tEighteenChanges_Stc[0][102]["Complete"] = 8
	-- -- 第十阶段	通过任意灵珠玩法升级灵珠15次
	-- tEighteenChanges_Stc[0][103] = {}
	-- tEighteenChanges_Stc[0][103]["RewardIndex"] = 92
	-- tEighteenChanges_Stc[0][103]["NeedNum"] = 15
	-- tEighteenChanges_Stc[0][103]["Complete"] = 16
	-- -- 第十阶段	界面重铸玩法8阶以上灵珠连续成功2次
	-- tEighteenChanges_Stc[0][104] = {}
	-- tEighteenChanges_Stc[0][104]["RewardIndex"] = 93
	-- tEighteenChanges_Stc[0][104]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][104]["Complete"] = 32
	-- -- 第十阶段	冶炼玩法连续成功2次，8阶段以上
	-- -- tEighteenChanges_Stc[0][105] = {}
	-- -- tEighteenChanges_Stc[0][105]["RewardIndex"] = 94
	-- -- tEighteenChanges_Stc[0][105]["NeedNum"] = 1
	-- -- tEighteenChanges_Stc[0][105]["Complete"] = 64
	-- -- 第十阶段	重铸连续成功2次，8阶段以上
	-- tEighteenChanges_Stc[0][106] = {}
	-- tEighteenChanges_Stc[0][106]["RewardIndex"] = 95
	-- tEighteenChanges_Stc[0][106]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][106]["Complete"] = 64
	-- -- 第十阶段	融合7阶以上灵珠，连续成功2次
	-- tEighteenChanges_Stc[0][107] = {}
	-- tEighteenChanges_Stc[0][107]["RewardIndex"] = 96
	-- tEighteenChanges_Stc[0][107]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][107]["Complete"] = 128
	-- -- 第十阶段	使用8阶以上灵珠大成功1次(至少提升2阶)
	-- tEighteenChanges_Stc[0][108] = {}
	-- tEighteenChanges_Stc[0][108]["RewardIndex"] = 97
	-- tEighteenChanges_Stc[0][108]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][108]["Complete"] = 256
	-- -- 第十阶段	使用9阶以上灵珠参与任意灵珠玩法
	-- tEighteenChanges_Stc[0][109] = {}
	-- tEighteenChanges_Stc[0][109]["RewardIndex"] = 98
	-- tEighteenChanges_Stc[0][109]["NeedNum"] = 1
	-- tEighteenChanges_Stc[0][109]["Complete"] = 512
	
	-- -- 第十阶段	参与灵珠相关玩法28次
	-- tEighteenChanges_Stc[0][110] = {}
	-- tEighteenChanges_Stc[0][110]["RewardIndex"] = 99
	-- tEighteenChanges_Stc[0][110]["NeedNum"] = 28
	-- tEighteenChanges_Stc[0][110]["Complete"] = 1024
	-- -- 第十阶段	合成9阶以上灵珠6次
	-- tEighteenChanges_Stc[0][111] = {}
	-- tEighteenChanges_Stc[0][111]["RewardIndex"] = 100
	-- tEighteenChanges_Stc[0][111]["NeedNum"] = 6
	-- tEighteenChanges_Stc[0][111]["Complete"] = 2048
	
	
-- 奖励配置数据
local tEighteenChanges_Reward = {}
	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[1]
	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[1]
	-- ===
	-- ===
	-- ===
	-- ===
	tEighteenChanges_Reward[1] = {}
	tEighteenChanges_Reward[1]["LogId"] = 12001781
	tEighteenChanges_Reward[1]["RewardItem"] = {}
	tEighteenChanges_Reward[1]["RewardItem"][1] = {}
	tEighteenChanges_Reward[1]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[1]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[1]["RewardItem"][2] = {}
	tEighteenChanges_Reward[1]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[1]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[1]["RewardItem"][3] = {}
	tEighteenChanges_Reward[1]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[1]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[1]["RewardEffect"] = {}
	tEighteenChanges_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[2]
	-- ===
	-- ===
	-- ===
	-- ===
	tEighteenChanges_Reward[2] = {}
	tEighteenChanges_Reward[2]["LogId"] = 12001781
	tEighteenChanges_Reward[2]["RewardItem"] = {}
	tEighteenChanges_Reward[2]["RewardItem"][1] = {}
	tEighteenChanges_Reward[2]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[2]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[2]["RewardItem"][2] = {}
	tEighteenChanges_Reward[2]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[2]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[2]["RewardItem"][3] = {}
	tEighteenChanges_Reward[2]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[2]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[2]["RewardEffect"] = {}
	tEighteenChanges_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[3]
	-- ===
	-- ===
	-- ===
	-- ===
	tEighteenChanges_Reward[3] = {}
	tEighteenChanges_Reward[3]["LogId"] = 12001781
	tEighteenChanges_Reward[3]["RewardItem"] = {}
	tEighteenChanges_Reward[3]["RewardItem"][1] = {}
	tEighteenChanges_Reward[3]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[3]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[3]["RewardItem"][2] = {}
	tEighteenChanges_Reward[3]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[3]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[3]["RewardItem"][3] = {}
	tEighteenChanges_Reward[3]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[3]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[3]["RewardEffect"] = {}
	tEighteenChanges_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[4]
	-- ===
	-- ===
	-- ===
	-- ===
	tEighteenChanges_Reward[4] = {}
	tEighteenChanges_Reward[4]["LogId"] = 12001781
	tEighteenChanges_Reward[4]["RewardItem"] = {}
	tEighteenChanges_Reward[4]["RewardItem"][1] = {}
	tEighteenChanges_Reward[4]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[4]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[4]["RewardItem"][2] = {}
	tEighteenChanges_Reward[4]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[4]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[4]["RewardItem"][3] = {}
	tEighteenChanges_Reward[4]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[4]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[4]["RewardEffect"] = {}
	tEighteenChanges_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[5]
	-- ===
	-- ===
	tEighteenChanges_Reward[5] = {}
	tEighteenChanges_Reward[5]["LogId"] = 12001781
	tEighteenChanges_Reward[5]["RewardItem"] = {}
	tEighteenChanges_Reward[5]["RewardItem"][1] = {}
	tEighteenChanges_Reward[5]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[5]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[5]["RewardItem"][2] = {}
	tEighteenChanges_Reward[5]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[5]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[5]["RewardItem"][3] = {}
	tEighteenChanges_Reward[5]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[5]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[5]["RewardEffect"] = {}
	tEighteenChanges_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[6]
	-- ===
	tEighteenChanges_Reward[6] = {}
	tEighteenChanges_Reward[6]["LogId"] = 12001781
	tEighteenChanges_Reward[6]["RewardItem"] = {}
	tEighteenChanges_Reward[6]["RewardItem"][1] = {}
	tEighteenChanges_Reward[6]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[6]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[6]["RewardItem"][2] = {}
	tEighteenChanges_Reward[6]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[6]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[6]["RewardItem"][3] = {}
	tEighteenChanges_Reward[6]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[6]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[6]["RewardEffect"] = {}
	tEighteenChanges_Reward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[7]
	-- ===
	tEighteenChanges_Reward[7] = {}
	tEighteenChanges_Reward[7]["LogId"] = 12001781
	tEighteenChanges_Reward[7]["RewardItem"] = {}
	tEighteenChanges_Reward[7]["RewardItem"][1] = {}
	tEighteenChanges_Reward[7]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[7]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[7]["RewardItem"][2] = {}
	tEighteenChanges_Reward[7]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[7]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[7]["RewardItem"][3] = {}
	tEighteenChanges_Reward[7]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[7]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[7]["RewardEffect"] = {}
	tEighteenChanges_Reward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[8]
	tEighteenChanges_Reward[8] = {}
	tEighteenChanges_Reward[8]["LogId"] = 12001781
	tEighteenChanges_Reward[8]["RewardItem"] = {}
	tEighteenChanges_Reward[8]["RewardItem"][1] = {}
	tEighteenChanges_Reward[8]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[8]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[8]["RewardItem"][2] = {}
	tEighteenChanges_Reward[8]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[8]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[8]["RewardItem"][3] = {}
	tEighteenChanges_Reward[8]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[8]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[8]["RewardEffect"] = {}
	tEighteenChanges_Reward[8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[8]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[9]
	-- ===
	tEighteenChanges_Reward[9] = {}
	tEighteenChanges_Reward[9]["LogId"] = 12001781
	tEighteenChanges_Reward[9]["RewardItem"] = {}
	tEighteenChanges_Reward[9]["RewardItem"][1] = {}
	tEighteenChanges_Reward[9]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[9]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[9]["RewardItem"][2] = {}
	tEighteenChanges_Reward[9]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[9]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[9]["RewardItem"][3] = {}
	tEighteenChanges_Reward[9]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[9]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[9]["RewardEffect"] = {}
	tEighteenChanges_Reward[9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[9]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[10]
	-- ===
	-- ===
	tEighteenChanges_Reward[10] = {}
	tEighteenChanges_Reward[10]["LogId"] = 12001781
	tEighteenChanges_Reward[10]["RewardItem"] = {}
	tEighteenChanges_Reward[10]["RewardItem"][1] = {}
	tEighteenChanges_Reward[10]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[10]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[10]["RewardItem"][2] = {}
	tEighteenChanges_Reward[10]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[10]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[10]["RewardItem"][3] = {}
	tEighteenChanges_Reward[10]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[10]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[10]["RewardEffect"] = {}
	tEighteenChanges_Reward[10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[10]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[11]
	-- ===
	-- ===
	tEighteenChanges_Reward[11] = {}
	tEighteenChanges_Reward[11]["LogId"] = 12001781
	tEighteenChanges_Reward[11]["RewardItem"] = {}
	tEighteenChanges_Reward[11]["RewardItem"][1] = {}
	tEighteenChanges_Reward[11]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[11]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[11]["RewardItem"][2] = {}
	tEighteenChanges_Reward[11]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[11]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[11]["RewardItem"][3] = {}
	tEighteenChanges_Reward[11]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[11]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[11]["RewardEffect"] = {}
	tEighteenChanges_Reward[11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[11]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[12]
	-- ===
	tEighteenChanges_Reward[12] = {}
	tEighteenChanges_Reward[12]["LogId"] = 12001781
	tEighteenChanges_Reward[12]["RewardItem"] = {}
	tEighteenChanges_Reward[12]["RewardItem"][1] = {}
	tEighteenChanges_Reward[12]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[12]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[12]["RewardItem"][2] = {}
	tEighteenChanges_Reward[12]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[12]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[12]["RewardItem"][3] = {}
	tEighteenChanges_Reward[12]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[12]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[12]["RewardEffect"] = {}
	tEighteenChanges_Reward[12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[12]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[13]
	-- ===
	tEighteenChanges_Reward[13] = {}
	tEighteenChanges_Reward[13]["LogId"] = 12001781
	tEighteenChanges_Reward[13]["RewardItem"] = {}
	tEighteenChanges_Reward[13]["RewardItem"][1] = {}
	tEighteenChanges_Reward[13]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[13]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[13]["RewardItem"][2] = {}
	tEighteenChanges_Reward[13]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[13]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[13]["RewardItem"][3] = {}
	tEighteenChanges_Reward[13]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[13]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[13]["RewardEffect"] = {}
	tEighteenChanges_Reward[13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[13]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[14]
	tEighteenChanges_Reward[14] = {}
	tEighteenChanges_Reward[14]["LogId"] = 12001781
	tEighteenChanges_Reward[14]["RewardItem"] = {}
	tEighteenChanges_Reward[14]["RewardItem"][1] = {}
	tEighteenChanges_Reward[14]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[14]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[14]["RewardItem"][2] = {}
	tEighteenChanges_Reward[14]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[14]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[14]["RewardItem"][3] = {}
	tEighteenChanges_Reward[14]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[14]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[14]["RewardEffect"] = {}
	tEighteenChanges_Reward[14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[14]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[15]
	-- ===
	tEighteenChanges_Reward[15] = {}
	tEighteenChanges_Reward[15]["LogId"] = 12001781
	tEighteenChanges_Reward[15]["RewardItem"] = {}
	tEighteenChanges_Reward[15]["RewardItem"][1] = {}
	tEighteenChanges_Reward[15]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[15]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[15]["RewardItem"][2] = {}
	tEighteenChanges_Reward[15]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[15]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[15]["RewardItem"][3] = {}
	tEighteenChanges_Reward[15]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[15]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[15]["RewardEffect"] = {}
	tEighteenChanges_Reward[15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[15]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[16]
	-- ===
	-- ===
	tEighteenChanges_Reward[16] = {}
	tEighteenChanges_Reward[16]["LogId"] = 12001781
	tEighteenChanges_Reward[16]["RewardItem"] = {}
	tEighteenChanges_Reward[16]["RewardItem"][1] = {}
	tEighteenChanges_Reward[16]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[16]["RewardItem"][1]["Attr"] = "0 1" -- DragonGlass*1
	tEighteenChanges_Reward[16]["RewardItem"][2] = {}
	tEighteenChanges_Reward[16]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[16]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[16]["RewardItem"][3] = {}
	tEighteenChanges_Reward[16]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[16]["RewardItem"][3]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tEighteenChanges_Reward[16]["RewardEffect"] = {}
	tEighteenChanges_Reward[16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[16]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[17]
	-- ===
	-- ===
	tEighteenChanges_Reward[17] = {}
	tEighteenChanges_Reward[17]["LogId"] = 12001781
	tEighteenChanges_Reward[17]["RewardItem"] = {}
	tEighteenChanges_Reward[17]["RewardItem"][1] = {}
	tEighteenChanges_Reward[17]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[17]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[17]["RewardItem"][2] = {}
	tEighteenChanges_Reward[17]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[17]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[17]["RewardItem"][3] = {}
	tEighteenChanges_Reward[17]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[17]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[17]["RewardEffect"] = {}
	tEighteenChanges_Reward[17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[17]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[18]
	-- ===
	tEighteenChanges_Reward[18] = {}
	tEighteenChanges_Reward[18]["LogId"] = 12001781
	tEighteenChanges_Reward[18]["RewardItem"] = {}
	tEighteenChanges_Reward[18]["RewardItem"][1] = {}
	tEighteenChanges_Reward[18]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[18]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[18]["RewardItem"][2] = {}
	tEighteenChanges_Reward[18]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[18]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[18]["RewardItem"][3] = {}
	tEighteenChanges_Reward[18]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[18]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[18]["RewardEffect"] = {}
	tEighteenChanges_Reward[18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[18]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[19]
	-- ===
	tEighteenChanges_Reward[19] = {}
	tEighteenChanges_Reward[19]["LogId"] = 12001781
	tEighteenChanges_Reward[19]["RewardItem"] = {}
	tEighteenChanges_Reward[19]["RewardItem"][1] = {}
	tEighteenChanges_Reward[19]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[19]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[19]["RewardItem"][2] = {}
	tEighteenChanges_Reward[19]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[19]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[19]["RewardItem"][3] = {}
	tEighteenChanges_Reward[19]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[19]["RewardItem"][3]["Attr"] = "0 2 3" -- UniversalRuneEssence（赠）*2
	tEighteenChanges_Reward[19]["RewardEffect"] = {}
	tEighteenChanges_Reward[19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[19]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[20]
	-- ===
	tEighteenChanges_Reward[20] = {}
	tEighteenChanges_Reward[20]["LogId"] = 12001781
	tEighteenChanges_Reward[20]["RewardItem"] = {}
	tEighteenChanges_Reward[20]["RewardItem"][1] = {}
	tEighteenChanges_Reward[20]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[20]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[20]["RewardItem"][2] = {}
	tEighteenChanges_Reward[20]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[20]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[20]["RewardItem"][3] = {}
	tEighteenChanges_Reward[20]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[20]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[20]["RewardEffect"] = {}
	tEighteenChanges_Reward[20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[20]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[21]
	-- ===
	tEighteenChanges_Reward[21] = {}
	tEighteenChanges_Reward[21]["LogId"] = 12001781
	tEighteenChanges_Reward[21]["RewardItem"] = {}
	tEighteenChanges_Reward[21]["RewardItem"][1] = {}
	tEighteenChanges_Reward[21]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[21]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[21]["RewardItem"][2] = {}
	tEighteenChanges_Reward[21]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[21]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[21]["RewardItem"][3] = {}
	tEighteenChanges_Reward[21]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[21]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[21]["RewardEffect"] = {}
	tEighteenChanges_Reward[21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[21]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[22]
	-- ===
	tEighteenChanges_Reward[22] = {}
	tEighteenChanges_Reward[22]["LogId"] = 12001781
	tEighteenChanges_Reward[22]["RewardItem"] = {}
	tEighteenChanges_Reward[22]["RewardItem"][1] = {}
	tEighteenChanges_Reward[22]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[22]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[22]["RewardItem"][2] = {}
	tEighteenChanges_Reward[22]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[22]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[22]["RewardItem"][3] = {}
	tEighteenChanges_Reward[22]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[22]["RewardItem"][3]["Attr"] = "0 2 3" -- UniversalRuneEssence（赠）*2
	tEighteenChanges_Reward[22]["RewardEffect"] = {}
	tEighteenChanges_Reward[22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[22]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[23]
	-- ===
	tEighteenChanges_Reward[23] = {}
	tEighteenChanges_Reward[23]["LogId"] = 12001781
	tEighteenChanges_Reward[23]["RewardItem"] = {}
	tEighteenChanges_Reward[23]["RewardItem"][1] = {}
	tEighteenChanges_Reward[23]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[23]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[23]["RewardItem"][2] = {}
	tEighteenChanges_Reward[23]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[23]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[23]["RewardItem"][3] = {}
	tEighteenChanges_Reward[23]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[23]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[23]["RewardEffect"] = {}
	tEighteenChanges_Reward[23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[23]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[24]
	-- ===
	tEighteenChanges_Reward[24] = {}
	tEighteenChanges_Reward[24]["LogId"] = 12001781
	tEighteenChanges_Reward[24]["RewardItem"] = {}
	tEighteenChanges_Reward[24]["RewardItem"][1] = {}
	tEighteenChanges_Reward[24]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[24]["RewardItem"][1]["Attr"] = "0 2" -- DragonGlass*2
	tEighteenChanges_Reward[24]["RewardItem"][2] = {}
	tEighteenChanges_Reward[24]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[24]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[24]["RewardItem"][3] = {}
	tEighteenChanges_Reward[24]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[24]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[24]["RewardEffect"] = {}
	tEighteenChanges_Reward[24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[24]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[25]
	-- ===
	tEighteenChanges_Reward[25] = {}
	tEighteenChanges_Reward[25]["LogId"] = 12001781
	tEighteenChanges_Reward[25]["RewardItem"] = {}
	tEighteenChanges_Reward[25]["RewardItem"][1] = {}
	tEighteenChanges_Reward[25]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[25]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[25]["RewardItem"][2] = {}
	tEighteenChanges_Reward[25]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[25]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[25]["RewardItem"][3] = {}
	tEighteenChanges_Reward[25]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[25]["RewardItem"][3]["Attr"] = "0 2 3" -- UniversalRuneEssence（赠）*2
	tEighteenChanges_Reward[25]["RewardEffect"] = {}
	tEighteenChanges_Reward[25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[25]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[26]
	-- ===
	tEighteenChanges_Reward[26] = {}
	tEighteenChanges_Reward[26]["LogId"] = 12001781
	tEighteenChanges_Reward[26]["RewardItem"] = {}
	tEighteenChanges_Reward[26]["RewardItem"][1] = {}
	tEighteenChanges_Reward[26]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[26]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[26]["RewardItem"][2] = {}
	tEighteenChanges_Reward[26]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[26]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[26]["RewardItem"][3] = {}
	tEighteenChanges_Reward[26]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[26]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[26]["RewardEffect"] = {}
	tEighteenChanges_Reward[26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[26]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[27]
	-- ===
	tEighteenChanges_Reward[27] = {}
	tEighteenChanges_Reward[27]["LogId"] = 12001781
	tEighteenChanges_Reward[27]["RewardItem"] = {}
	tEighteenChanges_Reward[27]["RewardItem"][1] = {}
	tEighteenChanges_Reward[27]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[27]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[27]["RewardItem"][2] = {}
	tEighteenChanges_Reward[27]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[27]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[27]["RewardItem"][3] = {}
	tEighteenChanges_Reward[27]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[27]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[27]["RewardEffect"] = {}
	tEighteenChanges_Reward[27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[27]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[28]
	-- ===
	tEighteenChanges_Reward[28] = {}
	tEighteenChanges_Reward[28]["LogId"] = 12001781
	tEighteenChanges_Reward[28]["RewardItem"] = {}
	tEighteenChanges_Reward[28]["RewardItem"][1] = {}
	tEighteenChanges_Reward[28]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[28]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[28]["RewardItem"][2] = {}
	tEighteenChanges_Reward[28]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[28]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[28]["RewardItem"][3] = {}
	tEighteenChanges_Reward[28]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[28]["RewardItem"][3]["Attr"] = "0 2 3" -- UniversalRuneEssence（赠）*2
	tEighteenChanges_Reward[28]["RewardEffect"] = {}
	tEighteenChanges_Reward[28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[28]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[29]
	-- ===
	tEighteenChanges_Reward[29] = {}
	tEighteenChanges_Reward[29]["LogId"] = 12001781
	tEighteenChanges_Reward[29]["RewardItem"] = {}
	tEighteenChanges_Reward[29]["RewardItem"][1] = {}
	tEighteenChanges_Reward[29]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[29]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[29]["RewardItem"][2] = {}
	tEighteenChanges_Reward[29]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[29]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[29]["RewardItem"][3] = {}
	tEighteenChanges_Reward[29]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[29]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[29]["RewardEffect"] = {}
	tEighteenChanges_Reward[29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[29]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[30]
	-- ===
	tEighteenChanges_Reward[30] = {}
	tEighteenChanges_Reward[30]["LogId"] = 12001781
	tEighteenChanges_Reward[30]["RewardItem"] = {}
	tEighteenChanges_Reward[30]["RewardItem"][1] = {}
	tEighteenChanges_Reward[30]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[30]["RewardItem"][1]["Attr"] = "0 4" -- DragonGlass*4
	tEighteenChanges_Reward[30]["RewardItem"][2] = {}
	tEighteenChanges_Reward[30]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[30]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[30]["RewardItem"][3] = {}
	tEighteenChanges_Reward[30]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[30]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[30]["RewardEffect"] = {}
	tEighteenChanges_Reward[30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[30]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[31]
	-- ===
	tEighteenChanges_Reward[31] = {}
	tEighteenChanges_Reward[31]["LogId"] = 12001781
	tEighteenChanges_Reward[31]["RewardItem"] = {}
	tEighteenChanges_Reward[31]["RewardItem"][1] = {}
	tEighteenChanges_Reward[31]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[31]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[31]["RewardItem"][2] = {}
	tEighteenChanges_Reward[31]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[31]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[31]["RewardItem"][3] = {}
	tEighteenChanges_Reward[31]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[31]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[31]["RewardEffect"] = {}
	tEighteenChanges_Reward[31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[31]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[32]
	-- ===
	tEighteenChanges_Reward[32] = {}
	tEighteenChanges_Reward[32]["LogId"] = 12001781
	tEighteenChanges_Reward[32]["RewardItem"] = {}
	tEighteenChanges_Reward[32]["RewardItem"][1] = {}
	tEighteenChanges_Reward[32]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[32]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[32]["RewardItem"][2] = {}
	tEighteenChanges_Reward[32]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[32]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[32]["RewardItem"][3] = {}
	tEighteenChanges_Reward[32]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[32]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[32]["RewardEffect"] = {}
	tEighteenChanges_Reward[32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[32]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[33]
	-- ===
	tEighteenChanges_Reward[33] = {}
	tEighteenChanges_Reward[33]["LogId"] = 12001781
	tEighteenChanges_Reward[33]["RewardItem"] = {}
	tEighteenChanges_Reward[33]["RewardItem"][1] = {}
	tEighteenChanges_Reward[33]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[33]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[33]["RewardItem"][2] = {}
	tEighteenChanges_Reward[33]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[33]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[33]["RewardItem"][3] = {}
	tEighteenChanges_Reward[33]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[33]["RewardItem"][3]["Attr"] = "0 9 3" -- UniversalRuneEssence（赠）*9
	tEighteenChanges_Reward[33]["RewardEffect"] = {}
	tEighteenChanges_Reward[33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[33]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[34]
	-- ===
	tEighteenChanges_Reward[34] = {}
	tEighteenChanges_Reward[34]["LogId"] = 12001781
	tEighteenChanges_Reward[34]["RewardItem"] = {}
	tEighteenChanges_Reward[34]["RewardItem"][1] = {}
	tEighteenChanges_Reward[34]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[34]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[34]["RewardItem"][2] = {}
	tEighteenChanges_Reward[34]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[34]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[34]["RewardItem"][3] = {}
	tEighteenChanges_Reward[34]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[34]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tEighteenChanges_Reward[34]["RewardEffect"] = {}
	tEighteenChanges_Reward[34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[34]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[35]
	-- ===
	tEighteenChanges_Reward[35] = {}
	tEighteenChanges_Reward[35]["LogId"] = 12001781
	tEighteenChanges_Reward[35]["RewardItem"] = {}
	tEighteenChanges_Reward[35]["RewardItem"][1] = {}
	tEighteenChanges_Reward[35]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[35]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[35]["RewardItem"][2] = {}
	tEighteenChanges_Reward[35]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[35]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[35]["RewardItem"][3] = {}
	tEighteenChanges_Reward[35]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[35]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[35]["RewardEffect"] = {}
	tEighteenChanges_Reward[35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[35]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[36]
	-- ===
	tEighteenChanges_Reward[36] = {}
	tEighteenChanges_Reward[36]["LogId"] = 12001781
	tEighteenChanges_Reward[36]["RewardItem"] = {}
	tEighteenChanges_Reward[36]["RewardItem"][1] = {}
	tEighteenChanges_Reward[36]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[36]["RewardItem"][1]["Attr"] = "0 15" -- DragonGlass*15
	tEighteenChanges_Reward[36]["RewardItem"][2] = {}
	tEighteenChanges_Reward[36]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[36]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[36]["RewardItem"][3] = {}
	tEighteenChanges_Reward[36]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[36]["RewardItem"][3]["Attr"] = "0 9 3" -- UniversalRuneEssence（赠）*9
	tEighteenChanges_Reward[36]["RewardEffect"] = {}
	tEighteenChanges_Reward[36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[36]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[37]
	-- ===
	tEighteenChanges_Reward[37] = {}
	tEighteenChanges_Reward[37]["LogId"] = 12001781
	tEighteenChanges_Reward[37]["RewardItem"] = {}
	tEighteenChanges_Reward[37]["RewardItem"][1] = {}
	tEighteenChanges_Reward[37]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[37]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[37]["RewardItem"][2] = {}
	tEighteenChanges_Reward[37]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[37]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[37]["RewardItem"][3] = {}
	tEighteenChanges_Reward[37]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[37]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[37]["RewardEffect"] = {}
	tEighteenChanges_Reward[37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[37]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[38]
	-- ===
	tEighteenChanges_Reward[38] = {}
	tEighteenChanges_Reward[38]["LogId"] = 12001781
	tEighteenChanges_Reward[38]["RewardItem"] = {}
	tEighteenChanges_Reward[38]["RewardItem"][1] = {}
	tEighteenChanges_Reward[38]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[38]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[38]["RewardItem"][2] = {}
	tEighteenChanges_Reward[38]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[38]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[38]["RewardItem"][3] = {}
	tEighteenChanges_Reward[38]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[38]["RewardItem"][3]["Attr"] = "0 8 3" -- UniversalRuneEssence（赠）*8
	tEighteenChanges_Reward[38]["RewardEffect"] = {}
	tEighteenChanges_Reward[38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[38]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[39]
	-- ===
	tEighteenChanges_Reward[39] = {}
	tEighteenChanges_Reward[39]["LogId"] = 12001781
	tEighteenChanges_Reward[39]["RewardItem"] = {}
	tEighteenChanges_Reward[39]["RewardItem"][1] = {}
	tEighteenChanges_Reward[39]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[39]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[39]["RewardItem"][2] = {}
	tEighteenChanges_Reward[39]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[39]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[39]["RewardItem"][3] = {}
	tEighteenChanges_Reward[39]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[39]["RewardItem"][3]["Attr"] = "0 12 3" -- UniversalRuneEssence（赠）*12
	tEighteenChanges_Reward[39]["RewardEffect"] = {}
	tEighteenChanges_Reward[39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[39]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[40]
	-- ===
	tEighteenChanges_Reward[40] = {}
	tEighteenChanges_Reward[40]["LogId"] = 12001781
	tEighteenChanges_Reward[40]["RewardItem"] = {}
	tEighteenChanges_Reward[40]["RewardItem"][1] = {}
	tEighteenChanges_Reward[40]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[40]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[40]["RewardItem"][2] = {}
	tEighteenChanges_Reward[40]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[40]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[40]["RewardItem"][3] = {}
	tEighteenChanges_Reward[40]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[40]["RewardItem"][3]["Attr"] = "0 4 3" -- UniversalRuneEssence（赠）*4
	tEighteenChanges_Reward[40]["RewardEffect"] = {}
	tEighteenChanges_Reward[40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[40]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[41]
	-- ===
	tEighteenChanges_Reward[41] = {}
	tEighteenChanges_Reward[41]["LogId"] = 12001781
	tEighteenChanges_Reward[41]["RewardItem"] = {}
	tEighteenChanges_Reward[41]["RewardItem"][1] = {}
	tEighteenChanges_Reward[41]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[41]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[41]["RewardItem"][2] = {}
	tEighteenChanges_Reward[41]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[41]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[41]["RewardItem"][3] = {}
	tEighteenChanges_Reward[41]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[41]["RewardItem"][3]["Attr"] = "0 8 3" -- UniversalRuneEssence（赠）*8
	tEighteenChanges_Reward[41]["RewardEffect"] = {}
	tEighteenChanges_Reward[41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[41]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[42]
	-- ===
	tEighteenChanges_Reward[42] = {}
	tEighteenChanges_Reward[42]["LogId"] = 12001781
	tEighteenChanges_Reward[42]["RewardItem"] = {}
	tEighteenChanges_Reward[42]["RewardItem"][1] = {}
	tEighteenChanges_Reward[42]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[42]["RewardItem"][1]["Attr"] = "0 20" -- DragonGlass*20
	tEighteenChanges_Reward[42]["RewardItem"][2] = {}
	tEighteenChanges_Reward[42]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[42]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[42]["RewardItem"][3] = {}
	tEighteenChanges_Reward[42]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[42]["RewardItem"][3]["Attr"] = "0 12 3" -- UniversalRuneEssence（赠）*12
	tEighteenChanges_Reward[42]["RewardEffect"] = {}
	tEighteenChanges_Reward[42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[42]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[43]
	-- ===
	tEighteenChanges_Reward[43] = {}
	tEighteenChanges_Reward[43]["LogId"] = 12001781
	tEighteenChanges_Reward[43]["RewardItem"] = {}
	tEighteenChanges_Reward[43]["RewardItem"][1] = {}
	tEighteenChanges_Reward[43]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[43]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[43]["RewardItem"][2] = {}
	tEighteenChanges_Reward[43]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[43]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[43]["RewardItem"][3] = {}
	tEighteenChanges_Reward[43]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[43]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[43]["RewardEffect"] = {}
	tEighteenChanges_Reward[43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[43]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[44]
	-- ===
	tEighteenChanges_Reward[44] = {}
	tEighteenChanges_Reward[44]["LogId"] = 12001781
	tEighteenChanges_Reward[44]["RewardItem"] = {}
	tEighteenChanges_Reward[44]["RewardItem"][1] = {}
	tEighteenChanges_Reward[44]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[44]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[44]["RewardItem"][2] = {}
	tEighteenChanges_Reward[44]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[44]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[44]["RewardItem"][3] = {}
	tEighteenChanges_Reward[44]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[44]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tEighteenChanges_Reward[44]["RewardEffect"] = {}
	tEighteenChanges_Reward[44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[44]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[45]
	-- ===
	tEighteenChanges_Reward[45] = {}
	tEighteenChanges_Reward[45]["LogId"] = 12001781
	tEighteenChanges_Reward[45]["RewardItem"] = {}
	tEighteenChanges_Reward[45]["RewardItem"][1] = {}
	tEighteenChanges_Reward[45]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[45]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[45]["RewardItem"][2] = {}
	tEighteenChanges_Reward[45]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[45]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[45]["RewardItem"][3] = {}
	tEighteenChanges_Reward[45]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[45]["RewardItem"][3]["Attr"] = "0 15 3" -- UniversalRuneEssence（赠）*15
	tEighteenChanges_Reward[45]["RewardEffect"] = {}
	tEighteenChanges_Reward[45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[45]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[46]
	-- ===
	tEighteenChanges_Reward[46] = {}
	tEighteenChanges_Reward[46]["LogId"] = 12001781
	tEighteenChanges_Reward[46]["RewardItem"] = {}
	tEighteenChanges_Reward[46]["RewardItem"][1] = {}
	tEighteenChanges_Reward[46]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[46]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[46]["RewardItem"][2] = {}
	tEighteenChanges_Reward[46]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[46]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[46]["RewardItem"][3] = {}
	tEighteenChanges_Reward[46]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[46]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tEighteenChanges_Reward[46]["RewardEffect"] = {}
	tEighteenChanges_Reward[46]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[46]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[47]
	-- ===
	tEighteenChanges_Reward[47] = {}
	tEighteenChanges_Reward[47]["LogId"] = 12001781
	tEighteenChanges_Reward[47]["RewardItem"] = {}
	tEighteenChanges_Reward[47]["RewardItem"][1] = {}
	tEighteenChanges_Reward[47]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[47]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[47]["RewardItem"][2] = {}
	tEighteenChanges_Reward[47]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[47]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[47]["RewardItem"][3] = {}
	tEighteenChanges_Reward[47]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[47]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tEighteenChanges_Reward[47]["RewardEffect"] = {}
	tEighteenChanges_Reward[47]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[47]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[48]
	-- ===
	tEighteenChanges_Reward[48] = {}
	tEighteenChanges_Reward[48]["LogId"] = 12001781
	tEighteenChanges_Reward[48]["RewardItem"] = {}
	tEighteenChanges_Reward[48]["RewardItem"][1] = {}
	tEighteenChanges_Reward[48]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[48]["RewardItem"][1]["Attr"] = "0 40" -- DragonGlass*40
	tEighteenChanges_Reward[48]["RewardItem"][2] = {}
	tEighteenChanges_Reward[48]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[48]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[48]["RewardItem"][3] = {}
	tEighteenChanges_Reward[48]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[48]["RewardItem"][3]["Attr"] = "0 15 3" -- UniversalRuneEssence（赠）*15
	tEighteenChanges_Reward[48]["RewardEffect"] = {}
	tEighteenChanges_Reward[48]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[48]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[49]
	-- ===
	tEighteenChanges_Reward[49] = {}
	tEighteenChanges_Reward[49]["LogId"] = 12001781
	tEighteenChanges_Reward[49]["RewardItem"] = {}
	tEighteenChanges_Reward[49]["RewardItem"][1] = {}
	tEighteenChanges_Reward[49]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[49]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[49]["RewardItem"][2] = {}
	tEighteenChanges_Reward[49]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[49]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[49]["RewardItem"][3] = {}
	tEighteenChanges_Reward[49]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[49]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[49]["RewardEffect"] = {}
	tEighteenChanges_Reward[49]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[49]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[50]
	-- ===
	tEighteenChanges_Reward[50] = {}
	tEighteenChanges_Reward[50]["LogId"] = 12001781
	tEighteenChanges_Reward[50]["RewardItem"] = {}
	tEighteenChanges_Reward[50]["RewardItem"][1] = {}
	tEighteenChanges_Reward[50]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[50]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[50]["RewardItem"][2] = {}
	tEighteenChanges_Reward[50]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[50]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[50]["RewardItem"][3] = {}
	tEighteenChanges_Reward[50]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[50]["RewardItem"][3]["Attr"] = "0 12 3" -- UniversalRuneEssence（赠）*12
	tEighteenChanges_Reward[50]["RewardEffect"] = {}
	tEighteenChanges_Reward[50]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[50]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[51]
	-- ===
	tEighteenChanges_Reward[51] = {}
	tEighteenChanges_Reward[51]["LogId"] = 12001781
	tEighteenChanges_Reward[51]["RewardItem"] = {}
	tEighteenChanges_Reward[51]["RewardItem"][1] = {}
	tEighteenChanges_Reward[51]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[51]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[51]["RewardItem"][2] = {}
	tEighteenChanges_Reward[51]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[51]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[51]["RewardItem"][3] = {}
	tEighteenChanges_Reward[51]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[51]["RewardItem"][3]["Attr"] = "0 18 3" -- UniversalRuneEssence（赠）*18
	tEighteenChanges_Reward[51]["RewardEffect"] = {}
	tEighteenChanges_Reward[51]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[51]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[52]
	-- ===
	tEighteenChanges_Reward[52] = {}
	tEighteenChanges_Reward[52]["LogId"] = 12001781
	tEighteenChanges_Reward[52]["RewardItem"] = {}
	tEighteenChanges_Reward[52]["RewardItem"][1] = {}
	tEighteenChanges_Reward[52]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[52]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[52]["RewardItem"][2] = {}
	tEighteenChanges_Reward[52]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[52]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[52]["RewardItem"][3] = {}
	tEighteenChanges_Reward[52]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[52]["RewardItem"][3]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tEighteenChanges_Reward[52]["RewardEffect"] = {}
	tEighteenChanges_Reward[52]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[52]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[53]
	-- ===
	tEighteenChanges_Reward[53] = {}
	tEighteenChanges_Reward[53]["LogId"] = 12001781
	tEighteenChanges_Reward[53]["RewardItem"] = {}
	tEighteenChanges_Reward[53]["RewardItem"][1] = {}
	tEighteenChanges_Reward[53]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[53]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[53]["RewardItem"][2] = {}
	tEighteenChanges_Reward[53]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[53]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[53]["RewardItem"][3] = {}
	tEighteenChanges_Reward[53]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[53]["RewardItem"][3]["Attr"] = "0 12 3" -- UniversalRuneEssence（赠）*12
	tEighteenChanges_Reward[53]["RewardEffect"] = {}
	tEighteenChanges_Reward[53]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[53]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[54]
	-- ===
	tEighteenChanges_Reward[54] = {}
	tEighteenChanges_Reward[54]["LogId"] = 12001781
	tEighteenChanges_Reward[54]["RewardItem"] = {}
	tEighteenChanges_Reward[54]["RewardItem"][1] = {}
	tEighteenChanges_Reward[54]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[54]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[54]["RewardItem"][2] = {}
	tEighteenChanges_Reward[54]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[54]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[54]["RewardItem"][3] = {}
	tEighteenChanges_Reward[54]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[54]["RewardItem"][3]["Attr"] = "0 18 3" -- UniversalRuneEssence（赠）*18
	tEighteenChanges_Reward[54]["RewardEffect"] = {}
	tEighteenChanges_Reward[54]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[54]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[55]
	-- ===
	tEighteenChanges_Reward[55] = {}
	tEighteenChanges_Reward[55]["LogId"] = 12001781
	tEighteenChanges_Reward[55]["RewardItem"] = {}
	tEighteenChanges_Reward[55]["RewardItem"][1] = {}
	tEighteenChanges_Reward[55]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[55]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[55]["RewardItem"][2] = {}
	tEighteenChanges_Reward[55]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[55]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[55]["RewardItem"][3] = {}
	tEighteenChanges_Reward[55]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[55]["RewardItem"][3]["Attr"] = "0 7 3" -- UniversalRuneEssence（赠）*7
	tEighteenChanges_Reward[55]["RewardEffect"] = {}
	tEighteenChanges_Reward[55]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[55]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[56]
	-- ===
	tEighteenChanges_Reward[56] = {}
	tEighteenChanges_Reward[56]["LogId"] = 12001781
	tEighteenChanges_Reward[56]["RewardItem"] = {}
	tEighteenChanges_Reward[56]["RewardItem"][1] = {}
	tEighteenChanges_Reward[56]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[56]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[56]["RewardItem"][2] = {}
	tEighteenChanges_Reward[56]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[56]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[56]["RewardItem"][3] = {}
	tEighteenChanges_Reward[56]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[56]["RewardItem"][3]["Attr"] = "0 14 3" -- UniversalRuneEssence（赠）*14
	tEighteenChanges_Reward[56]["RewardEffect"] = {}
	tEighteenChanges_Reward[56]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[56]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[57]
	-- ===
	tEighteenChanges_Reward[57] = {}
	tEighteenChanges_Reward[57]["LogId"] = 12001781
	tEighteenChanges_Reward[57]["RewardItem"] = {}
	tEighteenChanges_Reward[57]["RewardItem"][1] = {}
	tEighteenChanges_Reward[57]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[57]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[57]["RewardItem"][2] = {}
	tEighteenChanges_Reward[57]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[57]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[57]["RewardItem"][3] = {}
	tEighteenChanges_Reward[57]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[57]["RewardItem"][3]["Attr"] = "0 21 3" -- UniversalRuneEssence（赠）*21
	tEighteenChanges_Reward[57]["RewardEffect"] = {}
	tEighteenChanges_Reward[57]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[57]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[58]
	-- ===
	tEighteenChanges_Reward[58] = {}
	tEighteenChanges_Reward[58]["LogId"] = 12001781
	tEighteenChanges_Reward[58]["RewardItem"] = {}
	tEighteenChanges_Reward[58]["RewardItem"][1] = {}
	tEighteenChanges_Reward[58]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[58]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[58]["RewardItem"][2] = {}
	tEighteenChanges_Reward[58]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[58]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[58]["RewardItem"][3] = {}
	tEighteenChanges_Reward[58]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[58]["RewardItem"][3]["Attr"] = "0 7 3" -- UniversalRuneEssence（赠）*7
	tEighteenChanges_Reward[58]["RewardEffect"] = {}
	tEighteenChanges_Reward[58]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[58]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[59]
	-- ===
	tEighteenChanges_Reward[59] = {}
	tEighteenChanges_Reward[59]["LogId"] = 12001781
	tEighteenChanges_Reward[59]["RewardItem"] = {}
	tEighteenChanges_Reward[59]["RewardItem"][1] = {}
	tEighteenChanges_Reward[59]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[59]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[59]["RewardItem"][2] = {}
	tEighteenChanges_Reward[59]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[59]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[59]["RewardItem"][3] = {}
	tEighteenChanges_Reward[59]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[59]["RewardItem"][3]["Attr"] = "0 14 3" -- UniversalRuneEssence（赠）*14
	tEighteenChanges_Reward[59]["RewardEffect"] = {}
	tEighteenChanges_Reward[59]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[59]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[60]
	-- ===
	tEighteenChanges_Reward[60] = {}
	tEighteenChanges_Reward[60]["LogId"] = 12001781
	tEighteenChanges_Reward[60]["RewardItem"] = {}
	tEighteenChanges_Reward[60]["RewardItem"][1] = {}
	tEighteenChanges_Reward[60]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[60]["RewardItem"][1]["Attr"] = "0 200" -- DragonGlass*200
	tEighteenChanges_Reward[60]["RewardItem"][2] = {}
	tEighteenChanges_Reward[60]["RewardItem"][2]["Id"] = 3304324 -- 100ChiFortuneBag[3304324][属性:9][叠加:10000][金币:0], 【表格】100气
	tEighteenChanges_Reward[60]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiFortuneBag*1
	tEighteenChanges_Reward[60]["RewardItem"][3] = {}
	tEighteenChanges_Reward[60]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tEighteenChanges_Reward[60]["RewardItem"][3]["Attr"] = "0 21 3" -- UniversalRuneEssence（赠）*21
	tEighteenChanges_Reward[60]["RewardEffect"] = {}
	tEighteenChanges_Reward[60]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[60]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1阶段
	-- ===索引:tEighteenChanges_Reward[101]
	-- ===
	tEighteenChanges_Reward[101] = {}
	tEighteenChanges_Reward[101]["LogId"] = 12001781
	tEighteenChanges_Reward[101]["RewardItem"] = {}
	tEighteenChanges_Reward[101]["RewardItem"][1] = {}
	tEighteenChanges_Reward[101]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[101]["RewardItem"][1]["Attr"] = "0 10" -- DragonGlass*10
	tEighteenChanges_Reward[101]["RewardItem"][2] = {}
	tEighteenChanges_Reward[101]["RewardItem"][2]["Id"] = 3314324 -- 1-dayHotTurkey[3314324][属性:9][叠加:1000][金币:0], 【表格】100气
	tEighteenChanges_Reward[101]["RewardItem"][2]["Attr"] = "0 2" -- 1-dayHotTurkey*2
	tEighteenChanges_Reward[101]["RewardItem"][3] = {}
	tEighteenChanges_Reward[101]["RewardItem"][3]["Id"] = 3310989 -- TwilightStarBag[3312062][属性:9][叠加:0][金币:0], 【表格】TwilightStarBag
	tEighteenChanges_Reward[101]["RewardItem"][3]["Attr"] = "0 2 3" -- TwilightStarBag（赠）*2
	tEighteenChanges_Reward[101]["RewardEffect"] = {}
	tEighteenChanges_Reward[101]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[101]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2阶段
	-- ===索引:tEighteenChanges_Reward[102]
	-- ===
	tEighteenChanges_Reward[102] = {}
	tEighteenChanges_Reward[102]["LogId"] = 12001781
	tEighteenChanges_Reward[102]["RewardItem"] = {}
	tEighteenChanges_Reward[102]["RewardItem"][1] = {}
	tEighteenChanges_Reward[102]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[102]["RewardItem"][1]["Attr"] = "0 10" -- DragonGlass*10
	tEighteenChanges_Reward[102]["RewardItem"][2] = {}
	tEighteenChanges_Reward[102]["RewardItem"][2]["Id"] = 3314324 -- 1-dayHotTurkey[3314324][属性:9][叠加:1000][金币:0], 【表格】100气
	tEighteenChanges_Reward[102]["RewardItem"][2]["Attr"] = "0 2" -- 1-dayHotTurkey*2
	tEighteenChanges_Reward[102]["RewardItem"][3] = {}
	tEighteenChanges_Reward[102]["RewardItem"][3]["Id"] = 3300322 -- TwilightStarPack(3)[3300322][属性:9][叠加:100][金币:0], 【表格】TwilightStarPack（3）
	tEighteenChanges_Reward[102]["RewardItem"][3]["Attr"] = "0 2 3" -- TwilightStarPack(3)（赠）*2
	tEighteenChanges_Reward[102]["RewardEffect"] = {}
	tEighteenChanges_Reward[102]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[102]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3阶段
	-- ===索引:tEighteenChanges_Reward[103]
	-- ===
	tEighteenChanges_Reward[103] = {}
	tEighteenChanges_Reward[103]["LogId"] = 12001781
	tEighteenChanges_Reward[103]["RewardItem"] = {}
	tEighteenChanges_Reward[103]["RewardItem"][1] = {}
	tEighteenChanges_Reward[103]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[103]["RewardItem"][1]["Attr"] = "0 10" -- DragonGlass*10
	tEighteenChanges_Reward[103]["RewardItem"][2] = {}
	tEighteenChanges_Reward[103]["RewardItem"][2]["Id"] = 3306393 -- 3-dayClassicAccessoryPack[3306393][属性:11][叠加:1][金币:0], 【表格】3-dayClassicAccessoryPack
	tEighteenChanges_Reward[103]["RewardItem"][2]["Attr"] = "0 2" -- 3-dayClassicAccessoryPack*2
	tEighteenChanges_Reward[103]["RewardItem"][3] = {}
	tEighteenChanges_Reward[103]["RewardItem"][3]["Id"] = 3308993 -- TwilightStarPack(5)[3308993][属性:9][叠加:1][金币:0], 【表格】TwilightStarPack（5）
	tEighteenChanges_Reward[103]["RewardItem"][3]["Attr"] = "0 2 3" -- TwilightStarPack(5)（赠）*2
	tEighteenChanges_Reward[103]["RewardEffect"] = {}
	tEighteenChanges_Reward[103]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[103]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4阶段
	-- ===索引:tEighteenChanges_Reward[104]
	-- ===
	tEighteenChanges_Reward[104] = {}
	tEighteenChanges_Reward[104]["LogId"] = 12001781
	tEighteenChanges_Reward[104]["RewardItem"] = {}
	tEighteenChanges_Reward[104]["RewardItem"][1] = {}
	tEighteenChanges_Reward[104]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[104]["RewardItem"][1]["Attr"] = "0 14" -- DragonGlass*14
	tEighteenChanges_Reward[104]["RewardItem"][2] = {}
	tEighteenChanges_Reward[104]["RewardItem"][2]["Id"] = 3306393 -- 3-dayClassicAccessoryPack[3306393][属性:11][叠加:1][金币:0], 【表格】3-dayClassicAccessoryPack
	tEighteenChanges_Reward[104]["RewardItem"][2]["Attr"] = "0 2" -- 3-dayClassicAccessoryPack*2
	tEighteenChanges_Reward[104]["RewardItem"][3] = {}
	tEighteenChanges_Reward[104]["RewardItem"][3]["Id"] = 3309127 -- LegendTwilightStarPack[3200734][属性:0][叠加:1][金币:0], 【表格】LegendTwilightStarPack
	tEighteenChanges_Reward[104]["RewardItem"][3]["Attr"] = "0 2 3" -- LegendTwilightStarPack（赠）*2
	tEighteenChanges_Reward[104]["RewardEffect"] = {}
	tEighteenChanges_Reward[104]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[104]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5阶段
	-- ===索引:tEighteenChanges_Reward[105]
	-- ===
	tEighteenChanges_Reward[105] = {}
	tEighteenChanges_Reward[105]["LogId"] = 12001781
	tEighteenChanges_Reward[105]["RewardItem"] = {}
	tEighteenChanges_Reward[105]["RewardItem"][1] = {}
	tEighteenChanges_Reward[105]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[105]["RewardItem"][1]["Attr"] = "0 30" -- DragonGlass*30
	tEighteenChanges_Reward[105]["RewardItem"][2] = {}
	tEighteenChanges_Reward[105]["RewardItem"][2]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】RuneCrystal
	tEighteenChanges_Reward[105]["RewardItem"][2]["Attr"] = "0 20 3" -- RuneCrystal（赠）*20
	tEighteenChanges_Reward[105]["RewardItem"][3] = {}
	tEighteenChanges_Reward[105]["RewardItem"][3]["Id"] = 3200748 -- BrightStarBag[3200748][属性:11][叠加:0][金币:0], 【表格】BrightStarBag
	tEighteenChanges_Reward[105]["RewardItem"][3]["Attr"] = "0 2 3" -- BrightStarBag（赠）*2
	tEighteenChanges_Reward[105]["RewardEffect"] = {}
	tEighteenChanges_Reward[105]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[105]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6阶段
	-- ===索引:tEighteenChanges_Reward[106]
	-- ===
	tEighteenChanges_Reward[106] = {}
	tEighteenChanges_Reward[106]["LogId"] = 12001781
	tEighteenChanges_Reward[106]["RewardItem"] = {}
	tEighteenChanges_Reward[106]["RewardItem"][1] = {}
	tEighteenChanges_Reward[106]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[106]["RewardItem"][1]["Attr"] = "0 60" -- DragonGlass*60
	tEighteenChanges_Reward[106]["RewardItem"][2] = {}
	tEighteenChanges_Reward[106]["RewardItem"][2]["Id"] = 3305621 -- LuxuryWeaponAccessoryPack(7-day)[3305621][属性:9][叠加:1][金币:0], 【表格】LuxuryWeaponAccessoryPack（7-day）
	tEighteenChanges_Reward[106]["RewardItem"][2]["Attr"] = "0 2" -- LuxuryWeaponAccessoryPack(7-day)*2
	tEighteenChanges_Reward[106]["RewardItem"][3] = {}
	tEighteenChanges_Reward[106]["RewardItem"][3]["Id"] = 3200858 -- BrightStarStone*3[3300797][属性:9][叠加:100][金币:0], 【表格】BrightStarStone*3
	tEighteenChanges_Reward[106]["RewardItem"][3]["Attr"] = "0 2 3" -- BrightStarStone*3（赠）*2
	tEighteenChanges_Reward[106]["RewardEffect"] = {}
	tEighteenChanges_Reward[106]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[106]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7阶段
	-- ===索引:tEighteenChanges_Reward[107]
	-- ===
	tEighteenChanges_Reward[107] = {}
	tEighteenChanges_Reward[107]["LogId"] = 12001781
	tEighteenChanges_Reward[107]["RewardItem"] = {}
	tEighteenChanges_Reward[107]["RewardItem"][1] = {}
	tEighteenChanges_Reward[107]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[107]["RewardItem"][1]["Attr"] = "0 100" -- DragonGlass*100
	tEighteenChanges_Reward[107]["RewardItem"][2] = {}
	tEighteenChanges_Reward[107]["RewardItem"][2]["Id"] = 3005129 -- ExtremeChiPack[3005129][属性:9][叠加:0][金币:0], 【表格】ExtremeChiPack
	tEighteenChanges_Reward[107]["RewardItem"][2]["Attr"] = "0 2" -- ExtremeChiPack*2
	tEighteenChanges_Reward[107]["RewardItem"][3] = {}
	tEighteenChanges_Reward[107]["RewardItem"][3]["Id"] = 3300243 -- BrightStarStone*5[3300808][属性:9][叠加:100][金币:0], 【表格】BrightStarStone*5
	tEighteenChanges_Reward[107]["RewardItem"][3]["Attr"] = "0 2 3" -- BrightStarStone*5（赠）*2
	tEighteenChanges_Reward[107]["RewardEffect"] = {}
	tEighteenChanges_Reward[107]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[107]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8阶段
	-- ===索引:tEighteenChanges_Reward[108]
	-- ===
	tEighteenChanges_Reward[108] = {}
	tEighteenChanges_Reward[108]["LogId"] = 12001781
	tEighteenChanges_Reward[108]["RewardItem"] = {}
	tEighteenChanges_Reward[108]["RewardItem"][1] = {}
	tEighteenChanges_Reward[108]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[108]["RewardItem"][1]["Attr"] = "0 300" -- DragonGlass*300
	tEighteenChanges_Reward[108]["RewardItem"][2] = {}
	tEighteenChanges_Reward[108]["RewardItem"][2]["Id"] = 3305621 -- LuxuryWeaponAccessoryPack(7-day)[3305621][属性:9][叠加:1][金币:0], 【表格】LuxuryWeaponAccessoryPack（7-day）
	tEighteenChanges_Reward[108]["RewardItem"][2]["Attr"] = "0 2" -- LuxuryWeaponAccessoryPack(7-day)*2
	tEighteenChanges_Reward[108]["RewardItem"][3] = {}
	tEighteenChanges_Reward[108]["RewardItem"][3]["Id"] = 3300249 -- BrightStarPack(7)[3300249][属性:9][叠加:1][金币:0], 【表格】BrightStarPack（7）
	tEighteenChanges_Reward[108]["RewardItem"][3]["Attr"] = "0 2 3" -- BrightStarPack(7)（赠）*2
	tEighteenChanges_Reward[108]["RewardEffect"] = {}
	tEighteenChanges_Reward[108]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[108]["RewardEffect"]["Effect"] = "angelwing"


	-- ===9阶段
	-- ===索引:tEighteenChanges_Reward[109]
	-- ===
	tEighteenChanges_Reward[109] = {}
	tEighteenChanges_Reward[109]["LogId"] = 12001781
	tEighteenChanges_Reward[109]["RewardItem"] = {}
	tEighteenChanges_Reward[109]["RewardItem"][1] = {}
	tEighteenChanges_Reward[109]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[109]["RewardItem"][1]["Attr"] = "0 1000" -- DragonGlass*1000
	tEighteenChanges_Reward[109]["RewardItem"][2] = {}
	tEighteenChanges_Reward[109]["RewardItem"][2]["Id"] = 3321225 -- 5000ChiPointsPack[3321225][属性:9][叠加:1][金币:0], 【表格】5000ChiPointsPack
	tEighteenChanges_Reward[109]["RewardItem"][2]["Attr"] = "0 2" -- 5000ChiPointsPack*2
	tEighteenChanges_Reward[109]["RewardItem"][3] = {}
	tEighteenChanges_Reward[109]["RewardItem"][3]["Id"] = 3300152 -- RadiantStarBag[3300152][属性:11][叠加:10][金币:0], 【表格】RadiantStarBag
	tEighteenChanges_Reward[109]["RewardItem"][3]["Attr"] = "0 2 3" -- RadiantStarBag（赠）*2
	tEighteenChanges_Reward[109]["RewardEffect"] = {}
	tEighteenChanges_Reward[109]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[109]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10阶段
	-- ===索引:tEighteenChanges_Reward[110]
	-- ===
	tEighteenChanges_Reward[110] = {}
	tEighteenChanges_Reward[110]["LogId"] = 12001781
	tEighteenChanges_Reward[110]["RewardItem"] = {}
	tEighteenChanges_Reward[110]["RewardItem"][1] = {}
	tEighteenChanges_Reward[110]["RewardItem"][1]["Id"] = 3327231 -- DragonGlass[3327231][属性:9][叠加:10000][金币:0], 【表格】兑换道具
	tEighteenChanges_Reward[110]["RewardItem"][1]["Attr"] = "0 2000" -- DragonGlass*2000
	tEighteenChanges_Reward[110]["RewardItem"][2] = {}
	tEighteenChanges_Reward[110]["RewardItem"][2]["Id"] = 3330765 -- RareYellowRuneFragment[3330765][属性:8][叠加:10000][金币:0], 【表格】RareYellowRuneFragment
	tEighteenChanges_Reward[110]["RewardItem"][2]["Attr"] = "0 4 3" -- RareYellowRuneFragment（赠）*4
	tEighteenChanges_Reward[110]["RewardItem"][3] = {}
	tEighteenChanges_Reward[110]["RewardItem"][3]["Id"] = 3300152 -- RadiantStarBag[3300152][属性:11][叠加:10][金币:0], 【表格】RadiantStarBag
	tEighteenChanges_Reward[110]["RewardItem"][3]["Attr"] = "0 2 3" -- RadiantStarBag（赠）*2
	tEighteenChanges_Reward[110]["RewardEffect"] = {}
	tEighteenChanges_Reward[110]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_Reward[110]["RewardEffect"]["Effect"] = "angelwing"


	-- 兑换商店
	local tEighteenChanges_ExchangeShop = {}
	tEighteenChanges_ExchangeShop["ItemId"] = {}
	tEighteenChanges_ExchangeShop["ItemId"][1] = 4200005
	tEighteenChanges_ExchangeShop["ItemId"][2] = 4200007
	tEighteenChanges_ExchangeShop["ItemId"][3] = 4200010
	tEighteenChanges_ExchangeShop["ItemId"][4] = 3327267
	tEighteenChanges_ExchangeShop["ItemId"][5] = 3327268
	tEighteenChanges_ExchangeShop["ItemId"][6] = 3327269
	tEighteenChanges_ExchangeShop["ItemId"][7] = 3327270
	
	tEighteenChanges_ExchangeShop["ExchangeNum"] = {}
	tEighteenChanges_ExchangeShop["ExchangeNum"][1] = 269
	tEighteenChanges_ExchangeShop["ExchangeNum"][2] = 1059
	tEighteenChanges_ExchangeShop["ExchangeNum"][3] = 8599
	tEighteenChanges_ExchangeShop["ExchangeNum"][4] = 149 
	tEighteenChanges_ExchangeShop["ExchangeNum"][5] = 7399 
	tEighteenChanges_ExchangeShop["ExchangeNum"][6] = 19999
	tEighteenChanges_ExchangeShop["ExchangeNum"][7] = 66999
	
	tEighteenChanges_ExchangeShop["ExchangeLimit"] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200005] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200005]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200005]["Pos"] = 0
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200005]["LimitData"] = 2
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200007] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200007]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200007]["Pos"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200007]["LimitData"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200010] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200010]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200010]["Pos"] = 2
	tEighteenChanges_ExchangeShop["ExchangeLimit"][4200010]["LimitData"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327267] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327267]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327267]["Pos"] = 3
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327267]["LimitData"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327268] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327268]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327268]["Pos"] = 4
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327268]["LimitData"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327269] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327269]["GolbalId"] = 54021
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327269]["Pos"] = 5
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327269]["LimitData"] = 1
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327270] = {}
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327270]["GolbalId"] = 54022
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327270]["Pos"] = 0
	tEighteenChanges_ExchangeShop["ExchangeLimit"][3327270]["LimitData"] = 1
	
	tEighteenChanges_ExchangeReward = {}
	tEighteenChanges_ExchangeReward[25759] = {}

	tEighteenChanges_ExchangeReward[25759][1] = {}
	tEighteenChanges_ExchangeReward[25759][1]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][1]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][1]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][1]["RewardItem"][1]["Id"] = 4200005 -- P5Anima[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tEighteenChanges_ExchangeReward[25759][1]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tEighteenChanges_ExchangeReward[25759][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tEighteenChanges_ExchangeReward[25759][1]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][1]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][2] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][2]
	tEighteenChanges_ExchangeReward[25759][2]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][2]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][2]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][2]["RewardItem"][1]["Id"] = 4200007 -- P7Anima[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tEighteenChanges_ExchangeReward[25759][2]["RewardItem"][1]["Attr"] = "0 1" -- P7Anima*1
	tEighteenChanges_ExchangeReward[25759][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tEighteenChanges_ExchangeReward[25759][2]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][2]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][3] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][3]
	tEighteenChanges_ExchangeReward[25759][3]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][3]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][3]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][3]["RewardItem"][1]["Id"] = 4200010 -- P10Anima[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tEighteenChanges_ExchangeReward[25759][3]["RewardItem"][1]["Attr"] = "0 1" -- P10Anima*1
	tEighteenChanges_ExchangeReward[25759][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tEighteenChanges_ExchangeReward[25759][3]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][3]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][4] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][4]
	tEighteenChanges_ExchangeReward[25759][4]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][4]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][4]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][4]["RewardItem"][1]["Id"] = 3327267 -- 10-EGPPhoneCardVoucher[3327267][属性:9][叠加:10000][金币:0], 【表格】10埃磅电话卡（限埃及地区）
	tEighteenChanges_ExchangeReward[25759][4]["RewardItem"][1]["Attr"] = "0 1" -- 10-EGPPhoneCardVoucher*1
	tEighteenChanges_ExchangeReward[25759][4]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][4]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][5] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][5]
	tEighteenChanges_ExchangeReward[25759][5]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][5]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][5]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][5]["RewardItem"][1]["Id"] = 3327268 -- 50-EGPPhoneCardVoucher[3327268][属性:9][叠加:10000][金币:0], 【表格】50埃磅电话卡（限埃及地区）
	tEighteenChanges_ExchangeReward[25759][5]["RewardItem"][1]["Attr"] = "0 1" -- 50-EGPPhoneCardVoucher*1
	tEighteenChanges_ExchangeReward[25759][5]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][5]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][6] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][6]
	tEighteenChanges_ExchangeReward[25759][6]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][6]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][6]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][6]["RewardItem"][1]["Id"] = 3327269 -- XiaomiRedmi6AVoucher[3327269][属性:9][叠加:10000][金币:0], 【表格】XIAOMI Redmi 6A - 5.45-inch 16GB/2GB - 4G Mobile Phone - Black（限埃及地区）
	tEighteenChanges_ExchangeReward[25759][6]["RewardItem"][1]["Attr"] = "0 1" -- XiaomiRedmi6AVoucher*1
	tEighteenChanges_ExchangeReward[25759][6]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][6]["RewardEffect"]["Effect"] = "angelwing"


	tEighteenChanges_ExchangeReward[25759][7] = {}
	-- ===兑换奖励
	-- ===索引: tEighteenChanges_ExchangeReward[25759][7]
	tEighteenChanges_ExchangeReward[25759][7]["LogId"] = 12001789
	tEighteenChanges_ExchangeReward[25759][7]["RewardItem"] = {}
	tEighteenChanges_ExchangeReward[25759][7]["RewardItem"][1] = {}
	tEighteenChanges_ExchangeReward[25759][7]["RewardItem"][1]["Id"] = 3327270 -- HuaweiP30LiteVoucher[3327270][属性:9][叠加:10000][金币:0], 【表格】HUWEI P30 LITE（4GB+128GB）Peacock Blue（限埃及地区）
	tEighteenChanges_ExchangeReward[25759][7]["RewardItem"][1]["Attr"] = "0 1" -- HuaweiP30LiteVoucher*1
	tEighteenChanges_ExchangeReward[25759][7]["RewardEffect"] = {}
	tEighteenChanges_ExchangeReward[25759][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_ExchangeReward[25759][7]["RewardEffect"]["Effect"] = "angelwing"

	local tEighteenChanges_RwardText = {}
	tEighteenChanges_RwardText[0] = {}
	-- 第一阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][2] = {}
	tEighteenChanges_RwardText[0][2]["TextStage"] = 1
	tEighteenChanges_RwardText[0][2]["Text"] = tEighteenChanges_Text["Text"][0][1]
	tEighteenChanges_RwardText[0][2]["RewardText"] = tEighteenChanges_Text["RewardText"][0][1]
	
	-- 第2阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][7] = {}
	tEighteenChanges_RwardText[0][7]["TextStage"] = 2
	tEighteenChanges_RwardText[0][7]["Text"] = tEighteenChanges_Text["Text"][0][1]
	tEighteenChanges_RwardText[0][7]["RewardText"] = tEighteenChanges_Text["RewardText"][0][1]
	
	-- 第3阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][13] = {}
	tEighteenChanges_RwardText[0][13]["TextStage"] = 3
	tEighteenChanges_RwardText[0][13]["Text"] = tEighteenChanges_Text["Text"][0][1]
	tEighteenChanges_RwardText[0][13]["RewardText"] = tEighteenChanges_Text["RewardText"][0][1]
	
	-- 第4阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][20] = {}
	tEighteenChanges_RwardText[0][20]["TextStage"] = 4
	tEighteenChanges_RwardText[0][20]["Text"] = tEighteenChanges_Text["Text"][0][2]
	tEighteenChanges_RwardText[0][20]["RewardText"] = tEighteenChanges_Text["RewardText"][0][2]
	
	-- 第5阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][28] = {}
	tEighteenChanges_RwardText[0][28]["TextStage"] = 5
	tEighteenChanges_RwardText[0][28]["Text"] = tEighteenChanges_Text["Text"][0][2]
	tEighteenChanges_RwardText[0][28]["RewardText"] = tEighteenChanges_Text["RewardText"][0][2]
	
	-- 第6阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][37] = {}
	tEighteenChanges_RwardText[0][37]["TextStage"] = 6
	tEighteenChanges_RwardText[0][37]["Text"] = tEighteenChanges_Text["Text"][0][2]
	tEighteenChanges_RwardText[0][37]["RewardText"] = tEighteenChanges_Text["RewardText"][0][2]
	
	-- 第7阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][47] = {}
	tEighteenChanges_RwardText[0][47]["TextStage"] = 7
	tEighteenChanges_RwardText[0][47]["Text"] = tEighteenChanges_Text["Text"][0][2]
	tEighteenChanges_RwardText[0][47]["RewardText"] = tEighteenChanges_Text["RewardText"][0][2]
	
	-- 第8阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][56] = {}
	tEighteenChanges_RwardText[0][56]["TextStage"] = 8
	tEighteenChanges_RwardText[0][56]["Text"] = tEighteenChanges_Text["Text"][0][3]
	tEighteenChanges_RwardText[0][56]["RewardText"] = tEighteenChanges_Text["RewardText"][0][3]
	
	-- 第9阶段
	-- 中奖频道信息
	tEighteenChanges_RwardText[0][66] = {}
	tEighteenChanges_RwardText[0][66]["TextStage"] = 9
	tEighteenChanges_RwardText[0][66]["Text"] = tEighteenChanges_Text["Text"][0][3]
	tEighteenChanges_RwardText[0][66]["RewardText"] = tEighteenChanges_Text["RewardText"][0][3]
	
local tEighteenChanges_RewardItem = {}
	-- ===ConsolationBalloon（2）
	-- ===索引:tEighteenChanges_RewardItem[3332007]
	-- ===删除: 3332007,1
	-- ===
	tEighteenChanges_RewardItem[3332007] = {}
	tEighteenChanges_RewardItem[3332007]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332007]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332007]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332007]["DeleteItem"][1]["Id"] = 3332007 -- 【库】 3332007 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332007]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332007]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332007]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332007]["RewardItem"][1]["Attr"] = "0 2" --  3332006 【enzf库里没有该物品】*2
	tEighteenChanges_RewardItem[3332007]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332007]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332007]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（4）
	-- ===索引:tEighteenChanges_RewardItem[3332008]
	-- ===删除: 3332008,1
	-- ===
	tEighteenChanges_RewardItem[3332008] = {}
	tEighteenChanges_RewardItem[3332008]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332008]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332008]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332008]["DeleteItem"][1]["Id"] = 3332008 -- 【库】 3332008 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332008]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332008]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332008]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332008]["RewardItem"][1]["Attr"] = "0 4" --  3332006 【enzf库里没有该物品】*4
	tEighteenChanges_RewardItem[3332008]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332008]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332008]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（8）
	-- ===索引:tEighteenChanges_RewardItem[3332009]
	-- ===删除: 3332009,1
	-- ===
	tEighteenChanges_RewardItem[3332009] = {}
	tEighteenChanges_RewardItem[3332009]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332009]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332009]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332009]["DeleteItem"][1]["Id"] = 3332009 -- 【库】 3332009 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332009]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332009]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332009]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332009]["RewardItem"][1]["Attr"] = "0 8" --  3332006 【enzf库里没有该物品】*8
	tEighteenChanges_RewardItem[3332009]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332009]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332009]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（16）
	-- ===索引:tEighteenChanges_RewardItem[3332010]
	-- ===删除: 3332010,1
	-- ===
	tEighteenChanges_RewardItem[3332010] = {}
	tEighteenChanges_RewardItem[3332010]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332010]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332010]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332010]["DeleteItem"][1]["Id"] = 3332010 -- 【库】 3332010 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332010]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332010]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332010]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332010]["RewardItem"][1]["Attr"] = "0 16" --  3332006 【enzf库里没有该物品】*16（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332010]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332010]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332010]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（32）
	-- ===索引:tEighteenChanges_RewardItem[3332011]
	-- ===删除: 3332011,1
	-- ===
	tEighteenChanges_RewardItem[3332011] = {}
	tEighteenChanges_RewardItem[3332011]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332011]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332011]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332011]["DeleteItem"][1]["Id"] = 3332011 -- 【库】 3332011 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332011]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332011]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332011]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332011]["RewardItem"][1]["Attr"] = "0 32" --  3332006 【enzf库里没有该物品】*32（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332011]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332011]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（64）
	-- ===索引:tEighteenChanges_RewardItem[3332012]
	-- ===删除: 3332012,1
	-- ===
	tEighteenChanges_RewardItem[3332012] = {}
	tEighteenChanges_RewardItem[3332012]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332012]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332012]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332012]["DeleteItem"][1]["Id"] = 3332012 -- 【库】 3332012 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332012]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332012]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332012]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332012]["RewardItem"][1]["Attr"] = "0 64" --  3332006 【enzf库里没有该物品】*64（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332012]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332012]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（128）
	-- ===索引:tEighteenChanges_RewardItem[3332013]
	-- ===删除: 3332013,1
	-- ===
	tEighteenChanges_RewardItem[3332013] = {}
	tEighteenChanges_RewardItem[3332013]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332013]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332013]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332013]["DeleteItem"][1]["Id"] = 3332013 -- 【库】 3332013 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332013]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332013]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332013]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332013]["RewardItem"][1]["Attr"] = "0 128" --  3332006 【enzf库里没有该物品】*128（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332013]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332013]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（256）
	-- ===索引:tEighteenChanges_RewardItem[3332014]
	-- ===删除: 3332014,1
	-- ===
	tEighteenChanges_RewardItem[3332014] = {}
	tEighteenChanges_RewardItem[3332014]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332014]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332014]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332014]["DeleteItem"][1]["Id"] = 3332014 -- 【库】 3332014 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332014]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332014]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332014]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332014]["RewardItem"][1]["Attr"] = "0 256" --  3332006 【enzf库里没有该物品】*256（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332014]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332014]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（512）
	-- ===索引:tEighteenChanges_RewardItem[3332015]
	-- ===删除: 3332015,1
	-- ===
	tEighteenChanges_RewardItem[3332015] = {}
	tEighteenChanges_RewardItem[3332015]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332015]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332015]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332015]["DeleteItem"][1]["Id"] = 3332015 -- 【库】 3332015 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332015]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332015]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332015]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332015]["RewardItem"][1]["Attr"] = "0 512" --  3332006 【enzf库里没有该物品】*512（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332015]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332015]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（1024）
	-- ===索引:tEighteenChanges_RewardItem[3332016]
	-- ===删除: 3332016,1
	-- ===
	tEighteenChanges_RewardItem[3332016] = {}
	tEighteenChanges_RewardItem[3332016]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332016]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332016]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332016]["DeleteItem"][1]["Id"] = 3332016 -- 【库】 3332016 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332016]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332016]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332016]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332016]["RewardItem"][1]["Attr"] = "0 1024" --  3332006 【enzf库里没有该物品】*1024（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332016]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332016]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ConsolationBalloon（22000）
	-- ===索引:tEighteenChanges_RewardItem[3332017]
	-- ===删除: 3332017,1
	-- ===
	tEighteenChanges_RewardItem[3332017] = {}
	tEighteenChanges_RewardItem[3332017]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332017]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332017]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332017]["DeleteItem"][1]["Id"] = 3332017 -- 【库】 3332017 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332017]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332017]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332017]["RewardItem"][1]["Id"] = 3332006 --  3332006 【enzf库里没有该物品】, 【表格】ConsolationBalloon
	tEighteenChanges_RewardItem[3332017]["RewardItem"][1]["Attr"] = "0 22000" --  3332006 【enzf库里没有该物品】*22000（[错误]物品数量超10个）
	tEighteenChanges_RewardItem[3332017]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332017]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------
	-- ===AngelicalRobe
	-- ===索引:tEighteenChanges_RewardItem[3332219]
	-- ===删除:3332219,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332219] = {}
	tEighteenChanges_RewardItem[3332219]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332219]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332219]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332219]["DeleteItem"][1]["Id"] = 3332219 -- 【库】1DAngelicalRobe[属性:9]
	tEighteenChanges_RewardItem[3332219]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332219]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332219]["RewardItem"][1]["Id"] = 194375 -- AngelicRobe[194375][属性:8][叠加:0][金币:0], 【表格】AngelicalRobe
	tEighteenChanges_RewardItem[3332219]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AngelicRobe（赠）*1
	tEighteenChanges_RewardItem[3332219]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332219]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332219]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===PurpleRomance
	-- ===索引:tEighteenChanges_RewardItem[3332220]
	-- ===删除:3332220,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332220] = {}
	tEighteenChanges_RewardItem[3332220]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332220]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332220]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332220]["DeleteItem"][1]["Id"] = 3332220 -- 【库】1DPurpleRomance[属性:9]
	tEighteenChanges_RewardItem[3332220]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332220]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332220]["RewardItem"][1]["Id"] = 194865 -- PurpleRomance[194865][属性:8][叠加:0][金币:0], 【表格】PurpleRomance
	tEighteenChanges_RewardItem[3332220]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PurpleRomance（赠）*1
	tEighteenChanges_RewardItem[3332220]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332220]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332220]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ChristmasMelody
	-- ===索引:tEighteenChanges_RewardItem[3332221]
	-- ===删除:3332221,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332221] = {}
	tEighteenChanges_RewardItem[3332221]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332221]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332221]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332221]["DeleteItem"][1]["Id"] = 3332221 -- 【库】1DChristmasMelody[属性:9]
	tEighteenChanges_RewardItem[3332221]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332221]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332221]["RewardItem"][1]["Id"] = 195025 -- ChristmasMelody[195025][属性:8][叠加:0][金币:0], 【表格】ChristmasMelody
	tEighteenChanges_RewardItem[3332221]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ChristmasMelody（赠）*1
	tEighteenChanges_RewardItem[3332221]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332221]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332221]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Bloodthirst
	-- ===索引:tEighteenChanges_RewardItem[3332222]
	-- ===删除:3332222,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332222] = {}
	tEighteenChanges_RewardItem[3332222]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332222]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332222]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332222]["DeleteItem"][1]["Id"] = 3332222 -- 【库】1DBloodthirst[属性:9]
	tEighteenChanges_RewardItem[3332222]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332222]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332222]["RewardItem"][1]["Id"] = 187475 -- BloodThirst[187475][属性:0][叠加:0][金币:0], 【表格】Bloodthirst
	tEighteenChanges_RewardItem[3332222]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BloodThirst（赠）*1
	tEighteenChanges_RewardItem[3332222]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332222]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332222]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===CloudDeer
	-- ===索引:tEighteenChanges_RewardItem[3332223]
	-- ===删除:3332223,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332223] = {}
	tEighteenChanges_RewardItem[3332223]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332223]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332223]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332223]["DeleteItem"][1]["Id"] = 3332223 -- 【库】1DCloudDeer[属性:9]
	tEighteenChanges_RewardItem[3332223]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332223]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332223]["RewardItem"][1]["Id"] = 200107 -- CloudDeer[200107][属性:0][叠加:0][金币:100], 【表格】CloudDeer
	tEighteenChanges_RewardItem[3332223]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CloudDeer（赠）*1
	tEighteenChanges_RewardItem[3332223]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332223]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332223]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===GiantFish
	-- ===索引:tEighteenChanges_RewardItem[3332224]
	-- ===删除:3332224,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332224] = {}
	tEighteenChanges_RewardItem[3332224]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332224]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332224]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332224]["DeleteItem"][1]["Id"] = 3332224 -- 【库】1DGiantFish[属性:9]
	tEighteenChanges_RewardItem[3332224]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332224]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332224]["RewardItem"][1]["Id"] = 200625 -- GiantFish[200625][属性:0][叠加:0][金币:0], 【表格】GiantFish
	tEighteenChanges_RewardItem[3332224]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GiantFish（赠）*1
	tEighteenChanges_RewardItem[3332224]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332224]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332224]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===RoyalApe
	-- ===索引:tEighteenChanges_RewardItem[3332225]
	-- ===删除:3332225,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332225] = {}
	tEighteenChanges_RewardItem[3332225]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332225]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332225]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332225]["DeleteItem"][1]["Id"] = 3332225 -- 【库】1DRoyalApe[属性:9]
	tEighteenChanges_RewardItem[3332225]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332225]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332225]["RewardItem"][1]["Id"] = 200414 -- RoyalApe[200414][属性:0][叠加:0][金币:0], 【表格】RoyalApe
	tEighteenChanges_RewardItem[3332225]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RoyalApe（赠）*1
	tEighteenChanges_RewardItem[3332225]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332225]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332225]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===PolarBear
	-- ===索引:tEighteenChanges_RewardItem[3332226]
	-- ===删除:3332226,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332226] = {}
	tEighteenChanges_RewardItem[3332226]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332226]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332226]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332226]["DeleteItem"][1]["Id"] = 3332226 -- 【库】1DPolarBear[属性:9]
	tEighteenChanges_RewardItem[3332226]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332226]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332226]["RewardItem"][1]["Id"] = 200415 -- PolarBear[200415][属性:0][叠加:0][金币:0], 【表格】PolarBear
	tEighteenChanges_RewardItem[3332226]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PolarBear（赠）*1
	tEighteenChanges_RewardItem[3332226]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332226]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332226]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===AngelicalRobe
	-- ===索引:tEighteenChanges_RewardItem[3332227]
	-- ===删除:3332227,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332227] = {}
	tEighteenChanges_RewardItem[3332227]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332227]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332227]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332227]["DeleteItem"][1]["Id"] = 3332227 -- 【库】3DAngelicalRobe[属性:9]
	tEighteenChanges_RewardItem[3332227]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332227]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332227]["RewardItem"][1]["Id"] = 194375 -- AngelicRobe[194375][属性:8][叠加:0][金币:0], 【表格】AngelicalRobe
	tEighteenChanges_RewardItem[3332227]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑AngelicRobe（赠）*1
	tEighteenChanges_RewardItem[3332227]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332227]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332227]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===PurpleRomance
	-- ===索引:tEighteenChanges_RewardItem[3332228]
	-- ===删除:3332228,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332228] = {}
	tEighteenChanges_RewardItem[3332228]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332228]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332228]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332228]["DeleteItem"][1]["Id"] = 3332228 -- 【库】3DPurpleRomance[属性:9]
	tEighteenChanges_RewardItem[3332228]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332228]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332228]["RewardItem"][1]["Id"] = 194865 -- PurpleRomance[194865][属性:8][叠加:0][金币:0], 【表格】PurpleRomance
	tEighteenChanges_RewardItem[3332228]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑PurpleRomance（赠）*1
	tEighteenChanges_RewardItem[3332228]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332228]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332228]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ChristmasMelody
	-- ===索引:tEighteenChanges_RewardItem[3332129]
	-- ===删除:3332129,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332229] = {}
	tEighteenChanges_RewardItem[3332229]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332229]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332229]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332229]["DeleteItem"][1]["Id"] = 3332229 -- 【库】 3332229 【enzf库里没有该物品】[属性:]
	tEighteenChanges_RewardItem[3332229]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332229]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332229]["RewardItem"][1]["Id"] = 195025 -- ChristmasMelody[195025][属性:8][叠加:0][金币:0], 【表格】ChristmasMelody
	tEighteenChanges_RewardItem[3332229]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑ChristmasMelody（赠）*1
	tEighteenChanges_RewardItem[3332229]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332229]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332229]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Bloodthirst
	-- ===索引:tEighteenChanges_RewardItem[3332230]
	-- ===删除:3332230,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332230] = {}
	tEighteenChanges_RewardItem[3332230]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332230]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332230]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332230]["DeleteItem"][1]["Id"] = 3332230 -- 【库】3DBloodthirst[属性:9]
	tEighteenChanges_RewardItem[3332230]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332230]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332230]["RewardItem"][1]["Id"] = 187475 -- BloodThirst[187475][属性:0][叠加:0][金币:0], 【表格】Bloodthirst
	tEighteenChanges_RewardItem[3332230]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑BloodThirst（赠）*1
	tEighteenChanges_RewardItem[3332230]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332230]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332230]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===CloudDeer
	-- ===索引:tEighteenChanges_RewardItem[3332231]
	-- ===删除:3332231,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332231] = {}
	tEighteenChanges_RewardItem[3332231]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332231]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332231]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332231]["DeleteItem"][1]["Id"] = 3332231 -- 【库】3DCloudDeer[属性:9]
	tEighteenChanges_RewardItem[3332231]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332231]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332231]["RewardItem"][1]["Id"] = 200107 -- CloudDeer[200107][属性:0][叠加:0][金币:100], 【表格】CloudDeer
	tEighteenChanges_RewardItem[3332231]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑CloudDeer（赠）*1
	tEighteenChanges_RewardItem[3332231]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332231]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332231]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===GiantFish
	-- ===索引:tEighteenChanges_RewardItem[3332232]
	-- ===删除:3332232,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332232] = {}
	tEighteenChanges_RewardItem[3332232]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332232]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332232]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332232]["DeleteItem"][1]["Id"] = 3332232 -- 【库】3DGiantFish[属性:9]
	tEighteenChanges_RewardItem[3332232]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332232]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332232]["RewardItem"][1]["Id"] = 200625 -- GiantFish[200625][属性:0][叠加:0][金币:0], 【表格】GiantFish
	tEighteenChanges_RewardItem[3332232]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑GiantFish（赠）*1
	tEighteenChanges_RewardItem[3332232]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332232]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332232]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===RoyalApe
	-- ===索引:tEighteenChanges_RewardItem[3332233]
	-- ===删除:3332233,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332233] = {}
	tEighteenChanges_RewardItem[3332233]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332233]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332233]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332233]["DeleteItem"][1]["Id"] = 3332233 -- 【库】3DRoyalApe[属性:9]
	tEighteenChanges_RewardItem[3332233]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332233]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332233]["RewardItem"][1]["Id"] = 200414 -- RoyalApe[200414][属性:0][叠加:0][金币:0], 【表格】RoyalApe
	tEighteenChanges_RewardItem[3332233]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑RoyalApe（赠）*1
	tEighteenChanges_RewardItem[3332233]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332233]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332233]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===PolarBear
	-- ===索引:tEighteenChanges_RewardItem[3332234]
	-- ===删除:3332234,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332234] = {}
	tEighteenChanges_RewardItem[3332234]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332234]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332234]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332234]["DeleteItem"][1]["Id"] = 3332234 -- 【库】3DPolarBear[属性:9]
	tEighteenChanges_RewardItem[3332234]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332234]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332234]["RewardItem"][1]["Id"] = 200415 -- PolarBear[200415][属性:0][叠加:0][金币:0], 【表格】PolarBear
	tEighteenChanges_RewardItem[3332234]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑PolarBear（赠）*1
	tEighteenChanges_RewardItem[3332234]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332234]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332234]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===FairyTale
	-- ===索引:tEighteenChanges_RewardItem[3332235]
	-- ===删除:3332235,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332235] = {}
	tEighteenChanges_RewardItem[3332235]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332235]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332235]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332235]["DeleteItem"][1]["Id"] = 3332235 -- 【库】1DFairyTale[属性:9]
	tEighteenChanges_RewardItem[3332235]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332235]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332235]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】FairyTale
	tEighteenChanges_RewardItem[3332235]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FairyTale（赠）*1
	tEighteenChanges_RewardItem[3332235]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332235]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332235]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ArabicPride
	-- ===索引:tEighteenChanges_RewardItem[3332236]
	-- ===删除:3332236,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332236] = {}
	tEighteenChanges_RewardItem[3332236]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332236]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332236]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332236]["DeleteItem"][1]["Id"] = 3332236 -- 【库】1DArabicPride[属性:9]
	tEighteenChanges_RewardItem[3332236]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332236]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332236]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】ArabicPride
	tEighteenChanges_RewardItem[3332236]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ArabicPride（赠）*1
	tEighteenChanges_RewardItem[3332236]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332236]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332236]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ArabicPride
	-- ===索引:tEighteenChanges_RewardItem[3332237]
	-- ===删除:3332237,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332237] = {}
	tEighteenChanges_RewardItem[3332237]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332237]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332237]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332237]["DeleteItem"][1]["Id"] = 3332237 -- 【库】1DSongofDespair[属性:9]
	tEighteenChanges_RewardItem[3332237]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332237]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332237]["RewardItem"][1]["Id"] = 193295 -- SongofDespair[193295][属性:0][叠加:0][金币:100], 【表格】SongofDespair
	tEighteenChanges_RewardItem[3332237]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SongofDespair（赠）*1
	tEighteenChanges_RewardItem[3332237]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332237]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332237]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Windwalk
	-- ===索引:tEighteenChanges_RewardItem[3332238]
	-- ===删除:3332238,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332238] = {}
	tEighteenChanges_RewardItem[3332238]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332238]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332238]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332238]["DeleteItem"][1]["Id"] = 3332238 -- 【库】1DWindwalk[属性:9]
	tEighteenChanges_RewardItem[3332238]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332238]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332238]["RewardItem"][1]["Id"] = 192605 -- WindWalk[192605][属性:0][叠加:0][金币:100], 【表格】Windwalk
	tEighteenChanges_RewardItem[3332238]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑WindWalk（赠）*1
	tEighteenChanges_RewardItem[3332238]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332238]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332238]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===XmasBunny
	-- ===索引:tEighteenChanges_RewardItem[3332239]
	-- ===删除:3332239,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332239] = {}
	tEighteenChanges_RewardItem[3332239]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332239]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332239]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332239]["DeleteItem"][1]["Id"] = 3332239 -- 【库】1DXmasBunny[属性:9]
	tEighteenChanges_RewardItem[3332239]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332239]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332239]["RewardItem"][1]["Id"] = 193115 -- XmasBunny[193115][属性:0][叠加:0][金币:100], 【表格】Windwalk
	tEighteenChanges_RewardItem[3332239]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑XmasBunny（赠）*1
	tEighteenChanges_RewardItem[3332239]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332239]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332239]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Snowfox
	-- ===索引:tEighteenChanges_RewardItem[3332240]
	-- ===删除:3332240,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332240] = {}
	tEighteenChanges_RewardItem[3332240]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332240]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332240]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332240]["DeleteItem"][1]["Id"] = 3332240 -- 【库】1DSnowfox[属性:9]
	tEighteenChanges_RewardItem[3332240]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332240]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332240]["RewardItem"][1]["Id"] = 200475 -- SnowFox[200475][属性:0][叠加:0][金币:0], 【表格】Snowfox
	tEighteenChanges_RewardItem[3332240]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SnowFox（赠）*1
	tEighteenChanges_RewardItem[3332240]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332240]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332240]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===GeneralCat
	-- ===索引:tEighteenChanges_RewardItem[3332241]
	-- ===删除:3332241,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332241] = {}
	tEighteenChanges_RewardItem[3332241]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332241]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332241]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332241]["DeleteItem"][1]["Id"] = 3332241 -- 【库】1DGeneralCat[属性:9]
	tEighteenChanges_RewardItem[3332241]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332241]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332241]["RewardItem"][1]["Id"] = 200542 -- GeneralCat[200542][属性:0][叠加:0][金币:0], 【表格】GeneralCat
	tEighteenChanges_RewardItem[3332241]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GeneralCat（赠）*1
	tEighteenChanges_RewardItem[3332241]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332241]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332241]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===FairyTale
	-- ===索引:tEighteenChanges_RewardItem[3332242]
	-- ===删除:3332242,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332242] = {}
	tEighteenChanges_RewardItem[3332242]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332242]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332242]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332242]["DeleteItem"][1]["Id"] = 3332242 -- 【库】3DFairyTale[属性:9]
	tEighteenChanges_RewardItem[3332242]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332242]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332242]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】FairyTale
	tEighteenChanges_RewardItem[3332242]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑FairyTale（赠）*1
	tEighteenChanges_RewardItem[3332242]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332242]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332242]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ArabicPride
	-- ===索引:tEighteenChanges_RewardItem[3332243]
	-- ===删除:3332243,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332243] = {}
	tEighteenChanges_RewardItem[3332243]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332243]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332243]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332243]["DeleteItem"][1]["Id"] = 3332243 -- 【库】3DArabicPride[属性:9]
	tEighteenChanges_RewardItem[3332243]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332243]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332243]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】ArabicPride
	tEighteenChanges_RewardItem[3332243]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑ArabicPride（赠）*1
	tEighteenChanges_RewardItem[3332243]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332243]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332243]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===ArabicPride
	-- ===索引:tEighteenChanges_RewardItem[3332244]
	-- ===删除:3332244,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332244] = {}
	tEighteenChanges_RewardItem[3332244]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332244]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332244]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332244]["DeleteItem"][1]["Id"] = 3332244 -- 【库】3DSongofDespair[属性:9]
	tEighteenChanges_RewardItem[3332244]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332244]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332244]["RewardItem"][1]["Id"] = 193295 -- SongofDespair[193295][属性:0][叠加:0][金币:100], 【表格】SongofDespair
	tEighteenChanges_RewardItem[3332244]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑SongofDespair（赠）*1
	tEighteenChanges_RewardItem[3332244]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332244]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332244]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Windwalk
	-- ===索引:tEighteenChanges_RewardItem[3332245]
	-- ===删除:3332245,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332245] = {}
	tEighteenChanges_RewardItem[3332245]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332245]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332245]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332245]["DeleteItem"][1]["Id"] = 3332245 -- 【库】3DWindwalk[属性:9]
	tEighteenChanges_RewardItem[3332245]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332245]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332245]["RewardItem"][1]["Id"] = 192605 -- WindWalk[192605][属性:0][叠加:0][金币:100], 【表格】Windwalk
	tEighteenChanges_RewardItem[3332245]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑WindWalk（赠）*1
	tEighteenChanges_RewardItem[3332245]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332245]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332245]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===XmasBunny
	-- ===索引:tEighteenChanges_RewardItem[3332246]
	-- ===删除:3332246,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332246] = {}
	tEighteenChanges_RewardItem[3332246]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332246]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332246]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332246]["DeleteItem"][1]["Id"] = 3332246 -- 【库】3DXmasBunny[属性:9]
	tEighteenChanges_RewardItem[3332246]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332246]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332246]["RewardItem"][1]["Id"] = 193115 -- XmasBunny[193115][属性:0][叠加:0][金币:100], 【表格】Windwalk
	tEighteenChanges_RewardItem[3332246]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑XmasBunny（赠）*1
	tEighteenChanges_RewardItem[3332246]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332246]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332246]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===Snowfox
	-- ===索引:tEighteenChanges_RewardItem[3332247]
	-- ===删除:3332247,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332247] = {}
	tEighteenChanges_RewardItem[3332247]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332247]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332247]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332247]["DeleteItem"][1]["Id"] = 3332247 -- 【库】3DSnowfox[属性:9]
	tEighteenChanges_RewardItem[3332247]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332247]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332247]["RewardItem"][1]["Id"] = 200475 -- SnowFox[200475][属性:0][叠加:0][金币:0], 【表格】Snowfox
	tEighteenChanges_RewardItem[3332247]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑SnowFox（赠）*1
	tEighteenChanges_RewardItem[3332247]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332247]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332247]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===GeneralCat
	-- ===索引:tEighteenChanges_RewardItem[3332248]
	-- ===删除:3332248,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332248] = {}
	tEighteenChanges_RewardItem[3332248]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332248]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332248]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332248]["DeleteItem"][1]["Id"] = 3332248 -- 【库】3DGeneralCat[属性:9]
	tEighteenChanges_RewardItem[3332248]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332248]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332248]["RewardItem"][1]["Id"] = 200542 -- GeneralCat[200542][属性:0][叠加:0][金币:0], 【表格】GeneralCat
	tEighteenChanges_RewardItem[3332248]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑GeneralCat（赠）*1
	tEighteenChanges_RewardItem[3332248]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332248]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332248]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===lunarangelicrobe
	-- ===索引:tEighteenChanges_RewardItem[3332249]
	-- ===删除:3332249,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332249] = {}
	tEighteenChanges_RewardItem[3332249]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332249]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332249]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332249]["DeleteItem"][1]["Id"] = 3332249 -- 【库】1DLunarAngelicRobe[属性:9]
	tEighteenChanges_RewardItem[3332249]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332249]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332249]["RewardItem"][1]["Id"] = 194395 -- LunarAngelicRobe[194395][属性:8][叠加:0][金币:0], 【表格】lunarangelicrobe
	tEighteenChanges_RewardItem[3332249]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LunarAngelicRobe（赠）*1
	tEighteenChanges_RewardItem[3332249]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332249]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===FieryDragon（Hades）
	-- ===索引:tEighteenChanges_RewardItem[3332250]
	-- ===删除:3332250,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332250] = {}
	tEighteenChanges_RewardItem[3332250]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332250]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332250]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332250]["DeleteItem"][1]["Id"] = 3332250 -- 【库】1DFieryDragon(Hades)[属性:9]
	tEighteenChanges_RewardItem[3332250]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332250]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332250]["RewardItem"][1]["Id"] = 200531 -- FieryDragon(Hades)[200531][属性:0][叠加:0][金币:0], 【表格】FieryDragon（Hades）
	tEighteenChanges_RewardItem[3332250]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FieryDragon(Hades)（赠）*1
	tEighteenChanges_RewardItem[3332250]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332250]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===FieryDragon（Hades）
	-- ===索引:tEighteenChanges_RewardItem[3332251]
	-- ===删除:3332251,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332251] = {}
	tEighteenChanges_RewardItem[3332251]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332251]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332251]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332251]["DeleteItem"][1]["Id"] = 3332251 -- 【库】1DCommanderRobe(Wealth)[属性:9]
	tEighteenChanges_RewardItem[3332251]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332251]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332251]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】CommanderRobe（Wealth）
	tEighteenChanges_RewardItem[3332251]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CommanderRobe(Wealth)（赠）*1
	tEighteenChanges_RewardItem[3332251]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332251]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332251]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===RadiantLotus
	-- ===索引:tEighteenChanges_RewardItem[3332252]
	-- ===删除:3332252,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332252] = {}
	tEighteenChanges_RewardItem[3332252]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332252]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332252]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332252]["DeleteItem"][1]["Id"] = 3332252 -- 【库】1DRadiantLotus[属性:9]
	tEighteenChanges_RewardItem[3332252]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332252]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332252]["RewardItem"][1]["Id"] = 200573 -- RadiantLotus[200573][属性:0][叠加:0][金币:0], 【表格】RadiantLotus
	tEighteenChanges_RewardItem[3332252]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RadiantLotus（赠）*1
	tEighteenChanges_RewardItem[3332252]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332252]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332252]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===lunarangelicrobe
	-- ===索引:tEighteenChanges_RewardItem[3332253]
	-- ===删除:3332253,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332253] = {}
	tEighteenChanges_RewardItem[3332253]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332253]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332253]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332253]["DeleteItem"][1]["Id"] = 3332253 -- 【库】3DLunarAngelicRobe[属性:9]
	tEighteenChanges_RewardItem[3332253]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332253]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332253]["RewardItem"][1]["Id"] = 194395 -- LunarAngelicRobe[194395][属性:8][叠加:0][金币:0], 【表格】lunarangelicrobe
	tEighteenChanges_RewardItem[3332253]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑LunarAngelicRobe（赠）*1
	tEighteenChanges_RewardItem[3332253]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332253]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332253]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===FieryDragon（Hades）
	-- ===索引:tEighteenChanges_RewardItem[3332254]
	-- ===删除:3332254,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332254] = {}
	tEighteenChanges_RewardItem[3332254]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332254]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332254]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332254]["DeleteItem"][1]["Id"] = 3332254 -- 【库】3DFieryDragon(Hades)[属性:9]
	tEighteenChanges_RewardItem[3332254]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332254]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332254]["RewardItem"][1]["Id"] = 200531 -- FieryDragon(Hades)[200531][属性:0][叠加:0][金币:0], 【表格】FieryDragon（Hades）
	tEighteenChanges_RewardItem[3332254]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑FieryDragon(Hades)（赠）*1
	tEighteenChanges_RewardItem[3332254]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332254]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332254]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===CommanderRobe（Wealth）
	-- ===索引:tEighteenChanges_RewardItem[3332255]
	-- ===删除:3332255,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332255] = {}
	tEighteenChanges_RewardItem[3332255]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332255]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332255]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332255]["DeleteItem"][1]["Id"] = 3332255 -- 【库】3DCommanderRobe(Wealth)[属性:9]
	tEighteenChanges_RewardItem[3332255]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332255]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332255]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】CommanderRobe（Wealth）
	tEighteenChanges_RewardItem[3332255]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑CommanderRobe(Wealth)（赠）*1
	tEighteenChanges_RewardItem[3332255]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332255]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332255]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===RadiantLotus
	-- ===索引:tEighteenChanges_RewardItem[3332256]
	-- ===删除:3332256,1
	-- ===
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tEighteenChanges_RewardItem[3332256] = {}
	tEighteenChanges_RewardItem[3332256]["LogId"] = 12001781
	tEighteenChanges_RewardItem[3332256]["DeleteItem"] = {}
	tEighteenChanges_RewardItem[3332256]["DeleteItem"][1] = {}
	tEighteenChanges_RewardItem[3332256]["DeleteItem"][1]["Id"] = 3332256 -- 【库】3DRadiantLotus[属性:9]
	tEighteenChanges_RewardItem[3332256]["RewardItem"] = {}
	tEighteenChanges_RewardItem[3332256]["RewardItem"][1] = {}
	tEighteenChanges_RewardItem[3332256]["RewardItem"][1]["Id"] = 200573 -- RadiantLotus[200573][属性:0][叠加:0][金币:0], 【表格】RadiantLotus
	tEighteenChanges_RewardItem[3332256]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑RadiantLotus（赠）*1
	tEighteenChanges_RewardItem[3332256]["RewardEffect"] = {}
	tEighteenChanges_RewardItem[3332256]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEighteenChanges_RewardItem[3332256]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------------------------------逻辑部分-----------------------------------------------------------
-- 获取次数掩码
function EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	return Get_UserStcActiveData(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 获取领奖掩码
function EighteenChanges_GetRewardStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	return Get_UserStcActiveFlag(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 获取阶段的掩码
function EighteenChanges_GetStageStc(nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_ActiveType = tEighteenChanges_Constant["Level"]["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Constant["Level"]["EventType"]
	local nEighteenChanges_Index = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	
	if nEighteenChanges_Index >= G_GetFail then
		return 0
	end
	
	-- 判断掩码是否创建
	if nEighteenChanges_Index == 0 then
		if not EighteenChanges_AddStageStc(nEighteenChanges_UserId) then
			return 0
		end
		
		return 1
	end
	
	return nEighteenChanges_Index
end

-- 增加阶段掩码
function EighteenChanges_AddStageStc(nEighteenChanges_UserId)
	local nEighteenChanges_ActiveType = tEighteenChanges_Constant["Level"]["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Constant["Level"]["EventType"]
	
	-- 获取当前阶段的掩码值
	local nEighteenChanges_Stage = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	if nEighteenChanges_Stage >= G_GetFail then
		return false
	end
	
	if nEighteenChanges_Stage == 0 then
		nEighteenChanges_Stage = 1
	end
	
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil then
		return false
	end
	
	local nEighteenChanges_BigActiveType = tEighteenChanges_Info[nEighteenChanges_Stage]["ActiveType"]
	local nEighteenChanges_BigEventType = tEighteenChanges_Info[nEighteenChanges_Stage]["EventType"]
	local nEighteenChanges_BigData = EighteenChanges_GetNumStc(nEighteenChanges_BigActiveType,nEighteenChanges_BigEventType,nEighteenChanges_UserId)
	local nEighteenChanges_NeedNum = tEighteenChanges_Stc[nEighteenChanges_BigActiveType][nEighteenChanges_BigEventType]["NeedNum"]
	
	if nEighteenChanges_BigData >= G_GetFail then
		return false
	end
	
	if not (nEighteenChanges_Stage == 1 and nEighteenChanges_BigData == 0) then
		if nEighteenChanges_BigData < nEighteenChanges_NeedNum then
			return false
		end
	end

	if EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,1,nEighteenChanges_UserId) then
		local sLog = string.format("%d,%d,%d,%d",nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Stage + 1,0)
		Sys_SaveEighteenChangesLog(sLog,nEighteenChanges_UserId)
		tEighteenChanges_Continuous[nEighteenChanges_UserId] = {}
		return true
	else
		return false
	end
end

-- 增加次数掩码值
function EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Data,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	return User_AddSTCActiveData(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Data,tEighteenChanges_Constant["EndTime"],1,nEighteenChanges_UserId)
end

-- 设置领奖掩码值
function EighteenChanges_SetRewardStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Flag,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_NowUserId)
	
	if nEighteenChanges_Data >= G_GetFail then
		return false
	end
	
	if nEighteenChanges_Data == 0 then
		return false
	end

	return User_SetSTCActiveFlag(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Flag,1,nEighteenChanges_UserId)
end

-- 开启下一阶段
function EighteenChanges_OpenNextStage(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Complete,nEighteenChanges_UserId)
	-- 判断该掩码是否有配置表数据
	if tEighteenChanges_Stc[nEighteenChanges_ActiveType] == nil or tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType] == nil then
		return
	end
	
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	local nEighteenChanges_NeedNum = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["NeedNum"]
	
	if nEighteenChanges_Data >= G_GetFail then
		return false
	end
	
	if nEighteenChanges_Data >= nEighteenChanges_NeedNum then
		EighteenChanges_AddStageStc(nEighteenChanges_UserId)
		return
	end
	
	-- 判断是否已加上值
	if Sys_ParseNumbersContain(nEighteenChanges_Complete,nEighteenChanges_Data) then
		return
	end
	
	if EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Complete,nEighteenChanges_UserId) then
		if nEighteenChanges_Data + nEighteenChanges_Complete >= nEighteenChanges_NeedNum then
			EighteenChanges_AddStageStc(nEighteenChanges_UserId)
			return
		end
	end
end

-- 掩码操作
function EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	-- 判断该掩码是否有配置表数据
	if tEighteenChanges_Stc[nEighteenChanges_ActiveType] == nil or tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType] == nil then
		return false
	end
	
	if Get_SysDynaGlobalData0(tEighteenChanges_Constant["GlobalId"]) >= 1 then
		return false
	end
	
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	local nEighteenChanges_NeedNum = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["NeedNum"]
	local nEighteenChanges_Complete = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["Complete"]
	local nEighteenChanges_BigActiveType = tEighteenChanges_Info[nEighteenChanges_Stage]["ActiveType"]
	local nEighteenChanges_BigEventType = tEighteenChanges_Info[nEighteenChanges_Stage]["EventType"]
	
	if nEighteenChanges_Data >= G_GetFail then
		return false
	end
	
	-- 判断是否已超过
	if nEighteenChanges_Data >= nEighteenChanges_NeedNum then
		EighteenChanges_OpenNextStage(nEighteenChanges_BigActiveType,nEighteenChanges_BigEventType,nEighteenChanges_Complete,nEighteenChanges_UserId)
		return true
	end
	
	-- 增加掩码次数
	if EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,1,nEighteenChanges_UserId) then
		-- 掩码变化的log
		local sLog = string.format("%d,%d,%d,%d",nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Stage,1)
		Sys_SaveEighteenChangesLog(sLog,nEighteenChanges_UserId)
		-- 判断是否已满足完成条件
		if nEighteenChanges_Data + 1 >= nEighteenChanges_NeedNum then
			EighteenChanges_OpenNextStage(nEighteenChanges_BigActiveType,nEighteenChanges_BigEventType,nEighteenChanges_Complete,nEighteenChanges_UserId)
		end
		
		return true
	end
	
	return false
end

-- 积分直接完成任务
function EighteenChanges_CompositeOperat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	-- 判断该掩码是否有配置表数据
	if tEighteenChanges_Stc[nEighteenChanges_ActiveType] == nil or tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType] == nil then
		return false
	end
	
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	local nEighteenChanges_NeedNum = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["NeedNum"]
	local nEighteenChanges_Complete = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["Complete"]
	local nEighteenChanges_BigActiveType = tEighteenChanges_Info[nEighteenChanges_Stage]["ActiveType"]
	local nEighteenChanges_BigEventType = tEighteenChanges_Info[nEighteenChanges_Stage]["EventType"]
	
	if nEighteenChanges_Data >= G_GetFail then
		return false
	end
	--积分完成任务 
	if nEighteenChanges_NeedNum == nil or nEighteenChanges_NeedNum <= 0 then
		return false
	end
	
	-- 判断是否已超过
	if nEighteenChanges_Data >= nEighteenChanges_NeedNum then
		EighteenChanges_OpenNextStage(nEighteenChanges_BigActiveType,nEighteenChanges_BigEventType,nEighteenChanges_Complete,nEighteenChanges_UserId)
		return true
	end
	
	-- 增加掩码次数
	if EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_NeedNum,nEighteenChanges_UserId) then
		-- 掩码变化的log
		local sLog = string.format("%d,%d,%d,%d",nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Stage,nEighteenChanges_NeedNum)
		Sys_SaveEighteenChangesLog(sLog,nEighteenChanges_UserId)
		-- 判断是否已满足完成条件
		if nEighteenChanges_Data + 1 >= nEighteenChanges_NeedNum then
			EighteenChanges_OpenNextStage(nEighteenChanges_BigActiveType,nEighteenChanges_BigEventType,nEighteenChanges_Complete,nEighteenChanges_UserId)
		end
		
		return true
	end
	
	return false
end

-- 参与类
function EighteenChanges_Participate(nEighteenChanges_Stage,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["Participate"] == nil then
		return
	end
	
	-- 参与任意玩法
	EighteenChanges_AllParticipate(nEighteenChanges_Stage,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	
	-- 判断该阶段是否需要参与这类型任务
	if tEighteenChanges_Info[nEighteenChanges_Stage]["Participate"][nEighteenChanges_Index] == nil then
		return
	end
	
	local tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["Participate"][nEighteenChanges_Index]
	
	for i,v in pairs(tEighteenChanges_Snap) do
		local nEighteenChanges_ActiveType = v["ActiveType"]
		local nEighteenChanges_EventType = v["EventType"]
		
		if v["MinSoulId"] ~= nil then
			
			
			if nEighteenChanges_SoulId < v["MinSoulId"] then
				return
			end
		end
		
		EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	end
end

-- 参与任意玩法
function EighteenChanges_AllParticipate(nEighteenChanges_Stage,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 判断该阶段是否需要参与这类型任务
	if tEighteenChanges_Info[nEighteenChanges_Stage]["AllParticipate"] == nil then
		return
	end
	
	local tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["AllParticipate"]
	local nEighteenChanges_ActiveType = tEighteenChanges_Snap["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Snap["EventType"]
	
	if tEighteenChanges_Snap["MinSoulId"] ~= nil then
		if nEighteenChanges_SoulId < tEighteenChanges_Snap["MinSoulId"] then
			return
		end
	end
	
	EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end


-- 挑战类
function EighteenChanges_Challenge(nEighteenChanges_Stage,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["Challenge"] == nil then
		return
	end

	local tEighteenChanges_Snap = {}
	if tEighteenChanges_Info[nEighteenChanges_Stage]["Challenge"]["All"] == nil then
		-- 判断该阶段是否需要参与这类型任务
		if tEighteenChanges_Info[nEighteenChanges_Stage]["Challenge"][nEighteenChanges_Index] == nil then
			return
		end
		
		tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["Challenge"][nEighteenChanges_Index]
	else
		tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["Challenge"]
	end

	-- 判断投入的灵珠ID
	if tEighteenChanges_Snap["MinSoulId"] ~= nil then
		if nEighteenChanges_SoulId < tEighteenChanges_Snap["MinSoulId"] then
			return
		end
	end
	
	local nEighteenChanges_ActiveType = tEighteenChanges_Snap["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Snap["EventType"]
	EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 跳阶类（至少成功跳阶两阶以上）
function EighteenChanges_StepHopping(nEighteenChanges_Stage,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_EndSoulId,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"] == nil then
		return
	end
	
	
	local tEighteenChanges_ChkInfo = {}
	
	-- 判断该阶段是否需要参与这类型任务
	if tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"]["All"] == nil then
		if tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"][nEighteenChanges_Index] == nil then
			return
		end
		
		tEighteenChanges_ChkInfo = tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"][nEighteenChanges_Index]
	else
		tEighteenChanges_ChkInfo = tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"]
	end
	
	-- 判断是否有需求投入几阶
	if tEighteenChanges_ChkInfo["MinSoulId"] ~= nil then
		if nEighteenChanges_SoulId < tEighteenChanges_ChkInfo["MinSoulId"] then
			return
		end
	end
	
	-- 判断是否满足调价需求
	if tEighteenChanges_ChkInfo["MinStepHopping"] ~= nil then
		if nEighteenChanges_EndSoulId - nEighteenChanges_SoulId < tEighteenChanges_ChkInfo["MinStepHopping"] then
			return
		end
	end

	local nEighteenChanges_ActiveType = tEighteenChanges_ChkInfo["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_ChkInfo["EventType"]
	EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 双炉跳阶
-- nEighteenChanges_Type	= 1,表示投放,= 2表示成功,= 3表示失败
function EighteenChanges_DoubleFurnaceStepHopping(nEighteenChanges_Stage,nEighteenChanges_Type,nEighteenChanges_Index,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["StepHopping"] == nil then
		return
	end
	
	-- 初始话数据
	if tEighteenChanges_DoubleFurnace == nil or tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId] == nil then
		tEighteenChanges_DoubleFurnace = {}
		tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId] = {}
	end
	-- tEighteenChanges_DoubleFurnace = tEighteenChanges_DoubleFurnace or {}
	-- tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId] = tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId] or {}
	
	if nEighteenChanges_Type == 1 then
		tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MinSoulId"] = nEighteenChanges_SoulId
	elseif nEighteenChanges_Type == 3 then
		tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId] = {}
	elseif nEighteenChanges_Type == 2 then
		
		tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MaxSoulId"] = nEighteenChanges_SoulId
		
	end
	
	if tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MinSoulId"] ~= nil and tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MaxSoulId"] ~= nil then
		
		if tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MaxSoulId"] - tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MinSoulId"] > 2 then

			EighteenChanges_StepHopping(nEighteenChanges_Stage,nEighteenChanges_Index,tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MinSoulId"],tEighteenChanges_DoubleFurnace[nEighteenChanges_UserId]["MaxSoulId"],nEighteenChanges_UserId)
		end
	end
end

-- 连续成功
-- nEighteenChanges_Type	=1,表示成功 =2,表示失败
function EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,nEighteenChanges_Type,nEighteenChanges_Index,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["Continuous"] == nil then
		return
	end

	-- 判断是否有配置该类型
	if tEighteenChanges_Info[nEighteenChanges_Stage]["Continuous"][nEighteenChanges_Index] == nil then
		return
	end

	if tEighteenChanges_Continuous[nEighteenChanges_UserId] == nil then
		tEighteenChanges_Continuous[nEighteenChanges_UserId] = {}
	end

	if tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] == nil then
		tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] = 0
	end

	-- 判断是成功还是失败
	if nEighteenChanges_Type == 1 then
		tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] = tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] + 1
		local tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["Continuous"][nEighteenChanges_Index]
		local nEighteenChanges_MinNum = tEighteenChanges_Snap["MinNum"]
		
		if tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] >= nEighteenChanges_MinNum then
			local nEighteenChanges_ActiveType = tEighteenChanges_Snap["ActiveType"]
			local nEighteenChanges_EventType = tEighteenChanges_Snap["EventType"]
			
			if EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId) then
				tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] = nil
			end
		end
	else
		tEighteenChanges_Continuous[nEighteenChanges_UserId][nEighteenChanges_Index] = 0
	end
end

-- 累计类
function EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["GrandTotal"] == nil then
		return
	end
	
	local tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["GrandTotal"]
	local nEighteenChanges_ActiveType = tEighteenChanges_Snap["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Snap["EventType"]
	
	EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 合成几阶类
function EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 判断是否该阶段有配参与值
	if tEighteenChanges_Info[nEighteenChanges_Stage] == nil or tEighteenChanges_Info[nEighteenChanges_Stage]["Composite"] == nil then
		return
	end
	
	local tEighteenChanges_Snap = tEighteenChanges_Info[nEighteenChanges_Stage]["Composite"]
	local nEighteenChanges_MinSoulId = tEighteenChanges_Snap["MinSoulId"]
	
	if nEighteenChanges_SoulId < nEighteenChanges_MinSoulId then
		return
	end
	
	local nEighteenChanges_ActiveType = tEighteenChanges_Snap["ActiveType"]
	local nEighteenChanges_EventType = tEighteenChanges_Snap["EventType"]
	EighteenChanges_Operat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 界面重铸
function EighteenChanges_BagRecast(nEighteenChanges_UserId,nEighteenChanges_DragonSoulId,nEighteenChanges_MaxLev,nEighteenChanges_AllLev)
	if nEighteenChanges_DragonSoulId >= 4200013 then
		return
	end
	
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)

	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,1,nEighteenChanges_DragonSoulId,nEighteenChanges_UserId)
	-- 累计
	EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)

	-- 挑战
	if nEighteenChanges_AllLev > 0 then
		EighteenChanges_Challenge(nEighteenChanges_Stage,2,nEighteenChanges_DragonSoulId,nEighteenChanges_UserId)
		-- 连续成功
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,1,2,nEighteenChanges_UserId)
		-- 合成几阶类
		EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_DragonSoulId+nEighteenChanges_MaxLev,nEighteenChanges_UserId)
		-- 跳阶类（至少成功跳阶两阶以上）
		if nEighteenChanges_MaxLev >= 2 then
			EighteenChanges_StepHopping(nEighteenChanges_Stage,2,nEighteenChanges_DragonSoulId,nEighteenChanges_DragonSoulId+nEighteenChanges_MaxLev,nEighteenChanges_UserId)
		end
	else
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,2,2,nEighteenChanges_UserId)
	end
end

-- 装备重铸
function EighteenChanges_EquipRecast(nEighteenChanges_UserId,nEighteenChanges_DragonSoulId,nEighteenChanges_MaxLev,nEighteenChanges_AllLev)
	if nEighteenChanges_DragonSoulId >= 4200013 then
		return
	end
	
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,1,nEighteenChanges_DragonSoulId,nEighteenChanges_UserId)
	-- 累计
	EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)
	-- 挑战
	if nEighteenChanges_AllLev > 0 then
		EighteenChanges_Challenge(nEighteenChanges_Stage,2,nEighteenChanges_DragonSoulId,nEighteenChanges_UserId)
		-- 连续成功
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,1,2,nEighteenChanges_UserId)
		-- 合成几阶类
		EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_DragonSoulId+nEighteenChanges_MaxLev,nEighteenChanges_UserId)
		-- 跳阶类（至少成功跳阶两阶以上）
		if nEighteenChanges_MaxLev >= 2 then
			EighteenChanges_StepHopping(nEighteenChanges_Stage,2,nEighteenChanges_DragonSoulId,nEighteenChanges_DragonSoulId+nEighteenChanges_MaxLev,nEighteenChanges_UserId)
		end
	else
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,2,2,nEighteenChanges_UserId)
	end
end

-- NPC重铸
function EighteenChanges_Recast(nEighteenChanges_SoulId,tEighteenChanges_Award,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,5,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 累计
	EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)
	
	-- 判断是否成功
	if tEighteenChanges_Award["Item_1"] ~= nil and tEighteenChanges_Award["Item_1"] == 0 then
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,2,6,nEighteenChanges_UserId)
	else
		-- 重铸成功、等阶不变、额外获得低阶龙灵
		if tEighteenChanges_Award["Item_1"] == nil and tEighteenChanges_Award["RewardItem"][1]["Id"] ~= nil then
			-- 合成几阶类
			EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_SoulId,nEighteenChanges_UserId)
		-- 重铸成功、龙灵升阶
		elseif tEighteenChanges_Award["Item_1"] ~= nil and tEighteenChanges_Award["Item_1"] ~= 0 then
			-- 合成几阶类
			EighteenChanges_Composite(nEighteenChanges_Stage,tEighteenChanges_Award["Item_1"],nEighteenChanges_UserId)
			-- 跳阶类（至少成功跳阶两阶以上）
			if tEighteenChanges_Award["Item_1"] - nEighteenChanges_SoulId >= 2 then
				EighteenChanges_StepHopping(nEighteenChanges_Stage,6,nEighteenChanges_SoulId,tEighteenChanges_Award["Item_1"],nEighteenChanges_UserId)
			end
		end

		-- 挑战
		EighteenChanges_Challenge(nEighteenChanges_Stage,6,nEighteenChanges_SoulId,nEighteenChanges_UserId)
		-- 连续成功
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,1,6,nEighteenChanges_UserId)
	end
end

-- NPC冶炼参与
function EighteenChanges_ParticipateDoubleFurnace(nEighteenChanges_SoulId,nEighteenChanges_NowUserId,nEighteenChanges_ServerId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	-- 判断是否在跨服
	if User_IsCrossByGSID(nEighteenChanges_ServerId,nEighteenChanges_UserId) then
		User_AddOSSTCActiveData(nEighteenChanges_ServerId,nEighteenChanges_SoulId,7,0,0,0,nEighteenChanges_UserId)
		return
	end
	
	EighteenChanges_ParticipateDoubleFurnaceNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
end

function EighteenChanges_ParticipateDoubleFurnaceNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	if nEighteenChanges_Stage == 0 then
		return false
	end

	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,7,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 累计
	EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)
	-- 双炉跳阶
	EighteenChanges_DoubleFurnaceStepHopping(nEighteenChanges_Stage,1,8,nEighteenChanges_SoulId,nEighteenChanges_UserId)
end

-- NPC冶炼成功
function EighteenChanges_DoubleFurnaceSuccess(nEighteenChanges_SoulId,nEighteenChanges_NowUserId,nEighteenChanges_ServerId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	-- 判断是否在跨服
	if User_IsCrossByGSID(nEighteenChanges_ServerId,nEighteenChanges_UserId) then
		User_AddOSSTCActiveData(nEighteenChanges_ServerId,nEighteenChanges_SoulId,8,1,0,0,nEighteenChanges_UserId)
		return
	end
	
	EighteenChanges_DoubleFurnaceSuccessNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
end

function EighteenChanges_DoubleFurnaceSuccessNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 挑战
	EighteenChanges_Challenge(nEighteenChanges_Stage,8,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 连续成功
	EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,1,8,nEighteenChanges_UserId)
	-- 合成几阶类
	EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 跳阶类（至少成功跳阶两阶以上）
	EighteenChanges_DoubleFurnaceStepHopping(nEighteenChanges_Stage,2,8,nEighteenChanges_SoulId,nEighteenChanges_UserId)
end

-- NPC冶炼失败
function EighteenChanges_DoubleFurnaceFail(nEighteenChanges_SoulId,nEighteenChanges_NowUserId,nEighteenChanges_ServerId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	
	-- 判断是否在跨服
	if User_IsCrossByGSID(nEighteenChanges_ServerId,nEighteenChanges_UserId) then
		User_AddOSSTCActiveData(nEighteenChanges_ServerId,nEighteenChanges_SoulId,8,2,0,0,nEighteenChanges_UserId)
		return
	end
	
	EighteenChanges_DoubleFurnaceFailNext(nEighteenChanges_UserId)
end

function EighteenChanges_DoubleFurnaceFailNext(nEighteenChanges_UserId)
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 连续成功
	EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,2,8,nEighteenChanges_UserId)
	-- 跳阶类（至少成功跳阶两阶以上）
	EighteenChanges_DoubleFurnaceStepHopping(nEighteenChanges_Stage,3,8,0,nEighteenChanges_UserId)
end

-- 跨服回调
function EighteenChanges_DoubleFurnaceOnGS(nEighteenChanges_UserId,nEighteenChanges_SoulId,nEighteenChanges_Index,nEighteenChanges_Type,nEighteenChanges_EndTime,nEighteenChanges_Notify)
	if nEighteenChanges_Index == 7 then
		EighteenChanges_ParticipateDoubleFurnaceNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
	elseif nEighteenChanges_Index == 8 then
		if nEighteenChanges_Type == 1 then
			EighteenChanges_DoubleFurnaceSuccessNext(nEighteenChanges_UserId,nEighteenChanges_SoulId)
		elseif nEighteenChanges_Type == 2 then
			EighteenChanges_DoubleFurnaceFailNext(nEighteenChanges_UserId)
		end
	end
end

-- NPC融合
-- nEighteenChanges_Type	=1,表示失败,=2表示成功
function EighteenChanges_Fusion(nEighteenChanges_SoulId,nEighteenChanges_Type,nEighteenChanges_EndSoulId,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,9,nEighteenChanges_SoulId,nEighteenChanges_UserId)
	-- 累计
	EighteenChanges_GrandTotal(nEighteenChanges_Stage,nEighteenChanges_UserId)
	
	-- 挑战
	if nEighteenChanges_Type == 2 then
		EighteenChanges_Challenge(nEighteenChanges_Stage,10,nEighteenChanges_SoulId,nEighteenChanges_UserId)
		-- 连续成功
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,1,10,nEighteenChanges_UserId)
		-- 合成几阶类
		EighteenChanges_Composite(nEighteenChanges_Stage,nEighteenChanges_EndSoulId,nEighteenChanges_UserId)
		-- 跳阶类（至少成功跳阶两阶以上）
		if nEighteenChanges_EndSoulId - nEighteenChanges_SoulId >= 2 then
			EighteenChanges_StepHopping(nEighteenChanges_Stage,10,nEighteenChanges_SoulId,nEighteenChanges_EndSoulId,nEighteenChanges_UserId)
			
			
		end
	else
		-- 连续成功
		EighteenChanges_ContinuousSuccess(nEighteenChanges_Stage,2,10,nEighteenChanges_UserId)
	end
end

-- 右键兑换掉灵珠
function EighteenChanges_Exchange(nEighteenChanges_SoulId,nEighteenChanges_NowUserId)
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,11,nEighteenChanges_SoulId,nEighteenChanges_UserId)
end

-- 界面升级
function EighteenChanges_UpLevel(nEighteenChanges_UserId,nEighteenChanges_DragonSoulId,nEighteenChanges_MaxLev,nEighteenChanges_AllLev,nEighteenChanges_Bag)
	-- 判断是界面还是装备内嵌
	if nEighteenChanges_Bag == 1 then
		EighteenChanges_BagRecast(nEighteenChanges_UserId,nEighteenChanges_DragonSoulId,nEighteenChanges_MaxLev,nEighteenChanges_AllLev)
	else
		EighteenChanges_EquipRecast(nEighteenChanges_UserId,nEighteenChanges_DragonSoulId,nEighteenChanges_MaxLev,nEighteenChanges_AllLev)
	end
end
--界面重铸
function EighteenChanges_InterfaceRecast(nEighteenChanges_SoulId,nEighteenChanges_NowUserId)
	
	if nEighteenChanges_SoulId >= 4200013 then
		return
	end
	
	local nEighteenChanges_UserId = nEighteenChanges_NowUserId or Get_UserId()
	local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
	
	if nEighteenChanges_Stage == 0 then
		return false
	end
	
	-- 参与
	EighteenChanges_Participate(nEighteenChanges_Stage,12,nEighteenChanges_SoulId,nEighteenChanges_UserId)
end

-- 领取奖励
function EighteenChanges_Reward(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	-- 获取掩码值
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	local tEighteenChanges_Snap = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]
	local nEighteenChanges_NeedData = tEighteenChanges_Snap["NeedNum"]
	
	if nEighteenChanges_Data >= G_GetFail then
		return false
	end
	
	if nEighteenChanges_Data < nEighteenChanges_NeedData then
		return false
	end
	
	-- 获取领奖掩码
	local nEighteenChanges_Flag = EighteenChanges_GetRewardStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	
	if nEighteenChanges_Flag >= G_GetFail then
		return false
	end
	
	if nEighteenChanges_Flag > 0 then
		return false
	end
	
	local nEighteenChanges_RewardIndex = tEighteenChanges_Snap["RewardIndex"]
	
	if tEighteenChanges_Reward[nEighteenChanges_RewardIndex] == nil then
		return false
	end
	
	-- 判断背包空间
	local nEighteenChanges_RewardSpace = RewardTemplate_GetRewardSpace(tEighteenChanges_Reward[nEighteenChanges_RewardIndex],nEighteenChanges_UserId)
	local nEighteenChanges_DelSpace = RewardTemplate_GetDelSpace(tEighteenChanges_Reward[nEighteenChanges_RewardIndex],nEighteenChanges_UserId)
	local nEighteenChanges_Space = nEighteenChanges_RewardSpace - nEighteenChanges_DelSpace
	
	if nEighteenChanges_Space > 0 and (not User_CheckLeftSpace(nEighteenChanges_Space,nEighteenChanges_UserId)) then
		local sEighteenChanges_Coent = tEighteenChanges_Reward[nEighteenChanges_RewardIndex]["NoSpace"]
		
		if sEighteenChanges_Coent == nil then
			sEighteenChanges_Coent = string.format(tRewardTemplate_Text["NoSpace"],nEighteenChanges_Space)
		end
		Sys_MsgBox(sEighteenChanges_Coent,nil,nil,nEighteenChanges_UserId)
		return false
	end
	
	-- 设置领取奖励掩码
	if EighteenChanges_SetRewardStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,1,nEighteenChanges_UserId) then
		local sLog = string.format("%d,%d,%d,%d,flag",nEighteenChanges_ActiveType,nEighteenChanges_EventType,0,1)
		Sys_SaveEighteenChangesLog(sLog,nEighteenChanges_UserId)
		if RewardTemplate_UseItemAndMsg(tEighteenChanges_Reward[nEighteenChanges_RewardIndex],nEighteenChanges_UserId) then
			if tEighteenChanges_RwardText[nEighteenChanges_ActiveType][nEighteenChanges_EventType] ~= nil then
				-- 1~3阶段：使用聊天全服广播（最后增加一个 我也要前往 的链接点击）
				local n = nEighteenChanges_UserId
				local sEighteenChanges_Fun = "FFFF0000 </F>User_OpenDialog</N>1027"
				local nEighteenChanges_TextStage = tEighteenChanges_RwardText[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["TextStage"]
				local sEighteenChanges_Text = string.format(tEighteenChanges_RwardText[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["Text"],Get_UserName(nEighteenChanges_UserId),nEighteenChanges_TextStage,sEighteenChanges_Fun)
				local sEighteenChanges_RewardText = string.format(tEighteenChanges_Text["STR_Eighteen_Changes"],Get_UserName(nEighteenChanges_UserId),nEighteenChanges_TextStage,sEighteenChanges_Fun)
				
				
				
				if nEighteenChanges_TextStage >= 1 and nEighteenChanges_TextStage <=3 then
					Sys_TalkBroadcast(sEighteenChanges_Text)
				-- 4~7阶段：上中奖频道和全服聊天广播
				elseif nEighteenChanges_TextStage >= 4 and nEighteenChanges_TextStage <=7 then
					Sys_TalkBroadcast(sEighteenChanges_Text)
					Sys_DragonSoulUpLevToHomeServer(sEighteenChanges_Text,nil,0)
				-- 8~9阶段：上屏幕走马灯+全服广播
				else
					Sys_TalkBroadcast(sEighteenChanges_Text)
					Sys_DragonSoulUpLevToHomeServer(sEighteenChanges_RewardText,nil,1)
				end
			end
		end
	end
end

-- 领取大奖判断
function EighteenChanges_ChkGrandPrize(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	local nEighteenChanges_Data = EighteenChanges_GetNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	-- 判断是否满足领取条件
	for i,v in pairs(tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["Complete"]) do
		local nEighteenChanges_NeedActiveType = v["ActiveType"]
		local nEighteenChanges_NeedEventType = v["EventType"]
		local nEighteenChanges_NeedFlag = v["Data"]
		local nEighteenChanges_TotalFlag = Get_UserStcActiveFlag(nEighteenChanges_NeedActiveType,nEighteenChanges_NeedEventType,nEighteenChanges_UserId)
		
		if nEighteenChanges_TotalFlag < nEighteenChanges_NeedFlag then
			return
		else
			local nEighteenChanges_NeedData = tEighteenChanges_Stc[nEighteenChanges_NeedActiveType][nEighteenChanges_NeedEventType]["Complete"]
			if not Sys_ParseNumbersContain(nEighteenChanges_NeedData,nEighteenChanges_Data) then
				EighteenChanges_AddNumStc(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_NeedData,nEighteenChanges_UserId)
			end
		end
	end
	
	EighteenChanges_Reward(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
end

-- 领取奖励类型判断
function EighteenChanges_ChkReward(nEighteenChanges_UserId,nEighteenChanges_Process,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_Step)
	if Get_SysDynaGlobalData0(tEighteenChanges_Constant["GlobalId"]) >= 1 then
		return false
	end
	
	--完成任务判断
	if nEighteenChanges_Process == 1 then
		local nEighteenChanges_Stage = EighteenChanges_GetStageStc(nEighteenChanges_UserId)
		
		if nEighteenChanges_Stage >= G_GetFail then
			return false
		end
		
		if nEighteenChanges_Stage == 0 then
			nEighteenChanges_Stage = 1
		end
		
		
		local nEighteenChanges_ActiveTypeInt = tEighteenChanges_Constant["Integration"]["ActiveType"]
		local nEighteenChanges_EventTypeInt = tEighteenChanges_Constant["Integration"]["EventType"]
		local nEighteenChanges_Integration = EighteenChanges_GetNumStc(nEighteenChanges_ActiveTypeInt,nEighteenChanges_EventTypeInt,nEighteenChanges_UserId)
	
	
		if tEighteenChanges_Stc[nEighteenChanges_ActiveType] == nil or tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType] == nil then
			return
		end
		local nEighteenChanges_NeedTaskNum = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["NeedTaskNum"]
		local nEighteenChanges_NeedNum = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]["NeedNum"]
		
		if nEighteenChanges_Integration < nEighteenChanges_NeedTaskNum then
			return
		end
		--完成任务
		if User_DecSTCActiveData(nEighteenChanges_ActiveTypeInt,nEighteenChanges_EventTypeInt,nEighteenChanges_NeedTaskNum,1,nEighteenChanges_UserId) then
			EighteenChanges_CompositeOperat(nEighteenChanges_Stage,nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
		end
	end
	
	if nEighteenChanges_Process == 0 then
		-- 判断掩码数据是否有配置
		if tEighteenChanges_Stc[nEighteenChanges_ActiveType] == nil or tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType] == nil then
			return
		end
		
		local tEighteenChanges_Snap = tEighteenChanges_Stc[nEighteenChanges_ActiveType][nEighteenChanges_EventType]
		
		-- 判断是否领取大奖
		if tEighteenChanges_Snap["GrandPrize"] ~= nil then
			EighteenChanges_ChkGrandPrize(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
			return
		end
		
		EighteenChanges_Reward(nEighteenChanges_ActiveType,nEighteenChanges_EventType,nEighteenChanges_UserId)
	
	end
end

function EighteenChanges_AddIntegration(nEighteenChanges_AddIntegration)

	local nEighteenChanges_ActiveTypeInt = tEighteenChanges_Constant["Integration"]["ActiveType"]
	local nEighteenChanges_EventTypeInt = tEighteenChanges_Constant["Integration"]["EventType"]
	local nEighteenChanges_Integration = EighteenChanges_GetNumStc(nEighteenChanges_ActiveTypeInt,nEighteenChanges_EventTypeInt,nEighteenChanges_UserId)
	
	if nEighteenChanges_Integration == nil then
		nEighteenChanges_Integration = 0
	end
	
	if User_AddSTCActiveData(nEighteenChanges_ActiveTypeInt,nEighteenChanges_EventTypeInt,nEighteenChanges_AddIntegration,tEighteenChanges_Constant["EndTime"],1,nEighteenChanges_UserId) then
		
	end
	
end

-- 服务器启动时转换成具体时间戳
function EighteenChanges_StartServer()
	local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(tEighteenChanges_Constant["ActivetyTime"])
	local nTime = os.time{year = tonumber(sEndYear),month = tonumber(sEndMonth),day = tonumber(sEndDay),hour = tonumber(sEndHour),min = tonumber(sEndMinute),sec = 59}
	
	tEighteenChanges_Constant["EndTime"] = nTime
end

table.insert(tProcessUserSTCActiveUplevSpirit["tFunction"],EighteenChanges_UpLevel)
table.insert(tProcessUserSTCActive["tFunction"],EighteenChanges_ChkReward)
table.insert(tProcessOSUserSTCActiveDataOnGS["tFunction"],EighteenChanges_DoubleFurnaceOnGS)
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],EighteenChanges_StartServer)


-----------------------------------物品模板------------------------------------
tItem[3327231] = tItem[3327231] or {}
tItem[3327231]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(25759)
end


-----------------------------------Npc逻辑------------------------------------
function EighteenChanges_NpcMain(nEighteenChanges_nIndex)
	local nEighteenChanges_ItemId = tEighteenChanges_ExchangeShop["ItemId"][nEighteenChanges_nIndex]
	local nEighteenChanges_ExchangeNum = tEighteenChanges_ExchangeShop["ExchangeNum"][nEighteenChanges_nIndex]
	local nEighteenChanges_ChangItemId = 3327231
	
	local nEighteenChanges_GolbalId = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["GolbalId"]
	local nEighteenChanges_Pos = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["Pos"]
	local nEighteenChanges_LimitData = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["LimitData"]
	
	if Get_SysDynaGlobalData(nEighteenChanges_GolbalId,nEighteenChanges_Pos) >= nEighteenChanges_LimitData then
		Sys_MsgBox(tEighteenChanges_Text["Limit"])
		return
	end
	
	if not Item_ChkMulItem(nEighteenChanges_ChangItemId,nEighteenChanges_ChangItemId,nEighteenChanges_ExchangeNum) then
		
		LinkNpcGossipFunc_New(25759, "2-1")
		return
	end
	
	tNpcGossip[25759]["OptionFunc221"] = "EighteenChanges_ExchangeItem</N>" .. nEighteenChanges_nIndex
	tNpcGossip[25759]["Text221"] = string.format(tEighteenChanges_Text[25759]["Text221"],nEighteenChanges_ExchangeNum,Get_ItemtypeName(nEighteenChanges_ItemId))
	LinkNpcGossipFunc_New(25759, "2-2")
end

function EighteenChanges_ExchangeItem(nEighteenChanges_nIndex)
	local nEighteenChanges_ItemId = tEighteenChanges_ExchangeShop["ItemId"][nEighteenChanges_nIndex]
	local nEighteenChanges_ExchangeNum = tEighteenChanges_ExchangeShop["ExchangeNum"][nEighteenChanges_nIndex]
	local nEighteenChanges_ChangItemId = 3327231
	if not Item_ChkMulItem(nEighteenChanges_ChangItemId,nEighteenChanges_ChangItemId,nEighteenChanges_ExchangeNum) then
		LinkNpcGossipFunc_New(25759, "2-1")
		return
	end
	
	local nEighteenChanges_GolbalId = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["GolbalId"]
	local nEighteenChanges_Pos = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["Pos"]
	local nEighteenChanges_LimitData = tEighteenChanges_ExchangeShop["ExchangeLimit"][nEighteenChanges_ItemId]["LimitData"]
	
	if Get_SysDynaGlobalData(nEighteenChanges_GolbalId,nEighteenChanges_Pos) >= nEighteenChanges_LimitData then
		Sys_MsgBox(tEighteenChanges_Text["Limit"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tEighteenChanges_Text["NoSpace"])
		return
	end
	
	
	
	if Item_ChkMulItem(nEighteenChanges_ChangItemId,nEighteenChanges_ChangItemId,nEighteenChanges_ExchangeNum) and Item_DelMulItem(nEighteenChanges_ChangItemId,nEighteenChanges_ChangItemId,nEighteenChanges_ExchangeNum) then
		local nEighteenChanges_Data = Get_SysDynaGlobalData(nEighteenChanges_GolbalId,nEighteenChanges_Pos)
		nEighteenChanges_Data = nEighteenChanges_Data + 1
		Sys_SetSynaGlobalData(nEighteenChanges_GolbalId,nEighteenChanges_Pos,nEighteenChanges_Data)
		
		RewardTemplate_UseItem(tEighteenChanges_ExchangeReward[25759][nEighteenChanges_nIndex])
	end
	
end

-----------------------------------Npc模板------------------------------------

-- 【重铸龙灵】铸龙台
tNpcFace[1537] = 2093
tNpcGossip[25759] = tNpcGossip[25759] or DefaultNpc:new{}
tNpcGossip[25759]["OptionHidden"] = 1
tNpcGossip[25759]["DialogueText"] = tEighteenChanges_Text[25759]


tNpcGossip[25759]["Text1-1"] = {111,112}
tNpcGossip[25759]["tOption1-1"] = {111}
tNpcGossip[25759]["OptionFunc111"] = "User_OpenExchangeShop</N>25759"
tNpcGossip[25759]["OptionFunc112"] = "EighteenChanges_NpcMain</N>1"
tNpcGossip[25759]["OptionFunc113"] = "EighteenChanges_NpcMain</N>2"
tNpcGossip[25759]["OptionFunc114"] = "EighteenChanges_NpcMain</N>3"
tNpcGossip[25759]["OptionFunc115"] = "EighteenChanges_NpcMain</N>4"
tNpcGossip[25759]["OptionFunc116"] = "EighteenChanges_NpcMain</N>5"
tNpcGossip[25759]["OptionFunc117"] = "EighteenChanges_NpcMain</N>6"
tNpcGossip[25759]["OptionFunc118"] = "EighteenChanges_NpcMain</N>7"

tNpcGossip[25759]["Text2-1"] = {211}
tNpcGossip[25759]["tOption2-1"] = {211}

tNpcGossip[25759]["Text2-2"] = {221}
tNpcGossip[25759]["tOption2-2"] = {221,222}
tNpcGossip[25759]["OptionFunc221"] = "EighteenChanges_ExchangeItem</N>1"

-----------------------------------Npc模板------------------------------------
tItem[3332006] = tItem[3332006] or {}
tItem[3332006]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(26976)
end

tItem[3332007] = tItem[3332007] or {}
tItem[3332007]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tEighteenChanges_RewardItem[nItemId])
end

tItem[3332008] = tItem[3332007] or {}
tItem[3332009] = tItem[3332007] or {}
tItem[3332010] = tItem[3332007] or {}
tItem[3332011] = tItem[3332007] or {}
tItem[3332012] = tItem[3332007] or {}
tItem[3332013] = tItem[3332007] or {}
tItem[3332014] = tItem[3332007] or {}
tItem[3332015] = tItem[3332007] or {}
tItem[3332016] = tItem[3332007] or {}
tItem[3332017] = tItem[3332007] or {}


tItem[3332219] = tItem[3332219] or {}
tItem[3332219]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tEighteenChanges_Constant["ActivetyTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tEighteenChanges_RewardItem[nItemId])
end
tItem[3332220] = tItem[3332219] or {}
tItem[3332221] = tItem[3332219] or {}
tItem[3332222] = tItem[3332219] or {}
tItem[3332223] = tItem[3332219] or {}
tItem[3332224] = tItem[3332219] or {}
tItem[3332225] = tItem[3332219] or {}
tItem[3332226] = tItem[3332219] or {}
tItem[3332227] = tItem[3332219] or {}
tItem[3332228] = tItem[3332219] or {}
tItem[3332229] = tItem[3332219] or {}
tItem[3332230] = tItem[3332219] or {}
tItem[3332231] = tItem[3332219] or {}
tItem[3332232] = tItem[3332219] or {}
tItem[3332233] = tItem[3332219] or {}
tItem[3332234] = tItem[3332219] or {}
tItem[3332235] = tItem[3332219] or {}
tItem[3332236] = tItem[3332219] or {}
tItem[3332237] = tItem[3332219] or {}
tItem[3332238] = tItem[3332219] or {}
tItem[3332239] = tItem[3332219] or {}
tItem[3332240] = tItem[3332219] or {}
tItem[3332241] = tItem[3332219] or {}
tItem[3332242] = tItem[3332219] or {}
tItem[3332243] = tItem[3332219] or {}
tItem[3332244] = tItem[3332219] or {}
tItem[3332245] = tItem[3332219] or {}
tItem[3332246] = tItem[3332219] or {}
tItem[3332247] = tItem[3332219] or {}
tItem[3332248] = tItem[3332219] or {}
tItem[3332249] = tItem[3332219] or {}
tItem[3332250] = tItem[3332219] or {}
tItem[3332251] = tItem[3332219] or {}
tItem[3332252] = tItem[3332219] or {}
tItem[3332253] = tItem[3332219] or {}
tItem[3332254] = tItem[3332219] or {}
tItem[3332255] = tItem[3332219] or {}
tItem[3332256] = tItem[3332219] or {}

