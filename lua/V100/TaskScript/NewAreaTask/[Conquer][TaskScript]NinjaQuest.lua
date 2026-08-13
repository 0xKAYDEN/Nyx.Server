------------------------------------------------------------------------------------
--Name:  	200215[简体征服][任务脚本]忍者觉醒版本-忍者职业剧情任务
--Creator:	兰瑞妹
--Created:	2020-02-15
------------------------------------------------------------------------------------
-- task_detail（任务id）说明
-- 4301		雾隠才藏
-- 4302		忍者秘辛
-- 4303		不速之客
-- 4304		前尘旧忆
-- 4305		随身手记
-- 4306		忍术法印
-- 4307		八门遁甲 开启开门和休门
-- 4308		妙木仙山
-- 4309		敌我不知(一)
-- 4310		敌我不知(二)
-- 4311		经年旧友
-- 4312		真相大白(一)
-- 4313		脱出牢笼
-- 4314		东瀛来袭(一)
-- 4315		东瀛来袭(二)
-- 4316		东瀛来袭(三)
-- 4317		冰释前嫌
-- 4318		昆虫盛宴
-- 4319		大恩大德
-- 4320		仙术之谜
-- 4321		八门之谜
-- 4322		自然之力
-- 4323		开启生门 开启生门
-- 4324		最佳导师
-- 4370		提升修为
-- 4325		仙术修行
-- 4326		真实之谷
-- 4327		伤门试炼 开启伤门
-- 4328		速度极限
-- 4392		提升修为
-- 4329		杜门试炼
-- 4330		捉虫大战 开启杜门
-- 4331		力量极限
-- 4332		再入谷底
-- 4333		景门试炼 开启景门
-- 4334		恢复训练
-- 4395		提升修为
-- 4335		惊门之谜
-- 4336		年迈的影(一)
-- 4337		年迈的影(二)
-- 4338		最强幻术
-- 4339		幻术克星 开启惊门
-- 4340		最后一关
-- 4341		死门之谜
-- 4342		重归故里
-- 4343		寻找火影(一)
-- 4344		寻找火影(二)
-- 4345		寻找火影(三)
-- 4346		苦口婆心
-- 4347		三忍之战
-- 4348		风影踪迹(一)
-- 4349		风影踪迹(二)
-- 4350		风影踪迹(三)
-- 4351		风影踪迹(四)
-- 4352		风影踪迹(五)
-- 4353		童年真相
-- 4354		山野村夫(一)
-- 4355		山野村夫(二)
-- 4356		难言之隐
-- 4357		怪物牛鬼
-- 4358		躲避相亲(一)
-- 4359		躲避相亲(二)
-- 4360		躲避相亲(三)
-- 4361		忍刀七人众
-- 4362		五影大会
-- 4363		秽土转生
-- 4364		战前准备
-- 4396		提升修为
-- 4365		突袭鬼岛
-- 4366		忍者丧钟
-- 4367		生死一线
-- 4368		死而复生 开启死门
-- 4369		仙人之体


--------------------------------------额外部分
-- logid 18000222

-- #stc 掩码说明 
-- #stc(215,76) 记录是否发过邮件
-- #stc(217,65) 记录玩家捉虫大战采集的数量
-- #stc(218,12) 记录玩家选择过的勾玉类型 == 陈莺商店部分使用
-- ==1选择豪火球之印
-- ==2选择镰鼬之印
-- ==3选择雷切之印
-- ==4选择水龙之印
-- ==5选择尘遁之印
-- #stc(218,44) 记录玩家可选包选择过的勾玉类型 二进制
-- 含2^1表示选择豪火球之印 含2^2表示选择水龙之印 含2^3表示选择镰鼬之印
-- 含2^4表示选择雷切之印 含2^5表示选择尘遁之印
-- #stc(218,45) 记录玩家可选包选择过的勾玉类型 二进制
-- 含2^1表示选择豪火法印·疾 含2^2表示选择水龙法印·澎湃 含2^3表示选择镰鼬法印·风驰
-- 含2^4表示选择雷切法印·神威 含2^5表示选择尘遁法印·天绝
-- #stc(218,64) 标志已经领取奖励

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tNinjaQuest_Count = {}
	-- 可参与等级
	tNinjaQuest_Count["Level"] = 40
	tNinjaQuest_Count["Mete"] = 0
	
	-- 初始任务ID
	tNinjaQuest_Count["StartId"] = 4301
	-- 结束任务ID
	tNinjaQuest_Count["EndId"] = 4369
	
	-- 所有任务
	tNinjaQuest_Count["AllQuest"] = {}
	tNinjaQuest_Count["AllQuest"][1] = {4301,4370}
	tNinjaQuest_Count["AllQuest"][2] = {4392,4395,4396}
	
	-- 特殊任务ID
	tNinjaQuest_Count["SepTaskId"] = 4366
	
	-- 上线发邮件
	tNinjaQuest_Count["ExistDay"] = 3
	tNinjaQuest_Count["ActionId"] = 97500037
	tNinjaQuest_Count["ActionIdNew"] = 97500080
	
	-- 忍者类型
	tNinjaQuest_Count["ProType"] = 5
	
	-- 读条
	tNinjaQuest_Count["TrapToTask"] = {4326,4334,4432,4441}
	-- 中间任务对应陷阱
	tNinjaQuest_Count["TaskToTrap"] = {}
	tNinjaQuest_Count["TaskToTrap"][4303] = 2552
	
	-- 雾影才藏npc
	tNinjaQuest_Count["StartNpcId"] = 25850
	
	-- 前尘旧忆 4303
	tNinjaQuest_Count["PaperPreTaskId"] = 4303
	tNinjaQuest_Count["NewPaperPreTaskId"] = 4408
	-- 散落的纸张
	tNinjaQuest_Count["PaperTaskId"] = 4304
	tNinjaQuest_Count["NewPaperTaskId"] = 4409
	-- 4361		忍刀七人众
	tNinjaQuest_Count["ResectTaskId"] = 4361
	-- 最后一个门
	tNinjaQuest_Count["LastDoor"] = 16
	
	-- 开门
	tNinjaQuest_Count["Gouyu"] = {}
	tNinjaQuest_Count["Gouyu"][4307] = {1,2,9,10}
	tNinjaQuest_Count["Gouyu"][4323] = {3,11}
	tNinjaQuest_Count["Gouyu"][4327] = {4,12}
	tNinjaQuest_Count["Gouyu"][4330] = {5,13}
	tNinjaQuest_Count["Gouyu"][4333] = {6,14}
	tNinjaQuest_Count["Gouyu"][4339] = {7,15}
	tNinjaQuest_Count["Gouyu"][4368] = {8,16}
	-- 激情服
	tNinjaQuest_Count["Gouyu"][4412] = {1,2,9,10}
	tNinjaQuest_Count["Gouyu"][4428] = {3,11}
	tNinjaQuest_Count["Gouyu"][4433] = {4,12}
	tNinjaQuest_Count["Gouyu"][4437] = {5,13}
	tNinjaQuest_Count["Gouyu"][4440] = {6,14}
	tNinjaQuest_Count["Gouyu"][4447] = {7,15}
	tNinjaQuest_Count["Gouyu"][4477] = {8,16}
	
	-- 3315325,'散落的纸张'
	tNinjaQuest_Count["PaperId"] = 3315325
	-- 3315567,'忍者密信'
	tNinjaQuest_Count["SecretLetter"] = 3315567
	
	-- 接受105提示寻路
	tNinjaQuest_Count["AcceptTask"] = {}
	tNinjaQuest_Count["AcceptTask"][4309] = 25852
	tNinjaQuest_Count["AcceptTask"][4310] = 25853
	tNinjaQuest_Count["AcceptTask"][4303] = 25851
	tNinjaQuest_Count["AcceptTask"][4334] = 25858
	tNinjaQuest_Count["AcceptTask"][4326] = 25858
	tNinjaQuest_Count["AcceptTask"][4414] = 25852
	tNinjaQuest_Count["AcceptTask"][4415] = 25853
	tNinjaQuest_Count["AcceptTask"][4408] = 25851
	tNinjaQuest_Count["AcceptTask"][4441] = 25858
	tNinjaQuest_Count["AcceptTask"][4432] = 25858
	
	-- npc外形和陷阱
	tNinjaQuest_Count["TrapType"] = 2552
	tNinjaQuest_Count["Lookface"] = 2552
	tNinjaQuest_Count["Look"] = 23680
	tNinjaQuest_Count["NewActionId"] = 97500070
	
	-- 直接获得勾玉Type
	tNinjaQuest_Count["GouyuType"] = {}
	tNinjaQuest_Count["GouyuType"][1] = 100
	tNinjaQuest_Count["GouyuType"][2] = 203
	tNinjaQuest_Count["GouyuType"][3] = 400
	tNinjaQuest_Count["GouyuType"][4] = 503
	tNinjaQuest_Count["GouyuType"][5] = 303
	tNinjaQuest_Count["StcType"] = {}
	tNinjaQuest_Count["StcType"][1] = 1
	tNinjaQuest_Count["StcType"][2] = 4
	tNinjaQuest_Count["StcType"][3] = 2
	tNinjaQuest_Count["StcType"][4] = 3
	tNinjaQuest_Count["StcType"][5] = 5
	
	-- 特殊传送任务
	tNinjaQuest_Count["SpeTranTask"] = {4310,4311,4312,4313}
	
	-- 索引对应的对白索引
	tNinjaQuest_Count["TextIndex"] = {}
	tNinjaQuest_Count["TextIndex"][1] = "Option111"
	tNinjaQuest_Count["TextIndex"][2] = "Option112"
	tNinjaQuest_Count["TextIndex"][3] = "Option113"
	tNinjaQuest_Count["TextIndex"][4] = "Option114"
	tNinjaQuest_Count["TextIndex"][5] = "Option115"
	
	-- 可选礼盒对应
	tNinjaQuest_Count[3315898] = {}
	tNinjaQuest_Count[3315898][1] = 100
	tNinjaQuest_Count[3315898][2] = 203
	tNinjaQuest_Count[3315898][3] = 400
	tNinjaQuest_Count[3315898][4] = 503
	tNinjaQuest_Count[3315898][5] = 303
	tNinjaQuest_Count[3315899] = {}
	tNinjaQuest_Count[3315899][1] = 102
	tNinjaQuest_Count[3315899][2] = 204
	tNinjaQuest_Count[3315899][3] = 402
	tNinjaQuest_Count[3315899][4] = 505
	tNinjaQuest_Count[3315899][5] = 304
	
-- Log表
local tNinjaQuest_Log = {}
	-- 使用删除
	tNinjaQuest_Log["UseDel"] = "0,0,3303529,1,18000222,2,0,0"
	-- 记录重要log部分
	tNinjaQuest_Log["OpenBag"] = "0,0,%d,1,18000222,3[2],%d,0"
	-- 开启忍法帖
	tNinjaQuest_Log["OpenLaw"] = {}
	tNinjaQuest_Log["OpenLaw"][1] = "0,0,0,0,18000222,2[1],%d,1"
	tNinjaQuest_Log["OpenLaw"][2] = "0,0,0,0,18000222,2[2],%d,2"
	tNinjaQuest_Log["OpenLaw"][3] = "0,0,0,0,18000222,2[3],%d,3"
	tNinjaQuest_Log["OpenLaw"][4] = "0,0,0,0,18000222,2[4],%d,4"
	tNinjaQuest_Log["OpenLaw"][5] = "0,0,0,0,18000222,2[5],%d,5"
	tNinjaQuest_Log["OpenLaw"][6] = "0,0,0,0,18000222,2[6],%d,6"
	tNinjaQuest_Log["OpenLaw"][7] = "0,0,0,0,18000222,2[7],%d,7"
	tNinjaQuest_Log["OpenLaw"][8] = "0,0,0,0,18000222,2[8],%d,8"
	-- 获得勾玉
	tNinjaQuest_Log["GetGouyu"] = {}
	tNinjaQuest_Log["GetGouyu"][4306] = {}
	tNinjaQuest_Log["GetGouyu"][4306][1] = "0,0,4306,0,18000222,3[1],100,1"
	tNinjaQuest_Log["GetGouyu"][4306][2] = "0,0,4306,0,18000222,3[1],203,1"
	tNinjaQuest_Log["GetGouyu"][4306][3] = "0,0,4306,0,18000222,3[1],400,1"
	tNinjaQuest_Log["GetGouyu"][4306][4] = "0,0,4306,0,18000222,3[1],503,1"
	tNinjaQuest_Log["GetGouyu"][4306][5] = "0,0,4306,0,18000222,3[1],300,1"
	tNinjaQuest_Log["GetGouyu"][4411] = {}
	tNinjaQuest_Log["GetGouyu"][4411][1] = "0,0,4411,0,18000222,3[1],100,1"
	tNinjaQuest_Log["GetGouyu"][4411][2] = "0,0,4411,0,18000222,3[1],203,1"
	tNinjaQuest_Log["GetGouyu"][4411][3] = "0,0,4411,0,18000222,3[1],400,1"
	tNinjaQuest_Log["GetGouyu"][4411][4] = "0,0,4411,0,18000222,3[1],503,1"
	tNinjaQuest_Log["GetGouyu"][4411][5] = "0,0,4411,0,18000222,3[1],300,1"
	
	-- 记录全开
	tNinjaQuest_Log["OpenAllLaw"] = "0,0,3316125,1,18000222,3[5],0,0"
	tNinjaQuest_Log["HaveOpenAllLaw"] = "0,0,3316125,1,18000222,3[6],0,0"
	
-- stc掩码
local tNinjaQuest_Stc = {}
	-- 记录是否发过邮件
	tNinjaQuest_Stc[1] = {}
	tNinjaQuest_Stc[1]["EventType"] = 215
	tNinjaQuest_Stc[1]["DataType"] = 76
	-- 记录玩家捉虫大战采集的数量
	tNinjaQuest_Stc[2] = {}
	tNinjaQuest_Stc[2]["EventType"] = 217
	tNinjaQuest_Stc[2]["DataType"] = 65
	-- 记录玩家选择过的勾玉类型
	tNinjaQuest_Stc[3] = {}
	tNinjaQuest_Stc[3]["EventType"] = 218
	tNinjaQuest_Stc[3]["DataType"] = 12 
	-- 记录玩家可选包选择过的勾玉类型 二进制
	tNinjaQuest_Stc[3315898] = {}
	tNinjaQuest_Stc[3315898]["EventType"] = 218
	tNinjaQuest_Stc[3315898]["DataType"] = 44 
	-- 记录玩家可选包选择过的勾玉类型 二进制
	tNinjaQuest_Stc[3315899] = {}
	tNinjaQuest_Stc[3315899]["EventType"] = 218
	tNinjaQuest_Stc[3315899]["DataType"] = 45 
	-- 标志已经领取奖励
	tNinjaQuest_Stc[4] = {}
	tNinjaQuest_Stc[4]["EventType"] = 218
	tNinjaQuest_Stc[4]["DataType"] = 64
	
local tNinjaQuest_CreateMonsterTime = {}
-- 点击陷阱时间
local tNinjaQuest_ClickTrapTime = {}

-- 光效
local tNinjaQuest_Effect = {}
	-- 惊门：红色
	tNinjaQuest_Effect[4339] = {}
	tNinjaQuest_Effect[4339]["SzObj"] = "self"
	tNinjaQuest_Effect[4339]["Effect"] = "RedXiaoshi"
	-- 伤门：绿色
	tNinjaQuest_Effect[4327] = {}
	tNinjaQuest_Effect[4327]["SzObj"] = "self"
	tNinjaQuest_Effect[4327]["Effect"] = "GreenXiaoshi"
	-- 杜门：蓝色
	tNinjaQuest_Effect[4330] = {}
	tNinjaQuest_Effect[4330]["SzObj"] = "self"
	tNinjaQuest_Effect[4330]["Effect"] = "BlueXiaoshi"
	-- 景门：蓝色
	tNinjaQuest_Effect[4333] = {}
	tNinjaQuest_Effect[4333]["SzObj"] = "self"
	tNinjaQuest_Effect[4333]["Effect"] = "BlueXiaoshi"
	-- 惊门：红色
	tNinjaQuest_Effect[4447] = {}
	tNinjaQuest_Effect[4447]["SzObj"] = "self"
	tNinjaQuest_Effect[4447]["Effect"] = "RedXiaoshi"
	-- 伤门：绿色
	tNinjaQuest_Effect[4433] = {}
	tNinjaQuest_Effect[4433]["SzObj"] = "self"
	tNinjaQuest_Effect[4433]["Effect"] = "GreenXiaoshi"
	-- 杜门：蓝色
	tNinjaQuest_Effect[4437] = {}
	tNinjaQuest_Effect[4437]["SzObj"] = "self"
	tNinjaQuest_Effect[4437]["Effect"] = "BlueXiaoshi"
	-- 景门：蓝色
	tNinjaQuest_Effect[4440] = {}
	tNinjaQuest_Effect[4440]["SzObj"] = "self"
	tNinjaQuest_Effect[4440]["Effect"] = "BlueXiaoshi"

	
local tNinjaQuest_MapPostion = {}
-- 传送雾影才藏
	tNinjaQuest_MapPostion[1] = {}
	tNinjaQuest_MapPostion[1]["PosX"] = 78
	tNinjaQuest_MapPostion[1]["PosY"] = 59
	tNinjaQuest_MapPostion[1]["MapId"] = 10653
	tNinjaQuest_MapPostion[1]["NpcId"] = 0
	tNinjaQuest_MapPostion[1]["Range"] = 5
-- 传送妙木山
	tNinjaQuest_MapPostion[2] = {}
	tNinjaQuest_MapPostion[2]["PosX"] = 258
	tNinjaQuest_MapPostion[2]["PosY"] = 396
	tNinjaQuest_MapPostion[2]["MapId"] = 10764
	tNinjaQuest_MapPostion[2]["NpcId"] = 0
	tNinjaQuest_MapPostion[2]["Range"] = 2
-- 传送双龙城
	tNinjaQuest_MapPostion[3] = {}
	tNinjaQuest_MapPostion[3]["PosX"] = 580
	tNinjaQuest_MapPostion[3]["PosY"] = 583
	tNinjaQuest_MapPostion[3]["MapId"] = 1002
	tNinjaQuest_MapPostion[3]["NpcId"] = 0
	tNinjaQuest_MapPostion[3]["Range"] = 2
-- 传送双龙城
	tNinjaQuest_MapPostion[4] = {}
	tNinjaQuest_MapPostion[4]["PosX"] = 340
	tNinjaQuest_MapPostion[4]["PosY"] = 444
	tNinjaQuest_MapPostion[4]["MapId"] = 1002
	tNinjaQuest_MapPostion[4]["NpcId"] = 0
	tNinjaQuest_MapPostion[4]["Range"] = 2
-- 传送双龙城--激情服
	tNinjaQuest_MapPostion[5] = {}
	tNinjaQuest_MapPostion[5]["PosX"] = 242
	tNinjaQuest_MapPostion[5]["PosY"] = 347
	tNinjaQuest_MapPostion[5]["MapId"] = 10364
	tNinjaQuest_MapPostion[5]["NpcId"] = 0
	tNinjaQuest_MapPostion[5]["Range"] = 2
-- 传送--激情服
	tNinjaQuest_MapPostion[6] = {}
	tNinjaQuest_MapPostion[6]["PosX"] = 302
	tNinjaQuest_MapPostion[6]["PosY"] = 237
	tNinjaQuest_MapPostion[6]["MapId"] = 1036
	tNinjaQuest_MapPostion[6]["NpcId"] = 0
	tNinjaQuest_MapPostion[6]["Range"] = 2

-- 根据npc传送位置
local tNinjaQuest_NpcTomap = {}
	tNinjaQuest_NpcTomap[25850] = {4301,4302,4303,4305,4306,4307,4342}
	tNinjaQuest_NpcTomap[25851] = {4304}
	tNinjaQuest_NpcTomap[25852] = {4309,4314}
	tNinjaQuest_NpcTomap[25853] = {4310}
	tNinjaQuest_NpcTomap[25854] = {4311,4312,4313}
	tNinjaQuest_NpcTomap[26012] = {4315,4316}
	tNinjaQuest_NpcTomap[25855] = {4317}
	tNinjaQuest_NpcTomap[26033] = {4318,4319}
	tNinjaQuest_NpcTomap[25856] = {4320,4321,4322,4323,4341}
	tNinjaQuest_NpcTomap[25857] = {4324,4370,4325,4339,4340,4362,4365,4367,4368,4369}
	tNinjaQuest_NpcTomap[25858] = {4326,4327,4328,4392,4331,4332,4333,4334,4395,4335}
	tNinjaQuest_NpcTomap[25933] = {4337,4338}
	tNinjaQuest_NpcTomap[26034] = {4329,4330}
	tNinjaQuest_NpcTomap[25861] = {4363,4364,4396}
	tNinjaQuest_NpcTomap[26035] = {4366}
	tNinjaQuest_NpcTomap[25859] = {4308,4344}
	tNinjaQuest_NpcTomap[25860] = {4345,4346,4347}
	tNinjaQuest_NpcTomap[25862] = {4349}
	tNinjaQuest_NpcTomap[25863] = {4350}
	tNinjaQuest_NpcTomap[25864] = {4351,4352,4353}
	tNinjaQuest_NpcTomap[25865] = {4354}
	tNinjaQuest_NpcTomap[25932] = {4355,4356,4357}
	tNinjaQuest_NpcTomap[25934] = {4359}
	tNinjaQuest_NpcTomap[25935] = {4360}
	tNinjaQuest_NpcTomap[25936] = {4361}
	tNinjaQuest_NpcTomap[2003] = {4358}
	tNinjaQuest_NpcTomap[2004] = {4348}
	tNinjaQuest_NpcTomap[8510] = {4336}
	tNinjaQuest_NpcTomap[2001] = {4343}

-- 激情服
local tNinjaQuest_SpeNpcTomap = {}
	tNinjaQuest_SpeNpcTomap[25850] = {4406,4407,4408,4410,4411,4412,4450}
	tNinjaQuest_SpeNpcTomap[25851] = {4409}
	tNinjaQuest_SpeNpcTomap[25852] = {4414,4419}
	tNinjaQuest_SpeNpcTomap[25853] = {4415}
	tNinjaQuest_SpeNpcTomap[25854] = {4416,4417,4418}
	tNinjaQuest_SpeNpcTomap[26012] = {4420,4421}
	tNinjaQuest_SpeNpcTomap[25855] = {4422}
	tNinjaQuest_SpeNpcTomap[26033] = {4423,4424}
	tNinjaQuest_SpeNpcTomap[25856] = {4425,4426,4427,4428,4449}
	tNinjaQuest_SpeNpcTomap[25857] = {4429,4430,4431,4447,4448,4470,4474,4476,4477,4478}
	tNinjaQuest_SpeNpcTomap[25858] = {4432,4433,4434,4435,4438,4439,4440,4441,4442,4443}
	tNinjaQuest_SpeNpcTomap[25933] = {4445,4446}
	tNinjaQuest_SpeNpcTomap[26034] = {4436,4437}
	tNinjaQuest_SpeNpcTomap[25861] = {4471,4472,4473}
	tNinjaQuest_SpeNpcTomap[26035] = {4475}
	tNinjaQuest_SpeNpcTomap[25859] = {4413,4452}
	tNinjaQuest_SpeNpcTomap[25860] = {4453,4454,4455}
	tNinjaQuest_SpeNpcTomap[25862] = {4457}
	tNinjaQuest_SpeNpcTomap[25863] = {4458}
	tNinjaQuest_SpeNpcTomap[25864] = {4459,4460,4461}
	tNinjaQuest_SpeNpcTomap[25865] = {4462}
	tNinjaQuest_SpeNpcTomap[25932] = {4463,4464,4465}
	tNinjaQuest_SpeNpcTomap[25934] = {4467}
	tNinjaQuest_SpeNpcTomap[25935] = {4468}
	tNinjaQuest_SpeNpcTomap[25936] = {4469}
	tNinjaQuest_SpeNpcTomap[23879] = {4466}
	tNinjaQuest_SpeNpcTomap[23867] = {4456}
	tNinjaQuest_SpeNpcTomap[24000] = {4444}
	tNinjaQuest_SpeNpcTomap[23863] = {4451}

-- 接任务创建怪物位置
local tNinjaQuest_MonsterData = {}
	-- 4303 不速之客
	-- tNinjaQuest_MonsterData[4303] = {}
	-- tNinjaQuest_MonsterData[4303]["MonsterId"] = 5913
	-- tNinjaQuest_MonsterData[4303]["GenID"] = 30592
	-- 4316 东瀛来袭（二）
	tNinjaQuest_MonsterData[4316] = {}
	tNinjaQuest_MonsterData[4316]["MonsterId"] = 5914
	tNinjaQuest_MonsterData[4316]["GenID"] = 30593
	tNinjaQuest_MonsterData[4316]["PosX"] = 238
	tNinjaQuest_MonsterData[4316]["PosY"] = 292
	-- 4353 童年真相
	tNinjaQuest_MonsterData[4353] = {}
	tNinjaQuest_MonsterData[4353]["MonsterId"] = 5918
	tNinjaQuest_MonsterData[4353]["GenID"] = 30594
	tNinjaQuest_MonsterData[4353]["PosX"] = 566
	tNinjaQuest_MonsterData[4353]["PosY"] = 454
	-- 4357 怪物牛鬼
	tNinjaQuest_MonsterData[4357] = {}
	tNinjaQuest_MonsterData[4357]["MonsterId"] = 5919
	tNinjaQuest_MonsterData[4357]["GenID"] = 30595
	tNinjaQuest_MonsterData[4357]["PosX"] = 763
	tNinjaQuest_MonsterData[4357]["PosY"] = 468
	-- 4338 幻术克星
	tNinjaQuest_MonsterData[4338] = {}
	tNinjaQuest_MonsterData[4338]["MonsterId"] = 5920
	tNinjaQuest_MonsterData[4338]["GenID"] = 30596
	tNinjaQuest_MonsterData[4338]["PosX"] = 698
	tNinjaQuest_MonsterData[4338]["PosY"] = 681
	-- 4363 秽土转生
	tNinjaQuest_MonsterData[4363] = {}
	tNinjaQuest_MonsterData[4363]["MonsterId"] = 5928
	tNinjaQuest_MonsterData[4363]["GenID"] = 30604
	tNinjaQuest_MonsterData[4363]["PosX"] = 190
	tNinjaQuest_MonsterData[4363]["PosY"] = 140
	-- 4367 式纸之舞
	-- tNinjaQuest_MonsterData[4367] = {}
	-- tNinjaQuest_MonsterData[4367]["MonsterId"] = 5929
	-- tNinjaQuest_MonsterData[4367]["GenID"] = 30605
	-- 4366 忍者丧钟
	tNinjaQuest_MonsterData[4366] = {}
	tNinjaQuest_MonsterData[4366]["MonsterId"] = 5930
	tNinjaQuest_MonsterData[4366]["MonsterIdNext"] = 5931
	tNinjaQuest_MonsterData[4366]["GenID"] = 30606
	tNinjaQuest_MonsterData[4366]["GenIDNext"] = 30607
	tNinjaQuest_MonsterData[4366]["PosX"] = 60
	tNinjaQuest_MonsterData[4366]["PosY"] = 67
	tNinjaQuest_MonsterData[4366]["PlotId"] = 47
	-- 激情服
	-- 4303 不速之客
	-- tNinjaQuest_MonsterData[4303] = {}
	-- tNinjaQuest_MonsterData[4303]["MonsterId"] = 5913
	-- tNinjaQuest_MonsterData[4303]["GenID"] = 30592
	-- 4421 东瀛来袭
	tNinjaQuest_MonsterData[4421] = {}
	tNinjaQuest_MonsterData[4421]["MonsterId"] = 5914
	tNinjaQuest_MonsterData[4421]["GenID"] = 30593
	tNinjaQuest_MonsterData[4421]["PosX"] = 238
	tNinjaQuest_MonsterData[4421]["PosY"] = 292
	-- 4461 童年真相
	tNinjaQuest_MonsterData[4461] = {}
	tNinjaQuest_MonsterData[4461]["MonsterId"] = 5918
	tNinjaQuest_MonsterData[4461]["GenID"] = 30594
	tNinjaQuest_MonsterData[4461]["PosX"] = 566
	tNinjaQuest_MonsterData[4461]["PosY"] = 454
	-- 4465 怪物牛鬼
	tNinjaQuest_MonsterData[4465] = {}
	tNinjaQuest_MonsterData[4465]["MonsterId"] = 5919
	tNinjaQuest_MonsterData[4465]["GenID"] = 30595
	tNinjaQuest_MonsterData[4465]["PosX"] = 763
	tNinjaQuest_MonsterData[4465]["PosY"] = 468
	-- 4447 幻术克星
	tNinjaQuest_MonsterData[4446] = {}
	tNinjaQuest_MonsterData[4446]["MonsterId"] = 5920
	tNinjaQuest_MonsterData[4446]["GenID"] = 30596
	tNinjaQuest_MonsterData[4446]["PosX"] = 698
	tNinjaQuest_MonsterData[4446]["PosY"] = 681
	-- 4363 秽土转生
	tNinjaQuest_MonsterData[4471] = {}
	tNinjaQuest_MonsterData[4471]["MonsterId"] = 5928
	tNinjaQuest_MonsterData[4471]["GenID"] = 30604
	tNinjaQuest_MonsterData[4471]["PosX"] = 190
	tNinjaQuest_MonsterData[4471]["PosY"] = 140
	-- 4475 忍者丧钟
	tNinjaQuest_MonsterData[4475] = {}
	tNinjaQuest_MonsterData[4475]["MonsterId"] = 5930
	tNinjaQuest_MonsterData[4475]["MonsterIdNext"] = 5931
	tNinjaQuest_MonsterData[4475]["GenID"] = 30606
	tNinjaQuest_MonsterData[4475]["GenIDNext"] = 30607
	tNinjaQuest_MonsterData[4475]["PosX"] = 60
	tNinjaQuest_MonsterData[4475]["PosY"] = 67
	tNinjaQuest_MonsterData[4475]["PlotId"] = 47
	
-- 怪物对应的任务
local tNinjaQuest_MonsterTask = {}
	tNinjaQuest_MonsterTask[5918] = 4353
	tNinjaQuest_MonsterTask[5919] = 4357
	tNinjaQuest_MonsterTask[5920] = 4338
	tNinjaQuest_MonsterTask[5928] = 4363
	tNinjaQuest_MonsterTask[5930] = 4366
	tNinjaQuest_MonsterTask[5931] = 4366
	
-- 激情服和普通服ID对应
local tNinjaQuest_ExTaskId = {}
	tNinjaQuest_ExTaskId[4301] = 4406
	tNinjaQuest_ExTaskId[4302] = 4407
	tNinjaQuest_ExTaskId[4303] = 4408
	tNinjaQuest_ExTaskId[4304] = 4409
	tNinjaQuest_ExTaskId[4305] = 4410
	tNinjaQuest_ExTaskId[4306] = 4411
	tNinjaQuest_ExTaskId[4307] = 4412
	tNinjaQuest_ExTaskId[4308] = 4413
	tNinjaQuest_ExTaskId[4309] = 4414
	tNinjaQuest_ExTaskId[4310] = 4415
	tNinjaQuest_ExTaskId[4311] = 4416
	tNinjaQuest_ExTaskId[4312] = 4417
	tNinjaQuest_ExTaskId[4313] = 4418
	tNinjaQuest_ExTaskId[4314] = 4419
	tNinjaQuest_ExTaskId[4315] = 4420
	tNinjaQuest_ExTaskId[4316] = 4421
	tNinjaQuest_ExTaskId[4317] = 4422
	tNinjaQuest_ExTaskId[4318] = 4423
	tNinjaQuest_ExTaskId[4319] = 4424
	tNinjaQuest_ExTaskId[4320] = 4425
	tNinjaQuest_ExTaskId[4321] = 4426
	tNinjaQuest_ExTaskId[4322] = 4427
	tNinjaQuest_ExTaskId[4323] = 4428
	tNinjaQuest_ExTaskId[4324] = 4429
	tNinjaQuest_ExTaskId[4370] = 4430
	tNinjaQuest_ExTaskId[4325] = 4431
	tNinjaQuest_ExTaskId[4326] = 4432
	tNinjaQuest_ExTaskId[4327] = 4433
	tNinjaQuest_ExTaskId[4328] = 4434
	tNinjaQuest_ExTaskId[4392] = 4435
	tNinjaQuest_ExTaskId[4329] = 4436
	tNinjaQuest_ExTaskId[4330] = 4437
	tNinjaQuest_ExTaskId[4331] = 4438
	tNinjaQuest_ExTaskId[4332] = 4439
	tNinjaQuest_ExTaskId[4333] = 4440
	tNinjaQuest_ExTaskId[4334] = 4441
	tNinjaQuest_ExTaskId[4395] = 4442
	tNinjaQuest_ExTaskId[4335] = 4443
	tNinjaQuest_ExTaskId[4336] = 4444
	tNinjaQuest_ExTaskId[4337] = 4445
	tNinjaQuest_ExTaskId[4338] = 4446
	tNinjaQuest_ExTaskId[4339] = 4447
	tNinjaQuest_ExTaskId[4340] = 4448
	tNinjaQuest_ExTaskId[4341] = 4449
	tNinjaQuest_ExTaskId[4342] = 4450
	tNinjaQuest_ExTaskId[4343] = 4451
	tNinjaQuest_ExTaskId[4344] = 4452
	tNinjaQuest_ExTaskId[4345] = 4453
	tNinjaQuest_ExTaskId[4346] = 4454
	tNinjaQuest_ExTaskId[4347] = 4455
	tNinjaQuest_ExTaskId[4348] = 4456
	tNinjaQuest_ExTaskId[4349] = 4457
	tNinjaQuest_ExTaskId[4350] = 4458
	tNinjaQuest_ExTaskId[4351] = 4459
	tNinjaQuest_ExTaskId[4352] = 4460
	tNinjaQuest_ExTaskId[4353] = 4461
	tNinjaQuest_ExTaskId[4354] = 4462
	tNinjaQuest_ExTaskId[4355] = 4463
	tNinjaQuest_ExTaskId[4356] = 4464
	tNinjaQuest_ExTaskId[4357] = 4465
	tNinjaQuest_ExTaskId[4358] = 4466
	tNinjaQuest_ExTaskId[4359] = 4467
	tNinjaQuest_ExTaskId[4360] = 4468
	tNinjaQuest_ExTaskId[4361] = 4469
	tNinjaQuest_ExTaskId[4362] = 4470
	tNinjaQuest_ExTaskId[4363] = 4471
	tNinjaQuest_ExTaskId[4364] = 4472
	tNinjaQuest_ExTaskId[4396] = 4473
	tNinjaQuest_ExTaskId[4365] = 4474
	tNinjaQuest_ExTaskId[4366] = 4475
	tNinjaQuest_ExTaskId[4367] = 4476
	tNinjaQuest_ExTaskId[4368] = 4477
	tNinjaQuest_ExTaskId[4369] = 4478
	
local tNinjaQuest_Reward = {}
	-- ===基础法印自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315898][1]
	-- ===删除: 3315898,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315898] = {}
	tNinjaQuest_Reward[3315898][1] = {}
	tNinjaQuest_Reward[3315898][1]["LogId"] = 18000222
	tNinjaQuest_Reward[3315898][1]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315898][1]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315898][1]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315898][1]["DeleteItem"][1]["Id"] = 3315898 -- 【库】基础法印自选礼盒[属性:11]
	tNinjaQuest_Reward[3315898][1]["RewardItem"] = {}
	tNinjaQuest_Reward[3315898][1]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315898][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】豪火法印
	tNinjaQuest_Reward[3315898][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印*1
	tNinjaQuest_Reward[3315898][1]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315898][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315898][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315898][2] = {}
	-- ===基础法印自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315898][2]
	-- ===删除: 3315898,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315898][2]["LogId"] = 18000222
	tNinjaQuest_Reward[3315898][2]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315898][2]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315898][2]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315898][2]["DeleteItem"][1]["Id"] = 3315898 -- 【库】基础法印自选礼盒[属性:11]
	tNinjaQuest_Reward[3315898][2]["RewardItem"] = {}
	tNinjaQuest_Reward[3315898][2]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315898][2]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】水龙法印
	tNinjaQuest_Reward[3315898][2]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印*1
	tNinjaQuest_Reward[3315898][2]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315898][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315898][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315898][3] = {}
	-- ===基础法印自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315898][3]
	-- ===删除: 3315898,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315898][3]["LogId"] = 18000222
	tNinjaQuest_Reward[3315898][3]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315898][3]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315898][3]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315898][3]["DeleteItem"][1]["Id"] = 3315898 -- 【库】基础法印自选礼盒[属性:11]
	tNinjaQuest_Reward[3315898][3]["RewardItem"] = {}
	tNinjaQuest_Reward[3315898][3]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315898][3]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】镰鼬法印
	tNinjaQuest_Reward[3315898][3]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印*1
	tNinjaQuest_Reward[3315898][3]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315898][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315898][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315898][4] = {}
	-- ===基础法印自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315898][4]
	-- ===删除: 3315898,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315898][4]["LogId"] = 18000222
	tNinjaQuest_Reward[3315898][4]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315898][4]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315898][4]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315898][4]["DeleteItem"][1]["Id"] = 3315898 -- 【库】基础法印自选礼盒[属性:11]
	tNinjaQuest_Reward[3315898][4]["RewardItem"] = {}
	tNinjaQuest_Reward[3315898][4]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315898][4]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】雷切法印
	tNinjaQuest_Reward[3315898][4]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印*1
	tNinjaQuest_Reward[3315898][4]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315898][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315898][4]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315898][5] = {}
	-- ===基础法印自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315898][5]
	-- ===删除: 3315898,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315898][5]["LogId"] = 18000222
	tNinjaQuest_Reward[3315898][5]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315898][5]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315898][5]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315898][5]["DeleteItem"][1]["Id"] = 3315898 -- 【库】基础法印自选礼盒[属性:11]
	tNinjaQuest_Reward[3315898][5]["RewardItem"] = {}
	tNinjaQuest_Reward[3315898][5]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315898][5]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】尘遁法印
	tNinjaQuest_Reward[3315898][5]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印*1
	tNinjaQuest_Reward[3315898][5]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315898][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315898][5]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315899] = {}
	-- ===法印提升自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315899][1]
	-- ===删除: 3315899,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315899][1] = {}
	tNinjaQuest_Reward[3315899][1]["LogId"] = 18000222
	tNinjaQuest_Reward[3315899][1]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315899][1]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315899][1]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315899][1]["DeleteItem"][1]["Id"] = 3315899 -- 【库】法印提升自选礼盒[属性:11]
	tNinjaQuest_Reward[3315899][1]["RewardItem"] = {}
	tNinjaQuest_Reward[3315899][1]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315899][1]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】豪火法印·疾
	tNinjaQuest_Reward[3315899][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·疾*1
	tNinjaQuest_Reward[3315899][1]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315899][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315899][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315899][2] = {}
	-- ===法印提升自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315899][2]
	-- ===删除: 3315899,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315899][2]["LogId"] = 18000222
	tNinjaQuest_Reward[3315899][2]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315899][2]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315899][2]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315899][2]["DeleteItem"][1]["Id"] = 3315899 -- 【库】法印提升自选礼盒[属性:11]
	tNinjaQuest_Reward[3315899][2]["RewardItem"] = {}
	tNinjaQuest_Reward[3315899][2]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315899][2]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】水龙法印·澎湃
	tNinjaQuest_Reward[3315899][2]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·澎湃*1
	tNinjaQuest_Reward[3315899][2]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315899][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315899][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315899][3] = {}
	-- ===法印提升自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315899][3]
	-- ===删除: 3315899,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315899][3]["LogId"] = 18000222
	tNinjaQuest_Reward[3315899][3]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315899][3]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315899][3]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315899][3]["DeleteItem"][1]["Id"] = 3315899 -- 【库】法印提升自选礼盒[属性:11]
	tNinjaQuest_Reward[3315899][3]["RewardItem"] = {}
	tNinjaQuest_Reward[3315899][3]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315899][3]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】镰鼬法印·风驰
	tNinjaQuest_Reward[3315899][3]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·风驰*1
	tNinjaQuest_Reward[3315899][3]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315899][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315899][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315899][4] = {}
	-- ===法印提升自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315899][4]
	-- ===删除: 3315899,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315899][4]["LogId"] = 18000222
	tNinjaQuest_Reward[3315899][4]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315899][4]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315899][4]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315899][4]["DeleteItem"][1]["Id"] = 3315899 -- 【库】法印提升自选礼盒[属性:11]
	tNinjaQuest_Reward[3315899][4]["RewardItem"] = {}
	tNinjaQuest_Reward[3315899][4]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315899][4]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】雷切法印·神威
	tNinjaQuest_Reward[3315899][4]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·神威*1
	tNinjaQuest_Reward[3315899][4]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315899][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315899][4]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Reward[3315899][5] = {}
	-- ===法印提升自选礼盒
	-- ===索引: tNinjaQuest_Reward[3315899][5]
	-- ===删除: 3315899,1
	-- ===LogStep: 3[2]
	tNinjaQuest_Reward[3315899][5]["LogId"] = 18000222
	tNinjaQuest_Reward[3315899][5]["LogStep"] = "3[2]"
	tNinjaQuest_Reward[3315899][5]["DeleteItem"] = {}
	tNinjaQuest_Reward[3315899][5]["DeleteItem"][1] = {}
	tNinjaQuest_Reward[3315899][5]["DeleteItem"][1]["Id"] = 3315899 -- 【库】法印提升自选礼盒[属性:11]
	tNinjaQuest_Reward[3315899][5]["RewardItem"] = {}
	tNinjaQuest_Reward[3315899][5]["RewardItem"][1] = {}
	tNinjaQuest_Reward[3315899][5]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】尘遁法印·天绝
	tNinjaQuest_Reward[3315899][5]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·天绝*1
	tNinjaQuest_Reward[3315899][5]["RewardEffect"] = {}
	tNinjaQuest_Reward[3315899][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Reward[3315899][5]["RewardEffect"]["Effect"] = "angelwing"

local tNinjaQuest_Random = {}
	-- ===尊享法印礼包
	-- ===索引: tNinjaQuest_Random[3316120]
	-- ===删除: 3316120,1
	-- ===LogStep: 3[4]
	tNinjaQuest_Random[3316120] = {}
	tNinjaQuest_Random[3316120]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNinjaQuest_Random[3316120]["DeleteItem"] = {}
	tNinjaQuest_Random[3316120]["DeleteItem"][1] = {}
	tNinjaQuest_Random[3316120]["DeleteItem"][1]["Id"] = 3316120 -- 【库】尊享法印礼包[属性:11]
	tNinjaQuest_Random[3316120]["LogId"] = 18000222
	tNinjaQuest_Random[3316120]["LogStep"] = " 3[4]"
	-- 血继法印·式纸之舞 - 90%
	tNinjaQuest_Random[3316120][1] = {}
	tNinjaQuest_Random[3316120][1]["RandomItemChanceType"] = 2
	tNinjaQuest_Random[3316120][1]["ItemChance"] = 9000
	tNinjaQuest_Random[3316120][1]["RewardItem"] = {}
	tNinjaQuest_Random[3316120][1]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316120][1]["RewardItem"][1]["Id"] = 3330058 -- SigilofPaperDance[3330058][属性:9][叠加:0][金币:0], 【表格】血继法印·式纸之舞
	tNinjaQuest_Random[3316120][1]["RewardItem"][1]["Attr"] = "0 1" -- SigilofPaperDance*1
	tNinjaQuest_Random[3316120][1]["RewardEffect"] = {}
	tNinjaQuest_Random[3316120][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316120][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继法印·轮墓天狱 - 10%
	tNinjaQuest_Random[3316120][2] = {}
	tNinjaQuest_Random[3316120][2]["RandomItemChanceType"] = 2
	tNinjaQuest_Random[3316120][2]["ItemChance"] = 1000
	tNinjaQuest_Random[3316120][2]["RewardItem"] = {}
	tNinjaQuest_Random[3316120][2]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316120][2]["RewardItem"][1]["Id"] = 3330059 -- SigilofHellVortex[3330059][属性:9][叠加:0][金币:0], 【表格】血继法印·轮墓天狱
	tNinjaQuest_Random[3316120][2]["RewardItem"][1]["Attr"] = "0 1" -- SigilofHellVortex*1
	tNinjaQuest_Random[3316120][2]["RewardEffect"] = {}
	tNinjaQuest_Random[3316120][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316120][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘术精华-- 【必给】
	tNinjaQuest_Random[3316120][3] = {}
	tNinjaQuest_Random[3316120][3]["RandomItemChanceType"] = 1
	tNinjaQuest_Random[3316120][3]["RewardItem"] = {}
	tNinjaQuest_Random[3316120][3]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316120][3]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tNinjaQuest_Random[3316120][3]["RewardItem"][1]["Attr"] = "0 300" -- ArcaneEssence*300（[错误]物品数量超10个）
	tNinjaQuest_Random[3316120][3]["RewardEffect"] = {}
	tNinjaQuest_Random[3316120][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316120][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Random[3316119] = {}
	-- ===稀有辅助法印礼包
	-- ===索引: tNinjaQuest_Random[3316119][1]
	-- ===删除: 3316119,1
	-- ===LogStep: 3[4]
	tNinjaQuest_Random[3316119][1] = {}
	tNinjaQuest_Random[3316119][1]["LogId"] = 18000222
	tNinjaQuest_Random[3316119][1]["LogStep"] = "3[4]"
	tNinjaQuest_Random[3316119][1]["DeleteItem"] = {}
	tNinjaQuest_Random[3316119][1]["DeleteItem"][1] = {}
	tNinjaQuest_Random[3316119][1]["DeleteItem"][1]["Id"] = 3316119 -- 【库】稀有辅助法印礼包[属性:11]
	tNinjaQuest_Random[3316119][1]["RewardItem"] = {}
	tNinjaQuest_Random[3316119][1]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316119][1]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tNinjaQuest_Random[3316119][1]["RewardItem"][1]["Attr"] = "0 250" -- ArcaneEssence*250（[错误]物品数量超10个）
	tNinjaQuest_Random[3316119][1]["RewardItem"][2] = {}
	tNinjaQuest_Random[3316119][1]["RewardItem"][2]["Id"] = 3330029 -- WildSigil(Burning)[3330029][属性:9][叠加:0][金币:0], 【表格】豪火法印·焚天
	tNinjaQuest_Random[3316119][1]["RewardItem"][2]["Attr"] = "0 1" -- WildSigil(Burning)*1
	tNinjaQuest_Random[3316119][1]["RewardEffect"] = {}
	tNinjaQuest_Random[3316119][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316119][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Random[3316119][2] = {}
	-- ===稀有辅助法印礼包
	-- ===索引: tNinjaQuest_Random[3316119][2]
	-- ===删除: 3316119,1
	-- ===LogStep: 3[4]
	tNinjaQuest_Random[3316119][2]["LogId"] = 18000222
	tNinjaQuest_Random[3316119][2]["LogStep"] = "3[4]"
	tNinjaQuest_Random[3316119][2]["DeleteItem"] = {}
	tNinjaQuest_Random[3316119][2]["DeleteItem"][1] = {}
	tNinjaQuest_Random[3316119][2]["DeleteItem"][1]["Id"] = 3316119 -- 【库】稀有辅助法印礼包[属性:11]
	tNinjaQuest_Random[3316119][2]["RewardItem"] = {}
	tNinjaQuest_Random[3316119][2]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316119][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tNinjaQuest_Random[3316119][2]["RewardItem"][1]["Attr"] = "0 250" -- ArcaneEssence*250（[错误]物品数量超10个）
	tNinjaQuest_Random[3316119][2]["RewardItem"][2] = {}
	tNinjaQuest_Random[3316119][2]["RewardItem"][2]["Id"] = 3330039 -- DragonSigil(Fading)[3330039][属性:9][叠加:0][金币:0], 【表格】水龙法印·移形
	tNinjaQuest_Random[3316119][2]["RewardItem"][2]["Attr"] = "0 1" -- DragonSigil(Fading)*1
	tNinjaQuest_Random[3316119][2]["RewardEffect"] = {}
	tNinjaQuest_Random[3316119][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316119][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaQuest_Random[3316119][3] = {}
	-- ===稀有辅助法印礼包
	-- ===索引: tNinjaQuest_Random[3316119][3]
	-- ===删除: 3316119,1
	-- ===LogStep: 3[4]
	tNinjaQuest_Random[3316119][3]["LogId"] = 18000222
	tNinjaQuest_Random[3316119][3]["LogStep"] = "3[4]"
	tNinjaQuest_Random[3316119][3]["DeleteItem"] = {}
	tNinjaQuest_Random[3316119][3]["DeleteItem"][1] = {}
	tNinjaQuest_Random[3316119][3]["DeleteItem"][1]["Id"] = 3316119 -- 【库】稀有辅助法印礼包[属性:11]
	tNinjaQuest_Random[3316119][3]["RewardItem"] = {}
	tNinjaQuest_Random[3316119][3]["RewardItem"][1] = {}
	tNinjaQuest_Random[3316119][3]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tNinjaQuest_Random[3316119][3]["RewardItem"][1]["Attr"] = "0 250" -- ArcaneEssence*250（[错误]物品数量超10个）
	tNinjaQuest_Random[3316119][3]["RewardItem"][2] = {}
	tNinjaQuest_Random[3316119][3]["RewardItem"][2]["Id"] = 3330041 -- SickleSigil(Flurry)[3330041][属性:9][叠加:0][金币:0], 【表格】镰鼬法印·乱舞
	tNinjaQuest_Random[3316119][3]["RewardItem"][2]["Attr"] = "0 1" -- SickleSigil(Flurry)*1
	tNinjaQuest_Random[3316119][3]["RewardEffect"] = {}
	tNinjaQuest_Random[3316119][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaQuest_Random[3316119][3]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function NinjaQuest_GetStcValue(nNinjaQuest_Index,nNinjaQuest_UserId)
	local nNinjaQuest_Event = tNinjaQuest_Stc[nNinjaQuest_Index]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[nNinjaQuest_Index]["DataType"]
	
	local nNinjaQuest_Data = Get_UserStatisticValue(nNinjaQuest_Event,nNinjaQuest_Type,nNinjaQuest_UserId)
	return nNinjaQuest_Data
end

-- 获取掩码时间戳
function NinjaQuest_GetStcTime(nNinjaQuest_Index,nNinjaQuest_UserId)
	local nNinjaQuest_Event = tNinjaQuest_Stc[nNinjaQuest_Index]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[nNinjaQuest_Index]["DataType"]
	
	local nNinjaQuest_Time = Get_UserStcTimestampValue(nNinjaQuest_Event,nNinjaQuest_Type,nNinjaQuest_UserId)
	return nNinjaQuest_Time
end

--设置掩码值
function NinjaQuest_SetStcValue(nNinjaQuest_Index,nNinjaQuest_Data,nNinjaQuest_UserId)
	local nNinjaQuest_Event = tNinjaQuest_Stc[nNinjaQuest_Index]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[nNinjaQuest_Index]["DataType"]
	
	Task_SetStatistic(nNinjaQuest_Event,nNinjaQuest_Type,nNinjaQuest_Data,1,nNinjaQuest_UserId)
	Task_SetStcTimestamp(nNinjaQuest_Event,nNinjaQuest_Type,0,nNinjaQuest_UserId)
end

-- 增加掩码值
function NinjaQuest_AddStcValue(nNinjaQuest_Index,nNinjaQuest_Data,nNinjaQuest_UserId)
	local nNinjaQuest_Event = tNinjaQuest_Stc[nNinjaQuest_Index]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[nNinjaQuest_Index]["DataType"]
	
	Task_AddStatistic(nNinjaQuest_Event,nNinjaQuest_Type,nNinjaQuest_Data,1,nNinjaQuest_UserId)
	Task_SetStcTimestamp(nNinjaQuest_Event,nNinjaQuest_Type,0,nNinjaQuest_UserId)
end

-- 检测是否有二进制
function NinjaQuest_ChkHaveStcInterval(nNinjaQuest_Index,nNinjaQuest_Data,nNinjaQuest_UserId)
	local nNinjaQuest_Event = tNinjaQuest_Stc[nNinjaQuest_Index]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[nNinjaQuest_Index]["DataType"]
	local nNinjaQuest_TotalData = Get_UserStatisticValue(nNinjaQuest_Event,nNinjaQuest_Type,nNinjaQuest_UserId)
	
	if Sys_ParseNumbersContain(2^nNinjaQuest_Data,nNinjaQuest_TotalData) then
		return true
	end
	
	return false
end

-- npc处使用
function NinjaQuest_ChkQuest(nNinjaQuest_NpcId)
	-- 检测任务并传送
	local tNinjaQuest_NeedChkNpc = tNinjaQuest_NpcTomap
	local nNinjaQuest_StartId = tNinjaQuest_Count["StartId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_StartId = tNinjaQuest_ExTaskId[nNinjaQuest_StartId]
		tNinjaQuest_NeedChkNpc = tNinjaQuest_SpeNpcTomap
	end
	
	for a,b in pairs(tNinjaQuest_NeedChkNpc) do
		for g,h in pairs(b)	do
			if Task_ChkTaskDetail(h) then
				if not Task_ChkTaskDetailValue(h,"CompleteFlag",">=",1) then
					local sNewFunc = "NinjaQuest_TransNpc</N>%d</N>%d"
					Sys_MsgBox(tNinjaQuest_NewText["HaveTask"],string.format(sNewFunc,a,h))
					return true
				end
			end
		end
	end
	
	-- 等级判断
	local nNinjaQuest_UserId = Get_UserId()
	if nNinjaQuest_NpcId ~= nil then
		if not NewTaskTemplate_ChkAcceptLevel(nNinjaQuest_StartId,nNinjaQuest_UserId) then
			NewTaskTemplate_NpcDialogue(nNinjaQuest_StartId,nNinjaQuest_NpcId,"AcceptLevel",nNinjaQuest_UserId)
			return true
		end
	end
	
	return false
end

-- npc处使用
function NinjaQuest_ChkNewQuest(nNinjaQuest_NpcId)
	-- 检测任务并传送
	for a,b in pairs(tNinjaQuest_Count["SpeTranTask"]) do
		if SpecialServer_ChkNoGiftServer() then
			b = tNinjaQuest_ExTaskId[b]
		end
		if Task_ChkTaskDetail(b) then
			if not Task_ChkTaskDetailValue(b,"CompleteFlag",">=",1) then
				local sNewFunc = "NinjaQuest_TransNpc</N>%d</N>%d" 
				if b == 4310 or b == 4415 then
					nNinjaQuest_NpcId = nNinjaQuest_NpcId
				else
					nNinjaQuest_NpcId = 25854
				end
				Sys_MsgBox(tNinjaQuest_NewText["HaveTask"],string.format(sNewFunc,25854,b))
				return true
			end
		end
	end
	
	return false
end

-- 使用忍者密信开启任务
function NinjaQuest_UseLetter(nNinjaQuest_ItemId)
	-- 非忍者
	-- 获取玩家职阶
	local nNinjaQuest_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNinjaQuest_Pro = Get_UserProType(nNinjaQuest_ProLev)
	
	if nNinjaQuest_Pro ~= tNinjaQuest_Count["ProType"] then
		User_TalkChannel2005(tNinjaQuest_NewText["NotAcceptTask"])
		return
	end
	
	local nNinjaQuest_StartId = tNinjaQuest_Count["StartId"]
	local nNinjaQuest_EndId = tNinjaQuest_Count["EndId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_StartId = tNinjaQuest_ExTaskId[nNinjaQuest_StartId]
		nNinjaQuest_EndId = tNinjaQuest_ExTaskId[nNinjaQuest_EndId]
	end
	
	if Task_ChkTaskDetail(nNinjaQuest_EndId) then
		if Task_ChkTaskDetailValue(nNinjaQuest_EndId,"CompleteFlag",">=",1) then
			if Item_DelItem(nNinjaQuest_ItemId) then
				Sys_SaveActionTaskLog(tNinjaQuest_Log["UseDel"])
			end
			Sys_MsgBox(tNinjaQuest_NewText["FinishTask"][nNinjaQuest_EndId])
			return
		end
	end

	if Task_ChkTaskDetail(nNinjaQuest_StartId) then
		if not Task_ChkTaskDetailValue(nNinjaQuest_StartId,"CompleteFlag",">=",1) then
			local nNinjaQuest_MapId = Get_NpcMapID(tNinjaQuest_Count["StartNpcId"])
			local nNinjaQuest_UserMapId = Get_UserMapId()
			if nNinjaQuest_UserMapId == nNinjaQuest_MapId then
				NpcPosition_PathFind(tNinjaQuest_Count["StartNpcId"])
			User_TalkChannel2005(tNinjaQuest_NewText["HaveTask"])
			else	
			NinjaQuest_TransPos(1)
				local sNinjaQuest_Func = "NpcPosition_PathFind</N>%d"
				Sys_MsgBox(tNinjaQuest_NewText["HaveTask"],string.format(sNinjaQuest_Func,tNinjaQuest_Count["StartNpcId"]),string.format(sNinjaQuest_Func,tNinjaQuest_Count["StartNpcId"]))
			end
			return
		end
		NinjaQuest_ChkQuest()
	else
		NinjaQuest_ChkQuest()
	end
	
	if Task_ChkTaskDetail(nNinjaQuest_StartId) then
		return
	end
	-- 任务太多
	-- if not Task_AddTaskDetail(nNinjaQuest_StartId) then
		-- User_TalkChannel2005(tNinjaQuest_NewText["FullTask"])
		-- return
	-- end
	
	-- 确认传送
	local sFunc = "NinjaQuest_TransPos</N>%d"
	Sys_MsgBox(tNinjaQuest_NewText["AcceptTask"][nNinjaQuest_StartId],string.format(sFunc,1))
	-- if Item_DelItem(nNinjaQuest_ItemId) then
		-- Sys_SaveActionTaskLog(tNinjaQuest_Log["UseDel"])
	-- end
	-- NinjaQuest_TransPos(1)
end

-- 传送进地图
function NinjaQuest_TransPos(nNinjaQuest_SendIndex)
	local nNinjaQuest_MapId = tNinjaQuest_MapPostion[nNinjaQuest_SendIndex]["MapId"]
	local nNinjaQuest_PosX = tNinjaQuest_MapPostion[nNinjaQuest_SendIndex]["PosX"]
	local nNinjaQuest_PosY = tNinjaQuest_MapPostion[nNinjaQuest_SendIndex]["PosY"]
	local nNinjaQuest_Range = tNinjaQuest_MapPostion[nNinjaQuest_SendIndex]["Range"]
	
	User_UserRandBoundTrans(nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,nNinjaQuest_Range,nNinjaQuest_Range)
end

-- 传送进地图
function NinjaQuest_TransNpc(nNinjaQuest_NpcId,nNinjaQuest_TaskId)
	local nNinjaQuest_UserMapId = Get_UserMapId()
	local nNinjaQuest_UserMapDoc = Get_MapDoc(nNinjaQuest_UserMapId)
	local nNinjaQuest_PosX = Get_NpcPositionX(nNinjaQuest_NpcId) + math.random(1,3)
	local nNinjaQuest_PosY = Get_NpcPositionY(nNinjaQuest_NpcId) + math.random(1,3)
	if nNinjaQuest_NpcId == 25851 then
		if nNinjaQuest_UserMapDoc == 10763 then
			Sys_GotoSomeWhere(nNinjaQuest_UserMapId,nNinjaQuest_PosX,nNinjaQuest_PosY)
			return
		end
		-- 进入副本
		if User_EnterInstance(tNewTaskTemplate[4303]["Instance"]["Type"],0,0,0) then
			-- 创建纸张
			NinjaQuest_CreatePaper()
		end
		return
	end
	if nNinjaQuest_TaskId == 4303 or nNinjaQuest_TaskId == 4408 then
		if nNinjaQuest_UserMapDoc == 10763 then
			Sys_GotoSomeWhere(nNinjaQuest_UserMapId,nNinjaQuest_PosX,nNinjaQuest_PosY)
			return
		end
		if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"1",">=",1) then
			-- 进入副本
			if User_EnterInstance(tNewTaskTemplate[4303]["Instance"]["Type"],0,0,0) then
				-- 创建纸张
				NinjaQuest_CreatePaper()
			end
			return
		end
	end
	
	local nNinjaQuest_MapId = Get_NpcMapID(nNinjaQuest_NpcId)
	local nNinjaQuest_Range = tNinjaQuest_MapPostion[1]["Range"]
	if nNinjaQuest_UserMapId == nNinjaQuest_MapId then
		NpcPosition_PathFind(nNinjaQuest_NpcId)
		return
	end
	
	User_UserRandBoundTrans(nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,nNinjaQuest_Range,nNinjaQuest_Range)
end

-- 散落的纸张
function NinjaQuest_UsePaperOpen(nNinjaQuest_ItemId)
	if not Item_ChkMulItem(nNinjaQuest_ItemId,nNinjaQuest_ItemId,1) then
		Sys_MsgBox(tNinjaQuest_NewText["NotEnoughItem"])
		return
	end
	
	LinkItemGossipFunc_New(nNinjaQuest_ItemId,"1-1")
end

-- 散落的纸张
function NinjaQuest_UsePaper(nNinjaQuest_ItemId)
	local nNinjaQuest_TaskId = tNinjaQuest_Count["PaperTaskId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	
	if not Task_ChkTaskDetail(nNinjaQuest_TaskId) then
		return
	end
	
	if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"1",">=",1) then
		Sys_MsgBox(tNinjaQuest_NewText["HaveRead"],"NpcPosition_PathFind</N>25851")
		return 
	end
	
	Task_SetTaskDetailData1(nNinjaQuest_TaskId,1)
	Sys_MsgBox(tNinjaQuest_NewText["HaveRead"],"NpcPosition_PathFind</N>25851")
end

-- 发邮件
function NinjaQuest_OnLine()
	-- 等级大于40级的
	if not User_JudgeLevelAndMetempsychosis(tNinjaQuest_Count["Level"],tNinjaQuest_Count["Mete"]) then
		return
	end
	
	-- 非忍者
	-- 获取玩家职阶
	local nNinjaQuest_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNinjaQuest_Pro = Get_UserProType(nNinjaQuest_ProLev)
	
	if nNinjaQuest_Pro ~= tNinjaQuest_Count["ProType"] then
		return
	end
	
	-- 上线接任务
	NinjaQuest_OnLineAcceptTask()
	NinjaQuest_FinishSendMail()
	
	-- 已发送过邮件
	local nNinjaQuest_Data = NinjaQuest_GetStcValue(1)
	if nNinjaQuest_Data >= 1 then
		return
	end
	
	NinjaQuest_SetStcValue(1,1)
	
	local nNinjaQuest_ExistDay = tNinjaQuest_Count["ExistDay"]
	local sNinjaQuest_Sender = tNinjaQuest_NewText["Mail"]["Sender"] 
	local sNinjaQuest_Title = tNinjaQuest_NewText["Mail"]["Title"]
	local sNinjaQuest_Content = tNinjaQuest_NewText["Mail"]["Content"]
	-- 发邮件
	local nNinjaQuest_ActionId = tNinjaQuest_Count["ActionId"]
	local nNinjaQuest_UserId = Get_UserId()
	Sys_SendMail(nNinjaQuest_UserId,0,0,nNinjaQuest_ActionId,0,nNinjaQuest_ExistDay,sNinjaQuest_Sender,sNinjaQuest_Title,sNinjaQuest_Content)
end

-- 上线接任务
function NinjaQuest_OnLineAcceptTask()
	local nNinjaQuest_StartId = tNinjaQuest_Count["StartId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_StartId = tNinjaQuest_ExTaskId[nNinjaQuest_StartId]
	end
	if Task_ChkTaskDetail(nNinjaQuest_StartId) then
		return
	end
	
	if Task_AddTaskDetail(nNinjaQuest_StartId) then
		-- 确认传送
		local sFunc = "NinjaQuest_TransPos</N>%d"
		Sys_MsgBox(tNinjaQuest_NewText["AcceptTask"][nNinjaQuest_StartId],string.format(sFunc,1))
	end
end

-- 接任务函数
function NinjaQuest_AcceptFunc(nNinjaQuest_TaskId,nNinjaQuest_NowUserId)
	local nNinjaQuest_UserId = nNinjaQuest_NowUserId or Get_UserId()
	-- 重置面板
	if nNinjaQuest_TaskId == tNinjaQuest_Count["ResectTaskId"] then
		Task_SetTaskDetailData(nNinjaQuest_TaskId,0,"7",nNinjaQuest_UserId)
	end
	
	-- 接任务105提示
	if tNewTaskTemplate[nNinjaQuest_TaskId]["Msg"]["AcceptTask"] ~= nil then
		local nNinjaQuest_NpcId = tNinjaQuest_Count["AcceptTask"][nNinjaQuest_TaskId]
		Sys_MsgBox(tNewTaskTemplate[nNinjaQuest_TaskId]["Msg"]["AcceptTask"],"NpcPosition_PathFind</N>" .. nNinjaQuest_NpcId,nil,nNinjaQuest_UserId)
	end
	
	-- 开门
	if tNinjaQuest_Count["Gouyu"][nNinjaQuest_TaskId] ~= nil then
		NinjaQuest_OpenGouyu(nNinjaQuest_TaskId)
	end
	
	if nNinjaQuest_TaskId == 4309 or nNinjaQuest_TaskId == 4414 then
		-- NinjaPromotion_GotoNewMap()
	end
	
	-- 怪物处理的
	if tNinjaQuest_MonsterData[nNinjaQuest_TaskId] ~= nil and tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["MonsterId"] ~= nil then
		if not Task_ChkTaskDetail(nNinjaQuest_TaskId) then
			return
		end
		if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"CompleteFlag",">=",1) then
			return
		end
		-- 创建怪物
		local nNinjaQuest_MonsterId = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["MonsterId"]
		local nNinjaQuest_MapId = Get_UserMapId()
		local nNinjaQuest_MonsterNum = Get_SysTempData(1,nNinjaQuest_MapId,nNinjaQuest_MonsterId)
		if nNinjaQuest_MonsterId == 5914 then
			if nNinjaQuest_MonsterNum >= 5 then
				return
			end
			if nNinjaQuest_MonsterNum ~= 0 and tNinjaQuest_CreateMonsterTime[nNinjaQuest_UserId] ~= nil then
				local nNinjaQuest_NowTime = os.time() - 60
				if nNinjaQuest_NowTime < tNinjaQuest_CreateMonsterTime[nNinjaQuest_UserId] then
					return
				end
			end
			tNinjaQuest_CreateMonsterTime[nNinjaQuest_UserId] = os.time()
		else
			if nNinjaQuest_MonsterNum >= 1 then
				return
			end
		end
		local nNinjaQuest_GenId = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["GenID"]
		local nNinjaQuest_PosX = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["PosX"]
		local nNinjaQuest_PosY = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["PosY"]
		Monster_AddAndCount(nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,nNinjaQuest_GenId,nNinjaQuest_MonsterId)
	end
end

-- 中间任务触发的函数 
function NinjaQuest_MidFunc(nNinjaQuest_TaskId,nNinjaQuest_UserId)
	
	if nNinjaQuest_TaskId == tNinjaQuest_Count["PaperTaskId"] or nNinjaQuest_TaskId == tNinjaQuest_Count["NewPaperTaskId"] then
		local sNinjaQuest_Func = "NinjaQuest_UsePaperOpen</N>" .. tNinjaQuest_Count["PaperId"]
		Item_DialogByType(tNinjaQuest_Count["PaperId"],tNinjaQuest_NewText["UseItem"],sNinjaQuest_Func,nil,nNinjaQuest_UserId)
	end
	-- local nNinjaQuest_TrapType = tNinjaQuest_Count["TaskToTrap"][nNinjaQuest_TaskId]
	-- if nNinjaQuest_TrapType ~= nil then
		-- Trap_DelMapTrap(nNinjaQuest_MapId,nNinjaQuest_TrapType)
		-- Trap_CreateMapTrap(nNinjaQuest_TrapType,nNinjaQuest_TrapType,0,nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,5,5)
	-- end
end

-- 交任务函数
function NinjaQuest_CompleteFunc(nNinjaQuest_TaskId,nNinjaQuest_UserId)
	-- 弹框
	if tNinjaQuest_NewText["FinishTask"][nNinjaQuest_TaskId] ~= nil then
		local sNinjaQuest_ComFunc = "NinjaQuest_CompleteTaskLink</N>%d"
		Sys_MsgBox(tNinjaQuest_NewText["FinishTask"][nNinjaQuest_TaskId],string.format(sNinjaQuest_ComFunc,nNinjaQuest_TaskId),nil,nNinjaQuest_UserId)
	end
	
	-- 开门
	if tNinjaQuest_Count["Gouyu"][nNinjaQuest_TaskId] ~= nil then
		NinjaQuest_OpenGouyu(nNinjaQuest_TaskId)
	end
	
	-- 播放光效
	if tNinjaQuest_Effect[nNinjaQuest_TaskId] ~= nil then
		local sNinjaQuest_Szobj = tNinjaQuest_Effect[nNinjaQuest_TaskId]["SzObj"]
		local sNinjaQuest_Effect = tNinjaQuest_Effect[nNinjaQuest_TaskId]["Effect"]
		User_EffectAdd(sNinjaQuest_Szobj,sNinjaQuest_Effect,nNinjaQuest_UserId)
	end
	
	-- 获得奖励
	-- if tNinjaQuest_NewText["RewardText"][nNinjaQuest_TaskId] ~= nil then
		-- Sys_MsgBox(tNinjaQuest_NewText["RewardText"][nNinjaQuest_TaskId],nil,nil,nNinjaQuest_UserId)
	-- end
	
	-- 删除忍者密信
	local nNinjaQuest_EndId = tNinjaQuest_Count["EndId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_EndId = tNinjaQuest_ExTaskId[nNinjaQuest_EndId]
	end
	if nNinjaQuest_TaskId == nNinjaQuest_EndId then
		-- 已领取过不发邮件
		NinjaQuest_AddStcValue(4,1)
		local nNinjaQuest_ItemId = tNinjaQuest_Count["SecretLetter"]
		if Item_ChkItem(nNinjaQuest_ItemId) and Item_DelItem(nNinjaQuest_ItemId) then
			Sys_SaveActionTaskLog(tNinjaQuest_Log["UseDel"])
		end
		-- 下架
		-- NinjaPromotion_GetNewInterface()
	end
end

-- 完成
function NinjaQuest_CompleteTaskLink(nNinjaQuest_TaskId)
	-- 打开任务集会所/传送回主城
	local nNinjaQuest_EndId = tNinjaQuest_Count["EndId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_EndId = tNinjaQuest_ExTaskId[nNinjaQuest_EndId]
	end
	if nNinjaQuest_TaskId == nNinjaQuest_EndId then
		User_OpenDialog(2201)
		if not SpecialServer_ChkNoGiftServer() then
			NinjaQuest_TransPos(4)
		else
			NinjaQuest_TransPos(5)
		end
	end
end

-- 散落的纸张
function NinjaQuest_OpenFunc(nNinjaQuest_NpcId)
	local nNinjaQuest_UserId = Get_UserId()
	
	local nNinjaQuest_TaskId = tNinjaQuest_Count["PaperTaskId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	NewTaskTemplate_MidMain(nNinjaQuest_NpcId,nNinjaQuest_TaskId,nNinjaQuest_UserId)
end

-- 中间任务失败函数
function NinjaQuest_MidFailFunc(nNinjaQuest_TaskId,nNinjaQuest_UserId)
	-- 捉虫大战 3次必定成功
	if nNinjaQuest_TaskId == 4330 or nNinjaQuest_TaskId == 4437 then
		local nNinjaQuest_Event = tNinjaQuest_Stc[2]["EventType"]
		local nNinjaQuest_Type = tNinjaQuest_Stc[2]["DataType"]
		Task_AddStatistic(nNinjaQuest_Event,nNinjaQuest_Type,1,1,nNinjaQuest_UserId)
		Task_SetStcTimestamp(nNinjaQuest_Event,nNinjaQuest_Type,0)
		local nNinjaQuest_Data = Get_UserStatisticValue(nNinjaQuest_Event,nNinjaQuest_Type)
		if nNinjaQuest_Data >= 3 then
			return true
		end
		
		return false
	end
end

-- 杀怪
function NinjaQuest_MonsterDeath(nNinjaQuest_MonsterId)
	-- 怪物数量减少
	local nNinjaQuest_MapId = Get_UserMapId()
	Monster_Death(nNinjaQuest_MonsterId,nNinjaQuest_MapId) 
	local nNinjaQuest_UserId = Get_UserId()
	tNinjaQuest_CreateMonsterTime[nNinjaQuest_UserId] = 0
	
	-- 创建散落的纸张npc
	if nNinjaQuest_MonsterId == 5913 then
		local nNinjaQuest_TaskId = tNinjaQuest_Count["PaperTaskId"]
		NinjaQuest_CreatePaper()
		local nNinjaQuest_PaperPreTaskId = tNinjaQuest_Count["PaperPreTaskId"]
		if SpecialServer_ChkNoGiftServer() then
			nNinjaQuest_PaperPreTaskId = tNinjaQuest_ExTaskId[nNinjaQuest_PaperPreTaskId]
		end
		Task_SetTaskDetailData2(nNinjaQuest_PaperPreTaskId,2)
		-- 弹框
		Sys_MsgBox(tNewTaskTemplate[nNinjaQuest_PaperPreTaskId]["Msg"]["HandTask"],string.format("NinjaQuest_FindHandNpc</N>%d</N>%d",nNinjaQuest_PaperPreTaskId,nNinjaQuest_UserId))
	end
	
	if nNinjaQuest_MonsterId == 5930 then
		local nNinjaQuest_TaskId = tNinjaQuest_Count["SepTaskId"]
		if SpecialServer_ChkNoGiftServer() then
			nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
		end
		-- if not Task_ChkTaskDetail(nNinjaQuest_TaskId) then
			-- return 
		-- end
		local nNinjaQuest_MonsterNum = Get_SysTempData(1,nNinjaQuest_MapId,nNinjaQuest_MonsterId)
		-- if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"1",">=",1) and not Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"2",">=",1) then
		if nNinjaQuest_MonsterNum < 1 then
			-- 创建怪物
			local nNinjaQuest_MonsterId = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["MonsterIdNext"]
			local nNinjaQuest_GenId = tNinjaQuest_MonsterData[nNinjaQuest_TaskId]["GenIDNext"]
			local nNinjaQuest_MapId = Get_UserMapId()
			local nNinjaQuest_PosX = Get_UserPositionX() + math.random(1,4)
			local nNinjaQuest_PosY = Get_UserPositionY() + math.random(1,4)
			Monster_AddAndCount(nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,nNinjaQuest_GenId,nNinjaQuest_MonsterId)
		end
	end
	
	-- 播放剧情
	if nNinjaQuest_MonsterId == 5931 then
		local nNewNinjaQuest_TaskId = 4366
		if SpecialServer_ChkNoGiftServer() then
			nNewNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNewNinjaQuest_TaskId]
		end
		User_PlayPlot(tNinjaQuest_MonsterData[nNewNinjaQuest_TaskId]["PlotId"])
	end
end

-- boss伤害
function NinjaQuest_KillBossJoin(nServerId,nNinjaQuest_UserId,nRank,nDmg,nNinjaQuest_MonsterId)
	local nNinjaQuest_TaskId = tNinjaQuest_MonsterTask[nNinjaQuest_MonsterId]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	-- 任务不存在
	if not Task_ChkTaskDetail(nNinjaQuest_TaskId,nNinjaQuest_UserId) then
		return
	end
	
	-- 完成任务
	if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"CompleteFlag",">=",1,nNinjaQuest_UserId) then
		return
	end
	NewTaskTemplate_Monster(nNinjaQuest_MonsterId,nNinjaQuest_TaskId,nNinjaQuest_UserId)
end

function NinjaQuest_FindHandNpc(nNinjaQuest_TaskId)
	local nNinjaQuest_NpcId = tNinjaQuest_Count["AcceptTask"][nNinjaQuest_TaskId]
	NpcPosition_PathFind(nNinjaQuest_NpcId)
end

-- 创建散落的纸
function NinjaQuest_CreatePaper()
	local nNinjaQuest_TaskId = tNinjaQuest_Count["PaperTaskId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	local tNinjaQuest_Npc = tNewTaskTemplate[nNinjaQuest_TaskId]["Middle"]["Npc"][25951]
	local tNinjaQuest_Pos = tNinjaQuest_Npc["Pos"]
	local nNinjaQuest_MapId = Get_UserMapId()
	local nNinjaQuest_PosX = tNinjaQuest_Pos[1][1]
	local nNinjaQuest_PosY = tNinjaQuest_Pos[1][2]
	-- 散落的纸张
	Npc_CreateDynaNpc("NULL",2,1,tNinjaQuest_Count["Look"],0,nil,nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,0,0,0,tNinjaQuest_Count["NewActionId"])
	local nNinjaQuest_TrapType = tNinjaQuest_Count["TrapType"]
	local nNinjaQuest_Lookface = tNinjaQuest_Count["Lookface"]
	
	Trap_CreateMapTrap(nNinjaQuest_TrapType,nNinjaQuest_Lookface,0,nNinjaQuest_MapId,nNinjaQuest_PosX,nNinjaQuest_PosY,2,2)
end

-- 陷阱自动读取
function NinjaQuest_CompleteTask(nNinjaQuest_TrapId,nNinjaQuest_TrapType) 
	for i,v in pairs(tNinjaQuest_Count["TrapToTask"]) do
		NinjaQuest_CompleteTaskChk(v) 
	end
end

function NinjaQuest_CompleteTaskChk(nNinjaQuest_TaskId) 
	if not Task_ChkTaskDetail(nNinjaQuest_TaskId) then
		return
	end
	
	if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"1",">=",1) then
		return false
	end
	
	-- 判断任务是否已完成
	if Task_ChkTaskDetailValue(nNinjaQuest_TaskId,"CompleteFlag",">=",1) then
		return
	end
	local nNinjaQuest_UserId = Get_UserId()
	-- if tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] == nil then
		-- tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] = 0
	-- end
	-- if tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] > 0 then
		-- local nNinjaQuest_NowTime = os.time()
		-- if nNinjaQuest_NowTime - tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] <= 5 then
			-- Sys_MsgBox(tNinjaQuest_NewText["ClickTrap"])
			-- return
		-- else
			-- tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] = nNinjaQuest_NowTime
		-- end
	-- end
	local sFunc = string.format("NinjaQuest_CompleteTaskMid</N>%d",nNinjaQuest_TaskId)
	local nSecs = tNewTaskTemplate[nNinjaQuest_TaskId]["Middle"]["Reading"]["Secs"]
	local sContent = tNewTaskTemplate[nNinjaQuest_TaskId]["Middle"]["Reading"]["Content"]
	local nActionId = tNewTaskTemplate[nNinjaQuest_TaskId]["Middle"]["Reading"]["ActionId"]
	-- if tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] == 0 then
		-- tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] = os.time()
	-- end
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

-- 自动完成
function NinjaQuest_CompleteTaskMid(nNinjaQuest_TaskId,nNinjaQuest_UserId)
	Task_SetTaskDetailData1(nNinjaQuest_TaskId,1,nNinjaQuest_UserId)
	-- tNinjaQuest_ClickTrapTime[nNinjaQuest_UserId] = 0
	-- 105提示框
	if tNewTaskTemplate[nNinjaQuest_TaskId]["Msg"]["HandTask"] ~= nil then
		Sys_MsgBox(tNewTaskTemplate[nNinjaQuest_TaskId]["Msg"]["HandTask"],string.format("NinjaQuest_FindHandNpc</N>%d</N>%d",nNinjaQuest_TaskId,nNinjaQuest_UserId),nil,nNinjaQuest_UserId)
	end
end

-- 忍法帖直接加入勾玉
function NinjaQuest_ForbearanceLaw(nNinjaQuest_TaskId,nNinjaQuest_Index)
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	-- 设置
	local nNinjaQuest_Event = tNinjaQuest_Stc[3]["EventType"]
	local nNinjaQuest_Type = tNinjaQuest_Stc[3]["DataType"]
	local nNinjaQuest_GetGouyuType = tNinjaQuest_Count["GouyuType"][nNinjaQuest_Index]
	local nNinjaQuest_StcIndex = tNinjaQuest_Count["StcType"][nNinjaQuest_Index]
	NinjaQuest_SetStcValue(3,nNinjaQuest_StcIndex)
	NinjaQuest_AddStcValue(3315898,2^nNinjaQuest_Index)
	User_AwardGouYu(nNinjaQuest_GetGouyuType,1)
	
	Sys_SaveActionTaskLog(tNinjaQuest_Log["GetGouyu"][nNinjaQuest_TaskId][nNinjaQuest_Index])
	NewTaskTemplate_CompleteMain(nNinjaQuest_TaskId)
end

-- 开门
function NinjaQuest_OpenGouyu(nNinjaQuest_TaskId)
	if tNinjaQuest_Count["Gouyu"][nNinjaQuest_TaskId] ~= nil then
		local tNinjaQuest_Gouyu = tNinjaQuest_Count["Gouyu"][nNinjaQuest_TaskId]
		if not User_IsOpenGouYuPos(tNinjaQuest_Count["LastDoor"]) then
			if nNinjaQuest_TaskId == 4307 or nNinjaQuest_TaskId == 4412 then
				User_OpenGouYuPos(tNinjaQuest_Gouyu[1],nNinjaQuest_UserId)
				User_OpenGouYuPos(tNinjaQuest_Gouyu[2],nNinjaQuest_UserId)
				User_OpenGouYuPos(tNinjaQuest_Gouyu[3],nNinjaQuest_UserId)
				User_OpenGouYuPos(tNinjaQuest_Gouyu[4],nNinjaQuest_UserId)
				-- User_OpenDialog(1210)
				Sys_SaveActionTaskLog(string.format(tNinjaQuest_Log["OpenLaw"][1],nNinjaQuest_TaskId),nNinjaQuest_UserId)
				Sys_SaveActionTaskLog(string.format(tNinjaQuest_Log["OpenLaw"][2],nNinjaQuest_TaskId),nNinjaQuest_UserId)
			else
				-- 玩家勾玉装备位开启情况
				local nIndex = tNinjaQuest_Gouyu[1]
				for i=1,nIndex-1 do
					if not User_IsOpenGouYuPos(i) then
						User_OpenGouYuPos(i)
						User_OpenGouYuPos(i+8)
					end
				end
				User_OpenGouYuPos(tNinjaQuest_Gouyu[1],nNinjaQuest_UserId)
				User_OpenGouYuPos(tNinjaQuest_Gouyu[2],nNinjaQuest_UserId)
				Sys_SaveActionTaskLog(string.format(tNinjaQuest_Log["OpenLaw"][nIndex],nNinjaQuest_TaskId),nNinjaQuest_UserId)
			end
		end
	end
	-- if nNinjaQuest_TaskId == 4368 or nNinjaQuest_TaskId == 4477 then
		-- NinjaPromotion_GetNewInterface()
		-- User_SetTimer(1,"NinjaPromotion_GetNewInterface",1)
	-- end
end

-- 进入副本初始化函数
function NinjaQuest_InstanceInitFunc(nNinjaQuest_TaskId,nNinjaQuest_UserId)
	NinjaCopyGame_EnterInstance(nNinjaQuest_TaskId,nNinjaQuest_UserId)
end

--------------------------------------处理npc传入id
function NinjaQuest_NpcCompleteMain(nNinjaQuest_TaskId)
	-- 非忍者不许完成任务
	-- 获取玩家职阶
	local nNinjaQuest_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNinjaQuest_Pro = Get_UserProType(nNinjaQuest_ProLev)
	
	if nNinjaQuest_Pro ~= tNinjaQuest_Count["ProType"] then
		User_TalkChannel2005(tNinjaQuest_NewText["NotProTask"])
		return
	end
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	NewTaskTemplate_CompleteMain(nNinjaQuest_TaskId)
end
function NinjaQuest_NpcAcceptMain(nNinjaQuest_TaskId)
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	NewTaskTemplate_AcceptMain(nNinjaQuest_TaskId)
end
function NinjaQuest_NpcFind(nNinjaQuest_TaskId)
	-- 非忍者不许完成任务
	-- 获取玩家职阶
	local nNinjaQuest_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNinjaQuest_Pro = Get_UserProType(nNinjaQuest_ProLev)
	
	if nNinjaQuest_Pro ~= tNinjaQuest_Count["ProType"] then
		User_TalkChannel2005(tNinjaQuest_NewText["NotProTask"])
		return
	end
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	NewTaskTemplate_Find(nNinjaQuest_TaskId)
end
function NinjaQuest_NpcCreateInstance(nNinjaQuest_TaskId)
	-- 非忍者不许完成任务
	-- 获取玩家职阶
	local nNinjaQuest_ProLev = Get_NewUserProfession()
	-- 获取玩家职业类型
	local nNinjaQuest_Pro = Get_UserProType(nNinjaQuest_ProLev)
	
	if nNinjaQuest_Pro ~= tNinjaQuest_Count["ProType"] then
		User_TalkChannel2005(tNinjaQuest_NewText["NotProTask"])
		return
	end
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_TaskId = tNinjaQuest_ExTaskId[nNinjaQuest_TaskId]
	end
	NewTaskTemplate_CreateInstance(nNinjaQuest_TaskId)
end
--------------------------------------
-- 3315898,'基础法印自选礼盒'
function NinjaQuest_OpenFayinDialog(nNinjaQuest_ItemId)
	if not Item_ChkItem(nNinjaQuest_ItemId) then
		return
	end
	-- 初始化对白
	local nNinjaQuest_TotalData = NinjaQuest_GetStcValue(nNinjaQuest_ItemId)
	for i=1,5 do
		local sNinjaQuest_OptionIndex= tNinjaQuest_Count["TextIndex"][i]
		if NinjaQuest_ChkHaveStcInterval(nNinjaQuest_ItemId,i) then
			tItem[nNinjaQuest_ItemId][sNinjaQuest_OptionIndex] = ""
		else
			tItem[nNinjaQuest_ItemId][sNinjaQuest_OptionIndex] = tNinjaQuest_NewText[nNinjaQuest_ItemId][sNinjaQuest_OptionIndex]
		end
	end
	LinkItemGossipFunc_New(nNinjaQuest_ItemId,"1-1")
end

-- 打开二次确认
function NinjaQuest_ChooseFayin(nNinjaQuest_ItemId,nNinjaQuest_Index)
	-- 物品不存在
	if not Item_ChkItem(nNinjaQuest_ItemId) then
		User_TalkChannel2005(tNinjaQuest_NewText["ItemUseNoItem"])
		return
	end
	
	local nNinjaQuest_ChooseId = tNinjaQuest_Reward[nNinjaQuest_ItemId][nNinjaQuest_Index]["RewardItem"][1]["Id"]
	local sNinjaQuest_ChooseName = Get_ItemtypeName(nNinjaQuest_ChooseId)
	local sNinjaQuest_BsaicTextOne = tNinjaQuest_NewText[nNinjaQuest_ItemId]["Text211"]
	tItem[nNinjaQuest_ItemId]["Text211"] = string.format(sNinjaQuest_BsaicTextOne,sNinjaQuest_ChooseName)
	-- 法印说明
	local sNinjaQuest_FayinEffect = tNinjaQuest_NewText["FayinEffect"][nNinjaQuest_ChooseId]
	local sNinjaQuest_BsaicTextTwo = tNinjaQuest_NewText[nNinjaQuest_ItemId]["Text212"]
	tItem[nNinjaQuest_ItemId]["Text212"] = string.format(sNinjaQuest_BsaicTextTwo,sNinjaQuest_FayinEffect)
	local sNinjaQuest_Func = "NinjaQuest_SureChooseFayin</N>%d</N>%d"
	tItem[nNinjaQuest_ItemId]["OptionFunc211"] = string.format(sNinjaQuest_Func,nNinjaQuest_ItemId,nNinjaQuest_Index)
	
	LinkItemGossipFunc_New(nNinjaQuest_ItemId,"2-1")
end

-- 二次确认
function NinjaQuest_SureChooseFayin(nNinjaQuest_ItemId,nNinjaQuest_Index)
	-- 物品不存在
	if not Item_ChkItem(nNinjaQuest_ItemId) then
		User_TalkChannel2005(tNinjaQuest_NewText["ItemUseNoItem"])
		return
	end
	
	-- 背包不足
	-- if not RewardTemplate_CheckSpace(tNinjaQuest_Reward[nNinjaQuest_ItemId][nNinjaQuest_Index]) then
		-- return
	-- end
	
	if Item_DelItem(nNinjaQuest_ItemId) then
		-- 选择给奖励
		NinjaQuest_AddStcValue(nNinjaQuest_ItemId,2^nNinjaQuest_Index)
		-- local bFlag,str = RewardTemplate_UseItemAndMsg(tNinjaQuest_Reward[nNinjaQuest_ItemId][nNinjaQuest_Index])
		-- 直接加入忍法帖
		local sNinjaQuest_tr = Get_ItemtypeName(tNinjaQuest_Reward[nNinjaQuest_ItemId][nNinjaQuest_Index]["RewardItem"][1]["Id"])
		local nNinjaQuest_GoyuId = tNinjaQuest_Count[nNinjaQuest_ItemId][nNinjaQuest_Index]
		User_AwardGouYu(nNinjaQuest_GoyuId,1)
		Sys_SaveActionTaskLog(string.format(tNinjaQuest_Log["OpenBag"],nNinjaQuest_ItemId,nNinjaQuest_GoyuId))
		Sys_MsgBox(string.format(tRewardTemplate_Text["Main"],sNinjaQuest_tr))
		
		if nNinjaQuest_ItemId == 3315898 then
			local nNinjaQuest_OpenTime = 0
			for i=1,5 do
				local sNinjaQuest_OptionIndex= tNinjaQuest_Count["TextIndex"][i]
				if NinjaQuest_ChkHaveStcInterval(nNinjaQuest_ItemId,i) then
					nNinjaQuest_OpenTime = nNinjaQuest_OpenTime + 1
				end
			end
			-- 打开推送商店
			if nNinjaQuest_OpenTime == 3 then
			-- 下架
				-- NinjaPromotion_GetNewInterface5()
			end
		end
	end
end

-- 3316119,'稀有辅助法印礼包'
function NinjaQuest_OpenNewBag(nNinjaQuest_ItemId)
	-- 判断空间
	if not RewardTemplate_CheckSpace(tNinjaQuest_Random[nNinjaQuest_ItemId][1]) then
		return
	end
	
	-- 判断掩码
	local nNinjaQuest_Data = NinjaQuest_GetStcValue(3315898)
	local tNinjaQuest_ChooseId = {}
	for i=1,3 do
		if NinjaQuest_ChkHaveStcInterval(3315898,i) then
			table.insert(tNinjaQuest_ChooseId,i)
		end
	end
	
	-- 随机
	local nNinjaQuest_ChooseLen = #tNinjaQuest_ChooseId
	local nNinjaQuest_ChooseIndex = 0
	local nNinjaQuest_RealIndex = 0
	if nNinjaQuest_ChooseLen == 0 then
		nNinjaQuest_RealIndex = math.random(1,3)
	else
		nNinjaQuest_ChooseIndex = math.random(1,nNinjaQuest_ChooseLen)
		nNinjaQuest_RealIndex = tNinjaQuest_ChooseId[nNinjaQuest_ChooseIndex]
	end
	RewardTemplate_UseItemAndMsg(tNinjaQuest_Random[nNinjaQuest_ItemId][nNinjaQuest_RealIndex])
end

-- 八门全开道具
function NinjaQuest_OpenAllLaw(nNinjaQuest_ItemId)
	if User_IsOpenGouYuPos(tNinjaQuest_Count["LastDoor"]) then
		User_TalkChannel2005(tNinjaQuest_NewText["HaveOpenAllLaw"])
		if Item_ChkItem(nNinjaQuest_ItemId) and Item_DelItem(nNinjaQuest_ItemId) then
			Sys_SaveActionTaskLog(tNinjaQuest_Log["HaveOpenAllLaw"])
		end
		return
	end
	
	if Item_ChkItem(nNinjaQuest_ItemId) and Item_DelItem(nNinjaQuest_ItemId) then
		for i=1,tNinjaQuest_Count["LastDoor"] do
			if not User_IsOpenGouYuPos(i) then
				User_OpenGouYuPos(i)
			end
		end
		User_TalkChannel2005(tNinjaQuest_NewText["OpenAllLaw"])
		Sys_SaveActionTaskLog(tNinjaQuest_Log["OpenAllLaw"])
	end
end


-- 发送邮件补给已完成玩家
function NinjaQuest_FinishSendMail()
	-- 已领取
	local nNinjaQuest_Flag = NinjaQuest_GetStcValue(4)
	if nNinjaQuest_Flag >= 1 then
		return
	end
	
	local nNinjaQuest_EndId = tNinjaQuest_Count["EndId"]
	if SpecialServer_ChkNoGiftServer() then
		nNinjaQuest_EndId = tNinjaQuest_ExTaskId[nNinjaQuest_EndId]
	end
	
	if Task_ChkTaskDetail(nNinjaQuest_EndId) then
		if Task_ChkTaskDetailValue(nNinjaQuest_EndId,"CompleteFlag",">=",1) then
			-- 发邮件
			NinjaQuest_AddStcValue(4,1)
			
			local nNinjaQuest_ExistDay = tNinjaQuest_Count["ExistDay"]
			local sNinjaQuest_Sender = tNinjaQuest_NewText["Mail"]["Sender"] 
			local sNinjaQuest_Title = tNinjaQuest_NewText["Mail"]["Title"]
			local sNinjaQuest_Content = tNinjaQuest_NewText["Mail"]["NewContent"]
			-- 发邮件
			local nNinjaQuest_ActionId = tNinjaQuest_Count["ActionIdNew"]
			local nNinjaQuest_UserId = Get_UserId()
			Sys_SendMail(nNinjaQuest_UserId,0,0,nNinjaQuest_ActionId,0,nNinjaQuest_ExistDay,sNinjaQuest_Sender,sNinjaQuest_Title,sNinjaQuest_Content)
		end
	end
end
--------------------------------------物品模块--------------------------------------
-- 3315567,'忍者密信'
tItem[3315567] = tItem[3315567] or {}
tItem[3315567]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_UseLetter(nNinjaQuest_ItemId)
end

-- 3315325,'散落的纸张'
tItemFace[3315325] = 2866
tItem[3315325] = tItem[3315325] or {}
tItem[3315325]["DialogueText"] = tNinjaQuest_NewText[3315325]
tItem[3315325]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_UsePaperOpen(nNinjaQuest_ItemId)
end
tItem[3315325]["Text1-1"] = {111,112}
tItem[3315325]["tOption1-1"] = {111}
tItem[3315325]["OptionPoint111"] = "2-1"
tItem[3315325]["Text2-1"] = {211,212}
tItem[3315325]["tOption2-1"] = {211}
tItem[3315325]["OptionPoint211"] = "2-2"
tItem[3315325]["Text2-2"] = {221,222}
tItem[3315325]["tOption2-2"] = {221}
tItem[3315325]["OptionPoint221"] = "2-3"
tItem[3315325]["Text2-3"] = {231,232}
tItem[3315325]["tOption2-3"] = {231}
tItem[3315325]["OptionPoint231"] = "2-4"
tItem[3315325]["Text2-4"] = {241,242}
tItem[3315325]["tOption2-4"] = {241}
tItem[3315325]["OptionPoint241"] = "2-5"
tItem[3315325]["Text2-5"] = {251,252}
tItem[3315325]["tOption2-5"] = {251}
tItem[3315325]["OptionPoint251"] = "2-6"
tItem[3315325]["Text2-6"] = {261,262}
tItem[3315325]["tOption2-6"] = {261}
tItem[3315325]["OptionFunc261"] = "NinjaQuest_UsePaper</N>3315325"

-- 3315326,'随身笔记'
tItem[3315326] = tItem[3315326] or {}
tItem[3315326]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	-- NinjaQuest_OpenDialog(nNinjaQuest_ItemId)
	NpcPosition_PathFind(25850)
end

-- 3315898,'基础法印自选礼盒'
tItemFace[3315898] = 424
tItem[3315898] = tItem[3315898] or {}
tItem[3315898]["DialogueText"] = tNinjaQuest_NewText[3315898]
tItem[3315898]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_OpenFayinDialog(nNinjaQuest_ItemId)
end
tItem[3315898]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3315898]["tOption1-1"] = {111,112,113,114,115}
-- 1、豪火之印==已选择过的选项不再出现
tItem[3315898]["OptionFunc111"] = "NinjaQuest_ChooseFayin</N>3315898</N>1"
-- 2、水龙之印
tItem[3315898]["OptionFunc112"] = "NinjaQuest_ChooseFayin</N>3315898</N>2"
-- 3、镰鼬之印
tItem[3315898]["OptionFunc113"] = "NinjaQuest_ChooseFayin</N>3315898</N>3"
-- 4、雷切之印
tItem[3315898]["OptionFunc114"] = "NinjaQuest_ChooseFayin</N>3315898</N>4"
-- 5、尘遁之印
tItem[3315898]["OptionFunc115"] = "NinjaQuest_ChooseFayin</N>3315898</N>5"

tItem[3315898]["Text2-1"] = {211,212}
tItem[3315898]["tOption2-1"] = {211,212}
-- 1-1、确认获得
-- 1-2、我再想想
tItem[3315898]["OptionFunc212"] = "NinjaQuest_OpenFayinDialog</N>3315898"

-- 3315899,'法印提升自选礼盒'
tItemFace[3315899] = 1452
tItem[3315899] = tItem[3315899] or {}
tItem[3315899]["DialogueText"] = tNinjaQuest_NewText[3315899]
tItem[3315899]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_OpenFayinDialog(nNinjaQuest_ItemId)
end
tItem[3315899]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3315899]["tOption1-1"] = {111,112,113,114,115}
-- 1、豪火法印·疾==已选择过的选项不再出现
tItem[3315899]["OptionFunc111"] = "NinjaQuest_ChooseFayin</N>3315899</N>1"
-- 2、水龙法印·澎湃
tItem[3315899]["OptionFunc112"] = "NinjaQuest_ChooseFayin</N>3315899</N>2"
-- 3、镰鼬法印·风驰
tItem[3315899]["OptionFunc113"] = "NinjaQuest_ChooseFayin</N>3315899</N>3"
-- 4、雷切法印·神威
tItem[3315899]["OptionFunc114"] = "NinjaQuest_ChooseFayin</N>3315899</N>4"
-- 5、尘遁法印·天绝
tItem[3315899]["OptionFunc115"] = "NinjaQuest_ChooseFayin</N>3315899</N>5"

tItem[3315899]["Text2-1"] = {211,212}
tItem[3315899]["tOption2-1"] = {211,212}
-- 1-1、确认获得
-- 1-2、我再想想
tItem[3315899]["OptionFunc212"] = "NinjaQuest_OpenFayinDialog</N>3315899"

-- 3316119,'稀有辅助法印礼包'
tItem[3316119] = tItem[3316119] or {}
tItem[3316119]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_OpenNewBag(nNinjaQuest_ItemId)
end

-- 3316120,'尊享法印礼包'
tItem[3316120] = tItem[3316120] or {}
tItem[3316120]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	RewardTemplate_RandomReward(tNinjaQuest_Random,nNinjaQuest_ItemId)
end

-- 3316125,'NinjaAwakening8GatesOpen'
tItem[3316125] = tItem[3316125] or {}
tItem[3316125]["Function"] = function(nNinjaQuest_ItemId,sItemName)
	NinjaQuest_OpenAllLaw(nNinjaQuest_ItemId)
end
--------------------------------------怪物掉落-------------------------------------------
local tNinjaQuest_KillMonster = {}
	-- 怪物数量减少
	tNinjaQuest_KillMonster[1] = {}
	tNinjaQuest_KillMonster[1]["Function"] = NinjaQuest_MonsterDeath
	tNinjaQuest_KillMonster[1]["MonsterId"] = {5913,5914,5918,5919,5920,5928,5929,5930,5931}
table.insert(tMonsterDrop_AreaLoad,tNinjaQuest_KillMonster[1])

-- BOSS参与即算完成任务
-- tBossRewardEnd[5914] = tBossRewardEnd[5914] or {}
-- tBossRewardEnd[5914]["tFunction"] = tBossRewardEnd[5914]["tFunction"] or {}
-- table.insert(tBossRewardEnd[5914]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5918] = tBossRewardEnd[5918] or {}
tBossRewardEnd[5918]["tFunction"] = tBossRewardEnd[5918]["tFunction"] or {}
table.insert(tBossRewardEnd[5918]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5919] = tBossRewardEnd[5919] or {}
tBossRewardEnd[5919]["tFunction"] = tBossRewardEnd[5919]["tFunction"] or {}
table.insert(tBossRewardEnd[5919]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5920] = tBossRewardEnd[5920] or {}
tBossRewardEnd[5920]["tFunction"] = tBossRewardEnd[5920]["tFunction"] or {}
table.insert(tBossRewardEnd[5920]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5928] = tBossRewardEnd[5928] or {}
tBossRewardEnd[5928]["tFunction"] = tBossRewardEnd[5928]["tFunction"] or {}
table.insert(tBossRewardEnd[5928]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5930] = tBossRewardEnd[5930] or {}
tBossRewardEnd[5930]["tFunction"] = tBossRewardEnd[5930]["tFunction"] or {}
table.insert(tBossRewardEnd[5930]["tFunction"],NinjaQuest_KillBossJoin)
tBossRewardEnd[5931] = tBossRewardEnd[5931] or {}
tBossRewardEnd[5931]["tFunction"] = tBossRewardEnd[5931]["tFunction"] or {}
table.insert(tBossRewardEnd[5931]["tFunction"],NinjaQuest_KillBossJoin)

--------------------------------------陷阱-------------------------------------------
-- 恢复训练
tTrap[2551] = tTrap[2551] or {}
tTrap[2551]["Function"] = function (nNinjaQuest_TrapId,nNinjaQuest_TrapType)
	NinjaQuest_CompleteTask(nNinjaQuest_TrapId,nNinjaQuest_TrapType)
end

-- 真实之谷
-- tTrap[2552] = tTrap[2552] or {}
-- tTrap[2552]["Function"] = function (nNinjaQuest_TrapId,nNinjaQuest_TrapType)
	-- NinjaQuest_CompleteTask(nNinjaQuest_TrapId,nNinjaQuest_TrapType)
-- end

tTrap[2580] = tTrap[2580] or {}
tTrap[2580]["Function"] = function (nNinjaQuest_TrapId,nNinjaQuest_TrapType)
	-- 传送陷阱
	local nNinjaQuest_UserMapId = Get_UserMapId()
	if nNinjaQuest_UserMapId == tNinjaQuest_MapPostion[2]["MapId"] then
		if SpecialServer_ChkNoGiftServer() then
			local nNinjaQuest_Posx = Get_TrapPosX(nNinjaQuest_TrapId)
			if nNinjaQuest_Posx == 284 then
				NinjaQuest_TransPos(6)
				return
			end
			NinjaQuest_TransPos(5)
			return
		end
		NinjaQuest_TransPos(3)
	else
		NinjaQuest_TransPos(2)
		-- NinjaPromotion_GotoNewMap()
	end
end

-- 上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,NinjaQuest_OnLine)

---------------------------- 任务配置 ----------------------------
-- 雾隠才藏
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4301] = {}
tNewTaskTemplate[4301]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4301]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4301]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4301]["Msg"] = {}
tNewTaskTemplate[4301]["Msg"]["Middle"] = {}
tNewTaskTemplate[4301]["Msg"]["Accept"] = "2-1" -- 接任务 - 25850
tNewTaskTemplate[4301]["Msg"]["NoCompleteTask"] = "3-1" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4301]["Msg"]["Complete"] = "4-1" -- 交任务 - 25850
tNewTaskTemplate[4301]["Msg"]["CompleteTaskData"] = "5-1" -- 交任务掩码未完成 - 25850
tNewTaskTemplate[4301]["Msg"]["AcceptLevel"] = "2-2" -- 接任务职阶不够 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4301]["AcceptDemand"] = {}
tNewTaskTemplate[4301]["AcceptDemand"]["FrontTask"] = 4480 -- 前置任务
tNewTaskTemplate[4301]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4301]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4301]["Accept"] = {}
tNewTaskTemplate[4301]["Accept"]["Find"] = {}
tNewTaskTemplate[4301]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4301]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4301]["Complete"] = {}
tNewTaskTemplate[4301]["Complete"]["NextTask"] = 4302 -- 下一个任务


------------------------------------------------
-- 忍者秘辛
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4302] = {}
tNewTaskTemplate[4302]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4302]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4302]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4302]["Msg"] = {}
tNewTaskTemplate[4302]["Msg"]["Middle"] = {}
tNewTaskTemplate[4302]["Msg"]["Accept"] = "6-1" -- 接任务 - 25850
tNewTaskTemplate[4302]["Msg"]["NoCompleteTask"] = "7-1" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4302]["Msg"]["Complete"] = "8-1" -- 交任务 - 25850
tNewTaskTemplate[4302]["Msg"]["CompleteTaskData"] = "9-1" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4302]["AcceptDemand"] = {}
tNewTaskTemplate[4302]["AcceptDemand"]["FrontTask"] = 4301 -- 前置任务
tNewTaskTemplate[4302]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4302]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4302]["Accept"] = {}
tNewTaskTemplate[4302]["Accept"]["Find"] = {}
tNewTaskTemplate[4302]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4302]["Accept"]["NewPlotId"] = 37 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4302]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4302]["Complete"] = {}
tNewTaskTemplate[4302]["Complete"]["NextTask"] = 4303 -- 下一个任务


------------------------------------------------
-- 不速之客
-- 【旧副本】
tNewTaskTemplate[4303] = {}
tNewTaskTemplate[4303]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4303]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4303]["EndNpcId"] = 25851 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4303]["Msg"] = {}
tNewTaskTemplate[4303]["Msg"]["Middle"] = {}
tNewTaskTemplate[4303]["Msg"]["Accept"] = "10-1" -- 接任务 - 25850
tNewTaskTemplate[4303]["Msg"]["NoCompleteTask"] = "10-2" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4303]["Msg"]["Complete"] = "2-1" -- 交任务 - 25851
tNewTaskTemplate[4303]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25851
-- 接任务的条件需求
tNewTaskTemplate[4303]["AcceptDemand"] = {}
tNewTaskTemplate[4303]["AcceptDemand"]["FrontTask"] = 4302 -- 前置任务
tNewTaskTemplate[4303]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4303]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4303]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4303]["Instance"] = {}
tNewTaskTemplate[4303]["Instance"]["Type"] = 459 -- 副本ID
tNewTaskTemplate[4303]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4303]["Instance"]["Leave"]["MapId"] = 10653
tNewTaskTemplate[4303]["Instance"]["Leave"]["PosX"] = 78
tNewTaskTemplate[4303]["Instance"]["Leave"]["PosY"] = 59
tNewTaskTemplate[4303]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4303]
tNewTaskTemplate[4303]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4303]
tNewTaskTemplate[4303]["Instance"]["MsgBoxWay"] = {} -- 进入副本105提示确定后寻路配置
tNewTaskTemplate[4303]["Instance"]["MsgBoxWay"]["PosX"] = 43
tNewTaskTemplate[4303]["Instance"]["MsgBoxWay"]["PosY"] = 33
tNewTaskTemplate[4303]["Instance"]["Monster"] = {} -- 副本刷怪坐标
tNewTaskTemplate[4303]["Instance"]["Monster"][1] = {}
tNewTaskTemplate[4303]["Instance"]["Monster"][1]["MonsterId"] = 5913
tNewTaskTemplate[4303]["Instance"]["Monster"][1]["MonsterNum"] = 1
tNewTaskTemplate[4303]["Instance"]["Monster"][1]["GenId"] = 30592
tNewTaskTemplate[4303]["Instance"]["Monster"][1]["PosX"] = 43
tNewTaskTemplate[4303]["Instance"]["Monster"][1]["PosY"] = 33
------- 旧副本配置开始 -------
-- 中间表现
tNewTaskTemplate[4303]["Middle"] = {}
tNewTaskTemplate[4303]["Middle"]["Monster"] = {}
tNewTaskTemplate[4303]["Middle"]["Monster"][5913] = {} -- 怪物ID=5913，【东瀛忍者】
tNewTaskTemplate[4303]["Middle"]["Monster"][5913]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4303]["Middle"]["Monster"][5913]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4303]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4303] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4303]["CompleteDemand"] = {}
tNewTaskTemplate[4303]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4303]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4303]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4303]["Complete"] = {}
tNewTaskTemplate[4303]["Complete"]["NextTask"] = 4304 -- 下一个任务


------------------------------------------------
-- 前尘旧忆
-- 【采集类】
tNewTaskTemplate[4304] = {}
tNewTaskTemplate[4304]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4304]["BeginNpcId"] = 25851 -- 接任务npc
tNewTaskTemplate[4304]["EndNpcId"] = 25851 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4304]["Msg"] = {}
tNewTaskTemplate[4304]["Msg"]["Middle"] = {}
tNewTaskTemplate[4304]["Msg"]["Accept"] = "4-1" -- 接任务 - 25851
tNewTaskTemplate[4304]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25851
tNewTaskTemplate[4304]["Msg"]["Complete"] = "6-1" -- 交任务 - 25851
tNewTaskTemplate[4304]["Msg"]["CompleteItem"] = "7-1" -- 交任务物品不足 - 25851
tNewTaskTemplate[4304]["Msg"]["CompleteTaskData"] = "5-1" -- 交任务掩码未完成 - 25851
-- 接任务的条件需求
tNewTaskTemplate[4304]["AcceptDemand"] = {}
tNewTaskTemplate[4304]["AcceptDemand"]["FrontTask"] = 4303 -- 前置任务
tNewTaskTemplate[4304]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4304]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4304]["Accept"] = {}
tNewTaskTemplate[4304]["Accept"]["Find"] = {}
tNewTaskTemplate[4304]["Accept"]["Find"]["MapId"] = 10763 -- 寻路mapid
tNewTaskTemplate[4304]["Accept"]["Find"]["PosX"] = 43 -- 寻路X坐标
tNewTaskTemplate[4304]["Accept"]["Find"]["PosY"] = 33 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4304]["Middle"] = {}
tNewTaskTemplate[4304]["Middle"]["Reading"] = {}
tNewTaskTemplate[4304]["Middle"]["Reading"]["Secs"] = 2 -- 读条秒数
tNewTaskTemplate[4304]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4304]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4304] -- 读条文字
tNewTaskTemplate[4304]["Middle"]["Npc"] = {} -- npc集合
tNewTaskTemplate[4304]["Middle"]["Npc"][25951] = {}
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["ItemId"] = 3315325
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["ItemNum"] = 1
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"] = {} -- NpcId=25951，采集给物品（默认给赠）
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4304]["Middle"]["Npc"][25951]["Pos"] = {{43,32}}
tNewTaskTemplate[4304]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4304] -- 完成中间环节，105提示
-- 中间任务触发的函数
tNewTaskTemplate[4304]["Middle"]["MiddleFunc"] = NinjaQuest_MidFunc
-- 完成任务的条件需求
tNewTaskTemplate[4304]["CompleteDemand"] = {}
tNewTaskTemplate[4304]["CompleteDemand"]["NeedItem"] = {} -- 完成任务需要的物品
tNewTaskTemplate[4304]["CompleteDemand"]["NeedItem"][1] = {}
tNewTaskTemplate[4304]["CompleteDemand"]["NeedItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4304]["CompleteDemand"]["NeedItem"][1]["ItemNum"] = 1
tNewTaskTemplate[4304]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4304]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4304]["Complete"] = {}
tNewTaskTemplate[4304]["Complete"]["NextTask"] = 4305 -- 下一个任务
tNewTaskTemplate[4304]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4304]["Complete"]["Reward"] = {}
tNewTaskTemplate[4304]["Complete"]["Reward"]["DeleteItem"] = {} -- 完成任务删除所需物品
tNewTaskTemplate[4304]["Complete"]["Reward"]["DeleteItem"][1] = {}
tNewTaskTemplate[4304]["Complete"]["Reward"]["DeleteItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4304]["Complete"]["Reward"]["DeleteItem"][1]["ItemNum"] = 1


------------------------------------------------
-- 随身手记
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4305] = {}
tNewTaskTemplate[4305]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4305]["BeginNpcId"] = 25851 -- 接任务npc
tNewTaskTemplate[4305]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4305]["Msg"] = {}
tNewTaskTemplate[4305]["Msg"]["Middle"] = {}
tNewTaskTemplate[4305]["Msg"]["Accept"] = "8-1" -- 接任务 - 25851
tNewTaskTemplate[4305]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25851
tNewTaskTemplate[4305]["Msg"]["Complete"] = "10-3" -- 交任务 - 25850
tNewTaskTemplate[4305]["Msg"]["CompleteTaskData"] = "10-4" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4305]["AcceptDemand"] = {}
tNewTaskTemplate[4305]["AcceptDemand"]["FrontTask"] = 4304 -- 前置任务
tNewTaskTemplate[4305]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4305]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4305]["Accept"] = {}
tNewTaskTemplate[4305]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4305]["Accept"]["Transfer"]["MapId"] = 10653 -- 传送mapid
tNewTaskTemplate[4305]["Accept"]["Transfer"]["PosX"] = 78 -- 传送X坐标
tNewTaskTemplate[4305]["Accept"]["Transfer"]["PosY"] = 59 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4305]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4305]["Complete"] = {}
tNewTaskTemplate[4305]["Complete"]["NextTask"] = 4306 -- 下一个任务
tNewTaskTemplate[4305]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4305]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4305]["Complete"]["Reward"]["Log"] = "0,0,4305,0,18000222,3[3],3329979,50"
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4305]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 50" -- 秘术精华*50


------------------------------------------------
-- 忍术法印
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4306] = {}
tNewTaskTemplate[4306]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4306]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4306]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4306]["Msg"] = {}
tNewTaskTemplate[4306]["Msg"]["Middle"] = {}
tNewTaskTemplate[4306]["Msg"]["Accept"] = "10-5" -- 接任务 - 25850
tNewTaskTemplate[4306]["Msg"]["NoCompleteTask"] = "10-6" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4306]["Msg"]["Complete"] = "10-7" -- 交任务 - 25850
tNewTaskTemplate[4306]["Msg"]["CompleteTaskData"] = "10-8" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4306]["AcceptDemand"] = {}
tNewTaskTemplate[4306]["AcceptDemand"]["FrontTask"] = 4305 -- 前置任务
tNewTaskTemplate[4306]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4306]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4306]["Accept"] = {}
tNewTaskTemplate[4306]["Accept"]["Find"] = {}
tNewTaskTemplate[4306]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4306]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4306]["Complete"] = {}
tNewTaskTemplate[4306]["Complete"]["NextTask"] = 4307 -- 下一个任务


------------------------------------------------
-- 八门遁甲
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4307] = {}
tNewTaskTemplate[4307]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4307]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4307]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4307]["Msg"] = {}
tNewTaskTemplate[4307]["Msg"]["Middle"] = {}
tNewTaskTemplate[4307]["Msg"]["Accept"] = "10-9" -- 接任务 - 25850
tNewTaskTemplate[4307]["Msg"]["NoCompleteTask"] = "10-10" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4307]["Msg"]["Complete"] = "10-11" -- 交任务 - 25850
tNewTaskTemplate[4307]["Msg"]["CompleteTaskData"] = "10-12" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4307]["AcceptDemand"] = {}
tNewTaskTemplate[4307]["AcceptDemand"]["FrontTask"] = 4306 -- 前置任务
tNewTaskTemplate[4307]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4307]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4307]["Accept"] = {}
tNewTaskTemplate[4307]["Accept"]["PlotId"] = 28 -- 播放剧情
tNewTaskTemplate[4307]["Accept"]["Find"] = {}
tNewTaskTemplate[4307]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 接任务触发的函数
tNewTaskTemplate[4307]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4307]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4307]["Complete"] = {}
tNewTaskTemplate[4307]["Complete"]["NextTask"] = 4308 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4307]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 妙木仙山
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4308] = {}
tNewTaskTemplate[4308]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4308]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4308]["EndNpcId"] = 25859 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4308]["Msg"] = {}
tNewTaskTemplate[4308]["Msg"]["Middle"] = {}
tNewTaskTemplate[4308]["Msg"]["Accept"] = "10-13" -- 接任务 - 25850
tNewTaskTemplate[4308]["Msg"]["NoCompleteTask"] = "10-14" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4308]["Msg"]["Complete"] = "2-1" -- 交任务 - 25859
tNewTaskTemplate[4308]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25859
-- 接任务的条件需求
tNewTaskTemplate[4308]["AcceptDemand"] = {}
tNewTaskTemplate[4308]["AcceptDemand"]["FrontTask"] = 4307 -- 前置任务
tNewTaskTemplate[4308]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4308]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4308]["Accept"] = {}
tNewTaskTemplate[4308]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4308]["Accept"]["Transfer"]["MapId"] = 1002 -- 传送mapid
tNewTaskTemplate[4308]["Accept"]["Transfer"]["PosX"] = 581 -- 传送X坐标
tNewTaskTemplate[4308]["Accept"]["Transfer"]["PosY"] = 583 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4308]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4308]["Complete"] = {}
tNewTaskTemplate[4308]["Complete"]["NextTask"] = 4309 -- 下一个任务


------------------------------------------------
-- 敌我不知（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4309] = {}
tNewTaskTemplate[4309]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4309]["BeginNpcId"] = 25859 -- 接任务npc
tNewTaskTemplate[4309]["EndNpcId"] = 25852 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4309]["Msg"] = {}
tNewTaskTemplate[4309]["Msg"]["Middle"] = {}
tNewTaskTemplate[4309]["Msg"]["Accept"] = "4-1" -- 接任务 - 25859
tNewTaskTemplate[4309]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25859
tNewTaskTemplate[4309]["Msg"]["Complete"] = "2-1" -- 交任务 - 25852
tNewTaskTemplate[4309]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25852
tNewTaskTemplate[4309]["Msg"]["AcceptTask"] = tNinjaQuest_NewText["AcceptTask"][4309] -- 传送后105提示
-- 接任务的条件需求
tNewTaskTemplate[4309]["AcceptDemand"] = {}
tNewTaskTemplate[4309]["AcceptDemand"]["FrontTask"] = 4308 -- 前置任务
tNewTaskTemplate[4309]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4309]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4309]["Accept"] = {}
tNewTaskTemplate[4309]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4309]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4309]["Accept"]["Transfer"]["PosX"] = 259 -- 传送X坐标
tNewTaskTemplate[4309]["Accept"]["Transfer"]["PosY"] = 376 -- 传送Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4309]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4309]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4309]["Complete"] = {}
tNewTaskTemplate[4309]["Complete"]["NextTask"] = 4310 -- 下一个任务


------------------------------------------------
-- 敌我不知（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4310] = {}
tNewTaskTemplate[4310]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4310]["BeginNpcId"] = 25852 -- 接任务npc
tNewTaskTemplate[4310]["EndNpcId"] = 25853 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4310]["Msg"] = {}
tNewTaskTemplate[4310]["Msg"]["Middle"] = {}
tNewTaskTemplate[4310]["Msg"]["Accept"] = "4-1" -- 接任务 - 25852
tNewTaskTemplate[4310]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25852
tNewTaskTemplate[4310]["Msg"]["Complete"] = "2-1" -- 交任务 - 25853
tNewTaskTemplate[4310]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25853
tNewTaskTemplate[4310]["Msg"]["AcceptTask"] = tNinjaQuest_NewText["AcceptTask"][4310] -- 传送后105提示
-- 接任务的条件需求
tNewTaskTemplate[4310]["AcceptDemand"] = {}
tNewTaskTemplate[4310]["AcceptDemand"]["FrontTask"] = 4309 -- 前置任务
tNewTaskTemplate[4310]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4310]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4310]["Accept"] = {}
tNewTaskTemplate[4310]["Accept"]["PlotId"] = 29 -- 播放剧情
tNewTaskTemplate[4310]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4310]["Accept"]["Transfer"]["MapId"] = 10765 -- 传送mapid
tNewTaskTemplate[4310]["Accept"]["Transfer"]["PosX"] = 266 -- 传送X坐标
tNewTaskTemplate[4310]["Accept"]["Transfer"]["PosY"] = 295 -- 传送Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4310]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4310]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4310]["Complete"] = {}
tNewTaskTemplate[4310]["Complete"]["NextTask"] = 4311 -- 下一个任务


------------------------------------------------
-- 经年旧友
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4311] = {}
tNewTaskTemplate[4311]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4311]["BeginNpcId"] = 25853 -- 接任务npc
tNewTaskTemplate[4311]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4311]["Msg"] = {}
tNewTaskTemplate[4311]["Msg"]["Middle"] = {}
tNewTaskTemplate[4311]["Msg"]["Accept"] = "4-1" -- 接任务 - 25853
tNewTaskTemplate[4311]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25853
tNewTaskTemplate[4311]["Msg"]["Complete"] = "2-1" -- 交任务 - 25854
tNewTaskTemplate[4311]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4311]["AcceptDemand"] = {}
tNewTaskTemplate[4311]["AcceptDemand"]["FrontTask"] = 4310 -- 前置任务
tNewTaskTemplate[4311]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4311]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4311]["Accept"] = {}
tNewTaskTemplate[4311]["Accept"]["Find"] = {}
tNewTaskTemplate[4311]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4311]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4311]["Complete"] = {}
tNewTaskTemplate[4311]["Complete"]["NextTask"] = 4312 -- 下一个任务


------------------------------------------------
-- 真相大白（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4312] = {}
tNewTaskTemplate[4312]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4312]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4312]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4312]["Msg"] = {}
tNewTaskTemplate[4312]["Msg"]["Middle"] = {}
tNewTaskTemplate[4312]["Msg"]["Accept"] = "4-1" -- 接任务 - 25854
tNewTaskTemplate[4312]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4312]["Msg"]["Complete"] = "6-1" -- 交任务 - 25854
tNewTaskTemplate[4312]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4312]["AcceptDemand"] = {}
tNewTaskTemplate[4312]["AcceptDemand"]["FrontTask"] = 4311 -- 前置任务
tNewTaskTemplate[4312]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4312]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4312]["Accept"] = {}
tNewTaskTemplate[4312]["Accept"]["Find"] = {}
tNewTaskTemplate[4312]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4312]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4312]["Complete"] = {}
tNewTaskTemplate[4312]["Complete"]["PlotId"] = 30 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4312]["Complete"]["NoviceId"] = 1077 -- 播放漫画
tNewTaskTemplate[4312]["Complete"]["NextTask"] = 4313 -- 下一个任务


------------------------------------------------
-- 脱出牢笼
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4313] = {}
tNewTaskTemplate[4313]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4313]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4313]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4313]["Msg"] = {}
tNewTaskTemplate[4313]["Msg"]["Middle"] = {}
tNewTaskTemplate[4313]["Msg"]["Accept"] = "8-1" -- 接任务 - 25854
tNewTaskTemplate[4313]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4313]["Msg"]["Complete"] = "10-1" -- 交任务 - 25854
tNewTaskTemplate[4313]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4313]["AcceptDemand"] = {}
tNewTaskTemplate[4313]["AcceptDemand"]["FrontTask"] = 4312 -- 前置任务
tNewTaskTemplate[4313]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4313]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4313]["Accept"] = {}
tNewTaskTemplate[4313]["Accept"]["Find"] = {}
tNewTaskTemplate[4313]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4313]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4313]["Complete"] = {}
tNewTaskTemplate[4313]["Complete"]["NextTask"] = 4314 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4314] = {}
tNewTaskTemplate[4314]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4314]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4314]["EndNpcId"] = 25852 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4314]["Msg"] = {}
tNewTaskTemplate[4314]["Msg"]["Middle"] = {}
tNewTaskTemplate[4314]["Msg"]["Accept"] = "10-3" -- 接任务 - 25854
tNewTaskTemplate[4314]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4314]["Msg"]["Complete"] = "6-1" -- 交任务 - 25852
tNewTaskTemplate[4314]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25852
-- 接任务的条件需求
tNewTaskTemplate[4314]["AcceptDemand"] = {}
tNewTaskTemplate[4314]["AcceptDemand"]["FrontTask"] = 4313 -- 前置任务
tNewTaskTemplate[4314]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4314]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4314]["Accept"] = {}
tNewTaskTemplate[4314]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4314]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4314]["Accept"]["Transfer"]["PosX"] = 255 -- 传送X坐标
tNewTaskTemplate[4314]["Accept"]["Transfer"]["PosY"] = 338 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4314]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4314]["Complete"] = {}
tNewTaskTemplate[4314]["Complete"]["NextTask"] = 4315 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4315] = {}
tNewTaskTemplate[4315]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4315]["BeginNpcId"] = 25852 -- 接任务npc
tNewTaskTemplate[4315]["EndNpcId"] = 26012 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4315]["Msg"] = {}
tNewTaskTemplate[4315]["Msg"]["Middle"] = {}
tNewTaskTemplate[4315]["Msg"]["Accept"] = "8-1" -- 接任务 - 25852
tNewTaskTemplate[4315]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25852
tNewTaskTemplate[4315]["Msg"]["Complete"] = "2-1" -- 交任务 - 26012
tNewTaskTemplate[4315]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26012
-- 接任务的条件需求
tNewTaskTemplate[4315]["AcceptDemand"] = {}
tNewTaskTemplate[4315]["AcceptDemand"]["FrontTask"] = 4314 -- 前置任务
tNewTaskTemplate[4315]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4315]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4315]["Accept"] = {}
tNewTaskTemplate[4315]["Accept"]["Find"] = {}
tNewTaskTemplate[4315]["Accept"]["Find"]["NpcId"] = 26012 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4315]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4315]["Complete"] = {}
tNewTaskTemplate[4315]["Complete"]["NextTask"] = 4316 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（三）
-- 【杀怪计数】
tNewTaskTemplate[4316] = {}
tNewTaskTemplate[4316]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4316]["BeginNpcId"] = 26012 -- 接任务npc
tNewTaskTemplate[4316]["EndNpcId"] = 26012 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4316]["Msg"] = {}
tNewTaskTemplate[4316]["Msg"]["Middle"] = {}
tNewTaskTemplate[4316]["Msg"]["Accept"] = "4-1" -- 接任务 - 26012
tNewTaskTemplate[4316]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26012
tNewTaskTemplate[4316]["Msg"]["Complete"] = "6-1" -- 交任务 - 26012
tNewTaskTemplate[4316]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 26012
-- 接任务的条件需求
tNewTaskTemplate[4316]["AcceptDemand"] = {}
tNewTaskTemplate[4316]["AcceptDemand"]["FrontTask"] = 4315 -- 前置任务
tNewTaskTemplate[4316]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4316]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4316]["Accept"] = {}
tNewTaskTemplate[4316]["Accept"]["Find"] = {}
tNewTaskTemplate[4316]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4316]["Accept"]["Find"]["PosX"] = 238 -- 寻路X坐标
tNewTaskTemplate[4316]["Accept"]["Find"]["PosY"] = 292 -- 寻路Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4316]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4316]["Middle"] = {}
tNewTaskTemplate[4316]["Middle"]["Monster"] = {}
tNewTaskTemplate[4316]["Middle"]["Monster"][5914] = {} -- 怪物ID=5914，【鬼岛刺客】
tNewTaskTemplate[4316]["Middle"]["Monster"][5914]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4316]["Middle"]["Monster"][5914]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4316]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4316] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4316]["CompleteDemand"] = {}
tNewTaskTemplate[4316]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4316]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4316]["Complete"] = {}
tNewTaskTemplate[4316]["Complete"]["NextTask"] = 4317 -- 下一个任务


------------------------------------------------
-- 冰释前嫌
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4317] = {}
tNewTaskTemplate[4317]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4317]["BeginNpcId"] = 26012 -- 接任务npc
tNewTaskTemplate[4317]["EndNpcId"] = 25855 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4317]["Msg"] = {}
tNewTaskTemplate[4317]["Msg"]["Middle"] = {}
tNewTaskTemplate[4317]["Msg"]["Accept"] = "8-1" -- 接任务 - 26012
tNewTaskTemplate[4317]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 26012
tNewTaskTemplate[4317]["Msg"]["Complete"] = "2-1" -- 交任务 - 25855
tNewTaskTemplate[4317]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25855
-- 接任务的条件需求
tNewTaskTemplate[4317]["AcceptDemand"] = {}
tNewTaskTemplate[4317]["AcceptDemand"]["FrontTask"] = 4316 -- 前置任务
tNewTaskTemplate[4317]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4317]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4317]["Accept"] = {}
tNewTaskTemplate[4317]["Accept"]["Find"] = {}
tNewTaskTemplate[4317]["Accept"]["Find"]["NpcId"] = 25855 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4317]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4317]["Complete"] = {}
tNewTaskTemplate[4317]["Complete"]["NextTask"] = 4318 -- 下一个任务
tNewTaskTemplate[4317]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4317]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4317]["Complete"]["Reward"]["Log"] = "0,0,4317,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4317]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5


------------------------------------------------
-- 昆虫盛宴
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4318] = {}
tNewTaskTemplate[4318]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4318]["BeginNpcId"] = 25855 -- 接任务npc
tNewTaskTemplate[4318]["EndNpcId"] = 25855 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4318]["Msg"] = {}
tNewTaskTemplate[4318]["Msg"]["Middle"] = {}
tNewTaskTemplate[4318]["Msg"]["Accept"] = "4-1" -- 接任务 - 25855
tNewTaskTemplate[4318]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25855
tNewTaskTemplate[4318]["Msg"]["Complete"] = "6-1" -- 交任务 - 25855
tNewTaskTemplate[4318]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25855
-- 接任务的条件需求
tNewTaskTemplate[4318]["AcceptDemand"] = {}
tNewTaskTemplate[4318]["AcceptDemand"]["FrontTask"] = 4317 -- 前置任务
tNewTaskTemplate[4318]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4318]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4318]["Accept"] = {}
tNewTaskTemplate[4318]["Accept"]["Find"] = {}
tNewTaskTemplate[4318]["Accept"]["Find"]["NpcId"] = 25855 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4318]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4318]["Complete"] = {}
tNewTaskTemplate[4318]["Complete"]["NextTask"] = 4319 -- 下一个任务


------------------------------------------------
-- 大恩大德
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4319] = {}
tNewTaskTemplate[4319]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4319]["BeginNpcId"] = 25855 -- 接任务npc
tNewTaskTemplate[4319]["EndNpcId"] = 26033 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4319]["Msg"] = {}
tNewTaskTemplate[4319]["Msg"]["Middle"] = {}
tNewTaskTemplate[4319]["Msg"]["Accept"] = "8-1" -- 接任务 - 25855
tNewTaskTemplate[4319]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25855
tNewTaskTemplate[4319]["Msg"]["Complete"] = "2-1" -- 交任务 - 26033
tNewTaskTemplate[4319]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26033
-- 接任务的条件需求
tNewTaskTemplate[4319]["AcceptDemand"] = {}
tNewTaskTemplate[4319]["AcceptDemand"]["FrontTask"] = 4318 -- 前置任务
tNewTaskTemplate[4319]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4319]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4319]["Accept"] = {}
tNewTaskTemplate[4319]["Accept"]["Find"] = {}
tNewTaskTemplate[4319]["Accept"]["Find"]["NpcId"] = 26033 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4319]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4319]["Complete"] = {}
tNewTaskTemplate[4319]["Complete"]["PlotId"] = 31 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4319]["Complete"]["NextTask"] = 4320 -- 下一个任务


------------------------------------------------
-- 仙术之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4320] = {}
tNewTaskTemplate[4320]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4320]["BeginNpcId"] = 26033 -- 接任务npc
tNewTaskTemplate[4320]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4320]["Msg"] = {}
tNewTaskTemplate[4320]["Msg"]["Middle"] = {}
tNewTaskTemplate[4320]["Msg"]["Accept"] = "4-1" -- 接任务 - 26033
tNewTaskTemplate[4320]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26033
tNewTaskTemplate[4320]["Msg"]["Complete"] = "2-1" -- 交任务 - 25856
tNewTaskTemplate[4320]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4320]["AcceptDemand"] = {}
tNewTaskTemplate[4320]["AcceptDemand"]["FrontTask"] = 4319 -- 前置任务
tNewTaskTemplate[4320]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4320]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4320]["Accept"] = {}
tNewTaskTemplate[4320]["Accept"]["Find"] = {}
tNewTaskTemplate[4320]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- tNewTaskTemplate[4320]["Accept"]["Transfer"] = {}
-- tNewTaskTemplate[4320]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
-- tNewTaskTemplate[4320]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
-- tNewTaskTemplate[4320]["Accept"]["Transfer"]["PosY"] = 134 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4320]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4320]["Complete"] = {}
tNewTaskTemplate[4320]["Complete"]["NextTask"] = 4321 -- 下一个任务


------------------------------------------------
-- 八门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4321] = {}
tNewTaskTemplate[4321]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4321]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4321]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4321]["Msg"] = {}
tNewTaskTemplate[4321]["Msg"]["Middle"] = {}
tNewTaskTemplate[4321]["Msg"]["Accept"] = "4-1" -- 接任务 - 25856
tNewTaskTemplate[4321]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4321]["Msg"]["Complete"] = "6-1" -- 交任务 - 25856
tNewTaskTemplate[4321]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4321]["AcceptDemand"] = {}
tNewTaskTemplate[4321]["AcceptDemand"]["FrontTask"] = 4320 -- 前置任务
tNewTaskTemplate[4321]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4321]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4321]["Accept"] = {}
tNewTaskTemplate[4321]["Accept"]["Find"] = {}
tNewTaskTemplate[4321]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4321]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4321]["Complete"] = {}
tNewTaskTemplate[4321]["Complete"]["NextTask"] = 4322 -- 下一个任务


------------------------------------------------
-- 自然之力
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4322] = {}
tNewTaskTemplate[4322]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4322]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4322]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4322]["Msg"] = {}
tNewTaskTemplate[4322]["Msg"]["Middle"] = {}
tNewTaskTemplate[4322]["Msg"]["Accept"] = "8-1" -- 接任务 - 25856
tNewTaskTemplate[4322]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4322]["Msg"]["Complete"] = "10-1" -- 交任务 - 25856
tNewTaskTemplate[4322]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4322]["AcceptDemand"] = {}
tNewTaskTemplate[4322]["AcceptDemand"]["FrontTask"] = 4321 -- 前置任务
tNewTaskTemplate[4322]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4322]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4322]["Accept"] = {}
tNewTaskTemplate[4322]["Accept"]["Find"] = {}
tNewTaskTemplate[4322]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4322]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4322]["Complete"] = {}
tNewTaskTemplate[4322]["Complete"]["NextTask"] = 4323 -- 下一个任务


------------------------------------------------
-- 开启生门
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4323] = {}
tNewTaskTemplate[4323]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4323]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4323]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4323]["Msg"] = {}
tNewTaskTemplate[4323]["Msg"]["Middle"] = {}
tNewTaskTemplate[4323]["Msg"]["Accept"] = "10-3" -- 接任务 - 25856
tNewTaskTemplate[4323]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4323]["Msg"]["Complete"] = "10-5" -- 交任务 - 25856
tNewTaskTemplate[4323]["Msg"]["CompleteTaskData"] = "10-6" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4323]["AcceptDemand"] = {}
tNewTaskTemplate[4323]["AcceptDemand"]["FrontTask"] = 4322 -- 前置任务
tNewTaskTemplate[4323]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4323]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4323]["Accept"] = {}
tNewTaskTemplate[4323]["Accept"]["Find"] = {}
tNewTaskTemplate[4323]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4323]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4323]["Complete"] = {}
tNewTaskTemplate[4323]["Complete"]["NextTask"] = 4324 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4323]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc
tNewTaskTemplate[4323]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4323]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4323]["Complete"]["Reward"]["Log"] = "0,0,4323,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4323]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1


------------------------------------------------
-- 最佳导师
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4324] = {}
tNewTaskTemplate[4324]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4324]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4324]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4324]["Msg"] = {}
tNewTaskTemplate[4324]["Msg"]["Middle"] = {}
tNewTaskTemplate[4324]["Msg"]["Accept"] = "10-7" -- 接任务 - 25856
tNewTaskTemplate[4324]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4324]["Msg"]["Complete"] = "2-1" -- 交任务 - 25857
tNewTaskTemplate[4324]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4324]["AcceptDemand"] = {}
tNewTaskTemplate[4324]["AcceptDemand"]["FrontTask"] = 4323 -- 前置任务
tNewTaskTemplate[4324]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4324]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4324]["Accept"] = {}
tNewTaskTemplate[4324]["Accept"]["Find"] = {}
tNewTaskTemplate[4324]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4324]["Accept"]["NewPlotId"] = 32 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4324]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4324]["Complete"] = {}
tNewTaskTemplate[4324]["Complete"]["NextTask"] = 4370 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4370] = {}
tNewTaskTemplate[4370]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4370]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4370]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4370]["Msg"] = {}
tNewTaskTemplate[4370]["Msg"]["Middle"] = {}
tNewTaskTemplate[4370]["Msg"]["Accept"] = "4-1" -- 接任务 - 25857
tNewTaskTemplate[4370]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4370]["Msg"]["Complete"] = "6-1" -- 交任务 - 25857
tNewTaskTemplate[4370]["Msg"]["ProLevel"] = "7-1" -- 交任职业等级不足 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4370]["AcceptDemand"] = {}
tNewTaskTemplate[4370]["AcceptDemand"]["FrontTask"] = 4324 -- 前置任务
tNewTaskTemplate[4370]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4370]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4370]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4370]["Accept"] = {}
tNewTaskTemplate[4370]["Accept"]["Find"] = {}
tNewTaskTemplate[4370]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4370]["CompleteDemand"] = {}
tNewTaskTemplate[4370]["CompleteDemand"]["ProLevel"] = 3 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4370]["Complete"] = {}
tNewTaskTemplate[4370]["Complete"]["NextTask"] = 4325 -- 下一个任务


------------------------------------------------
-- 仙术修行
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4325] = {}
tNewTaskTemplate[4325]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4325]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4325]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4325]["Msg"] = {}
tNewTaskTemplate[4325]["Msg"]["Middle"] = {}
tNewTaskTemplate[4325]["Msg"]["Accept"] = "8-1" -- 接任务 - 25857
tNewTaskTemplate[4325]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4325]["Msg"]["Complete"] = "10-1" -- 交任务 - 25857
tNewTaskTemplate[4325]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4325]["AcceptDemand"] = {}
tNewTaskTemplate[4325]["AcceptDemand"]["FrontTask"] = 4370 -- 前置任务
tNewTaskTemplate[4325]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4325]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4325]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4325]["Accept"] = {}
tNewTaskTemplate[4325]["Accept"]["Find"] = {}
tNewTaskTemplate[4325]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4325]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4325]["Complete"] = {}
tNewTaskTemplate[4325]["Complete"]["NextTask"] = 4326 -- 下一个任务


------------------------------------------------
-- 真实之谷
-- 【采集类】
tNewTaskTemplate[4326] = {}
tNewTaskTemplate[4326]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4326]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4326]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4326]["Msg"] = {}
tNewTaskTemplate[4326]["Msg"]["Middle"] = {}
tNewTaskTemplate[4326]["Msg"]["Accept"] = "10-3" -- 接任务 - 25857
tNewTaskTemplate[4326]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4326]["Msg"]["Complete"] = "2-1" -- 交任务 - 25858
tNewTaskTemplate[4326]["Msg"]["CompleteItem"] = "3-1" -- 交任务物品不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4326]["AcceptDemand"] = {}
tNewTaskTemplate[4326]["AcceptDemand"]["FrontTask"] = 4325 -- 前置任务
tNewTaskTemplate[4326]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4326]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4326]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4326]["Accept"] = {}
tNewTaskTemplate[4326]["Accept"]["Find"] = {}
tNewTaskTemplate[4326]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4326]["Accept"]["Find"]["PosX"] = 260 -- 寻路X坐标
tNewTaskTemplate[4326]["Accept"]["Find"]["PosY"] = 128 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4326]["Middle"] = {}
tNewTaskTemplate[4326]["Middle"]["Reading"] = {}
tNewTaskTemplate[4326]["Middle"]["Reading"]["Secs"] = 3 -- 读条秒数
tNewTaskTemplate[4326]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4326]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4326] -- 读条文字
tNewTaskTemplate[4326]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4326] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4326]["CompleteDemand"] = {}
tNewTaskTemplate[4326]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4326]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4326]["Complete"] = {}
tNewTaskTemplate[4326]["Complete"]["NextTask"] = 4327 -- 下一个任务


------------------------------------------------
-- 伤门试炼
-- 【旧副本】
tNewTaskTemplate[4327] = {}
tNewTaskTemplate[4327]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4327]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4327]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4327]["Msg"] = {}
tNewTaskTemplate[4327]["Msg"]["Middle"] = {}
tNewTaskTemplate[4327]["Msg"]["Accept"] = "4-1" -- 接任务 - 25858
tNewTaskTemplate[4327]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4327]["Msg"]["Complete"] = "6-1" -- 交任务 - 25858
tNewTaskTemplate[4327]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4327]["AcceptDemand"] = {}
tNewTaskTemplate[4327]["AcceptDemand"]["FrontTask"] = 4326 -- 前置任务
tNewTaskTemplate[4327]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4327]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4327]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4327]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4327]["Instance"] = {}
tNewTaskTemplate[4327]["Instance"]["Type"] = 461 -- 副本ID
tNewTaskTemplate[4327]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4327]["Instance"]["Leave"]["MapId"] = 10764
tNewTaskTemplate[4327]["Instance"]["Leave"]["PosX"] = 260
tNewTaskTemplate[4327]["Instance"]["Leave"]["PosY"] = 128
tNewTaskTemplate[4327]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4327]
tNewTaskTemplate[4327]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4327]
-- 进入副本初始化函数
tNewTaskTemplate[4327]["Instance"]["InitFunc"] = NinjaQuest_InstanceInitFunc
-- 完成任务的条件需求
tNewTaskTemplate[4327]["CompleteDemand"] = {}
tNewTaskTemplate[4327]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4327]["CompleteDemand"]["TaskData"][1] = 200 -- 掩码data1，需要值200
-- 完成任务的表现
tNewTaskTemplate[4327]["Complete"] = {}
tNewTaskTemplate[4327]["Complete"]["NextTask"] = 4328 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4327]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc
tNewTaskTemplate[4327]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4327]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4327]["Complete"]["Reward"]["Log"] = "0,0,4327,0,18000222,3[3],3315898,1"
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:10000][金币:0], 【表格】法印可选包
tNewTaskTemplate[4327]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 基础法印自选礼盒*1


------------------------------------------------
-- 速度极限
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4328] = {}
tNewTaskTemplate[4328]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4328]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4328]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4328]["Msg"] = {}
tNewTaskTemplate[4328]["Msg"]["Middle"] = {}
tNewTaskTemplate[4328]["Msg"]["Accept"] = "8-1" -- 接任务 - 25858
tNewTaskTemplate[4328]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4328]["Msg"]["Complete"] = "10-1" -- 交任务 - 25858
tNewTaskTemplate[4328]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4328]["AcceptDemand"] = {}
tNewTaskTemplate[4328]["AcceptDemand"]["FrontTask"] = 4327 -- 前置任务
tNewTaskTemplate[4328]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4328]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4328]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4328]["Accept"] = {}
tNewTaskTemplate[4328]["Accept"]["Find"] = {}
tNewTaskTemplate[4328]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4328]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4328]["Complete"] = {}
tNewTaskTemplate[4328]["Complete"]["NextTask"] = 4392 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4392] = {}
tNewTaskTemplate[4392]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4392]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4392]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4392]["Msg"] = {}
tNewTaskTemplate[4392]["Msg"]["Middle"] = {}
tNewTaskTemplate[4392]["Msg"]["Accept"] = "10-3" -- 接任务 - 25858
tNewTaskTemplate[4392]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4392]["Msg"]["Complete"] = "10-5" -- 交任务 - 25858
tNewTaskTemplate[4392]["Msg"]["ProLevel"] = "10-6" -- 交任职业等级不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4392]["AcceptDemand"] = {}
tNewTaskTemplate[4392]["AcceptDemand"]["FrontTask"] = 4328 -- 前置任务
tNewTaskTemplate[4392]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4392]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4392]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4392]["Accept"] = {}
tNewTaskTemplate[4392]["Accept"]["Find"] = {}
tNewTaskTemplate[4392]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4392]["CompleteDemand"] = {}
tNewTaskTemplate[4392]["CompleteDemand"]["ProLevel"] = 4 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4392]["Complete"] = {}
tNewTaskTemplate[4392]["Complete"]["NextTask"] = 4329 -- 下一个任务


------------------------------------------------
-- 杜门试炼
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4329] = {}
tNewTaskTemplate[4329]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4329]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4329]["EndNpcId"] = 26034 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4329]["Msg"] = {}
tNewTaskTemplate[4329]["Msg"]["Middle"] = {}
tNewTaskTemplate[4329]["Msg"]["Accept"] = "10-7" -- 接任务 - 25858
tNewTaskTemplate[4329]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4329]["Msg"]["Complete"] = "2-1" -- 交任务 - 26034
tNewTaskTemplate[4329]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26034
-- 接任务的条件需求
tNewTaskTemplate[4329]["AcceptDemand"] = {}
tNewTaskTemplate[4329]["AcceptDemand"]["FrontTask"] = 4392 -- 前置任务
tNewTaskTemplate[4329]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4329]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4329]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4329]["Accept"] = {}
tNewTaskTemplate[4329]["Accept"]["Find"] = {}
tNewTaskTemplate[4329]["Accept"]["Find"]["NpcId"] = 26034 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4329]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4329]["Complete"] = {}
tNewTaskTemplate[4329]["Complete"]["NextTask"] = 4330 -- 下一个任务


------------------------------------------------
-- 捉虫大战
-- 【采集类】
tNewTaskTemplate[4330] = {}
tNewTaskTemplate[4330]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4330]["BeginNpcId"] = 26034 -- 接任务npc
tNewTaskTemplate[4330]["EndNpcId"] = 26034 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4330]["Msg"] = {}
tNewTaskTemplate[4330]["Msg"]["Middle"] = {}
tNewTaskTemplate[4330]["Msg"]["Accept"] = "4-1" -- 接任务 - 26034
tNewTaskTemplate[4330]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26034
tNewTaskTemplate[4330]["Msg"]["Complete"] = "6-1" -- 交任务 - 26034
tNewTaskTemplate[4330]["Msg"]["CompleteItem"] = "7-1" -- 交任务物品不足 - 26034
-- 接任务的条件需求
tNewTaskTemplate[4330]["AcceptDemand"] = {}
tNewTaskTemplate[4330]["AcceptDemand"]["FrontTask"] = 4329 -- 前置任务
tNewTaskTemplate[4330]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4330]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4330]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4330]["Accept"] = {}
tNewTaskTemplate[4330]["Accept"]["Find"] = {}
tNewTaskTemplate[4330]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4330]["Accept"]["Find"]["PosX"] = 251 -- 寻路X坐标
tNewTaskTemplate[4330]["Accept"]["Find"]["PosY"] = 118 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4330]["Middle"] = {}
tNewTaskTemplate[4330]["Middle"]["Reading"] = {}
tNewTaskTemplate[4330]["Middle"]["Reading"]["Secs"] = 2 -- 读条秒数
tNewTaskTemplate[4330]["Middle"]["Reading"]["ActionId"] = 220 -- 读条动作
tNewTaskTemplate[4330]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4330] -- 读条文字
tNewTaskTemplate[4330]["Msg"]["CollectFail"] = tNinjaQuest_NewText["CollectFail"][4330] -- 105提示
tNewTaskTemplate[4330]["Middle"]["IsRandom"] = 1
tNewTaskTemplate[4330]["Middle"]["Random"] = {}-- 概率为50%
tNewTaskTemplate[4330]["Middle"]["Random"]["ItemChanceSum"] = 10000
tNewTaskTemplate[4330]["Middle"]["Random"][1] = {}
tNewTaskTemplate[4330]["Middle"]["Random"][1]["RandomItemChanceType"] = 2
tNewTaskTemplate[4330]["Middle"]["Random"][1]["ItemChance"] = 5000
tNewTaskTemplate[4330]["Middle"]["Random"][1]["Item_1"] = 3315328
tNewTaskTemplate[4330]["Middle"]["Random"][2] = {}
tNewTaskTemplate[4330]["Middle"]["Random"][2]["RandomItemChanceType"] = 2
tNewTaskTemplate[4330]["Middle"]["Random"][2]["ItemChance"] = 5000
tNewTaskTemplate[4330]["Middle"]["FailEffect"] = {} -- 采集失败光效
tNewTaskTemplate[4330]["Middle"]["FailEffect"]["Effect"] = "attach_accept04"
-- 中间任务失败函数
tNewTaskTemplate[4330]["Middle"]["FailFunc"] = NinjaQuest_MidFailFunc
tNewTaskTemplate[4330]["Middle"]["Npc"] = {} -- npc集合
tNewTaskTemplate[4330]["Middle"]["Npc"][25952] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["ItemId"] = 3315328
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["ItemNum"] = 1
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"] = {} -- NpcId=25952，采集给物品（默认给赠）
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4330]["Middle"]["Npc"][26051] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["ItemId"] = 3315328
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["ItemNum"] = 1
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"] = {} -- NpcId=26051，采集给物品（默认给赠）
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4330]["Middle"]["Npc"][25952]["Pos"] = {{250,113},{255,113},{255,118}}
tNewTaskTemplate[4330]["Middle"]["Npc"][26051]["Pos"] = {{242,118},{240,115},{249,126}}
tNewTaskTemplate[4330]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4330] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4330]["CompleteDemand"] = {}
tNewTaskTemplate[4330]["CompleteDemand"]["NeedItem"] = {} -- 完成任务需要的物品
tNewTaskTemplate[4330]["CompleteDemand"]["NeedItem"][1] = {}
tNewTaskTemplate[4330]["CompleteDemand"]["NeedItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4330]["CompleteDemand"]["NeedItem"][1]["ItemNum"] = 1
-- 完成任务的表现
tNewTaskTemplate[4330]["Complete"] = {}
tNewTaskTemplate[4330]["Complete"]["NextTask"] = 4331 -- 下一个任务
tNewTaskTemplate[4330]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4330]["Complete"]["Reward"] = {}
tNewTaskTemplate[4330]["Complete"]["Reward"]["Log"] = "0,0,4330,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4330]["Complete"]["Reward"]["DeleteItem"] = {} -- 完成任务删除所需物品
tNewTaskTemplate[4330]["Complete"]["Reward"]["DeleteItem"][1] = {}
tNewTaskTemplate[4330]["Complete"]["Reward"]["DeleteItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4330]["Complete"]["Reward"]["DeleteItem"][1]["ItemNum"] = 1
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4330]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4330]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 力量极限
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4331] = {}
tNewTaskTemplate[4331]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4331]["BeginNpcId"] = 26034 -- 接任务npc
tNewTaskTemplate[4331]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4331]["Msg"] = {}
tNewTaskTemplate[4331]["Msg"]["Middle"] = {}
tNewTaskTemplate[4331]["Msg"]["Accept"] = "8-1" -- 接任务 - 26034
tNewTaskTemplate[4331]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 26034
tNewTaskTemplate[4331]["Msg"]["Complete"] = "10-9" -- 交任务 - 25858
tNewTaskTemplate[4331]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4331]["AcceptDemand"] = {}
tNewTaskTemplate[4331]["AcceptDemand"]["FrontTask"] = 4330 -- 前置任务
tNewTaskTemplate[4331]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4331]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4331]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4331]["Accept"] = {}
tNewTaskTemplate[4331]["Accept"]["Find"] = {}
tNewTaskTemplate[4331]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4331]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4331]["Complete"] = {}
tNewTaskTemplate[4331]["Complete"]["NextTask"] = 4332 -- 下一个任务


------------------------------------------------
-- 再入谷底
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4332] = {}
tNewTaskTemplate[4332]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4332]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4332]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4332]["Msg"] = {}
tNewTaskTemplate[4332]["Msg"]["Middle"] = {}
tNewTaskTemplate[4332]["Msg"]["Accept"] = "10-11" -- 接任务 - 25858
tNewTaskTemplate[4332]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4332]["Msg"]["Complete"] = "10-13" -- 交任务 - 25858
tNewTaskTemplate[4332]["Msg"]["CompleteTaskData"] = "10-14" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4332]["AcceptDemand"] = {}
tNewTaskTemplate[4332]["AcceptDemand"]["FrontTask"] = 4331 -- 前置任务
tNewTaskTemplate[4332]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4332]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4332]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4332]["Accept"] = {}
tNewTaskTemplate[4332]["Accept"]["Find"] = {}
tNewTaskTemplate[4332]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4332]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4332]["Complete"] = {}
tNewTaskTemplate[4332]["Complete"]["NextTask"] = 4333 -- 下一个任务


------------------------------------------------
-- 景门试炼
-- 【旧副本】
tNewTaskTemplate[4333] = {}
tNewTaskTemplate[4333]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4333]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4333]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4333]["Msg"] = {}
tNewTaskTemplate[4333]["Msg"]["Middle"] = {}
tNewTaskTemplate[4333]["Msg"]["Accept"] = "10-15" -- 接任务 - 25858
tNewTaskTemplate[4333]["Msg"]["NoCompleteTask"] = "10-16" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4333]["Msg"]["Complete"] = "10-17" -- 交任务 - 25858
tNewTaskTemplate[4333]["Msg"]["CompleteTaskData"] = "10-18" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4333]["AcceptDemand"] = {}
tNewTaskTemplate[4333]["AcceptDemand"]["FrontTask"] = 4332 -- 前置任务
tNewTaskTemplate[4333]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4333]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4333]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4333]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4333]["Instance"] = {}
tNewTaskTemplate[4333]["Instance"]["Type"] = 463 -- 副本ID
tNewTaskTemplate[4333]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4333]["Instance"]["Leave"]["MapId"] = 10764
tNewTaskTemplate[4333]["Instance"]["Leave"]["PosX"] = 260
tNewTaskTemplate[4333]["Instance"]["Leave"]["PosY"] = 128
tNewTaskTemplate[4333]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4333]
tNewTaskTemplate[4333]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4333]
-- 进入副本初始化函数
tNewTaskTemplate[4333]["Instance"]["InitFunc"] = NinjaQuest_InstanceInitFunc
-- 完成任务的条件需求
tNewTaskTemplate[4333]["CompleteDemand"] = {}
tNewTaskTemplate[4333]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4333]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4333]["Complete"] = {}
tNewTaskTemplate[4333]["Complete"]["NextTask"] = 4334 -- 下一个任务
tNewTaskTemplate[4333]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4333]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4333]["Complete"]["Reward"]["Log"] = "0,0,4333,0,18000222,3[3],3315898,1"
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:10000][金币:0], 【表格】法印可选包
tNewTaskTemplate[4333]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 基础法印自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4333]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 恢复训练
-- 【采集类】
tNewTaskTemplate[4334] = {}
tNewTaskTemplate[4334]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4334]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4334]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4334]["Msg"] = {}
tNewTaskTemplate[4334]["Msg"]["Middle"] = {}
tNewTaskTemplate[4334]["Msg"]["Accept"] = "10-19" -- 接任务 - 25858
tNewTaskTemplate[4334]["Msg"]["NoCompleteTask"] = "10-20" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4334]["Msg"]["Complete"] = "10-21" -- 交任务 - 25858
tNewTaskTemplate[4334]["Msg"]["CompleteItem"] = "10-22" -- 交任务物品不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4334]["AcceptDemand"] = {}
tNewTaskTemplate[4334]["AcceptDemand"]["FrontTask"] = 4333 -- 前置任务
tNewTaskTemplate[4334]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4334]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4334]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4334]["Accept"] = {}
tNewTaskTemplate[4334]["Accept"]["Find"] = {}
tNewTaskTemplate[4334]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4334]["Accept"]["Find"]["PosX"] = 260 -- 寻路X坐标
tNewTaskTemplate[4334]["Accept"]["Find"]["PosY"] = 128 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4334]["Middle"] = {}
tNewTaskTemplate[4334]["Middle"]["Reading"] = {}
tNewTaskTemplate[4334]["Middle"]["Reading"]["Secs"] = 3 -- 读条秒数
tNewTaskTemplate[4334]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4334]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4334] -- 读条文字
tNewTaskTemplate[4334]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4334] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4334]["CompleteDemand"] = {}
tNewTaskTemplate[4334]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4334]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4334]["Complete"] = {}
tNewTaskTemplate[4334]["Complete"]["NextTask"] = 4395 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4395] = {}
tNewTaskTemplate[4395]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4395]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4395]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4395]["Msg"] = {}
tNewTaskTemplate[4395]["Msg"]["Middle"] = {}
tNewTaskTemplate[4395]["Msg"]["Accept"] = "10-23" -- 接任务 - 25858
tNewTaskTemplate[4395]["Msg"]["NoCompleteTask"] = "10-24" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4395]["Msg"]["Complete"] = "10-25" -- 交任务 - 25858
tNewTaskTemplate[4395]["Msg"]["ProLevel"] = "10-26" -- 交任职业等级不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4395]["AcceptDemand"] = {}
tNewTaskTemplate[4395]["AcceptDemand"]["FrontTask"] = 4334 -- 前置任务
tNewTaskTemplate[4395]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4395]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4395]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4395]["Accept"] = {}
tNewTaskTemplate[4395]["Accept"]["Find"] = {}
tNewTaskTemplate[4395]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4395]["CompleteDemand"] = {}
tNewTaskTemplate[4395]["CompleteDemand"]["ProLevel"] = 5 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4395]["Complete"] = {}
tNewTaskTemplate[4395]["Complete"]["NextTask"] = 4335 -- 下一个任务


------------------------------------------------
-- 惊门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4335] = {}
tNewTaskTemplate[4335]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4335]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4335]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4335]["Msg"] = {}
tNewTaskTemplate[4335]["Msg"]["Middle"] = {}
tNewTaskTemplate[4335]["Msg"]["Accept"] = "10-27" -- 接任务 - 25858
tNewTaskTemplate[4335]["Msg"]["NoCompleteTask"] = "10-28" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4335]["Msg"]["Complete"] = "10-29" -- 交任务 - 25858
tNewTaskTemplate[4335]["Msg"]["CompleteTaskData"] = "10-30" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4335]["AcceptDemand"] = {}
tNewTaskTemplate[4335]["AcceptDemand"]["FrontTask"] = 4395 -- 前置任务
tNewTaskTemplate[4335]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4335]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4335]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4335]["Accept"] = {}
tNewTaskTemplate[4335]["Accept"]["Find"] = {}
tNewTaskTemplate[4335]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4335]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4335]["Complete"] = {}
tNewTaskTemplate[4335]["Complete"]["NextTask"] = 4336 -- 下一个任务


------------------------------------------------
-- 年迈的影（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4336] = {}
tNewTaskTemplate[4336]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4336]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4336]["EndNpcId"] = 8510 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4336]["Msg"] = {}
tNewTaskTemplate[4336]["Msg"]["Middle"] = {}
tNewTaskTemplate[4336]["Msg"]["Accept"] = "10-31" -- 接任务 - 25858
tNewTaskTemplate[4336]["Msg"]["NoCompleteTask"] = "10-32" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4336]["Msg"]["Complete"] = "2-1" -- 交任务 - 8510
tNewTaskTemplate[4336]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 8510
-- 接任务的条件需求
tNewTaskTemplate[4336]["AcceptDemand"] = {}
tNewTaskTemplate[4336]["AcceptDemand"]["FrontTask"] = 4335 -- 前置任务
tNewTaskTemplate[4336]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4336]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4336]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4336]["Accept"] = {}
tNewTaskTemplate[4336]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4336]["Accept"]["Transfer"]["MapId"] = 1015 -- 传送mapid
tNewTaskTemplate[4336]["Accept"]["Transfer"]["PosX"] = 710 -- 传送X坐标
tNewTaskTemplate[4336]["Accept"]["Transfer"]["PosY"] = 570 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4336]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4336]["Complete"] = {}
tNewTaskTemplate[4336]["Complete"]["NextTask"] = 4337 -- 下一个任务


------------------------------------------------
-- 年迈的影（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4337] = {}
tNewTaskTemplate[4337]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4337]["BeginNpcId"] = 8510 -- 接任务npc
tNewTaskTemplate[4337]["EndNpcId"] = 25933 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4337]["Msg"] = {}
tNewTaskTemplate[4337]["Msg"]["Middle"] = {}
tNewTaskTemplate[4337]["Msg"]["Accept"] = "4-1" -- 接任务 - 8510
tNewTaskTemplate[4337]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 8510
tNewTaskTemplate[4337]["Msg"]["Complete"] = "2-1" -- 交任务 - 25933
tNewTaskTemplate[4337]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25933
-- 接任务的条件需求
tNewTaskTemplate[4337]["AcceptDemand"] = {}
tNewTaskTemplate[4337]["AcceptDemand"]["FrontTask"] = 4336 -- 前置任务
tNewTaskTemplate[4337]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4337]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4337]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4337]["Accept"] = {}
tNewTaskTemplate[4337]["Accept"]["Find"] = {}
tNewTaskTemplate[4337]["Accept"]["Find"]["NpcId"] = 25933 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4337]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4337]["Complete"] = {}
tNewTaskTemplate[4337]["Complete"]["NextTask"] = 4338 -- 下一个任务


------------------------------------------------
-- 最强幻术
-- 【杀怪计数】
tNewTaskTemplate[4338] = {}
tNewTaskTemplate[4338]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4338]["BeginNpcId"] = 25933 -- 接任务npc
tNewTaskTemplate[4338]["EndNpcId"] = 25933 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4338]["Msg"] = {}
tNewTaskTemplate[4338]["Msg"]["Middle"] = {}
tNewTaskTemplate[4338]["Msg"]["Accept"] = "4-1" -- 接任务 - 25933
tNewTaskTemplate[4338]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25933
tNewTaskTemplate[4338]["Msg"]["Complete"] = "6-1" -- 交任务 - 25933
tNewTaskTemplate[4338]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25933
-- 接任务的条件需求
tNewTaskTemplate[4338]["AcceptDemand"] = {}
tNewTaskTemplate[4338]["AcceptDemand"]["FrontTask"] = 4337 -- 前置任务
tNewTaskTemplate[4338]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4338]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4338]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4338]["Accept"] = {}
tNewTaskTemplate[4338]["Accept"]["Find"] = {}
tNewTaskTemplate[4338]["Accept"]["Find"]["MapId"] = 1015 -- 寻路mapid
tNewTaskTemplate[4338]["Accept"]["Find"]["PosX"] = 698 -- 寻路X坐标
tNewTaskTemplate[4338]["Accept"]["Find"]["PosY"] = 681 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4338]["Accept"]["NewPlotId"] = 40 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4338]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4338]["Middle"] = {}
tNewTaskTemplate[4338]["Middle"]["Monster"] = {}
tNewTaskTemplate[4338]["Middle"]["Monster"][5920] = {} -- 怪物ID=5920，【鼬】
tNewTaskTemplate[4338]["Middle"]["Monster"][5920]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4338]["Middle"]["Monster"][5920]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4338]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4338] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4338]["CompleteDemand"] = {}
tNewTaskTemplate[4338]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4338]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4338]["Complete"] = {}
tNewTaskTemplate[4338]["Complete"]["NextTask"] = 4339 -- 下一个任务


------------------------------------------------
-- 幻术克星
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4339] = {}
tNewTaskTemplate[4339]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4339]["BeginNpcId"] = 25933 -- 接任务npc
tNewTaskTemplate[4339]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4339]["Msg"] = {}
tNewTaskTemplate[4339]["Msg"]["Middle"] = {}
tNewTaskTemplate[4339]["Msg"]["Accept"] = "8-1" -- 接任务 - 25933
tNewTaskTemplate[4339]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25933
tNewTaskTemplate[4339]["Msg"]["Complete"] = "10-5" -- 交任务 - 25857
tNewTaskTemplate[4339]["Msg"]["CompleteTaskData"] = "10-6" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4339]["AcceptDemand"] = {}
tNewTaskTemplate[4339]["AcceptDemand"]["FrontTask"] = 4338 -- 前置任务
tNewTaskTemplate[4339]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4339]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4339]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4339]["Accept"] = {}
tNewTaskTemplate[4339]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4339]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4339]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
tNewTaskTemplate[4339]["Accept"]["Transfer"]["PosY"] = 128 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4339]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4339]["Complete"] = {}
tNewTaskTemplate[4339]["Complete"]["NextTask"] = 4340 -- 下一个任务
tNewTaskTemplate[4339]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4339]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4339]["Complete"]["Reward"]["Log"] = "0,0,4339,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4339]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4339]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 最后一关
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4340] = {}
tNewTaskTemplate[4340]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4340]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4340]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4340]["Msg"] = {}
tNewTaskTemplate[4340]["Msg"]["Middle"] = {}
tNewTaskTemplate[4340]["Msg"]["Accept"] = "10-7" -- 接任务 - 25857
tNewTaskTemplate[4340]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4340]["Msg"]["Complete"] = "10-9" -- 交任务 - 25857
tNewTaskTemplate[4340]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4340]["AcceptDemand"] = {}
tNewTaskTemplate[4340]["AcceptDemand"]["FrontTask"] = 4339 -- 前置任务
tNewTaskTemplate[4340]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4340]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4340]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4340]["Accept"] = {}
tNewTaskTemplate[4340]["Accept"]["Find"] = {}
tNewTaskTemplate[4340]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4340]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4340]["Complete"] = {}
tNewTaskTemplate[4340]["Complete"]["NextTask"] = 4341 -- 下一个任务


------------------------------------------------
-- 死门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4341] = {}
tNewTaskTemplate[4341]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4341]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4341]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4341]["Msg"] = {}
tNewTaskTemplate[4341]["Msg"]["Middle"] = {}
tNewTaskTemplate[4341]["Msg"]["Accept"] = "10-11" -- 接任务 - 25857
tNewTaskTemplate[4341]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4341]["Msg"]["Complete"] = "10-9" -- 交任务 - 25856
tNewTaskTemplate[4341]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4341]["AcceptDemand"] = {}
tNewTaskTemplate[4341]["AcceptDemand"]["FrontTask"] = 4340 -- 前置任务
tNewTaskTemplate[4341]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4341]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4341]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4341]["Accept"] = {}
tNewTaskTemplate[4341]["Accept"]["Find"] = {}
tNewTaskTemplate[4341]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4341]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4341]["Complete"] = {}
tNewTaskTemplate[4341]["Complete"]["NextTask"] = 4342 -- 下一个任务


------------------------------------------------
-- 重归故里
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4342] = {}
tNewTaskTemplate[4342]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4342]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4342]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4342]["Msg"] = {}
tNewTaskTemplate[4342]["Msg"]["Middle"] = {}
tNewTaskTemplate[4342]["Msg"]["Accept"] = "10-11" -- 接任务 - 25856
tNewTaskTemplate[4342]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4342]["Msg"]["Complete"] = "10-15" -- 交任务 - 25850
tNewTaskTemplate[4342]["Msg"]["CompleteTaskData"] = "10-16" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4342]["AcceptDemand"] = {}
tNewTaskTemplate[4342]["AcceptDemand"]["FrontTask"] = 4341 -- 前置任务
tNewTaskTemplate[4342]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4342]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4342]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4342]["Accept"] = {}
tNewTaskTemplate[4342]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4342]["Accept"]["Transfer"]["MapId"] = 10653 -- 传送mapid
tNewTaskTemplate[4342]["Accept"]["Transfer"]["PosX"] = 81 -- 传送X坐标
tNewTaskTemplate[4342]["Accept"]["Transfer"]["PosY"] = 58 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4342]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4342]["Complete"] = {}
tNewTaskTemplate[4342]["Complete"]["NextTask"] = 4343 -- 下一个任务


------------------------------------------------
-- 寻找火影（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4343] = {}
tNewTaskTemplate[4343]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4343]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4343]["EndNpcId"] = 2001 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4343]["Msg"] = {}
tNewTaskTemplate[4343]["Msg"]["Middle"] = {}
tNewTaskTemplate[4343]["Msg"]["Accept"] = "10-17" -- 接任务 - 25850
tNewTaskTemplate[4343]["Msg"]["NoCompleteTask"] = "10-18" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4343]["Msg"]["Complete"] = "2-1" -- 交任务 - 2001
tNewTaskTemplate[4343]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 2001
-- 接任务的条件需求
tNewTaskTemplate[4343]["AcceptDemand"] = {}
tNewTaskTemplate[4343]["AcceptDemand"]["FrontTask"] = 4342 -- 前置任务
tNewTaskTemplate[4343]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4343]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4343]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4343]["Accept"] = {}
tNewTaskTemplate[4343]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4343]["Accept"]["Transfer"]["MapId"] = 1002 -- 传送mapid
tNewTaskTemplate[4343]["Accept"]["Transfer"]["PosX"] = 439 -- 传送X坐标
tNewTaskTemplate[4343]["Accept"]["Transfer"]["PosY"] = 468 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4343]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4343]["Complete"] = {}
tNewTaskTemplate[4343]["Complete"]["NextTask"] = 4344 -- 下一个任务


------------------------------------------------
-- 寻找火影（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4344] = {}
tNewTaskTemplate[4344]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4344]["BeginNpcId"] = 2001 -- 接任务npc
tNewTaskTemplate[4344]["EndNpcId"] = 25859 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4344]["Msg"] = {}
tNewTaskTemplate[4344]["Msg"]["Middle"] = {}
tNewTaskTemplate[4344]["Msg"]["Accept"] = "4-1" -- 接任务 - 2001
tNewTaskTemplate[4344]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 2001
tNewTaskTemplate[4344]["Msg"]["Complete"] = "6-1" -- 交任务 - 25859
tNewTaskTemplate[4344]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25859
-- 接任务的条件需求
tNewTaskTemplate[4344]["AcceptDemand"] = {}
tNewTaskTemplate[4344]["AcceptDemand"]["FrontTask"] = 4343 -- 前置任务
tNewTaskTemplate[4344]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4344]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4344]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4344]["Accept"] = {}
tNewTaskTemplate[4344]["Accept"]["Find"] = {}
tNewTaskTemplate[4344]["Accept"]["Find"]["NpcId"] = 25859 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4344]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4344]["Complete"] = {}
tNewTaskTemplate[4344]["Complete"]["NextTask"] = 4345 -- 下一个任务


------------------------------------------------
-- 寻找火影（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4345] = {}
tNewTaskTemplate[4345]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4345]["BeginNpcId"] = 25859 -- 接任务npc
tNewTaskTemplate[4345]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4345]["Msg"] = {}
tNewTaskTemplate[4345]["Msg"]["Middle"] = {}
tNewTaskTemplate[4345]["Msg"]["Accept"] = "8-1" -- 接任务 - 25859
tNewTaskTemplate[4345]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25859
tNewTaskTemplate[4345]["Msg"]["Complete"] = "2-1" -- 交任务 - 25860
tNewTaskTemplate[4345]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4345]["AcceptDemand"] = {}
tNewTaskTemplate[4345]["AcceptDemand"]["FrontTask"] = 4344 -- 前置任务
tNewTaskTemplate[4345]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4345]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4345]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4345]["Accept"] = {}
tNewTaskTemplate[4345]["Accept"]["Find"] = {}
tNewTaskTemplate[4345]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4345]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4345]["Complete"] = {}
tNewTaskTemplate[4345]["Complete"]["NextTask"] = 4346 -- 下一个任务


------------------------------------------------
-- 苦口婆心
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4346] = {}
tNewTaskTemplate[4346]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4346]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4346]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4346]["Msg"] = {}
tNewTaskTemplate[4346]["Msg"]["Middle"] = {}
tNewTaskTemplate[4346]["Msg"]["Accept"] = "4-1" -- 接任务 - 25860
tNewTaskTemplate[4346]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4346]["Msg"]["Complete"] = "6-1" -- 交任务 - 25860
tNewTaskTemplate[4346]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4346]["AcceptDemand"] = {}
tNewTaskTemplate[4346]["AcceptDemand"]["FrontTask"] = 4345 -- 前置任务
tNewTaskTemplate[4346]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4346]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4346]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4346]["Accept"] = {}
tNewTaskTemplate[4346]["Accept"]["Find"] = {}
tNewTaskTemplate[4346]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4346]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4346]["Complete"] = {}
tNewTaskTemplate[4346]["Complete"]["NextTask"] = 4347 -- 下一个任务


------------------------------------------------
-- 三忍之战
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4347] = {}
tNewTaskTemplate[4347]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4347]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4347]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4347]["Msg"] = {}
tNewTaskTemplate[4347]["Msg"]["Middle"] = {}
tNewTaskTemplate[4347]["Msg"]["Accept"] = "8-1" -- 接任务 - 25860
tNewTaskTemplate[4347]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4347]["Msg"]["Complete"] = "10-1" -- 交任务 - 25860
tNewTaskTemplate[4347]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4347]["AcceptDemand"] = {}
tNewTaskTemplate[4347]["AcceptDemand"]["FrontTask"] = 4346 -- 前置任务
tNewTaskTemplate[4347]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4347]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4347]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4347]["Accept"] = {}
tNewTaskTemplate[4347]["Accept"]["Find"] = {}
tNewTaskTemplate[4347]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4347]["Accept"]["NewPlotId"] = 33 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4347]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4347]["Complete"] = {}
tNewTaskTemplate[4347]["Complete"]["PlotId"] = 34 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4347]["Complete"]["NextTask"] = 4348 -- 下一个任务
tNewTaskTemplate[4347]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4347]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4347]["Complete"]["Reward"]["Log"] = "0,0,4347,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4347]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4347]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 风影踪迹（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4348] = {}
tNewTaskTemplate[4348]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4348]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4348]["EndNpcId"] = 2004 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4348]["Msg"] = {}
tNewTaskTemplate[4348]["Msg"]["Middle"] = {}
tNewTaskTemplate[4348]["Msg"]["Accept"] = "10-3" -- 接任务 - 25860
tNewTaskTemplate[4348]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4348]["Msg"]["Complete"] = "2-1" -- 交任务 - 2004
tNewTaskTemplate[4348]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 2004
-- 接任务的条件需求
tNewTaskTemplate[4348]["AcceptDemand"] = {}
tNewTaskTemplate[4348]["AcceptDemand"]["FrontTask"] = 4347 -- 前置任务
tNewTaskTemplate[4348]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4348]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4348]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4348]["Accept"] = {}
tNewTaskTemplate[4348]["Accept"]["PlotId"] = 35 -- 播放剧情
tNewTaskTemplate[4348]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4348]["Accept"]["Transfer"]["MapId"] = 1000 -- 传送mapid
tNewTaskTemplate[4348]["Accept"]["Transfer"]["PosX"] = 477 -- 传送X坐标
tNewTaskTemplate[4348]["Accept"]["Transfer"]["PosY"] = 634 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4348]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4348]["Complete"] = {}
tNewTaskTemplate[4348]["Complete"]["NextTask"] = 4349 -- 下一个任务


------------------------------------------------
-- 风影踪迹（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4349] = {}
tNewTaskTemplate[4349]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4349]["BeginNpcId"] = 2004 -- 接任务npc
tNewTaskTemplate[4349]["EndNpcId"] = 25862 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4349]["Msg"] = {}
tNewTaskTemplate[4349]["Msg"]["Middle"] = {}
tNewTaskTemplate[4349]["Msg"]["Accept"] = "4-1" -- 接任务 - 2004
tNewTaskTemplate[4349]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 2004
tNewTaskTemplate[4349]["Msg"]["Complete"] = "2-1" -- 交任务 - 25862
tNewTaskTemplate[4349]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25862
-- 接任务的条件需求
tNewTaskTemplate[4349]["AcceptDemand"] = {}
tNewTaskTemplate[4349]["AcceptDemand"]["FrontTask"] = 4348 -- 前置任务
tNewTaskTemplate[4349]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4349]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4349]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4349]["Accept"] = {}
tNewTaskTemplate[4349]["Accept"]["Find"] = {}
tNewTaskTemplate[4349]["Accept"]["Find"]["NpcId"] = 25862 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4349]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4349]["Complete"] = {}
tNewTaskTemplate[4349]["Complete"]["NextTask"] = 4350 -- 下一个任务


------------------------------------------------
-- 风影踪迹（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4350] = {}
tNewTaskTemplate[4350]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4350]["BeginNpcId"] = 25862 -- 接任务npc
tNewTaskTemplate[4350]["EndNpcId"] = 25863 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4350]["Msg"] = {}
tNewTaskTemplate[4350]["Msg"]["Middle"] = {}
tNewTaskTemplate[4350]["Msg"]["Accept"] = "4-1" -- 接任务 - 25862
tNewTaskTemplate[4350]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25862
tNewTaskTemplate[4350]["Msg"]["Complete"] = "2-1" -- 交任务 - 25863
tNewTaskTemplate[4350]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25863
-- 接任务的条件需求
tNewTaskTemplate[4350]["AcceptDemand"] = {}
tNewTaskTemplate[4350]["AcceptDemand"]["FrontTask"] = 4349 -- 前置任务
tNewTaskTemplate[4350]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4350]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4350]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4350]["Accept"] = {}
tNewTaskTemplate[4350]["Accept"]["Find"] = {}
tNewTaskTemplate[4350]["Accept"]["Find"]["NpcId"] = 25863 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4350]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4350]["Complete"] = {}
tNewTaskTemplate[4350]["Complete"]["NextTask"] = 4351 -- 下一个任务


------------------------------------------------
-- 风影踪迹（四）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4351] = {}
tNewTaskTemplate[4351]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4351]["BeginNpcId"] = 25863 -- 接任务npc
tNewTaskTemplate[4351]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4351]["Msg"] = {}
tNewTaskTemplate[4351]["Msg"]["Middle"] = {}
tNewTaskTemplate[4351]["Msg"]["Accept"] = "4-1" -- 接任务 - 25863
tNewTaskTemplate[4351]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25863
tNewTaskTemplate[4351]["Msg"]["Complete"] = "2-1" -- 交任务 - 25864
tNewTaskTemplate[4351]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4351]["AcceptDemand"] = {}
tNewTaskTemplate[4351]["AcceptDemand"]["FrontTask"] = 4350 -- 前置任务
tNewTaskTemplate[4351]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4351]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4351]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4351]["Accept"] = {}
tNewTaskTemplate[4351]["Accept"]["Find"] = {}
tNewTaskTemplate[4351]["Accept"]["Find"]["NpcId"] = 25864 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4351]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4351]["Complete"] = {}
tNewTaskTemplate[4351]["Complete"]["NextTask"] = 4352 -- 下一个任务


------------------------------------------------
-- 风影踪迹（五）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4352] = {}
tNewTaskTemplate[4352]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4352]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4352]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4352]["Msg"] = {}
tNewTaskTemplate[4352]["Msg"]["Middle"] = {}
tNewTaskTemplate[4352]["Msg"]["Accept"] = "4-1" -- 接任务 - 25864
tNewTaskTemplate[4352]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4352]["Msg"]["Complete"] = "6-1" -- 交任务 - 25864
tNewTaskTemplate[4352]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4352]["AcceptDemand"] = {}
tNewTaskTemplate[4352]["AcceptDemand"]["FrontTask"] = 4351 -- 前置任务
tNewTaskTemplate[4352]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4352]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4352]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4352]["Accept"] = {}
tNewTaskTemplate[4352]["Accept"]["Find"] = {}
tNewTaskTemplate[4352]["Accept"]["Find"]["NpcId"] = 25864 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4352]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4352]["Complete"] = {}
tNewTaskTemplate[4352]["Complete"]["NextTask"] = 4353 -- 下一个任务


------------------------------------------------
-- 童年真相
-- 【杀怪计数】
tNewTaskTemplate[4353] = {}
tNewTaskTemplate[4353]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4353]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4353]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4353]["Msg"] = {}
tNewTaskTemplate[4353]["Msg"]["Middle"] = {}
tNewTaskTemplate[4353]["Msg"]["Accept"] = "8-1" -- 接任务 - 25864
tNewTaskTemplate[4353]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4353]["Msg"]["Complete"] = "10-1" -- 交任务 - 25864
tNewTaskTemplate[4353]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4353]["AcceptDemand"] = {}
tNewTaskTemplate[4353]["AcceptDemand"]["FrontTask"] = 4352 -- 前置任务
tNewTaskTemplate[4353]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4353]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4353]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4353]["Accept"] = {}
tNewTaskTemplate[4353]["Accept"]["Find"] = {}
tNewTaskTemplate[4353]["Accept"]["Find"]["MapId"] = 1000 -- 寻路mapid
tNewTaskTemplate[4353]["Accept"]["Find"]["PosX"] = 566 -- 寻路X坐标
tNewTaskTemplate[4353]["Accept"]["Find"]["PosY"] = 454 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4353]["Accept"]["NewPlotId"] = 36 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4353]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4353]["Middle"] = {}
tNewTaskTemplate[4353]["Middle"]["Monster"] = {}
tNewTaskTemplate[4353]["Middle"]["Monster"][5918] = {} -- 怪物ID=5918，【迪达拉】
tNewTaskTemplate[4353]["Middle"]["Monster"][5918]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4353]["Middle"]["Monster"][5918]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4353]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4353] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4353]["CompleteDemand"] = {}
tNewTaskTemplate[4353]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4353]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4353]["Complete"] = {}
tNewTaskTemplate[4353]["Complete"]["NextTask"] = 4354 -- 下一个任务
tNewTaskTemplate[4353]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4353]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4353]["Complete"]["Reward"]["Log"] = "0,0,4353,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4353]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4353]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 山野村夫（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4354] = {}
tNewTaskTemplate[4354]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4354]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4354]["EndNpcId"] = 25865 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4354]["Msg"] = {}
tNewTaskTemplate[4354]["Msg"]["Middle"] = {}
tNewTaskTemplate[4354]["Msg"]["Accept"] = "10-3" -- 接任务 - 25864
tNewTaskTemplate[4354]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4354]["Msg"]["Complete"] = "2-1" -- 交任务 - 25865
tNewTaskTemplate[4354]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25865
-- 接任务的条件需求
tNewTaskTemplate[4354]["AcceptDemand"] = {}
tNewTaskTemplate[4354]["AcceptDemand"]["FrontTask"] = 4353 -- 前置任务
tNewTaskTemplate[4354]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4354]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4354]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4354]["Accept"] = {}
tNewTaskTemplate[4354]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4354]["Accept"]["Transfer"]["MapId"] = 1011 -- 传送mapid
tNewTaskTemplate[4354]["Accept"]["Transfer"]["PosX"] = 703 -- 传送X坐标
tNewTaskTemplate[4354]["Accept"]["Transfer"]["PosY"] = 512 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4354]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4354]["Complete"] = {}
tNewTaskTemplate[4354]["Complete"]["NextTask"] = 4355 -- 下一个任务


------------------------------------------------
-- 山野村夫（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4355] = {}
tNewTaskTemplate[4355]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4355]["BeginNpcId"] = 25865 -- 接任务npc
tNewTaskTemplate[4355]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4355]["Msg"] = {}
tNewTaskTemplate[4355]["Msg"]["Middle"] = {}
tNewTaskTemplate[4355]["Msg"]["Accept"] = "4-1" -- 接任务 - 25865
tNewTaskTemplate[4355]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25865
tNewTaskTemplate[4355]["Msg"]["Complete"] = "2-1" -- 交任务 - 25932
tNewTaskTemplate[4355]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4355]["AcceptDemand"] = {}
tNewTaskTemplate[4355]["AcceptDemand"]["FrontTask"] = 4354 -- 前置任务
tNewTaskTemplate[4355]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4355]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4355]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4355]["Accept"] = {}
tNewTaskTemplate[4355]["Accept"]["Find"] = {}
tNewTaskTemplate[4355]["Accept"]["Find"]["NpcId"] = 25932 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4355]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4355]["Complete"] = {}
tNewTaskTemplate[4355]["Complete"]["NextTask"] = 4356 -- 下一个任务


------------------------------------------------
-- 难言之隐
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4356] = {}
tNewTaskTemplate[4356]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4356]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4356]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4356]["Msg"] = {}
tNewTaskTemplate[4356]["Msg"]["Middle"] = {}
tNewTaskTemplate[4356]["Msg"]["Accept"] = "4-1" -- 接任务 - 25932
tNewTaskTemplate[4356]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4356]["Msg"]["Complete"] = "6-1" -- 交任务 - 25932
tNewTaskTemplate[4356]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4356]["AcceptDemand"] = {}
tNewTaskTemplate[4356]["AcceptDemand"]["FrontTask"] = 4355 -- 前置任务
tNewTaskTemplate[4356]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4356]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4356]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4356]["Accept"] = {}
tNewTaskTemplate[4356]["Accept"]["Find"] = {}
tNewTaskTemplate[4356]["Accept"]["Find"]["NpcId"] = 25932 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4356]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4356]["Complete"] = {}
tNewTaskTemplate[4356]["Complete"]["NextTask"] = 4357 -- 下一个任务


------------------------------------------------
-- 怪物牛鬼
-- 【杀怪计数】
tNewTaskTemplate[4357] = {}
tNewTaskTemplate[4357]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4357]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4357]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4357]["Msg"] = {}
tNewTaskTemplate[4357]["Msg"]["Middle"] = {}
tNewTaskTemplate[4357]["Msg"]["Accept"] = "8-1" -- 接任务 - 25932
tNewTaskTemplate[4357]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4357]["Msg"]["Complete"] = "10-1" -- 交任务 - 25932
tNewTaskTemplate[4357]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4357]["AcceptDemand"] = {}
tNewTaskTemplate[4357]["AcceptDemand"]["FrontTask"] = 4356 -- 前置任务
tNewTaskTemplate[4357]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4357]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4357]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4357]["Accept"] = {}
tNewTaskTemplate[4357]["Accept"]["PlotId"] = 38 -- 播放剧情
tNewTaskTemplate[4357]["Accept"]["Find"] = {}
tNewTaskTemplate[4357]["Accept"]["Find"]["MapId"] = 1011 -- 寻路mapid
tNewTaskTemplate[4357]["Accept"]["Find"]["PosX"] = 763 -- 寻路X坐标
tNewTaskTemplate[4357]["Accept"]["Find"]["PosY"] = 468 -- 寻路Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4357]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4357]["Middle"] = {}
tNewTaskTemplate[4357]["Middle"]["Monster"] = {}
tNewTaskTemplate[4357]["Middle"]["Monster"][5919] = {} -- 怪物ID=5919，【牛鬼】
tNewTaskTemplate[4357]["Middle"]["Monster"][5919]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4357]["Middle"]["Monster"][5919]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4357]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4357] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4357]["CompleteDemand"] = {}
tNewTaskTemplate[4357]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4357]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4357]["Complete"] = {}
tNewTaskTemplate[4357]["Complete"]["NextTask"] = 4358 -- 下一个任务
tNewTaskTemplate[4357]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4357]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4357]["Complete"]["Reward"]["Log"] = "0,0,4357,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4357]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4357]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 躲避相亲（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4358] = {}
tNewTaskTemplate[4358]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4358]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4358]["EndNpcId"] = 2003 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4358]["Msg"] = {}
tNewTaskTemplate[4358]["Msg"]["Middle"] = {}
tNewTaskTemplate[4358]["Msg"]["Accept"] = "10-3" -- 接任务 - 25932
tNewTaskTemplate[4358]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4358]["Msg"]["Complete"] = "2-1" -- 交任务 - 2003
tNewTaskTemplate[4358]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 2003
-- 接任务的条件需求
tNewTaskTemplate[4358]["AcceptDemand"] = {}
tNewTaskTemplate[4358]["AcceptDemand"]["FrontTask"] = 4357 -- 前置任务
tNewTaskTemplate[4358]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4358]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4358]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4358]["Accept"] = {}
tNewTaskTemplate[4358]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4358]["Accept"]["Transfer"]["MapId"] = 1020 -- 传送mapid
tNewTaskTemplate[4358]["Accept"]["Transfer"]["PosX"] = 569 -- 传送X坐标
tNewTaskTemplate[4358]["Accept"]["Transfer"]["PosY"] = 623 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4358]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4358]["Complete"] = {}
tNewTaskTemplate[4358]["Complete"]["NextTask"] = 4359 -- 下一个任务


------------------------------------------------
-- 躲避相亲（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4359] = {}
tNewTaskTemplate[4359]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4359]["BeginNpcId"] = 2003 -- 接任务npc
tNewTaskTemplate[4359]["EndNpcId"] = 25934 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4359]["Msg"] = {}
tNewTaskTemplate[4359]["Msg"]["Middle"] = {}
tNewTaskTemplate[4359]["Msg"]["Accept"] = "4-1" -- 接任务 - 2003
tNewTaskTemplate[4359]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 2003
tNewTaskTemplate[4359]["Msg"]["Complete"] = "2-1" -- 交任务 - 25934
tNewTaskTemplate[4359]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25934
-- 接任务的条件需求
tNewTaskTemplate[4359]["AcceptDemand"] = {}
tNewTaskTemplate[4359]["AcceptDemand"]["FrontTask"] = 4358 -- 前置任务
tNewTaskTemplate[4359]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4359]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4359]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4359]["Accept"] = {}
tNewTaskTemplate[4359]["Accept"]["Find"] = {}
tNewTaskTemplate[4359]["Accept"]["Find"]["NpcId"] = 25934 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4359]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4359]["Complete"] = {}
tNewTaskTemplate[4359]["Complete"]["NextTask"] = 4360 -- 下一个任务


------------------------------------------------
-- 躲避相亲（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4360] = {}
tNewTaskTemplate[4360]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4360]["BeginNpcId"] = 25934 -- 接任务npc
tNewTaskTemplate[4360]["EndNpcId"] = 25935 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4360]["Msg"] = {}
tNewTaskTemplate[4360]["Msg"]["Middle"] = {}
tNewTaskTemplate[4360]["Msg"]["Accept"] = "4-1" -- 接任务 - 25934
tNewTaskTemplate[4360]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25934
tNewTaskTemplate[4360]["Msg"]["Complete"] = "2-1" -- 交任务 - 25935
tNewTaskTemplate[4360]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25935
-- 接任务的条件需求
tNewTaskTemplate[4360]["AcceptDemand"] = {}
tNewTaskTemplate[4360]["AcceptDemand"]["FrontTask"] = 4359 -- 前置任务
tNewTaskTemplate[4360]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4360]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4360]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4360]["Accept"] = {}
tNewTaskTemplate[4360]["Accept"]["Find"] = {}
tNewTaskTemplate[4360]["Accept"]["Find"]["NpcId"] = 25935 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4360]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4360]["Complete"] = {}
tNewTaskTemplate[4360]["Complete"]["NextTask"] = 4361 -- 下一个任务


------------------------------------------------
-- 忍刀七人众
-- 【旧副本】
tNewTaskTemplate[4361] = {}
tNewTaskTemplate[4361]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4361]["BeginNpcId"] = 25935 -- 接任务npc
tNewTaskTemplate[4361]["EndNpcId"] = 25936 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4361]["Msg"] = {}
tNewTaskTemplate[4361]["Msg"]["Middle"] = {}
tNewTaskTemplate[4361]["Msg"]["Accept"] = "4-1" -- 接任务 - 25935
tNewTaskTemplate[4361]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25935
tNewTaskTemplate[4361]["Msg"]["Complete"] = "2-1" -- 交任务 - 25936
tNewTaskTemplate[4361]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25936
-- 接任务的条件需求
tNewTaskTemplate[4361]["AcceptDemand"] = {}
tNewTaskTemplate[4361]["AcceptDemand"]["FrontTask"] = 4360 -- 前置任务
tNewTaskTemplate[4361]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4361]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4361]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4361]["Accept"] = {}
-- 接任务触发的函数
tNewTaskTemplate[4361]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
------- 旧副本配置开始 -------
tNewTaskTemplate[4361]["Instance"] = {}
tNewTaskTemplate[4361]["Instance"]["Type"] = 460 -- 副本ID
tNewTaskTemplate[4361]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4361]["Instance"]["Leave"]["MapId"] = 1020
tNewTaskTemplate[4361]["Instance"]["Leave"]["PosX"] = 623
tNewTaskTemplate[4361]["Instance"]["Leave"]["PosY"] = 730
tNewTaskTemplate[4361]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4361]
tNewTaskTemplate[4361]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4361]
tNewTaskTemplate[4361]["Instance"]["MsgBoxWay"] = {} -- 进入副本105提示确定后寻路配置
tNewTaskTemplate[4361]["Instance"]["MsgBoxWay"]["PosX"] = 26
tNewTaskTemplate[4361]["Instance"]["MsgBoxWay"]["PosY"] = 32
tNewTaskTemplate[4361]["Instance"]["Monster"] = {} -- 副本刷怪坐标
tNewTaskTemplate[4361]["Instance"]["Monster"][1] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][1]["MonsterId"] = 5921
tNewTaskTemplate[4361]["Instance"]["Monster"][1]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][1]["GenId"] = 30597
tNewTaskTemplate[4361]["Instance"]["Monster"][1]["PosX"] = 26
tNewTaskTemplate[4361]["Instance"]["Monster"][1]["PosY"] = 32
tNewTaskTemplate[4361]["Instance"]["Monster"][2] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][2]["MonsterId"] = 5922
tNewTaskTemplate[4361]["Instance"]["Monster"][2]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][2]["GenId"] = 30598
tNewTaskTemplate[4361]["Instance"]["Monster"][2]["PosX"] = 32
tNewTaskTemplate[4361]["Instance"]["Monster"][2]["PosY"] = 31
tNewTaskTemplate[4361]["Instance"]["Monster"][3] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][3]["MonsterId"] = 5923
tNewTaskTemplate[4361]["Instance"]["Monster"][3]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][3]["GenId"] = 30599
tNewTaskTemplate[4361]["Instance"]["Monster"][3]["PosX"] = 37
tNewTaskTemplate[4361]["Instance"]["Monster"][3]["PosY"] = 30
tNewTaskTemplate[4361]["Instance"]["Monster"][4] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][4]["MonsterId"] = 5924
tNewTaskTemplate[4361]["Instance"]["Monster"][4]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][4]["GenId"] = 30600
tNewTaskTemplate[4361]["Instance"]["Monster"][4]["PosX"] = 35
tNewTaskTemplate[4361]["Instance"]["Monster"][4]["PosY"] = 22
tNewTaskTemplate[4361]["Instance"]["Monster"][5] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][5]["MonsterId"] = 5925
tNewTaskTemplate[4361]["Instance"]["Monster"][5]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][5]["GenId"] = 30601
tNewTaskTemplate[4361]["Instance"]["Monster"][5]["PosX"] = 28
tNewTaskTemplate[4361]["Instance"]["Monster"][5]["PosY"] = 23
tNewTaskTemplate[4361]["Instance"]["Monster"][6] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][6]["MonsterId"] = 5926
tNewTaskTemplate[4361]["Instance"]["Monster"][6]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][6]["GenId"] = 30602
tNewTaskTemplate[4361]["Instance"]["Monster"][6]["PosX"] = 23
tNewTaskTemplate[4361]["Instance"]["Monster"][6]["PosY"] = 17
tNewTaskTemplate[4361]["Instance"]["Monster"][7] = {}
tNewTaskTemplate[4361]["Instance"]["Monster"][7]["MonsterId"] = 5927
tNewTaskTemplate[4361]["Instance"]["Monster"][7]["MonsterNum"] = 1
tNewTaskTemplate[4361]["Instance"]["Monster"][7]["GenId"] = 30603
tNewTaskTemplate[4361]["Instance"]["Monster"][7]["PosX"] = 29
tNewTaskTemplate[4361]["Instance"]["Monster"][7]["PosY"] = 18
------- 旧副本配置开始 -------
-- 中间表现
tNewTaskTemplate[4361]["Middle"] = {}
tNewTaskTemplate[4361]["Middle"]["Monster"] = {}
tNewTaskTemplate[4361]["Middle"]["Monster"][5921] = {} -- 怪物ID=5921，【忍刀七人众断】
tNewTaskTemplate[4361]["Middle"]["Monster"][5921]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5921]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5922] = {} -- 怪物ID=5922，【忍刀七人众大】
tNewTaskTemplate[4361]["Middle"]["Monster"][5922]["Index"] = 2 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5922]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5923] = {} -- 怪物ID=5923，【忍刀七人众长】
tNewTaskTemplate[4361]["Middle"]["Monster"][5923]["Index"] = 3 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5923]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5924] = {} -- 怪物ID=5924，【忍刀七人众钝】
tNewTaskTemplate[4361]["Middle"]["Monster"][5924]["Index"] = 4 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5924]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5925] = {} -- 怪物ID=5925，【忍刀七人众爆】
tNewTaskTemplate[4361]["Middle"]["Monster"][5925]["Index"] = 5 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5925]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5926] = {} -- 怪物ID=5926，【忍刀七人众雷】
tNewTaskTemplate[4361]["Middle"]["Monster"][5926]["Index"] = 6 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5926]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Middle"]["Monster"][5927] = {} -- 怪物ID=5927，【忍刀七人众双】
tNewTaskTemplate[4361]["Middle"]["Monster"][5927]["Index"] = 7 -- Task掩码位
tNewTaskTemplate[4361]["Middle"]["Monster"][5927]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4361]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4361] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4361]["CompleteDemand"] = {}
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data2，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][3] = 1 -- 掩码data3，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][4] = 1 -- 掩码data4，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][5] = 1 -- 掩码data5，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][6] = 1 -- 掩码data6，需要值1
tNewTaskTemplate[4361]["CompleteDemand"]["TaskData"][7] = 1 -- 掩码data7，需要值1
-- 完成任务的表现
tNewTaskTemplate[4361]["Complete"] = {}
tNewTaskTemplate[4361]["Complete"]["PlotId"] = 42 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4361]["Complete"]["NextTask"] = 4362 -- 下一个任务
tNewTaskTemplate[4361]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4361]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4361]["Complete"]["Reward"]["Log"] = "0,0,4361,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4361]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4361]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 五影大会
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4362] = {}
tNewTaskTemplate[4362]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4362]["BeginNpcId"] = 25936 -- 接任务npc
tNewTaskTemplate[4362]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4362]["Msg"] = {}
tNewTaskTemplate[4362]["Msg"]["Middle"] = {}
tNewTaskTemplate[4362]["Msg"]["Accept"] = "4-1" -- 接任务 - 25936
tNewTaskTemplate[4362]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25936
tNewTaskTemplate[4362]["Msg"]["Complete"] = "10-13" -- 交任务 - 25857
tNewTaskTemplate[4362]["Msg"]["CompleteTaskData"] = "10-14" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4362]["AcceptDemand"] = {}
tNewTaskTemplate[4362]["AcceptDemand"]["FrontTask"] = 4361 -- 前置任务
tNewTaskTemplate[4362]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4362]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4362]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4362]["Accept"] = {}
tNewTaskTemplate[4362]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4362]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4362]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
tNewTaskTemplate[4362]["Accept"]["Transfer"]["PosY"] = 128 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4362]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4362]["Complete"] = {}
tNewTaskTemplate[4362]["Complete"]["NextTask"] = 4363 -- 下一个任务


------------------------------------------------
-- 秽土转生
-- 【杀怪计数】
tNewTaskTemplate[4363] = {}
tNewTaskTemplate[4363]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4363]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4363]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4363]["Msg"] = {}
tNewTaskTemplate[4363]["Msg"]["Middle"] = {}
tNewTaskTemplate[4363]["Msg"]["Accept"] = "10-15" -- 接任务 - 25857
tNewTaskTemplate[4363]["Msg"]["NoCompleteTask"] = "10-16" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4363]["Msg"]["Complete"] = "2-1" -- 交任务 - 25861
tNewTaskTemplate[4363]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4363]["AcceptDemand"] = {}
tNewTaskTemplate[4363]["AcceptDemand"]["FrontTask"] = 4362 -- 前置任务
tNewTaskTemplate[4363]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4363]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4363]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4363]["Accept"] = {}
tNewTaskTemplate[4363]["Accept"]["Find"] = {}
tNewTaskTemplate[4363]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4363]["Accept"]["Find"]["PosX"] = 190 -- 寻路X坐标
tNewTaskTemplate[4363]["Accept"]["Find"]["PosY"] = 140 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4363]["Accept"]["NewPlotId"] = 41 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4363]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4363]["Middle"] = {}
tNewTaskTemplate[4363]["Middle"]["Monster"] = {}
tNewTaskTemplate[4363]["Middle"]["Monster"][5928] = {} -- 怪物ID=5928，【兜】
tNewTaskTemplate[4363]["Middle"]["Monster"][5928]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4363]["Middle"]["Monster"][5928]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4363]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4363] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4363]["CompleteDemand"] = {}
tNewTaskTemplate[4363]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4363]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4363]["Complete"] = {}
tNewTaskTemplate[4363]["Complete"]["NextTask"] = 4364 -- 下一个任务
tNewTaskTemplate[4363]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4363]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4363]["Complete"]["Reward"]["Log"] = "0,0,4363,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4363]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5


------------------------------------------------
-- 战前准备
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4364] = {}
tNewTaskTemplate[4364]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4364]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4364]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4364]["Msg"] = {}
tNewTaskTemplate[4364]["Msg"]["Middle"] = {}
tNewTaskTemplate[4364]["Msg"]["Accept"] = "4-1" -- 接任务 - 25861
tNewTaskTemplate[4364]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4364]["Msg"]["Complete"] = "6-1" -- 交任务 - 25861
tNewTaskTemplate[4364]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4364]["AcceptDemand"] = {}
tNewTaskTemplate[4364]["AcceptDemand"]["FrontTask"] = 4363 -- 前置任务
tNewTaskTemplate[4364]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4364]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4364]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4364]["Accept"] = {}
tNewTaskTemplate[4364]["Accept"]["Find"] = {}
tNewTaskTemplate[4364]["Accept"]["Find"]["NpcId"] = 25861 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4364]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4364]["Complete"] = {}
tNewTaskTemplate[4364]["Complete"]["NextTask"] = 4396 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4396] = {}
tNewTaskTemplate[4396]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4396]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4396]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4396]["Msg"] = {}
tNewTaskTemplate[4396]["Msg"]["Middle"] = {}
tNewTaskTemplate[4396]["Msg"]["Accept"] = "8-1" -- 接任务 - 25861
tNewTaskTemplate[4396]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4396]["Msg"]["Complete"] = "10-1" -- 交任务 - 25861
tNewTaskTemplate[4396]["Msg"]["ProLevel"] = "10-2" -- 交任职业等级不足 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4396]["AcceptDemand"] = {}
tNewTaskTemplate[4396]["AcceptDemand"]["FrontTask"] = 4364 -- 前置任务
tNewTaskTemplate[4396]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4396]["AcceptDemand"]["Pro"] = {5} -- 职业限制
--tNewTaskTemplate[4396]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4396]["Accept"] = {}
tNewTaskTemplate[4396]["Accept"]["Find"] = {}
tNewTaskTemplate[4396]["Accept"]["Find"]["NpcId"] = 25861 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4396]["CompleteDemand"] = {}
tNewTaskTemplate[4396]["CompleteDemand"]["ProLevel"] = 13 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4396]["Complete"] = {}
tNewTaskTemplate[4396]["Complete"]["NextTask"] = 4365 -- 下一个任务


------------------------------------------------
-- 突袭鬼岛
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4365] = {}
tNewTaskTemplate[4365]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4365]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4365]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4365]["Msg"] = {}
tNewTaskTemplate[4365]["Msg"]["Middle"] = {}
tNewTaskTemplate[4365]["Msg"]["Accept"] = "10-3" -- 接任务 - 25861
tNewTaskTemplate[4365]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4365]["Msg"]["Complete"] = "10-17" -- 交任务 - 25857
tNewTaskTemplate[4365]["Msg"]["CompleteTaskData"] = "10-18" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4365]["AcceptDemand"] = {}
tNewTaskTemplate[4365]["AcceptDemand"]["FrontTask"] = 4396 -- 前置任务
tNewTaskTemplate[4365]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4365]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4365]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4365]["Accept"] = {}
tNewTaskTemplate[4365]["Accept"]["Find"] = {}
tNewTaskTemplate[4365]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4365]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4365]["Complete"] = {}
tNewTaskTemplate[4365]["Complete"]["NextTask"] = 4366 -- 下一个任务


------------------------------------------------
-- 忍者丧钟
-- 【杀怪计数】
tNewTaskTemplate[4366] = {}
tNewTaskTemplate[4366]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4366]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4366]["EndNpcId"] = 26035 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4366]["Msg"] = {}
tNewTaskTemplate[4366]["Msg"]["Middle"] = {}
tNewTaskTemplate[4366]["Msg"]["Accept"] = "10-19" -- 接任务 - 25857
tNewTaskTemplate[4366]["Msg"]["NoCompleteTask"] = "10-20" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4366]["Msg"]["Complete"] = "2-1" -- 交任务 - 26035
tNewTaskTemplate[4366]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26035
-- 接任务的条件需求
tNewTaskTemplate[4366]["AcceptDemand"] = {}
tNewTaskTemplate[4366]["AcceptDemand"]["FrontTask"] = 4365 -- 前置任务
tNewTaskTemplate[4366]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4366]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4366]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4366]["Accept"] = {}
tNewTaskTemplate[4366]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4366]["Accept"]["Transfer"]["MapId"] = 10770 -- 传送mapid
tNewTaskTemplate[4366]["Accept"]["Transfer"]["PosX"] = 60 -- 传送X坐标
tNewTaskTemplate[4366]["Accept"]["Transfer"]["PosY"] = 68 -- 传送Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4366]["Accept"]["NewPlotId"] = 46 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4366]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4366]["Middle"] = {}
tNewTaskTemplate[4366]["Middle"]["Monster"] = {}
tNewTaskTemplate[4366]["Middle"]["Monster"][5930] = {} -- 怪物ID=5930，【风魔太郎】
tNewTaskTemplate[4366]["Middle"]["Monster"][5930]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4366]["Middle"]["Monster"][5930]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4366]["Middle"]["Monster"][5931] = {} -- 怪物ID=5931，【风魔太郎【狂化】】
tNewTaskTemplate[4366]["Middle"]["Monster"][5931]["Index"] = 2 -- Task掩码位
tNewTaskTemplate[4366]["Middle"]["Monster"][5931]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4366]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4366] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4366]["CompleteDemand"] = {}
tNewTaskTemplate[4366]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4366]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4366]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data2，需要值1
-- 完成任务的表现
tNewTaskTemplate[4366]["Complete"] = {}
-- tNewTaskTemplate[4366]["Complete"]["PlotId"] = 42 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4366]["Complete"]["NextTask"] = 4367 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4366]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 生死一线
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4367] = {}
tNewTaskTemplate[4367]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4367]["BeginNpcId"] = 26035 -- 接任务npc
tNewTaskTemplate[4367]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4367]["Msg"] = {}
tNewTaskTemplate[4367]["Msg"]["Middle"] = {}
tNewTaskTemplate[4367]["Msg"]["Accept"] = "4-1" -- 接任务 - 26035
tNewTaskTemplate[4367]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26035
tNewTaskTemplate[4367]["Msg"]["Complete"] = "10-21" -- 交任务 - 25857
tNewTaskTemplate[4367]["Msg"]["CompleteTaskData"] = "10-22" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4367]["AcceptDemand"] = {}
tNewTaskTemplate[4367]["AcceptDemand"]["FrontTask"] = 4366 -- 前置任务
tNewTaskTemplate[4367]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4367]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4367]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4367]["Accept"] = {}
tNewTaskTemplate[4367]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4367]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4367]["Accept"]["Transfer"]["PosX"] = 187 -- 传送X坐标
tNewTaskTemplate[4367]["Accept"]["Transfer"]["PosY"] = 137 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4367]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4367]["Complete"] = {}
tNewTaskTemplate[4367]["Complete"]["NextTask"] = 4368 -- 下一个任务


------------------------------------------------
-- 死而复生
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4368] = {}
tNewTaskTemplate[4368]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4368]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4368]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4368]["Msg"] = {}
tNewTaskTemplate[4368]["Msg"]["Middle"] = {}
tNewTaskTemplate[4368]["Msg"]["Accept"] = "10-23" -- 接任务 - 25857
tNewTaskTemplate[4368]["Msg"]["NoCompleteTask"] = "10-24" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4368]["Msg"]["Complete"] = "10-25" -- 交任务 - 25857
tNewTaskTemplate[4368]["Msg"]["CompleteTaskData"] = "10-26" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4368]["AcceptDemand"] = {}
tNewTaskTemplate[4368]["AcceptDemand"]["FrontTask"] = 4367 -- 前置任务
tNewTaskTemplate[4368]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4368]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4368]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4368]["Accept"] = {}
tNewTaskTemplate[4368]["Accept"]["Find"] = {}
tNewTaskTemplate[4368]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4368]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4368]["Complete"] = {}
tNewTaskTemplate[4368]["Complete"]["NextTask"] = 4369 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4368]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 仙人之体
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4369] = {}
tNewTaskTemplate[4369]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4369]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4369]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4369]["Msg"] = {}
tNewTaskTemplate[4369]["Msg"]["Middle"] = {}
tNewTaskTemplate[4369]["Msg"]["Accept"] = "10-27" -- 接任务 - 25857
tNewTaskTemplate[4369]["Msg"]["NoCompleteTask"] = "10-28" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4369]["Msg"]["Complete"] = "10-29" -- 交任务 - 25857
tNewTaskTemplate[4369]["Msg"]["CompleteTaskData"] = "10-30" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4369]["AcceptDemand"] = {}
tNewTaskTemplate[4369]["AcceptDemand"]["FrontTask"] = 4368 -- 前置任务
tNewTaskTemplate[4369]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4369]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4369]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4369]["Accept"] = {}
tNewTaskTemplate[4369]["Accept"]["Find"] = {}
tNewTaskTemplate[4369]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4369]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4369]["Complete"] = {}
tNewTaskTemplate[4369]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4369]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4369]["Complete"]["Reward"]["Log"] = "0,0,4369,0,18000222,3[3],3329979[3315898][3315899],10[1][1]"
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][2] = {}
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][2]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:0][金币:0]
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][2]["Attr"] = "0 1" -- 基础法印自选礼盒*1
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][3] = {}
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][3]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:0][金币:0]
tNewTaskTemplate[4369]["Complete"]["Reward"]["RewardItem"][3]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4369]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


---------------------------- 闲聊对白 ----------------------------
-- 2001,1002,439,464,双龙城总兵,清风原
tNewTaskGossipNpc[2001] = {}
tNewTaskGossipNpc[2001][1] = "1-1"
tNewTaskGossipNpc[2001][2] = "1-2"
tNewTaskGossipNpc[2001][3] = "1-3"
-- 2003,1020,566,620,黑虎城总兵,绝情谷
tNewTaskGossipNpc[2003] = {}
tNewTaskGossipNpc[2003][1] = "1-1"
tNewTaskGossipNpc[2003][2] = "1-2"
tNewTaskGossipNpc[2003][3] = "1-3"
-- 2004,1000,476,631,云门关总兵,云门关
tNewTaskGossipNpc[2004] = {}
tNewTaskGossipNpc[2004][1] = "1-1"
tNewTaskGossipNpc[2004][2] = "1-2"
tNewTaskGossipNpc[2004][3] = "1-3"
-- 8510,1015,710,572,白鹭城城主,芦花荡
tNewTaskGossipNpc[8510] = {}
tNewTaskGossipNpc[8510][1] = "1-1"
tNewTaskGossipNpc[8510][2] = "1-2"
tNewTaskGossipNpc[8510][3] = "1-3"
-- 25850,10653,81,57,雾隠才藏,天龙秘境
tNewTaskGossipNpc[25850] = {}
tNewTaskGossipNpc[25850][1] = "1-1"
tNewTaskGossipNpc[25850][2] = "1-2"
tNewTaskGossipNpc[25850][3] = "1-3"
-- 25851,10763,63,39,雾隠才藏,服部半藏墓室
tNewTaskGossipNpc[25851] = {}
tNewTaskGossipNpc[25851][1] = "1-1"
tNewTaskGossipNpc[25851][2] = "1-2"
tNewTaskGossipNpc[25851][3] = "1-3"
-- 25852,10764,250,339,蛤蟆吉,妙木山
tNewTaskGossipNpc[25852] = {}
tNewTaskGossipNpc[25852][1] = "1-1"
tNewTaskGossipNpc[25852][2] = "1-2"
tNewTaskGossipNpc[25852][3] = "1-3"
-- 25853,10765,267,303,蛤蟆空,监牢
tNewTaskGossipNpc[25853] = {}
tNewTaskGossipNpc[25853][1] = "1-1"
tNewTaskGossipNpc[25853][2] = "1-2"
tNewTaskGossipNpc[25853][3] = "1-3"
-- 25854,10765,260,294,蛤蟆卫门,监牢
tNewTaskGossipNpc[25854] = {}
tNewTaskGossipNpc[25854][1] = "1-1"
tNewTaskGossipNpc[25854][2] = "1-2"
tNewTaskGossipNpc[25854][3] = "1-3"
-- 25855,10764,210,274,蛤蟆卫门,妙木山
tNewTaskGossipNpc[25855] = {}
tNewTaskGossipNpc[25855][1] = "1-1"
tNewTaskGossipNpc[25855][2] = "1-2"
tNewTaskGossipNpc[25855][3] = "1-3"
-- 25856,10764,183,120,妙木仙人,妙木山
tNewTaskGossipNpc[25856] = {}
tNewTaskGossipNpc[25856][1] = "1-1"
tNewTaskGossipNpc[25856][2] = "1-2"
tNewTaskGossipNpc[25856][3] = "1-3"
-- 25857,10764,181,128,儿雷也,妙木山
tNewTaskGossipNpc[25857] = {}
tNewTaskGossipNpc[25857][1] = "1-1"
tNewTaskGossipNpc[25857][2] = "1-2"
tNewTaskGossipNpc[25857][3] = "1-3"
-- 25858,10764,259,124,儿雷也,妙木山
tNewTaskGossipNpc[25858] = {}
tNewTaskGossipNpc[25858][1] = "1-1"
tNewTaskGossipNpc[25858][2] = "1-2"
tNewTaskGossipNpc[25858][3] = "1-3"
-- 25859,1002,583,580,船夫老张,清风原
tNewTaskGossipNpc[25859] = {}
tNewTaskGossipNpc[25859][1] = "1-1"
tNewTaskGossipNpc[25859][2] = "1-2"
tNewTaskGossipNpc[25859][3] = "1-3"
-- 25860,1002,379,591,千手真纪,清风原
tNewTaskGossipNpc[25860] = {}
tNewTaskGossipNpc[25860][1] = "1-1"
tNewTaskGossipNpc[25860][2] = "1-2"
tNewTaskGossipNpc[25860][3] = "1-3"
-- 25861,10764,167,126,千手真纪,妙木山
tNewTaskGossipNpc[25861] = {}
tNewTaskGossipNpc[25861][1] = "1-1"
tNewTaskGossipNpc[25861][2] = "1-2"
tNewTaskGossipNpc[25861][3] = "1-3"
-- 25862,1000,577,547,忍术痕迹,云门关
tNewTaskGossipNpc[25862] = {}
tNewTaskGossipNpc[25862][1] = "1-1"
tNewTaskGossipNpc[25862][2] = "1-2"
tNewTaskGossipNpc[25862][3] = "1-3"
-- 25863,1000,583,528,忍术痕迹,云门关
tNewTaskGossipNpc[25863] = {}
tNewTaskGossipNpc[25863][1] = "1-1"
tNewTaskGossipNpc[25863][2] = "1-2"
tNewTaskGossipNpc[25863][3] = "1-3"
-- 25864,1000,559,452,罗,云门关
tNewTaskGossipNpc[25864] = {}
tNewTaskGossipNpc[25864][1] = "1-1"
tNewTaskGossipNpc[25864][2] = "1-2"
tNewTaskGossipNpc[25864][3] = "1-3"
-- 25865,1011,702,509,樵夫老李,枫溪林
tNewTaskGossipNpc[25865] = {}
tNewTaskGossipNpc[25865][1] = "1-1"
tNewTaskGossipNpc[25865][2] = "1-2"
tNewTaskGossipNpc[25865][3] = "1-3"
-- 25932,1011,763,476,艾,枫溪林
tNewTaskGossipNpc[25932] = {}
tNewTaskGossipNpc[25932][1] = "1-1"
tNewTaskGossipNpc[25932][2] = "1-2"
tNewTaskGossipNpc[25932][3] = "1-3"
-- 25933,1015,689,679,大野木,芦花荡
tNewTaskGossipNpc[25933] = {}
tNewTaskGossipNpc[25933][1] = "1-1"
tNewTaskGossipNpc[25933][2] = "1-2"
tNewTaskGossipNpc[25933][3] = "1-3"
-- 25934,1020,560,692,行脚商老刘,绝情谷
tNewTaskGossipNpc[25934] = {}
tNewTaskGossipNpc[25934][1] = "1-1"
tNewTaskGossipNpc[25934][2] = "1-2"
tNewTaskGossipNpc[25934][3] = "1-3"
-- 25935,1020,593,761,无名村民,绝情谷
tNewTaskGossipNpc[25935] = {}
tNewTaskGossipNpc[25935][1] = "1-1"
tNewTaskGossipNpc[25935][2] = "1-2"
tNewTaskGossipNpc[25935][3] = "1-3"
-- 25936,1020,623,730,照美冥,绝情谷
tNewTaskGossipNpc[25936] = {}
tNewTaskGossipNpc[25936][1] = "1-1"
tNewTaskGossipNpc[25936][2] = "1-2"
tNewTaskGossipNpc[25936][3] = "1-3"
-- 26012,10764,246,293,蛤蟆空,妙木山
tNewTaskGossipNpc[26012] = {}
tNewTaskGossipNpc[26012][1] = "1-1"
tNewTaskGossipNpc[26012][2] = "1-2"
tNewTaskGossipNpc[26012][3] = "1-3"
-- 26033,10764,186,240,蛤蟆露,妙木山
tNewTaskGossipNpc[26033] = {}
tNewTaskGossipNpc[26033][1] = "1-1"
tNewTaskGossipNpc[26033][2] = "1-2"
tNewTaskGossipNpc[26033][3] = "1-3"
-- 26034,10764,249,120,蛤蟆断,妙木山
tNewTaskGossipNpc[26034] = {}
tNewTaskGossipNpc[26034][1] = "1-1"
tNewTaskGossipNpc[26034][2] = "1-2"
tNewTaskGossipNpc[26034][3] = "1-3"
-- 26035,10770,62,51,千手真纪,鬼之岛
tNewTaskGossipNpc[26035] = {}
tNewTaskGossipNpc[26035][1] = "1-1"
tNewTaskGossipNpc[26035][2] = "1-2"
tNewTaskGossipNpc[26035][3] = "1-3"


---------------------------- 不出闲聊 ----------------------------
tNewNoDialogue[25951] = 1
tNewNoDialogue[25952] = 1
tNewNoDialogue[26051] = 1


---------------------------- 对白配置 ----------------------------

-- 2001,1002,439,464,双龙城总兵,清风原
tNpcGossip[2001] = tNpcGossip[2001] or DefaultNpc:new{}
tNpcGossip[2001]["DialogueText"] = tNinjaQuest_Text[2001]
-- 1-1
tNpcGossip[2001]["Text1-1"] = {111}
tNpcGossip[2001]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[2001]["Text1-2"] = {121}
tNpcGossip[2001]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[2001]["Text1-3"] = {131}
tNpcGossip[2001]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[2001]["Text2-1"] = {211}
tNpcGossip[2001]["tOption2-1"] = {211}
tNpcGossip[2001]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4343"
-- 3-1
tNpcGossip[2001]["Text3-1"] = {311}
tNpcGossip[2001]["tOption3-1"] = {311}
tNpcGossip[2001]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4343"
-- 4-1
tNpcGossip[2001]["Text4-1"] = {411}
tNpcGossip[2001]["tOption4-1"] = {411}
tNpcGossip[2001]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4344"
-- 5-1
tNpcGossip[2001]["Text5-1"] = {511}
tNpcGossip[2001]["tOption5-1"] = {511}
tNpcGossip[2001]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4344"

-- 2003,1020,566,620,黑虎城总兵,绝情谷
tNpcGossip[2003] = tNpcGossip[2003] or DefaultNpc:new{}
tNpcGossip[2003]["DialogueText"] = tNinjaQuest_Text[2003]
-- 1-1
tNpcGossip[2003]["Text1-1"] = {111}
tNpcGossip[2003]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[2003]["Text1-2"] = {121}
tNpcGossip[2003]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[2003]["Text1-3"] = {131}
tNpcGossip[2003]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[2003]["Text2-1"] = {211}
tNpcGossip[2003]["tOption2-1"] = {211}
tNpcGossip[2003]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4358"
-- 3-1
tNpcGossip[2003]["Text3-1"] = {311}
tNpcGossip[2003]["tOption3-1"] = {311}
tNpcGossip[2003]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4358"
-- 4-1
tNpcGossip[2003]["Text4-1"] = {411}
tNpcGossip[2003]["tOption4-1"] = {411}
tNpcGossip[2003]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4359"
-- 5-1
tNpcGossip[2003]["Text5-1"] = {511}
tNpcGossip[2003]["tOption5-1"] = {511}
tNpcGossip[2003]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4359"

-- 2004,1000,476,631,云门关总兵,云门关
tNpcGossip[2004] = tNpcGossip[2004] or DefaultNpc:new{}
tNpcGossip[2004]["DialogueText"] = tNinjaQuest_Text[2004]
-- 1-1
tNpcGossip[2004]["Text1-1"] = {111}
tNpcGossip[2004]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[2004]["Text1-2"] = {121}
tNpcGossip[2004]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[2004]["Text1-3"] = {131}
tNpcGossip[2004]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[2004]["Text2-1"] = {211}
tNpcGossip[2004]["tOption2-1"] = {211}
tNpcGossip[2004]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4348"
-- 3-1
tNpcGossip[2004]["Text3-1"] = {311}
tNpcGossip[2004]["tOption3-1"] = {311}
tNpcGossip[2004]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4348"
-- 4-1
tNpcGossip[2004]["Text4-1"] = {411}
tNpcGossip[2004]["tOption4-1"] = {411}
tNpcGossip[2004]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4349"
-- 5-1
tNpcGossip[2004]["Text5-1"] = {511}
tNpcGossip[2004]["tOption5-1"] = {511}
tNpcGossip[2004]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4349"

-- 8510,1015,710,572,白鹭城城主,芦花荡
tNpcGossip[8510] = tNpcGossip[8510] or DefaultNpc:new{}
tNpcGossip[8510]["DialogueText"] = tNinjaQuest_Text[8510]
-- 1-1
tNpcGossip[8510]["Text1-1"] = {111}
tNpcGossip[8510]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[8510]["Text1-2"] = {121}
tNpcGossip[8510]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[8510]["Text1-3"] = {131}
tNpcGossip[8510]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[8510]["Text2-1"] = {211}
tNpcGossip[8510]["tOption2-1"] = {211}
tNpcGossip[8510]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4336"
-- 3-1
tNpcGossip[8510]["Text3-1"] = {311}
tNpcGossip[8510]["tOption3-1"] = {311}
tNpcGossip[8510]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4336"
-- 4-1
tNpcGossip[8510]["Text4-1"] = {411}
tNpcGossip[8510]["tOption4-1"] = {411}
tNpcGossip[8510]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4337"
-- 5-1
tNpcGossip[8510]["Text5-1"] = {511}
tNpcGossip[8510]["tOption5-1"] = {511}
tNpcGossip[8510]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4337"

-- 25850,10653,81,57,雾隠才藏,天龙秘境
tNpcGossip[25850] = tNpcGossip[25850] or DefaultNpc:new{}
tNpcGossip[25850]["DialogueText"] = tNinjaQuest_Text[25850]
-- 1-1
tNpcGossip[25850]["Text1-1"] = {111,112,113}
tNpcGossip[25850]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25850]["Text1-2"] = {121,122,123}
tNpcGossip[25850]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25850]["Text1-3"] = {131,132,133}
tNpcGossip[25850]["tOption1-3"] = {131}
-- 等级不足
tNpcGossip[25850]["Text2-2"] = {221,222,223}
tNpcGossip[25850]["tOption2-2"] = {221}
-- 10-1
tNpcGossip[25850]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25850]["tOption10-1"] = {1011}
tNpcGossip[25850]["OptionFunc1011"] = "NinjaQuest_NpcAcceptMain</N>4303"
-- 10-10
tNpcGossip[25850]["Text10-10"] = {10101,10102,10103}
tNpcGossip[25850]["tOption10-10"] = {10101}
tNpcGossip[25850]["OptionFunc10101"] = "NinjaQuest_NpcFind</N>4307"
-- 10-11
tNpcGossip[25850]["Text10-11"] = {10111,10112,10113}
tNpcGossip[25850]["tOption10-11"] = {10111}
tNpcGossip[25850]["OptionFunc10111"] = "NinjaQuest_NpcCompleteMain</N>4307"
-- 10-12
tNpcGossip[25850]["Text10-12"] = {10121,10122,10123}
tNpcGossip[25850]["tOption10-12"] = {10121}
tNpcGossip[25850]["OptionFunc10121"] = "NinjaQuest_NpcFind</N>4307"
-- 10-13
tNpcGossip[25850]["Text10-13"] = {10131,10132,10133,10134}
tNpcGossip[25850]["tOption10-13"] = {10131}
tNpcGossip[25850]["OptionFunc10131"] = "NinjaQuest_NpcAcceptMain</N>4308"
-- 10-14
tNpcGossip[25850]["Text10-14"] = {10141,10142,10143,10144}
tNpcGossip[25850]["tOption10-14"] = {10141}
tNpcGossip[25850]["OptionFunc10141"] = "NinjaQuest_NpcFind</N>4308"
-- 10-15
tNpcGossip[25850]["Text10-15"] = {10151,10152,10153,10154}
tNpcGossip[25850]["tOption10-15"] = {10151}
tNpcGossip[25850]["OptionFunc10151"] = "NinjaQuest_NpcCompleteMain</N>4342"
-- 10-16
tNpcGossip[25850]["Text10-16"] = {10161,10162,10163}
tNpcGossip[25850]["tOption10-16"] = {10161}
tNpcGossip[25850]["OptionFunc10161"] = "NinjaQuest_NpcFind</N>4342"
-- 10-17
tNpcGossip[25850]["Text10-17"] = {10171,10172,10173,10174}
tNpcGossip[25850]["tOption10-17"] = {10171}
tNpcGossip[25850]["OptionFunc10171"] = "NinjaQuest_NpcAcceptMain</N>4343"
-- 10-18
tNpcGossip[25850]["Text10-18"] = {10181,10182,10183,10184}
tNpcGossip[25850]["tOption10-18"] = {10181}
tNpcGossip[25850]["OptionFunc10181"] = "NinjaQuest_NpcFind</N>4343"
-- 10-2
tNpcGossip[25850]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25850]["tOption10-2"] = {1021}
tNpcGossip[25850]["OptionFunc1021"] = "NinjaQuest_NpcCreateInstance</N>4303"
-- 10-3
tNpcGossip[25850]["Text10-3"] = {1031,1032,1033,1034,1035}
tNpcGossip[25850]["tOption10-3"] = {1031}
tNpcGossip[25850]["OptionFunc1031"] = "NinjaQuest_NpcCompleteMain</N>4305"
-- 10-4
tNpcGossip[25850]["Text10-4"] = {1041,1042,1043}
tNpcGossip[25850]["tOption10-4"] = {1041}
tNpcGossip[25850]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4305"
-- 10-5
tNpcGossip[25850]["Text10-5"] = {1051,1052,1053,1054}
tNpcGossip[25850]["tOption10-5"] = {1051}
tNpcGossip[25850]["OptionFunc1051"] = "NinjaQuest_NpcAcceptMain</N>4306"
-- 10-6
tNpcGossip[25850]["Text10-6"] = {1061,1062,1063,1064}
tNpcGossip[25850]["tOption10-6"] = {1061}
tNpcGossip[25850]["OptionFunc1061"] = "NinjaQuest_NpcFind</N>4306"
-- 10-7
tNpcGossip[25850]["Text10-7"] = {1071,1072,1073,1074,1075,1076,1077,1078,1079}
tNpcGossip[25850]["tOption10-7"] = {1071,1072,1073,1074,1075}
tNpcGossip[25850]["OptionFunc1071"] = "NinjaQuest_ForbearanceLaw</N>4306</N>1"
tNpcGossip[25850]["OptionFunc1072"] = "NinjaQuest_ForbearanceLaw</N>4306</N>2"
tNpcGossip[25850]["OptionFunc1073"] = "NinjaQuest_ForbearanceLaw</N>4306</N>3"
tNpcGossip[25850]["OptionFunc1074"] = "NinjaQuest_ForbearanceLaw</N>4306</N>4"
tNpcGossip[25850]["OptionFunc1075"] = "NinjaQuest_ForbearanceLaw</N>4306</N>5"
-- 10-8
tNpcGossip[25850]["Text10-8"] = {1081,1082,1083}
tNpcGossip[25850]["tOption10-8"] = {1081}
tNpcGossip[25850]["OptionFunc1081"] = "NinjaQuest_NpcFind</N>4306"
-- 10-9
tNpcGossip[25850]["Text10-9"] = {1091,1092,1093}
tNpcGossip[25850]["tOption10-9"] = {1091}
tNpcGossip[25850]["OptionFunc1091"] = "NinjaQuest_NpcAcceptMain</N>4307"
-- 2-1
tNpcGossip[25850]["Text2-1"] = {211,212,213}
tNpcGossip[25850]["tOption2-1"] = {211}
tNpcGossip[25850]["OptionFunc211"] = "NinjaQuest_NpcAcceptMain</N>4301"
-- 3-1
tNpcGossip[25850]["Text3-1"] = {311,312,313}
tNpcGossip[25850]["tOption3-1"] = {311}
tNpcGossip[25850]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4301"
-- 4-1
tNpcGossip[25850]["Text4-1"] = {411,412,413}
tNpcGossip[25850]["tOption4-1"] = {411}
tNpcGossip[25850]["OptionFunc411"] = "NinjaQuest_NpcCompleteMain</N>4301"
-- 5-1
tNpcGossip[25850]["Text5-1"] = {511,512,513}
tNpcGossip[25850]["tOption5-1"] = {511}
tNpcGossip[25850]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4301"
-- 6-1
tNpcGossip[25850]["Text6-1"] = {611,612,613}
tNpcGossip[25850]["tOption6-1"] = {611}
tNpcGossip[25850]["OptionFunc611"] = "NinjaQuest_NpcAcceptMain</N>4302"
-- 7-1
tNpcGossip[25850]["Text7-1"] = {711,712,713}
tNpcGossip[25850]["tOption7-1"] = {711}
tNpcGossip[25850]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4302"
-- 8-1
tNpcGossip[25850]["Text8-1"] = {811,812,813}
tNpcGossip[25850]["tOption8-1"] = {811}
tNpcGossip[25850]["OptionFunc811"] = "NinjaQuest_NpcCompleteMain</N>4302"
-- 9-1
tNpcGossip[25850]["Text9-1"] = {911,912,913}
tNpcGossip[25850]["tOption9-1"] = {911}
tNpcGossip[25850]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4302"

-- 25851,10763,63,39,雾隠才藏,服部半藏墓室
tNpcGossip[25851] = tNpcGossip[25851] or DefaultNpc:new{}
tNpcGossip[25851]["DialogueText"] = tNinjaQuest_Text[25851]
-- 1-1
tNpcGossip[25851]["Text1-1"] = {111,112,113}
tNpcGossip[25851]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25851]["Text1-2"] = {121,122,123}
tNpcGossip[25851]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25851]["Text1-3"] = {131,132,133}
tNpcGossip[25851]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25851]["Text2-1"] = {211,212,213}
tNpcGossip[25851]["tOption2-1"] = {211}
tNpcGossip[25851]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4303"
-- 3-1
tNpcGossip[25851]["Text3-1"] = {311,312,313}
tNpcGossip[25851]["tOption3-1"] = {311}
tNpcGossip[25851]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4303"
-- 4-1
tNpcGossip[25851]["Text4-1"] = {411,412,413}
tNpcGossip[25851]["tOption4-1"] = {411}
tNpcGossip[25851]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4304"
-- 5-1
tNpcGossip[25851]["Text5-1"] = {511,512,513}
tNpcGossip[25851]["tOption5-1"] = {511}
tNpcGossip[25851]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4304"
-- 6-1
tNpcGossip[25851]["Text6-1"] = {611,612,613}
tNpcGossip[25851]["tOption6-1"] = {611}
tNpcGossip[25851]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4304"
-- 7-1
tNpcGossip[25851]["Text7-1"] = {711,712,713}
tNpcGossip[25851]["tOption7-1"] = {711}
-- 8-1
tNpcGossip[25851]["Text8-1"] = {811,812,813}
tNpcGossip[25851]["tOption8-1"] = {811}
tNpcGossip[25851]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4305"
-- 9-1
tNpcGossip[25851]["Text9-1"] = {911,912,913}
tNpcGossip[25851]["tOption9-1"] = {911}
tNpcGossip[25851]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4305"

-- 25852,10764,250,339,蛤蟆吉,妙木山
tNpcGossip[25852] = tNpcGossip[25852] or DefaultNpc:new{}
tNpcGossip[25852]["DialogueText"] = tNinjaQuest_Text[25852]
-- 1-1
tNpcGossip[25852]["Text1-1"] = {111,112}
tNpcGossip[25852]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25852]["Text1-2"] = {121,122}
tNpcGossip[25852]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25852]["Text1-3"] = {131,132}
tNpcGossip[25852]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25852]["Text2-1"] = {211,212}
tNpcGossip[25852]["tOption2-1"] = {211}
tNpcGossip[25852]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4309"
-- 3-1
tNpcGossip[25852]["Text3-1"] = {311,312}
tNpcGossip[25852]["tOption3-1"] = {311}
tNpcGossip[25852]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4309"
-- 4-1
tNpcGossip[25852]["Text4-1"] = {411,412}
tNpcGossip[25852]["tOption4-1"] = {411}
tNpcGossip[25852]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4310"
-- 5-1
tNpcGossip[25852]["Text5-1"] = {511,512}
tNpcGossip[25852]["tOption5-1"] = {511}
tNpcGossip[25852]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4310"
-- 6-1
tNpcGossip[25852]["Text6-1"] = {611,612}
tNpcGossip[25852]["tOption6-1"] = {611}
tNpcGossip[25852]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4314"
-- 7-1
tNpcGossip[25852]["Text7-1"] = {711,712}
tNpcGossip[25852]["tOption7-1"] = {711}
tNpcGossip[25852]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4314"
-- 8-1
tNpcGossip[25852]["Text8-1"] = {811,812}
tNpcGossip[25852]["tOption8-1"] = {811}
tNpcGossip[25852]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4315"
-- 9-1
tNpcGossip[25852]["Text9-1"] = {911,912}
tNpcGossip[25852]["tOption9-1"] = {911}
tNpcGossip[25852]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4315"

-- 25853,10765,267,303,蛤蟆空,监牢
tNpcGossip[25853] = tNpcGossip[25853] or DefaultNpc:new{}
tNpcGossip[25853]["DialogueText"] = tNinjaQuest_Text[25853]
-- 1-1
tNpcGossip[25853]["Text1-1"] = {111,112}
tNpcGossip[25853]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25853]["Text1-2"] = {121,122}
tNpcGossip[25853]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25853]["Text1-3"] = {131,132}
tNpcGossip[25853]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25853]["Text2-1"] = {211,212}
tNpcGossip[25853]["tOption2-1"] = {211}
tNpcGossip[25853]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4310"
-- 3-1
tNpcGossip[25853]["Text3-1"] = {311,312}
tNpcGossip[25853]["tOption3-1"] = {311}
tNpcGossip[25853]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4310"
-- 4-1
tNpcGossip[25853]["Text4-1"] = {411,412}
tNpcGossip[25853]["tOption4-1"] = {411}
tNpcGossip[25853]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4311"
-- 5-1
tNpcGossip[25853]["Text5-1"] = {511,512}
tNpcGossip[25853]["tOption5-1"] = {511}
tNpcGossip[25853]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4311"

-- 25854,10765,260,294,蛤蟆卫门,监牢
tNpcGossip[25854] = tNpcGossip[25854] or DefaultNpc:new{}
tNpcGossip[25854]["DialogueText"] = tNinjaQuest_Text[25854]
-- 1-1
tNpcGossip[25854]["Text1-1"] = {111,112,113}
tNpcGossip[25854]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25854]["Text1-2"] = {121,122,123}
tNpcGossip[25854]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25854]["Text1-3"] = {131,132,133}
tNpcGossip[25854]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25854]["Text10-1"] = {1011,1012,1013,1014,1015}
tNpcGossip[25854]["tOption10-1"] = {1011}
tNpcGossip[25854]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4313"
-- 10-2
tNpcGossip[25854]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25854]["tOption10-2"] = {1021}
tNpcGossip[25854]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4313"
-- 10-3
tNpcGossip[25854]["Text10-3"] = {1031,1032,1033,1034}
tNpcGossip[25854]["tOption10-3"] = {1031}
tNpcGossip[25854]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4314"
-- 10-4
tNpcGossip[25854]["Text10-4"] = {1041,1042,1043,1044}
tNpcGossip[25854]["tOption10-4"] = {1041}
tNpcGossip[25854]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4314"
-- 2-1
tNpcGossip[25854]["Text2-1"] = {211,212,213}
tNpcGossip[25854]["tOption2-1"] = {211}
tNpcGossip[25854]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4311"
-- 3-1
tNpcGossip[25854]["Text3-1"] = {311,312,313}
tNpcGossip[25854]["tOption3-1"] = {311}
tNpcGossip[25854]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4311"
-- 4-1
tNpcGossip[25854]["Text4-1"] = {411,412,413}
tNpcGossip[25854]["tOption4-1"] = {411}
tNpcGossip[25854]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4312"
-- 5-1
tNpcGossip[25854]["Text5-1"] = {511,512,513}
tNpcGossip[25854]["tOption5-1"] = {511}
tNpcGossip[25854]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4312"
-- 6-1
tNpcGossip[25854]["Text6-1"] = {611,612,613}
tNpcGossip[25854]["tOption6-1"] = {611}
tNpcGossip[25854]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4312"
-- 7-1
tNpcGossip[25854]["Text7-1"] = {711,712,713}
tNpcGossip[25854]["tOption7-1"] = {711}
tNpcGossip[25854]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4312"
-- 8-1
tNpcGossip[25854]["Text8-1"] = {811,812,813}
tNpcGossip[25854]["tOption8-1"] = {811}
tNpcGossip[25854]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4313"
-- 9-1
tNpcGossip[25854]["Text9-1"] = {911,912,913}
tNpcGossip[25854]["tOption9-1"] = {911}
tNpcGossip[25854]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4313"

-- 25855,10764,210,274,蛤蟆卫门,妙木山
tNpcGossip[25855] = tNpcGossip[25855] or DefaultNpc:new{}
tNpcGossip[25855]["DialogueText"] = tNinjaQuest_Text[25855]
-- 1-1
tNpcGossip[25855]["Text1-1"] = {111,112,113}
tNpcGossip[25855]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25855]["Text1-2"] = {121,122,123}
tNpcGossip[25855]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25855]["Text1-3"] = {131,132,133}
tNpcGossip[25855]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25855]["Text2-1"] = {211,212,213}
tNpcGossip[25855]["tOption2-1"] = {211}
tNpcGossip[25855]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4317"
-- 3-1
tNpcGossip[25855]["Text3-1"] = {311,312,313}
tNpcGossip[25855]["tOption3-1"] = {311}
tNpcGossip[25855]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4317"
-- 4-1
tNpcGossip[25855]["Text4-1"] = {411,412,413}
tNpcGossip[25855]["tOption4-1"] = {411}
tNpcGossip[25855]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4318"
-- 5-1
tNpcGossip[25855]["Text5-1"] = {511,512,513}
tNpcGossip[25855]["tOption5-1"] = {511}
tNpcGossip[25855]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4318"
-- 6-1
tNpcGossip[25855]["Text6-1"] = {611,612,613,614}
tNpcGossip[25855]["tOption6-1"] = {611}
tNpcGossip[25855]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4318"
-- 7-1
tNpcGossip[25855]["Text7-1"] = {711,712,713}
tNpcGossip[25855]["tOption7-1"] = {711}
tNpcGossip[25855]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4318"
-- 8-1
tNpcGossip[25855]["Text8-1"] = {811,812,813}
tNpcGossip[25855]["tOption8-1"] = {811}
tNpcGossip[25855]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4319"
-- 9-1
tNpcGossip[25855]["Text9-1"] = {911,912,913}
tNpcGossip[25855]["tOption9-1"] = {911}
tNpcGossip[25855]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4319"

-- 25856,10764,183,120,妙木仙人,妙木山
tNpcGossip[25856] = tNpcGossip[25856] or DefaultNpc:new{}
tNpcGossip[25856]["DialogueText"] = tNinjaQuest_Text[25856]
-- 1-1
tNpcGossip[25856]["Text1-1"] = {111,112,113}
tNpcGossip[25856]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25856]["Text1-2"] = {121,122,123}
tNpcGossip[25856]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25856]["Text1-3"] = {131,132,133}
tNpcGossip[25856]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25856]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25856]["tOption10-1"] = {1011}
tNpcGossip[25856]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4322"
-- 10-10
tNpcGossip[25856]["Text10-10"] = {10101,10102,10103}
tNpcGossip[25856]["tOption10-10"] = {10101}
tNpcGossip[25856]["OptionFunc10101"] = "NinjaQuest_NpcFind</N>4341"
-- 10-11
tNpcGossip[25856]["Text10-11"] = {10111,10112,10113,10114}
tNpcGossip[25856]["tOption10-11"] = {10111}
tNpcGossip[25856]["OptionFunc10111"] = "NinjaQuest_NpcAcceptMain</N>4342"
-- 10-12
tNpcGossip[25856]["Text10-12"] = {10121,10122,10123,10124}
tNpcGossip[25856]["tOption10-12"] = {10121}
tNpcGossip[25856]["OptionFunc10121"] = "NinjaQuest_NpcFind</N>4342"
-- 10-2
tNpcGossip[25856]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25856]["tOption10-2"] = {1021}
tNpcGossip[25856]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4322"
-- 10-3
tNpcGossip[25856]["Text10-3"] = {1031,1032,1033,1034}
tNpcGossip[25856]["tOption10-3"] = {1031}
tNpcGossip[25856]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4323"
-- 10-4
tNpcGossip[25856]["Text10-4"] = {1041,1042,1043,1044}
tNpcGossip[25856]["tOption10-4"] = {1041}
tNpcGossip[25856]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4323"
-- 10-5
tNpcGossip[25856]["Text10-5"] = {1051,1052,1053}
tNpcGossip[25856]["tOption10-5"] = {1051}
tNpcGossip[25856]["OptionFunc1051"] = "NinjaQuest_NpcCompleteMain</N>4323"
-- 10-6
tNpcGossip[25856]["Text10-6"] = {1061,1062,1063}
tNpcGossip[25856]["tOption10-6"] = {1061}
tNpcGossip[25856]["OptionFunc1061"] = "NinjaQuest_NpcFind</N>4323"
-- 10-7
tNpcGossip[25856]["Text10-7"] = {1071,1072,1073,1074,1075}
tNpcGossip[25856]["tOption10-7"] = {1071}
tNpcGossip[25856]["OptionFunc1071"] = "NinjaQuest_NpcAcceptMain</N>4324"
-- 10-8
tNpcGossip[25856]["Text10-8"] = {1081,1082,1083}
tNpcGossip[25856]["tOption10-8"] = {1081}
tNpcGossip[25856]["OptionFunc1081"] = "NinjaQuest_NpcFind</N>4324"
-- 10-9
tNpcGossip[25856]["Text10-9"] = {1091,1092,1093,1094}
tNpcGossip[25856]["tOption10-9"] = {1091}
tNpcGossip[25856]["OptionFunc1091"] = "NinjaQuest_NpcCompleteMain</N>4341"
-- 2-1
tNpcGossip[25856]["Text2-1"] = {211,212,213}
tNpcGossip[25856]["tOption2-1"] = {211}
tNpcGossip[25856]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4320"
-- 3-1
tNpcGossip[25856]["Text3-1"] = {311,312,313}
tNpcGossip[25856]["tOption3-1"] = {311}
tNpcGossip[25856]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4320"
-- 4-1
tNpcGossip[25856]["Text4-1"] = {411,412,413,414}
tNpcGossip[25856]["tOption4-1"] = {411}
tNpcGossip[25856]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4321"
-- 5-1
tNpcGossip[25856]["Text5-1"] = {511,512,513,514}
tNpcGossip[25856]["tOption5-1"] = {511}
tNpcGossip[25856]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4321"
-- 6-1
tNpcGossip[25856]["Text6-1"] = {611,612,613,614}
tNpcGossip[25856]["tOption6-1"] = {611}
tNpcGossip[25856]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4321"
-- 7-1
tNpcGossip[25856]["Text7-1"] = {711,712,713}
tNpcGossip[25856]["tOption7-1"] = {711}
tNpcGossip[25856]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4321"
-- 8-1
tNpcGossip[25856]["Text8-1"] = {811,812,813,814,815}
tNpcGossip[25856]["tOption8-1"] = {811}
tNpcGossip[25856]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4322"
-- 9-1
tNpcGossip[25856]["Text9-1"] = {911,912,913,914,915}
tNpcGossip[25856]["tOption9-1"] = {911}
tNpcGossip[25856]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4322"

-- 25857,10764,181,128,儿雷也,妙木山
tNpcGossip[25857] = tNpcGossip[25857] or DefaultNpc:new{}
tNpcGossip[25857]["DialogueText"] = tNinjaQuest_Text[25857]
-- 1-1
tNpcGossip[25857]["Text1-1"] = {111,112,113}
tNpcGossip[25857]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25857]["Text1-2"] = {121,122,123}
tNpcGossip[25857]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25857]["Text1-3"] = {131,132,133}
tNpcGossip[25857]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25857]["Text10-1"] = {1011,1012,1013,1014}
tNpcGossip[25857]["tOption10-1"] = {1011}
tNpcGossip[25857]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4325"
-- 10-10
tNpcGossip[25857]["Text10-10"] = {10101,10102,10103}
tNpcGossip[25857]["tOption10-10"] = {10101}
tNpcGossip[25857]["OptionFunc10101"] = "NinjaQuest_NpcFind</N>4340"
-- 10-11
tNpcGossip[25857]["Text10-11"] = {10111,10112,10113}
tNpcGossip[25857]["tOption10-11"] = {10111}
tNpcGossip[25857]["OptionFunc10111"] = "NinjaQuest_NpcAcceptMain</N>4341"
-- 10-12
tNpcGossip[25857]["Text10-12"] = {10121,10122,10123}
tNpcGossip[25857]["tOption10-12"] = {10121}
tNpcGossip[25857]["OptionFunc10121"] = "NinjaQuest_NpcFind</N>4341"
-- 10-13
tNpcGossip[25857]["Text10-13"] = {10131,10132,10133}
tNpcGossip[25857]["tOption10-13"] = {10131}
tNpcGossip[25857]["OptionFunc10131"] = "NinjaQuest_NpcCompleteMain</N>4362"
-- 10-14
tNpcGossip[25857]["Text10-14"] = {10141,10142,10143}
tNpcGossip[25857]["tOption10-14"] = {10141}
tNpcGossip[25857]["OptionFunc10141"] = "NinjaQuest_NpcFind</N>4362"
-- 10-15
tNpcGossip[25857]["Text10-15"] = {10151,10152,10153,10154}
tNpcGossip[25857]["tOption10-15"] = {10151}
tNpcGossip[25857]["OptionFunc10151"] = "NinjaQuest_NpcAcceptMain</N>4363"
-- 10-16
tNpcGossip[25857]["Text10-16"] = {10161,10162,10163,10164}
tNpcGossip[25857]["tOption10-16"] = {10161}
tNpcGossip[25857]["OptionFunc10161"] = "NinjaQuest_NpcFind</N>4363"
-- 10-17
tNpcGossip[25857]["Text10-17"] = {10171,10172,10173}
tNpcGossip[25857]["tOption10-17"] = {10171}
tNpcGossip[25857]["OptionFunc10171"] = "NinjaQuest_NpcCompleteMain</N>4365"
-- 10-18
tNpcGossip[25857]["Text10-18"] = {10181,10182,10183}
tNpcGossip[25857]["tOption10-18"] = {10181}
tNpcGossip[25857]["OptionFunc10181"] = "NinjaQuest_NpcFind</N>4365"
-- 10-19
tNpcGossip[25857]["Text10-19"] = {10191,10192,10193}
tNpcGossip[25857]["tOption10-19"] = {10191}
tNpcGossip[25857]["OptionFunc10191"] = "NinjaQuest_NpcAcceptMain</N>4366"
-- 10-2
tNpcGossip[25857]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25857]["tOption10-2"] = {1021}
tNpcGossip[25857]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4325"
-- 10-20
tNpcGossip[25857]["Text10-20"] = {10201,10202,10203}
tNpcGossip[25857]["tOption10-20"] = {10201}
tNpcGossip[25857]["OptionFunc10201"] = "NinjaQuest_NpcFind</N>4366"
-- 10-21
tNpcGossip[25857]["Text10-21"] = {10211,10212,10213}
tNpcGossip[25857]["tOption10-21"] = {10211}
tNpcGossip[25857]["OptionFunc10211"] = "NinjaQuest_NpcCompleteMain</N>4367"
-- 10-22
tNpcGossip[25857]["Text10-22"] = {10221,10222,10223}
tNpcGossip[25857]["tOption10-22"] = {10221}
tNpcGossip[25857]["OptionFunc10221"] = "NinjaQuest_NpcFind</N>4367"
-- 10-23
tNpcGossip[25857]["Text10-23"] = {10231,10232,10233}
tNpcGossip[25857]["tOption10-23"] = {10231}
tNpcGossip[25857]["OptionFunc10231"] = "NinjaQuest_NpcAcceptMain</N>4368"
-- 10-24
tNpcGossip[25857]["Text10-24"] = {10241,10242,10243}
tNpcGossip[25857]["tOption10-24"] = {10241}
tNpcGossip[25857]["OptionFunc10241"] = "NinjaQuest_NpcFind</N>4368"
-- 10-25
tNpcGossip[25857]["Text10-25"] = {10251,10252,10253}
tNpcGossip[25857]["tOption10-25"] = {10251}
tNpcGossip[25857]["OptionFunc10251"] = "NinjaQuest_NpcCompleteMain</N>4368"
-- 10-26
tNpcGossip[25857]["Text10-26"] = {10261,10262,10263}
tNpcGossip[25857]["tOption10-26"] = {10261}
tNpcGossip[25857]["OptionFunc10261"] = "NinjaQuest_NpcFind</N>4368"
-- 10-27
tNpcGossip[25857]["Text10-27"] = {10271,10272,10273,10274,10275}
tNpcGossip[25857]["tOption10-27"] = {10271}
tNpcGossip[25857]["OptionFunc10271"] = "NinjaQuest_NpcAcceptMain</N>4369"
-- 10-28
tNpcGossip[25857]["Text10-28"] = {10281,10282,10283,10284}
tNpcGossip[25857]["tOption10-28"] = {10281}
tNpcGossip[25857]["OptionFunc10281"] = "NinjaQuest_NpcFind</N>4369"
-- 10-29
tNpcGossip[25857]["Text10-29"] = {10291,10292,10293,10294}
tNpcGossip[25857]["tOption10-29"] = {10291}
tNpcGossip[25857]["OptionFunc10291"] = "NinjaQuest_NpcCompleteMain</N>4369"
-- 10-3
tNpcGossip[25857]["Text10-3"] = {1031,1032,1033}
tNpcGossip[25857]["tOption10-3"] = {1031}
tNpcGossip[25857]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4326"
-- 10-30
tNpcGossip[25857]["Text10-30"] = {10301,10302,10303}
tNpcGossip[25857]["tOption10-30"] = {10301}
tNpcGossip[25857]["OptionFunc10301"] = "NinjaQuest_NpcFind</N>4369"
-- 10-4
tNpcGossip[25857]["Text10-4"] = {1041,1042,1043}
tNpcGossip[25857]["tOption10-4"] = {1041}
tNpcGossip[25857]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4326"
-- 10-5
tNpcGossip[25857]["Text10-5"] = {1051,1052,1053}
tNpcGossip[25857]["tOption10-5"] = {1051}
tNpcGossip[25857]["OptionFunc1051"] = "NinjaQuest_NpcCompleteMain</N>4339"
-- 10-6
tNpcGossip[25857]["Text10-6"] = {1061,1062,1063}
tNpcGossip[25857]["tOption10-6"] = {1061}
tNpcGossip[25857]["OptionFunc1061"] = "NinjaQuest_NpcFind</N>4339"
-- 10-7
tNpcGossip[25857]["Text10-7"] = {1071,1072,1073}
tNpcGossip[25857]["tOption10-7"] = {1071}
tNpcGossip[25857]["OptionFunc1071"] = "NinjaQuest_NpcAcceptMain</N>4340"
-- 10-8
tNpcGossip[25857]["Text10-8"] = {1081,1082,1083}
tNpcGossip[25857]["tOption10-8"] = {1081}
tNpcGossip[25857]["OptionFunc1081"] = "NinjaQuest_NpcFind</N>4340"
-- 10-9
tNpcGossip[25857]["Text10-9"] = {1091,1092,1093}
tNpcGossip[25857]["tOption10-9"] = {1091}
tNpcGossip[25857]["OptionFunc1091"] = "NinjaQuest_NpcCompleteMain</N>4340"
-- 2-1
tNpcGossip[25857]["Text2-1"] = {211,212,213}
tNpcGossip[25857]["tOption2-1"] = {211}
tNpcGossip[25857]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4324"
-- 3-1
tNpcGossip[25857]["Text3-1"] = {311,312,313}
tNpcGossip[25857]["tOption3-1"] = {311}
tNpcGossip[25857]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4324"
-- 4-1
tNpcGossip[25857]["Text4-1"] = {411,412,413}
tNpcGossip[25857]["tOption4-1"] = {411}
tNpcGossip[25857]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4370"
-- 5-1
tNpcGossip[25857]["Text5-1"] = {511,512,513}
tNpcGossip[25857]["tOption5-1"] = {511}
tNpcGossip[25857]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4370"
-- 6-1
tNpcGossip[25857]["Text6-1"] = {611,612,613}
tNpcGossip[25857]["tOption6-1"] = {611}
tNpcGossip[25857]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4370"
-- 7-1
tNpcGossip[25857]["Text7-1"] = {711,712,713}
tNpcGossip[25857]["tOption7-1"] = {711}
-- 8-1
tNpcGossip[25857]["Text8-1"] = {811,812,813,814}
tNpcGossip[25857]["tOption8-1"] = {811}
tNpcGossip[25857]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4325"
-- 9-1
tNpcGossip[25857]["Text9-1"] = {911,912,913,914}
tNpcGossip[25857]["tOption9-1"] = {911}
tNpcGossip[25857]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4325"

-- 25858,10764,259,124,儿雷也,妙木山
tNpcGossip[25858] = tNpcGossip[25858] or DefaultNpc:new{}
tNpcGossip[25858]["DialogueText"] = tNinjaQuest_Text[25858]
-- 1-1
tNpcGossip[25858]["Text1-1"] = {111,112,113}
tNpcGossip[25858]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25858]["Text1-2"] = {121,122,123}
tNpcGossip[25858]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25858]["Text1-3"] = {131,132,133}
tNpcGossip[25858]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25858]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25858]["tOption10-1"] = {1011}
tNpcGossip[25858]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4328"
-- 10-10
tNpcGossip[25858]["Text10-10"] = {10101,10102,10103}
tNpcGossip[25858]["tOption10-10"] = {10101}
tNpcGossip[25858]["OptionFunc10101"] = "NinjaQuest_NpcFind</N>4331"
-- 10-11
tNpcGossip[25858]["Text10-11"] = {10111,10112,10113}
tNpcGossip[25858]["tOption10-11"] = {10111}
tNpcGossip[25858]["OptionFunc10111"] = "NinjaQuest_NpcAcceptMain</N>4332"
-- 10-12
tNpcGossip[25858]["Text10-12"] = {10121,10122,10123}
tNpcGossip[25858]["tOption10-12"] = {10121}
tNpcGossip[25858]["OptionFunc10121"] = "NinjaQuest_NpcFind</N>4332"
-- 10-13
tNpcGossip[25858]["Text10-13"] = {10131,10132,10133}
tNpcGossip[25858]["tOption10-13"] = {10131}
tNpcGossip[25858]["OptionFunc10131"] = "NinjaQuest_NpcCompleteMain</N>4332"
-- 10-14
tNpcGossip[25858]["Text10-14"] = {10141,10142,10143}
tNpcGossip[25858]["tOption10-14"] = {10141}
tNpcGossip[25858]["OptionFunc10141"] = "NinjaQuest_NpcFind</N>4332"
-- 10-15
tNpcGossip[25858]["Text10-15"] = {10151,10152,10153,10154}
tNpcGossip[25858]["tOption10-15"] = {10151}
tNpcGossip[25858]["OptionFunc10151"] = "NinjaQuest_NpcAcceptMain</N>4333"
-- 10-16
tNpcGossip[25858]["Text10-16"] = {10161,10162,10163,10164}
tNpcGossip[25858]["tOption10-16"] = {10161}
tNpcGossip[25858]["OptionFunc10161"] = "NinjaQuest_NpcCreateInstance</N>4333"
-- 10-17
tNpcGossip[25858]["Text10-17"] = {10171,10172,10173}
tNpcGossip[25858]["tOption10-17"] = {10171}
tNpcGossip[25858]["OptionFunc10171"] = "NinjaQuest_NpcCompleteMain</N>4333"
-- 10-18
tNpcGossip[25858]["Text10-18"] = {10181,10182,10183}
tNpcGossip[25858]["tOption10-18"] = {10181}
tNpcGossip[25858]["OptionFunc10181"] = "NinjaQuest_NpcCreateInstance</N>4333"
-- 10-19
tNpcGossip[25858]["Text10-19"] = {10191,10192,10193}
tNpcGossip[25858]["tOption10-19"] = {10191}
tNpcGossip[25858]["OptionFunc10191"] = "NinjaQuest_NpcAcceptMain</N>4334"
-- 10-2
tNpcGossip[25858]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25858]["tOption10-2"] = {1021}
tNpcGossip[25858]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4328"
-- 10-20
tNpcGossip[25858]["Text10-20"] = {10201,10202,10203}
tNpcGossip[25858]["tOption10-20"] = {10201}
tNpcGossip[25858]["OptionFunc10201"] = "NinjaQuest_NpcFind</N>4334"
-- 10-21
tNpcGossip[25858]["Text10-21"] = {10211,10212,10213}
tNpcGossip[25858]["tOption10-21"] = {10211}
tNpcGossip[25858]["OptionFunc10211"] = "NinjaQuest_NpcCompleteMain</N>4334"
-- 10-22
tNpcGossip[25858]["Text10-22"] = {10221,10222,10223}
tNpcGossip[25858]["tOption10-22"] = {10221}
-- 10-23
tNpcGossip[25858]["Text10-23"] = {10231,10232,10233}
tNpcGossip[25858]["tOption10-23"] = {10231}
tNpcGossip[25858]["OptionFunc10231"] = "NinjaQuest_NpcAcceptMain</N>4395"
-- 10-24
tNpcGossip[25858]["Text10-24"] = {10241,10242,10243}
tNpcGossip[25858]["tOption10-24"] = {10241}
tNpcGossip[25858]["OptionFunc10241"] = "NinjaQuest_NpcFind</N>4395"
-- 10-25
tNpcGossip[25858]["Text10-25"] = {10251,10252,10253}
tNpcGossip[25858]["tOption10-25"] = {10251}
tNpcGossip[25858]["OptionFunc10251"] = "NinjaQuest_NpcCompleteMain</N>4395"
-- 10-26
tNpcGossip[25858]["Text10-26"] = {10261,10262,10263}
tNpcGossip[25858]["tOption10-26"] = {10261}
-- 10-27
tNpcGossip[25858]["Text10-27"] = {10271,10272,10273}
tNpcGossip[25858]["tOption10-27"] = {10271}
tNpcGossip[25858]["OptionFunc10271"] = "NinjaQuest_NpcAcceptMain</N>4335"
-- 10-28
tNpcGossip[25858]["Text10-28"] = {10281,10282,10283}
tNpcGossip[25858]["tOption10-28"] = {10281}
tNpcGossip[25858]["OptionFunc10281"] = "NinjaQuest_NpcFind</N>4335"
-- 10-29
tNpcGossip[25858]["Text10-29"] = {10291,10292,10293}
tNpcGossip[25858]["tOption10-29"] = {10291}
tNpcGossip[25858]["OptionFunc10291"] = "NinjaQuest_NpcCompleteMain</N>4335"
-- 10-3
tNpcGossip[25858]["Text10-3"] = {1031,1032,1033}
tNpcGossip[25858]["tOption10-3"] = {1031}
tNpcGossip[25858]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4392"
-- 10-30
tNpcGossip[25858]["Text10-30"] = {10301,10302,10303}
tNpcGossip[25858]["tOption10-30"] = {10301}
tNpcGossip[25858]["OptionFunc10301"] = "NinjaQuest_NpcFind</N>4335"
-- 10-31
tNpcGossip[25858]["Text10-31"] = {10311,10312,10313,10314}
tNpcGossip[25858]["tOption10-31"] = {10311}
tNpcGossip[25858]["OptionFunc10311"] = "NinjaQuest_NpcAcceptMain</N>4336"
-- 10-32
tNpcGossip[25858]["Text10-32"] = {10321,10322,10323,10324}
tNpcGossip[25858]["tOption10-32"] = {10321}
tNpcGossip[25858]["OptionFunc10321"] = "NinjaQuest_NpcFind</N>4336"
-- 10-4
tNpcGossip[25858]["Text10-4"] = {1041,1042,1043}
tNpcGossip[25858]["tOption10-4"] = {1041}
tNpcGossip[25858]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4392"
-- 10-5
tNpcGossip[25858]["Text10-5"] = {1051,1052,1053}
tNpcGossip[25858]["tOption10-5"] = {1051}
tNpcGossip[25858]["OptionFunc1051"] = "NinjaQuest_NpcCompleteMain</N>4392"
-- 10-6
tNpcGossip[25858]["Text10-6"] = {1061,1062,1063}
tNpcGossip[25858]["tOption10-6"] = {1061}
-- 10-7
tNpcGossip[25858]["Text10-7"] = {1071,1072,1073}
tNpcGossip[25858]["tOption10-7"] = {1071}
tNpcGossip[25858]["OptionFunc1071"] = "NinjaQuest_NpcAcceptMain</N>4329"
-- 10-8
tNpcGossip[25858]["Text10-8"] = {1081,1082,1083}
tNpcGossip[25858]["tOption10-8"] = {1081}
tNpcGossip[25858]["OptionFunc1081"] = "NinjaQuest_NpcFind</N>4329"
-- 10-9
tNpcGossip[25858]["Text10-9"] = {1091,1092,1093,1094}
tNpcGossip[25858]["tOption10-9"] = {1091}
tNpcGossip[25858]["OptionFunc1091"] = "NinjaQuest_NpcCompleteMain</N>4331"
-- 2-1
tNpcGossip[25858]["Text2-1"] = {211,212,213}
tNpcGossip[25858]["tOption2-1"] = {211}
tNpcGossip[25858]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4326"
-- 3-1
tNpcGossip[25858]["Text3-1"] = {311,312,313}
tNpcGossip[25858]["tOption3-1"] = {311}
-- 4-1
tNpcGossip[25858]["Text4-1"] = {411,412,413}
tNpcGossip[25858]["tOption4-1"] = {411}
tNpcGossip[25858]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4327"
-- 5-1
tNpcGossip[25858]["Text5-1"] = {511,512,513}
tNpcGossip[25858]["tOption5-1"] = {511}
tNpcGossip[25858]["OptionFunc511"] = "NinjaQuest_NpcCreateInstance</N>4327"
-- 6-1
tNpcGossip[25858]["Text6-1"] = {611,612,613}
tNpcGossip[25858]["tOption6-1"] = {611}
tNpcGossip[25858]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4327"
-- 7-1
tNpcGossip[25858]["Text7-1"] = {711,712,713}
tNpcGossip[25858]["tOption7-1"] = {711}
tNpcGossip[25858]["OptionFunc711"] = "NinjaQuest_NpcCreateInstance</N>4327"
-- 8-1
tNpcGossip[25858]["Text8-1"] = {811,812,813}
tNpcGossip[25858]["tOption8-1"] = {811}
tNpcGossip[25858]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4328"
-- 9-1
tNpcGossip[25858]["Text9-1"] = {911,912,913}
tNpcGossip[25858]["tOption9-1"] = {911}
tNpcGossip[25858]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4328"

-- 25859,1002,583,580,船夫老张,清风原
tNpcGossip[25859] = tNpcGossip[25859] or DefaultNpc:new{}
tNpcGossip[25859]["DialogueText"] = tNinjaQuest_Text[25859]
-- 1-1
tNpcGossip[25859]["Text1-1"] = {111,112,113}
tNpcGossip[25859]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25859]["Text1-2"] = {121,122,123}
tNpcGossip[25859]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25859]["Text1-3"] = {131,132,133}
tNpcGossip[25859]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25859]["Text2-1"] = {211,212,213}
tNpcGossip[25859]["tOption2-1"] = {211}
tNpcGossip[25859]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4308"
-- 3-1
tNpcGossip[25859]["Text3-1"] = {311,312,313}
tNpcGossip[25859]["tOption3-1"] = {311}
tNpcGossip[25859]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4308"
-- 4-1
tNpcGossip[25859]["Text4-1"] = {411,412,413}
tNpcGossip[25859]["tOption4-1"] = {411}
tNpcGossip[25859]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4309"
-- 5-1
tNpcGossip[25859]["Text5-1"] = {511,512,513}
tNpcGossip[25859]["tOption5-1"] = {511}
tNpcGossip[25859]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4309"
-- 6-1
tNpcGossip[25859]["Text6-1"] = {611,612,613}
tNpcGossip[25859]["tOption6-1"] = {611}
tNpcGossip[25859]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4344"
-- 7-1
tNpcGossip[25859]["Text7-1"] = {711,712,713}
tNpcGossip[25859]["tOption7-1"] = {711}
tNpcGossip[25859]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4344"
-- 8-1
tNpcGossip[25859]["Text8-1"] = {811,812,813}
tNpcGossip[25859]["tOption8-1"] = {811}
tNpcGossip[25859]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4345"
-- 9-1
tNpcGossip[25859]["Text9-1"] = {911,912,913}
tNpcGossip[25859]["tOption9-1"] = {911}
tNpcGossip[25859]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4345"

-- 25860,1002,379,591,千手真纪,清风原
tNpcGossip[25860] = tNpcGossip[25860] or DefaultNpc:new{}
tNpcGossip[25860]["DialogueText"] = tNinjaQuest_Text[25860]
-- 1-1
tNpcGossip[25860]["Text1-1"] = {111,112,113}
tNpcGossip[25860]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25860]["Text1-2"] = {121,122,123}
tNpcGossip[25860]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25860]["Text1-3"] = {131,132,133}
tNpcGossip[25860]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25860]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25860]["tOption10-1"] = {1011}
tNpcGossip[25860]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4347"
-- 10-2
tNpcGossip[25860]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25860]["tOption10-2"] = {1021}
tNpcGossip[25860]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4347"
-- 10-3
tNpcGossip[25860]["Text10-3"] = {1031,1032,1033,1034,1035}
tNpcGossip[25860]["tOption10-3"] = {1031}
tNpcGossip[25860]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4348"
-- 10-4
tNpcGossip[25860]["Text10-4"] = {1041,1042,1043,1044,1045}
tNpcGossip[25860]["tOption10-4"] = {1041}
tNpcGossip[25860]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4348"
-- 2-1
tNpcGossip[25860]["Text2-1"] = {211,212,213}
tNpcGossip[25860]["tOption2-1"] = {211}
tNpcGossip[25860]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4345"
-- 3-1
tNpcGossip[25860]["Text3-1"] = {311,312,313}
tNpcGossip[25860]["tOption3-1"] = {311}
tNpcGossip[25860]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4345"
-- 4-1
tNpcGossip[25860]["Text4-1"] = {411,412,413}
tNpcGossip[25860]["tOption4-1"] = {411}
tNpcGossip[25860]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4346"
-- 5-1
tNpcGossip[25860]["Text5-1"] = {511,512,513}
tNpcGossip[25860]["tOption5-1"] = {511}
tNpcGossip[25860]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4346"
-- 6-1
tNpcGossip[25860]["Text6-1"] = {611,612,613,614}
tNpcGossip[25860]["tOption6-1"] = {611}
tNpcGossip[25860]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4346"
-- 7-1
tNpcGossip[25860]["Text7-1"] = {711,712,713}
tNpcGossip[25860]["tOption7-1"] = {711}
tNpcGossip[25860]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4346"
-- 8-1
tNpcGossip[25860]["Text8-1"] = {811,812,813}
tNpcGossip[25860]["tOption8-1"] = {811}
tNpcGossip[25860]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4347"
-- 9-1
tNpcGossip[25860]["Text9-1"] = {911,912,913}
tNpcGossip[25860]["tOption9-1"] = {911}
tNpcGossip[25860]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4347"

-- 25861,10764,167,126,千手真纪,妙木山
tNpcGossip[25861] = tNpcGossip[25861] or DefaultNpc:new{}
tNpcGossip[25861]["DialogueText"] = tNinjaQuest_Text[25861]
-- 1-1
tNpcGossip[25861]["Text1-1"] = {111,112,113}
tNpcGossip[25861]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25861]["Text1-2"] = {121,122,123}
tNpcGossip[25861]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25861]["Text1-3"] = {131,132,133}
tNpcGossip[25861]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25861]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25861]["tOption10-1"] = {1011}
tNpcGossip[25861]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4396"
-- 10-2
tNpcGossip[25861]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25861]["tOption10-2"] = {1021}
-- 10-3
tNpcGossip[25861]["Text10-3"] = {1031,1032,1033}
tNpcGossip[25861]["tOption10-3"] = {1031}
tNpcGossip[25861]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4365"
-- 10-4
tNpcGossip[25861]["Text10-4"] = {1041,1042,1043}
tNpcGossip[25861]["tOption10-4"] = {1041}
tNpcGossip[25861]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4365"
-- 2-1
tNpcGossip[25861]["Text2-1"] = {211,212,213}
tNpcGossip[25861]["tOption2-1"] = {211}
tNpcGossip[25861]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4363"
-- 3-1
tNpcGossip[25861]["Text3-1"] = {311,312,313}
tNpcGossip[25861]["tOption3-1"] = {311}
tNpcGossip[25861]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4363"
-- 4-1
tNpcGossip[25861]["Text4-1"] = {411,412,413}
tNpcGossip[25861]["tOption4-1"] = {411}
tNpcGossip[25861]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4364"
-- 5-1
tNpcGossip[25861]["Text5-1"] = {511,512,513}
tNpcGossip[25861]["tOption5-1"] = {511}
tNpcGossip[25861]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4364"
-- 6-1
tNpcGossip[25861]["Text6-1"] = {611,612,613}
tNpcGossip[25861]["tOption6-1"] = {611}
tNpcGossip[25861]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4364"
-- 7-1
tNpcGossip[25861]["Text7-1"] = {711,712,713}
tNpcGossip[25861]["tOption7-1"] = {711}
tNpcGossip[25861]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4364"
-- 8-1
tNpcGossip[25861]["Text8-1"] = {811,812,813}
tNpcGossip[25861]["tOption8-1"] = {811}
tNpcGossip[25861]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4396"
-- 9-1
tNpcGossip[25861]["Text9-1"] = {911,912,913}
tNpcGossip[25861]["tOption9-1"] = {911}
tNpcGossip[25861]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4396"

-- 25862,1000,577,547,忍术痕迹,云门关
tNpcGossip[25862] = tNpcGossip[25862] or DefaultNpc:new{}
tNpcGossip[25862]["DialogueText"] = tNinjaQuest_Text[25862]
-- 1-1
tNpcGossip[25862]["Text1-1"] = {111,112}
tNpcGossip[25862]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25862]["Text1-2"] = {121,122}
tNpcGossip[25862]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25862]["Text1-3"] = {131,132}
tNpcGossip[25862]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25862]["Text2-1"] = {211,212}
tNpcGossip[25862]["tOption2-1"] = {211}
tNpcGossip[25862]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4349"
-- 3-1
tNpcGossip[25862]["Text3-1"] = {311,312}
tNpcGossip[25862]["tOption3-1"] = {311}
tNpcGossip[25862]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4349"
-- 4-1
tNpcGossip[25862]["Text4-1"] = {411,412}
tNpcGossip[25862]["tOption4-1"] = {411}
tNpcGossip[25862]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4350"
-- 5-1
tNpcGossip[25862]["Text5-1"] = {511,512}
tNpcGossip[25862]["tOption5-1"] = {511}
tNpcGossip[25862]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4350"

-- 25863,1000,583,528,忍术痕迹,云门关
tNpcGossip[25863] = tNpcGossip[25863] or DefaultNpc:new{}
tNpcGossip[25863]["DialogueText"] = tNinjaQuest_Text[25863]
-- 1-1
tNpcGossip[25863]["Text1-1"] = {111,112}
tNpcGossip[25863]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25863]["Text1-2"] = {121,122}
tNpcGossip[25863]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25863]["Text1-3"] = {131,132}
tNpcGossip[25863]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25863]["Text2-1"] = {211,212}
tNpcGossip[25863]["tOption2-1"] = {211}
tNpcGossip[25863]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4350"
-- 3-1
tNpcGossip[25863]["Text3-1"] = {311,312}
tNpcGossip[25863]["tOption3-1"] = {311}
tNpcGossip[25863]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4350"
-- 4-1
tNpcGossip[25863]["Text4-1"] = {411,412}
tNpcGossip[25863]["tOption4-1"] = {411}
tNpcGossip[25863]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4351"
-- 5-1
tNpcGossip[25863]["Text5-1"] = {511,512}
tNpcGossip[25863]["tOption5-1"] = {511}
tNpcGossip[25863]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4351"

-- 25864,1000,559,452,罗,云门关
tNpcGossip[25864] = tNpcGossip[25864] or DefaultNpc:new{}
tNpcGossip[25864]["DialogueText"] = tNinjaQuest_Text[25864]
-- 1-1
tNpcGossip[25864]["Text1-1"] = {111,112,113}
tNpcGossip[25864]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25864]["Text1-2"] = {121,122,123}
tNpcGossip[25864]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25864]["Text1-3"] = {131,132,133}
tNpcGossip[25864]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25864]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25864]["tOption10-1"] = {1011}
tNpcGossip[25864]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4353"
-- 10-2
tNpcGossip[25864]["Text10-2"] = {1021,1022,1023,1024,1025}
tNpcGossip[25864]["tOption10-2"] = {1021}
tNpcGossip[25864]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4353"
-- 10-3
tNpcGossip[25864]["Text10-3"] = {1031,1032,1033,1034}
tNpcGossip[25864]["tOption10-3"] = {1031}
tNpcGossip[25864]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4354"
-- 10-4
tNpcGossip[25864]["Text10-4"] = {1041,1042,1043,1044}
tNpcGossip[25864]["tOption10-4"] = {1041}
tNpcGossip[25864]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4354"
-- 2-1
tNpcGossip[25864]["Text2-1"] = {211,212,213}
tNpcGossip[25864]["tOption2-1"] = {211}
tNpcGossip[25864]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4351"
-- 3-1
tNpcGossip[25864]["Text3-1"] = {311,312,313}
tNpcGossip[25864]["tOption3-1"] = {311}
tNpcGossip[25864]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4351"
-- 4-1
tNpcGossip[25864]["Text4-1"] = {411,412,413}
tNpcGossip[25864]["tOption4-1"] = {411}
tNpcGossip[25864]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4352"
-- 5-1
tNpcGossip[25864]["Text5-1"] = {511,512,513}
tNpcGossip[25864]["tOption5-1"] = {511}
tNpcGossip[25864]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4352"
-- 6-1
tNpcGossip[25864]["Text6-1"] = {611,612,613}
tNpcGossip[25864]["tOption6-1"] = {611}
tNpcGossip[25864]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4352"
-- 7-1
tNpcGossip[25864]["Text7-1"] = {711,712,713}
tNpcGossip[25864]["tOption7-1"] = {711}
tNpcGossip[25864]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4352"
-- 8-1
tNpcGossip[25864]["Text8-1"] = {811,812,813,814,815}
tNpcGossip[25864]["tOption8-1"] = {811}
tNpcGossip[25864]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4353"
-- 9-1
tNpcGossip[25864]["Text9-1"] = {911,912,913,914,915}
tNpcGossip[25864]["tOption9-1"] = {911}
tNpcGossip[25864]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4353"

-- 25865,1011,702,509,樵夫老李,枫溪林
tNpcGossip[25865] = tNpcGossip[25865] or DefaultNpc:new{}
tNpcGossip[25865]["DialogueText"] = tNinjaQuest_Text[25865]
-- 1-1
tNpcGossip[25865]["Text1-1"] = {111,112,113}
tNpcGossip[25865]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25865]["Text1-2"] = {121,122,123}
tNpcGossip[25865]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25865]["Text1-3"] = {131,132,133}
tNpcGossip[25865]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25865]["Text2-1"] = {211,212,213}
tNpcGossip[25865]["tOption2-1"] = {211}
tNpcGossip[25865]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4354"
-- 3-1
tNpcGossip[25865]["Text3-1"] = {311,312,313}
tNpcGossip[25865]["tOption3-1"] = {311}
tNpcGossip[25865]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4354"
-- 4-1
tNpcGossip[25865]["Text4-1"] = {411,412,413}
tNpcGossip[25865]["tOption4-1"] = {411}
tNpcGossip[25865]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4355"
-- 5-1
tNpcGossip[25865]["Text5-1"] = {511,512,513}
tNpcGossip[25865]["tOption5-1"] = {511}
tNpcGossip[25865]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4355"

-- 25932,1011,763,476,艾,枫溪林
tNpcGossip[25932] = tNpcGossip[25932] or DefaultNpc:new{}
tNpcGossip[25932]["DialogueText"] = tNinjaQuest_Text[25932]
-- 1-1
tNpcGossip[25932]["Text1-1"] = {111,112,113}
tNpcGossip[25932]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25932]["Text1-2"] = {121,122,123}
tNpcGossip[25932]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25932]["Text1-3"] = {131,132,133}
tNpcGossip[25932]["tOption1-3"] = {131}
-- 10-1
tNpcGossip[25932]["Text10-1"] = {1011,1012,1013}
tNpcGossip[25932]["tOption10-1"] = {1011}
tNpcGossip[25932]["OptionFunc1011"] = "NinjaQuest_NpcCompleteMain</N>4357"
-- 10-2
tNpcGossip[25932]["Text10-2"] = {1021,1022,1023}
tNpcGossip[25932]["tOption10-2"] = {1021}
tNpcGossip[25932]["OptionFunc1021"] = "NinjaQuest_NpcFind</N>4357"
-- 10-3
tNpcGossip[25932]["Text10-3"] = {1031,1032,1033}
tNpcGossip[25932]["tOption10-3"] = {1031}
tNpcGossip[25932]["OptionFunc1031"] = "NinjaQuest_NpcAcceptMain</N>4358"
-- 10-4
tNpcGossip[25932]["Text10-4"] = {1041,1042,1043}
tNpcGossip[25932]["tOption10-4"] = {1041}
tNpcGossip[25932]["OptionFunc1041"] = "NinjaQuest_NpcFind</N>4358"
-- 2-1
tNpcGossip[25932]["Text2-1"] = {211,212,213}
tNpcGossip[25932]["tOption2-1"] = {211}
tNpcGossip[25932]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4355"
-- 3-1
tNpcGossip[25932]["Text3-1"] = {311,312,313}
tNpcGossip[25932]["tOption3-1"] = {311}
tNpcGossip[25932]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4355"
-- 4-1
tNpcGossip[25932]["Text4-1"] = {411,412,413}
tNpcGossip[25932]["tOption4-1"] = {411}
tNpcGossip[25932]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4356"
-- 5-1
tNpcGossip[25932]["Text5-1"] = {511,512,513}
tNpcGossip[25932]["tOption5-1"] = {511}
tNpcGossip[25932]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4356"
-- 6-1
tNpcGossip[25932]["Text6-1"] = {611,612,613}
tNpcGossip[25932]["tOption6-1"] = {611}
tNpcGossip[25932]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4356"
-- 7-1
tNpcGossip[25932]["Text7-1"] = {711,712,713}
tNpcGossip[25932]["tOption7-1"] = {711}
tNpcGossip[25932]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4356"
-- 8-1
tNpcGossip[25932]["Text8-1"] = {811,812,813,814,815}
tNpcGossip[25932]["tOption8-1"] = {811}
tNpcGossip[25932]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4357"
-- 9-1
tNpcGossip[25932]["Text9-1"] = {911,912,913,914,915}
tNpcGossip[25932]["tOption9-1"] = {911}
tNpcGossip[25932]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4357"

-- 25933,1015,689,679,大野木,芦花荡
tNpcGossip[25933] = tNpcGossip[25933] or DefaultNpc:new{}
tNpcGossip[25933]["DialogueText"] = tNinjaQuest_Text[25933]
-- 1-1
tNpcGossip[25933]["Text1-1"] = {111,112,113}
tNpcGossip[25933]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25933]["Text1-2"] = {121,122,123}
tNpcGossip[25933]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25933]["Text1-3"] = {131,132,133}
tNpcGossip[25933]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25933]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[25933]["tOption2-1"] = {211}
tNpcGossip[25933]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4337"
-- 3-1
tNpcGossip[25933]["Text3-1"] = {311,312,313}
tNpcGossip[25933]["tOption3-1"] = {311}
tNpcGossip[25933]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4337"
-- 4-1
tNpcGossip[25933]["Text4-1"] = {411,412,413}
tNpcGossip[25933]["tOption4-1"] = {411}
tNpcGossip[25933]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4338"
-- 5-1
tNpcGossip[25933]["Text5-1"] = {511,512,513}
tNpcGossip[25933]["tOption5-1"] = {511}
tNpcGossip[25933]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4338"
-- 6-1
tNpcGossip[25933]["Text6-1"] = {611,612,613}
tNpcGossip[25933]["tOption6-1"] = {611}
tNpcGossip[25933]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4338"
-- 7-1
tNpcGossip[25933]["Text7-1"] = {711,712,713}
tNpcGossip[25933]["tOption7-1"] = {711}
tNpcGossip[25933]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4338"
-- 8-1
tNpcGossip[25933]["Text8-1"] = {811,812,813}
tNpcGossip[25933]["tOption8-1"] = {811}
tNpcGossip[25933]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4339"
-- 9-1
tNpcGossip[25933]["Text9-1"] = {911,912,913}
tNpcGossip[25933]["tOption9-1"] = {911}
tNpcGossip[25933]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4339"

-- 25934,1020,560,692,行脚商老刘,绝情谷
tNpcGossip[25934] = tNpcGossip[25934] or DefaultNpc:new{}
tNpcGossip[25934]["DialogueText"] = tNinjaQuest_Text[25934]
-- 1-1
tNpcGossip[25934]["Text1-1"] = {111,112,113}
tNpcGossip[25934]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25934]["Text1-2"] = {121,122,123}
tNpcGossip[25934]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25934]["Text1-3"] = {131,132,133}
tNpcGossip[25934]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25934]["Text2-1"] = {211,212,213}
tNpcGossip[25934]["tOption2-1"] = {211}
tNpcGossip[25934]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4359"
-- 3-1
tNpcGossip[25934]["Text3-1"] = {311,312,313}
tNpcGossip[25934]["tOption3-1"] = {311}
tNpcGossip[25934]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4359"
-- 4-1
tNpcGossip[25934]["Text4-1"] = {411,412,413}
tNpcGossip[25934]["tOption4-1"] = {411}
tNpcGossip[25934]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4360"
-- 5-1
tNpcGossip[25934]["Text5-1"] = {511,512,513}
tNpcGossip[25934]["tOption5-1"] = {511}
tNpcGossip[25934]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4360"

-- 25935,1020,593,761,无名村民,绝情谷
tNpcGossip[25935] = tNpcGossip[25935] or DefaultNpc:new{}
tNpcGossip[25935]["DialogueText"] = tNinjaQuest_Text[25935]
-- 1-1
tNpcGossip[25935]["Text1-1"] = {111,112}
tNpcGossip[25935]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25935]["Text1-2"] = {121,122}
tNpcGossip[25935]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25935]["Text1-3"] = {131,132}
tNpcGossip[25935]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25935]["Text2-1"] = {211,212}
tNpcGossip[25935]["tOption2-1"] = {211}
tNpcGossip[25935]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4360"
-- 3-1
tNpcGossip[25935]["Text3-1"] = {311,312}
tNpcGossip[25935]["tOption3-1"] = {311}
tNpcGossip[25935]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4360"
-- 4-1
tNpcGossip[25935]["Text4-1"] = {411,412}
tNpcGossip[25935]["tOption4-1"] = {411}
tNpcGossip[25935]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4361"
-- 5-1
tNpcGossip[25935]["Text5-1"] = {511,512}
tNpcGossip[25935]["tOption5-1"] = {511}
tNpcGossip[25935]["OptionFunc511"] = "NinjaQuest_NpcCreateInstance</N>4361"

-- 25936,1020,623,730,照美冥,绝情谷
tNpcGossip[25936] = tNpcGossip[25936] or DefaultNpc:new{}
tNpcGossip[25936]["DialogueText"] = tNinjaQuest_Text[25936]
-- 1-1
tNpcGossip[25936]["Text1-1"] = {111,112,113}
tNpcGossip[25936]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[25936]["Text1-2"] = {121,122,123}
tNpcGossip[25936]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[25936]["Text1-3"] = {131,132,133}
tNpcGossip[25936]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[25936]["Text2-1"] = {211,212,213}
tNpcGossip[25936]["tOption2-1"] = {211}
tNpcGossip[25936]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4361"
-- 3-1
tNpcGossip[25936]["Text3-1"] = {311,312,313}
tNpcGossip[25936]["tOption3-1"] = {311}
tNpcGossip[25936]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4361"
-- 4-1
tNpcGossip[25936]["Text4-1"] = {411,412,413}
tNpcGossip[25936]["tOption4-1"] = {411}
tNpcGossip[25936]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4362"
-- 5-1
tNpcGossip[25936]["Text5-1"] = {511,512,513}
tNpcGossip[25936]["tOption5-1"] = {511}
tNpcGossip[25936]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4362"

-- 26012,10764,246,293,蛤蟆空,妙木山
tNpcGossip[26012] = tNpcGossip[26012] or DefaultNpc:new{}
tNpcGossip[26012]["DialogueText"] = tNinjaQuest_Text[26012]
-- 1-1
tNpcGossip[26012]["Text1-1"] = {111,112}
tNpcGossip[26012]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[26012]["Text1-2"] = {121,122}
tNpcGossip[26012]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[26012]["Text1-3"] = {131,132}
tNpcGossip[26012]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[26012]["Text2-1"] = {211,212}
tNpcGossip[26012]["tOption2-1"] = {211}
tNpcGossip[26012]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4315"
-- 3-1
tNpcGossip[26012]["Text3-1"] = {311,312}
tNpcGossip[26012]["tOption3-1"] = {311}
tNpcGossip[26012]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4315"
-- 4-1
tNpcGossip[26012]["Text4-1"] = {411,412}
tNpcGossip[26012]["tOption4-1"] = {411}
tNpcGossip[26012]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4316"
-- 5-1
tNpcGossip[26012]["Text5-1"] = {511,512}
tNpcGossip[26012]["tOption5-1"] = {511}
tNpcGossip[26012]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4316"
-- 6-1
tNpcGossip[26012]["Text6-1"] = {611,612}
tNpcGossip[26012]["tOption6-1"] = {611}
tNpcGossip[26012]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4316"
-- 7-1
tNpcGossip[26012]["Text7-1"] = {711,712}
tNpcGossip[26012]["tOption7-1"] = {711}
tNpcGossip[26012]["OptionFunc711"] = "NinjaQuest_NpcFind</N>4316"
-- 8-1
tNpcGossip[26012]["Text8-1"] = {811,812}
tNpcGossip[26012]["tOption8-1"] = {811}
tNpcGossip[26012]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4317"
-- 9-1
tNpcGossip[26012]["Text9-1"] = {911,912}
tNpcGossip[26012]["tOption9-1"] = {911}
tNpcGossip[26012]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4317"

-- 26033,10764,186,240,蛤蟆露,妙木山
tNpcGossip[26033] = tNpcGossip[26033] or DefaultNpc:new{}
tNpcGossip[26033]["DialogueText"] = tNinjaQuest_Text[26033]
-- 1-1
tNpcGossip[26033]["Text1-1"] = {111,112}
tNpcGossip[26033]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[26033]["Text1-2"] = {121,122}
tNpcGossip[26033]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[26033]["Text1-3"] = {131,132}
tNpcGossip[26033]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[26033]["Text2-1"] = {211,212,213}
tNpcGossip[26033]["tOption2-1"] = {211}
tNpcGossip[26033]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4319"
-- 3-1
tNpcGossip[26033]["Text3-1"] = {311,312}
tNpcGossip[26033]["tOption3-1"] = {311}
tNpcGossip[26033]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4319"
-- 4-1
tNpcGossip[26033]["Text4-1"] = {411,412}
tNpcGossip[26033]["tOption4-1"] = {411}
tNpcGossip[26033]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4320"
-- 5-1
tNpcGossip[26033]["Text5-1"] = {511,512}
tNpcGossip[26033]["tOption5-1"] = {511}
tNpcGossip[26033]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4320"

-- 26034,10764,249,120,蛤蟆断,妙木山
tNpcGossip[26034] = tNpcGossip[26034] or DefaultNpc:new{}
tNpcGossip[26034]["DialogueText"] = tNinjaQuest_Text[26034]
-- 1-1
tNpcGossip[26034]["Text1-1"] = {111,112}
tNpcGossip[26034]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[26034]["Text1-2"] = {121,122}
tNpcGossip[26034]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[26034]["Text1-3"] = {131,132}
tNpcGossip[26034]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[26034]["Text2-1"] = {211,212}
tNpcGossip[26034]["tOption2-1"] = {211}
tNpcGossip[26034]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4329"
-- 3-1
tNpcGossip[26034]["Text3-1"] = {311,312}
tNpcGossip[26034]["tOption3-1"] = {311}
tNpcGossip[26034]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4329"
-- 4-1
tNpcGossip[26034]["Text4-1"] = {411,412,413}
tNpcGossip[26034]["tOption4-1"] = {411}
tNpcGossip[26034]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4330"
-- 5-1
tNpcGossip[26034]["Text5-1"] = {511,512,513}
tNpcGossip[26034]["tOption5-1"] = {511}
tNpcGossip[26034]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4330"
-- 6-1
tNpcGossip[26034]["Text6-1"] = {611,612}
tNpcGossip[26034]["tOption6-1"] = {611}
tNpcGossip[26034]["OptionFunc611"] = "NinjaQuest_NpcCompleteMain</N>4330"
-- 7-1
tNpcGossip[26034]["Text7-1"] = {711,712}
tNpcGossip[26034]["tOption7-1"] = {711}
-- 8-1
tNpcGossip[26034]["Text8-1"] = {811,812}
tNpcGossip[26034]["tOption8-1"] = {811}
tNpcGossip[26034]["OptionFunc811"] = "NinjaQuest_NpcAcceptMain</N>4331"
-- 9-1
tNpcGossip[26034]["Text9-1"] = {911,912}
tNpcGossip[26034]["tOption9-1"] = {911}
tNpcGossip[26034]["OptionFunc911"] = "NinjaQuest_NpcFind</N>4331"

-- 26035,10770,62,51,千手真纪,鬼之岛
tNpcGossip[26035] = tNpcGossip[26035] or DefaultNpc:new{}
tNpcGossip[26035]["DialogueText"] = tNinjaQuest_Text[26035]
-- 1-1
tNpcGossip[26035]["Text1-1"] = {111,112,113}
tNpcGossip[26035]["tOption1-1"] = {111}
-- 1-2
tNpcGossip[26035]["Text1-2"] = {121,122,123}
tNpcGossip[26035]["tOption1-2"] = {121}
-- 1-3
tNpcGossip[26035]["Text1-3"] = {131,132,133}
tNpcGossip[26035]["tOption1-3"] = {131}
-- 2-1
tNpcGossip[26035]["Text2-1"] = {211,212,213}
tNpcGossip[26035]["tOption2-1"] = {211}
tNpcGossip[26035]["OptionFunc211"] = "NinjaQuest_NpcCompleteMain</N>4366"
-- 3-1
tNpcGossip[26035]["Text3-1"] = {311,312,313}
tNpcGossip[26035]["tOption3-1"] = {311}
tNpcGossip[26035]["OptionFunc311"] = "NinjaQuest_NpcFind</N>4366"
-- 4-1
tNpcGossip[26035]["Text4-1"] = {411,412,413}
tNpcGossip[26035]["tOption4-1"] = {411}
tNpcGossip[26035]["OptionFunc411"] = "NinjaQuest_NpcAcceptMain</N>4367"
-- 5-1
tNpcGossip[26035]["Text5-1"] = {511,512,513}
tNpcGossip[26035]["tOption5-1"] = {511}
tNpcGossip[26035]["OptionFunc511"] = "NinjaQuest_NpcFind</N>4367"

-- npc 头像
-- 5383 雾隠才藏
-- 2353 蛤蟆吉
-- 2354 蛤蟆空
-- 2355 蛤蟆卫门
-- 2356 妙木仙人
-- 2357 儿雷也
-- 2358 渔夫老张
-- 5384 千手真纪
-- 2360 忍术痕迹
-- 5385 罗
-- 2362 樵夫老李
-- 5386 艾
-- 2364 大野木
-- 2365 行脚商老刘
-- 2366 无名村民
-- 5387 照美冥
-- 2368 散落的纸张
-- 2369 速速虫
-- 2359 蛤蟆露
-- 2361 蛤蟆空
-- 2363 蛤蟆断
tNpcFace[5383] = 2886
tNpcFace[2353] = 2841
tNpcFace[2354] = 2842
tNpcFace[2355] = 2844
tNpcFace[2356] = 2846
tNpcFace[2357] = 2839
tNpcFace[2358] = 66
tNpcFace[5384] = 2847
-- tNpcFace[2360] = 
tNpcFace[5385] = 2845
tNpcFace[2362] = 65
tNpcFace[5386] = 2837
tNpcFace[2364] = 2838
tNpcFace[2365] = 49
tNpcFace[2366] = 73
tNpcFace[5387] = 2848
-- tNpcFace[2368] = 
-- tNpcFace[2369] = 
-- tNpcFace[2359] = 2843
tNpcFace[2361] = 2843
tNpcFace[2363] = 2840
