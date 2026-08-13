------------------------------------------------------------------------------------
--Name：            191119[简体征服][活动脚本]全球圣诞元旦活动之堆雪人
--Creator:      蔡颖静
--Created:     2019/11/19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid:12001753
--lua.ini:41640

----------------------------------表配置部分--------------------------------------------
local tMakeSnowman_Data={}

tMakeSnowman_Data["Stc"]={}
tMakeSnowman_Data["Stc"]["TimeEvent"]=210
tMakeSnowman_Data["Stc"]["TimeType"]=64

tMakeSnowman_Data["Global"]={}
tMakeSnowman_Data["Global"]["Id"]=53993
tMakeSnowman_Data["Global"]["ProcessId"]=53994

tMakeSnowman_Data["Global"]["Pos"]={}
tMakeSnowman_Data["Global"]["Pos"][25663]=0
tMakeSnowman_Data["Global"]["Pos"][25664]=0
tMakeSnowman_Data["Global"]["Pos"][25665]=0

tMakeSnowman_Data["Global"]["Pos"][25696]=0
tMakeSnowman_Data["Global"]["Pos"][25697]=0
tMakeSnowman_Data["Global"]["Pos"][25698]=0

tMakeSnowman_Data["Global"]["Pos"][25708]=0
tMakeSnowman_Data["Global"]["Pos"][25709]=0
tMakeSnowman_Data["Global"]["Pos"][25710]=0

tMakeSnowman_Data["Global"]["Pos"][25720]=0
tMakeSnowman_Data["Global"]["Pos"][25721]=0
tMakeSnowman_Data["Global"]["Pos"][25722]=0

tMakeSnowman_Data["Global"]["Pos"][25666]=1
tMakeSnowman_Data["Global"]["Pos"][25667]=1
tMakeSnowman_Data["Global"]["Pos"][25668]=1

tMakeSnowman_Data["Global"]["Pos"][25699]=1
tMakeSnowman_Data["Global"]["Pos"][25700]=1
tMakeSnowman_Data["Global"]["Pos"][25701]=1

tMakeSnowman_Data["Global"]["Pos"][25711]=1
tMakeSnowman_Data["Global"]["Pos"][25712]=1
tMakeSnowman_Data["Global"]["Pos"][25713]=1

tMakeSnowman_Data["Global"]["Pos"][25723]=1
tMakeSnowman_Data["Global"]["Pos"][25724]=1
tMakeSnowman_Data["Global"]["Pos"][25725]=1

tMakeSnowman_Data["Global"]["Pos"][25669]=2
tMakeSnowman_Data["Global"]["Pos"][25670]=2
tMakeSnowman_Data["Global"]["Pos"][25671]=2

tMakeSnowman_Data["Global"]["Pos"][25702]=2
tMakeSnowman_Data["Global"]["Pos"][25703]=2
tMakeSnowman_Data["Global"]["Pos"][25704]=2

tMakeSnowman_Data["Global"]["Pos"][25714]=2
tMakeSnowman_Data["Global"]["Pos"][25715]=2
tMakeSnowman_Data["Global"]["Pos"][25716]=2

tMakeSnowman_Data["Global"]["Pos"][25726]=2
tMakeSnowman_Data["Global"]["Pos"][25727]=2
tMakeSnowman_Data["Global"]["Pos"][25728]=2

tMakeSnowman_Data["Global"]["Pos"][25672]=3
tMakeSnowman_Data["Global"]["Pos"][25673]=3
tMakeSnowman_Data["Global"]["Pos"][25674]=3

tMakeSnowman_Data["Global"]["Pos"][25705]=3
tMakeSnowman_Data["Global"]["Pos"][25706]=3
tMakeSnowman_Data["Global"]["Pos"][25707]=3

tMakeSnowman_Data["Global"]["Pos"][25717]=3
tMakeSnowman_Data["Global"]["Pos"][25718]=3
tMakeSnowman_Data["Global"]["Pos"][25719]=3

tMakeSnowman_Data["Global"]["Pos"][25729]=3
tMakeSnowman_Data["Global"]["Pos"][25730]=3
tMakeSnowman_Data["Global"]["Pos"][25731]=3

tMakeSnowman_Data["Task"]={}
tMakeSnowman_Data["Task"]["MakeSnowmanTask"]={}
tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]=35066

--data1 玩家堆雪人次数
--data2 是否已采集
--data3 玩家采集次数
--data5 玩家领奖情况
-- tMakeSnowman_Data["Task"]["UserInfo"]={}
-- tMakeSnowman_Data["Task"]["UserInfo"]["Id"]=35067

--语种对应id,pos
tMakeSnowman_Data["TaskAndPosAndData"]={}
tMakeSnowman_Data["TaskAndPosAndData"][25663]={}
tMakeSnowman_Data["TaskAndPosAndData"][25663][500]={35067,1,1}
tMakeSnowman_Data["TaskAndPosAndData"][25663][1000]={35067,1,2}
tMakeSnowman_Data["TaskAndPosAndData"][25664]={}
tMakeSnowman_Data["TaskAndPosAndData"][25664][500]={35067,1,1}
tMakeSnowman_Data["TaskAndPosAndData"][25664][1000]={35067,1,2}
tMakeSnowman_Data["TaskAndPosAndData"][25665]={}
tMakeSnowman_Data["TaskAndPosAndData"][25665][500]={35067,1,1}
tMakeSnowman_Data["TaskAndPosAndData"][25665][1000]={35067,1,2}

tMakeSnowman_Data["TaskAndPosAndData"][25666]={}
tMakeSnowman_Data["TaskAndPosAndData"][25666][500]={35067,2,1}
tMakeSnowman_Data["TaskAndPosAndData"][25666][1000]={35067,2,2}
tMakeSnowman_Data["TaskAndPosAndData"][25667]={}
tMakeSnowman_Data["TaskAndPosAndData"][25667][500]={35067,2,1}
tMakeSnowman_Data["TaskAndPosAndData"][25667][1000]={35067,2,2}
tMakeSnowman_Data["TaskAndPosAndData"][25668]={}
tMakeSnowman_Data["TaskAndPosAndData"][25668][500]={35067,2,1}
tMakeSnowman_Data["TaskAndPosAndData"][25668][1000]={35067,2,2}

tMakeSnowman_Data["TaskAndPosAndData"][25669]={}
tMakeSnowman_Data["TaskAndPosAndData"][25669][500]={35067,4,1}
tMakeSnowman_Data["TaskAndPosAndData"][25669][1000]={35067,4,2}
tMakeSnowman_Data["TaskAndPosAndData"][25670]={}
tMakeSnowman_Data["TaskAndPosAndData"][25670][500]={35067,4,1}
tMakeSnowman_Data["TaskAndPosAndData"][25670][1000]={35067,4,2}
tMakeSnowman_Data["TaskAndPosAndData"][25671]={}
tMakeSnowman_Data["TaskAndPosAndData"][25671][500]={35067,4,1}
tMakeSnowman_Data["TaskAndPosAndData"][25671][1000]={35067,4,2}

tMakeSnowman_Data["TaskAndPosAndData"][25672]={}
tMakeSnowman_Data["TaskAndPosAndData"][25672][500]={35067,5,1}
tMakeSnowman_Data["TaskAndPosAndData"][25672][1000]={35067,5,2}
tMakeSnowman_Data["TaskAndPosAndData"][25673]={}
tMakeSnowman_Data["TaskAndPosAndData"][25673][500]={35067,5,1}
tMakeSnowman_Data["TaskAndPosAndData"][25673][1000]={35067,5,2}
tMakeSnowman_Data["TaskAndPosAndData"][25674]={}
tMakeSnowman_Data["TaskAndPosAndData"][25674][500]={35067,5,1}
tMakeSnowman_Data["TaskAndPosAndData"][25674][1000]={35067,5,2}
--雪人id

--主会场
tMakeSnowman_Data["SnowmanId"]={}

tMakeSnowman_Data["SnowmanId"][10601]={}
tMakeSnowman_Data["SnowmanId"][10601][1]={25663,25664,25665}
tMakeSnowman_Data["SnowmanId"][10601][2]={25666,25667,25668}
tMakeSnowman_Data["SnowmanId"][10601][3]={25669,25670,25671}
tMakeSnowman_Data["SnowmanId"][10601][4]={25672,25673,25674}

--分会场1
tMakeSnowman_Data["SnowmanId"][10736]={}
tMakeSnowman_Data["SnowmanId"][10736][1]={25696,25697,25698}
tMakeSnowman_Data["SnowmanId"][10736][2]={25699,25700,25701}
tMakeSnowman_Data["SnowmanId"][10736][3]={25702,25703,25704}
tMakeSnowman_Data["SnowmanId"][10736][4]={25705,25706,25707}

--分会场2
tMakeSnowman_Data["SnowmanId"][10737]={}
tMakeSnowman_Data["SnowmanId"][10737][1]={25708,25709,25710}
tMakeSnowman_Data["SnowmanId"][10737][2]={25711,25712,25713}
tMakeSnowman_Data["SnowmanId"][10737][3]={25714,25715,25716}
tMakeSnowman_Data["SnowmanId"][10737][4]={25717,25718,25719}

--本服
tMakeSnowman_Data["SnowmanId"][10735]={}
tMakeSnowman_Data["SnowmanId"][10735][1]={25720,25721,25722}
tMakeSnowman_Data["SnowmanId"][10735][2]={25723,25724,25725}
tMakeSnowman_Data["SnowmanId"][10735][3]={25726,25727,25728}
tMakeSnowman_Data["SnowmanId"][10735][4]={25729,25730,25731}


--雪人位置
tMakeSnowman_Data["SnowmanPos"]={}

tMakeSnowman_Data["SnowmanPos"][10601]={}
--中文
tMakeSnowman_Data["SnowmanPos"][10601][1]={}
tMakeSnowman_Data["SnowmanPos"][10601][1]["MapID"]=10601
tMakeSnowman_Data["SnowmanPos"][10601][1]["PosX"]=79
tMakeSnowman_Data["SnowmanPos"][10601][1]["PosY"]=116

--英文
tMakeSnowman_Data["SnowmanPos"][10601][2]={}
tMakeSnowman_Data["SnowmanPos"][10601][2]["MapID"]=10601
tMakeSnowman_Data["SnowmanPos"][10601][2]["PosX"]=89
tMakeSnowman_Data["SnowmanPos"][10601][2]["PosY"]=125

--西语
tMakeSnowman_Data["SnowmanPos"][10601][3]={}
tMakeSnowman_Data["SnowmanPos"][10601][3]["MapID"]=10601
tMakeSnowman_Data["SnowmanPos"][10601][3]["PosX"]=85
tMakeSnowman_Data["SnowmanPos"][10601][3]["PosY"]=109

--阿语
tMakeSnowman_Data["SnowmanPos"][10601][4]={}
tMakeSnowman_Data["SnowmanPos"][10601][4]["MapID"]=10601
tMakeSnowman_Data["SnowmanPos"][10601][4]["PosX"]=96
tMakeSnowman_Data["SnowmanPos"][10601][4]["PosY"]=118

tMakeSnowman_Data["SnowmanPos"][10736]={}
--中文
tMakeSnowman_Data["SnowmanPos"][10736][1]={}
tMakeSnowman_Data["SnowmanPos"][10736][1]["MapID"]=10736
tMakeSnowman_Data["SnowmanPos"][10736][1]["PosX"]=79
tMakeSnowman_Data["SnowmanPos"][10736][1]["PosY"]=116

--英文
tMakeSnowman_Data["SnowmanPos"][10736][2]={}
tMakeSnowman_Data["SnowmanPos"][10736][2]["MapID"]=10736
tMakeSnowman_Data["SnowmanPos"][10736][2]["PosX"]=89
tMakeSnowman_Data["SnowmanPos"][10736][2]["PosY"]=125

--西语
tMakeSnowman_Data["SnowmanPos"][10736][3]={}
tMakeSnowman_Data["SnowmanPos"][10736][3]["MapID"]=10736
tMakeSnowman_Data["SnowmanPos"][10736][3]["PosX"]=85
tMakeSnowman_Data["SnowmanPos"][10736][3]["PosY"]=109

--阿语
tMakeSnowman_Data["SnowmanPos"][10736][4]={}
tMakeSnowman_Data["SnowmanPos"][10736][4]["MapID"]=10736
tMakeSnowman_Data["SnowmanPos"][10736][4]["PosX"]=96
tMakeSnowman_Data["SnowmanPos"][10736][4]["PosY"]=118

tMakeSnowman_Data["SnowmanPos"][10737]={}
--中文
tMakeSnowman_Data["SnowmanPos"][10737][1]={}
tMakeSnowman_Data["SnowmanPos"][10737][1]["MapID"]=10737
tMakeSnowman_Data["SnowmanPos"][10737][1]["PosX"]=79
tMakeSnowman_Data["SnowmanPos"][10737][1]["PosY"]=116

--英文
tMakeSnowman_Data["SnowmanPos"][10737][2]={}
tMakeSnowman_Data["SnowmanPos"][10737][2]["MapID"]=10737
tMakeSnowman_Data["SnowmanPos"][10737][2]["PosX"]=89
tMakeSnowman_Data["SnowmanPos"][10737][2]["PosY"]=125

--西语
tMakeSnowman_Data["SnowmanPos"][10737][3]={}
tMakeSnowman_Data["SnowmanPos"][10737][3]["MapID"]=10737
tMakeSnowman_Data["SnowmanPos"][10737][3]["PosX"]=85
tMakeSnowman_Data["SnowmanPos"][10737][3]["PosY"]=109

--阿语
tMakeSnowman_Data["SnowmanPos"][10737][4]={}
tMakeSnowman_Data["SnowmanPos"][10737][4]["MapID"]=10737
tMakeSnowman_Data["SnowmanPos"][10737][4]["PosX"]=96
tMakeSnowman_Data["SnowmanPos"][10737][4]["PosY"]=118

tMakeSnowman_Data["SnowmanPos"][10735]={}
--中文
tMakeSnowman_Data["SnowmanPos"][10735][1]={}
tMakeSnowman_Data["SnowmanPos"][10735][1]["MapID"]=10735
tMakeSnowman_Data["SnowmanPos"][10735][1]["PosX"]=79
tMakeSnowman_Data["SnowmanPos"][10735][1]["PosY"]=116

--英文
tMakeSnowman_Data["SnowmanPos"][10735][2]={}
tMakeSnowman_Data["SnowmanPos"][10735][2]["MapID"]=10735
tMakeSnowman_Data["SnowmanPos"][10735][2]["PosX"]=89
tMakeSnowman_Data["SnowmanPos"][10735][2]["PosY"]=125

--西语
tMakeSnowman_Data["SnowmanPos"][10735][3]={}
tMakeSnowman_Data["SnowmanPos"][10735][3]["MapID"]=10735
tMakeSnowman_Data["SnowmanPos"][10735][3]["PosX"]=85
tMakeSnowman_Data["SnowmanPos"][10735][3]["PosY"]=109

--阿语
tMakeSnowman_Data["SnowmanPos"][10735][4]={}
tMakeSnowman_Data["SnowmanPos"][10735][4]["MapID"]=10735
tMakeSnowman_Data["SnowmanPos"][10735][4]["PosX"]=96
tMakeSnowman_Data["SnowmanPos"][10735][4]["PosY"]=118

--语种对应的npcid
tMakeSnowman_Data["NationToNpc"] = {}
tMakeSnowman_Data["NationToNpc"][1] = {25663,25664,25665,25696,25697,25698,25708,25709,25710,25720,25721,25722}
tMakeSnowman_Data["NationToNpc"][2] = {25666,25667,25668,25699,25700,25701,25711,25712,25713,25729,25730,25731}
tMakeSnowman_Data["NationToNpc"][3] = {25669,25670,25671,25702,25703,25704,25714,25715,25716,25726,25727,25728}
tMakeSnowman_Data["NationToNpc"][4] = {25672,25673,25674,25705,25706,25707,25717,25718,25719,25729,25730,25731}

tMakeSnowman_Data["NpcToNpc"] = {}
tMakeSnowman_Data["NpcToNpc"][10601]={}
tMakeSnowman_Data["NpcToNpc"][10736]={}
tMakeSnowman_Data["NpcToNpc"][10737]={}
tMakeSnowman_Data["NpcToNpc"][10735]={}

tMakeSnowman_Data["NpcToNpc"][10601][25663]=25663
tMakeSnowman_Data["NpcToNpc"][10601][25664]=25664
tMakeSnowman_Data["NpcToNpc"][10601][25665]=25665

tMakeSnowman_Data["NpcToNpc"][10736][25663]=25696
tMakeSnowman_Data["NpcToNpc"][10736][25664]=25697
tMakeSnowman_Data["NpcToNpc"][10736][25665]=25698

tMakeSnowman_Data["NpcToNpc"][10737][25663]=25708
tMakeSnowman_Data["NpcToNpc"][10737][25664]=25709
tMakeSnowman_Data["NpcToNpc"][10737][25665]=25710

tMakeSnowman_Data["NpcToNpc"][10735][25663]=25720
tMakeSnowman_Data["NpcToNpc"][10735][25664]=25721
tMakeSnowman_Data["NpcToNpc"][10735][25665]=25722


tMakeSnowman_Data["NpcToNpc"][10601][25666]=25666
tMakeSnowman_Data["NpcToNpc"][10601][25667]=25667
tMakeSnowman_Data["NpcToNpc"][10601][25668]=25668

tMakeSnowman_Data["NpcToNpc"][10736][25666]=25699
tMakeSnowman_Data["NpcToNpc"][10736][25667]=25700
tMakeSnowman_Data["NpcToNpc"][10736][25668]=25701

tMakeSnowman_Data["NpcToNpc"][10737][25666]=25711
tMakeSnowman_Data["NpcToNpc"][10737][25667]=25712
tMakeSnowman_Data["NpcToNpc"][10737][25668]=25713

tMakeSnowman_Data["NpcToNpc"][10735][25666]=25723
tMakeSnowman_Data["NpcToNpc"][10735][25667]=25724
tMakeSnowman_Data["NpcToNpc"][10735][25668]=25725


tMakeSnowman_Data["NpcToNpc"][10601][25669]=25669
tMakeSnowman_Data["NpcToNpc"][10601][25670]=25670
tMakeSnowman_Data["NpcToNpc"][10601][25671]=25671

tMakeSnowman_Data["NpcToNpc"][10736][25669]=25702
tMakeSnowman_Data["NpcToNpc"][10736][25670]=25703
tMakeSnowman_Data["NpcToNpc"][10736][25671]=25704

tMakeSnowman_Data["NpcToNpc"][10737][25669]=25714
tMakeSnowman_Data["NpcToNpc"][10737][25670]=25715
tMakeSnowman_Data["NpcToNpc"][10737][25671]=25716

tMakeSnowman_Data["NpcToNpc"][10735][25669]=25726
tMakeSnowman_Data["NpcToNpc"][10735][25670]=25727
tMakeSnowman_Data["NpcToNpc"][10735][25671]=25728

tMakeSnowman_Data["NpcToNpc"][10601][25672]=25672
tMakeSnowman_Data["NpcToNpc"][10601][25673]=25673
tMakeSnowman_Data["NpcToNpc"][10601][25674]=25674

tMakeSnowman_Data["NpcToNpc"][10736][25672]=25705
tMakeSnowman_Data["NpcToNpc"][10736][25673]=25706
tMakeSnowman_Data["NpcToNpc"][10736][25674]=25707

tMakeSnowman_Data["NpcToNpc"][10737][25672]=25717
tMakeSnowman_Data["NpcToNpc"][10737][25673]=25718
tMakeSnowman_Data["NpcToNpc"][10737][25674]=25719

tMakeSnowman_Data["NpcToNpc"][10735][25672]=25729
tMakeSnowman_Data["NpcToNpc"][10735][25673]=25730
tMakeSnowman_Data["NpcToNpc"][10735][25674]=25731

tMakeSnowman_Data["Loading"]={}
tMakeSnowman_Data["Loading"]["Secs"] = 2
tMakeSnowman_Data["Loading"]["ActionId"] = 200

-- ===500进度奖励 中文
-- ===索引:tMakeSnowman_Data["Reward"][500][1]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"] = {}
tMakeSnowman_Data["Reward"][500] = {}
tMakeSnowman_Data["Reward"][500][1] = {}
tMakeSnowman_Data["Reward"][500][1]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][500][1]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][2]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】【中文】圣诞帽
tMakeSnowman_Data["Reward"][500][1]["RewardItem"][2]["Attr"] = "0 5" --  3600198 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][500][1]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][500][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][500][1]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][500][2] = {}
-- ===500进度奖励 英文
-- ===索引:tMakeSnowman_Data["Reward"][500][2]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][500][2]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][500][2]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][2]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】【英文】圣诞帽
tMakeSnowman_Data["Reward"][500][2]["RewardItem"][2]["Attr"] = "0 5" --  3600199 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][500][2]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][500][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][500][2]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][500][3] = {}
-- ===500进度奖励 西语
-- ===索引:tMakeSnowman_Data["Reward"][500][3]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][500][3]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][500][3]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][2]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】【西语】圣诞帽
tMakeSnowman_Data["Reward"][500][3]["RewardItem"][2]["Attr"] = "0 5" --  3600201 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][500][3]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][500][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][500][3]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][500][4] = {}
-- ===500进度奖励 阿语
-- ===索引:tMakeSnowman_Data["Reward"][500][4]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][500][4]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][500][4]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][2]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】【阿语】圣诞帽
tMakeSnowman_Data["Reward"][500][4]["RewardItem"][2]["Attr"] = "0 5" --  3600200 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][500][4]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][500][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][500][4]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1000] = {}
-- ===1000进度奖励 中文
-- ===索引:tMakeSnowman_Data["Reward"][1000][1]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1000][1] = {}
tMakeSnowman_Data["Reward"][1000][1]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][1]["Attr"] = "0 2" --  3600197 【库里没有该物品】*2
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][2]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】【中文】圣诞帽
tMakeSnowman_Data["Reward"][1000][1]["RewardItem"][2]["Attr"] = "0 5" --  3600198 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][1000][1]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1000][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1000][1]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1000][2] = {}
-- ===1000进度奖励 英文
-- ===索引:tMakeSnowman_Data["Reward"][1000][2]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1000][2]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][1]["Attr"] = "0 2" --  3600197 【库里没有该物品】*2
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][2]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】【英文】圣诞帽
tMakeSnowman_Data["Reward"][1000][2]["RewardItem"][2]["Attr"] = "0 5" --  3600199 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][1000][2]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1000][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1000][2]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1000][3] = {}
-- ===1000进度奖励 西语
-- ===索引:tMakeSnowman_Data["Reward"][1000][3]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1000][3]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][1]["Attr"] = "0 2" --  3600197 【库里没有该物品】*2
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][2]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】【西语】圣诞帽
tMakeSnowman_Data["Reward"][1000][3]["RewardItem"][2]["Attr"] = "0 5" --  3600201 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][1000][3]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1000][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1000][3]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1000][4] = {}
-- ===1000进度奖励 阿语
-- ===索引:tMakeSnowman_Data["Reward"][1000][4]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1000][4]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][1]["Attr"] = "0 2" --  3600197 【库里没有该物品】*2
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][2]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】【阿语】圣诞帽
tMakeSnowman_Data["Reward"][1000][4]["RewardItem"][2]["Attr"] = "0 5" --  3600200 【库里没有该物品】*5
tMakeSnowman_Data["Reward"][1000][4]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1000][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1000][4]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1500] = {}
-- ===全部进度奖励 中文
-- ===索引:tMakeSnowman_Data["Reward"][1500][1]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1500][1] = {}
tMakeSnowman_Data["Reward"][1500][1]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][1]["Attr"] = "0 3" --  3600197 【库里没有该物品】*3
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][2]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】【中文】圣诞帽
tMakeSnowman_Data["Reward"][1500][1]["RewardItem"][2]["Attr"] = "0 10" --  3600198 【库里没有该物品】*10
tMakeSnowman_Data["Reward"][1500][1]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1500][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1500][1]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1500][2] = {}
-- ===全部进度奖励 英文
-- ===索引:tMakeSnowman_Data["Reward"][1500][2]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1500][2]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][1]["Attr"] = "0 3" --  3600197 【库里没有该物品】*3
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][2]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】【英文】圣诞帽
tMakeSnowman_Data["Reward"][1500][2]["RewardItem"][2]["Attr"] = "0 10" --  3600199 【库里没有该物品】*10
tMakeSnowman_Data["Reward"][1500][2]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1500][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1500][2]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1500][3] = {}
-- ===全部进度奖励 西语
-- ===索引:tMakeSnowman_Data["Reward"][1500][3]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1500][3]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][1]["Attr"] = "0 3" --  3600197 【库里没有该物品】*3
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][2]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】【 西语】圣诞帽
tMakeSnowman_Data["Reward"][1500][3]["RewardItem"][2]["Attr"] = "0 10" --  3600201 【库里没有该物品】*10
tMakeSnowman_Data["Reward"][1500][3]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1500][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1500][3]["RewardEffect"]["Effect"] = "angelwing"


tMakeSnowman_Data["Reward"][1500][4] = {}
-- ===全部进度奖励 阿语
-- ===索引:tMakeSnowman_Data["Reward"][1500][4]
-- ===
-- ===
-- ===
tMakeSnowman_Data["Reward"][1500][4]["LogId"] = 12001753
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"] = {}
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][1] = {}
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][1]["Attr"] = "0 3" --  3600197 【库里没有该物品】*3
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][2] = {}
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][2]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】【阿语】圣诞帽
tMakeSnowman_Data["Reward"][1500][4]["RewardItem"][2]["Attr"] = "0 10" --  3600200 【库里没有该物品】*10
tMakeSnowman_Data["Reward"][1500][4]["RewardEffect"] = {}
tMakeSnowman_Data["Reward"][1500][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["Reward"][1500][4]["RewardEffect"]["Effect"] = "angelwing"


--雪人坐标索引
-- tMakeSnowman_Data["SnowmanBuilt"]={}


tMakeSnowman_Data["ChristmasGirl"]={}
tMakeSnowman_Data["ChristmasGirl"][10601]=25662
tMakeSnowman_Data["ChristmasGirl"][10736]=25684
tMakeSnowman_Data["ChristmasGirl"][10737]=25685
tMakeSnowman_Data["ChristmasGirl"][10735]=25686

--每日给自己语种堆雪人，可以获得1个惊喜礼包
tMakeSnowman_Data["JoinReward"] = {}
tMakeSnowman_Data["JoinReward"]["LogId"] = 12001753
tMakeSnowman_Data["JoinReward"]["RewardItem"] = {}
tMakeSnowman_Data["JoinReward"]["RewardItem"][1] = {}
tMakeSnowman_Data["JoinReward"]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】圣诞礼袜
tMakeSnowman_Data["JoinReward"]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
tMakeSnowman_Data["JoinReward"]["RewardEffect"] = {}
tMakeSnowman_Data["JoinReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMakeSnowman_Data["JoinReward"]["RewardEffect"]["Effect"] = "angelwing"


--玩家idtask
tMakeSnowman_Data["UserIdTask"] = 35062

----------------------------------逻辑部分---------------------------------------------
--判断当前雪人标志位
function MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
	local nPos = 0
	local nUserMap=Get_UserMapId(nUserId)
	-- local nNewNpcId = tMakeSnowman_Data["NpcToNpc"][nUserMap][nNpcId]

	for i = 1 , 4 do 
		for j , v in ipairs (tMakeSnowman_Data["SnowmanId"][10601][i]) do 
			if v == nNpcId then 
				nPos = i
			end 
		end 
	end 
	
	return nPos
end 

function MakeSnowman_MakeSnowmanLoading(nNpcId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId = Get_UserId()
	local nNation = User_ChkLanguage(nUserId)
	local nMakeSnowmanPos=MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
	local nUserMap = Get_UserMapId(nUserId)
	
	
	--非本语种雪人 不能堆
	if nNation ~= nMakeSnowmanPos then 
		tNpcGossip[nNpcId]["OptionFunc371"] = "MakeSnowman_FindYourSnowman</N>" .. nNation
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return 
	end
	

	--判断今日是否堆过雪人
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	
	if Task_ChkTaskDetail(nMakeSnowmanTask) then 
		
		-- local nNowData = MakeSnowman_TaskDetailSetting(nMakeSnowmanTask,nil,nMakeSnowmanPos,nUserId)
		local nNowData = Get_TaskDetailData1(nMakeSnowmanTask,nUserId)
		if nNowData >= 3 then 
			-- MakeSnowman_ChooseSnowman(nNpcId,nNowData,nUserId)
			NpcPosition_PathFind(tMakeSnowman_Data["ChristmasGirl"][nUserMap])
			Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["FindChristmasGirl"],nil,nil,nUserId)
			return 
		end 
		
		--判断是否采集过雪花
		if Get_TaskDetailData2(nMakeSnowmanTask,nUserId) == 1 then
		
			--读条
			local nSecs = tMakeSnowman_Data["Loading"]["Secs"]
			local sContent = tMakeSnowman_Text["SystemTips"][nNation]["LoadingContent"]
			local nActionId = tMakeSnowman_Data["Loading"]["ActionId"]
			local sFunc = "MakeSnowman_MakeSnowman</N>" .. nUserId .. "</N>"..nNpcId
			User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
		else
		
			MakeSnowman_RandomSnowman()
			Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["BuiltFail"])
		end 
	else
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["TaskFull"])
	end
	
end 


function MakeSnowman_MakeSnowman(nNowUserId,nNpcId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	-- local nNewNpcId= Get_NpcId()
	local nNation = User_ChkLanguage(nUserId)
	local nUserMap = Get_UserMapId(nUserId)
	
	--判断今日是否堆过雪人
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	local nMakeSnowmanPos=MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
	
	-- local nMakeSnowmanData=MakeSnowman_TaskDetailSetting(nMakeSnowmanTask,nil,nMakeSnowmanPos,nUserId)
	local nMakeSnowmanData=Get_TaskDetailData1(nMakeSnowmanTask,nUserId)
	
	if nMakeSnowmanData >= 3 then 
		NpcPosition_PathFind(tMakeSnowman_Data["ChristmasGirl"][nUserMap])
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["FindChristmasGirl"],nil,nil,nUserId)
		return 
	end 
	
	--如果是本语种雪人，判断背包空间
	if nNation == nMakeSnowmanPos then 
		--首次堆雪人
		if nMakeSnowmanData==0 then
			local nGetRewardSpace = RewardTemplate_GetRewardSpace(tMakeSnowman_Data["JoinReward"],nUserId)
			local nDelRewardSpace = RewardTemplate_GetDelSpace(tMakeSnowman_Data["JoinReward"],nUserId)
			local nSpace = nGetRewardSpace - nDelRewardSpace
			if not User_CheckLeftSpace(nSpace,nUserId) then
				Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["BagFull"],nil,nil,nUserId)
				return
			end
		end
	
		local nGlobalId=tMakeSnowman_Data["Global"]["Id"]
		local nProcessId=tMakeSnowman_Data["Global"]["ProcessId"]
		local nPos=tMakeSnowman_Data["Global"]["Pos"][nNpcId]
		
		local nNowData=Get_SysDynaGlobalData(nGlobalId,nPos) + 5
		local nProcessData=Get_SysDynaGlobalData(nProcessId,nPos)
		--设置掩码
		-- MakeSnowman_TaskDetailSetting(nMakeSnowmanTask,1,nMakeSnowmanPos,nUserId)
		local nMakesnowmanTime=Get_TaskDetailData1(nMakeSnowmanTask, nUserId)+1
		Task_SetTaskDetailData1(nMakeSnowmanTask, nMakesnowmanTime, nUserId)
		
		--加进度
		Sys_SetSynaGlobalData(nGlobalId,nPos,nNowData)
		
		if nNowData>=500 and nNowData<1000 then 	
			if nProcessData <1 then 
				Sys_SetSynaGlobalData(nProcessId,nPos,1)	
				Sys_UpperLeftCornerTalkMsg(1,tMakeSnowman_Text["SystemTips"]["Broadcast"][nMakeSnowmanPos][1])
				--npc形态变化,三个跨服会场都变化
				MakeSnowman_SnowmanBigger(10601,nNpcId,nUserId)
				MakeSnowman_SnowmanBigger(10736,nNpcId,nUserId)
				MakeSnowman_SnowmanBigger(10737,nNpcId,nUserId)
			end 
		end 
		if nNowData>=1000 then 
			if nProcessData <2 then 
				Sys_SetSynaGlobalData(nProcessId,nPos,2)
				Sys_UpperLeftCornerTalkMsg(1,tMakeSnowman_Text["SystemTips"]["Broadcast"][nMakeSnowmanPos][2])
				--npc形态变化,三个跨服会场都变化
				MakeSnowman_SnowmanBigger(10601,nNpcId,nUserId)
				MakeSnowman_SnowmanBigger(10736,nNpcId,nUserId)
				MakeSnowman_SnowmanBigger(10737,nNpcId,nUserId)
			end 
		end 
		
		--如果是本语种雪人，给奖励
		if nMakeSnowmanData==0 then
			RewardTemplate_UseItemAndMsg(tMakeSnowman_Data["JoinReward"],nUserId)
			Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["GetReward"],nil,nil,nUserId)
		end 
		
		--加光效
		User_EffectAdd("self","angelwing",nUserId)
		
		--寻路下一个雪人
		-- MakeSnowman_ChooseSnowman(nNpcId,nil,nUserId)
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["Succeed2005"],nil,nil,nUserId)
		
		--清理采集掩码
		Task_SetTaskDetailData2(nMakeSnowmanTask, 0, nUserId)
		
		if Task_ChkTaskDetail(35065,nUserId) then 
			Task_SetTaskDetailData4(35065, 1, nUserId)
		end 
		GuidePlayers_TaskComplete(nUserId)
	end
end 
	
function MakeSnowman_GetReward(nNpcId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId = Get_UserId()
	local nNation=User_ChkLanguage(nUserId)
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	-- local nTask=tMakeSnowman_Data["Task"]["UserInfo"]["Id"]
		
	if Task_ChkTaskDetail(nMakeSnowmanTask) then 
	
		--判断玩家是否为当前语种
		local nNationNpcId=tMakeSnowman_Data["NationToNpc"][nNation][1]
		local nSnowNation = MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
		
		local sYourSnowman=tMakeSnowman_Text["language"][nNationNpcId]
		if nNation ~= nSnowNation then 
			tNpcGossip[nNpcId]["Text353"]=string.format(tMakeSnowman_Text[nNpcId]["Text353"],sYourSnowman)
			tNpcGossip[nNpcId]["OptionFunc351"] = "MakeSnowman_FindYourSnowman"
			LinkNpcGossipFunc_New(nNpcId,"3-5")
			return 
		end 
		
		--判断今日是否堆过雪人
		local nMakeSnowmanPos=MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
		
		local nBuilt = Get_TaskDetailData1(nMakeSnowmanTask,nUserId)
		
		if nBuilt == 0 then 
			return LinkNpcGossipFunc_New(nNpcId,"3-4")
		end 
	
		local nGlobalId=tMakeSnowman_Data["Global"]["Id"]
		local nPos=tMakeSnowman_Data["Global"]["Pos"][nNpcId]
		
		local nGotReward=Get_TaskDetailData5(nMakeSnowmanTask)
		
		local nNowData=Get_SysDynaGlobalData(nGlobalId,nPos)
		
		local sNowSnowman=tMakeSnowman_Text["language"][nNpcId]
		
		if nGotReward >=2 then 
			return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["NoReward"])
		end 
		
		if nNowData<500 then 
			return LinkNpcGossipFunc_New(nNpcId,"3-1")
		end 
		
		if nNowData>=500 and nNowData<1000 then
			--判断是否领过500进度奖励
			if nGotReward >= 1 then 
				return LinkNpcGossipFunc_New(nNpcId,"3-1")
			else
				if not MakeSnowman_IsFullSpace(500,nNation) then 
					return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["NoSpace"])
				else
					--加掩码
					if Task_SetTaskDetailData5(nMakeSnowmanTask,1) then 
						--给奖励
						RewardTemplate_UseItemAndMsg(tMakeSnowman_Data["Reward"][500][nNation])
						tNpcGossip[nNpcId]["Text323"]=string.format(tMakeSnowman_Text[nNpcId]["Text323"],sNowSnowman)
						LinkNpcGossipFunc_New(nNpcId,"3-2")
						return 
					end 
				end 
			end 
		else 
			--判断是否领过1000进度奖励
			if nGotReward >=2 then 
				return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["NoReward"])
			elseif nGotReward >=1 then 
				if not MakeSnowman_IsFullSpace(1000,nNation) then 
					return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["NoSpace"])
				else
					if Task_SetTaskDetailData5(nMakeSnowmanTask,2) then 
						--给奖励
						RewardTemplate_UseItemAndMsg(tMakeSnowman_Data["Reward"][1000][nNation])
						LinkNpcGossipFunc_New(nNpcId,"3-3")
					end 
				end 
			else
				if not MakeSnowman_IsFullSpace(1500,nNation) then 
					return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["NoSpace"])
				else
					if Task_SetTaskDetailData5(nMakeSnowmanTask,2) then 
						--给奖励
						RewardTemplate_UseItemAndMsg(tMakeSnowman_Data["Reward"][1500][nNation])
					end 
				end 
				LinkNpcGossipFunc_New(nNpcId,"3-3")
			end 
		end 
	else
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["TaskFull"])
	end	
end 

--背包空间判断
function MakeSnowman_IsFullSpace(nSchedule,nNation)
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tMakeSnowman_Data["Reward"][nSchedule][nNation])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tMakeSnowman_Data["Reward"][nSchedule][nNation])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return false
	else
		return true
	end 
end 
	
--进入跨过地图
function MakeSnowman_EnterCrossMap()
	local nUserId = Get_UserId()
	local nLocalUserIdTask = tMakeSnowman_Data["UserIdTask"]
	local nLocalUserId = Get_TaskDetailData4(nLocalUserIdTask,nUserId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	--接取任务掩码
	MakeSnowman_GetTaskDetail()
	
	local nTimeEvent = tMakeSnowman_Data["Stc"]["TimeEvent"]
	local nTimeType = tMakeSnowman_Data["Stc"]["TimeType"]
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	
	
	--初始化雪人表
	-- if tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] == nil then
		-- tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] = {1,2,3,4}
	-- end
	
	-- 超过一天 清零领奖掩码
	if Task_StcInterval(nTimeEvent, nTimeType, 1, 4, nUserId) then
		Task_SetStatistic(nTimeEvent,nTimeType,0,1,nUserId)
		Task_SetStcTimestamp(nTimeEvent,nTimeType,0,nUserId)
		
		if Task_ChkTaskDetail(nMakeSnowmanTask,nUserId) then 
			--清理堆雪人掩码
			Task_SetTaskDetailData1(nMakeSnowmanTask, 0, nUserId)
			Task_SetTaskDetailData2(nMakeSnowmanTask, 0, nUserId)
			Task_SetTaskDetailData3(nMakeSnowmanTask, 0, nUserId)
			Task_SetTaskDetailData4(nMakeSnowmanTask, 0, nUserId)
			
			--清理领奖掩码
			Task_SetTaskDetailData5(nMakeSnowmanTask, 0, nUserId)
			
			--重置雪人表
			-- tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] = {1,2,3,4}
		end 
	end
	
end 

--寻路到自己语种雪人处
function MakeSnowman_FindYourSnowman(nNowNation,nNowUserId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nNation= nNowNation or User_ChkLanguage(nUserId)
	
	local nMapID=tMakeSnowman_Data["SnowmanPos"][nUserMap][nNation]["MapID"]
	local nPosX=tMakeSnowman_Data["SnowmanPos"][nUserMap][nNation]["PosX"]
	local nPosY=tMakeSnowman_Data["SnowmanPos"][nUserMap][nNation]["PosY"]
	
	if nUserMap == 10601 or nUserMap == 10736 or nUserMap == 10735 or nUserMap == 10737 then 	
		Sys_GotoSomeWhere(nPosX,nPosY,nMapID,0,nUserId,nil)
	else
		--寻路到主npc
		NpcPosition_PathFind(25661)
	end 
end

--雪人外形变化
function MakeSnowman_SnowmanBigger(nUserMap,nNpcId,nNowUserId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId=nNowUserId or Get_UserId()
	local nSnowNation = MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
	-- local nUserMap = Get_UserMapId(nUserId)
	
	local nMapID=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowNation]["MapID"]
	local nPosX=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowNation]["PosX"]
	local nPosY=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowNation]["PosY"]
	local nNewNpcId=tMakeSnowman_Data["NpcToNpc"][nUserMap][nNpcId]
	
	--已经是最大形态
	if nNewNpcId>= tMakeSnowman_Data["SnowmanId"][nUserMap][nSnowNation][3] then 
		return
	end
	--移除当前npc
	Npc_MoveNpcPos(nNewNpcId,5000,100,100)
	--移出下一形态npc
	Npc_MoveNpcPos(nNewNpcId+1,nMapID,nPosX,nPosY)		
	
end

--0点时间自检移出初始npc
function MakeSnowman_MoveNpc()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	--移除所有npc
	for i=25663,25674 do 
		Npc_MoveNpcPos(i,5000,100,100)
	end 
	
	for j=25696,25719 do 
		Npc_MoveNpcPos(j,5000,100,100)
	end 
	
	--移出初始npc
	
	--主会场
	local nCMapId=tMakeSnowman_Data["SnowmanPos"][10601][1]["MapID"]
	local nCPosX=tMakeSnowman_Data["SnowmanPos"][10601][1]["PosX"]
	local nCPosY=tMakeSnowman_Data["SnowmanPos"][10601][1]["PosY"]
	local nCNpcId1=tMakeSnowman_Data["SnowmanId"][10601][1][1]
	
	local nEMapId=tMakeSnowman_Data["SnowmanPos"][10601][2]["MapID"]
	local nEPosX=tMakeSnowman_Data["SnowmanPos"][10601][2]["PosX"]
	local nEPosY=tMakeSnowman_Data["SnowmanPos"][10601][2]["PosY"]
	local nENpcId1=tMakeSnowman_Data["SnowmanId"][10601][2][1]
	
	local nSMapId=tMakeSnowman_Data["SnowmanPos"][10601][3]["MapID"]
	local nSPosX=tMakeSnowman_Data["SnowmanPos"][10601][3]["PosX"]
	local nSPosY=tMakeSnowman_Data["SnowmanPos"][10601][3]["PosY"]
	local nSNpcId1=tMakeSnowman_Data["SnowmanId"][10601][3][1]
	
	local nAMapId=tMakeSnowman_Data["SnowmanPos"][10601][4]["MapID"]
	local nAPosX=tMakeSnowman_Data["SnowmanPos"][10601][4]["PosX"]
	local nAPosY=tMakeSnowman_Data["SnowmanPos"][10601][4]["PosY"]
	local nANpcId1=tMakeSnowman_Data["SnowmanId"][10601][4][1]
	
	--分会场1
	local nCNpcId2=tMakeSnowman_Data["SnowmanId"][10736][1][1]
	local nENpcId2=tMakeSnowman_Data["SnowmanId"][10736][2][1]
	local nSNpcId2=tMakeSnowman_Data["SnowmanId"][10736][3][1]
	local nANpcId2=tMakeSnowman_Data["SnowmanId"][10736][4][1]
	
	--分会场2
	local nCNpcId3=tMakeSnowman_Data["SnowmanId"][10737][1][1]
	local nENpcId3=tMakeSnowman_Data["SnowmanId"][10737][2][1]
	local nSNpcId3=tMakeSnowman_Data["SnowmanId"][10737][3][1]
	local nANpcId3=tMakeSnowman_Data["SnowmanId"][10737][4][1]
	
	--本服
	-- local nCNpcId4=tMakeSnowman_Data["SnowmanId"][10735][1][1]
	-- local nENpcId4=tMakeSnowman_Data["SnowmanId"][10735][2][1]
	-- local nSNpcId4=tMakeSnowman_Data["SnowmanId"][10735][3][1]
	-- local nANpcId4=tMakeSnowman_Data["SnowmanId"][10735][4][1]
	
	Npc_MoveNpcPos(nCNpcId1,nCMapId,nCPosX,nCPosY)
	Npc_MoveNpcPos(nENpcId1,nEMapId,nEPosX,nEPosY)
	Npc_MoveNpcPos(nSNpcId1,nSMapId,nSPosX,nSPosY)
	Npc_MoveNpcPos(nANpcId1,nAMapId,nAPosX,nAPosY)
	
	Npc_MoveNpcPos(nCNpcId2,10736,nCPosX,nCPosY)
	Npc_MoveNpcPos(nENpcId2,10736,nEPosX,nEPosY)
	Npc_MoveNpcPos(nSNpcId2,10736,nSPosX,nSPosY)
	Npc_MoveNpcPos(nANpcId2,10736,nAPosX,nAPosY)
	
	Npc_MoveNpcPos(nCNpcId3,10737,nCPosX,nCPosY)
	Npc_MoveNpcPos(nENpcId3,10737,nEPosX,nEPosY)
	Npc_MoveNpcPos(nSNpcId3,10737,nSPosX,nSPosY)
	Npc_MoveNpcPos(nANpcId3,10737,nAPosX,nAPosY)
	
	-- Npc_MoveNpcPos(nCNpcId4,10735,nCPosX,nCPosY)
	-- Npc_MoveNpcPos(nENpcId4,10735,nEPosX,nEPosY)
	-- Npc_MoveNpcPos(nSNpcId4,10735,nSPosX,nSPosY)
	-- Npc_MoveNpcPos(nANpcId4,10735,nAPosX,nAPosY)
	
	
end 
	
-- function MakeSnowman_TaskDetailSetting(nTaskId,nData,nPos,nUserId)
	
	-- local nReturnData =0 
	
	-- --判断玩家身上是否有该任务id
	-- if Task_ChkTaskDetail(nTaskId,nUserId) then 
	
		-- --设值
		-- if nData~=nil then 
			-- if nPos == 1 then
				-- Task_SetTaskDetailData1(nTaskId,nData,nUserId)
			-- elseif nPos == 2 then
				-- Task_SetTaskDetailData2(nTaskId,nData,nUserId)
			-- elseif nPos == 3 then
				-- Task_SetTaskDetailData3(nTaskId,nData,nUserId)
			-- elseif nPos == 4 then
				-- Task_SetTaskDetailData4(nTaskId,nData,nUserId)
			-- elseif nPos == 5 then
				-- Task_SetTaskDetailData5(nTaskId,nData,nUserId)
			-- else
				-- Task_SetTaskDetailData6(nTaskId,nData,nUserId)
			-- end 
		-- --取值
		-- else
			-- if nPos == 1 then
				-- nReturnData = Get_TaskDetailData1(nTaskId,nUserId)
			-- elseif nPos == 2 then
				-- nReturnData = Get_TaskDetailData2(nTaskId,nUserId)
			-- elseif nPos == 3 then
				-- nReturnData = Get_TaskDetailData3(nTaskId,nUserId)
			-- elseif nPos == 4 then
				-- nReturnData = Get_TaskDetailData4(nTaskId,nUserId)
			-- elseif nPos == 5 then
				-- nReturnData = Get_TaskDetailData5(nTaskId,nUserId)
			-- else
				-- nReturnData = Get_TaskDetailData6(nTaskId,nUserId)
			-- end 
		-- end
		-- return nReturnData
		
	-- end 
-- end

--接取任务掩码
function MakeSnowman_GetTaskDetail()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	if not Task_ChkTaskDetail(nMakeSnowmanTask) then
		Task_AddTaskDetail(nMakeSnowmanTask)
	end

end 

function MakeSnowman_Login()
	MakeSnowman_EnterCrossMap()
end 


--随机一个还没堆过的雪人
function MakeSnowman_ChooseSnowman(nNpcId,nMakeSnowmanData,nNowUserId)

	local nUserId=nNowUserId or Get_UserId()
	local nNowSnowman = MakeSnowman_MadeSnowmanPos(nNpcId,nUserId)
	local nUserMap = Get_UserMapId(nUserId)
	
	local nLocalUserIdTask = tMakeSnowman_Data["UserIdTask"]
	local nLocalUserId = Get_TaskDetailData4(nLocalUserIdTask,nUserId)
	
	if #tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] ~= 0  then 
		for i,v in ipairs (tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId]) do 
			if nNowSnowman == v then 
				table.remove(tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId],i)
				if #tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] == 0 then 
					local sSpace="    "
					Sys_DialogFace(nNpcId,nUserId)
					Sys_DialogText(sSpace .. tMakeSnowman_Text["SystemTips"]["FindChristmasGirl"],nil,nUserId)
					Sys_DialogOption(tMakeSnowman_Text[nNpcId]["Option211"],"</F>NpcPosition_PathFind</N>" .. tMakeSnowman_Data["ChristmasGirl"][nUserMap],nil,nUserId)
					Sys_DialogEnd(nUserId)
					--寻路到圣诞女神
					-- NpcPosition_PathFind(tMakeSnowman_Data["ChristmasGirl"][nUserMap])
					-- Sys_MsgBox(tMakeSnowman_Text["SystemTips"]["FindChristmasGirl"],nil,nil,nUserId)
					return
				end 
			end
		end 
		
		--寻路到下一个npc
		local nNextSnowman=tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId][1] 
		
		local nNextSnowmanPosX=tMakeSnowman_Data["SnowmanPos"][nUserMap][nNextSnowman]["PosX"]
		local nNextSnowmanPosY=tMakeSnowman_Data["SnowmanPos"][nUserMap][nNextSnowman]["PosY"]
		local sTips=""
		if nMakeSnowmanData==nil then 
			local sText = tMakeSnowman_Text[nNpcId]["Text212"]
			Sys_DialogFace(nNpcId,nUserId)
			Sys_DialogText(sText,nil,nUserId)
			Sys_DialogOption(tMakeSnowman_Text[nNpcId]["Option211"],"</F>Sys_GotoSomeWhere</N>" .. nNextSnowmanPosX .. "</N>" .. nNextSnowmanPosY .. "</N>" .. nUserMap .. "</N>0</N>" .. nUserId,nil,nUserId)
			Sys_DialogEnd(nUserId)
		
		else
			local sTips=tMakeSnowman_Text["SystemTips"]["BuiltAlready"]
			Sys_GotoSomeWhere(nNextSnowmanPosX,nNextSnowmanPosY,nUserMap,0,nUserId)
			Sys_MsgBox(sTips,nil,nil,nUserId)
		end
		
	else
		--寻路到圣诞女神
		NpcPosition_PathFind(tMakeSnowman_Data["ChristmasGirl"][nUserMap])
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"]["FindChristmasGirl"],nil,nil,nUserId)
		return 
	end 
	
end

--判断出何种对白
function MakeSnowman_FirstJudge()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nNpcId=Get_NpcId()
	local nUserId = Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nNation = User_ChkLanguage(nUserId)
	local nMakeSnowmanPos=0
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	
	local nGlobal=tMakeSnowman_Data["Global"]["Id"]
	local nNowPos=tMakeSnowman_Data["Global"]["Pos"][nNpcId]
	local nNowData=Get_SysDynaGlobalData(nGlobal,nNowPos)
	local sSchedule = ""
	local sFull=tMakeSnowman_Text["SystemTips"]["Dialog"]["Full"]
	local sNone=tMakeSnowman_Text["SystemTips"]["Dialog"]["None"]
	local nBlack=math.floor(nNowData/100)
	
	--接取任务掩码
	MakeSnowman_GetTaskDetail()
	
	for i = 1 , 4 do 
		for j , v in ipairs (tMakeSnowman_Data["SnowmanId"][nUserMap][i]) do 
			if v == nNpcId then 
				nMakeSnowmanPos = i
			end 
		end 
	end 
	
	--非本语种雪人 不能堆
	if nNation ~= nMakeSnowmanPos then 
		--没有接任务
		if not Task_ChkTaskDetail(nMakeSnowmanTask) then 
			return Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nNation]["TaskFull"])
		end
	
		--判断是否已经采集
		if Get_TaskDetailData2(nMakeSnowmanTask,nUserId) == 1 then 
			tNpcGossip[nNpcId]["OptionFunc371"] = "MakeSnowman_FindYourSnowman</N>" .. nNation
			LinkNpcGossipFunc_New(nNpcId,"3-7")
		else
			--已经采集过三次
			if Get_TaskDetailData3(nMakeSnowmanTask,nUserId) >= 3 then 
				if nBlack >=10 then 
					nBlack=10
				end 
				
				if nBlack ~= 0 then 
					for m = 1 , nBlack do 
						sSchedule = sSchedule .. sFull
					end 
					
					for n = nBlack+1 ,10 do 
						sSchedule = sSchedule .. sNone
					end
				else
					for j=1,10 do  
						sSchedule= sSchedule .. sNone
					end 
				end 
				
				if nNowData >=500 then 
					tNpcGossip[nNpcId]["Text367"] = tMakeSnowman_Text[nNpcId]["Text368"]
				else
					tNpcGossip[nNpcId]["Text367"] = tMakeSnowman_Text[nNpcId]["Text367"]
				end 
			
				tNpcGossip[nNpcId]["Text364"]=string.format(tMakeSnowman_Text[nNpcId]["Text364"],sSchedule)
				tNpcGossip[nNpcId]["Text365"]=string.format(tMakeSnowman_Text[nNpcId]["Text365"],nNowData)
				tNpcGossip[nNpcId]["OptionFunc361"] = "MakeSnowman_FindYourSnowman</N>" .. nNation
				LinkNpcGossipFunc_New(nNpcId,"3-6")
			else
				--采集读条

				local nSecs = tMakeSnowman_Data["Loading"]["Secs"]
				local sContent = tMakeSnowman_Text["SystemTips"][nNation]["PickUpContent"]
				local nActionId = tMakeSnowman_Data["Loading"]["ActionId"]
				local sFunc = "MakeSnowman_PickUp</N>" .. nNpcId .. "</N>".. nUserId
				User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
				
			end 
		end 
	
	else
		--本语种雪人
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end				
	
	
--采集雪人
function MakeSnowman_PickUp(nNpcId,nNowUserId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
	local nNation = User_ChkLanguage(nUserId)
	
	--今日采集完毕
	if Get_TaskDetailData3(nMakeSnowmanTask,nUserId) >= 3 then  
		return 
	end 

	--判断是否已经采集
	if Get_TaskDetailData2(nMakeSnowmanTask,nUserId) == 1 then 
		tNpcGossip[nNpcId]["OptionFunc371"] = "MakeSnowman_FindYourSnowman</N>" .. nNation
		LinkNpcGossipFunc_New(nNpcId,"3-7",0,8,nUserId)
	else
		--设置采集掩码
		Task_SetTaskDetailData2(nMakeSnowmanTask, 1, nUserId)
		local nPickTime=Get_TaskDetailData3(nMakeSnowmanTask, nUserId)+1
		--采集次数增加
		Task_SetTaskDetailData3(nMakeSnowmanTask, nPickTime, nUserId)
		User_EffectAdd("self","angelwing",nUserId)

		tNpcGossip[nNpcId]["OptionFunc381"] = "MakeSnowman_FindYourSnowman</N>" .. nNation
		LinkNpcGossipFunc_New(nNpcId,"3-8",0,8,nUserId)

	end
end

--随机一个非本语种雪人
function MakeSnowman_RandomSnowman()

	local nUserId =  Get_UserId()
	local nNation = User_ChkLanguage(nUserId)
	local tPosition ={1,2,3,4}
	
	for i ,v in ipairs(tPosition) do 
		if nNation==v then 
			table.remove(tPosition,i)
		end 
	end 
	
	local nIndex = math.random(1,3) 
	local nSnowmanIndex=tPosition[nIndex]
	
	local nUserMap = Get_UserMapId(nUserId)
	
	local nMapID=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowmanIndex]["MapID"]
	local nPosX=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowmanIndex]["PosX"]
	local nPosY=tMakeSnowman_Data["SnowmanPos"][nUserMap][nSnowmanIndex]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapID)
	
end 
	
----------------------------------NPC部分---------------------------------------------
--雪人
tNpcFace[4551] = 220
tNpcFace[4552] = 220
tNpcFace[4553] = 220
tNpcFace[4554] = 220
tNpcFace[4555] = 220
tNpcFace[4556] = 220
tNpcFace[4557] = 220
tNpcFace[4558] = 220
tNpcFace[4559] = 220
tNpcFace[4560] = 220
tNpcFace[4561] = 220
tNpcFace[4562] = 220

for i = 25663, 25674 do 
	tNpcGossip[i]= tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["DialogueText"] = tMakeSnowman_Text[i]
	
	tNpcGossip[i]["Text1-1"] = {110,1110,111,112,113,114,115,116,117,1111,118,1112,119}
	tNpcGossip[i]["tOption1-1"] = {111,112}
	tNpcGossip[i]["ChkFunc1-1"]= function()
		--判断活动时间
		if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"])  then
			return false
		else
			local nGlobal=tMakeSnowman_Data["Global"]["Id"]
			local nNowPos=tMakeSnowman_Data["Global"]["Pos"][i]
			local nNowData=Get_SysDynaGlobalData(nGlobal,nNowPos)
			local sSchedule = ""
			local sFull=tMakeSnowman_Text["SystemTips"]["Dialog"]["Full"]
			local sNone=tMakeSnowman_Text["SystemTips"]["Dialog"]["None"]
			local nBlack=math.floor(nNowData/100)
			local sNowSnowman=tMakeSnowman_Text["language"][i]
			
			--接取任务掩码
			MakeSnowman_GetTaskDetail()
			
			--初始化雪人表
			-- local nMakeSnowmanTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
			-- local nMakeSnowmanTaskData1 = Get_TaskDetailData1(nMakeSnowmanTask)
			-- local nMakeSnowmanTaskData2 = Get_TaskDetailData2(nMakeSnowmanTask)
			-- local nMakeSnowmanTaskData3 = Get_TaskDetailData3(nMakeSnowmanTask)
			-- local nMakeSnowmanTaskData4 = Get_TaskDetailData4(nMakeSnowmanTask)
			
			-- local nLocalUserIdTask = tMakeSnowman_Data["UserIdTask"]
			-- local nLocalUserId = Get_TaskDetailData4(nLocalUserIdTask)
			
			-- if  nMakeSnowmanTaskData1== 0 and nMakeSnowmanTaskData2 == 0 and nMakeSnowmanTaskData3==0 and nMakeSnowmanTaskData4 ==0 then 
				-- if tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] == nil then
					-- tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] = {1,2,3,4}
				-- end 
				
				-- tMakeSnowman_Data["SnowmanBuilt"][nLocalUserId] = {1,2,3,4}
			-- end 
				
			if nBlack >=10 then 
				nBlack=10
			end 
			
			if nBlack ~= 0 then 
				for m = 1 , nBlack do 
					sSchedule = sSchedule .. sFull
				end 
				
				for n = nBlack+1 ,10 do 
					sSchedule = sSchedule .. sNone
				end
			else
				for j=1,10 do  
					sSchedule= sSchedule .. sNone
				end 
			end 
			
			tNpcGossip[i]["Text113"]=string.format(tMakeSnowman_Text[i]["Text113"],sSchedule)
			tNpcGossip[i]["Text114"]=string.format(tMakeSnowman_Text[i]["Text114"],nNowData)
			tNpcGossip[i]["Text117"]=string.format(tMakeSnowman_Text[i]["Text117"],sNowSnowman)
			tNpcGossip[i]["Text118"]=string.format(tMakeSnowman_Text[i]["Text118"],sNowSnowman)			
			return true
		end 
	end 
	
	tNpcGossip[i]["OptionChkFunc111"] = function ()
		local nTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
		local nUserId = Get_UserId()
		-- local nTaskPos=MakeSnowman_MadeSnowmanPos(i,nUserId)
		local nNowData=Get_TaskDetailData1(nTask,nUserId)
		if nNowData >=3 then
			tNpcGossip[i]["Option111"]=tMakeSnowman_Text[i]["Option113"]
		else
			tNpcGossip[i]["Option111"]=string.format(tMakeSnowman_Text[i]["Option111"],nNowData)
		end	 
		return true
	end
	
	tNpcGossip[i]["OptionChkFunc112"] = function ()
		local nTask=tMakeSnowman_Data["Task"]["MakeSnowmanTask"]["Id"]
		local nUserId = Get_UserId()
		local nPlayerNation=User_ChkLanguage(nUserId)
		local nGotReward=Get_TaskDetailData5(nTask)
		local nFlag=0
		for m , v in ipairs(tMakeSnowman_Data["NationToNpc"][nPlayerNation]) do 
			if v == i then
				nFlag=1
			end 
		end 
		if nFlag==1 then
			if nGotReward >= 2 then 
				tNpcGossip[i]["Option112"]=tMakeSnowman_Text[i]["Option114"]
			else
				tNpcGossip[i]["Option112"]=tMakeSnowman_Text[i]["Option112"]
			end 
		else
			tNpcGossip[i]["Option112"]=tMakeSnowman_Text[i]["Option112"]
		end 
		return true
	end	
	
	tNpcGossip[i]["OptionFunc111"] = "MakeSnowman_MakeSnowmanLoading</N>" .. i
	tNpcGossip[i]["OptionFunc112"] = "MakeSnowman_GetReward</N>" .. i
	
	--堆雪人，二次确认
	tNpcGossip[i]["Text2-1"] = {211,2110,212,213,214}
	tNpcGossip[i]["tOption2-1"] = {211,212}
	
	--领取奖励，失败，进度未达到500
	tNpcGossip[i]["Text3-1"] = {311,3110,312}
	tNpcGossip[i]["tOption3-1"] = {311}
	
	--领取奖励，成功，领取500的奖励，但是进度尚未达到1000
	tNpcGossip[i]["Text3-2"] = {321,3210,322,323}
	tNpcGossip[i]["tOption3-2"] = {321}
	
	--领取奖励，成功，领取进度1000的奖励
	tNpcGossip[i]["Text3-3"] = {331,3310,332,333}
	tNpcGossip[i]["tOption3-3"] = {331}
	
	--失败，今日没堆过这个雪人
	tNpcGossip[i]["Text3-4"] = {341,3410,342,343}
	tNpcGossip[i]["tOption3-4"] = {341}
	
	--失败，非本语种雪人
	tNpcGossip[i]["Text3-5"] = {351,3510,352,353}
	tNpcGossip[i]["tOption3-5"] = {351,352}
	
	--非本语种对白展示
	tNpcGossip[i]["Text3-6"] = {361,3610,362,363,364,365,366,367}
	tNpcGossip[i]["tOption3-6"] = {361,362}
	
	tNpcGossip[i]["Text3-7"] = {371,3710,372}
	tNpcGossip[i]["tOption3-7"] = {371,372}
	
	tNpcGossip[i]["Text3-8"] = {381,3810,382}
	tNpcGossip[i]["tOption3-8"] = {381,382}
end 


--分会场1
tNpcGossip[25696]= tNpcGossip[25663]
tNpcGossip[25697]= tNpcGossip[25664]
tNpcGossip[25698]= tNpcGossip[25665]
tNpcGossip[25699]= tNpcGossip[25666]
tNpcGossip[25700]= tNpcGossip[25667]
tNpcGossip[25701]= tNpcGossip[25668]
tNpcGossip[25702]= tNpcGossip[25669]
tNpcGossip[25703]= tNpcGossip[25670]
tNpcGossip[25704]= tNpcGossip[25671]
tNpcGossip[25705]= tNpcGossip[25672]
tNpcGossip[25706]= tNpcGossip[25673]
tNpcGossip[25707]= tNpcGossip[25674]

--分会场2
tNpcGossip[25708]= tNpcGossip[25663]
tNpcGossip[25709]= tNpcGossip[25664]
tNpcGossip[25710]= tNpcGossip[25665]
tNpcGossip[25711]= tNpcGossip[25666]
tNpcGossip[25712]= tNpcGossip[25667]
tNpcGossip[25713]= tNpcGossip[25668]
tNpcGossip[25714]= tNpcGossip[25669]
tNpcGossip[25715]= tNpcGossip[25670]
tNpcGossip[25716]= tNpcGossip[25671]
tNpcGossip[25717]= tNpcGossip[25672]
tNpcGossip[25718]= tNpcGossip[25673]
tNpcGossip[25719]= tNpcGossip[25674]

--本服
--tNpcGossip[25720]= tNpcGossip[25663]
--tNpcGossip[25721]= tNpcGossip[25664]
--tNpcGossip[25722]= tNpcGossip[25665]
--tNpcGossip[25723]= tNpcGossip[25666]
--tNpcGossip[25724]= tNpcGossip[25667]
--tNpcGossip[25725]= tNpcGossip[25668]
--tNpcGossip[25726]= tNpcGossip[25669]
--tNpcGossip[25727]= tNpcGossip[25670]
--tNpcGossip[25728]= tNpcGossip[25671]
--tNpcGossip[25729]= tNpcGossip[25672]
--tNpcGossip[25730]= tNpcGossip[25673]
--tNpcGossip[25731]= tNpcGossip[25674]

------------------ 动态存储表清零------------------
tGlobalData_Info[53993] = {}
tGlobalData_Info[53993]["Time"] = {}
tGlobalData_Info[53993]["Time"]["ClearTime"] = {}
tGlobalData_Info[53993]["Time"]["ClearTime"][1] = "00:00 00:01"
tGlobalData_Info[53993]["Rest"] = {}
tGlobalData_Info[53993]["Rest"]["GlobalId"] = {53993}
tGlobalData_Info[53993]["Rest"]["Pos"] = {0,1,2,3}
                
tGlobalData_Info[53994] = {}
tGlobalData_Info[53994]["Time"] = {}
tGlobalData_Info[53994]["Time"]["ClearTime"] = {}
tGlobalData_Info[53994]["Time"]["ClearTime"][1] = "00:00 00:01"
tGlobalData_Info[53994]["Rest"] = {}
tGlobalData_Info[53994]["Rest"]["GlobalId"] = {53994}
tGlobalData_Info[53994]["Rest"]["Pos"] = {0,1,2,3}
                
-----------------时间自检------------------
local tMakeSnowman_MoveNpc = {}
tMakeSnowman_MoveNpc["Type"] = 2
tMakeSnowman_MoveNpc["TimeType"] = 4
tMakeSnowman_MoveNpc["Time"] = "00:00 00:00"
tMakeSnowman_MoveNpc["Func"] = MakeSnowman_MoveNpc
table.insert(tSystemTime_InitialData,tMakeSnowman_MoveNpc)
                
                
-----------------上线触发------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,MakeSnowman_Login)