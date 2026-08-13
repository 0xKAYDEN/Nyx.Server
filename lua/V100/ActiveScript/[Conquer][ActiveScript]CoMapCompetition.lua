------------------------------------------------------------------------------------
--Name:		180702[英文征服][活动脚本]7月第一届CO地图争霸活动
--Purpose:	7月第一届CO地图争霸活动
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
-- 前缀：CoMapCompetition_

-- logid：12001111

-- 掩码：
-- 179 54 记入提交武力勋章个数
-- 179 55 记入提交财富勋章个数
-- 179 56 记入提交人气勋章个数

------------------------------------------------------------------------------------
--基础数据
local tCoMapCompetition_Cont = {}

--活动时间
tCoMapCompetition_Cont["BefTime"] = tActivityTime["CoMapCompetition"]["BefTime"]
tCoMapCompetition_Cont["ActTime"] = tActivityTime["CoMapCompetition"]["ActTime"]
tCoMapCompetition_Cont["EUActTime"] = tActivityTime["CoMapCompetition"]["EUActTime"]
tCoMapCompetition_Cont["ThumbsUpActTime"] = tActivityTime["CoMapCompetition"]["ThumbsUpActTime"]

tCoMapCompetition_Cont["ItemId"] = {}
tCoMapCompetition_Cont["ItemId"][1]= 3309765
tCoMapCompetition_Cont["ItemId"][2]= 3309991
tCoMapCompetition_Cont["ItemId"][3]= 3309992

tCoMapCompetition_Cont["GlobalId"] = 52768
tCoMapCompetition_Cont["EUOrNAGlobalId"] = 52938
--网页链接
tCoMapCompetition_Cont["WebLink"] = "https://coevent.99.com/infiniteconquest"
--npc位置
local tCoMapCompetition_position ={}
tCoMapCompetition_position["NpcId"] = 22662
tCoMapCompetition_position["MapId"] = 1002
tCoMapCompetition_position["PosX"] = 355
tCoMapCompetition_position["PosY"] = 461

local tCoMapCompetition_Stc = {}

tCoMapCompetition_Stc[1] = {}
tCoMapCompetition_Stc[1]["EventType"] = 182
tCoMapCompetition_Stc[1]["DataType"] = 65


tCoMapCompetition_Stc[3309765] = {}
tCoMapCompetition_Stc[3309765]["EventType"] = 179
tCoMapCompetition_Stc[3309765]["DataType"] = 54

tCoMapCompetition_Stc[3309991] = {}
tCoMapCompetition_Stc[3309991]["EventType"] = 179
tCoMapCompetition_Stc[3309991]["DataType"] = 55

tCoMapCompetition_Stc[3309992] = {}
tCoMapCompetition_Stc[3309992]["EventType"] = 179
tCoMapCompetition_Stc[3309992]["DataType"] = 56

tCoMapCompetition_Stc[3007309] = {}
tCoMapCompetition_Stc[3007309]["EventType"] = 179
tCoMapCompetition_Stc[3007309]["DataType"] = 79
tCoMapCompetition_Stc[3007309]["Data"] = 8

tCoMapCompetition_Stc[3007308] = {}
tCoMapCompetition_Stc[3007308]["EventType"] = 179
tCoMapCompetition_Stc[3007308]["DataType"] = 80
tCoMapCompetition_Stc[3007308]["Data"] = 8
--组队大众pk
tCoMapCompetition_Stc[721300] = {}
tCoMapCompetition_Stc[721300]["EventType"] = 179
tCoMapCompetition_Stc[721300]["DataType"] = 81
tCoMapCompetition_Stc[721300]["Data"] = 1

tCoMapCompetition_Stc[721301] = {}
tCoMapCompetition_Stc[721301]["EventType"] = 179
tCoMapCompetition_Stc[721301]["DataType"] = 81
tCoMapCompetition_Stc[721301]["Data"] = 2

tCoMapCompetition_Stc[721302] = {}
tCoMapCompetition_Stc[721302]["EventType"] = 179
tCoMapCompetition_Stc[721302]["DataType"] = 81
tCoMapCompetition_Stc[721302]["Data"] = 4

tCoMapCompetition_Stc[721303] = {}
tCoMapCompetition_Stc[721303]["EventType"] = 179
tCoMapCompetition_Stc[721303]["DataType"] = 81
tCoMapCompetition_Stc[721303]["Data"] = 8

tCoMapCompetition_Stc[721304] = {}
tCoMapCompetition_Stc[721304]["EventType"] = 179
tCoMapCompetition_Stc[721304]["DataType"] = 81
tCoMapCompetition_Stc[721304]["Data"] = 16

tCoMapCompetition_Stc[721305] = {}
tCoMapCompetition_Stc[721305]["EventType"] = 179
tCoMapCompetition_Stc[721305]["DataType"] = 81
tCoMapCompetition_Stc[721305]["Data"] = 32

tCoMapCompetition_Stc[721306] = {}
tCoMapCompetition_Stc[721306]["EventType"] = 179
tCoMapCompetition_Stc[721306]["DataType"] = 81
tCoMapCompetition_Stc[721306]["Data"] = 64

tCoMapCompetition_Stc[721307] = {}
tCoMapCompetition_Stc[721307]["EventType"] = 179
tCoMapCompetition_Stc[721307]["DataType"] = 81
tCoMapCompetition_Stc[721307]["Data"] = 128

tCoMapCompetition_Stc[721308] = {}
tCoMapCompetition_Stc[721308]["EventType"] = 179
tCoMapCompetition_Stc[721308]["DataType"] = 82
tCoMapCompetition_Stc[721308]["Data"] = 1

tCoMapCompetition_Stc[721309] = {}
tCoMapCompetition_Stc[721309]["EventType"] = 179
tCoMapCompetition_Stc[721309]["DataType"] = 82
tCoMapCompetition_Stc[721309]["Data"] = 2

tCoMapCompetition_Stc[721310] = {}
tCoMapCompetition_Stc[721310]["EventType"] = 179
tCoMapCompetition_Stc[721310]["DataType"] = 82
tCoMapCompetition_Stc[721310]["Data"] = 4

tCoMapCompetition_Stc[721311] = {}
tCoMapCompetition_Stc[721311]["EventType"] = 179
tCoMapCompetition_Stc[721311]["DataType"] = 82
tCoMapCompetition_Stc[721311]["Data"] = 8

tCoMapCompetition_Stc[721312] = {}
tCoMapCompetition_Stc[721312]["EventType"] = 179
tCoMapCompetition_Stc[721312]["DataType"] = 82
tCoMapCompetition_Stc[721312]["Data"] = 16

tCoMapCompetition_Stc[721313] = {}
tCoMapCompetition_Stc[721313]["EventType"] = 179
tCoMapCompetition_Stc[721313]["DataType"] = 82
tCoMapCompetition_Stc[721313]["Data"] = 32

tCoMapCompetition_Stc[721314] = {}
tCoMapCompetition_Stc[721314]["EventType"] = 179
tCoMapCompetition_Stc[721314]["DataType"] = 82
tCoMapCompetition_Stc[721314]["Data"] = 64

tCoMapCompetition_Stc[721315] = {}
tCoMapCompetition_Stc[721315]["EventType"] = 179
tCoMapCompetition_Stc[721315]["DataType"] = 82
tCoMapCompetition_Stc[721315]["Data"] = 128

--精英pk
tCoMapCompetition_Stc[720714] = {}
tCoMapCompetition_Stc[720714]["EventType"] = 179
tCoMapCompetition_Stc[720714]["DataType"] = 83
tCoMapCompetition_Stc[720714]["Data"] = 1

tCoMapCompetition_Stc[720715] = {}
tCoMapCompetition_Stc[720715]["EventType"] = 179
tCoMapCompetition_Stc[720715]["DataType"] = 83
tCoMapCompetition_Stc[720715]["Data"] = 2

tCoMapCompetition_Stc[720716] = {}
tCoMapCompetition_Stc[720716]["EventType"] = 179
tCoMapCompetition_Stc[720716]["DataType"] = 83
tCoMapCompetition_Stc[720716]["Data"] = 4

tCoMapCompetition_Stc[720717] = {}
tCoMapCompetition_Stc[720717]["EventType"] = 179
tCoMapCompetition_Stc[720717]["DataType"] = 83
tCoMapCompetition_Stc[720717]["Data"] = 8

tCoMapCompetition_Stc[720718] = {}
tCoMapCompetition_Stc[720718]["EventType"] = 179
tCoMapCompetition_Stc[720718]["DataType"] = 83
tCoMapCompetition_Stc[720718]["Data"] = 16

tCoMapCompetition_Stc[720719] = {}
tCoMapCompetition_Stc[720719]["EventType"] = 179
tCoMapCompetition_Stc[720719]["DataType"] = 83
tCoMapCompetition_Stc[720719]["Data"] = 32

tCoMapCompetition_Stc[720720] = {}
tCoMapCompetition_Stc[720720]["EventType"] = 179
tCoMapCompetition_Stc[720720]["DataType"] = 83
tCoMapCompetition_Stc[720720]["Data"] = 64

tCoMapCompetition_Stc[720721] = {}
tCoMapCompetition_Stc[720721]["EventType"] = 179
tCoMapCompetition_Stc[720721]["DataType"] = 83
tCoMapCompetition_Stc[720721]["Data"] = 128

tCoMapCompetition_Stc[720722] = {}
tCoMapCompetition_Stc[720722]["EventType"] = 179
tCoMapCompetition_Stc[720722]["DataType"] = 84
tCoMapCompetition_Stc[720722]["Data"] = 1

tCoMapCompetition_Stc[720723] = {}
tCoMapCompetition_Stc[720723]["EventType"] = 179
tCoMapCompetition_Stc[720723]["DataType"] = 84
tCoMapCompetition_Stc[720723]["Data"] = 2

tCoMapCompetition_Stc[720724] = {}
tCoMapCompetition_Stc[720724]["EventType"] = 179
tCoMapCompetition_Stc[720724]["DataType"] = 84
tCoMapCompetition_Stc[720724]["Data"] = 4

tCoMapCompetition_Stc[720725] = {}
tCoMapCompetition_Stc[720725]["EventType"] = 179
tCoMapCompetition_Stc[720725]["DataType"] = 84
tCoMapCompetition_Stc[720725]["Data"] = 8

tCoMapCompetition_Stc[720726] = {}
tCoMapCompetition_Stc[720726]["EventType"] = 179
tCoMapCompetition_Stc[720726]["DataType"] = 84
tCoMapCompetition_Stc[720726]["Data"] = 16

tCoMapCompetition_Stc[720727] = {}
tCoMapCompetition_Stc[720727]["EventType"] = 179
tCoMapCompetition_Stc[720727]["DataType"] = 84
tCoMapCompetition_Stc[720727]["Data"] = 32

tCoMapCompetition_Stc[720728] = {}
tCoMapCompetition_Stc[720728]["EventType"] = 179
tCoMapCompetition_Stc[720728]["DataType"] = 84
tCoMapCompetition_Stc[720728]["Data"] = 64

tCoMapCompetition_Stc[720729] = {}
tCoMapCompetition_Stc[720729]["EventType"] = 179
tCoMapCompetition_Stc[720729]["DataType"] = 84
tCoMapCompetition_Stc[720729]["Data"] = 128

--组队pk
tCoMapCompetition_Stc[720794] = {}
tCoMapCompetition_Stc[720794]["EventType"] = 179
tCoMapCompetition_Stc[720794]["DataType"] = 85
tCoMapCompetition_Stc[720794]["Data"] = 1

tCoMapCompetition_Stc[720795] = {}
tCoMapCompetition_Stc[720795]["EventType"] = 179
tCoMapCompetition_Stc[720795]["DataType"] = 85
tCoMapCompetition_Stc[720795]["Data"] = 2

tCoMapCompetition_Stc[720796] = {}
tCoMapCompetition_Stc[720796]["EventType"] = 179
tCoMapCompetition_Stc[720796]["DataType"] = 85
tCoMapCompetition_Stc[720796]["Data"] = 4

tCoMapCompetition_Stc[720797] = {}
tCoMapCompetition_Stc[720797]["EventType"] = 179
tCoMapCompetition_Stc[720797]["DataType"] = 85
tCoMapCompetition_Stc[720797]["Data"] = 8

tCoMapCompetition_Stc[720798] = {}
tCoMapCompetition_Stc[720798]["EventType"] = 179
tCoMapCompetition_Stc[720798]["DataType"] = 85
tCoMapCompetition_Stc[720798]["Data"] = 16

tCoMapCompetition_Stc[720799] = {}
tCoMapCompetition_Stc[720799]["EventType"] = 179
tCoMapCompetition_Stc[720799]["DataType"] = 85
tCoMapCompetition_Stc[720799]["Data"] = 32

tCoMapCompetition_Stc[720800] = {}
tCoMapCompetition_Stc[720800]["EventType"] = 179
tCoMapCompetition_Stc[720800]["DataType"] = 85
tCoMapCompetition_Stc[720800]["Data"] = 64

tCoMapCompetition_Stc[720801] = {}
tCoMapCompetition_Stc[720801]["EventType"] = 179
tCoMapCompetition_Stc[720801]["DataType"] = 85
tCoMapCompetition_Stc[720801]["Data"] = 128

tCoMapCompetition_Stc[720802] = {}
tCoMapCompetition_Stc[720802]["EventType"] = 179
tCoMapCompetition_Stc[720802]["DataType"] = 86
tCoMapCompetition_Stc[720802]["Data"] = 1

tCoMapCompetition_Stc[720803] = {}
tCoMapCompetition_Stc[720803]["EventType"] = 179
tCoMapCompetition_Stc[720803]["DataType"] = 86
tCoMapCompetition_Stc[720803]["Data"] = 2

tCoMapCompetition_Stc[720804] = {}
tCoMapCompetition_Stc[720804]["EventType"] = 179
tCoMapCompetition_Stc[720804]["DataType"] = 86
tCoMapCompetition_Stc[720804]["Data"] = 4

tCoMapCompetition_Stc[720805] = {}
tCoMapCompetition_Stc[720805]["EventType"] = 179
tCoMapCompetition_Stc[720805]["DataType"] = 86
tCoMapCompetition_Stc[720805]["Data"] = 8

tCoMapCompetition_Stc[720806] = {}
tCoMapCompetition_Stc[720806]["EventType"] = 179
tCoMapCompetition_Stc[720806]["DataType"] = 86
tCoMapCompetition_Stc[720806]["Data"] = 16

tCoMapCompetition_Stc[720807] = {}
tCoMapCompetition_Stc[720807]["EventType"] = 179
tCoMapCompetition_Stc[720807]["DataType"] = 86
tCoMapCompetition_Stc[720807]["Data"] = 32

tCoMapCompetition_Stc[720808] = {}
tCoMapCompetition_Stc[720808]["EventType"] = 179
tCoMapCompetition_Stc[720808]["DataType"] = 86
tCoMapCompetition_Stc[720808]["Data"] = 64

tCoMapCompetition_Stc[720809] = {}
tCoMapCompetition_Stc[720809]["EventType"] = 179
tCoMapCompetition_Stc[720809]["DataType"] = 86
tCoMapCompetition_Stc[720809]["Data"] = 128

-- 职业PK赛
tCoMapCompetition_Stc[3307012] = {}
tCoMapCompetition_Stc[3307012]["EventType"] = 179
tCoMapCompetition_Stc[3307012]["DataType"] = 87
tCoMapCompetition_Stc[3307012]["Data"] = 1

tCoMapCompetition_Stc[3307013] = {}
tCoMapCompetition_Stc[3307013]["EventType"] = 179
tCoMapCompetition_Stc[3307013]["DataType"] = 87
tCoMapCompetition_Stc[3307013]["Data"] = 2

tCoMapCompetition_Stc[3307014] = {}
tCoMapCompetition_Stc[3307014]["EventType"] = 179
tCoMapCompetition_Stc[3307014]["DataType"] = 87
tCoMapCompetition_Stc[3307014]["Data"] = 4

tCoMapCompetition_Stc[3307015] = {}
tCoMapCompetition_Stc[3307015]["EventType"] = 179
tCoMapCompetition_Stc[3307015]["DataType"] = 87
tCoMapCompetition_Stc[3307015]["Data"] = 8


local tCoMapCompetition_Reward = {}
	-- 竞技场礼包 ArenaEXPPack 723912 9240900 1个武力勋章
	tCoMapCompetition_Reward["Marble"] = {}
	tCoMapCompetition_Reward["Marble"][1] = {}
	tCoMapCompetition_Reward["Marble"][1]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][1]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCoMapCompetition_Reward["Marble"][1]["Log"] = "0,0,723912,1,12001111,2,3309765,1"
	
	-- 组队竞技场礼包 TeamArenaPack 720954 9240800 1个武力勋章
	tCoMapCompetition_Reward["Marble"][2] = {}
	tCoMapCompetition_Reward["Marble"][2]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][2]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][2]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCoMapCompetition_Reward["Marble"][2]["Log"] = "0,0,720954,1,12001111,2,3309765,1"
	--组队大众pk 各个冠军礼包
	tCoMapCompetition_Reward["Marble"][3] = {}
	tCoMapCompetition_Reward["Marble"][3]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][3]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][3]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][3]["RewardItem"][1]["Attr"] = "0 30"
	tCoMapCompetition_Reward["Marble"][3]["Log"] = "0,0,0,1,12001111,1[1],3309765,30"
	--组队大众pk 各个亚军礼包
	tCoMapCompetition_Reward["Marble"][4] = {}
	tCoMapCompetition_Reward["Marble"][4]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][4]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][4]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][4]["RewardItem"][1]["Attr"] = "0 20"
	tCoMapCompetition_Reward["Marble"][4]["Log"] = "0,0,0,1,12001111,1[2],3309765,20"
	--组队大众pk 各个季军礼包
	tCoMapCompetition_Reward["Marble"][5] = {}
	tCoMapCompetition_Reward["Marble"][5]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][5]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][5]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][5]["RewardItem"][1]["Attr"] = "0 15"
	tCoMapCompetition_Reward["Marble"][5]["Log"] = "0,0,0,1,12001111,1[3],3309765,15"
	--组队大众pk 各个八强礼包
	tCoMapCompetition_Reward["Marble"][6] = {}
	tCoMapCompetition_Reward["Marble"][6]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][6]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][6]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][6]["RewardItem"][1]["Attr"] = "0 10"
	tCoMapCompetition_Reward["Marble"][6]["Log"] = "0,0,0,1,12001111,1[4],3309765,10"
	
	--职业pk
	tCoMapCompetition_Reward["Marble"][7] = {}
	tCoMapCompetition_Reward["Marble"][7]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][7]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][7]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][7]["RewardItem"][1]["Attr"] = "0 20"
	tCoMapCompetition_Reward["Marble"][7]["Log"] = "0,0,0,1,12001111,1[5],3309765,20"
	
	--骑马大赛第一名
	tCoMapCompetition_Reward["Marble"][8] = {}
	tCoMapCompetition_Reward["Marble"][8]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][8]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][8]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][8]["RewardItem"][1]["Attr"] = "0 5"
	tCoMapCompetition_Reward["Marble"][8]["Log"] = "0,0,0,0,12001111,1[6],3309765,5"

	--骑马大赛第二名到第十名
	tCoMapCompetition_Reward["Marble"][9] = {}
	tCoMapCompetition_Reward["Marble"][9]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][9]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][9]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][9]["RewardItem"][1]["Attr"] = "0 3"
	tCoMapCompetition_Reward["Marble"][9]["Log"] = "0,0,0,0,12001111,1[7],3309765,3"
	
	--骑马大赛第二名到第十名
	tCoMapCompetition_Reward["Marble"][10] = {}
	tCoMapCompetition_Reward["Marble"][10]["RewardItem"] = {}
	tCoMapCompetition_Reward["Marble"][10]["RewardItem"][1] = {}
	tCoMapCompetition_Reward["Marble"][10]["RewardItem"][1]["Id"] = 3309765
	tCoMapCompetition_Reward["Marble"][10]["RewardItem"][1]["Attr"] = "0 1"
	tCoMapCompetition_Reward["Marble"][10]["Log"] = "0,0,0,0,12001111,1[8],3309765,3"
	
	
	tCoMapCompetition_Reward[3310101]={}
	tCoMapCompetition_Reward[3310101][1]={}
	tCoMapCompetition_Reward[3310101][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310101][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310101][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310101][1]["DeleteItem"][1]["Id"] = 3310101
	tCoMapCompetition_Reward[3310101][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310101][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310101][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310101][1]["RewardItem"][1]["Attr"] = "0 1"
	tCoMapCompetition_Reward[3310101][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310101][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310102]={}
	tCoMapCompetition_Reward[3310102][1]={}
	tCoMapCompetition_Reward[3310102][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310102][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310102][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310102][1]["DeleteItem"][1]["Id"] = 3310102
	tCoMapCompetition_Reward[3310102][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310102][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310102][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310102][1]["RewardItem"][1]["Attr"] = "0 2"
	tCoMapCompetition_Reward[3310102][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310102][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310103]={}
	tCoMapCompetition_Reward[3310103][1]={}
	tCoMapCompetition_Reward[3310103][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310103][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310103][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310103][1]["DeleteItem"][1]["Id"] = 3310103
	tCoMapCompetition_Reward[3310103][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310103][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310103][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310103][1]["RewardItem"][1]["Attr"] = "0 3"
	tCoMapCompetition_Reward[3310103][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310103][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310104]={}
	tCoMapCompetition_Reward[3310104][1]={}
	tCoMapCompetition_Reward[3310104][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310104][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310104][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310104][1]["DeleteItem"][1]["Id"] = 3310104
	tCoMapCompetition_Reward[3310104][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310104][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310104][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310104][1]["RewardItem"][1]["Attr"] = "0 4"
	tCoMapCompetition_Reward[3310104][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310104][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310105]={}
	tCoMapCompetition_Reward[3310105][1]={}
	tCoMapCompetition_Reward[3310105][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310105][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310105][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310105][1]["DeleteItem"][1]["Id"] = 3310105
	tCoMapCompetition_Reward[3310105][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310105][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310105][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310105][1]["RewardItem"][1]["Attr"] = "0 5"
	tCoMapCompetition_Reward[3310105][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310105][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310106]={}
	tCoMapCompetition_Reward[3310106][1]={}
	tCoMapCompetition_Reward[3310106][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310106][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310106][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310106][1]["DeleteItem"][1]["Id"] = 3310106
	tCoMapCompetition_Reward[3310106][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310106][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310106][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310106][1]["RewardItem"][1]["Attr"] = "0 8"
	tCoMapCompetition_Reward[3310106][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310106][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310107]={}
	tCoMapCompetition_Reward[3310107][1]={}
	tCoMapCompetition_Reward[3310107][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310107][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310107][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310107][1]["DeleteItem"][1]["Id"] = 3310107
	tCoMapCompetition_Reward[3310107][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310107][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310107][1]["RewardItem"][1]["Id"] = 3309991
	tCoMapCompetition_Reward[3310107][1]["RewardItem"][1]["Attr"] = "0 10"
	tCoMapCompetition_Reward[3310107][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310107][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310108]={}
	tCoMapCompetition_Reward[3310108][1]={}
	tCoMapCompetition_Reward[3310108][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310108][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310108][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310108][1]["DeleteItem"][1]["Id"] = 3310108
	tCoMapCompetition_Reward[3310108][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310108][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310108][1]["RewardItem"][1]["Id"] = 3309992
	tCoMapCompetition_Reward[3310108][1]["RewardItem"][1]["Attr"] = "0 1"
	tCoMapCompetition_Reward[3310108][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310108][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310109]={}
	tCoMapCompetition_Reward[3310109][1]={}
	tCoMapCompetition_Reward[3310109][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310109][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310109][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310109][1]["DeleteItem"][1]["Id"] = 3310109
	tCoMapCompetition_Reward[3310109][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310109][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310109][1]["RewardItem"][1]["Id"] = 3309992
	tCoMapCompetition_Reward[3310109][1]["RewardItem"][1]["Attr"] = "0 2"
	tCoMapCompetition_Reward[3310109][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310109][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310110]={}
	tCoMapCompetition_Reward[3310110][1]={}
	tCoMapCompetition_Reward[3310110][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310110][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310110][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310110][1]["DeleteItem"][1]["Id"] = 3310110
	tCoMapCompetition_Reward[3310110][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310110][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310110][1]["RewardItem"][1]["Id"] = 3309992
	tCoMapCompetition_Reward[3310110][1]["RewardItem"][1]["Attr"] = "0 4"
	tCoMapCompetition_Reward[3310110][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310110][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward[3310111]={}
	tCoMapCompetition_Reward[3310111][1]={}
	tCoMapCompetition_Reward[3310111][1]["LogId"] = 12001111
	tCoMapCompetition_Reward[3310111][1]["DeleteItem"] = {}
	tCoMapCompetition_Reward[3310111][1]["DeleteItem"][1] = {}
	tCoMapCompetition_Reward[3310111][1]["DeleteItem"][1]["Id"] = 3310111
	tCoMapCompetition_Reward[3310111][1]["RewardItem"] = {}
	tCoMapCompetition_Reward[3310111][1]["RewardItem"][1] = {}
	tCoMapCompetition_Reward[3310111][1]["RewardItem"][1]["Id"] = 3309992
	tCoMapCompetition_Reward[3310111][1]["RewardItem"][1]["Attr"] = "0 6"
	tCoMapCompetition_Reward[3310111][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward[3310111][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tCoMapCompetition_Reward["ThumbsUp"]={}
	tCoMapCompetition_Reward["ThumbsUp"][1]={}
	tCoMapCompetition_Reward["ThumbsUp"][1]["LogId"] = 12001111
	tCoMapCompetition_Reward["ThumbsUp"][1]["RewardStrengthValue"] = {}
	tCoMapCompetition_Reward["ThumbsUp"][1]["RewardStrengthValue"]["Value"] = 10
	tCoMapCompetition_Reward["ThumbsUp"][1]["RewardEffect"] = {}
	tCoMapCompetition_Reward["ThumbsUp"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
--统计个数
local tCoMapCompetition_log = {}
tCoMapCompetition_log[3309765] = "0,0,3309765,1,12001111,0,0,%d"
tCoMapCompetition_log[3309991] = "0,0,3309991,1,12001111,0,0,%d"
tCoMapCompetition_log[3309992] = "0,0,3309992,1,12001111,0,0,%d"
--物品过期log
local tCoMapCompetition_OutTimelog = {}
-- tCoMapCompetition_OutTimelog[3309765] = "0,0,3309765,%d,12001111,0,0,0"
-- tCoMapCompetition_OutTimelog[3309991] = "0,0,3309991,%d,12001111,0,0,0"
-- tCoMapCompetition_OutTimelog[3309992] = "0,0,3309992,%d,12001111,0,0,0"
tCoMapCompetition_OutTimelog["OutTime"] = "0,0,%d,%d,12001111,0,0,0"

--
local tCoMapCompetition_Emoneylog = {}
tCoMapCompetition_Emoneylog[3309765] = "350	21493	0	0	%d	"
tCoMapCompetition_Emoneylog[3309991] = "350	21494	0	0	%d	"
tCoMapCompetition_Emoneylog[3309992] = "350	21495	0	0	%d	"


-------------------------npc逻辑-----------------------------------

function CoMapCompetition_ChkBagItem(nItemId)
	local nGlobalId = tCoMapCompetition_Cont["EUOrNAGlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nData == 1 then
		if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
			return false
		end
	else
		if not Sys_ChkFullTime(tCoMapCompetition_Cont["EUActTime"]) then
			return false
		end
	end
	
	if Item_ChkItem(nItemId) then
		return true
	else
		return false
	end
end

function CoMapCompetition_CommitMedal(nNpcId,nItemId)
	--活动时间
	-- if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	
	local nGlobalId = tCoMapCompetition_Cont["EUOrNAGlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nData == 1 then
		if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	else
		if not Sys_ChkFullTime(tCoMapCompetition_Cont["EUActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	--判断是否有勋章
	if not Item_ChkItem(nItemId) then
		return
	else
		local nEvent = tCoMapCompetition_Stc[nItemId]["EventType"]
		local nType = tCoMapCompetition_Stc[nItemId]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nUserId = Get_UserId()
		
		local nMedalNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nMedalNum) and Item_DelMulItem(nItemId,nItemId,nMedalNum) then
			nData = nData + nMedalNum
			Task_SetStatistic(nEvent,nType,nData,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			local sItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tCoMapCompetition_Text["TalkSubmit"],nMedalNum,sItemName))
			Sys_SaveEmoneyBuy(string.format(tCoMapCompetition_Emoneylog[nItemId],nData))
			Sys_SaveActionTaskLog(string.format(tCoMapCompetition_log[nItemId],nData))
		end
	end
end

--修改礼包产出，活动武力勋章
function CoMapCompetition_Pack(nItemId,nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		return
	end
	
	local nEvent = tCoMapCompetition_Stc[nItemId]["EventType"]
	local nType = tCoMapCompetition_Stc[nItemId]["DataType"]
	local nData = tCoMapCompetition_Stc[nItemId]["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if nItemId == 3007308 or nItemId == 3007309 then
		if Task_ChkStcValue(nEvent,nType,">=",nData) then
			return
		end
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		local nValue = Get_UserStatisticValue(nEvent,nType)
		if Sys_ParseNumbersContain(tCoMapCompetition_Stc[nItemId]["Data"],nValue) then
			return
		end
		Task_AddStatistic(nEvent,nType,nData,1,0)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	RewardTemplate_UseItemAndMsg(tCoMapCompetition_Reward["Marble"][nIndex])
end


function CoMapCompetition_RideArriveTerminal(nUserId)
	-- 判断时间
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		return
	end
	
	local nGlobalId = tCoMapCompetition_Cont["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nData == 0 then
		nData =1
		
	else
		nData = nData +1
	end
	
	if nData == 1 then
		RewardTemplate_Reward(tCoMapCompetition_Reward["Marble"][8],nUserId)
	elseif nData > 10 then
		RewardTemplate_Reward(tCoMapCompetition_Reward["Marble"][10],nUserId)
	else
		RewardTemplate_Reward(tCoMapCompetition_Reward["Marble"][9],nUserId)
	end
	
	Sys_SetSynaGlobalData(nGlobalId,0,nData)
	
end

function CoMapCompetition_ClearGlobal()
	--活动时间
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		return
	end
	
	local nGlobalId = tCoMapCompetition_Cont["GlobalId"]
	Sys_SetSynaGlobalData(nGlobalId,0,0)

end

--网页链接
function CoMapCompetition_WebLink()
	local sWebAddress = tCoMapCompetition_Cont["WebLink"]
	User_SendWebPage(sWebAddress)
end

function CoMapCompetition_ThumbsUp(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ThumbsUpActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEvent = tCoMapCompetition_Stc[1]["EventType"]
	local nType = tCoMapCompetition_Stc[1]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",10) then
			return
	end
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	RewardTemplate_Reward(tCoMapCompetition_Reward["ThumbsUp"][1])
end
------------------------物品逻辑-----------------------------------
--过期删除物品
function CoMapCompetition_UseDeletItem(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tCoMapCompetition_Text["ItemTimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCoMapCompetition_OutTimelog["OutTime"],nItemId,nItemNum))
		end
		return
	end
	
	local nMapId = tCoMapCompetition_position["MapId"]
	local nPosX = tCoMapCompetition_position["PosX"]
	local nPosY = tCoMapCompetition_position["PosY"]
	local nGotoNpcId = tCoMapCompetition_position["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nGotoNpcId)
	
end

function CoMapCompetition_UseItem(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tCoMapCompetition_Text["ItemTimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCoMapCompetition_OutTimelog["OutTime"],nItemId,nItemNum))
		end
		return
	end
	
	RewardTemplate_UseItemAndMsg(tCoMapCompetition_Reward[nItemId][1])
end


-------------------------npc模板-----------------------------------
tNpcFace[1193] = 94
tNpcGossip[23078] = tNpcGossip[23078] or DefaultNpc:new{}
tNpcGossip[23078]["OptionHidden"] = 1
tNpcGossip[23078]["DialogueText"] = tCoMapCompetition_Text[23078]

-- 活动前
tNpcGossip[23078]["Text1-1"] = {111,112}
tNpcGossip[23078]["tOption1-1"] = {111}
tNpcGossip[23078]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCoMapCompetition_Cont["BefTime"])
end

--活动后
tNpcGossip[23078]["Text1-2"] = {121}
tNpcGossip[23078]["tOption1-2"] = {121}
tNpcGossip[23078]["ChkFunc1-2"] = function ()
	local nGlobalId = tCoMapCompetition_Cont["EUOrNAGlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nData == 1 then
		return not Sys_ChkFullTime(tCoMapCompetition_Cont["ActTime"])
	else
		return not Sys_ChkFullTime(tCoMapCompetition_Cont["EUActTime"])
	end

end


--活动中
tNpcGossip[23078]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23078]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23078]["OptionFunc131"] = "CoMapCompetition_CommitMedal</N>23078</N>3309765"
tNpcGossip[23078]["OptionFunc132"] = "CoMapCompetition_CommitMedal</N>23078</N>3309991"
tNpcGossip[23078]["OptionFunc133"] = "CoMapCompetition_CommitMedal</N>23078</N>3309992"
tNpcGossip[23078]["OptionFunc134"] = "CoMapCompetition_WebLink"
tNpcGossip[23078]["OptionChkFunc131"] = function ()
	local nItemId = tCoMapCompetition_Cont["ItemId"][1]
	return CoMapCompetition_ChkBagItem(nItemId)
end
tNpcGossip[23078]["OptionChkFunc132"] = function ()
	local nItemId = tCoMapCompetition_Cont["ItemId"][2]
	return CoMapCompetition_ChkBagItem(nItemId)
end
tNpcGossip[23078]["OptionChkFunc133"] = function ()
	local nItemId = tCoMapCompetition_Cont["ItemId"][3]
	return CoMapCompetition_ChkBagItem(nItemId)
end


tNpcFace[6197] = 21
tNpcFace[6198] = 21
tNpcFace[6199] = 21
tNpcFace[6200] = 21
tNpcFace[6201] = 21
tNpcFace[6202] = 21
tNpcFace[6203] = 21
tNpcFace[6204] = 21
tNpcFace[6205] = 21
tNpcFace[6206] = 21
tNpcFace[6207] = 21
tNpcFace[6208] = 21
tNpcFace[6209] = 21
tNpcFace[6210] = 21
tNpcFace[6211] = 21

tNpcGossip[23226] = tNpcGossip[23226] or DefaultNpc:new{}
tNpcGossip[23226]["OptionHidden"] = 1
tNpcGossip[23226]["DialogueText"] = tCoMapCompetition_Text[23226]

-- 活动前
tNpcGossip[23226]["Text1-1"] = {111,112}
tNpcGossip[23226]["tOption1-1"] = {111}
tNpcGossip[23226]["OptionFunc111"] = "CoMapCompetition_ThumbsUp</N>23226"
tNpcGossip[23226]["ChkFunc1-1"] = function ()
	-- 判断时间
	if not Sys_ChkFullTime(tCoMapCompetition_Cont["ThumbsUpActTime"]) then
		return false
	
	else
		local nEvent = tCoMapCompetition_Stc[1]["EventType"]
		local nType = tCoMapCompetition_Stc[1]["DataType"]
		
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		
		local nValue = Get_UserStatisticValue(nEvent,nType)
		tNpcGossip[23226]["Text112"] = string.format(tCoMapCompetition_Text[23226]["Text112"],(10-nValue))
		
		return true
	end
end


--活动后
tNpcGossip[23226]["Text2-1"] = {211}
tNpcGossip[23226]["tOption2-1"] = {211}

tNpcGossip[23227] = tNpcGossip[23226]
tNpcGossip[23228] = tNpcGossip[23226]
tNpcGossip[23229] = tNpcGossip[23226]
tNpcGossip[23230] = tNpcGossip[23226]
tNpcGossip[23231] = tNpcGossip[23226]
tNpcGossip[23232] = tNpcGossip[23226]
tNpcGossip[23233] = tNpcGossip[23226]
tNpcGossip[23234] = tNpcGossip[23226]
tNpcGossip[23235] = tNpcGossip[23226]
tNpcGossip[23236] = tNpcGossip[23226]
tNpcGossip[23237] = tNpcGossip[23226]
tNpcGossip[23238] = tNpcGossip[23226]
tNpcGossip[23239] = tNpcGossip[23226]
tNpcGossip[23240] = tNpcGossip[23226]


---------------------------物品模板----------------------
tItemFace[3310092] = 685
tItem[3309765] = tItem[3309765] or {}
tItem[3309765]["Function"] = function(nItemId,sItemName)
	CoMapCompetition_UseDeletItem(nItemId)
end

tItem[3309991] = tItem[3309765] or {}
tItem[3309992] = tItem[3309765] or {}

tItem[3310101] = tItem[3310101] or {}
tItem[3310101]["Function"] = function(nItemId,sItemName)
	CoMapCompetition_UseItem(nItemId)
end

tItem[3310102] = tItem[3310101] or {}
tItem[3310103] = tItem[3310101] or {}
tItem[3310104] = tItem[3310101] or {}
tItem[3310105] = tItem[3310101] or {}
tItem[3310106] = tItem[3310101] or {}
tItem[3310107] = tItem[3310101] or {}
tItem[3310108] = tItem[3310101] or {}
tItem[3310109] = tItem[3310101] or {}
tItem[3310110] = tItem[3310101] or {}
tItem[3310111] = tItem[3310101] or {}

------------------------------------------------------------------------------------------------
-- 骑宠，玩家冲过终点是触发
tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
table.insert(tRideArrive["tFunction"],CoMapCompetition_RideArriveTerminal)


--------------------------------时间自检--------------------------------------
-- 清理全局表
local tCoMapCompetition_ClearGlobal = {}
	tCoMapCompetition_ClearGlobal[1] = {}
	tCoMapCompetition_ClearGlobal[1]["TimeType"] = 4
	tCoMapCompetition_ClearGlobal[1]["Time"] = "00:00 00:05"
	tCoMapCompetition_ClearGlobal[1]["Func"] = CoMapCompetition_ClearGlobal
	tCoMapCompetition_ClearGlobal[2] = {}
	tCoMapCompetition_ClearGlobal[2]["TimeType"] = 4
	tCoMapCompetition_ClearGlobal[2]["Time"] = "14:00 14:05"
	tCoMapCompetition_ClearGlobal[2]["Func"] = CoMapCompetition_ClearGlobal
table.insert(tSystemTime_InitialData,tCoMapCompetition_ClearGlobal[1])
table.insert(tSystemTime_InitialData,tCoMapCompetition_ClearGlobal[2])