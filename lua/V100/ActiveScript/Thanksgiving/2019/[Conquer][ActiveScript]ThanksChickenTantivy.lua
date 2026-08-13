-----------------------------------------------------------------------------------------------------
--Name:		191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
--Purpose:		感恩节---活动三小鸡快跑部分
--Creator: 	洪聪敏
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------
--LOGID:12001713
--LUAINI:41597
--命名前缀：ThanksChickenTantivy_

--STC掩码:(208,88)  挑战一阶火鸡次数
--STC掩码:(208,89)  挑战二阶火鸡次数
--STC掩码:(208,90)  挑战三阶火鸡次数
--STC掩码:(208,91)  挑战四阶火鸡次数
--STC掩码:(208,92)  挑战五阶火鸡次数
--STC掩码:(208,93)  挑战六阶火鸡次数
--STC掩码:(208,94)  挑战七阶火鸡次数
--STC掩码:(208,95)  挑战八阶火鸡次数
--STC掩码:(208,96)  挑战九阶火鸡次数
--STC掩码:(208,97)  挑战十阶火鸡次数

--STC掩码:(208,98)  记录玩家挑战积分

--STC掩码:(209,14)  记录玩家是否给一阶火鸡喂药
--STC掩码:(209,15)  记录玩家是否给二阶火鸡喂药
--STC掩码:(209,16)  记录玩家是否给三阶火鸡喂药
--STC掩码:(209,17)  记录玩家是否给四阶火鸡喂药
--STC掩码:(209,18)  记录玩家是否给五阶火鸡喂药
--STC掩码:(209,19)  记录玩家是否给六阶火鸡喂药
--STC掩码:(209,20)  记录玩家是否给七阶火鸡喂药
--STC掩码:(209,21)  记录玩家是否给八阶火鸡喂药
--STC掩码:(209,22)  记录玩家是否给九阶火鸡喂药
--STC掩码:(209,23)  记录玩家是否给十阶火鸡喂药

--STC掩码:(209,30)  记录玩家是否领取第一阶段奖励
--STC掩码:(209,31)  记录玩家是否领取第二阶段奖励
--STC掩码:(209,32)  记录玩家是否领取第三阶段奖励
--STC掩码:(209,33)  记录玩家是否领取第四阶段奖励
--STC掩码:(209,34)  记录玩家是否领取第五阶段奖励

--STC掩码:(209,35)  记录玩家是否领取昨日总击杀奖励

--STC掩码:(209,52)  记录玩家是否从正气令礼包领取仙灵藤
--STC掩码:(209,53)  记录玩家是否从签到礼包领取仙灵藤
--STC掩码:(209,54)  记录玩家是否从显著功勋礼包领取仙灵藤

--STC掩码:(209,55)  记录玩家是否挑战失败领取毒鸡汤
--STC掩码:(209,56)  记录玩家打怪掉落毒鸡汤

--STC掩码:(209,57)  记录玩家首次挑战火鸡
--STC掩码:(209,58)  记录玩家首次点击NPC

--STC掩码:(210,53)  记录玩家获得火鸡终结者称号碎片数量
--STC掩码:(210,54)  记录玩家打怪掉落仙灵藤

------------------------------------------------------------------------------------------------------
	local tThanksChickenTantivy_Cont = {}
	--排行榜索引
	tThanksChickenTantivy_Cont["RankIndex"] = 25450
	--挑战道具
	tThanksChickenTantivy_Cont["ItemId"] = 3314316
	--毒鸡汤
	tThanksChickenTantivy_Cont["Poison"] = 3314317
	--副本
	tThanksChickenTantivy_Cont["MapDoc"] = 10010
	--神龙岛ID
	tThanksChickenTantivy_Cont["shenlong"] = 10137
	--主NPC
	tThanksChickenTantivy_Cont["NPC"] = 25450
	--副本
	tThanksChickenTantivy_Cont["InstanceType"] = 368
	--引导图Id
	tThanksChickenTantivy_Cont["Pic"] = 1056
	--天石价格
	tThanksChickenTantivy_Cont["EmoneyPrice"] = 27
	--任务面板TaskId
	tThanksChickenTantivy_Cont["MainTaskId"] = 4291
	--称号
	tThanksChickenTantivy_Cont["TitleType"] = 2162
	tThanksChickenTantivy_Cont["TitleId"] = 2162
	
	tThanksChickenTantivy_Cont["space"] = 3
	--水道士额外
	tThanksChickenTantivy_Cont["WaterTaoist"] = {}
	tThanksChickenTantivy_Cont["WaterTaoist"]["Status"] = {139,140}
	tThanksChickenTantivy_Cont["WaterTaoist"]["Power"] = 20000
	tThanksChickenTantivy_Cont["WaterTaoist"]["ID"] = 13
	
	--道士职业
	tThanksChickenTantivy_Cont["TaoistPro"] = {10,13,14}
	
	tThanksChickenTantivy_Cont["ClearGlobal"] = {53803,53804,53881,53882}
	tThanksChickenTantivy_Cont["Pos"] = {1,2,3,4,5}
	
	tThanksChickenTantivy_Cont["Level"] = 80
	tThanksChickenTantivy_Cont["Metempsychosis"] = 0
	tThanksChickenTantivy_Cont["CenterAline"] = {}
	tThanksChickenTantivy_Cont["CenterAline"]["Left"] = 3 
	tThanksChickenTantivy_Cont["CenterAline"]["Middle"] = 18
	tThanksChickenTantivy_Cont["CenterAline"]["Right"] = 36
	tThanksChickenTantivy_Cont["CenterAline"]["Last"] = 47
	tThanksChickenTantivy_Cont["RankAline"] = {}
	tThanksChickenTantivy_Cont["RankAline"]["Left"] = 10 
	tThanksChickenTantivy_Cont["RankAline"]["Middle"] = 40
	tThanksChickenTantivy_Cont["RankAline"]["Right"] = 70
	--虚弱火鸡对应正常ID
	tThanksChickenTantivy_Cont["WeakMonster"] = {}
	tThanksChickenTantivy_Cont["WeakMonster"][5813] = 5804
	tThanksChickenTantivy_Cont["WeakMonster"][5814] = 5805
	tThanksChickenTantivy_Cont["WeakMonster"][5815] = 5806
	tThanksChickenTantivy_Cont["WeakMonster"][5816] = 5807
	tThanksChickenTantivy_Cont["WeakMonster"][5817] = 5808
	tThanksChickenTantivy_Cont["WeakMonster"][5818] = 5809
	tThanksChickenTantivy_Cont["WeakMonster"][5819] = 5810
	tThanksChickenTantivy_Cont["WeakMonster"][5820] = 5811
	tThanksChickenTantivy_Cont["WeakMonster"][5821] = 5812
	
	--动态NPCid
	tThanksChickenTantivy_Cont["DyNpc"] = {}
	tThanksChickenTantivy_Cont["DyNpc"][25452] = 25514
	tThanksChickenTantivy_Cont["DyNpc"][25453] = 25515
	tThanksChickenTantivy_Cont["DyNpc"][25454] = 25516
	tThanksChickenTantivy_Cont["DyNpc"][25455] = 25517
	tThanksChickenTantivy_Cont["DyNpc"][25456] = 25518
	tThanksChickenTantivy_Cont["DyNpc"][25457] = 25519
	tThanksChickenTantivy_Cont["DyNpc"][25458] = 25520
	tThanksChickenTantivy_Cont["DyNpc"][25459] = 25521
	tThanksChickenTantivy_Cont["DyNpc"][25460] = 25522
	tThanksChickenTantivy_Cont["DyNpc"][25462] = 25523
	
	tThanksChickenTantivy_Cont["Action"] = {}
	tThanksChickenTantivy_Cont["Action"][25452] = 97307804
	tThanksChickenTantivy_Cont["Action"][25453] = 97307805
	tThanksChickenTantivy_Cont["Action"][25454] = 97307806
	tThanksChickenTantivy_Cont["Action"][25455] = 97307807
	tThanksChickenTantivy_Cont["Action"][25456] = 97307808
	tThanksChickenTantivy_Cont["Action"][25457] = 97307809
	tThanksChickenTantivy_Cont["Action"][25458] = 97307810
	tThanksChickenTantivy_Cont["Action"][25459] = 97307811
	tThanksChickenTantivy_Cont["Action"][25460] = 97307812
	tThanksChickenTantivy_Cont["Action"][25462] = 97307813
	
	tThanksChickenTantivy_Cont["lookface"]={}
	tThanksChickenTantivy_Cont["lookface"][25452] = 21680
	tThanksChickenTantivy_Cont["lookface"][25453] = 21690
	tThanksChickenTantivy_Cont["lookface"][25454] = 21700
	tThanksChickenTantivy_Cont["lookface"][25455] = 21710
	tThanksChickenTantivy_Cont["lookface"][25456] = 21720
	tThanksChickenTantivy_Cont["lookface"][25457] = 21730
	tThanksChickenTantivy_Cont["lookface"][25458] = 21740
	tThanksChickenTantivy_Cont["lookface"][25459] = 21750
	tThanksChickenTantivy_Cont["lookface"][25460] = 21760
	tThanksChickenTantivy_Cont["lookface"][25462] = 21770
	
	--首杀积分
	tThanksChickenTantivy_Cont["FirstKill"] = {}
	tThanksChickenTantivy_Cont["FirstKill"][5803] = 10
	tThanksChickenTantivy_Cont["FirstKill"][5804] = 20
	tThanksChickenTantivy_Cont["FirstKill"][5805] = 30
	tThanksChickenTantivy_Cont["FirstKill"][5806] = 40
	tThanksChickenTantivy_Cont["FirstKill"][5807] = 50
	tThanksChickenTantivy_Cont["FirstKill"][5808] = 60
	tThanksChickenTantivy_Cont["FirstKill"][5809] = 70
	tThanksChickenTantivy_Cont["FirstKill"][5810] = 80
	tThanksChickenTantivy_Cont["FirstKill"][5811] = 90
	tThanksChickenTantivy_Cont["FirstKill"][5812] = 100

--普通击杀积分
	tThanksChickenTantivy_Cont["CommonKill"] = {}
	tThanksChickenTantivy_Cont["CommonKill"][5803] = 1
	tThanksChickenTantivy_Cont["CommonKill"][5804] = 2
	tThanksChickenTantivy_Cont["CommonKill"][5805] = 3
	tThanksChickenTantivy_Cont["CommonKill"][5806] = 4
	tThanksChickenTantivy_Cont["CommonKill"][5807] = 5
	tThanksChickenTantivy_Cont["CommonKill"][5808] = 6
	tThanksChickenTantivy_Cont["CommonKill"][5809] = 7
	tThanksChickenTantivy_Cont["CommonKill"][5810] = 8
	tThanksChickenTantivy_Cont["CommonKill"][5811] = 9
	tThanksChickenTantivy_Cont["CommonKill"][5812] = 10


	tThanksChickenTantivy_Cont["KillGlobalId"] = {}
	tThanksChickenTantivy_Cont["KillGlobalId"][1] = {GlobalId = 53881,pos = 1}
	tThanksChickenTantivy_Cont["KillGlobalId"][2] = {GlobalId = 53881,pos = 2}
	tThanksChickenTantivy_Cont["KillGlobalId"][3] = {GlobalId = 53881,pos = 3}
	tThanksChickenTantivy_Cont["KillGlobalId"][4] = {GlobalId = 53881,pos = 4}
	tThanksChickenTantivy_Cont["KillGlobalId"][5] = {GlobalId = 53881,pos = 5}
	tThanksChickenTantivy_Cont["KillGlobalId"][6] = {GlobalId = 53882,pos = 1}
	tThanksChickenTantivy_Cont["KillGlobalId"][7] = {GlobalId = 53882,pos = 2}
	tThanksChickenTantivy_Cont["KillGlobalId"][8] = {GlobalId = 53882,pos = 3}
	tThanksChickenTantivy_Cont["KillGlobalId"][9] = {GlobalId = 53882,pos = 4}
	tThanksChickenTantivy_Cont["KillGlobalId"][10] = {GlobalId = 53882,pos =5}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"] = {}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][1] = {GlobalId = 53803,pos = 1}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][2] = {GlobalId = 53803,pos = 2}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][3] = {GlobalId = 53803,pos = 3}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][4] = {GlobalId = 53803,pos = 4}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][5] = {GlobalId = 53803,pos = 5}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][6] = {GlobalId = 53804,pos = 1}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][7] = {GlobalId = 53804,pos = 2}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][8] = {GlobalId = 53804,pos = 3}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][9] = {GlobalId = 53804,pos = 4}
	tThanksChickenTantivy_Cont["KillFirstGlobalId"][10] = {GlobalId = 53804,pos =5}
	
	
	--杀怪掉落
	tThanksChickenTantivy_Cont["MonsterGlobal"] ={}
	tThanksChickenTantivy_Cont["MonsterGlobal"]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["MonsterGlobal"]["Pos"] = 0
	tThanksChickenTantivy_Cont["MonsterGlobal"]["MaxData"] = 10
	
	
	tThanksChickenTantivy_Cont["AllGlobal"] = {}
	tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["AllGlobal"]["Pos"] = 0
	
	tThanksChickenTantivy_Cont["DayGlobal"] ={}
	tThanksChickenTantivy_Cont["DayGlobal"]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["DayGlobal"]["Pos"] = 0
	
	
	tThanksChickenTantivy_Cont["NpcGlobal"] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25452] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25452]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["NpcGlobal"][25452]["Pos"] = 1
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25453] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25453]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["NpcGlobal"][25453]["Pos"] = 2
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25454] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25454]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["NpcGlobal"][25454]["Pos"] = 3
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25455] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25455]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["NpcGlobal"][25455]["Pos"] = 4
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25456] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25456]["GlobalId"] = 53803
	tThanksChickenTantivy_Cont["NpcGlobal"][25456]["Pos"] = 5
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25457] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25457]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["NpcGlobal"][25457]["Pos"] = 1
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25458] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25458]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["NpcGlobal"][25458]["Pos"] = 2
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25459] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25459]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["NpcGlobal"][25459]["Pos"] = 3
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25460] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25460]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["NpcGlobal"][25460]["Pos"] = 4
	
	tThanksChickenTantivy_Cont["NpcGlobal"][25462] = {}
	tThanksChickenTantivy_Cont["NpcGlobal"][25462]["GlobalId"] = 53804
	tThanksChickenTantivy_Cont["NpcGlobal"][25462]["Pos"] = 5
	
	--记录NPC位置
	tThanksChickenTantivy_Cont["RecordNpc"] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25452] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25452]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["RecordNpc"][25452]["Pos"] = 1
	
	tThanksChickenTantivy_Cont["RecordNpc"][25453] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25453]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["RecordNpc"][25453]["Pos"] = 2
	
	tThanksChickenTantivy_Cont["RecordNpc"][25454] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25454]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["RecordNpc"][25454]["Pos"] = 3
	
	tThanksChickenTantivy_Cont["RecordNpc"][25455] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25455]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["RecordNpc"][25455]["Pos"] = 4
	
	tThanksChickenTantivy_Cont["RecordNpc"][25456] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25456]["GlobalId"] = 53881
	tThanksChickenTantivy_Cont["RecordNpc"][25456]["Pos"] = 5
	
	tThanksChickenTantivy_Cont["RecordNpc"][25457] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25457]["GlobalId"] = 53882
	tThanksChickenTantivy_Cont["RecordNpc"][25457]["Pos"] = 1
	
	tThanksChickenTantivy_Cont["RecordNpc"][25458] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25458]["GlobalId"] = 53882
	tThanksChickenTantivy_Cont["RecordNpc"][25458]["Pos"] = 2
	
	tThanksChickenTantivy_Cont["RecordNpc"][25459] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25459]["GlobalId"] = 53882
	tThanksChickenTantivy_Cont["RecordNpc"][25459]["Pos"] = 3
	
	tThanksChickenTantivy_Cont["RecordNpc"][25460] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25460]["GlobalId"] = 53882
	tThanksChickenTantivy_Cont["RecordNpc"][25460]["Pos"] = 4
	
	tThanksChickenTantivy_Cont["RecordNpc"][25462] = {}
	tThanksChickenTantivy_Cont["RecordNpc"][25462]["GlobalId"] = 53882
	tThanksChickenTantivy_Cont["RecordNpc"][25462]["Pos"] = 5
	
	
	
	
	
	tThanksChickenTantivy_Cont["BossInfo"] = {}
	
	--怪物刷新信息
	tThanksChickenTantivy_Cont["BossInfo"] = {}
	tThanksChickenTantivy_Cont["BossInfo"]["PosX"] = 51
	tThanksChickenTantivy_Cont["BossInfo"]["PosY"] = 43
	tThanksChickenTantivy_Cont["BossInfo"]["GenId"] = 20069
	
	tThanksChickenTantivy_Cont["BossInfo"][1] = {}
	tThanksChickenTantivy_Cont["BossInfo"][1][1] =5803
	tThanksChickenTantivy_Cont["BossInfo"][1][2] =5804
	tThanksChickenTantivy_Cont["BossInfo"][1][3] =5805
	tThanksChickenTantivy_Cont["BossInfo"][1][4] =5806
	tThanksChickenTantivy_Cont["BossInfo"][1][5] =5807
	tThanksChickenTantivy_Cont["BossInfo"][1][6] =5808
	tThanksChickenTantivy_Cont["BossInfo"][1][7] =5809
	tThanksChickenTantivy_Cont["BossInfo"][1][8] =5810
	tThanksChickenTantivy_Cont["BossInfo"][1][9] =5811
	tThanksChickenTantivy_Cont["BossInfo"][1][10] =5812
	
	tThanksChickenTantivy_Cont["BossInfo"][2] = {}
	tThanksChickenTantivy_Cont["BossInfo"][2][2] =5813
	tThanksChickenTantivy_Cont["BossInfo"][2][3] =5814
	tThanksChickenTantivy_Cont["BossInfo"][2][4] =5815
	tThanksChickenTantivy_Cont["BossInfo"][2][5] =5816
	tThanksChickenTantivy_Cont["BossInfo"][2][6] =5817
	tThanksChickenTantivy_Cont["BossInfo"][2][7] =5818
	tThanksChickenTantivy_Cont["BossInfo"][2][8] =5819
	tThanksChickenTantivy_Cont["BossInfo"][2][9] =5820
	tThanksChickenTantivy_Cont["BossInfo"][2][10] =5821
	
	--邮件数据
	tThanksChickenTantivy_Cont["Mail"] = {}
	tThanksChickenTantivy_Cont["Mail"][1] = {}
	tThanksChickenTantivy_Cont["Mail"][1]["ActionId"] = 575151
	tThanksChickenTantivy_Cont["Mail"][1]["ExistDay"] = 30
	
	--寻回奖励
	tThanksChickenTantivy_Cont["MailLogin"] = {}
	--失败
	tThanksChickenTantivy_Cont["MailLogin"][1] = {}
	tThanksChickenTantivy_Cont["MailLogin"][1]["ActionId"] = 575152
	tThanksChickenTantivy_Cont["MailLogin"][1]["ExistDay"] = 30
	--成功
	tThanksChickenTantivy_Cont["MailLogin"][2] = {}
	tThanksChickenTantivy_Cont["MailLogin"][2]["ActionId"] = 575153
	tThanksChickenTantivy_Cont["MailLogin"][2]["ExistDay"] = 30
	
	--阶段奖励积分
	tThanksChickenTantivy_Cont["PhaseScore"] = {}
	tThanksChickenTantivy_Cont["PhaseScore"][1] = 200
	tThanksChickenTantivy_Cont["PhaseScore"][2] = 500
	tThanksChickenTantivy_Cont["PhaseScore"][3] = 1000
	tThanksChickenTantivy_Cont["PhaseScore"][4] = 1500
	tThanksChickenTantivy_Cont["PhaseScore"][5] = 3000
	
	
	--火鸡挑战战力推荐
	tThanksChickenTantivy_Cont["power"] = {}
	tThanksChickenTantivy_Cont["power"][1] = 50
	tThanksChickenTantivy_Cont["power"][2] = 100
	tThanksChickenTantivy_Cont["power"][3] = 200
	tThanksChickenTantivy_Cont["power"][4] = 250
	tThanksChickenTantivy_Cont["power"][5] = 300
	tThanksChickenTantivy_Cont["power"][6] = 350
	tThanksChickenTantivy_Cont["power"][7] = 380
	tThanksChickenTantivy_Cont["power"][8] = 405
	tThanksChickenTantivy_Cont["power"][9] = 430
	tThanksChickenTantivy_Cont["power"][10] =450 
	local tThanksChickenTantivy_Stc = {}
	-- 记录玩家首次点击NPC
	tThanksChickenTantivy_Stc["FirstNpc"] = {}
	tThanksChickenTantivy_Stc["FirstNpc"]["Event"] = 209
	tThanksChickenTantivy_Stc["FirstNpc"]["Type"] = 58
	
	-- 记录玩家是否挑战失败领取毒鸡汤
	tThanksChickenTantivy_Stc["Mail"] = {}
	tThanksChickenTantivy_Stc["Mail"]["Event"] = 209
	tThanksChickenTantivy_Stc["Mail"]["Type"] = 55
	
	--玩家登陆领取前一天奖励
	tThanksChickenTantivy_Stc["Login"] = {}
	tThanksChickenTantivy_Stc["Login"]["Event"] = 209
	tThanksChickenTantivy_Stc["Login"]["Type"] = 35
	
	--玩家首次挑战火鸡
	tThanksChickenTantivy_Stc["FirstKill"] = {}
	tThanksChickenTantivy_Stc["FirstKill"]["Event"] = 209
	tThanksChickenTantivy_Stc["FirstKill"]["Type"] = 57
	
	-- 记录玩家是否挑战失败领取毒鸡汤
	tThanksChickenTantivy_Stc["Vedio"] = {}
	tThanksChickenTantivy_Stc["Vedio"]["Event"] = 210
	tThanksChickenTantivy_Stc["Vedio"]["Type"] = 55
	
	--阶段奖励掩码
	tThanksChickenTantivy_Stc[1] = {}
	tThanksChickenTantivy_Stc[1]["Event"] = 209
	tThanksChickenTantivy_Stc[1]["Type"] = 30
	tThanksChickenTantivy_Stc[1]["Data"] = 200
	
	
	tThanksChickenTantivy_Stc[2] = {}
	tThanksChickenTantivy_Stc[2]["Event"] = 209
	tThanksChickenTantivy_Stc[2]["Type"] = 31
	tThanksChickenTantivy_Stc[2]["Data"] = 500
	
	
	tThanksChickenTantivy_Stc[3] = {}
	tThanksChickenTantivy_Stc[3]["Event"] = 209
	tThanksChickenTantivy_Stc[3]["Type"] = 32
	tThanksChickenTantivy_Stc[3]["Data"] = 1000
	
	tThanksChickenTantivy_Stc[4] = {}
	tThanksChickenTantivy_Stc[4]["Event"] = 209
	tThanksChickenTantivy_Stc[4]["Type"] = 33
	tThanksChickenTantivy_Stc[4]["Data"] = 1500
	
	tThanksChickenTantivy_Stc[5] = {}
	tThanksChickenTantivy_Stc[5]["Event"] = 209
	tThanksChickenTantivy_Stc[5]["Type"] = 34
	tThanksChickenTantivy_Stc[5]["Data"] = 3000
	
	--总积分掩码
	tThanksChickenTantivy_Stc["UseScore"] = {}
	tThanksChickenTantivy_Stc["UseScore"]["Event"] = 208
	tThanksChickenTantivy_Stc["UseScore"]["Type"] = 98
	
	
	tThanksChickenTantivy_Stc[5803] = {}
	tThanksChickenTantivy_Stc[5803]["Event"] = 208
	tThanksChickenTantivy_Stc[5803]["Type"] = 88
	
	tThanksChickenTantivy_Stc[5804] = {}
	tThanksChickenTantivy_Stc[5804]["Event"] = 208
	tThanksChickenTantivy_Stc[5804]["Type"] = 89
	
	tThanksChickenTantivy_Stc[5805] = {}
	tThanksChickenTantivy_Stc[5805]["Event"] = 208
	tThanksChickenTantivy_Stc[5805]["Type"] = 90
	
	tThanksChickenTantivy_Stc[5806] = {}
	tThanksChickenTantivy_Stc[5806]["Event"] = 208
	tThanksChickenTantivy_Stc[5806]["Type"] = 91
	
	tThanksChickenTantivy_Stc[5807] = {}
	tThanksChickenTantivy_Stc[5807]["Event"] = 208
	tThanksChickenTantivy_Stc[5807]["Type"] = 92
	
	tThanksChickenTantivy_Stc[5808] = {}
	tThanksChickenTantivy_Stc[5808]["Event"] = 208
	tThanksChickenTantivy_Stc[5808]["Type"] = 93
	
	tThanksChickenTantivy_Stc[5809] = {}
	tThanksChickenTantivy_Stc[5809]["Event"] = 208
	tThanksChickenTantivy_Stc[5809]["Type"] = 94
	
	tThanksChickenTantivy_Stc[5810] = {}
	tThanksChickenTantivy_Stc[5810]["Event"] = 208
	tThanksChickenTantivy_Stc[5810]["Type"] = 95
	
	tThanksChickenTantivy_Stc[5811] = {}
	tThanksChickenTantivy_Stc[5811]["Event"] = 208
	tThanksChickenTantivy_Stc[5811]["Type"] = 96
	
	tThanksChickenTantivy_Stc[5812] = {}
	tThanksChickenTantivy_Stc[5812]["Event"] = 208
	tThanksChickenTantivy_Stc[5812]["Type"] = 97
	
	
	--喂药掩码
	tThanksChickenTantivy_Stc[25452] = {}
	tThanksChickenTantivy_Stc[25452]["Event"] = 209
	tThanksChickenTantivy_Stc[25452]["Type"] = 14
	
	tThanksChickenTantivy_Stc[25453] = {}
	tThanksChickenTantivy_Stc[25453]["Event"] = 209
	tThanksChickenTantivy_Stc[25453]["Type"] = 15
	
	tThanksChickenTantivy_Stc[25454] = {}
	tThanksChickenTantivy_Stc[25454]["Event"] = 209
	tThanksChickenTantivy_Stc[25454]["Type"] = 16
	
	tThanksChickenTantivy_Stc[25455] = {}
	tThanksChickenTantivy_Stc[25455]["Event"] = 209
	tThanksChickenTantivy_Stc[25455]["Type"] = 17
	
	tThanksChickenTantivy_Stc[25456] = {}
	tThanksChickenTantivy_Stc[25456]["Event"] = 209
	tThanksChickenTantivy_Stc[25456]["Type"] = 18
	
	tThanksChickenTantivy_Stc[25457] = {}
	tThanksChickenTantivy_Stc[25457]["Event"] = 209
	tThanksChickenTantivy_Stc[25457]["Type"] = 19
	
	tThanksChickenTantivy_Stc[25458] = {}
	tThanksChickenTantivy_Stc[25458]["Event"] = 209
	tThanksChickenTantivy_Stc[25458]["Type"] = 20
	
	tThanksChickenTantivy_Stc[25459] = {}
	tThanksChickenTantivy_Stc[25459]["Event"] = 209
	tThanksChickenTantivy_Stc[25459]["Type"] = 21
	
	tThanksChickenTantivy_Stc[25460] = {}
	tThanksChickenTantivy_Stc[25460]["Event"] = 209
	tThanksChickenTantivy_Stc[25460]["Type"] = 22
	
	tThanksChickenTantivy_Stc[25462] = {}
	tThanksChickenTantivy_Stc[25462]["Event"] = 209
	tThanksChickenTantivy_Stc[25462]["Type"] = 23
	
-- 火鸡刷新位置
local tThanksChickenTantivy_MoveNpc = {}
	tThanksChickenTantivy_MoveNpc[25452] = {}
	tThanksChickenTantivy_MoveNpc[25452][1] = {MapId=1002,Posx=558,Posy=255}
	tThanksChickenTantivy_MoveNpc[25452][2] = {MapId=1002,Posx=579,Posy=387}
	tThanksChickenTantivy_MoveNpc[25453] = {}
	tThanksChickenTantivy_MoveNpc[25453][1] = {MapId=1002,Posx=663,Posy=399}
	tThanksChickenTantivy_MoveNpc[25453][2] = {MapId=1002,Posx=554,Posy=509}
	tThanksChickenTantivy_MoveNpc[25454] = {}
	tThanksChickenTantivy_MoveNpc[25454][1] = {MapId=1002,Posx=470,Posy=657}
	tThanksChickenTantivy_MoveNpc[25454][2] = {MapId=1002,Posx=377,Posy=732}
	tThanksChickenTantivy_MoveNpc[25455] = {}
	tThanksChickenTantivy_MoveNpc[25455][1] = {MapId=1002,Posx=263,Posy=710}
	tThanksChickenTantivy_MoveNpc[25455][2] = {MapId=1002,Posx=234,Posy=611}
	tThanksChickenTantivy_MoveNpc[25456] = {}
	tThanksChickenTantivy_MoveNpc[25456][1] = {MapId=1002,Posx=117,Posy=565}
	tThanksChickenTantivy_MoveNpc[25456][2] = {MapId=1002,Posx=106,Posy=459}
	tThanksChickenTantivy_MoveNpc[25457] = {}
	tThanksChickenTantivy_MoveNpc[25457][1] = {MapId=1002,Posx=128,Posy=458}
	tThanksChickenTantivy_MoveNpc[25457][2] = {MapId=1002,Posx=140,Posy=495}
	tThanksChickenTantivy_MoveNpc[25458] = {}
	tThanksChickenTantivy_MoveNpc[25458][1] = {MapId=1002,Posx=168,Posy=583}
	tThanksChickenTantivy_MoveNpc[25458][2] = {MapId=1002,Posx=219,Posy=584}
	tThanksChickenTantivy_MoveNpc[25459] = {}
	tThanksChickenTantivy_MoveNpc[25459][1] = {MapId=1002,Posx=234,Posy=649}
	tThanksChickenTantivy_MoveNpc[25459][2] = {MapId=1002,Posx=245,Posy=715}
	tThanksChickenTantivy_MoveNpc[25460] = {}
	tThanksChickenTantivy_MoveNpc[25460][1] = {MapId=1002,Posx=269 ,Posy=719}
	tThanksChickenTantivy_MoveNpc[25460][2] = {MapId=1002,Posx=325 ,Posy=656}
	tThanksChickenTantivy_MoveNpc[25462] = {}
	tThanksChickenTantivy_MoveNpc[25462][1] = {MapId=1002,Posx=396,Posy=666}
	tThanksChickenTantivy_MoveNpc[25462][2] = {MapId=1002,Posx=466,Posy=667}
	tThanksChickenTantivy_MoveNpc["NoGif"] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25452] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25452][1] = {MapId=10479,Posx=312,Posy=556}
	tThanksChickenTantivy_MoveNpc["NoGif"][25452][2] = {MapId=10479,Posx=106,Posy=417}
	tThanksChickenTantivy_MoveNpc["NoGif"][25453] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25453][1] = {MapId=10479,Posx=192,Posy=474}
	tThanksChickenTantivy_MoveNpc["NoGif"][25453][2] = {MapId=10479,Posx=251,Posy=429}
	tThanksChickenTantivy_MoveNpc["NoGif"][25454] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25454][1] = {MapId=10479,Posx=333,Posy=466}
	tThanksChickenTantivy_MoveNpc["NoGif"][25454][2] = {MapId=10479,Posx=238,Posy=329}
	tThanksChickenTantivy_MoveNpc["NoGif"][25455] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25455][1] = {MapId=10479,Posx=324,Posy=374}
	tThanksChickenTantivy_MoveNpc["NoGif"][25455][2] = {MapId=10479,Posx=382,Posy=318}
	tThanksChickenTantivy_MoveNpc["NoGif"][25456] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25456][1] = {MapId=10479,Posx=475,Posy=370}
	tThanksChickenTantivy_MoveNpc["NoGif"][25456][2] = {MapId=10479,Posx=389,Posy=378}
	tThanksChickenTantivy_MoveNpc["NoGif"][25457] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25457][1] = {MapId=10479,Posx=340,Posy=577}
	tThanksChickenTantivy_MoveNpc["NoGif"][25457][2] = {MapId=10479,Posx=188,Posy=413}
	tThanksChickenTantivy_MoveNpc["NoGif"][25458] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25458][1] = {MapId=10479,Posx=265,Posy=479}
	tThanksChickenTantivy_MoveNpc["NoGif"][25458][2] = {MapId=10479,Posx=363,Posy=346}
	tThanksChickenTantivy_MoveNpc["NoGif"][25459] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25459][1] = {MapId=10479,Posx=221,Posy=441}
	tThanksChickenTantivy_MoveNpc["NoGif"][25459][2] = {MapId=10479,Posx=285,Posy=555}
	tThanksChickenTantivy_MoveNpc["NoGif"][25460] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25460][1] = {MapId=10479,Posx=284 ,Posy=587}
	tThanksChickenTantivy_MoveNpc["NoGif"][25460][2] = {MapId=10479,Posx=235 ,Posy=405}
	tThanksChickenTantivy_MoveNpc["NoGif"][25462] = {}
	tThanksChickenTantivy_MoveNpc["NoGif"][25462][1] = {MapId=10479,Posx=274,Posy=398}
	tThanksChickenTantivy_MoveNpc["NoGif"][25462][2] = {MapId=10479,Posx=219,Posy=326}
	
	
	local tThanksChickenTantivy_NpcId = {25451,25452,25453,25454,25455,25456,25457,25458,25459,25460,25462}
	
	
	local tThanksChickenTantivy_BackCoordinates = {}
	tThanksChickenTantivy_BackCoordinates["MapId"] = 1002
	tThanksChickenTantivy_BackCoordinates["Posx"] = 374
	tThanksChickenTantivy_BackCoordinates["Posy"] = 443
	
	tThanksChickenTantivy_BackCoordinates["NoGif"] = {}
	tThanksChickenTantivy_BackCoordinates["NoGif"]["MapId"] = 1036
	tThanksChickenTantivy_BackCoordinates["NoGif"]["Posx"] = 246
	tThanksChickenTantivy_BackCoordinates["NoGif"]["Posy"] = 238
	------------------------------------------------------------------------------------------------------
--首杀奖励:tThanksChickenTantivy_Reward["First"]
--普通击杀奖励:tThanksChickenTantivy_Reward["Common"]

local tThanksChickenTantivy_Reward = {}
	-- ===1级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][1]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"] = {}
	tThanksChickenTantivy_Reward["First"][1] = {}
	tThanksChickenTantivy_Reward["First"][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][1]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][1]["Attr"] = "0 1" -- 吃鸡之王徽章*1
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][1]["RewardItem"][2]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["First"][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][2] = {}
	-- ===2级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][2]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][2]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][1]["Attr"] = "0 2" -- 吃鸡之王徽章*2
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][2]["RewardItem"][2]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["First"][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][3] = {}
	-- ===3级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][3]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][3]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][3]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][1]["Attr"] = "0 3" -- 吃鸡之王徽章*3
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][3]["RewardItem"][2]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["First"][3]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][3]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][4] = {}
	-- ===4级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][4]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][4]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][4]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][1]["Attr"] = "0 4" -- 吃鸡之王徽章*4
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][4]["RewardItem"][2]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["First"][4]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][4]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][5] = {}
	-- ===5级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][5]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][5]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][5]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][1]["Attr"] = "0 5" -- 吃鸡之王徽章*5
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][5]["RewardItem"][2]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["First"][5]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][5]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][6] = {}
	-- ===6级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][6]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][6]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][6]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][1]["Attr"] = "0 6" -- 吃鸡之王徽章*6
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][6]["RewardItem"][2]["Attr"] = "0 2" -- 火鸡终结者称号碎片*2
	tThanksChickenTantivy_Reward["First"][6]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][6]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][7] = {}
	-- ===7级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][7]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][7]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["First"][7]["LogStep"] = "1[1]"
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][1]["Attr"] = "0 7" -- 吃鸡之王徽章*7
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][2]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][7]["RewardItem"][2]["Attr"] = "0 2" -- 火鸡终结者称号碎片*2
	tThanksChickenTantivy_Reward["First"][7]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["First"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["First"][7]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["First"][8] = {}
	-- ===8级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][8]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][8]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["First"][8]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["First"][8]["LogStep"] = " 1[1]"
	-- 火鸡首杀币-- 【必给】
	tThanksChickenTantivy_Reward["First"][8][1] = {}
	tThanksChickenTantivy_Reward["First"][8][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][8][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][8][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][8][1]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][8][1]["RewardItem"][1]["Attr"] = "0 8" -- 吃鸡之王徽章*8
	-- 火鸡终结者碎片-- 【必给】
	tThanksChickenTantivy_Reward["First"][8][2] = {}
	tThanksChickenTantivy_Reward["First"][8][2]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][8][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][8][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][8][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][8][2]["RewardItem"][1]["Attr"] = "0 2" -- 火鸡终结者称号碎片*2
	-- 3333赠点 - 5%
	tThanksChickenTantivy_Reward["First"][8][3] = {}
	tThanksChickenTantivy_Reward["First"][8][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][8][3]["ItemChance"] = 500
	tThanksChickenTantivy_Reward["First"][8][3]["RewardEMoneyMono"] = {}
	tThanksChickenTantivy_Reward["First"][8][3]["RewardEMoneyMono"]["Value"] = 3333 -- 赠点, 【需求】6666赠点
	tThanksChickenTantivy_Reward["First"][8][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01276"
	-- 【动态掩码（53920, data0）】全服限量:（5）
	tThanksChickenTantivy_Reward["First"][8][3]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["First"][8][3]["Pos"] = 0
	tThanksChickenTantivy_Reward["First"][8][3]["MaxData"] = 5
	-- 不给 - 95%
	tThanksChickenTantivy_Reward["First"][8][4] = {}
	tThanksChickenTantivy_Reward["First"][8][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][8][4]["ItemChance"] = 9500

	tThanksChickenTantivy_Reward["First"][9] = {}
	-- ===9级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][9]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][9]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["First"][9]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["First"][9]["LogStep"] = " 1[1]"
	-- 火鸡首杀币-- 【必给】
	tThanksChickenTantivy_Reward["First"][9][1] = {}
	tThanksChickenTantivy_Reward["First"][9][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][9][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][9][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][9][1]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][9][1]["RewardItem"][1]["Attr"] = "0 9" -- 吃鸡之王徽章*9
	-- 火鸡终结者碎片-- 【必给】
	tThanksChickenTantivy_Reward["First"][9][2] = {}
	tThanksChickenTantivy_Reward["First"][9][2]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][9][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][9][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][9][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["First"][9][2]["RewardItem"][1]["Attr"] = "0 2" -- 火鸡终结者称号碎片*2
	-- 6666赠点 - 5%
	tThanksChickenTantivy_Reward["First"][9][3] = {}
	tThanksChickenTantivy_Reward["First"][9][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][9][3]["ItemChance"] = 500
	tThanksChickenTantivy_Reward["First"][9][3]["RewardEMoneyMono"] = {}
	tThanksChickenTantivy_Reward["First"][9][3]["RewardEMoneyMono"]["Value"] = 6666 -- 赠点, 【需求】6666赠点
	tThanksChickenTantivy_Reward["First"][9][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01216"
	-- 【动态掩码（53920, data1）】全服限量:（3）
	tThanksChickenTantivy_Reward["First"][9][3]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["First"][9][3]["Pos"] = 1
	tThanksChickenTantivy_Reward["First"][9][3]["MaxData"] = 3
	-- 不给 - 95%
	tThanksChickenTantivy_Reward["First"][9][4] = {}
	tThanksChickenTantivy_Reward["First"][9][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][9][4]["ItemChance"] = 9500
	
	
	tThanksChickenTantivy_Reward["First"][10] = {}
	-- ===10级火鸡首杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["First"][10]
	-- ===LogStep: 1[1]
	-- ===
	tThanksChickenTantivy_Reward["First"][10]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["First"][10]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["First"][10]["LogStep"] = " 1[1]"
	-- 火鸡首杀币-- 【必给】
	tThanksChickenTantivy_Reward["First"][10][1] = {}
	tThanksChickenTantivy_Reward["First"][10][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][10][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][10][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][10][1]["RewardItem"][1]["Id"] = 3314323 -- 吃鸡之王徽章[3314323][属性:11][叠加:1000][金币:0], 【表格】火鸡首杀币
	tThanksChickenTantivy_Reward["First"][10][1]["RewardItem"][1]["Attr"] = "0 10" -- 吃鸡之王徽章*10
	-- 火鸡终结者碎片-- 【必给】
	tThanksChickenTantivy_Reward["First"][10][2] = {}
	tThanksChickenTantivy_Reward["First"][10][2]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["First"][10][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][10][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][10][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者称号碎片
	tThanksChickenTantivy_Reward["First"][10][2]["RewardItem"][1]["Attr"] = "0 3" -- 火鸡终结者称号碎片*3
	-- 8888赠点 - 5%
	tThanksChickenTantivy_Reward["First"][10][3] = {}
	tThanksChickenTantivy_Reward["First"][10][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][10][3]["ItemChance"] = 500
	tThanksChickenTantivy_Reward["First"][10][3]["RewardEMoneyMono"] = {}
	tThanksChickenTantivy_Reward["First"][10][3]["RewardEMoneyMono"]["Value"] = 8888 -- 赠点, 【需求】8888赠点
	tThanksChickenTantivy_Reward["First"][10][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01217"
	-- 【动态掩码（53920, data2）】全服限量:（1）
	tThanksChickenTantivy_Reward["First"][10][3]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["First"][10][3]["Pos"] = 2
	tThanksChickenTantivy_Reward["First"][10][3]["MaxData"] = 1
	-- 超大固化石 - 5%
	tThanksChickenTantivy_Reward["First"][10][4] = {}
	tThanksChickenTantivy_Reward["First"][10][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][10][4]["ItemChance"] = 500
	tThanksChickenTantivy_Reward["First"][10][4]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["First"][10][4]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["First"][10][4]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tThanksChickenTantivy_Reward["First"][10][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	-- 【动态掩码（53920, data3）】全服限量:（1）
	tThanksChickenTantivy_Reward["First"][10][4]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["First"][10][4]["Pos"] = 3
	tThanksChickenTantivy_Reward["First"][10][4]["MaxData"] = 1
	-- 不给 - 90%
	tThanksChickenTantivy_Reward["First"][10][5] = {}
	tThanksChickenTantivy_Reward["First"][10][5]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["First"][10][5]["ItemChance"] = 9000

	tThanksChickenTantivy_Reward["Common"] = {}
	-- ===1级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][1]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][1] = {}
	tThanksChickenTantivy_Reward["Common"][1]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][1]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][1]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][1][1] = {}
	tThanksChickenTantivy_Reward["Common"][1][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][1][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][1][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][1][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 吃鸡徽章*1
	-- 火鸡终结者碎片 - 5%
	tThanksChickenTantivy_Reward["Common"][1][2] = {}
	tThanksChickenTantivy_Reward["Common"][1][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][1][2]["ItemChance"] = 500
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][1][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][1][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][1][2]["RewardTotalData"] = 50
	-- 不给 - 95%
	tThanksChickenTantivy_Reward["Common"][1][3] = {}
	tThanksChickenTantivy_Reward["Common"][1][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][1][3]["ItemChance"] = 9500

	tThanksChickenTantivy_Reward["Common"][2] = {}
	-- ===2级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][2]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][2]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][2]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][2]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][2][1] = {}
	tThanksChickenTantivy_Reward["Common"][2][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][2][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][2][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][2][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][2][1]["RewardItem"][1]["Attr"] = "0 2" -- 吃鸡徽章*2
	-- 火鸡终结者碎片 - 10%
	tThanksChickenTantivy_Reward["Common"][2][2] = {}
	tThanksChickenTantivy_Reward["Common"][2][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][2][2]["ItemChance"] = 1000
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][2][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][2][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][2][2]["RewardTotalData"] = 50
	-- 不给 - 90%
	tThanksChickenTantivy_Reward["Common"][2][3] = {}
	tThanksChickenTantivy_Reward["Common"][2][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][2][3]["ItemChance"] = 9000

	tThanksChickenTantivy_Reward["Common"][3] = {}
	-- ===3级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][3]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][3]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][3]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][3]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][3][1] = {}
	tThanksChickenTantivy_Reward["Common"][3][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][3][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][3][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][3][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][3][1]["RewardItem"][1]["Attr"] = "0 3" -- 吃鸡徽章*3
	-- 火鸡终结者碎片 - 15%
	tThanksChickenTantivy_Reward["Common"][3][2] = {}
	tThanksChickenTantivy_Reward["Common"][3][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][3][2]["ItemChance"] = 1500
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][3][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][3][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][3][2]["RewardTotalData"] = 50
	-- 不给 - 75%
	tThanksChickenTantivy_Reward["Common"][3][3] = {}
	tThanksChickenTantivy_Reward["Common"][3][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][3][3]["ItemChance"] = 8500

	tThanksChickenTantivy_Reward["Common"][4] = {}
	-- ===4级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][4]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][4]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][4]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][4]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][4][1] = {}
	tThanksChickenTantivy_Reward["Common"][4][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][4][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][4][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][4][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][4][1]["RewardItem"][1]["Attr"] = "0 4" -- 吃鸡徽章*4
	-- 火鸡终结者碎片 - 20%
	tThanksChickenTantivy_Reward["Common"][4][2] = {}
	tThanksChickenTantivy_Reward["Common"][4][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][4][2]["ItemChance"] = 2000
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][4][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][4][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][4][2]["RewardTotalData"] = 50
	-- 不给 - 80%
	tThanksChickenTantivy_Reward["Common"][4][3] = {}
	tThanksChickenTantivy_Reward["Common"][4][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][4][3]["ItemChance"] = 8000

	tThanksChickenTantivy_Reward["Common"][5] = {}
	-- ===5级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][5]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][5]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][5]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][5]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][5][1] = {}
	tThanksChickenTantivy_Reward["Common"][5][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][5][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][5][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][5][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][5][1]["RewardItem"][1]["Attr"] = "0 5" -- 吃鸡徽章*5
	-- 火鸡终结者碎片 - 25%
	tThanksChickenTantivy_Reward["Common"][5][2] = {}
	tThanksChickenTantivy_Reward["Common"][5][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][5][2]["ItemChance"] = 2500
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][5][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][5][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][5][2]["RewardTotalData"] = 50
	-- 不给 - 75%
	tThanksChickenTantivy_Reward["Common"][5][3] = {}
	tThanksChickenTantivy_Reward["Common"][5][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][5][3]["ItemChance"] = 7500


	tThanksChickenTantivy_Reward["Common"][6] = {}
	-- ===6级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][6]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][6]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][6]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][6]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][6][1] = {}
	tThanksChickenTantivy_Reward["Common"][6][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][6][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][6][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][6][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][6][1]["RewardItem"][1]["Attr"] = "0 6" -- 吃鸡徽章*6
	-- 火鸡终结者碎片 - 30%
	tThanksChickenTantivy_Reward["Common"][6][2] = {}
	tThanksChickenTantivy_Reward["Common"][6][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][6][2]["ItemChance"] = 3000
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][6][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][6][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][6][2]["RewardTotalData"] = 50
	-- 不给 - 70%
	tThanksChickenTantivy_Reward["Common"][6][3] = {}
	tThanksChickenTantivy_Reward["Common"][6][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][6][3]["ItemChance"] = 7000


	tThanksChickenTantivy_Reward["Common"][7] = {}
	-- ===7级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][7]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][7]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][7]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][7]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][7][1] = {}
	tThanksChickenTantivy_Reward["Common"][7][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][7][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][7][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][7][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][7][1]["RewardItem"][1]["Attr"] = "0 7" -- 吃鸡徽章*7
	-- 火鸡终结者碎片 - 35%
	tThanksChickenTantivy_Reward["Common"][7][2] = {}
	tThanksChickenTantivy_Reward["Common"][7][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][7][2]["ItemChance"] = 3500
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][7][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][7][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][7][2]["RewardTotalData"] = 50
	-- 不给 - 65%
	tThanksChickenTantivy_Reward["Common"][7][3] = {}
	tThanksChickenTantivy_Reward["Common"][7][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][7][3]["ItemChance"] = 6500


	tThanksChickenTantivy_Reward["Common"][8] = {}
	-- ===8级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][8]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][8]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][8]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][8]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][8][1] = {}
	tThanksChickenTantivy_Reward["Common"][8][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][8][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][8][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][8][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][8][1]["RewardItem"][1]["Attr"] = "0 8" -- 吃鸡徽章*8
	-- 火鸡终结者碎片 - 40%
	tThanksChickenTantivy_Reward["Common"][8][2] = {}
	tThanksChickenTantivy_Reward["Common"][8][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][8][2]["ItemChance"] = 4000
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][8][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][8][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][8][2]["RewardTotalData"] = 50
	-- 不给 - 60%
	tThanksChickenTantivy_Reward["Common"][8][3] = {}
	tThanksChickenTantivy_Reward["Common"][8][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][8][3]["ItemChance"] = 6000

	tThanksChickenTantivy_Reward["Common"][9] = {}
	-- ===9级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][9]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][9]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][9]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][9]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][9][1] = {}
	tThanksChickenTantivy_Reward["Common"][9][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][9][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][9][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][9][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][9][1]["RewardItem"][1]["Attr"] = "0 9" -- 吃鸡徽章*9
	-- 火鸡终结者碎片 - 45%
	tThanksChickenTantivy_Reward["Common"][9][2] = {}
	tThanksChickenTantivy_Reward["Common"][9][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][9][2]["ItemChance"] = 4500
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][9][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][9][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][9][2]["RewardTotalData"] = 50
	-- 666赠点-- 1%
	tThanksChickenTantivy_Reward["Common"][9][3] = {}
	tThanksChickenTantivy_Reward["Common"][9][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][9][3]["ItemChance"] = 100
	tThanksChickenTantivy_Reward["Common"][9][3]["RewardEMoneyMono"] = {}
	tThanksChickenTantivy_Reward["Common"][9][3]["RewardEMoneyMono"]["Value"] = 666 -- 赠点, 【需求】666赠点
	tThanksChickenTantivy_Reward["Common"][9][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01218"
	-- 【动态掩码（53920, data4）】全服限量:（10）
	tThanksChickenTantivy_Reward["Common"][9][3]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["Common"][9][3]["Pos"] = 4
	tThanksChickenTantivy_Reward["Common"][9][3]["MaxData"] = 10
	-- 不给 - 54%
	tThanksChickenTantivy_Reward["Common"][9][4] = {}
	tThanksChickenTantivy_Reward["Common"][9][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][9][4]["ItemChance"] = 5400


	tThanksChickenTantivy_Reward["Common"][10] = {}
	-- ===10级火鸡普通击杀奖励
	-- ===索引: tThanksChickenTantivy_Reward["Common"][10]
	-- ===LogStep: 2[1]
	-- ===
	tThanksChickenTantivy_Reward["Common"][10]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Common"][10]["LogId"] = 12000400
	tThanksChickenTantivy_Reward["Common"][10]["LogStep"] = " 2[1]"
	-- 火鸡击杀币-- 【必给】
	tThanksChickenTantivy_Reward["Common"][10][1] = {}
	tThanksChickenTantivy_Reward["Common"][10][1]["RandomItemChanceType"] = 1
	tThanksChickenTantivy_Reward["Common"][10][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][10][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][10][1]["RewardItem"][1]["Id"] = 3314314 -- 吃鸡徽章[3314314][属性:11][叠加:1000][金币:0], 【表格】火鸡击杀币
	tThanksChickenTantivy_Reward["Common"][10][1]["RewardItem"][1]["Attr"] = "0 10" -- 吃鸡徽章*10
	-- 火鸡终结者碎片 - 50%
	tThanksChickenTantivy_Reward["Common"][10][2] = {}
	tThanksChickenTantivy_Reward["Common"][10][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][10][2]["ItemChance"] = 5000
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardItem"][1]["Attr"] = "0 1" -- 火鸡终结者称号碎片*1
	tThanksChickenTantivy_Reward["Common"][10][2]["EventType"] = 210
	tThanksChickenTantivy_Reward["Common"][10][2]["DataType"] = 53
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardData"] = 10
	tThanksChickenTantivy_Reward["Common"][10][2]["RewardTotalData"] = 50
	-- 888赠点 - 1%
	tThanksChickenTantivy_Reward["Common"][10][3] = {}
	tThanksChickenTantivy_Reward["Common"][10][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][10][3]["ItemChance"] = 100
	tThanksChickenTantivy_Reward["Common"][10][3]["RewardEMoneyMono"] = {}
	tThanksChickenTantivy_Reward["Common"][10][3]["RewardEMoneyMono"]["Value"] = 888 -- 赠点, 【需求】888赠点
	tThanksChickenTantivy_Reward["Common"][10][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01219"
	-- 【动态掩码（53920, data5）】全服限量:（10）
	tThanksChickenTantivy_Reward["Common"][10][3]["GlobalId"] = 53920
	tThanksChickenTantivy_Reward["Common"][10][3]["Pos"] = 5
	tThanksChickenTantivy_Reward["Common"][10][3]["MaxData"] = 10
	-- 不给 - 49%
	tThanksChickenTantivy_Reward["Common"][10][4] = {}
	tThanksChickenTantivy_Reward["Common"][10][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Common"][10][4]["ItemChance"] = 4900


	tThanksChickenTantivy_Reward[3314330] = {}
	-- ===大吉大利尊享礼包
	-- ===索引: tThanksChickenTantivy_Reward[3314330]
	-- ===删除: 3314330,1
	-- ===
	tThanksChickenTantivy_Reward[3314330]["ItemChanceSum"] = 10300
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tThanksChickenTantivy_Reward[3314330]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314330]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330]["DeleteItem"][1]["Id"] = 3314330 -- 【库】大吉大利尊享礼包[属性:11]
	tThanksChickenTantivy_Reward[3314330]["LogId"] = 12001713
	-- 赤炼石+4 - 16%
	tThanksChickenTantivy_Reward[3314330][1] = {}
	tThanksChickenTantivy_Reward[3314330][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][1]["ItemChance"] = 1600
	tThanksChickenTantivy_Reward[3314330][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314330][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tThanksChickenTantivy_Reward[3314330][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tThanksChickenTantivy_Reward[3314330][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000气力值 - 40%
	tThanksChickenTantivy_Reward[3314330][2] = {}
	tThanksChickenTantivy_Reward[3314330][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][2]["ItemChance"] = 4000
	tThanksChickenTantivy_Reward[3314330][2]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward[3314330][2]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tThanksChickenTantivy_Reward[3314330][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 10%
	tThanksChickenTantivy_Reward[3314330][3] = {}
	tThanksChickenTantivy_Reward[3314330][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][3]["ItemChance"] = 1000
	tThanksChickenTantivy_Reward[3314330][3]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314330][3]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tThanksChickenTantivy_Reward[3314330][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tThanksChickenTantivy_Reward[3314330][3]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 20%
	tThanksChickenTantivy_Reward[3314330][4] = {}
	tThanksChickenTantivy_Reward[3314330][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][4]["ItemChance"] = 2000
	tThanksChickenTantivy_Reward[3314330][4]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314330][4]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tThanksChickenTantivy_Reward[3314330][4]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹*30
	tThanksChickenTantivy_Reward[3314330][4]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 14%
	tThanksChickenTantivy_Reward[3314330][5] = {}
	tThanksChickenTantivy_Reward[3314330][5]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][5]["ItemChance"] = 1400
	tThanksChickenTantivy_Reward[3314330][5]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314330][5]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330][5]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tThanksChickenTantivy_Reward[3314330][5]["RewardItem"][1]["Attr"] = "0 15" -- 人参果*15（[错误]物品数量超10个）
	tThanksChickenTantivy_Reward[3314330][5]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天火鸡串串香外套 - 3%
	tThanksChickenTantivy_Reward[3314330][6] = {}
	tThanksChickenTantivy_Reward[3314330][6]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314330][6]["ItemChance"] = 300
	tThanksChickenTantivy_Reward[3314330][6]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314330][6]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314330][6]["RewardItem"][1]["Id"] = 3314318 -- 30天火鸡串串香外套[3314318][属性:11][叠加:1000][金币:0], 【表格】30天火鸡串串香外套
	tThanksChickenTantivy_Reward[3314330][6]["RewardItem"][1]["Attr"] = "0 1" -- 30天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314330][6]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314330][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314330][6]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314331] = {}
	-- ===小鸡快跑礼盒
	-- ===索引: tThanksChickenTantivy_Reward[3314331]
	-- ===删除: 3314331,1
	-- ===
	tThanksChickenTantivy_Reward[3314331]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tThanksChickenTantivy_Reward[3314331]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314331]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314331]["DeleteItem"][1]["Id"] = 3314331 -- 【库】小鸡快跑礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314331]["LogId"] = 12001713
	-- 赤炼石+3 - 30%
	tThanksChickenTantivy_Reward[3314331][1] = {}
	tThanksChickenTantivy_Reward[3314331][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314331][1]["ItemChance"] = 3000
	tThanksChickenTantivy_Reward[3314331][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314331][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314331][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tThanksChickenTantivy_Reward[3314331][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石*1
	tThanksChickenTantivy_Reward[3314331][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314331][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314331][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tThanksChickenTantivy_Reward[3314331][2] = {}
	tThanksChickenTantivy_Reward[3314331][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314331][2]["ItemChance"] = 2500
	tThanksChickenTantivy_Reward[3314331][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314331][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314331][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tThanksChickenTantivy_Reward[3314331][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tThanksChickenTantivy_Reward[3314331][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314331][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314331][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tThanksChickenTantivy_Reward[3314331][3] = {}
	tThanksChickenTantivy_Reward[3314331][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314331][3]["ItemChance"] = 2500
	tThanksChickenTantivy_Reward[3314331][3]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314331][3]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314331][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tThanksChickenTantivy_Reward[3314331][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tThanksChickenTantivy_Reward[3314331][3]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314331][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314331][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tThanksChickenTantivy_Reward[3314331][4] = {}
	tThanksChickenTantivy_Reward[3314331][4]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314331][4]["ItemChance"] = 2000
	tThanksChickenTantivy_Reward[3314331][4]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314331][4]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314331][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tThanksChickenTantivy_Reward[3314331][4]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tThanksChickenTantivy_Reward[3314331][4]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314331][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314331][4]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314332] = {}
	-- ===火鸡统治者礼盒
	-- ===索引: tThanksChickenTantivy_Reward[3314332]
	-- ===删除: 3314332,1
	-- ===
	tThanksChickenTantivy_Reward[3314332]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314332]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314332]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314332]["DeleteItem"][1]["Id"] = 3314332 -- 【库】火鸡统治者礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314332]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward[3314332]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tThanksChickenTantivy_Reward[3314332]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1200万能神纹精粹
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][1]["Attr"] = "0 1200 3" -- 万能神纹精粹（赠）*1200（[错误]物品数量超100个）
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][2]["Id"] = 2169255 -- 感恩小鸡灯[2169255][属性:9][叠加:0][金币:0], 【表格】365天感恩节活动佩饰
	tThanksChickenTantivy_Reward[3314332]["RewardItem"][2]["Attr"] = "0 1 0 525600 1 0 0 1" -- 365天时效(激活)的1%神佑感恩小鸡灯*1


	tThanksChickenTantivy_Reward[3314333] = {}
	-- ===火鸡征服者礼盒
	-- ===索引: tThanksChickenTantivy_Reward[3314333]
	-- ===删除: 3314333,1
	-- ===
	tThanksChickenTantivy_Reward[3314333]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314333]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314333]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314333]["DeleteItem"][1]["Id"] = 3314333 -- 【库】火鸡征服者礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314333]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward[3314333]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
	tThanksChickenTantivy_Reward[3314333]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][1]["Attr"] = "0 1000 3" -- 万能神纹精粹（赠）*1000（[错误]物品数量超100个）
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][2]["Id"] = 2169255 -- 感恩小鸡灯[2169255][属性:9][叠加:0][金币:0], 【表格】180天感恩节活动佩饰
	tThanksChickenTantivy_Reward[3314333]["RewardItem"][2]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑感恩小鸡灯*1


	tThanksChickenTantivy_Reward[3314334] = {}
	-- ===火鸡狩猎者礼盒
	-- ===索引: tThanksChickenTantivy_Reward[3314334]
	-- ===删除: 3314334,1
	-- ===
	tThanksChickenTantivy_Reward[3314334]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314334]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314334]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314334]["DeleteItem"][1]["Id"] = 3314334 -- 【库】火鸡狩猎者礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314334]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward[3314334]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tThanksChickenTantivy_Reward[3314334]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][1]["Attr"] = "0 800 3" -- 万能神纹精粹（赠）*800（[错误]物品数量超100个）
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][2]["Id"] = 2169255 -- 感恩小鸡灯[2169255][属性:9][叠加:0][金币:0], 【表格】90天感恩节活动佩饰
	tThanksChickenTantivy_Reward[3314334]["RewardItem"][2]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的1%神佑感恩小鸡灯*1


	tThanksChickenTantivy_Reward[3314335] = {}
	-- ===火鸡冒险者礼盒
	-- ===索引: tThanksChickenTantivy_Reward[3314335]
	-- ===删除: 3314335,1
	-- ===
	tThanksChickenTantivy_Reward[3314335]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314335]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314335]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314335]["DeleteItem"][1]["Id"] = 3314335 -- 【库】火鸡冒险者礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314335]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward[3314335]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tThanksChickenTantivy_Reward[3314335]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500万能神纹精粹
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][1]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500（[错误]物品数量超100个）
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][2]["Id"] = 2169255 -- 感恩小鸡灯[2169255][属性:9][叠加:0][金币:0], 【表格】90天感恩节活动佩饰
	tThanksChickenTantivy_Reward[3314335]["RewardItem"][2]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的1%神佑感恩小鸡灯*1



	tThanksChickenTantivy_Reward[3314336] = {}
	-- ===全球火鸡统治者宝箱
	-- ===索引: tThanksChickenTantivy_Reward[3314336]
	-- ===删除: 3314336,1
	-- ===
	tThanksChickenTantivy_Reward[3314336]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314336]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314336]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314336]["DeleteItem"][1]["Id"] = 3314336 -- 【库】全球火鸡统治者宝箱[属性:11]
	tThanksChickenTantivy_Reward[3314336]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][1]["Id"] = 3314319 -- 365天火鸡串串香外套[3314319][属性:11][叠加:1000][金币:0], 【表格】1年时效感恩节光效武器外套
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][1]["Attr"] = "0 1" -- 365天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][2]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][2]["Attr"] = "0 1" -- 12阶灵珠*1
	tThanksChickenTantivy_Reward[3314336]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tThanksChickenTantivy_Reward[3314336]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314336]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314336]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314337] = {}
	-- ===全球火鸡征服者宝箱
	-- ===索引: tThanksChickenTantivy_Reward[3314337]
	-- ===删除: 3314337,1
	-- ===
	tThanksChickenTantivy_Reward[3314337]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314337]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314337]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314337]["DeleteItem"][1]["Id"] = 3314337 -- 【库】全球火鸡征服者宝箱[属性:11]
	tThanksChickenTantivy_Reward[3314337]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][1]["Id"] = 3314320 -- 180天火鸡串串香外套[3314320][属性:11][叠加:1000][金币:0], 【表格】180天感恩节光效武器外套
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][1]["Attr"] = "0 1" -- 180天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][2]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][2]["Attr"] = "0 1" -- 11阶灵珠*1
	tThanksChickenTantivy_Reward[3314337]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tThanksChickenTantivy_Reward[3314337]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314337]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314337]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314338] = {}
	-- ===全球火鸡终结者宝箱
	-- ===索引: tThanksChickenTantivy_Reward[3314338]
	-- ===删除: 3314338,1
	-- ===
	tThanksChickenTantivy_Reward[3314338]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314338]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314338]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314338]["DeleteItem"][1]["Id"] = 3314338 -- 【库】全球火鸡终结者宝箱[属性:11]
	tThanksChickenTantivy_Reward[3314338]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][1]["Id"] = 3314321 -- 90天火鸡串串香外套[3314321][属性:11][叠加:1000][金币:0], 【表格】90天感恩节光效武器外套
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][1]["Attr"] = "0 1" -- 90天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][2]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][2]["Attr"] = "0 1" -- 10阶灵珠*1
	tThanksChickenTantivy_Reward[3314338]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tThanksChickenTantivy_Reward[3314338]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314338]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314338]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314339] = {}
	-- ===全球火鸡狩猎者宝箱
	-- ===索引: tThanksChickenTantivy_Reward[3314339]
	-- ===删除: 3314339,1
	-- ===
	tThanksChickenTantivy_Reward[3314339]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314339]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314339]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314339]["DeleteItem"][1]["Id"] = 3314339 -- 【库】全球火鸡狩猎者宝箱[属性:11]
	tThanksChickenTantivy_Reward[3314339]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][1]["Id"] = 3314322 -- 60天火鸡串串香外套[3314322][属性:11][叠加:1000][金币:0], 【表格】60天时效感恩节光效武器外套
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][1]["Attr"] = "0 1" -- 60天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][2]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][2]["Attr"] = "0 1" -- 9阶灵珠*1
	tThanksChickenTantivy_Reward[3314339]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tThanksChickenTantivy_Reward[3314339]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314339]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314339]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314340] = {}
	-- ===全球火鸡冒险者宝箱
	-- ===索引: tThanksChickenTantivy_Reward[3314340]
	-- ===删除: 3314340,1
	-- ===
	tThanksChickenTantivy_Reward[3314340]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314340]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314340]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314340]["DeleteItem"][1]["Id"] = 3314340 -- 【库】全球火鸡冒险者宝箱[属性:11]
	tThanksChickenTantivy_Reward[3314340]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][1]["Id"] = 3314318 -- 30天火鸡串串香外套[3314318][属性:11][叠加:1000][金币:0], 【表格】30天时效感恩节光效武器外套
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][1]["Attr"] = "0 1" -- 30天火鸡串串香外套*1
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][2] = {}
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][2]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][2]["Attr"] = "0 1" -- 8阶灵珠*1
	tThanksChickenTantivy_Reward[3314340]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tThanksChickenTantivy_Reward[3314340]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314340]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314340]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314318] = {}
	-- ===30天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314318][1]
	-- ===删除: 3314318,1
	-- ===
	tThanksChickenTantivy_Reward[3314318][1] = {}
	tThanksChickenTantivy_Reward[3314318][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314318][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314318][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314318][1]["DeleteItem"][1]["Id"] = 3314318 -- 【库】30天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314318][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314318][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314318][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314318][1]["RewardItem"][1]["Attr"] = "0 2 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314318][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314318][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314318][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314318][2] = {}
	-- ===30天火鸡串串香外套长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314318][2]
	-- ===删除: 3314318,1
	-- ===
	tThanksChickenTantivy_Reward[3314318][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314318][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314318][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314318][2]["DeleteItem"][1]["Id"] = 3314318 -- 【库】30天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314318][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314318][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314318][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314318][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314318][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314318][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314318][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314319] = {}
	-- ===365天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314319][1]
	-- ===删除: 3314319,1
	-- ===
	tThanksChickenTantivy_Reward[3314319][1] = {}
	tThanksChickenTantivy_Reward[3314319][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314319][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314319][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314319][1]["DeleteItem"][1]["Id"] = 3314319 -- 【库】365天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314319][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314319][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314319][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314319][1]["RewardItem"][1]["Attr"] = "0 2 3 525600 1 0 0 1" -- 365天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314319][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314319][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314319][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314319][2] = {}
	-- ===365天火鸡串串香外套长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314319][2]
	-- ===删除: 3314319,1
	-- ===
	tThanksChickenTantivy_Reward[3314319][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314319][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314319][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314319][2]["DeleteItem"][1]["Id"] = 3314319 -- 【库】365天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314319][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314319][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314319][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314319][2]["RewardItem"][1]["Attr"] = "0 1 3 525600 1 0 0 1" -- 365天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314319][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314319][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314319][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314320] = {}
	-- ===180天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314320][1]
	-- ===删除: 3314320,1
	-- ===
	tThanksChickenTantivy_Reward[3314320][1] = {}
	tThanksChickenTantivy_Reward[3314320][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314320][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314320][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314320][1]["DeleteItem"][1]["Id"] = 3314320 -- 【库】180天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314320][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314320][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314320][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314320][1]["RewardItem"][1]["Attr"] = "0 2 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314320][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314320][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314320][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314320][2] = {}
	-- ===180天火鸡串串香外套长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314320][2]
	-- ===删除: 3314320,1
	-- ===
	tThanksChickenTantivy_Reward[3314320][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314320][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314320][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314320][2]["DeleteItem"][1]["Id"] = 3314320 -- 【库】180天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314320][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314320][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314320][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314320][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314320][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314320][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314320][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314321] = {}
	-- ===90天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314321][1]
	-- ===删除: 3314321,1
	-- ===
	tThanksChickenTantivy_Reward[3314321][1] = {}
	tThanksChickenTantivy_Reward[3314321][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314321][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314321][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314321][1]["DeleteItem"][1]["Id"] = 3314321 -- 【库】180天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314321][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314321][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314321][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314321][1]["RewardItem"][1]["Attr"] = "0 2 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314321][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314321][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314321][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314321][2] = {}
	-- ===90天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314321][2]
	-- ===删除: 3314321,1
	-- ===
	tThanksChickenTantivy_Reward[3314321][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314321][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314321][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314321][2]["DeleteItem"][1]["Id"] = 3314321 -- 【库】180天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314321][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314321][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314321][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314321][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314321][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314321][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314321][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314322] = {}
	-- ===60天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314322][1]
	-- ===删除: 3314322,1
	-- ===
	tThanksChickenTantivy_Reward[3314322][1] = {}
	tThanksChickenTantivy_Reward[3314322][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314322][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314322][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314322][1]["DeleteItem"][1]["Id"] = 3314322 -- 【库】60天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314322][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314322][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314322][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314322][1]["RewardItem"][1]["Attr"] = "0 2 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314322][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314322][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314322][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314322][2] = {}
	-- ===60天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314322][2]
	-- ===删除: 3314322,1
	-- ===
	tThanksChickenTantivy_Reward[3314322][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314322][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314322][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314322][2]["DeleteItem"][1]["Id"] = 3314322 -- 【库】60天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314322][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314322][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314322][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314322][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314322][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314322][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314322][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314324] = {}
	-- ===1天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314324][1]
	-- ===删除: 3314324,1
	-- ===
	tThanksChickenTantivy_Reward[3314324][1] = {}
	tThanksChickenTantivy_Reward[3314324][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314324][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314324][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314324][1]["DeleteItem"][1]["Id"] = 3314324 -- 【库】60天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314324][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314324][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314324][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314324][1]["RewardItem"][1]["Attr"] = "0 2 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314324][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314324][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314324][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314324][2] = {}
	-- ===1天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314324][2]
	-- ===删除: 3314324,1
	-- ===
	tThanksChickenTantivy_Reward[3314324][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314324][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314324][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314324][2]["DeleteItem"][1]["Id"] = 3314324 -- 【库】60天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314324][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314324][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314324][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314324][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314324][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314324][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314324][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314325] = {}
	-- ===3天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314325][1]
	-- ===删除: 3314325,1
	-- ===
	tThanksChickenTantivy_Reward[3314325][1] = {}
	tThanksChickenTantivy_Reward[3314325][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314325][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314325][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314325][1]["DeleteItem"][1]["Id"] = 3314325 -- 【库】3天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314325][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314325][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314325][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314325][1]["RewardItem"][1]["Attr"] = "0 2 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314325][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314325][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314325][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314325][2] = {}
	-- ===3天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314325][2]
	-- ===删除: 3314325,1
	-- ===
	tThanksChickenTantivy_Reward[3314325][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314325][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314325][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314325][2]["DeleteItem"][1]["Id"] = 3314325 -- 【库】3天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314325][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314325][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314325][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314325][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314325][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314325][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314325][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314326] = {}
	-- ===5天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314326][1]
	-- ===删除: 3314326,1
	-- ===
	tThanksChickenTantivy_Reward[3314326][1] = {}
	tThanksChickenTantivy_Reward[3314326][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314326][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314326][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314326][1]["DeleteItem"][1]["Id"] = 3314326 -- 【库】5天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314326][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314326][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314326][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314326][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1 0 0 1" -- 5天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314326][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314326][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314326][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314326][2] = {}
	-- ===5天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314326][2]
	-- ===删除: 3314326,1
	-- ===
	tThanksChickenTantivy_Reward[3314326][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314326][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314326][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314326][2]["DeleteItem"][1]["Id"] = 3314326 -- 【库】5天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314326][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314326][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314326][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314326][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1 0 0 1" -- 5天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314326][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314326][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314326][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314327] = {}
	-- ===7天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314327][1]
	-- ===删除: 3314327,1
	-- ===
	tThanksChickenTantivy_Reward[3314327][1] = {}
	tThanksChickenTantivy_Reward[3314327][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314327][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314327][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314327][1]["DeleteItem"][1]["Id"] = 3314327 -- 【库】7天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314327][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314327][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314327][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314327][1]["RewardItem"][1]["Attr"] = "0 2 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314327][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314327][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314327][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314327][2] = {}
	-- ===7天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314327][2]
	-- ===删除: 3314327,1
	-- ===
	tThanksChickenTantivy_Reward[3314327][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314327][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314327][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314327][2]["DeleteItem"][1]["Id"] = 3314327 -- 【库】7天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314327][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314327][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314327][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314327][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314327][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314327][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314327][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314328] = {}
	-- ===10天火鸡串串香外套（短武）
	-- ===索引: tThanksChickenTantivy_Reward[3314328][1]
	-- ===删除: 3314328,1
	-- ===
	tThanksChickenTantivy_Reward[3314328][1] = {}
	tThanksChickenTantivy_Reward[3314328][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314328][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314328][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314328][1]["DeleteItem"][1]["Id"] = 3314328 -- 【库】7天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314328][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314328][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314328][1]["RewardItem"][1]["Id"] = 360050 -- 火鸡串串香[360050][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314328][1]["RewardItem"][1]["Attr"] = "0 2 3 14400 1 0 0 1" -- 10天时效(激活)的1%神佑火鸡串串香（赠）*2
	tThanksChickenTantivy_Reward[3314328][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314328][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314328][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward[3314328][2] = {}
	-- ===10天火鸡串串香外套（长武）
	-- ===索引: tThanksChickenTantivy_Reward[3314328][2]
	-- ===删除: 3314328,1
	-- ===
	tThanksChickenTantivy_Reward[3314328][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314328][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314328][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314328][2]["DeleteItem"][1]["Id"] = 3314328 -- 【库】7天火鸡串串香外套[属性:11]
	tThanksChickenTantivy_Reward[3314328][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314328][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314328][2]["RewardItem"][1]["Id"] = 350170 -- 火鸡串串香[350170][属性:0][叠加:0][金币:0], 【表格】火鸡串串香外套
	tThanksChickenTantivy_Reward[3314328][2]["RewardItem"][1]["Attr"] = "0 1 3 14400 1 0 0 1" -- 10天时效(激活)的1%神佑火鸡串串香（赠）*1
	tThanksChickenTantivy_Reward[3314328][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314328][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314328][2]["RewardEffect"]["Effect"] = "angelwing"

	tThanksChickenTantivy_Reward[3314315] = {}
	-- ===火鸡终结者称号
	-- ===索引: tThanksChickenTantivy_Reward[3314315][1]
	-- ===删除: 3314315,50
	-- ===碎片合成
	tThanksChickenTantivy_Reward[3314315][1] = {}
	tThanksChickenTantivy_Reward[3314315][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314315][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314315][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314315][1]["DeleteItem"][1]["Id"] = 3314315 -- 【库】火鸡终结者称号碎片[属性:11]
	tThanksChickenTantivy_Reward[3314315][1]["DeleteItem"][1]["ItemNum"] = 50
	tThanksChickenTantivy_Reward[3314315][1]["RewardTitle"] = {}
	tThanksChickenTantivy_Reward[3314315][1]["RewardTitle"]["TitleType"] = 2162 -- 【库】火鸡终结者, 【表格】2小时时效称号武林至尊
	tThanksChickenTantivy_Reward[3314315][1]["RewardTitle"]["TitleId"] = 2162
	tThanksChickenTantivy_Reward[3314315][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:火鸡终结者, 【需求】2小时时效称号武林至尊
	tThanksChickenTantivy_Reward[3314315][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314315][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314315][1]["RewardEffect"]["Effect"] = "angelwing"
	
	--购买碎片
	tThanksChickenTantivy_Reward[3314315][2] = {}
	tThanksChickenTantivy_Reward[3314315][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314315][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314315][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314315][2]["RewardItem"][1]["Id"] = 3314315 -- 火鸡终结者称号碎片[3314315][属性:11][叠加:1000][金币:0], 【表格】火鸡终结者碎片
	tThanksChickenTantivy_Reward[3314315][2]["RewardItem"][1]["Attr"] = "0 %d" -- 火鸡终结者称号碎片*%d
	tThanksChickenTantivy_Reward[3314315][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314315][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314315][2]["RewardEffect"]["Effect"] = "angelwing"

	tThanksChickenTantivy_Reward[3314341] = {}
	-- ===绝版发型随机包
	-- ===索引: tThanksChickenTantivy_Reward[3314341]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward[3314341]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tThanksChickenTantivy_Reward[3314341]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314341]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314341]["DeleteItem"][1]["Id"] = 3314341 -- 【库】小鸡快跑礼盒[属性:11]
	tThanksChickenTantivy_Reward[3314341]["LogId"] = 12001713
	-- 幽游狐耳 - 25%
	tThanksChickenTantivy_Reward[3314341][1] = {}
	tThanksChickenTantivy_Reward[3314341][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314341][1]["ItemChance"] = 3000
	tThanksChickenTantivy_Reward[3314341][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314341][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314341][1]["RewardItem"][1]["Id"] = 3302451 -- 幽游狐耳交易包[3302451][属性:0][叠加:0][金币:0], 【表格】幽游狐耳
	tThanksChickenTantivy_Reward[3314341][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 幽游狐耳交易包*1
	tThanksChickenTantivy_Reward[3314341][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314341][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314341][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄狐灵耳 - 25%
	-- tThanksChickenTantivy_Reward[3314341][2] = {}
	-- tThanksChickenTantivy_Reward[3314341][2]["RandomItemChanceType"] = 2
	-- tThanksChickenTantivy_Reward[3314341][2]["ItemChance"] = 2500
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardItem"] = {}
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1] = {}
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1]["Id"] = 3314343 -- 玄狐灵耳礼包[3302767][属性:9][叠加:0][金币:0], 【表格】玄狐灵耳
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1]["Attr"] = "0 1" -- 玄狐灵耳礼包*1
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"] = {}
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 萌动喵耳 - 25%
	tThanksChickenTantivy_Reward[3314341][2] = {}
	tThanksChickenTantivy_Reward[3314341][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314341][2]["ItemChance"] = 3000
	tThanksChickenTantivy_Reward[3314341][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1]["Id"] = 3008000 -- 萌动喵耳[3008000][属性:9][叠加:0][金币:0], 【表格】萌动喵耳
	tThanksChickenTantivy_Reward[3314341][2]["RewardItem"][1]["Attr"] = "0 1" -- 萌动喵耳*1
	tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314341][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 淘气喵耳 - 25%
	tThanksChickenTantivy_Reward[3314341][3] = {}
	tThanksChickenTantivy_Reward[3314341][3]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward[3314341][3]["ItemChance"] = 4000
	tThanksChickenTantivy_Reward[3314341][3]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314341][3]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314341][3]["RewardItem"][1]["Id"] = 3007998 -- 淘气喵耳[3007998][属性:9][叠加:0][金币:0], 【表格】淘气喵耳
	tThanksChickenTantivy_Reward[3314341][3]["RewardItem"][1]["Attr"] = "0 1" -- 淘气喵耳*1
	tThanksChickenTantivy_Reward[3314341][3]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward[3314341][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward[3314341][3]["RewardEffect"]["Effect"] = "angelwing"


	-- 狐妖装礼包
	tThanksChickenTantivy_Reward[3314343] = {}
	-- 玄狐灵耳（男）
	tThanksChickenTantivy_Reward[3314343][1] = {}
	tThanksChickenTantivy_Reward[3314343][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314343][1]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314343][1]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314343][1]["DeleteItem"][1]["Id"] = 3314343
	tThanksChickenTantivy_Reward[3314343][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314343][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314343][1]["RewardItem"][1]["Id"] = 3302767
	tThanksChickenTantivy_Reward[3314343][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 玄狐灵耳（女）
	tThanksChickenTantivy_Reward[3314343][2] = {}
	tThanksChickenTantivy_Reward[3314343][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward[3314343][2]["DeleteItem"] = {}
	tThanksChickenTantivy_Reward[3314343][2]["DeleteItem"][1] = {}
	tThanksChickenTantivy_Reward[3314343][2]["DeleteItem"][1]["Id"] = 3314343
	tThanksChickenTantivy_Reward[3314343][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward[3314343][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward[3314343][2]["RewardItem"][1]["Id"] = 3302768
	tThanksChickenTantivy_Reward[3314343][2]["RewardItem"][1]["Attr"] = "0 1"


	
	
	
	tThanksChickenTantivy_Reward["Phase"] = {}
	-- ===火鸡积分达到200分
	-- ===索引: tThanksChickenTantivy_Reward["Phase"][1]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["Phase"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["Phase"][1]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward["Phase"][1]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tThanksChickenTantivy_Reward["Phase"][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Phase"][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tThanksChickenTantivy_Reward["Phase"][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石（赠）*1
	tThanksChickenTantivy_Reward["Phase"][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Phase"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Phase"][1]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["Phase"][2] = {}
	-- ===火鸡积分达到500分
	-- ===索引: tThanksChickenTantivy_Reward["Phase"][2]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["Phase"][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["Phase"][2]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward["Phase"][2]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tThanksChickenTantivy_Reward["Phase"][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Phase"][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tThanksChickenTantivy_Reward["Phase"][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tThanksChickenTantivy_Reward["Phase"][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Phase"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Phase"][2]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["Phase"][3] = {}
	-- ===火鸡积分达到1000分
	-- ===索引: tThanksChickenTantivy_Reward["Phase"][3]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["Phase"][3]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["Phase"][3]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward["Phase"][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tThanksChickenTantivy_Reward["Phase"][3]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Phase"][3]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][3]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tThanksChickenTantivy_Reward["Phase"][3]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tThanksChickenTantivy_Reward["Phase"][3]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Phase"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Phase"][3]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["Phase"][4] = {}
	-- ===火鸡积分达到1500分
	-- ===索引: tThanksChickenTantivy_Reward["Phase"][4]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["Phase"][4]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["Phase"][4]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward["Phase"][4]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tThanksChickenTantivy_Reward["Phase"][4]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Phase"][4]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][4]["RewardItem"][1]["Id"] = 3306510 -- 黄色神纹随机包[3306510][属性:0][叠加:10000][金币:0], 【表格】黄色神纹随机包
	tThanksChickenTantivy_Reward["Phase"][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹随机包（赠）*1
	tThanksChickenTantivy_Reward["Phase"][4]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Phase"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Phase"][4]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["Phase"][5] = {}
	-- ===火鸡积分达到3000分
	-- ===索引: tThanksChickenTantivy_Reward["Phase"][5]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["Phase"][5]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["Phase"][5]["RewardStrengthValue"] = {}
	tThanksChickenTantivy_Reward["Phase"][5]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tThanksChickenTantivy_Reward["Phase"][5]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Phase"][5]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Phase"][5]["RewardItem"][1]["Id"] = 3314341 -- 绝版发型随机包[3314341][属性:11][叠加:1000][金币:0], 【表格】绝版发型随机包
	tThanksChickenTantivy_Reward["Phase"][5]["RewardItem"][1]["Attr"] = "0 1" -- 绝版发型随机包*1
	tThanksChickenTantivy_Reward["Phase"][5]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Phase"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Phase"][5]["RewardEffect"]["Effect"] = "angelwing"


	tThanksChickenTantivy_Reward["DayLogin"] = {}
	tThanksChickenTantivy_Reward["DayLogin"][1] = {}
	tThanksChickenTantivy_Reward["DayLogin"][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardItem"][1]["Id"] = 3314331 -- 小鸡快跑礼盒[3314331][属性:11][叠加:1000][金币:0], 【表格】小鸡快跑礼盒
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardItem"][1]["Attr"] = "0 1" -- 小鸡快跑礼盒*1
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayLogin"][1]["RewardEffect"]["Effect"] = "angelwing"

	tThanksChickenTantivy_Reward["DayLogin"][2] = {}
	tThanksChickenTantivy_Reward["DayLogin"][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardItem"][1]["Id"] = 3314330 -- 大吉大利尊享礼包[3314331][属性:11][叠加:1000][金币:0], 【表格】大吉大利尊享礼包
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardItem"][1]["Attr"] = "0 1" -- 大吉大利尊享礼包*1
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayLogin"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
	
	tThanksChickenTantivy_Reward["DayReward"] = {}
	-- ===每日签到礼包
	-- ===索引: tThanksChickenTantivy_Reward["DayReward"][1]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["DayReward"][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][1]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["DayReward"][1]["LogStep"] = "1[2]"
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardItem"][1]["Attr"] = "0 10" -- 仙灵藤*10
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardEffect"]["Effect"] = "angelwing"
	tThanksChickenTantivy_Reward["DayReward"][1]["EventType"] = 209
	tThanksChickenTantivy_Reward["DayReward"][1]["DataType"] = 53
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardData"] = 1
	tThanksChickenTantivy_Reward["DayReward"][1]["RewardTotalData"] = 15
	
	-- ===显著功勋包
	-- ===索引: tThanksChickenTantivy_Reward["DayReward"][1]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["DayReward"][2] = {}
	tThanksChickenTantivy_Reward["DayReward"][2]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["DayReward"][2]["LogStep"] = "1[2]"
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardItem"][1]["Attr"] = "0 5" -- 仙灵藤*5
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardEffect"]["Effect"] = "angelwing"
	tThanksChickenTantivy_Reward["DayReward"][2]["EventType"] = 209
	tThanksChickenTantivy_Reward["DayReward"][2]["DataType"] = 54
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardData"] = 1
	tThanksChickenTantivy_Reward["DayReward"][2]["RewardTotalData"] = 15
	
	-- ===打怪掉落
	-- ===索引: tThanksChickenTantivy_Reward["DayReward"][3]
	tThanksChickenTantivy_Reward["DayReward"][3] = {}
	tThanksChickenTantivy_Reward["DayReward"][3]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["DayReward"][3]["LogId"] = 12001713
	-- 仙灵藤 - 1%
	tThanksChickenTantivy_Reward["DayReward"][3][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["DayReward"][3][1]["ItemChance"] = 100
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 仙灵藤*1
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardEffect"]["Effect"] = "angelwing"
	tThanksChickenTantivy_Reward["DayReward"][3][1]["EventType"] = 210
	tThanksChickenTantivy_Reward["DayReward"][3][1]["DataType"] = 54
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardData"] = 10
	tThanksChickenTantivy_Reward["DayReward"][3][1]["RewardTotalData"] = 150
	-- 不掉落 - 99%
	tThanksChickenTantivy_Reward["DayReward"][3][2] = {}
	tThanksChickenTantivy_Reward["DayReward"][3][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["DayReward"][3][2]["ItemChance"] = 9900
	
	
	-- ===打怪掉落 超过5个
	-- ===索引: tThanksChickenTantivy_Reward["DayReward"][4]
	tThanksChickenTantivy_Reward["DayReward"][4] = {}
	tThanksChickenTantivy_Reward["DayReward"][4]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["DayReward"][4]["LogId"] = 12001713
	-- 仙灵藤 - 0.5%
	tThanksChickenTantivy_Reward["DayReward"][4][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["DayReward"][4][1]["ItemChance"] = 50
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 仙灵藤*1
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardEffect"]["Effect"] = "angelwing"
	tThanksChickenTantivy_Reward["DayReward"][4][1]["EventType"] = 210
	tThanksChickenTantivy_Reward["DayReward"][4][1]["DataType"] = 54
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardData"] = 10
	tThanksChickenTantivy_Reward["DayReward"][4][1]["RewardTotalData"] = 150


	-- 不掉落 - 99.5%
	tThanksChickenTantivy_Reward["DayReward"][4][2] = {}
	tThanksChickenTantivy_Reward["DayReward"][4][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["DayReward"][4][2]["ItemChance"] = 9950
	
	
	tThanksChickenTantivy_Reward["Monster"]={}
	-- ===打怪掉落毒鸡汤
	-- ===索引: tThanksChickenTantivy_Reward["Monster"][4]
	tThanksChickenTantivy_Reward["Monster"][1] = {}
	tThanksChickenTantivy_Reward["Monster"][1]["ItemChanceSum"] = 10000
	tThanksChickenTantivy_Reward["Monster"][1]["LogId"] = 12001713
	-- 毒鸡汤 - 0.05%
	tThanksChickenTantivy_Reward["Monster"][1][1] = {}
	tThanksChickenTantivy_Reward["Monster"][1][1]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Monster"][1][1]["ItemChance"] = 50
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardItem"][1]["Id"] = 3314317 -- 毒鸡汤[3314317][属性:11][叠加:1000][金币:0], 【表格】毒鸡汤
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 毒鸡汤*1
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tThanksChickenTantivy_Reward["Monster"][1][1]["EventType"] = 209
	tThanksChickenTantivy_Reward["Monster"][1][1]["DataType"] = 56
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardDelay"] = 1
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardTimeType"] = 4
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardData"] = 1
	tThanksChickenTantivy_Reward["Monster"][1][1]["RewardTotalData"] = 15

	-- 不掉落 - 99.95%
	tThanksChickenTantivy_Reward["Monster"][1][2] = {}
	tThanksChickenTantivy_Reward["Monster"][1][2]["RandomItemChanceType"] = 2
	tThanksChickenTantivy_Reward["Monster"][1][2]["ItemChance"] = 9950
	
	
	tThanksChickenTantivy_Reward["BuyItem"] = {}
	tThanksChickenTantivy_Reward["BuyItem"]["LogId"] = 12001713
	tThanksChickenTantivy_Reward["BuyItem"]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["BuyItem"]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["BuyItem"]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tThanksChickenTantivy_Reward["BuyItem"]["RewardItem"][1]["Attr"] = "0 %d" -- 仙灵藤*5
	tThanksChickenTantivy_Reward["BuyItem"]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["BuyItem"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["BuyItem"]["RewardEffect"]["Effect"] = "angelwing"

	
	tThanksChickenTantivy_Reward["OutTime"] = {}
	-- ===火鸡令
	-- ===索引: tThanksChickenTantivy_Reward["OutTime"]
	-- ===
	-- ===
	tThanksChickenTantivy_Reward["OutTime"]["LogId"] = 12001678
	tThanksChickenTantivy_Reward["OutTime"]["RewardItem"] = {}
	tThanksChickenTantivy_Reward["OutTime"]["RewardItem"][1] = {}
	tThanksChickenTantivy_Reward["OutTime"]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:9][叠加:10000][金币:0], 【表格】年运通宝
	tThanksChickenTantivy_Reward["OutTime"]["RewardItem"][1]["Attr"] = "0 %d" -- FortuneCoin*1
	tThanksChickenTantivy_Reward["OutTime"]["RewardEffect"] = {}
	tThanksChickenTantivy_Reward["OutTime"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksChickenTantivy_Reward["OutTime"]["RewardEffect"]["Effect"] = "angelwing"

	
	
	
	
local tThanksChickenTantivy_Change = {}
-- 队伍信息表
local tThanksChickenTantivy_TeamChange = {}

--Log
local tThanksChickenTantivy_Log = {}
	--购买碎片
	tThanksChickenTantivy_Log["BuyDebris"] = "1000	01304"
	--购买仙灵藤
	tThanksChickenTantivy_Log["BuyItem"] = "1000	01305"
	
	tThanksChickenTantivy_Log["Begin"] = "0,0,0,0,12001713,2[1],0,0"
	tThanksChickenTantivy_Log["DelItem"] = "0,0,%d,%d,12001713,2[2],0,0"
	
	
---------------------------------------------------------------------------------
--上线触发
function ThanksChickenTantivy_Login()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		return
	end
	local nUserId =  Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["Login"]["Event"]
	local nType = tThanksChickenTantivy_Stc["Login"]["Type"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- local nEvent_Vedio = tThanksChickenTantivy_Stc["Vedio"]["Event"]
	-- local nType_Vedio = tThanksChickenTantivy_Stc["Vedio"]["Type"]
	-- if Task_StcInterval(nEvent_Vedio,nType_Vedio,3,4) then
		-- Task_SetStatistic(nEvent_Vedio,nType_Vedio,0,1)
		-- Task_SetStcTimestamp(nEvent_Vedio,nType_Vedio,0)
	-- end
	
	-- if Task_ChkStcValue(nEvent_Vedio,nType_Vedio,"==",0,nUserId) then
		-- if Task_SetStatistic(nEvent_Vedio,nType_Vedio,1,1,nUserId) then
			-- Task_SetStcTimestamp(nEvent_Vedio,nType_Vedio,0)
			-- 播视频
			-- User_OpenVideo(960,11)
		-- end
	-- end
		
		
	local nGlobalId_Day = tThanksChickenTantivy_Cont["DayGlobal"]["GlobalId"]
	local nPos_Day = tThanksChickenTantivy_Cont["DayGlobal"]["Pos"]
	
	local nServerData = Get_SysDynaGlobalData(nGlobalId_Day,nPos_Day)
	if nServerData >= 1 then
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			if Task_SetStatistic(nEvent,nType,1,1,nUserId) then
				Task_SetStcTimestamp(nEvent,nType,0)
				-- 发奖
				local nActionId = tThanksChickenTantivy_Cont["MailLogin"][nServerData]["ActionId"]
				local nExistDay = tThanksChickenTantivy_Cont["MailLogin"][nServerData]["ExistDay"]
				local sSender =tThanksChickenTantivy_Text["Mail"]["Login"][nServerData]["Title"] 
				local sTitle = tThanksChickenTantivy_Text["Mail"]["Login"][nServerData]["Sender"] 
				local sContent = tThanksChickenTantivy_Text["Mail"]["Login"][nServerData]["Content"]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				return
			end
		end
	end
end
--传回NPC附近
function ThanksChickenTantivy_ChgMap(nUserId)
	local nUserId =  nUserId or Get_UserId()
	-- -- 判断玩家是否是组队状态
	-- local nTeamNum = Get_UserTeamNumbers()
	-- -- 获取队长ID
	-- if nTeamNum > 1  then
		-- local nTeamId = Get_UserTeamId(nUserId)
		-- local nTeamLeaderId = tThanksChickenTantivy_TeamChange[nTeamId]
		-- if tThanksChickenTantivy_Change[nTeamLeaderId]["NpcId"] ~= nil and tThanksChickenTantivy_Change[nTeamLeaderId]["NpcId"] ~= 0 then
			-- nNpcId = tThanksChickenTantivy_Change[nTeamLeaderId]["NpcId"]
		-- else
			-- nNpcId = tThanksChickenTantivy_Cont["NPC"]
		-- end
		
	-- else
		-- if tThanksChickenTantivy_Change[nUserId]["NpcId"] ~= nil and tThanksChickenTantivy_Change[nUserId]["NpcId"] ~= 0 then
			-- nNpcId = tThanksChickenTantivy_Change[nUserId]["NpcId"]
		-- else
			-- nNpcId = tThanksChickenTantivy_Cont["NPC"]
		-- end
	-- end
	
	
	-- local nEvent = tThanksChickenTantivy_Stc["FirstNpc"]["Event"]
	-- local nType = tThanksChickenTantivy_Stc["FirstNpc"]["Type"] 
	-- if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		-- Task_AddStatistic(nEvent,nType,1,1,nUserId)
		-- nNpcId = tThanksChickenTantivy_Cont["NPC"]
	-- end
	-- User_DelAllAttribStatus(nUserId)
	-- local nStatus = 54
	-- User_DelRoleStatus(nStatus,nUserId)
	-- local nMapId = Get_NpcMapID(nNpcId) 
	-- if nMapId == 5000 then
	-- local nNpcId =tThanksChickenTantivy_Cont["NPC"]
	-- end
	local nMapId = tThanksChickenTantivy_BackCoordinates["MapId"]
	local nPosX =  tThanksChickenTantivy_BackCoordinates["Posx"]
	local nPosY =  tThanksChickenTantivy_BackCoordinates["Posy"]
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tThanksChickenTantivy_BackCoordinates["NoGif"]["MapId"]
		nPosX =  tThanksChickenTantivy_BackCoordinates["NoGif"]["Posx"] 
		nPosY =  tThanksChickenTantivy_BackCoordinates["NoGif"]["Posy"] 
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,0,nUserId)
	-- NpcPosition_PathFind(nNpcId)
end
function ThanksChickenTantivy_DroMonsterTeam(nMonsterId,nUserId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId  = nUserId or Get_UserId()
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		User_TeamExeFuncByTeamer(3,"ThanksChickenTantivy_DroMonster</N>" .. nMonsterId,nUserId)
	else
		ThanksChickenTantivy_DroMonster(nMonsterId,nUserId)
	end
end
--击败虚弱火鸡
function ThanksChickenTantivy_DroWeakMonster(nMonsterId)
	local nUserId  = Get_UserId()
	local nNewMonsterId = tThanksChickenTantivy_Cont["WeakMonster"][nMonsterId]
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		if User_IsTeamLeader(nUserId) then
			User_TeamExeFuncByTeamer(3,"ThanksChickenTantivy_DroMonsterTeam</N>" .. nNewMonsterId,nUserId)
		end
	else
		ThanksChickenTantivy_DroMonster(nNewMonsterId,nUserId)
	end
end
--击败火鸡
function ThanksChickenTantivy_DroMonster(nMonsterId,nUserId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		return
	end
	local nMapId = Get_UserMapId(nUserId)
	Monster_Death(nMonsterId,nMapId)
	--今日首次挑战火鸡掩码
	local nEvent_First = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
	local nType_First = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
	if Task_StcInterval(nEvent_First,nType_First,1,4,nUserId) then
		Task_SetStatistic(nEvent_First,nType_First,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_First,nType_First,0,nUserId)
	end
	
	
	
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	local nDelUserId = nUserId
	local nNpcId = 0
	local nTeamLeaderId = 0
	-- 获取队长ID
	if nTeamNum > 1 then
		local nTeamId = Get_UserTeamId(nUserId)
		nTeamLeaderId = tThanksChickenTantivy_TeamChange[nTeamId]
		nDelUserId = nTeamLeaderId
		nNpcId = tThanksChickenTantivy_Change[nTeamLeaderId]["NpcId"]
	else
		nNpcId = tThanksChickenTantivy_Change[nUserId]["NpcId"]
	end

	
	local sUserName = Get_UserName(nDelUserId)
	local nItemId = tThanksChickenTantivy_Cont["ItemId"]
	-- local nNpcId = tThanksChickenTantivy_Change[nUserId]["NpcId"]  or tThanksChickenTantivy_Change[nTeamLeaderId]["NpcId"]
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All)
	--判断当前是否是首杀
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	local nEvent = tThanksChickenTantivy_Stc["UseScore"]["Event"]
	local nType = tThanksChickenTantivy_Stc["UseScore"]["Type"]
	
	local nEvent_KillNum = tThanksChickenTantivy_Stc[nMonsterId]["Event"]
	local nType_KillNum = tThanksChickenTantivy_Stc[nMonsterId]["Type"]
	
	local nNeedItemNum = 0
		--还未被首杀
	if nData == 0 then
		nNeedItemNum = nServerData + 1
	else
		nNeedItemNum = nData
	end
	
	local nIndex = tThanksChickenTantivy_Cont["RankIndex"]
	
	if Task_ChkStcValue(nEvent_First,nType_First,">",0,nUserId) then
		if (nTeamNum > 1 and nUserId == nTeamLeaderId) or nTeamNum <= 1 then
			if Item_ChkMulItem(nItemId,nItemId,nNeedItemNum,0,0,nDelUserId) and Item_DelMulItem(nItemId,nItemId,nNeedItemNum,0,0,nDelUserId)then
				Sys_SaveActionFestivalLog(string.format(tThanksChickenTantivy_Log["DelItem"], nItemId, nNeedItemNum),nUserId)
			else
				Sys_MsgBox(tThanksChickenTantivy_Text["ChgNoItem"],nil,nil,nDelUserId)
				ThanksChickenTantivy_ChgMap(nUserId)
				return
			end
		end
	else
		Task_SetStatistic(nEvent_First,nType_First,1,1,nUserId)
		Task_SetStcTimestamp(nEvent_First,nType_First,0,nUserId)
	end
	
	-- if Task_ChkTaskDetailValue(tThanksChickenTantivy_Cont["MainTaskId"],"1","==",0,nUserId) then
		-- Task_SetTaskDetailData1(tThanksChickenTantivy_Cont["MainTaskId"],1, nUserId)
	-- end

	if nData ~= nil and nData == 0 then
		--首杀
		--设置火鸡首杀函数
		Sys_SetSynaGlobalData(nGlobalId,nPos,nServerData+1)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
		
		Sys_SetSynaGlobalData(nGlobalId_All,nPos_All,nServerData+1)
		
			
		--增加积分
		local nAddScore = tThanksChickenTantivy_Cont["FirstKill"][nMonsterId]
		Task_AddStatistic(nEvent,nType,nAddScore,1,nUserId)
		--刷新排行榜
		ThanksChickenTantivy_DroMonsterRecordRank(nIndex, nUserId)
		--给奖励
		local sRewardStr = ""
		local tNewReward = 0
		local bFlag = false
		--给奖励
		if nServerData+1 > 7 then
			tNewReward,sRewardStr = RewardTemplate_RandomReward(tThanksChickenTantivy_Reward["First"],nServerData+1,nUserId)
		else
			bFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward["First"][nServerData+1],nUserId)
		end
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["Msg"]["ChgSuccess"],sRewardStr,nAddScore))
		--出全服公告
		local sNpcName = string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nServerData+1)
		local sText = string.format(tThanksChickenTantivy_Text["Board"]["KillFirst"],sUserName,sNpcName)
		Sys_SystemBroadcast(sText)
		ThanksChickenTantivy_ChgMap(nUserId)
	else
		if not ThanksChickenTantivy_ChkStc(nMonsterId,nUserId) then
			Sys_MsgBox(tThanksChickenTantivy_Text["MaxNum"])
			ThanksChickenTantivy_ChgMap(nUserId)
			return
		end
		if Task_AddStatistic(nEvent_KillNum,nType_KillNum,1,1,nUserId) then
			--增加积分
			nAddScore = tThanksChickenTantivy_Cont["CommonKill"][nMonsterId]
			Task_AddStatistic(nEvent,nType,nAddScore,1,nUserId)
			--刷新排行榜
			ThanksChickenTantivy_DroMonsterRecordRank(nIndex, nUserId)
			local sRewardStr = ""
			local tNewReward = 0
			
			--给奖励
			tNewReward,sRewardStr = RewardTemplate_RandomReward(tThanksChickenTantivy_Reward["Common"],nData,nUserId)
			Sys_MsgBox(string.format(tThanksChickenTantivy_Text["Msg"]["ChgSuccess"],sRewardStr,nAddScore),nil,nil,nUserId)
			ThanksChickenTantivy_ChgMap(nUserId)
		end
	end
end
function ThanksChickenTantivy_BegainChangeTeam(nNpcId)
	local nUserId  = Get_UserId()
		--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(tThanksChickenTantivy_Cont["space"],nUserId) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["NoSpaceChange"],tThanksChickenTantivy_Cont["space"]),nil,nil,nUserId)
		return
	end
	--检查时间--防止提前重启服务器把NPC移动出来了
	if not Sys_ChkDayTime(tActivityTime["ThanksChickenTantivy"]["DayTime"]) then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoTime"])
		return
	end
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		if User_IsTeamLeader(nUserId) then
			User_TeamExeFuncByLeader(3,"ThanksChickenTantivy_BegainChange</N>" .. nNpcId,nUserId)
		else
			Sys_MsgBox(tThanksChickenTantivy_Text["ChgTeam"])
		end
	else
		ThanksChickenTantivy_BegainChange(nNpcId,nUserId)
	end
end
--开始挑战
function ThanksChickenTantivy_BegainChange(nNpcId,nUserId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nLevel = tThanksChickenTantivy_Cont["Level"]
	local nMetempsychosis = tThanksChickenTantivy_Cont["Metempsychosis"]
	local nInstanceType = tThanksChickenTantivy_Cont["InstanceType"]
	
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(tThanksChickenTantivy_Cont["space"],nUserId) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["NoSpaceChange"],tThanksChickenTantivy_Cont["space"]),nil,nil,nUserId)
		return
	end
	
	-- 获取玩家信息
	local  nOwnerId, nSign = ThanksChickenTantivy_ChkUserTeam()
	
	--今日首次挑战火鸡掩码
	local nEvent_First = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
	local nType_First = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
	if Task_StcInterval(nEvent_First,nType_First,1,4,nUserId) then
		Task_SetStatistic(nEvent_First,nType_First,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_First,nType_First,0,nUserId)
	end
	
	
	local nItemId = tThanksChickenTantivy_Cont["ItemId"]
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	

	
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	local nNeedItemNum = 0
	local sMonsterName = ""
	local sText = ""
	local nIndex = 0
	--还未被首杀
	if nData == 0 then
		nNeedItemNum = nServerData
		--怪物名字
		sMonsterName = tThanksChickenTantivy_Text["RankName"][nServerData]
		sText = tThanksChickenTantivy_Text["Escape"]
		 nIndex = nServerData
	else
		nNeedItemNum = nData
		nIndex = nData
		--怪物ID
		sMonsterName = tThanksChickenTantivy_Text["RankName"][nData]
		sText = tThanksChickenTantivy_Text["Capture"]
	end
	local nTeamId = 0
	local nLeaderId = 0
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		nTeamId = Get_UserTeamId(nUserId)
		nLeaderId = tThanksChickenTantivy_TeamChange[nTeamId]
	end
	-- 判断挑战次数
	for i,v in pairs(tThanksChickenTantivy_Cont["CommonKill"]) do 
		if v == nIndex then
			local nMonsterId = i
			if not (ThanksChickenTantivy_ChkStc(nMonsterId,nLeaderId) or ThanksChickenTantivy_ChkStc(nMonsterId,nUserId))then
			if nTeamNum > 1 then
					Sys_MsgBox(tThanksChickenTantivy_Text["MaxNumTeam"],nil,nil,nUserId)
				else
					Sys_MsgBox(tThanksChickenTantivy_Text["MaxNum"],nil,nil,nUserId)
				end
				return
			end
		end
	end
	

	
	if Task_ChkStcValue(nEvent_First,nType_First,">",0,nUserId) then
		if not Item_ChkMulItem(nItemId,nItemId,nNeedItemNum,0,0,nOwnerId) then
			local nEmoneyNum = nIndex * tThanksChickenTantivy_Cont["EmoneyPrice"]
			local sNpcName = string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nIndex)
			tNpcGossip[25452]["Text711"] = string.format(tThanksChickenTantivy_Text[25452]["Text711"],sNpcName,sText)
			tNpcGossip[25452]["Option711"] =  string.format(tThanksChickenTantivy_Text[25452]["Option711"],nEmoneyNum,nIndex)
			tNpcGossip[25452]["OptionFunc711"] = string.format("ThanksChickenTantivy_BuyConfirm</N>%d</N>%d</S>%s</S>%s",nNpcId,nIndex,sNpcName,sText)
			LinkNpcGossipFunc_New(nNpcId,"7-1")
			return
		end
	end
		
	if tThanksChickenTantivy_Change[nUserId] == nil then
		tThanksChickenTantivy_Change[nUserId] = {}
	end

	--进入副本
	if User_EnterInstanceByShenlongIsland(nInstanceType,0,0,0,nUserId) then
		if nTeamNum > 1 then
			if nUserId ~= nLeaderId then
				return
			end
		end
		
		--记录挑战的NPCid
		tThanksChickenTantivy_Change[nUserId]["NpcId"] = nNpcId
		Sys_SaveActionFestivalLog(tThanksChickenTantivy_Log["Begin"],nUserId)
		local nMapId = Get_UserMapId(nUserId)
		local nPosX = tThanksChickenTantivy_Cont["BossInfo"]["PosX"]
		local nPosY = tThanksChickenTantivy_Cont["BossInfo"]["PosY"]
		local nGenId = tThanksChickenTantivy_Cont["BossInfo"]["GenId"]

		local nDyNpcId = tThanksChickenTantivy_Cont["DyNpc"][nNpcId] 
		local nAction = tThanksChickenTantivy_Cont["Action"][nNpcId] 
		local nlookface = tThanksChickenTantivy_Cont["lookface"][nNpcId] 
		Npc_CreateDynaNpc(sMonsterName,2,1,nlookface,0,0,nMapId,nPosX,nPosY,0,0,0,nAction)
		
	end
end
--购买仙灵藤
function ThanksChickenTantivy_BuyConfirm(nNpcId,nIndex,sNpcName,sText)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId() 
	local nEmoneyNum = nIndex * tThanksChickenTantivy_Cont["EmoneyPrice"]
	local nUserEmoney = Get_UserEMoney(nUserId)
	--天石不足
	if nUserEmoney < nEmoneyNum then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoEmoney"])
		return
	end
	tNpcGossip[nNpcId]["Text811"] = string.format(tThanksChickenTantivy_Text[25452]["Text811"],sNpcName,sText)
	tNpcGossip[nNpcId]["Text812"] = string.format(tThanksChickenTantivy_Text[25452]["Text812"],nEmoneyNum)
	tNpcGossip[nNpcId]["OptionFunc811"] = string.format("ThanksChickenTantivy_Buy</N>%d</N>%d",nIndex,nEmoneyNum)
	LinkNpcGossipFunc_New(nNpcId,"8-1")
end
--确认购买
function ThanksChickenTantivy_Buy(nIndex,nEmoneyNum)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	--天石不足
	if nUserEmoney < nEmoneyNum then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoEmoney"])
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(tThanksChickenTantivy_Cont["space"],nUserId) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["NoSpaceChange"],tThanksChickenTantivy_Cont["space"]),nil,nil,nUserId)
		return
	end
	
	local sEmoneyBuyLog = tThanksChickenTantivy_Log["BuyItem"]
	if User_AddEMoneyAndLog(-nEmoneyNum,sEmoneyBuyLog,nUserId) then
		local tReward = CommonFunc_Copy(tThanksChickenTantivy_Reward["BuyItem"])
		tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nIndex)
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
	end
end

--刷出NPC
function ThanksChickenTantivy_AddMonster(nNpcIndex)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local sNpcName = tThanksChickenTantivy_Text["NpcName"][nNpcIndex]
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local nPosX = tThanksChickenTantivy_Cont["BossInfo"]["PosX"]
	local nPosY = tThanksChickenTantivy_Cont["BossInfo"]["PosY"]
	local nGenId = tThanksChickenTantivy_Cont["BossInfo"]["GenId"]
	-- 获取玩家副本信息
	local  nOwnerId, nSign = ThanksChickenTantivy_ChkUserTeam()
	local nNpcId = tThanksChickenTantivy_Change[nOwnerId]["NpcId"]
		-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		local nTeamId = Get_UserTeamId(nUserId)
		local nLeaderId = tThanksChickenTantivy_TeamChange[nTeamId]
		if nUserId ~= nLeaderId then
			return
		end
	end
		
		
	--需要在副本内
	if nMapDoc ~= tThanksChickenTantivy_Cont["MapDoc"] then
		return
	end
	--喂毒鸡汤掩码
	local nEvent = tThanksChickenTantivy_Stc[nNpcId]["Event"]
	local nType = tThanksChickenTantivy_Stc[nNpcId]["Type"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nAddFlg = 1
	--判断玩家是否喂过毒鸡汤
	if Task_ChkStcValue(nEvent,nType,">",0,nDelUserId) then
		nAddFlg = 2
	end
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	

	
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	local nMonsterId = 0
	local sMonsterName = 0
	local sReshMonsterName = 0
	local nIndex = nData
	--还未被首杀
	if nData == 0 then
		--怪物名字
		sMonsterName = tThanksChickenTantivy_Text["RankName"][nServerData]
		nMonsterId = tThanksChickenTantivy_Cont["BossInfo"][nAddFlg][nServerData]
		sReshMonsterName = tThanksChickenTantivy_Text["MonsterName"][nServerData]
		nIndex = nServerData
	else
		--怪物ID
		sMonsterName = tThanksChickenTantivy_Text["RankName"][nData]
		nMonsterId = tThanksChickenTantivy_Cont["BossInfo"][nAddFlg][nData]
		sReshMonsterName = tThanksChickenTantivy_Text["MonsterName"][nData]
	end
		--是否道士
		local nPro = SingleBattleChallenge_GetPro(nUserId)
		local bTaoist = false
		
		for k,v in pairs(tThanksChickenTantivy_Cont["TaoistPro"]) do
			if nPro == v then
				bTaoist = true
				break
			end
		end
		
		
		--是否水道士
		if nPro == tThanksChickenTantivy_Cont["WaterTaoist"]["ID"] then
			-- 刷新给的时间，先清除再重新给
			local nTaoistStatus = tThanksChickenTantivy_Cont["WaterTaoist"]["Status"]
			local nTaoistPower = tThanksChickenTantivy_Cont["WaterTaoist"]["Power"]
			
			if User_ChkRoleStatus(nTaoistStatus[1],nUserId) then
				User_DelRoleStatus(nTaoistStatus[1],nUserId)
			end
			User_AddRoleStatus(nTaoistStatus[1],nTaoistPower,3600,0,0,0,0,0,0,nUserId)
			
			if User_ChkRoleStatus(nTaoistStatus[2],nUserId) then
				User_DelRoleStatus(nTaoistStatus[2],nUserId)
			end
			User_AddRoleStatus(nTaoistStatus[2],nTaoistPower,3600,0,0,0,0,0,0,nUserId)
		end
	
	--刷新怪物
	if nMonsterId == 0 then
		return
	end
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nMonsterNum > 0 then 
		Monster_Death(nMonsterId,nMapId)
	end
	local nDynaNpcId = tThanksChickenTantivy_Cont["DyNpc"][nNpcId] 
	if Npc_DelDynaNpc(nMapId,"name",sMonsterName) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["Begain"],sNpcName,nIndex,sReshMonsterName))
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
end
-- 获取玩家副本信息
function ThanksChickenTantivy_ChkUserTeam()
	local nUserId = Get_UserId()
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()

	if tThanksChickenTantivy_Change[nUserId] == nil then
		tThanksChickenTantivy_Change[nUserId] = {}
		tThanksChickenTantivy_Change[nUserId]["InstanceId"] = 0
	end
	
	if nTeamNum <= 1 then
		return  nUserId, false
	elseif nTeamNum > 1 then
		-- 获取队长ID
		local nTeamId = Get_UserTeamId(nUserId)
		User_TeamExeFuncByTeamer(3, "ThanksChickenTantivy_GetLeaderId</N>" .. nTeamId)
		local nLeaderId = tThanksChickenTantivy_TeamChange[nTeamId]
		if nLeaderId == nil then
			return nUserId, false
		else
			return  nLeaderId, false
		end
	end
end
--获取队长的userid
function ThanksChickenTantivy_GetLeaderId(nTeamId)
	local nUserId = Get_UserId()
	--不是队长退出
	if not User_IsTeamLeader(nUserId) then
		return
	end
	tThanksChickenTantivy_TeamChange[nTeamId] = nUserId
end
-- 创建副本
-- function ThanksChickenTantivy_ChkCreatCounterpart(nUserId)
	-- 创建副本
	-- local nInstanceType = tThanksChickenTantivy_Cont["InstanceType"]
	-- local nInstanceId = User_CreateInstance(nInstanceType,nUserId)
	-- 重置副本表
	-- if tThanksChickenTantivy_Change[nUserId] == nil then
		-- tThanksChickenTantivy_Change[nUserId] = {}
	-- end
	-- tThanksChickenTantivy_Change[nUserId]["InstanceId"] = nInstanceId
	-- return nInstanceId
-- end
--掩码检测
function ThanksChickenTantivy_ChkStc(nMonsterId,nUserId)
	--击杀掩码
	local nEvent_KillNum = tThanksChickenTantivy_Stc[nMonsterId]["Event"]
	local nType_KillNum = tThanksChickenTantivy_Stc[nMonsterId]["Type"]
	
	if Task_StcInterval(nEvent_KillNum,nType_KillNum,1,4,nUserId) then
		Task_SetStatistic(nEvent_KillNum,nType_KillNum,0,1,nUserId)
		Task_SetStcTimestamp(nEvent_KillNum,nType_KillNum,0,nUserId)
	end
	
	if Task_ChkStcValue(nEvent_KillNum,nType_KillNum,">=",3,nUserId) then
		return false
	else
		return true
	end
end
--每天8点移动NPC
function  ThanksChickenTantivy_MoveNpc()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All)
	--再清零一次，防止凌晨服务器卡顿
	if nServerData ~= 0 then
		--击杀数清零
		Sys_SetSynaGlobalData(nGlobalId_All,nPos_All,0)
	end
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		for a,b in pairs(tThanksChickenTantivy_NpcId) do
			local nNpcId = b
			Npc_MoveNpcPos(nNpcId,5000,100,100)
		end
		return
	end
	local tNpcMove = tThanksChickenTantivy_MoveNpc
	
	if SpecialServer_ChkNoGiftServer() then
		tNpcMove = tThanksChickenTantivy_MoveNpc["NoGif"]
	end
	for i = 25452,25460 do 
		local nMoveIndex = math.random(1,2)
		local nNpcId =  i
		local MapId = tNpcMove[nNpcId][nMoveIndex]["MapId"]
		local Posx = tNpcMove[nNpcId][nMoveIndex]["Posx"]
		local Posy = tNpcMove[nNpcId][nMoveIndex]["Posy"]
		Npc_MoveNpcPos(nNpcId,MapId,Posx,Posy)
	end
	nMoveIndex = math.random(1,2)
	MapId = tNpcMove[25462][nMoveIndex]["MapId"]	
	Posx = tNpcMove[25462][nMoveIndex]["Posx"]	
	Posy = tNpcMove[25462][nMoveIndex]["Posy"]	
	Npc_MoveNpcPos(25462,MapId,Posx,Posy)
end
--每天凌晨移走NPC并发奖
function ThanksChickenTantivy_MoveNpcBack()
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime1"]) then
		return
	end
	for a,b in pairs(tThanksChickenTantivy_NpcId) do
		local nNpcId = b
		Npc_MoveNpcPos(nNpcId,5000,100,100)
	end
	
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All)
	local nIndex = 1
	if nServerData >= 10 then
		nIndex = 2
	end
	--击杀数清零
	Sys_SetSynaGlobalData(nGlobalId_All,nPos_All,0)
	--今日可领取礼盒
	Sys_SetSynaGlobalData(tThanksChickenTantivy_Cont["DayGlobal"]["GlobalId"],tThanksChickenTantivy_Cont["DayGlobal"]["Pos"],nIndex)
end
--喂毒鸡汤
function ThanksChickenTantivy_FeedPoison()
	local nUserId = Get_UserId()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nNpcId = Get_NpcId()
	local nItemId = tThanksChickenTantivy_Cont["Poison"] 
	
	local nEvent = tThanksChickenTantivy_Stc[nNpcId]["Event"]
	local nType = tThanksChickenTantivy_Stc[nNpcId]["Type"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		Sys_MsgBox(tThanksChickenTantivy_Text["Msg"]["FeedFail"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		Sys_SaveActionFestivalLog(string.format(tThanksChickenTantivy_Log["DelItem"], nItemId,1),nUserId)
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Sys_MsgBox(tThanksChickenTantivy_Text["Msg"]["FeedSuccess"])
	else
		Sys_MsgBox(tThanksChickenTantivy_Text["Msg"]["FeedNoItem"])
	end
end
--返回双龙城
function ThanksChickenTantivy_GoBack()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nChgMapId = tThanksChickenTantivy_BackCoordinates["MapId"]
	local nChgPosX = tThanksChickenTantivy_BackCoordinates["Posx"] 
	local nChgPosY = tThanksChickenTantivy_BackCoordinates["Posy"] 
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		nChgMapId = tThanksChickenTantivy_BackCoordinates["NoGif"]["MapId"]
		nChgPosX = tThanksChickenTantivy_BackCoordinates["NoGif"]["Posx"] 
		nChgPosY = tThanksChickenTantivy_BackCoordinates["NoGif"]["Posy"] 
	end
	User_DelAllAttribStatus(nUserId)
	local nStatus = 54
	User_DelRoleStatus(nStatus,nUserId)
	User_UserRandBoundTransByShenlongIsland(nChgMapId,nChgPosX,nChgPosY,1,1,0,nUserId)
	
end
--打开兑换商店
function ThanksChickenTantivy_OpenExchange(nNpcId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nNpcId = Get_NpcId()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	--打开兑换商店
	User_OpenExchangeShop(nNpcId,nUserId)
end
--打开天石商店
function ThanksChickenTantivy_OpenEmoneyShop(nNpcId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nNpcId = Get_NpcId()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	--打开天石商店
	User_OpenDialog()


end
function ThanksChickenTantivy_OpenCoat(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward[nItemId][nIndex])
end
--领取阶段奖励
function ThanksChickenTantivy_GetPhase(nNpcId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	local nEvent_Phase = 0
	local nType_Phase = 0
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nEvent = tThanksChickenTantivy_Stc["UseScore"]["Event"]
	local nType = tThanksChickenTantivy_Stc["UseScore"]["Type"]
	local nScore = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--领奖阶段
	local nIndex = 0
	
	for i = 1, #tThanksChickenTantivy_Cont["PhaseScore"] do
		if nScore >= tThanksChickenTantivy_Cont["PhaseScore"][i] then
			nEvent_Phase = tThanksChickenTantivy_Stc[i]["Event"]
			nType_Phase = tThanksChickenTantivy_Stc[i]["Type"]
			if Task_ChkStcValue(nEvent_Phase,nType_Phase,"==",0,nUserId) then
				nIndex = i
				break
			end
		end
	end
	
	--没有可以领取的奖励
	if nIndex == 0 then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoReward"])
		return
	end
	
	--判断背包空间
	if not RewardTemplate_CheckSpace(tThanksChickenTantivy_Reward["Phase"][nIndex]) then
		local nSpace = RewardTemplate_GetRewardSpace(tThanksChickenTantivy_Reward["Phase"][nIndex])
		local sText = string.format(tThanksChickenTantivy_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	--打掩码给奖励
	nEvent_Phase = tThanksChickenTantivy_Stc[nIndex]["Event"]
	nType_Phase = tThanksChickenTantivy_Stc[nIndex]["Type"]
	if Task_SetStatistic(nEvent_Phase,nType_Phase,1,1,nUserId) then
		RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward["Phase"][nIndex])
	end
end
--使用每日签到礼盒和正气令
function ThanksChickenTantivy_DayPackageUse(nIndex)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = nNowUserId or Get_UserId()
	local nLevel = tThanksChickenTantivy_Cont["Level"]
	local nMetempsychosis = tThanksChickenTantivy_Cont["Metempsychosis"]
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward["DayReward"][nIndex],nUserId)
end
--击杀神龙岛和打宝区怪物掉落
function ThanksChickenTantivy_KillMonster()
	local nUserId = Get_UserId()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nLevel = tThanksChickenTantivy_Cont["Level"]
	local nMetempsychosis = tThanksChickenTantivy_Cont["Metempsychosis"]
	local nUserMapId  = Get_UserMapId(nUserId)
	local nEvent = tThanksChickenTantivy_Reward["DayReward"][3][1]["EventType"]
	local nType = tThanksChickenTantivy_Reward["DayReward"][3][1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	if nUserMapId == 10250 or nUserMapId == 10137 or (nUserMapId >= 10479 and nUserMapId <= 10481) then
		if nData >= 5 and nData <= 10 then
			--掉落超过10个
			RewardTemplate_NewRandomNoTip(tThanksChickenTantivy_Reward["DayReward"],4,nUserId)
		else
			RewardTemplate_NewRandomNoTip(tThanksChickenTantivy_Reward["DayReward"],3,nUserId)
		end
		
			RewardTemplate_NewRandomNoTip(tThanksChickenTantivy_Reward["Monster"],1,nUserId)
	end
end
--死亡触发
function ThanksChickenTantivy_Death()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	if nMapDoc ~= tThanksChickenTantivy_Cont["MapDoc"] then
		return
	end
	
	if tThanksChickenTantivy_Change[nUserId] == nil then
		return
	end
	
	if tThanksChickenTantivy_Change[nUserId]["NpcId"] == nil or tThanksChickenTantivy_Change[nUserId]["NpcId"] == 0 then
		return
	end
	
	
	local nNpcId = tThanksChickenTantivy_Change[nUserId]["NpcId"]
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nEvent = tThanksChickenTantivy_Stc["Mail"]["Event"]
	local nType = tThanksChickenTantivy_Stc["Mail"]["Type"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
		return
	end
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	--需要在副本内
	if nMapDoc == tThanksChickenTantivy_Cont["MapDoc"] then
		--是否是已战败火鸡
		if nData ~= nil and nData ~= 0 then
			if Task_AddStatistic(nEvent,nType,1,1,nUserId) then
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				-- 发奖
				local nActionId = tThanksChickenTantivy_Cont["Mail"][1]["ActionId"]
				local nExistDay = tThanksChickenTantivy_Cont["Mail"][1]["ExistDay"]
				local sSender = tThanksChickenTantivy_Text["Mail"]["Fail"]["Sender"]
				local sTitle = tThanksChickenTantivy_Text["Mail"]["Fail"]["Title"]
				local sContent = tThanksChickenTantivy_Text["Mail"]["Fail"]["Content"]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
		end
	end
end
--寻找火鸡
function ThanksChickenTantivy_FindNpc(nNpcId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--检查时间
	if not Sys_ChkDayTime(tActivityTime["ThanksChickenTantivy"]["DayTime"]) then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoTime"])
		return
	end
	local nUserId =  Get_UserId()
	local nMapId = Get_NpcMapID(nNpcId)
	if nMapId == 5000 then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoTime"])
		return
	end
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,1,1,0,nUserId)
end
function ThanksChickenTantivy_LinkNpc(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--合成称号碎片
function ThanksChickenTantivy_CompoundDebris(nItemId,nPrice,nNeedItemNum)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	
	if User_CheckTitle(tThanksChickenTantivy_Cont["TitleType"],tThanksChickenTantivy_Cont["TitleId"]) then
		return
	end
	
	--获取玩家身上碎片
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum < nNeedItemNum then
		--出补全对白
		local nLackNum = nNeedItemNum - nItemNum
		local nNeedEmoney = nLackNum * nPrice
		tItem[nItemId]["Text211"] = string.format(tThanksChickenTantivy_Text[nItemId]["Text211"],nNeedEmoney,nLackNum)
		tItem[nItemId]["Option211"] = string.format(tThanksChickenTantivy_Text[nItemId]["Option211"],nNeedEmoney)
		tItem[nItemId]["OptionFunc211"] = string.format("ThanksChickenTantivy_BuyDebrisConfirm</N>%d</N>%d</N>%d",nNeedEmoney,nItemId,nLackNum)
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward[nItemId][1])
end

--花费天石购买碎片确认
function ThanksChickenTantivy_BuyDebrisConfirm(nNeedEmoney,nItemId,nLackNum)
	tItem[nItemId]["Text311"] = string.format(tThanksChickenTantivy_Text[nItemId]["Text311"],nNeedEmoney)
	tItem[nItemId]["Option311"] = string.format(tThanksChickenTantivy_Text[nItemId]["Option311"],nNeedEmoney)
	tItem[nItemId]["OptionFunc311"] = string.format("ThanksChickenTantivy_BuyDebris</N>%d</N>%d</N>%d",nNeedEmoney,nItemId,nLackNum)
	LinkItemGossipFunc_New(nItemId,"3-1")
end
--确认购买
function ThanksChickenTantivy_BuyDebris(nNeedEmoney,nItemId,nLackNum)
	local nUserId = Get_UserId()

	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nNeedEmoney then
		Sys_MsgBox(tThanksChickenTantivy_Text["NoEmoney"])
		return
	end
	local tReward = CommonFunc_Copy(tThanksChickenTantivy_Reward[nItemId][2])
	
	--背包空间判断
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["NoSpace"],1),nil,nil,nUserId)
		return
	end
	
	--扣除天石
	local sEmoneyBuyLog = tThanksChickenTantivy_Log["BuyDebris"]
	if User_AddEMoneyAndLog(-nNeedEmoney,sEmoneyBuyLog,nUserId) then
		tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nLackNum)
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
	end
end
function ThanksChickenTantivy_ExitOS()
	local nUserId = Get_UserId()
	Sys_ExitOS(nUserId)
end
------------------------------------------------------------------------------------------------------------------
--火鸡击杀数据获取
function ThanksChickenTantivy_GetRankMsg()
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All)
	
	-- 排行榜内容
	local tRankText = {}
	for nRank = 1 , #tThanksChickenTantivy_Cont["KillGlobalId"] do
		local tRanking = tThanksChickenTantivy_Cont["KillGlobalId"][nRank]
		local nChickenIndex = Get_SysDynaGlobalData(tRanking["GlobalId"],tRanking["pos"])
		local tKillRanking = tThanksChickenTantivy_Cont["KillFirstGlobalId"][nRank]
		
		if nChickenIndex == 0 and nRank ~= 1 then
			sChickenIndex = tThanksChickenTantivy_Text["RankName"][nRank]
			sUserName = "" 
			sIndex = tThanksChickenTantivy_Text["Record"]["NoIndex"] 
		else
			sChickenIndex  = tThanksChickenTantivy_Text["RankName"][nRank]
			if nRank == 1 and nChickenIndex == 0 then 
				sIndex = string.format(tThanksChickenTantivy_Text["RankName"]["Index"],nChickenIndex + 1)
				sUserName = ""
			else
				sUserName = Get_SysDynaGlobalDataStr(tKillRanking["GlobalId"],tKillRanking["pos"])
				if sUserName == "" then
					sIndex = string.format(tThanksChickenTantivy_Text["RankName"]["Index"],nServerData+1)
				else
					sIndex = string.format(tThanksChickenTantivy_Text["RankName"]["Index"],nChickenIndex)
				end
			end
			
		end
		--名字处理
		sUserName = string.gsub(sUserName, "<", " ")
		sUserName = string.gsub(sUserName, ">", " ")
		
		-- 对白内容
		if nRank <= 10 then
			local sText = Sys_Alignment(sChickenIndex,tThanksChickenTantivy_Cont["RankAline"]["Left"],sIndex,tThanksChickenTantivy_Cont["RankAline"]["Middle"],sUserName,tThanksChickenTantivy_Cont["RankAline"]["Right"])
			table.insert(tRankText,sText)
		end
	end
	return tRankText
end

--打开网页
function ThanksChickenTantivy_OpenWeb()
	local nUserId = Get_UserId()
	User_SendWebPage("https://wtop.zf.99.com/gesk/?lang=en",nUserId)
end
--寻找其他活动NPC
function ThanksChickenTantivy_PathFind(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["FirstNpc"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstNpc"]["Type"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		NpcPosition_PathFind(nNpcId)
	end
end
--开始追捕
function ThanksChickenTantivy_BegainFind(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["FirstNpc"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstNpc"]["Type"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		LinkNpcGossipFunc_New(nNpcId,"1-6")
	end
end
function ThanksChickenTantivy_BroadGoto(nNpcId)
	local nMapId = Get_NpcMapID(nNpcId) 
	local nPosX =  Get_NpcPositionX(nNpcId) + 2 
	local nPosY =  Get_NpcPositionY(nNpcId) + 2 
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,0,nUserId)
	NpcPosition_PathFind(nNpcId)
end
-----------------------------------------------------------------------------------
--火鸡击杀榜
function ThanksChickenTantivy_Tracking(nNpcId)
	-- 初始化
	tNpcGossip[nNpcId]["Text2-1"] = {211,212,213}
	-- 排行榜内容
	local tRankText,sUserRank= ThanksChickenTantivy_GetRankMsg(10)
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All)
	local nKillNum = 1
	local nNewIndex =0
	local tText ={}
	for nRank, sText in ipairs(tRankText) do
		local tRanking = tThanksChickenTantivy_Cont["KillGlobalId"][nRank]
		local tKillRanking = tThanksChickenTantivy_Cont["KillFirstGlobalId"][nRank]
		local nChickenIndex = Get_SysDynaGlobalData(tRanking["GlobalId"],tRanking["pos"])
		local sUserName = Get_SysDynaGlobalDataStr(tKillRanking["GlobalId"],tKillRanking["pos"])
		local nIndex = Get_SysDynaGlobalData(tKillRanking["GlobalId"],tKillRanking["pos"])

		if nIndex == 0 then 
			nIndex = nServerData + nKillNum
			nKillNum = nKillNum + 1
		end
		tNpcGossip[nNpcId]["Text211"..nIndex] = sText.. "\n"
		
		table.insert(tNpcGossip[nNpcId]["Text2-1"],211 .. nRank)

	end
	-- 必显示内容
	table.insert(tNpcGossip[nNpcId]["Text2-1"],214)
	table.insert(tNpcGossip[nNpcId]["Text2-1"],215)
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"2-1")


end

--获取排行榜数据
function ThanksChickenTantivy_ViewRank(nNpcId)
	
	local nUserId = Get_UserId()
	local nIndex = tThanksChickenTantivy_Cont["RankIndex"]
	--职业排行榜信息
	local tRank = RankingFunc_GetNowData(nIndex)
	
	--居中显示位置
	local nLeft = tThanksChickenTantivy_Cont["CenterAline"]["Left"]
	local nMiddle = tThanksChickenTantivy_Cont["CenterAline"]["Middle"]
	local nRight = tThanksChickenTantivy_Cont["CenterAline"]["Right"]
	local nLast = tThanksChickenTantivy_Cont["CenterAline"]["Last"]
	
	--玩家排名
	local nRank = 0
	local sUserRank = tThanksChickenTantivy_Text["No"]
	for i = 1, 10 do
		--排名
		local sRank = string.format(tThanksChickenTantivy_Text["Rank"], i)
		--时间
		local nScore = tThanksChickenTantivy_Text["NoRank"]
		--名字
		local sUserName = tThanksChickenTantivy_Text["NoRank"]
		if tRank ~= nil then
			if tRank[i] ~= nil then
				nScore = tRank[i]["Score"]
				sUserName = tRank[i]["UserName"]
				--名字处理
				sUserName = string.gsub(sUserName, "<", " ")
				sUserName = string.gsub(sUserName, ">", " ")
				if nUserId == tRank[i]["UserId"] then
					sUserRank = string.format(tThanksChickenTantivy_Text["NowRank"],i,nScore)
				end
			end
		end
		local sReward = tThanksChickenTantivy_Text["RankReward"][i]
		local sTotal = Sys_CenterAline(sRank,nLeft,sReward,nMiddle,nScore,nRight,sUserName,nLast)
		tNpcGossip[nNpcId]["Text2415"] = sUserRank
		tNpcGossip[nNpcId]["Text24"..(i + 3)] = string.format(tThanksChickenTantivy_Text[nNpcId]["Text24"..(i + 3)],sTotal)
	end
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		
		
		
end
--记录排行榜
function  ThanksChickenTantivy_DroMonsterRecordRank(nIndex, nUserId)
	local nEvent = tThanksChickenTantivy_Stc["UseScore"]["Event"]
	local nType = tThanksChickenTantivy_Stc["UseScore"]["Type"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	--没有相关排行榜数据
	if tRankingFunc_Info[nIndex] == nil then
		return
	end
	
	--更新排行榜
	RankingFunc_SetInfo(nIndex,nData,nUserId)
	
end

--排行榜发奖
function ThanksChickenTantivy_ReSetMailText(nIndex)
	--排行榜信息
	local tRank = RankingFunc_GetNowData(nIndex)
	
	for k,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		local sTime = ""
		
		v["Title"] = string.format(v["Title"],k)
		v["Content"] = string.format(v["Content"],k)
	end
end
--记录NPC
function ThanksChickenTantivy_RecordNpc(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local sUser = Get_UserName(nUserId)
	local sUserName = tThanksChickenTantivy_Text["NoRank"]
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][nNpcId]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nMapId = Get_UserMapId(nUserId)
	local sMapName = tThanksChickenTantivy_Text["MapName"][nMapId]
	
	--NPC坐标
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	
	--判断当前是否是首杀
	local nGlobalId_Kill = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos_Kill = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nData_Kill = Get_SysDynaGlobalData(nGlobalId_Kill,nPos_Kill)
	
	--总击杀掩码
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	
	if nData ~= 0 and nData == nData_Kill then
		return
	end
	
	if nData == 0 and nData == nServerData then
		return
	end
	local nNpcData = 0
	if nData_Kill > 0 then
		sUserName = Get_SysDynaGlobalDataStr(nGlobalId_Kill,nPos_Kill)
		nNpcData = nData_Kill
	else 
		nNpcData = nServerData
	end
	
	if nData == 0  then
		local sText = string.format(tThanksChickenTantivy_Text["Board"][nNpcId],sUser,sMapName,nPosX,nPosY,nNpcData)
		Sys_TalkBroadcast(sText)
		Sys_SystemBroadcast(sText)
	end
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,nNpcData)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
end
--清除动态码
function ThanksChickenTantivy_ClearGlobal()
	for i,nGlobalId in pairs(tThanksChickenTantivy_Cont["ClearGlobal"]) do 
		Sys_ResetAllSynaGlobalData(nGlobalId)
		for i,v in pairs(tThanksChickenTantivy_Cont["Pos"]) do
			Sys_SetSynaGlobalData(nGlobalId,v,0)
			Sys_SetSynaGlobalDataStr(nGlobalId,v,"")
			Sys_SetSynaGlobalTime(nGlobalId,v,0)
		end
	end
end
---------------------------------------NPC配置-------------------------------------
tNpcFace[5851] = 13
tNpcGossip[25450]= tNpcGossip[25450] or DefaultNpc:new{}
tNpcGossip[25450]["DialogueText"] = tThanksChickenTantivy_Text[25450]
tNpcGossip[25450]["OptionHidden"] = 1

tNpcGossip[25450]["Text1-1"] = {111,112,114,115,116}
tNpcGossip[25450]["tOption1-1"] = {111}
tNpcGossip[25450]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksChickenTantivy"]["ActTime"] )
end

tNpcGossip[25450]["Text1-2"] = {121,122}
tNpcGossip[25450]["tOption1-2"] = {121}
tNpcGossip[25450]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksChickenTantivy"]["ActTime"] )
end
tNpcGossip[25450]["Text1-3"] = {131,132,134,135,136}
tNpcGossip[25450]["tOption1-3"] = {131}
tNpcGossip[25450]["ChkFunc1-3"] = function ()
	local nUserId = nNowUserId or Get_UserId()
	local nLevel = tThanksChickenTantivy_Cont["Level"]
	local nMetempsychosis = tThanksChickenTantivy_Cont["Metempsychosis"]
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return false
	else
		return true
	end
end
--首次点击NPC引导
tNpcGossip[25450]["Text1-4"] = {141,142,143}
tNpcGossip[25450]["tOption1-4"] = {141}
tNpcGossip[25450]["ChkFunc1-4"] = function ()
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["FirstNpc"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstNpc"]["Type"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		return true
	else
		return false
	end
	
end
tNpcGossip[25450]["OptionFunc141"] = "ThanksChickenTantivy_Tracking</N>25450"

tNpcGossip[25450]["Text1-5"] = {151,152,153,154,155,156}
tNpcGossip[25450]["tOption1-5"] = {151,152,153}
tNpcGossip[25450]["ChkFunc1-5"] = function ()
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["FirstNpc"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstNpc"]["Type"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1,nUserId) then
		return true
	else
		return false
	end
	
end
tNpcGossip[25450]["OptionFunc151"] = "ThanksChickenTantivy_PathFind</N>25577"
tNpcGossip[25450]["OptionFunc152"] = "ThanksChickenTantivy_PathFind</N>25042"
tNpcGossip[25450]["OptionFunc153"] = "ThanksChickenTantivy_BegainFind</N>25450"




tNpcGossip[25450]["Text1-6"] = {161,162,163,164,165,166}
tNpcGossip[25450]["tOption1-6"] = {161,162,163,164,165}
tNpcGossip[25450]["ChkFunc1-6"] = function()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[25450]["Text1-6"] = {161,162,164,165,166}
	else
		tNpcGossip[25450]["Text1-6"] = {161,162,163,165,166}
	end
	return true
end
tNpcGossip[25450]["OptionFunc161"] = "ThanksChickenTantivy_Tracking</N>25450"
tNpcGossip[25450]["OptionPoint162"] = "2-3"
tNpcGossip[25450]["OptionFunc163"] = "ThanksChickenTantivy_ViewRank</N>25450"
-- tNpcGossip[25450]["OptionPoint165"] = "2-6"
--★逃跑火鸡实时追踪★
tNpcGossip[25450]["Text2-1"] = {211,212,213,2111,2112,2113,2114,2115,2116,2117,2118,2119,21110,214,215}
tNpcGossip[25450]["tOption2-1"]={211,212,213,214,215,216,217,218,219,2110}
-- tNpcGossip[25450]["ChkFunc211"] = function()
	-- local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25452]["GlobalId"]
	-- local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25452]["Pos"]
	
	-- local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	-- if nData == 0 then 
		-- return false
	-- else
		-- return true
	-- end
	
-- end
tNpcGossip[25450]["OptionChkFunc212"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25453]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25453]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc213"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25454]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25454]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc214"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25455]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25455]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc215"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25456]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25456]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc216"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25457]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25457]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc217"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25458]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25458]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc218"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25459]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25459]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc219"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25460]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25460]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionChkFunc2110"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25462]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25462]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25450]["OptionFunc211"] = "ThanksChickenTantivy_FindNpc</N>25452"
tNpcGossip[25450]["OptionFunc212"] = "ThanksChickenTantivy_FindNpc</N>25453"
tNpcGossip[25450]["OptionFunc213"] = "ThanksChickenTantivy_FindNpc</N>25454"
tNpcGossip[25450]["OptionFunc214"] = "ThanksChickenTantivy_FindNpc</N>25455"
tNpcGossip[25450]["OptionFunc215"] = "ThanksChickenTantivy_FindNpc</N>25456"
tNpcGossip[25450]["OptionFunc216"] = "ThanksChickenTantivy_FindNpc</N>25457"
tNpcGossip[25450]["OptionFunc217"] = "ThanksChickenTantivy_FindNpc</N>25458"
tNpcGossip[25450]["OptionFunc218"] = "ThanksChickenTantivy_FindNpc</N>25459"
tNpcGossip[25450]["OptionFunc219"] = "ThanksChickenTantivy_FindNpc</N>25460"
tNpcGossip[25450]["OptionFunc2110"] = "ThanksChickenTantivy_FindNpc</N>25462"


--★首杀奖励详情★
tNpcGossip[25450]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215,2216}
tNpcGossip[25450]["tOption2-2"]={221,222}
tNpcGossip[25450]["OptionPoint221"] = "2-3"
tNpcGossip[25450]["OptionPoint222"] = "1"
--★查看参与奖励★
tNpcGossip[25450]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315}
tNpcGossip[25450]["tOption2-3"]={231,232}
tNpcGossip[25450]["OptionPoint231"] = "2-2"
tNpcGossip[25450]["OptionPoint232"] = "1"
--积分排行榜
tNpcGossip[25450]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410,2411,2412,2413,2414,2415}
tNpcGossip[25450]["tOption2-4"]={243,241,242}
tNpcGossip[25450]["OptionPoint243"] = "2-7"
tNpcGossip[25450]["OptionFunc241"] = "ThanksChickenTantivy_OpenWeb"
tNpcGossip[25450]["OptionPoint242"] = "1"
--★本服积分奖励★
tNpcGossip[25450]["Text2-5"] = {251,252,253,254,255,256,257,258}
tNpcGossip[25450]["tOption2-5"]={251}
tNpcGossip[25450]["OptionPoint251"] = "1"
--★本服积分奖励★
tNpcGossip[25450]["Text2-6"] = {261,262,263,264,265,266,267,268,269,2610,2611,2612}
tNpcGossip[25450]["tOption2-6"]={261}
tNpcGossip[25450]["OptionPoint261"] = "1"
--★抓捕火鸡阶段性奖励★
tNpcGossip[25450]["Text2-7"] = {271,272,273,274,275,276,277,278,279,2710}
tNpcGossip[25450]["tOption2-7"]={271,272}
tNpcGossip[25450]["ChkFunc2-7"] = function ()
	local nUserId = Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["UseScore"]["Event"]
	local nType = tThanksChickenTantivy_Stc["UseScore"]["Type"]
	local nScore = Get_UserStatisticValue(nEvent,nType,nUserId)
	tNpcGossip[25450]["Text2710"] = string.format(tThanksChickenTantivy_Text[25450]["Text2710"],nScore)
	for i = 1,5 do
		local nEvent_Phase = tThanksChickenTantivy_Stc[i]["Event"]
		local nType_Phase = tThanksChickenTantivy_Stc[i]["Type"]
		if Task_ChkStcValue(nEvent_Phase,nType_Phase,">",0,nUserId) then
			tNpcGossip[25450]["Text27"..(i+3)] = tThanksChickenTantivy_Text[25450]["Text27"..(i+3)..(1)]
		end
	end
	return true
end
tNpcGossip[25450]["OptionChkFunc271"] = function ()
	local nUserId = Get_UserId()
	local nEvent = tThanksChickenTantivy_Stc["UseScore"]["Event"]
	local nType = tThanksChickenTantivy_Stc["UseScore"]["Type"]
	local nScore = Get_UserStatisticValue(nEvent,nType,nUserId)
	for i = 1, 5 do
		local nEvent_Phase = tThanksChickenTantivy_Stc[i]["Event"]
		local nType_Phase = tThanksChickenTantivy_Stc[i]["Type"]
		
		if nScore >= tThanksChickenTantivy_Stc[i]["Data"] and Task_ChkStcValue(nEvent_Phase,nType_Phase,"==",0,nUserId) then
			tNpcGossip[25450]["Option271"] = string.format(tThanksChickenTantivy_Text[25450]["Option271"],tThanksChickenTantivy_Text["GetReward"])
		else
			tNpcGossip[25450]["Option271"] = string.format(tThanksChickenTantivy_Text[25450]["Option271"],"")
		end
	end
	return true
end
tNpcGossip[25450]["OptionFunc271"] = "ThanksChickenTantivy_GetPhase</N>25450"
tNpcGossip[25450]["OptionPoint272"] = "1"
-- tNpcGossip[25550]= tNpcGossip[25450] or DefaultNpc:new{}

---------------------兑换NPC
tNpcFace[5851] = 13
tNpcGossip[25451]= tNpcGossip[25451] or DefaultNpc:new{}
tNpcGossip[25451]["DialogueText"] = tThanksChickenTantivy_Text[25451]
tNpcGossip[25451]["OptionHidden"] = 1

tNpcGossip[25451]["Text1-1"] = {111,112,114,115,116}
tNpcGossip[25451]["tOption1-1"] = {111}
tNpcGossip[25451]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksChickenTantivy"]["ActTime"] )
end

tNpcGossip[25451]["Text1-2"] = {121,122}
tNpcGossip[25451]["tOption1-2"] = {121}
tNpcGossip[25451]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksChickenTantivy"]["ActTime"] )
end
tNpcGossip[25451]["Text1-3"] = {131,132,134,135,136}
tNpcGossip[25451]["tOption1-3"] = {131,132}
tNpcGossip[25451]["OptionFunc131"] = "ThanksChickenTantivy_OpenExchange</N>25451"
tNpcGossip[25451]["OptionFunc132"] = "ThanksChickenTantivy_OpenEmoneyShop</N>25451"

tNpcGossip[25589]= tNpcGossip[25451] or DefaultNpc:new{}
----------------------------------------------------------
tNpcFace[2167] = 199
tNpcFace[2168] = 199
tNpcFace[5851] = 13
tNpcGossip[25452]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25452]["DialogueText"] = tThanksChickenTantivy_Text[25452]
tNpcGossip[25452]["OptionHidden"] = 1
tNpcGossip[25452]["Text1-1"] = {111,112,113,114}
tNpcGossip[25452]["tOption1-1"] = {111,113,114,115,112,117,116}
tNpcGossip[25452]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	--记录火鸡数据
	ThanksChickenTantivy_RecordNpc(nNpcId,nUserId)
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	local nPower = 0
	if nData ~= 0 then
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
		local sText = string.format(tThanksChickenTantivy_Text["FirstKillUser"],sUserName)
		nPower = tThanksChickenTantivy_Cont["power"][nData]
		tNpcGossip[25452]["Text111"] = string.format(tThanksChickenTantivy_Text[25452]["Text111"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nData),tThanksChickenTantivy_Text["Capture"])
		tNpcGossip[25452]["Text114"] = string.format(tThanksChickenTantivy_Text[25452]["Text114"],sText,nPower)
	else
		nPower = tThanksChickenTantivy_Cont["power"][nServerData]
		tNpcGossip[25452]["Text114"] = string.format(tThanksChickenTantivy_Text[25452]["Text114"],tThanksChickenTantivy_Text["NoUserChg"],nPower)
		tNpcGossip[25452]["Text111"] = string.format(tThanksChickenTantivy_Text[25452]["Text111"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nServerData),tThanksChickenTantivy_Text["Escape"])
	end
	
	local nEvent = tThanksChickenTantivy_Stc[nNpcId]["Event"]
	local nType = tThanksChickenTantivy_Stc[nNpcId]["Type"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	--喂毒鸡汤次数
	local nFeedNum = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nData == 1 or nFeedNum == 0 then
		tNpcGossip[25452]["Text113"] = ""
	end
	

	return true
end
tNpcGossip[25452]["OptionChkFunc111"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	local nUserId = Get_UserId()
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	
	--今日首次挑战火鸡掩码
	local nEvent = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		return false
	end
	
	if nData > 0 then
		return false
	else
		tNpcGossip[25452]["Option111"] = string.format(tThanksChickenTantivy_Text[25452]["Option111"],nServerData)
		return true
	end
end
--每日首次免费
tNpcGossip[25452]["OptionChkFunc115"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	local nUserId = Get_UserId()
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	--今日首次挑战火鸡掩码
	local nEvent = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
	local nType = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if nData > 0 then
		return false
	else
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			return true
		end
	end
end
--投喂毒鸡汤
tNpcGossip[25452]["OptionChkFunc112"] = function ()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	
	local nEvent = tThanksChickenTantivy_Stc[nNpcId]["Event"]
	local nType = tThanksChickenTantivy_Stc[nNpcId]["Type"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	--喂毒鸡汤次数
	local nFeedNum = Get_UserStatisticValue(nEvent,nType,nUserId)
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 or nData == 1 or nFeedNum > 0 then
		return false
	else
		return true
	end
	
end
--再次挑战它免费
tNpcGossip[25452]["OptionChkFunc113"] = function ()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	if nData > 0 then 
		--今日首次挑战火鸡掩码
		local nEvent = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
		local nType = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		if not Task_ChkStatistic(nEvent,nType,nUserId) then
			return true
		end
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			return true
		else
			return false
		end
	end
	return false
end
--再次挑战它付费
tNpcGossip[25452]["OptionChkFunc114"] = function ()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	if nData > 0 then 
		--今日首次挑战火鸡掩码
		local nEvent = tThanksChickenTantivy_Stc["FirstKill"]["Event"]
		local nType = tThanksChickenTantivy_Stc["FirstKill"]["Type"]
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			return false
		else
			tNpcGossip[25452]["Option114"] = string.format(tThanksChickenTantivy_Text[25452]["Option114"],nData)
			return true
		end
	end
end

tNpcGossip[25452]["OptionPoint111"] = "4-1"
tNpcGossip[25452]["OptionFunc112"] = "ThanksChickenTantivy_FeedPoison"
tNpcGossip[25452]["OptionPoint113"] = "3-1"
tNpcGossip[25452]["OptionPoint114"] = "5-1"
tNpcGossip[25452]["OptionPoint115"] = "6-1"
tNpcGossip[25452]["OptionFunc116"] = "ThanksChickenTantivy_GoBack"
tNpcGossip[25452]["OptionFunc117"] = "ThanksChickenTantivy_Tracking</N>25452"

--再次免费挑战二次确认
tNpcGossip[25452]["Text3-1"] = {311,312,313}
tNpcGossip[25452]["tOption3-1"] = {311,312}
tNpcGossip[25452]["ChkFunc3-1"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]

	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)

	tNpcGossip[25452]["Text311"] = string.format(tThanksChickenTantivy_Text[25452]["Text311"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nData),tThanksChickenTantivy_Text["Capture"])
	return true
end
tNpcGossip[25452]["OptionFunc311"] = "ThanksChickenTantivy_BegainChangeTeam</N>25452"
--首次免费挑战二次确认
tNpcGossip[25452]["Text4-1"] = {411,412,413}
tNpcGossip[25452]["tOption4-1"] = {411,412}
tNpcGossip[25452]["ChkFunc4-1"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--全服当前挑战等级
	local nServerData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1
	
	tNpcGossip[25452]["Text411"] = string.format(tThanksChickenTantivy_Text[25452]["Text411"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nServerData),tThanksChickenTantivy_Text["Escape"])
	tNpcGossip[25452]["Text412"] = string.format(tThanksChickenTantivy_Text[25452]["Text412"],nServerData)
	return true
end
tNpcGossip[25452]["OptionFunc411"] = "ThanksChickenTantivy_BegainChangeTeam</N>25452"
--再次付费挑战二次确认
tNpcGossip[25452]["Text5-1"] = {511,512,513}
tNpcGossip[25452]["tOption5-1"] = {511,512}
tNpcGossip[25452]["ChkFunc5-1"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["NpcGlobal"][nNpcId]["Pos"]
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)

	tNpcGossip[25452]["Text511"] = string.format(tThanksChickenTantivy_Text[25452]["Text511"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nData),tThanksChickenTantivy_Text["Capture"])
	tNpcGossip[25452]["Text512"] = string.format(tThanksChickenTantivy_Text[25452]["Text512"],nData)
	return true
end
tNpcGossip[25452]["OptionFunc511"] = "ThanksChickenTantivy_BegainChangeTeam</N>25452"
--首次免费挑战二次确认
tNpcGossip[25452]["Text6-1"] = {611,612,613}
tNpcGossip[25452]["tOption6-1"] = {611,612}
tNpcGossip[25452]["ChkFunc6-1"] = function ()
	local nNpcId = Get_NpcId()
	
	local nGlobalId_All = tThanksChickenTantivy_Cont["AllGlobal"]["GlobalId"]
	local nPos_All = tThanksChickenTantivy_Cont["AllGlobal"]["Pos"]
	--是否被挑战
	local nData = Get_SysDynaGlobalData(nGlobalId_All,nPos_All) + 1

	tNpcGossip[25452]["Text611"] = string.format(tThanksChickenTantivy_Text[25452]["Text611"],string.format(tThanksChickenTantivy_Text["RankName"][nNpcId],nData),tThanksChickenTantivy_Text["Escape"])
	return true
end
tNpcGossip[25452]["OptionFunc611"] = "ThanksChickenTantivy_BegainChangeTeam</N>25452"

--仙灵藤不足
tNpcGossip[25452]["Text7-1"] = {711,712}
tNpcGossip[25452]["tOption7-1"] = {711,712}
--购买仙灵藤
tNpcGossip[25452]["Text8-1"] = {811,812}
tNpcGossip[25452]["tOption8-1"] = {811,812}



--排行榜
tNpcGossip[25452]["Text2-1"] = {211,212,213,2111,2112,2113,2114,2115,2116,2117,2118,2119,21110,214,215}
tNpcGossip[25452]["tOption2-1"]={211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[25452]["OptionChkFunc212"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25453]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25453]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc213"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25454]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25454]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc214"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25455]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25455]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc215"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25456]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25456]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc216"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25457]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25457]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc217"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25458]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25458]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc218"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25459]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25459]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc219"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25460]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25460]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionChkFunc2110"] = function()
	local nGlobalId = tThanksChickenTantivy_Cont["RecordNpc"][25462]["GlobalId"]
	local nPos = tThanksChickenTantivy_Cont["RecordNpc"][25462]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData == 0 then 
		return false
	else
		return true
	end
	
end
tNpcGossip[25452]["OptionFunc211"] = "ThanksChickenTantivy_FindNpc</N>25452"
tNpcGossip[25452]["OptionFunc212"] = "ThanksChickenTantivy_FindNpc</N>25453"
tNpcGossip[25452]["OptionFunc213"] = "ThanksChickenTantivy_FindNpc</N>25454"
tNpcGossip[25452]["OptionFunc214"] = "ThanksChickenTantivy_FindNpc</N>25455"
tNpcGossip[25452]["OptionFunc215"] = "ThanksChickenTantivy_FindNpc</N>25456"
tNpcGossip[25452]["OptionFunc216"] = "ThanksChickenTantivy_FindNpc</N>25457"
tNpcGossip[25452]["OptionFunc217"] = "ThanksChickenTantivy_FindNpc</N>25458"
tNpcGossip[25452]["OptionFunc218"] = "ThanksChickenTantivy_FindNpc</N>25459"
tNpcGossip[25452]["OptionFunc219"] = "ThanksChickenTantivy_FindNpc</N>25460"
tNpcGossip[25452]["OptionFunc2110"] = "ThanksChickenTantivy_FindNpc</N>25462"

tNpcGossip[25453]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25454]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25455]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25456]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25457]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25458]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25459]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25460]= tNpcGossip[25452] or DefaultNpc:new{}
tNpcGossip[25462]= tNpcGossip[25452] or DefaultNpc:new{}

---副本内NPC
tNpcGossip[25514]= tNpcGossip[25514] or DefaultNpc:new{}
tNpcGossip[25514]["DialogueText"] = tThanksChickenTantivy_Text[25514]
tNpcGossip[25514]["OptionHidden"] = 1
tNpcGossip[25514]["Text1-1"] = {111,112}
tNpcGossip[25514]["tOption1-1"] = {111}
tNpcGossip[25514]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25514"

tNpcGossip[25515]= tNpcGossip[25515] or DefaultNpc:new{}
tNpcGossip[25515]["DialogueText"] = tThanksChickenTantivy_Text[25515]
tNpcGossip[25515]["OptionHidden"] = 1
tNpcGossip[25515]["Text1-1"] = {111,112}
tNpcGossip[25515]["tOption1-1"] = {111}
tNpcGossip[25515]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25515"

tNpcGossip[25516]= tNpcGossip[25516] or DefaultNpc:new{}
tNpcGossip[25516]["DialogueText"] = tThanksChickenTantivy_Text[25516]
tNpcGossip[25516]["OptionHidden"] = 1
tNpcGossip[25516]["Text1-1"] = {111,112}
tNpcGossip[25516]["tOption1-1"] = {111}
tNpcGossip[25516]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25516"

tNpcGossip[25517]= tNpcGossip[25517] or DefaultNpc:new{}
tNpcGossip[25517]["DialogueText"] = tThanksChickenTantivy_Text[25517]
tNpcGossip[25517]["OptionHidden"] = 1
tNpcGossip[25517]["Text1-1"] = {111,112}
tNpcGossip[25517]["tOption1-1"] = {111}
tNpcGossip[25517]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25517"

tNpcGossip[25518]= tNpcGossip[25518] or DefaultNpc:new{}
tNpcGossip[25518]["DialogueText"] = tThanksChickenTantivy_Text[25518]
tNpcGossip[25518]["OptionHidden"] = 1
tNpcGossip[25518]["Text1-1"] = {111,112}
tNpcGossip[25518]["tOption1-1"] = {111}
tNpcGossip[25518]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25518"

tNpcGossip[25519]= tNpcGossip[25519] or DefaultNpc:new{}
tNpcGossip[25519]["DialogueText"] = tThanksChickenTantivy_Text[25519]
tNpcGossip[25519]["OptionHidden"] = 1
tNpcGossip[25519]["Text1-1"] = {111,112}
tNpcGossip[25519]["tOption1-1"] = {111}
tNpcGossip[25519]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25519"

tNpcGossip[25520]= tNpcGossip[25520] or DefaultNpc:new{}
tNpcGossip[25520]["DialogueText"] = tThanksChickenTantivy_Text[25520]
tNpcGossip[25520]["OptionHidden"] = 1
tNpcGossip[25520]["Text1-1"] = {111,112}
tNpcGossip[25520]["tOption1-1"] = {111}
tNpcGossip[25520]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25520"

tNpcGossip[25521]= tNpcGossip[25521] or DefaultNpc:new{}
tNpcGossip[25521]["DialogueText"] = tThanksChickenTantivy_Text[25521]
tNpcGossip[25521]["OptionHidden"] = 1
tNpcGossip[25521]["Text1-1"] = {111,112}
tNpcGossip[25521]["tOption1-1"] = {111}
tNpcGossip[25521]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25521"

tNpcGossip[25522]= tNpcGossip[25522] or DefaultNpc:new{}
tNpcGossip[25522]["DialogueText"] = tThanksChickenTantivy_Text[25522]
tNpcGossip[25522]["OptionHidden"] = 1
tNpcGossip[25522]["Text1-1"] = {111,112}
tNpcGossip[25522]["tOption1-1"] = {111}
tNpcGossip[25522]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25522"

tNpcGossip[25523]= tNpcGossip[25523] or DefaultNpc:new{}
tNpcGossip[25523]["DialogueText"] = tThanksChickenTantivy_Text[25523]
tNpcGossip[25523]["OptionHidden"] = 1
tNpcGossip[25523]["Text1-1"] = {111,112}
tNpcGossip[25523]["tOption1-1"] = {111}
tNpcGossip[25523]["OptionFunc111"] = "ThanksChickenTantivy_AddMonster</N>25523"

tNpcGossip[25624]= tNpcGossip[25624] or DefaultNpc:new{}
tNpcGossip[25624]["DialogueText"] = tThanksChickenTantivy_Text[25624]
tNpcGossip[25624]["OptionHidden"] = 1
tNpcGossip[25624]["Text1-1"] = {111}
tNpcGossip[25624]["tOption1-1"] = {111}
tNpcGossip[25624]["OptionFunc111"] = "ThanksChickenTantivy_ExitOS"

--------------------------------------------------------------------------------------------------------------------

tItemFace[3314318]=2630
tItem[3314318] = tItem[3314318] or {}
tItem[3314318]["DialogueText"] = tThanksChickenTantivy_Text[3314318]
tItem[3314318]["Text1-1"]={111}
tItem[3314318]["tOption1-1"]={111,112}
tItem[3314318]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314318</N>1"
tItem[3314318]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314318</N>2"

tItemFace[3314319]=2630
tItem[3314319] = tItem[3314319] or {}
tItem[3314319]["DialogueText"] = tThanksChickenTantivy_Text[3314319]
tItem[3314319]["Text1-1"]={111}
tItem[3314319]["tOption1-1"]={111,112}
tItem[3314319]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314319</N>1"
tItem[3314319]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314319</N>2"

tItemFace[3314320]=2630
tItem[3314320] = tItem[3314320] or {}
tItem[3314320]["DialogueText"] = tThanksChickenTantivy_Text[3314320]
tItem[3314320]["Text1-1"]={111}
tItem[3314320]["tOption1-1"]={111,112}
tItem[3314320]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314320</N>1"
tItem[3314320]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314320</N>2"

tItemFace[3314321]=2630
tItem[3314321] = tItem[3314321] or {}
tItem[3314321]["DialogueText"] = tThanksChickenTantivy_Text[3314321]
tItem[3314321]["Text1-1"]={111}
tItem[3314321]["tOption1-1"]={111,112}
tItem[3314321]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314321</N>1"
tItem[3314321]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314321</N>2"

tItemFace[3314322]=2630
tItem[3314322] = tItem[3314322] or {}
tItem[3314322]["DialogueText"] = tThanksChickenTantivy_Text[3314322]
tItem[3314322]["Text1-1"]={111}
tItem[3314322]["tOption1-1"]={111,112}
tItem[3314322]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314322</N>1"
tItem[3314322]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314322</N>2"

tItemFace[3314324]=2630
tItem[3314324] = tItem[3314324] or {}
tItem[3314324]["DialogueText"] = tThanksChickenTantivy_Text[3314324]
tItem[3314324]["Text1-1"]={111}
tItem[3314324]["tOption1-1"]={111,112}
tItem[3314324]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314324</N>1"
tItem[3314324]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314324</N>2"

tItemFace[3314325]=2630
tItem[3314325] = tItem[3314325] or {}
tItem[3314325]["DialogueText"] = tThanksChickenTantivy_Text[3314325]
tItem[3314325]["Text1-1"]={111}
tItem[3314325]["tOption1-1"]={111,112}
tItem[3314325]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314325</N>1"
tItem[3314325]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314325</N>2"

tItemFace[3314326]=2630
tItem[3314326] = tItem[3314326] or {}
tItem[3314326]["DialogueText"] = tThanksChickenTantivy_Text[3314326]
tItem[3314326]["Text1-1"]={111}
tItem[3314326]["tOption1-1"]={111,112}
tItem[3314326]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314326</N>1"
tItem[3314326]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314326</N>2"

tItemFace[3314327]=2630
tItem[3314327] = tItem[3314327] or {}
tItem[3314327]["DialogueText"] = tThanksChickenTantivy_Text[3314327]
tItem[3314327]["Text1-1"]={111}
tItem[3314327]["tOption1-1"]={111,112}
tItem[3314327]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314327</N>1"
tItem[3314327]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314327</N>2"

tItemFace[3314328]=2630
tItem[3314328] = tItem[3314328] or {}
tItem[3314328]["DialogueText"] = tThanksChickenTantivy_Text[3314328]
tItem[3314328]["Text1-1"]={111}
tItem[3314328]["tOption1-1"]={111,112}
tItem[3314328]["OptionFunc111"] = "ThanksChickenTantivy_OpenCoat</N>3314328</N>1"
tItem[3314328]["OptionFunc112"] = "ThanksChickenTantivy_OpenCoat</N>3314328</N>2"

----概率物品

tItem[3314330]=tItem[3314330]or{}
tItem[3314330]["Function"]=function(nItemId,sItemName)
	local nNeedSpace = RewardTemplate_GetRandomSpace(tThanksChickenTantivy_Reward,nItemId)
	if not User_CheckLeftSpace(nNeedSpace) then
		Sys_MsgBox(string.format(tThanksChickenTantivy_Text["NoSpace"],nNeedSpace))
		return
	end
	
	RewardTemplate_RandomReward(tThanksChickenTantivy_Reward,nItemId)
end
tItem[3314331]=tItem[3314330]
tItem[3314341]=tItem[3314330]

--排行榜礼盒
tItem[3314332]=tItem[3314332]or{}
tItem[3314332]["Function"]=function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tThanksChickenTantivy_Reward[nItemId])
end
tItem[3314333]=tItem[3314332]
tItem[3314334]=tItem[3314332]
tItem[3314335]=tItem[3314332]
tItem[3314336]=tItem[3314332]
tItem[3314337]=tItem[3314332]
tItem[3314338]=tItem[3314332]
tItem[3314339]=tItem[3314332]
tItem[3314340]=tItem[3314332]

--兑换物品自动寻路
tItem[3314314]=tItem[3314314]or{}
tItem[3314314]["Function"]=function(nItemId,sItemName)
	NpcPosition_PathFind(25451)
end
tItem[3314323]=tItem[3314314]


tItem[3314343]=tItem[3314343]or{}
tItem[3314343]["Function"]=function(nItemId,sItemName)
	local nSex = Get_UserSex()
	RewardTemplate_UseItem(tThanksChickenTantivy_Reward[nItemId][nSex])
end

tItem[3314315]=tItem[3314315]or{}
tItem[3314315]["Function"]=function(nItemId,sItemName)
	RewardTemplate_UseItem(tThanksChickenTantivy_Reward[nItemId][1])
end

-- tItemFace[3314315]=2667
-- tItem[3314315] = tItem[3314315] or {}
-- tItem[3314315]["DialogueText"] = tThanksChickenTantivy_Text[3314315]
-- tItem[3314315]["Text1-1"]={111,112,113,114,115}
-- tItem[3314315]["tOption1-1"]={111,112}
-- tItem[3314315]["OptionFunc111"] = "ThanksChickenTantivy_CompoundDebris</N>3314315</N>99</N>50"

-- tItem[3314315]["Text2-1"]={211}
-- tItem[3314315]["tOption2-1"]={211}

-- tItem[3314315]["Text3-1"]={311}
-- tItem[3314315]["tOption3-1"]={311,312}

tItem[3314314] = tItem[3314314] or {}
tItem[3314314]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]) then 
		
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
		
			local tReward = CommonFunc_Copy(tThanksChickenTantivy_Reward["OutTime"])
			tReward["RewardItem"][1]["Attr"]=string.format(tThanksChickenTantivy_Reward["OutTime"]["RewardItem"][1]["Attr"],nNum)
			RewardTemplate_UseItem(tReward)
			
			local sLog=string.format(tThanksChickenTantivy_Log["DelItem"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 	
	end 
end
tItem[3314323] = tItem[3314314] 
tItem[3314316] = tItem[3314314] 
tItem[3314317] = tItem[3314314] 

---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
tRankingFunc_Info[25450] = {}
tRankingFunc_Info[25450]["ActiveTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
tRankingFunc_Info[25450]["Global"] = {53846,53847,53848,53849}
tRankingFunc_Info[25450]["RankNum"] = 10
tRankingFunc_Info[25450]["Reset"] = 1
tRankingFunc_Info[25450]["RankMode"] = 1
tRankingFunc_Info[25450]["Mail"] = {}
tRankingFunc_Info[25450]["Mail"]["ActiveTime"] = tActivityTime["ThanksChickenTantivy"]["RankAwardTime"]
tRankingFunc_Info[25450]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[25450]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[25450]["Mail"]["HaveFunc"] = ThanksChickenTantivy_ReSetMailText
tRankingFunc_Info[25450]["Mail"]["Reward"] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["ActionId"] = 575076
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][1]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["ActionId"] = 575077
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][2]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["ActionId"] = 575077
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][3]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["ActionId"] = 575078
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][4]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["ActionId"] = 575078
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][5]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["ActionId"] = 575078
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][6]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["ActionId"] = 575079
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][7]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["ActionId"] = 575079
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][8]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["ActionId"] = 575079
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][9]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[25450]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["ActionId"] = 575079
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["Title"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["Sender"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[25450]["Mail"]["Reward"][10]["Content"] = tThanksChickenTantivy_Text["Mail"]["Total"]["Content"]



--------------------------------------时间自检-------------------------------------------
-- 8点移出NPC
-- local tThanksChickenTantivy_OnTime = {}
	-- tThanksChickenTantivy_OnTime[1] = {}
	-- tThanksChickenTantivy_OnTime[1]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
	-- tThanksChickenTantivy_OnTime[1]["Type"] = 2 
	-- tThanksChickenTantivy_OnTime[1]["TimeType"] = 4  -- 日时间
	-- tThanksChickenTantivy_OnTime[1]["Multiple"] = {}
	-- tThanksChickenTantivy_OnTime[1]["Multiple"][1] = "07:58 07:59"
	-- tThanksChickenTantivy_OnTime[1]["Func"] = ThanksChickenTantivy_MoveNpc
	-- table.insert(tSystemTime_InitialData,tThanksChickenTantivy_OnTime[1])
--凌晨移走NPC
	-- tThanksChickenTantivy_OnTime[2] = {}
	-- tThanksChickenTantivy_OnTime[2]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
	-- tThanksChickenTantivy_OnTime[2]["Type"] = 2 
	-- tThanksChickenTantivy_OnTime[2]["TimeType"] = 4  -- 日时间
	-- tThanksChickenTantivy_OnTime[2]["Multiple"] = {}
	-- tThanksChickenTantivy_OnTime[2]["Multiple"][1] = "00:00 00:02"
	-- tThanksChickenTantivy_OnTime[2]["Func"] = ThanksChickenTantivy_MoveNpcBack
	-- table.insert(tSystemTime_InitialData,tThanksChickenTantivy_OnTime[2])
--7点清楚数据
	-- tThanksChickenTantivy_OnTime[3] = {}
	-- tThanksChickenTantivy_OnTime[3]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
	-- tThanksChickenTantivy_OnTime[3]["Type"] = 2 
	-- tThanksChickenTantivy_OnTime[3]["TimeType"] = 4  -- 日时间
	-- tThanksChickenTantivy_OnTime[3]["Multiple"] = {}
	-- tThanksChickenTantivy_OnTime[3]["Multiple"][1] = "07:58 07:59"
	-- tThanksChickenTantivy_OnTime[3]["Func"] = ThanksChickenTantivy_ClearGlobal
	-- table.insert(tSystemTime_InitialData,tThanksChickenTantivy_OnTime[3])
-------------------------------怪物部分---------------------------------------------
-- 击杀神龙岛跟古神灵境怪物掉落
	-- local tThanksChickenTantivy_Monster = {}
	-- tThanksChickenTantivy_Monster["Function"] = ThanksChickenTantivy_KillMonster
	-- tThanksChickenTantivy_Monster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
	-- table.insert(tMonsterDrop_AreaLoad,tThanksChickenTantivy_Monster)
	-- 激情服击杀噩梦回廊怪物掉落
	-- local tThanksChickenTantivy_Monster_NoGift = {}
	-- tThanksChickenTantivy_Monster_NoGift["Function"] = ThanksChickenTantivy_KillMonster
	-- tThanksChickenTantivy_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThanksChickenTantivy_Monster_NoGift)

	-- local tThanksChickenTantivy_DroMonster = {}
	-- tThanksChickenTantivy_DroMonster[1] = {}
	--tThanksChickenTantivy_DroMonster[1]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"] 
	-- tThanksChickenTantivy_DroMonster[1]["Function"]=ThanksChickenTantivy_DroMonsterTeam
	-- tThanksChickenTantivy_DroMonster[1]["MonsterId"] = {5803,5804,5805,5806,5807,5808,5809,5810,5811,5812}
	-- table.insert(tMonsterDrop_AreaLoad,tThanksChickenTantivy_DroMonster[1])
	-- tThanksChickenTantivy_DroMonster[2] = {}
	--tThanksChickenTantivy_DroMonster[2]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"] 
	-- tThanksChickenTantivy_DroMonster[2]["Function"]=ThanksChickenTantivy_DroWeakMonster
	-- tThanksChickenTantivy_DroMonster[2]["MonsterId"] = {5813,5814,5815,5816,5817,5818,5819,5820,5821}
	-- table.insert(tMonsterDrop_AreaLoad,tThanksChickenTantivy_DroMonster[2])
-------------------------------服务器启动	
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],ThanksChickenTantivy_MoveNpc)
--上线触发
-- table.insert(tSystem_PlayLogin_Func,ThanksChickenTantivy_Login)


-- 动态存储表清零
-- tGlobalData_Info[53804] = {}
-- tGlobalData_Info[53804]["Time"] = {}
-- tGlobalData_Info[53804]["Time"]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
-- tGlobalData_Info[53804]["Time"]["ClearTime"] = {}
-- tGlobalData_Info[53804]["Time"]["ClearTime"][1] = "00:00 00:02"
-- tGlobalData_Info[53804]["Time"]["ClearTime"][2] = "07:58 07:59"
-- tGlobalData_Info[53804]["Rest"] = {}
-- tGlobalData_Info[53804]["Rest"]["GlobalId"] = {53803,53804}
-- tGlobalData_Info[53804]["Rest"]["Pos"] = {1,2,3,4,5}

-- 动态存储表清零
-- tGlobalData_Info[53881] = {}
-- tGlobalData_Info[53881]["Time"] = {}
-- tGlobalData_Info[53881]["Time"]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
-- tGlobalData_Info[53881]["Time"]["ClearTime"] = {}
-- tGlobalData_Info[53881]["Time"]["ClearTime"][1] = "00:00 00:02"
-- tGlobalData_Info[53881]["Time"]["ClearTime"][2] = "07:58 07:59"
-- tGlobalData_Info[53881]["Rest"] = {}
-- tGlobalData_Info[53881]["Rest"]["GlobalId"] = {53881,53882,53920,53921}
-- tGlobalData_Info[53881]["Rest"]["Pos"] = {0,1,2,3,4,5}

--九宫格陷阱
tTrap[218] = tTrap[218] or {}
tTrap[218]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	Sys_MsgBox(tThanksChickenTantivy_Text["ChgMap"],"ThanksChickenTantivy_GoBack",nil,nUserId)
end