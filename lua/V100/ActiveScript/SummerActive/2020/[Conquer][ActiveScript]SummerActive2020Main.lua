------------------------------------------------------------------------------------
--Name：            200514[简体征服][活动脚本]全球暑期活动引导与摊位NPC
--Creator:      蔡颖静
--Created:     2020-05-14
------------------------------------------------------------------------------------

-- tActivityTime["SummerActive"]={}
-- tActivityTime["SummerActive"]["ActivityTime"] = "2020-07-07 00:00 2020-07-20 23:59"
-- tActivityTime["SummerActive"]["EnterActivityTime"] = "2020-07-07 17:00 2020-07-20 23:59"
-- tActivityTime["SummerActive"]["RankTime"] ="2020-07-07 00:00 2020-07-21 23:59"
-- tActivityTime["SummerActive"]["MailTime"] ="2020-07-21 00:00 2020-07-21 23:59"

----------------------------------表配置部分--------------------------------------------
local tSummerActive2020Main_Data={}

--等级
tSummerActive2020Main_Data["LevelJudge"]={}
tSummerActive2020Main_Data["LevelJudge"]["Mete"]=0
tSummerActive2020Main_Data["LevelJudge"]["Level"]=80

tSummerActive2020Main_Data["Stc"]={}

-- 引导任务id
tSummerActive2020Main_Data["ActivityTaskId"] = 7199
--完成引导任务光效
tSummerActive2020Main_Data["TaskEffect"] = "zf2-e128"

tSummerActive2020Main_Data["BackMap"] = {}
tSummerActive2020Main_Data["BackMap"][1] = {}
tSummerActive2020Main_Data["BackMap"][1]["MapId"] = 1002
tSummerActive2020Main_Data["BackMap"][1]["Cellx"] = 375
tSummerActive2020Main_Data["BackMap"][1]["Celly"] = 445
tSummerActive2020Main_Data["BackMap"][1]["Range"] = 5
tSummerActive2020Main_Data["BackMap"][2] = {}
tSummerActive2020Main_Data["BackMap"][2]["MapId"] = 1036
tSummerActive2020Main_Data["BackMap"][2]["Cellx"] = 255
tSummerActive2020Main_Data["BackMap"][2]["Celly"] = 212
tSummerActive2020Main_Data["BackMap"][2]["Range"] = 5

-- 首次点击对白
tSummerActive2020Main_Data["Stc"]["FirstClickEvent"]=222
tSummerActive2020Main_Data["Stc"]["FirstClickType"]=48

tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]=300
tSummerActive2020Main_Data["Stc"]["TasteScoreType"]=2

tSummerActive2020Main_Data["Stc"]["Ater800Event"]=222
tSummerActive2020Main_Data["Stc"]["Ater800Type"]=49

tSummerActive2020Main_Data["Stc"]["NowStepRewardEvent"]=222
tSummerActive2020Main_Data["Stc"]["NowStepRewardType"]=50

tSummerActive2020Main_Data["Stc"]["SuccessFragmentEvent"]=222
tSummerActive2020Main_Data["Stc"]["SuccessFragmentType"]=58

tSummerActive2020Main_Data["Stc"]["FailFragmentEvent"]=222
tSummerActive2020Main_Data["Stc"]["FailFragmentType"]=59

--二次确认掩码
tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]=223
tSummerActive2020Main_Data["Stc"]["SecondCheckType"]=0

-- 摊位npc ，首次引导对白
tSummerActive2020Main_Data["Stc"]["Npc"]={}
--章鱼哥
tSummerActive2020Main_Data["Stc"]["Npc"][26572]={}
tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Event"]=222
tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Type"]=51
--约克·买买提
tSummerActive2020Main_Data["Stc"]["Npc"][26573]={}
tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Event"]=222
tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Type"]=52
--李大嘴
tSummerActive2020Main_Data["Stc"]["Npc"][26574]={}
tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Event"]=222
tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Type"]=53
--陈澄呈
tSummerActive2020Main_Data["Stc"]["Npc"][26575]={}
tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Event"]=222
tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Type"]=54
--金香玉
tSummerActive2020Main_Data["Stc"]["Npc"][26576]={}
tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Event"]=222
tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Type"]=55


--进入活动地图坐标
tSummerActive2020Main_Data["ChangeMap"]={}
tSummerActive2020Main_Data["ChangeMap"]["MapId"]=10869
tSummerActive2020Main_Data["ChangeMap"]["PosX"]=62
tSummerActive2020Main_Data["ChangeMap"]["PosY"]=68

--排行榜下标
tSummerActive2020Main_Data["RankIndex"]=265710

--读条信息
tSummerActive2020Main_Data["Loading"]={}
tSummerActive2020Main_Data["Loading"]["Secs"]=1
tSummerActive2020Main_Data["Loading"]["ActionId"]=1

--每次品尝积分
tSummerActive2020Main_Data["TasteScore"]={}
tSummerActive2020Main_Data["TasteScore"][26572]=10
tSummerActive2020Main_Data["TasteScore"][26573]=10
tSummerActive2020Main_Data["TasteScore"][26574]=10
tSummerActive2020Main_Data["TasteScore"][26575]=20
tSummerActive2020Main_Data["TasteScore"][26576]=30

--每次品尝消耗
tSummerActive2020Main_Data["CostCoinNum"]={}
tSummerActive2020Main_Data["CostCoinNum"][26572]=10
tSummerActive2020Main_Data["CostCoinNum"][26573]=10
tSummerActive2020Main_Data["CostCoinNum"][26574]=10
tSummerActive2020Main_Data["CostCoinNum"][26575]=20
tSummerActive2020Main_Data["CostCoinNum"][26576]=30

tSummerActive2020Main_Data["CostCP"]={}
tSummerActive2020Main_Data["CostCP"][26572]=25
tSummerActive2020Main_Data["CostCP"][26573]=25
tSummerActive2020Main_Data["CostCP"][26574]=25
tSummerActive2020Main_Data["CostCP"][26575]=45
tSummerActive2020Main_Data["CostCP"][26576]=66

--光效
tSummerActive2020Main_Data["Effect"]={}
tSummerActive2020Main_Data["Effect"]["Taste"]="archer-s"

--仲夏金币id
tSummerActive2020Main_Data["CoinId"]=3331140

--背包空间判断
tSummerActive2020Main_Data["NeedSpace"]={}
tSummerActive2020Main_Data["NeedSpace"][26572]=1
tSummerActive2020Main_Data["NeedSpace"][26573]=1
tSummerActive2020Main_Data["NeedSpace"][26574]=5
tSummerActive2020Main_Data["NeedSpace"][26575]=1
tSummerActive2020Main_Data["NeedSpace"][26576]=3

--线下排行榜
tSummerActive2020Main_Data["Web"]={}
tSummerActive2020Main_Data["Web"][1]="https://wtop.zf.99.com/xrj/nqCn/"
tSummerActive2020Main_Data["Web"][2]="https://wtop.zf.99.com/xrj/nqEn/"
tSummerActive2020Main_Data["Web"][3]="https://wtop.zf.99.com/xrj/nqSp/"
tSummerActive2020Main_Data["Web"][4]="https://wtop.zf.99.com/xrj/nqAr/"


tSummerActive2020Main_Data["StepNum"]={300,800,1500,3000,5000,10000,30000}

--碎片合成
tSummerActive2020Main_Data["Fragment"]={}
tSummerActive2020Main_Data["Fragment"]["MakeOne"]=40
tSummerActive2020Main_Data["Fragment"]["WashMono"]=3
tSummerActive2020Main_Data["Fragment"]["CoatId"]=200677

--品尝log
tSummerActive2020Main_Data["Log"]={}
tSummerActive2020Main_Data["Log"]["TasteMoney"]={}
tSummerActive2020Main_Data["Log"]["TasteMoney"][26572]="1000	1884	%d	%d	1	"
tSummerActive2020Main_Data["Log"]["TasteMoney"][26573]="1000	1885	%d	%d	1	"
tSummerActive2020Main_Data["Log"]["TasteMoney"][26574]="1000	1886	%d	%d	1	"
tSummerActive2020Main_Data["Log"]["TasteMoney"][26575]="1000	1887	%d	%d	1	"
tSummerActive2020Main_Data["Log"]["TasteMoney"][26576]="1000	1888	%d	%d	1	"
tSummerActive2020Main_Data["Log"]["Overtime"]="0,0,%d,%d,12001988,1,0,0"


-- 骑宠碎片
tSummerActive2020Main_Data[3331121] = {}
tSummerActive2020Main_Data[3331121][1] = {}
tSummerActive2020Main_Data[3331121][1]["LogId"] = 12001988
tSummerActive2020Main_Data[3331121][1]["LogStep"] = "2"
tSummerActive2020Main_Data[3331121][1]["RewardItem"] = {}
tSummerActive2020Main_Data[3331121][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331121][1]["RewardItem"][1]["Id"] = 200677
tSummerActive2020Main_Data[3331121][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
tSummerActive2020Main_Data[3331121][1]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331121][1]["RewardEffect"]["SzObj"] = "self"
tSummerActive2020Main_Data[3331121][1]["RewardEffect"]["Effect"] = "angelwing"

-- 骑宠碎片
tSummerActive2020Main_Data[3331121][2] = {}
tSummerActive2020Main_Data[3331121][2]["LogId"] = 12001988
tSummerActive2020Main_Data[3331121][2]["LogStep"] = "2"
tSummerActive2020Main_Data[3331121][2]["RewardItem"] = {}
tSummerActive2020Main_Data[3331121][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331121][2]["RewardItem"][1]["Id"] = 200677
tSummerActive2020Main_Data[3331121][2]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
tSummerActive2020Main_Data[3331121][2]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331121][2]["RewardEffect"]["SzObj"] = "self"
tSummerActive2020Main_Data[3331121][2]["RewardEffect"]["Effect"] = "angelwing"

-- 骑宠碎片
tSummerActive2020Main_Data[3331121][3] = {}
tSummerActive2020Main_Data[3331121][3]["LogId"] = 12001988
tSummerActive2020Main_Data[3331121][3]["LogStep"] = "2"
tSummerActive2020Main_Data[3331121][3]["RewardItem"] = {}
tSummerActive2020Main_Data[3331121][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331121][3]["RewardItem"][1]["Id"] = 3331121
tSummerActive2020Main_Data[3331121][3]["RewardItem"][1]["Attr"] = "0 2"
tSummerActive2020Main_Data[3331121][3]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331121][3]["RewardEffect"]["SzObj"] = "self"
tSummerActive2020Main_Data[3331121][3]["RewardEffect"]["Effect"] = "angelwing"

-- ===章鱼哥
-- ===索引: tSummerActive2020Main_Data["Reward"][26572]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Reward"] = {}
tSummerActive2020Main_Data["Reward"][26572] = {}
tSummerActive2020Main_Data["Reward"][26572]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26572]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26572]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26572][1] = {}
tSummerActive2020Main_Data["Reward"][26572][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26572][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26572][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26572][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26572][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26572][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26572][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26572][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26572][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（2）-
tSummerActive2020Main_Data["Reward"][26572][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26572][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26572][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26572][1]["FullIndex"] = 2
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（2）-
tSummerActive2020Main_Data["Reward"][26572][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26572][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26572][1]["OtherFullIndex"] = 2
tSummerActive2020Main_Data["Reward"][26572][1]["Index"] = 1
-- 赤炼石+1 - 5%
tSummerActive2020Main_Data["Reward"][26572][2] = {}
tSummerActive2020Main_Data["Reward"][26572][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26572][2]["ItemChance"] = 500
tSummerActive2020Main_Data["Reward"][26572][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26572][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26572][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
tSummerActive2020Main_Data["Reward"][26572][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26572][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26572][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26572][2]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26572][2]["Index"] = 2
-- 赤炼石+2 - 46%
tSummerActive2020Main_Data["Reward"][26572][3] = {}
tSummerActive2020Main_Data["Reward"][26572][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26572][3]["ItemChance"] = 4600
tSummerActive2020Main_Data["Reward"][26572][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26572][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26572][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
tSummerActive2020Main_Data["Reward"][26572][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26572][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26572][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26572][3]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26572][3]["Index"] = 3
-- 赤炼石+3 - 38%
tSummerActive2020Main_Data["Reward"][26572][4] = {}
tSummerActive2020Main_Data["Reward"][26572][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26572][4]["ItemChance"] = 3800
tSummerActive2020Main_Data["Reward"][26572][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26572][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26572][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
tSummerActive2020Main_Data["Reward"][26572][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26572][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26572][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26572][4]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26572][4]["Index"] = 4
-- 赤炼石+5 - 1%
tSummerActive2020Main_Data["Reward"][26572][5] = {}
tSummerActive2020Main_Data["Reward"][26572][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26572][5]["ItemChance"] = 100
tSummerActive2020Main_Data["Reward"][26572][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26572][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26572][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
tSummerActive2020Main_Data["Reward"][26572][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26572][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26572][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26572][5]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26572][5]["Index"] = 5


tSummerActive2020Main_Data["Reward"][26573] = {}
-- ===约克·买买提
-- ===索引: tSummerActive2020Main_Data["Reward"][26573]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Reward"][26573]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26573]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26573]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26573][1] = {}
tSummerActive2020Main_Data["Reward"][26573][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26573][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26573][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26573][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26573][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26573][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26573][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26573][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26573][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（2）-
tSummerActive2020Main_Data["Reward"][26573][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26573][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26573][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26573][1]["FullIndex"] = 2
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（2）-
tSummerActive2020Main_Data["Reward"][26573][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26573][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26573][1]["OtherFullIndex"] = 2
tSummerActive2020Main_Data["Reward"][26573][1]["Index"] = 1
-- 万能神纹精粹 - 5%
tSummerActive2020Main_Data["Reward"][26573][2] = {}
tSummerActive2020Main_Data["Reward"][26573][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26573][2]["ItemChance"] = 500
tSummerActive2020Main_Data["Reward"][26573][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26573][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26573][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26573][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
tSummerActive2020Main_Data["Reward"][26573][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26573][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26573][2]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26573][2]["Index"] = 2
-- 万能神纹精粹 - 40.5%
tSummerActive2020Main_Data["Reward"][26573][3] = {}
tSummerActive2020Main_Data["Reward"][26573][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26573][3]["ItemChance"] = 4050
tSummerActive2020Main_Data["Reward"][26573][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26573][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26573][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26573][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
tSummerActive2020Main_Data["Reward"][26573][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26573][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26573][3]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26573][3]["Index"] = 3
-- 万能神纹精粹 - 44%
tSummerActive2020Main_Data["Reward"][26573][4] = {}
tSummerActive2020Main_Data["Reward"][26573][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26573][4]["ItemChance"] = 4400
tSummerActive2020Main_Data["Reward"][26573][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26573][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26573][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26573][4]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
tSummerActive2020Main_Data["Reward"][26573][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26573][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26573][4]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26573][4]["Index"] = 4
-- 黄色神纹礼包 - 0.5%
tSummerActive2020Main_Data["Reward"][26573][5] = {}
tSummerActive2020Main_Data["Reward"][26573][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26573][5]["ItemChance"] = 50
tSummerActive2020Main_Data["Reward"][26573][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26573][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26573][5]["RewardItem"][1]["Id"] = 3314248 -- 黄色神纹礼包[3314248][属性:8][叠加:10000][金币:0], 【表格】黄色神纹礼包
tSummerActive2020Main_Data["Reward"][26573][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹礼包（赠）*1
tSummerActive2020Main_Data["Reward"][26573][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26573][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26573][5]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26573][5]["Index"] = 5


tSummerActive2020Main_Data["Reward"][26574] = {}
-- ===李大嘴
-- ===索引: tSummerActive2020Main_Data["Reward"][26574]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Reward"][26574]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26574]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26574]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26574][1] = {}
tSummerActive2020Main_Data["Reward"][26574][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26574][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26574][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26574][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26574][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26574][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26574][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26574][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26574][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（3）-
tSummerActive2020Main_Data["Reward"][26574][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26574][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26574][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26574][1]["FullIndex"] = 3
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（3）-
tSummerActive2020Main_Data["Reward"][26574][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26574][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26574][1]["OtherFullIndex"] = 3
tSummerActive2020Main_Data["Reward"][26574][1]["Index"] = 1
-- 微光星陨石 - 38%
tSummerActive2020Main_Data["Reward"][26574][2] = {}
tSummerActive2020Main_Data["Reward"][26574][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26574][2]["ItemChance"] = 3800
tSummerActive2020Main_Data["Reward"][26574][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26574][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26574][2]["RewardItem"][1]["Id"] = 3331934 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
tSummerActive2020Main_Data["Reward"][26574][2]["RewardItem"][1]["Attr"] = "0 1" -- 2天时效(激活)的微光星陨石*5
tSummerActive2020Main_Data["Reward"][26574][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26574][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26574][2]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26574][2]["Index"] = 2
-- 明亮星陨石 - 41%
tSummerActive2020Main_Data["Reward"][26574][3] = {}
tSummerActive2020Main_Data["Reward"][26574][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26574][3]["ItemChance"] = 4100
tSummerActive2020Main_Data["Reward"][26574][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26574][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26574][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26574][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
tSummerActive2020Main_Data["Reward"][26574][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26574][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26574][3]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26574][3]["Index"] = 3
-- 明亮星陨石 - 10%
tSummerActive2020Main_Data["Reward"][26574][4] = {}
tSummerActive2020Main_Data["Reward"][26574][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26574][4]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26574][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26574][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26574][4]["RewardItem"][1]["Id"] = 3331935 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26574][4]["RewardItem"][1]["Attr"] = "0 1" -- 2天时效(激活)的明亮星陨石*3
tSummerActive2020Main_Data["Reward"][26574][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26574][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26574][4]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26574][4]["Index"] = 4
-- 晶莹星陨石 - 1%
tSummerActive2020Main_Data["Reward"][26574][5] = {}
tSummerActive2020Main_Data["Reward"][26574][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26574][5]["ItemChance"] = 100
tSummerActive2020Main_Data["Reward"][26574][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26574][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26574][5]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
tSummerActive2020Main_Data["Reward"][26574][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
tSummerActive2020Main_Data["Reward"][26574][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26574][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26574][5]["RewardEffect"]["Effect"] = "angelwing"
tSummerActive2020Main_Data["Reward"][26574][5]["Index"] = 5


tSummerActive2020Main_Data["Reward"][26575] = {}
-- ===陈澄呈 非二转
-- ===索引: tSummerActive2020Main_Data["Reward"][26575][1]
-- ===LogStep:2
-- ===
-- ===
-- ===
-- ===
tSummerActive2020Main_Data["Reward"][26575][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26575][1]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26575][1]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26575][1][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][1][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（5）-
tSummerActive2020Main_Data["Reward"][26575][1][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26575][1][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26575][1][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26575][1][1]["FullIndex"] = 5
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（5）-
tSummerActive2020Main_Data["Reward"][26575][1][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26575][1][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26575][1][1]["OtherFullIndex"] = 5
-- 赤炼石+3 - 22%
tSummerActive2020Main_Data["Reward"][26575][1][2] = {}
tSummerActive2020Main_Data["Reward"][26575][1][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][2]["ItemChance"] = 2200
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][1][2]["RewardEffect"]["Effect"] = "angelwing"
-- 明亮星陨石 - 18%
tSummerActive2020Main_Data["Reward"][26575][1][3] = {}
tSummerActive2020Main_Data["Reward"][26575][1][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][3]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][1][3]["RewardEffect"]["Effect"] = "angelwing"
-- 万能神纹精粹 - 18%
tSummerActive2020Main_Data["Reward"][26575][1][4] = {}
tSummerActive2020Main_Data["Reward"][26575][1][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][4]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][1][4]["RewardEffect"]["Effect"] = "angelwing"
-- 300气力值 - 32%
tSummerActive2020Main_Data["Reward"][26575][1][5] = {}
tSummerActive2020Main_Data["Reward"][26575][1][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][5]["ItemChance"] = 3200
tSummerActive2020Main_Data["Reward"][26575][1][5]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
tSummerActive2020Main_Data["Reward"][26575][1][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][1][5]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Reward"][26575][2] = {}
-- ===陈澄呈 二转
-- ===索引: tSummerActive2020Main_Data["Reward"][26575][2]
-- ===LogStep:2
-- ===
tSummerActive2020Main_Data["Reward"][26575][2]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26575][2]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26575][2]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26575][2][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26575][2][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26575][2][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26575][2][1]["FullIndex"] = 7
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26575][2][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26575][2][1]["OtherFullIndex"] = 7
-- 乾坤神器宝盒 - 5%
tSummerActive2020Main_Data["Reward"][26575][2][2] = {}
tSummerActive2020Main_Data["Reward"][26575][2][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][2]["ItemChance"] = 500
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:8][叠加:1][金币:0], 【表格】豪华神器礼包
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][2]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data2）】全服限量:（700）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][2]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26575][2][2]["Pos"] = 4
tSummerActive2020Main_Data["Reward"][26575][2][2]["MaxData"] = 700
tSummerActive2020Main_Data["Reward"][26575][2][2]["FullIndex"] = 7
		-- 【动态掩码（54473, data3）】单日限量:（50）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][2]["OtherPos"] = 5
tSummerActive2020Main_Data["Reward"][26575][2][2]["OtherMaxData"] = 50
tSummerActive2020Main_Data["Reward"][26575][2][2]["OtherFullIndex"] = 7
-- 乾坤神器宝盒 - 15%
tSummerActive2020Main_Data["Reward"][26575][2][3] = {}
tSummerActive2020Main_Data["Reward"][26575][2][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][3]["ItemChance"] = 1500
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][3]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data4）】全服限量:（700）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][3]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26575][2][3]["Pos"] = 4
tSummerActive2020Main_Data["Reward"][26575][2][3]["MaxData"] = 700
tSummerActive2020Main_Data["Reward"][26575][2][3]["FullIndex"] = 7
		-- 【动态掩码（54473, data5）】单日限量:（50）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26575][2][3]["OtherPos"] = 5
tSummerActive2020Main_Data["Reward"][26575][2][3]["OtherMaxData"] = 50
tSummerActive2020Main_Data["Reward"][26575][2][3]["OtherFullIndex"] = 7
-- 赤炼石+3 - 22%
tSummerActive2020Main_Data["Reward"][26575][2][4] = {}
tSummerActive2020Main_Data["Reward"][26575][2][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][4]["ItemChance"] = 2200
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][4]["RewardEffect"]["Effect"] = "angelwing"
-- 明亮星陨石 - 18%
tSummerActive2020Main_Data["Reward"][26575][2][5] = {}
tSummerActive2020Main_Data["Reward"][26575][2][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][5]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][5]["RewardEffect"]["Effect"] = "angelwing"
-- 万能神纹精粹 - 18%
tSummerActive2020Main_Data["Reward"][26575][2][6] = {}
tSummerActive2020Main_Data["Reward"][26575][2][6]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][6]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][6]["RewardEffect"]["Effect"] = "angelwing"
-- 300气力值 - 12%
tSummerActive2020Main_Data["Reward"][26575][2][7] = {}
tSummerActive2020Main_Data["Reward"][26575][2][7]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][7]["ItemChance"] = 1200
tSummerActive2020Main_Data["Reward"][26575][2][7]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][7]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
tSummerActive2020Main_Data["Reward"][26575][2][7]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26575][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26575][2][7]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Reward"][26575][1][1]["Index"] = 1
tSummerActive2020Main_Data["Reward"][26575][1][2]["Index"] = 2
tSummerActive2020Main_Data["Reward"][26575][1][3]["Index"] = 3
tSummerActive2020Main_Data["Reward"][26575][1][4]["Index"] = 4
tSummerActive2020Main_Data["Reward"][26575][1][5]["Index"] = 5

tSummerActive2020Main_Data["Reward"][26575][2][1]["Index"] = 1
tSummerActive2020Main_Data["Reward"][26575][2][2]["Index"] = 2
tSummerActive2020Main_Data["Reward"][26575][2][3]["Index"] = 3
tSummerActive2020Main_Data["Reward"][26575][2][4]["Index"] = 4
tSummerActive2020Main_Data["Reward"][26575][2][5]["Index"] = 5
tSummerActive2020Main_Data["Reward"][26575][2][6]["Index"] = 6
tSummerActive2020Main_Data["Reward"][26575][2][7]["Index"] = 7


tSummerActive2020Main_Data["Reward"][26576] = {}
-- ===金香玉 非二转
-- ===索引: tSummerActive2020Main_Data["Reward"][26576][1]
-- ===LogStep:2
-- ===
-- ===
-- ===
-- ===
tSummerActive2020Main_Data["Reward"][26576][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26576][1]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26576][1]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26576][1][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][1][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（5）-
tSummerActive2020Main_Data["Reward"][26576][1][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26576][1][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26576][1][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26576][1][1]["FullIndex"] = 5
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（5）-
tSummerActive2020Main_Data["Reward"][26576][1][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26576][1][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26576][1][1]["OtherFullIndex"] = 5
-- 赤炼石+4 - 22%
tSummerActive2020Main_Data["Reward"][26576][1][2] = {}
tSummerActive2020Main_Data["Reward"][26576][1][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][2]["ItemChance"] = 2200
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][1][2]["RewardEffect"]["Effect"] = "angelwing"
-- 明亮星陨石 - 18%
tSummerActive2020Main_Data["Reward"][26576][1][3] = {}
tSummerActive2020Main_Data["Reward"][26576][1][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][3]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardItem"][1]["Id"] = 3331935 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 2天时效(激活)的明亮星陨石*3
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][1][3]["RewardEffect"]["Effect"] = "angelwing"
-- 万能神纹精粹 - 18%
tSummerActive2020Main_Data["Reward"][26576][1][4] = {}
tSummerActive2020Main_Data["Reward"][26576][1][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][4]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardItem"][1]["Attr"] = "0 25 3" -- 万能神纹精粹（赠）*25
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][1][4]["RewardEffect"]["Effect"] = "angelwing"
-- 500气力值 - 32%
tSummerActive2020Main_Data["Reward"][26576][1][5] = {}
tSummerActive2020Main_Data["Reward"][26576][1][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][5]["ItemChance"] = 3200
tSummerActive2020Main_Data["Reward"][26576][1][5]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][5]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
tSummerActive2020Main_Data["Reward"][26576][1][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][1][5]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Reward"][26576][2] = {}
-- ===金香玉 二转
-- ===索引: tSummerActive2020Main_Data["Reward"][26576][2]
-- ===LogStep:2
-- ===
-- ===
-- ===
-- ===
tSummerActive2020Main_Data["Reward"][26576][2]["ItemChanceSum"] = 10000
tSummerActive2020Main_Data["Reward"][26576][2]["LogId"] = 12001988
tSummerActive2020Main_Data["Reward"][26576][2]["LogStep"] = "2"
-- 坐骑外套碎片 - 10%
tSummerActive2020Main_Data["Reward"][26576][2][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][1]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][1]["ItemChance"] = 1000
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data0）】全服限量:（112）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][1]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26576][2][1]["Pos"] = 0
tSummerActive2020Main_Data["Reward"][26576][2][1]["MaxData"] = 112
tSummerActive2020Main_Data["Reward"][26576][2][1]["FullIndex"] = 7
		-- 【动态掩码（54473, data1）】单日限量:（8）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][1]["OtherPos"] = 1
tSummerActive2020Main_Data["Reward"][26576][2][1]["OtherMaxData"] = 8
tSummerActive2020Main_Data["Reward"][26576][2][1]["OtherFullIndex"] = 7
-- 乾坤神器宝盒 - 5%
tSummerActive2020Main_Data["Reward"][26576][2][2] = {}
tSummerActive2020Main_Data["Reward"][26576][2][2]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][2]["ItemChance"] = 500
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:8][叠加:1][金币:0], 【表格】豪华神器礼包
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][2]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data2）】全服限量:（700）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][2]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26576][2][2]["Pos"] = 4
tSummerActive2020Main_Data["Reward"][26576][2][2]["MaxData"] = 700
tSummerActive2020Main_Data["Reward"][26576][2][2]["FullIndex"] = 7
		-- 【动态掩码（54473, data3）】单日限量:（50）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][2]["OtherPos"] = 5
tSummerActive2020Main_Data["Reward"][26576][2][2]["OtherMaxData"] = 50
tSummerActive2020Main_Data["Reward"][26576][2][2]["OtherFullIndex"] = 7
-- 乾坤神器宝盒 - 15%
tSummerActive2020Main_Data["Reward"][26576][2][3] = {}
tSummerActive2020Main_Data["Reward"][26576][2][3]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][3]["ItemChance"] = 1500
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][3]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data4）】全服限量:（700）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][3]["GlobalId"] = 54473
tSummerActive2020Main_Data["Reward"][26576][2][3]["Pos"] = 4
tSummerActive2020Main_Data["Reward"][26576][2][3]["MaxData"] = 700
tSummerActive2020Main_Data["Reward"][26576][2][3]["FullIndex"] = 7
		-- 【动态掩码（54473, data5）】单日限量:（50）, 超限给编号（7）-
tSummerActive2020Main_Data["Reward"][26576][2][3]["OtherPos"] = 5
tSummerActive2020Main_Data["Reward"][26576][2][3]["OtherMaxData"] = 50
tSummerActive2020Main_Data["Reward"][26576][2][3]["OtherFullIndex"] = 7
-- 赤炼石+4 - 22%
tSummerActive2020Main_Data["Reward"][26576][2][4] = {}
tSummerActive2020Main_Data["Reward"][26576][2][4]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][4]["ItemChance"] = 2200
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][4]["RewardEffect"]["Effect"] = "angelwing"
-- 明亮星陨石 - 18%
tSummerActive2020Main_Data["Reward"][26576][2][5] = {}
tSummerActive2020Main_Data["Reward"][26576][2][5]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][5]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardItem"][1]["Id"] = 3331935 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 2天时效(激活)的明亮星陨石*3
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][5]["RewardEffect"]["Effect"] = "angelwing"
-- 万能神纹精粹 - 18%
tSummerActive2020Main_Data["Reward"][26576][2][6] = {}
tSummerActive2020Main_Data["Reward"][26576][2][6]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][6]["ItemChance"] = 1800
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardItem"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardItem"][1]["Attr"] = "0 25 3" -- 万能神纹精粹（赠）*25
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][6]["RewardEffect"]["Effect"] = "angelwing"
-- 500气力值 - 12%
tSummerActive2020Main_Data["Reward"][26576][2][7] = {}
tSummerActive2020Main_Data["Reward"][26576][2][7]["RandomItemChanceType"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][7]["ItemChance"] = 1200
tSummerActive2020Main_Data["Reward"][26576][2][7]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][7]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
tSummerActive2020Main_Data["Reward"][26576][2][7]["RewardEffect"] = {}
tSummerActive2020Main_Data["Reward"][26576][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Reward"][26576][2][7]["RewardEffect"]["Effect"] = "angelwing"

tSummerActive2020Main_Data["Reward"][26576][1][1]["Index"] = 1
tSummerActive2020Main_Data["Reward"][26576][1][2]["Index"] = 2
tSummerActive2020Main_Data["Reward"][26576][1][3]["Index"] = 3
tSummerActive2020Main_Data["Reward"][26576][1][4]["Index"] = 4
tSummerActive2020Main_Data["Reward"][26576][1][5]["Index"] = 5

tSummerActive2020Main_Data["Reward"][26576][2][1]["Index"] = 1
tSummerActive2020Main_Data["Reward"][26576][2][2]["Index"] = 2
tSummerActive2020Main_Data["Reward"][26576][2][3]["Index"] = 3
tSummerActive2020Main_Data["Reward"][26576][2][4]["Index"] = 4
tSummerActive2020Main_Data["Reward"][26576][2][5]["Index"] = 5
tSummerActive2020Main_Data["Reward"][26576][2][6]["Index"] = 6
tSummerActive2020Main_Data["Reward"][26576][2][7]["Index"] = 7


tSummerActive2020Main_Data["Step"] = {}
-- ===300品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][1]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][1] = {}
tSummerActive2020Main_Data["Step"][1]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][1]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][1]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][1]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][1]["RewardItem"][1]["Id"] = 3331113 -- 立夏礼盒[3331113][属性:9][叠加:1][金币:0], 【表格】立夏礼盒
tSummerActive2020Main_Data["Step"][1]["RewardItem"][1]["Attr"] = "0 1" -- 立夏礼盒*1
tSummerActive2020Main_Data["Step"][1]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][1]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][2] = {}
-- ===800品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][2]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][2]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][2]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][2]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][2]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][2]["RewardItem"][1]["Id"] = 3331114 -- 夏至礼盒[3331114][属性:9][叠加:1][金币:0], 【表格】夏至礼盒
tSummerActive2020Main_Data["Step"][2]["RewardItem"][1]["Attr"] = "0 1" -- 夏至礼盒*1
tSummerActive2020Main_Data["Step"][2]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][2]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][3] = {}
-- ===1500品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][3]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][3]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][3]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][3]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][3]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][3]["RewardItem"][1]["Id"] = 3331115 -- 缤纷一夏礼盒[3331115][属性:9][叠加:1][金币:0], 【表格】缤纷一夏礼盒
tSummerActive2020Main_Data["Step"][3]["RewardItem"][1]["Attr"] = "0 1" -- 缤纷一夏礼盒*1
tSummerActive2020Main_Data["Step"][3]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][3]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][4] = {}
-- ===3000品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][4]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][4]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][4]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][4]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][4]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][4]["RewardItem"][1]["Id"] = 3331116 -- 畅爽一夏礼盒[3331116][属性:9][叠加:1][金币:0], 【表格】畅爽一夏礼盒
tSummerActive2020Main_Data["Step"][4]["RewardItem"][1]["Attr"] = "0 1" -- 畅爽一夏礼盒*1
tSummerActive2020Main_Data["Step"][4]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][4]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][5] = {}
-- ===5000品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][5]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][5]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][5]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][5]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][5]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][5]["RewardItem"][1]["Id"] = 3331117 -- 沁凉一夏礼盒[3331117][属性:9][叠加:1][金币:0], 【表格】沁凉一夏礼盒
tSummerActive2020Main_Data["Step"][5]["RewardItem"][1]["Attr"] = "0 1" -- 沁凉一夏礼盒*1
tSummerActive2020Main_Data["Step"][5]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][5]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][6] = {}
-- ===10000品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][6]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][6]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][6]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][6]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][6]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][6]["RewardItem"][1]["Id"] = 3331118 -- 夏日幻想礼盒[3331118][属性:9][叠加:1][金币:0], 【表格】夏日幻想礼盒
tSummerActive2020Main_Data["Step"][6]["RewardItem"][1]["Attr"] = "0 1" -- 夏日幻想礼盒*1
tSummerActive2020Main_Data["Step"][6]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][6]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][7] = {}
-- ===30000品尝积分
-- ===索引: tSummerActive2020Main_Data["Step"][7]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][7]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][7]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][7]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][7]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][7]["RewardItem"][1]["Id"] = 3331119 -- 燃情夏日礼盒[3331119][属性:9][叠加:1][金币:0], 【表格】燃情夏日礼盒
tSummerActive2020Main_Data["Step"][7]["RewardItem"][1]["Attr"] = "0 1" -- 燃情夏日礼盒*1
tSummerActive2020Main_Data["Step"][7]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][7]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["Step"][8] = {}
-- ===之后每800积分
-- ===索引: tSummerActive2020Main_Data["Step"][8]
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data["Step"][8]["LogId"] = 12001988
tSummerActive2020Main_Data["Step"][8]["LogStep"] = "2"
tSummerActive2020Main_Data["Step"][8]["RewardItem"] = {}
tSummerActive2020Main_Data["Step"][8]["RewardItem"][1] = {}
tSummerActive2020Main_Data["Step"][8]["RewardItem"][1]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:1][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data["Step"][8]["RewardItem"][1]["Attr"] = "0 %d" -- 坐骑外套碎片*1
tSummerActive2020Main_Data["Step"][8]["RewardEffect"] = {}
tSummerActive2020Main_Data["Step"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["Step"][8]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331105] = {}
-- ===仲夏燃情礼盒
-- ===索引: tSummerActive2020Main_Data[3331105]
-- ===删除:3331105,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331105]["LogId"] = 12001988
tSummerActive2020Main_Data[3331105]["LogStep"] = "2"
tSummerActive2020Main_Data[3331105]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331105]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331105]["DeleteItem"][1]["Id"] = 3331105 -- 【库】仲夏燃情礼盒[属性:9]
tSummerActive2020Main_Data[3331105]["RewardWing"] = {}
tSummerActive2020Main_Data[3331105]["RewardWing"]["TitleType"] = 6017 -- 【库】海妖之歌, 【表格】海妖之歌翅膀
tSummerActive2020Main_Data[3331105]["RewardWing"]["TitleId"] = 6017
tSummerActive2020Main_Data[3331105]["RewardWing"]["SaveTime"] = 525600 -- 365天时效的[翅膀]:海妖之歌, 【需求】海妖之歌翅膀
tSummerActive2020Main_Data[3331105]["RewardItem"] = {}
tSummerActive2020Main_Data[3331105]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331105]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data[3331105]["RewardItem"][1]["Attr"] = "0 20" -- 乾坤神器宝盒*20（[错误]物品数量超10个）
tSummerActive2020Main_Data[3331105]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331105]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data[3331105]["RewardItem"][2]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500（[错误]物品数量超100个）
tSummerActive2020Main_Data[3331105]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331105]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331105]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331106] = {}
-- ===仲夏倾情礼盒
-- ===索引: tSummerActive2020Main_Data[3331106]
-- ===删除:3331106,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331106]["LogId"] = 12001988
tSummerActive2020Main_Data[3331106]["LogStep"] = "2"
tSummerActive2020Main_Data[3331106]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331106]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331106]["DeleteItem"][1]["Id"] = 3331106 -- 【库】仲夏倾情礼盒[属性:9]
tSummerActive2020Main_Data[3331106]["RewardItem"] = {}
tSummerActive2020Main_Data[3331106]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331106]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data[3331106]["RewardItem"][1]["Attr"] = "0 15" -- 乾坤神器宝盒*15（[错误]物品数量超10个）
tSummerActive2020Main_Data[3331106]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331106]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data[3331106]["RewardItem"][2]["Attr"] = "0 400 3" -- 万能神纹精粹（赠）*400（[错误]物品数量超100个）
tSummerActive2020Main_Data[3331106]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331106]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331106]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331107] = {}
-- ===仲夏狂欢礼盒
-- ===索引: tSummerActive2020Main_Data[3331107]
-- ===删除:3331107,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331107]["LogId"] = 12001988
tSummerActive2020Main_Data[3331107]["LogStep"] = "2"
tSummerActive2020Main_Data[3331107]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331107]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331107]["DeleteItem"][1]["Id"] = 3331107 -- 【库】仲夏狂欢礼盒[属性:9]
tSummerActive2020Main_Data[3331107]["RewardItem"] = {}
tSummerActive2020Main_Data[3331107]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331107]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data[3331107]["RewardItem"][1]["Attr"] = "0 10" -- 乾坤神器宝盒*10
tSummerActive2020Main_Data[3331107]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331107]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data[3331107]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300（[错误]物品数量超100个）
tSummerActive2020Main_Data[3331107]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331107]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331107]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331108] = {}
-- ===仲夏怡情礼盒
-- ===索引: tSummerActive2020Main_Data[3331108]
-- ===删除:3331108,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331108]["LogId"] = 12001988
tSummerActive2020Main_Data[3331108]["LogStep"] = "2"
tSummerActive2020Main_Data[3331108]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331108]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331108]["DeleteItem"][1]["Id"] = 3331108 -- 【库】仲夏怡情礼盒[属性:9]
tSummerActive2020Main_Data[3331108]["RewardItem"] = {}
tSummerActive2020Main_Data[3331108]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331108]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data[3331108]["RewardItem"][1]["Attr"] = "0 8" -- 乾坤神器宝盒*8
tSummerActive2020Main_Data[3331108]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331108]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tSummerActive2020Main_Data[3331108]["RewardItem"][2]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200（[错误]物品数量超100个）
tSummerActive2020Main_Data[3331108]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331108]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331108]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331109] = {}
-- ===2020夏日王者礼盒
-- ===索引: tSummerActive2020Main_Data[3331109]
-- ===删除:3331109,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331109]["LogId"] = 12001988
tSummerActive2020Main_Data[3331109]["LogStep"] = "2"
tSummerActive2020Main_Data[3331109]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331109]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331109]["DeleteItem"][1]["Id"] = 3331109 -- 【库】2020夏日王者礼盒[属性:9]
tSummerActive2020Main_Data[3331109]["RewardItem"] = {}
tSummerActive2020Main_Data[3331109]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331109]["RewardItem"][1]["Id"] = 200678 -- 坐骑外套【光效】[200678][属性:9][叠加:1][金币:0], 【表格】专属坐骑（高光效）
tSummerActive2020Main_Data[3331109]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑坐骑外套【光效】*1
tSummerActive2020Main_Data[3331109]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data[3331109]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
tSummerActive2020Main_Data[3331109]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331109]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331109]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331110] = {}
-- ===2020夏日至尊礼盒
-- ===索引: tSummerActive2020Main_Data[3331110]
-- ===删除:3331110,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331110]["LogId"] = 12001988
tSummerActive2020Main_Data[3331110]["LogStep"] = "2"
tSummerActive2020Main_Data[3331110]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331110]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331110]["DeleteItem"][1]["Id"] = 3331110 -- 【库】2020夏日至尊礼盒[属性:9]
tSummerActive2020Main_Data[3331110]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data[3331110]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
tSummerActive2020Main_Data[3331110]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331110]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331110]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331111] = {}
-- ===2020夏日豪华礼盒
-- ===索引: tSummerActive2020Main_Data[3331111]
-- ===删除:3331111,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331111]["LogId"] = 12001988
tSummerActive2020Main_Data[3331111]["LogStep"] = "2"
tSummerActive2020Main_Data[3331111]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331111]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331111]["DeleteItem"][1]["Id"] = 3331111 -- 【库】2020夏日豪华礼盒[属性:9]
tSummerActive2020Main_Data[3331111]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data[3331111]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
tSummerActive2020Main_Data[3331111]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331111]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331111]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331112] = {}
-- ===2020夏日精装礼盒
-- ===索引: tSummerActive2020Main_Data[3331112]
-- ===删除:3331112,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331112]["LogId"] = 12001988
tSummerActive2020Main_Data[3331112]["LogStep"] = "2"
tSummerActive2020Main_Data[3331112]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331112]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331112]["DeleteItem"][1]["Id"] = 3331112 -- 【库】2020夏日精装礼盒[属性:9]
tSummerActive2020Main_Data[3331112]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data[3331112]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
tSummerActive2020Main_Data[3331112]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331112]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331112]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331113] = {}
-- ===立夏礼盒
-- ===索引: tSummerActive2020Main_Data[3331113]
-- ===删除:3331113,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331113]["LogId"] = 12001988
tSummerActive2020Main_Data[3331113]["LogStep"] = "2"
tSummerActive2020Main_Data[3331113]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331113]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331113]["DeleteItem"][1]["Id"] = 3331113 -- 【库】立夏礼盒[属性:9]
tSummerActive2020Main_Data[3331113]["RewardItem"] = {}
tSummerActive2020Main_Data[3331113]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331113]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
tSummerActive2020Main_Data[3331113]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
tSummerActive2020Main_Data[3331113]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331113]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331113]["RewardItem"][2]["Attr"] = "0 3" -- 坐骑外套碎片*3
tSummerActive2020Main_Data[3331113]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331113]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331113]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331114] = {}
-- ===夏至礼盒
-- ===索引: tSummerActive2020Main_Data[3331114]
-- ===删除:3331114,1
-- ===LogStep:2
-- ===
-- ===
-- ===
tSummerActive2020Main_Data[3331114]["LogId"] = 12001988
tSummerActive2020Main_Data[3331114]["LogStep"] = "2"
tSummerActive2020Main_Data[3331114]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331114]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331114]["DeleteItem"][1]["Id"] = 3331114 -- 【库】夏至礼盒[属性:9]
tSummerActive2020Main_Data[3331114]["RewardItem"] = {}
tSummerActive2020Main_Data[3331114]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331114]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
tSummerActive2020Main_Data[3331114]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20（[错误]物品数量超10个）
tSummerActive2020Main_Data[3331114]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331114]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331114]["RewardItem"][2]["Attr"] = "0 3" -- 坐骑外套碎片*3
tSummerActive2020Main_Data[3331114]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331114]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331114]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331115] = {}
-- ===缤纷一夏礼盒
-- ===索引: tSummerActive2020Main_Data[3331115]
-- ===删除:3331115,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331115]["LogId"] = 12001988
tSummerActive2020Main_Data[3331115]["LogStep"] = "2"
tSummerActive2020Main_Data[3331115]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331115]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331115]["DeleteItem"][1]["Id"] = 3331115 -- 【库】缤纷一夏礼盒[属性:9]
tSummerActive2020Main_Data[3331115]["RewardItem"] = {}
tSummerActive2020Main_Data[3331115]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331115]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
tSummerActive2020Main_Data[3331115]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
tSummerActive2020Main_Data[3331115]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331115]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331115]["RewardItem"][2]["Attr"] = "0 3" -- 坐骑外套碎片*3
tSummerActive2020Main_Data[3331115]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331115]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331115]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331116] = {}
-- ===畅爽一夏礼盒
-- ===索引: tSummerActive2020Main_Data[3331116]
-- ===删除:3331116,1
-- ===LogStep:2
-- ===
-- ===
-- ===
tSummerActive2020Main_Data[3331116]["LogId"] = 12001988
tSummerActive2020Main_Data[3331116]["LogStep"] = "2"
tSummerActive2020Main_Data[3331116]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331116]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331116]["DeleteItem"][1]["Id"] = 3331116 -- 【库】畅爽一夏礼盒[属性:9]
tSummerActive2020Main_Data[3331116]["RewardItem"] = {}
tSummerActive2020Main_Data[3331116]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331116]["RewardItem"][1]["Id"] = 189725 -- 夏威夷阳光[194795][属性:0][叠加:0][金币:0], 【表格】无光效夏威夷外套
tSummerActive2020Main_Data[3331116]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑夏威夷阳光（赠）*1
tSummerActive2020Main_Data[3331116]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331116]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331116]["RewardItem"][2]["Attr"] = "0 3" -- 坐骑外套碎片*3
tSummerActive2020Main_Data[3331116]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331116]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331116]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331117] = {}
-- ===沁凉一夏礼盒
-- ===索引: tSummerActive2020Main_Data[3331117]
-- ===删除:3331117,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331117]["LogId"] = 12001988
tSummerActive2020Main_Data[3331117]["LogStep"] = "2"
tSummerActive2020Main_Data[3331117]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331117]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331117]["DeleteItem"][1]["Id"] = 3331117 -- 【库】沁凉一夏礼盒[属性:9]
tSummerActive2020Main_Data[3331117]["RewardItem"] = {}
tSummerActive2020Main_Data[3331117]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331117]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
tSummerActive2020Main_Data[3331117]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
tSummerActive2020Main_Data[3331117]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331117]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331117]["RewardItem"][2]["Attr"] = "0 5" -- 坐骑外套碎片*5
tSummerActive2020Main_Data[3331117]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331117]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331117]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331118] = {}
-- ===夏日幻想礼盒
-- ===索引: tSummerActive2020Main_Data[3331118]
-- ===删除:3331118,1
-- ===LogStep:2
-- ===
-- ===
tSummerActive2020Main_Data[3331118]["LogId"] = 12001988
tSummerActive2020Main_Data[3331118]["LogStep"] = "2"
tSummerActive2020Main_Data[3331118]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331118]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331118]["DeleteItem"][1]["Id"] = 3331118 -- 【库】夏日幻想礼盒[属性:9]
tSummerActive2020Main_Data[3331118]["RewardItem"] = {}
tSummerActive2020Main_Data[3331118]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331118]["RewardItem"][1]["Id"] = 189735 -- 夏威夷阳光【泡泡版】[194825][属性:0][叠加:0][金币:0], 【表格】光效夏威夷外套
tSummerActive2020Main_Data[3331118]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑夏威夷阳光【泡泡版】（赠）*1
tSummerActive2020Main_Data[3331118]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331118]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331118]["RewardItem"][2]["Attr"] = "0 8" -- 坐骑外套碎片*8
tSummerActive2020Main_Data[3331118]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331118]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331118]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data[3331119] = {}
-- ===燃情夏日礼盒
-- ===索引: tSummerActive2020Main_Data[3331119]
-- ===删除:3331119,1
-- ===LogStep:2
-- ===
-- ===
-- ===
tSummerActive2020Main_Data[3331119]["LogId"] = 12001988
tSummerActive2020Main_Data[3331119]["LogStep"] = "2"
tSummerActive2020Main_Data[3331119]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331119]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331119]["DeleteItem"][1]["Id"] = 3331119 -- 【库】燃情夏日礼盒[属性:9]
tSummerActive2020Main_Data[3331119]["RewardItem"] = {}
tSummerActive2020Main_Data[3331119]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331119]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
tSummerActive2020Main_Data[3331119]["RewardItem"][1]["Attr"] = "0 5" -- 乾坤神器宝盒*5
tSummerActive2020Main_Data[3331119]["RewardItem"][2] = {}
tSummerActive2020Main_Data[3331119]["RewardItem"][2]["Id"] = 3331121 -- 坐骑外套碎片[3331121][属性:9][叠加:10000][金币:0], 【表格】坐骑外套碎片
tSummerActive2020Main_Data[3331119]["RewardItem"][2]["Attr"] = "0 10" -- 坐骑外套碎片*10
tSummerActive2020Main_Data[3331119]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331119]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331119]["RewardEffect"]["Effect"] = "angelwing"


tSummerActive2020Main_Data["StrengthBack"] = {}
tSummerActive2020Main_Data["StrengthBack"]["LogId"] = 12001988
tSummerActive2020Main_Data["StrengthBack"]["RewardStrengthValue"] = {}
tSummerActive2020Main_Data["StrengthBack"]["RewardStrengthValue"]["Value"] = 0 -- 气力值, 【需求】5000气力值
tSummerActive2020Main_Data["StrengthBack"]["RewardEffect"] = {}
tSummerActive2020Main_Data["StrengthBack"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data["StrengthBack"]["RewardEffect"]["Effect"] = "angelwing"

tSummerActive2020Main_Data[3331934] = {}
-- ===5颗微光星陨石包
-- ===索引: tSummerActive2020Main_Data[3331934]
-- ===删除:3331934,1
-- ===LogStep:2
-- ===
-- ===
-- ===
tSummerActive2020Main_Data[3331934]["LogId"] = 12001988
tSummerActive2020Main_Data[3331934]["LogStep"] = "2"
tSummerActive2020Main_Data[3331934]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331934]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331934]["DeleteItem"][1]["Id"] = 3331934 -- 5颗微光星陨石包[属性:9]
tSummerActive2020Main_Data[3331934]["RewardItem"] = {}
tSummerActive2020Main_Data[3331934]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331934]["RewardItem"][1]["Id"] = 3009000 -- 2天时效(激活)的明亮星陨石*5
tSummerActive2020Main_Data[3331934]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
tSummerActive2020Main_Data[3331934]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331934]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331934]["RewardEffect"]["Effect"] = "angelwing"

tSummerActive2020Main_Data[3331935] = {}
-- ===3颗明亮星陨石包
-- ===索引: tSummerActive2020Main_Data[3331935]
-- ===删除:3331935,1
-- ===LogStep:2
-- ===
-- ===
-- ===
tSummerActive2020Main_Data[3331935]["LogId"] = 12001988
tSummerActive2020Main_Data[3331935]["LogStep"] = "2"
tSummerActive2020Main_Data[3331935]["DeleteItem"] = {}
tSummerActive2020Main_Data[3331935]["DeleteItem"][1] = {}
tSummerActive2020Main_Data[3331935]["DeleteItem"][1]["Id"] = 3331935 -- 3颗明亮星陨石包[属性:9]
tSummerActive2020Main_Data[3331935]["RewardItem"] = {}
tSummerActive2020Main_Data[3331935]["RewardItem"][1] = {}
tSummerActive2020Main_Data[3331935]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
tSummerActive2020Main_Data[3331935]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
tSummerActive2020Main_Data[3331935]["RewardEffect"] = {}
tSummerActive2020Main_Data[3331935]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerActive2020Main_Data[3331935]["RewardEffect"]["Effect"] = "angelwing"

-----------------------------------排行榜----------------------------------------------
tRankingFunc_Info[265710] = {}
tRankingFunc_Info[265710]["ActiveTime"] = tActivityTime["SummerActive"]["RankTime"]
tRankingFunc_Info[265710]["DayTime"] = {}
tRankingFunc_Info[265710]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[265710]["Reset"] = 1
tRankingFunc_Info[265710]["Global"] = {54469,54470,54471,54472}
tRankingFunc_Info[265710]["RankNum"] = 10

-- 邮件发奖
tRankingFunc_Info[265710]["Mail"] = {}
tRankingFunc_Info[265710]["Mail"]["ActiveTime"] = tActivityTime["SummerActive"]["MailTime"]
tRankingFunc_Info[265710]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[265710]["Mail"]["RewardTime"][1] = "00:00 00:03"

tRankingFunc_Info[265710]["Mail"]["Reward"] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["ActionId"] = 577779
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][1]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["ActionId"] = 577780
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][2]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["ActionId"] = 577780
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][3]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["ActionId"] = 577781
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][4]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["ActionId"] = 577781
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][5]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["ActionId"] = 577781
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][6]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["ActionId"] = 577782
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][7]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["ActionId"] = 577782
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][8]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["ActionId"] = 577782
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][9]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]
tRankingFunc_Info[265710]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["ActionId"] = 577782
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["Title"] =tSummerActive2020Main_Text["RankMail"]["Title"]
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["Sender"] = tSummerActive2020Main_Text["RankMail"]["Sender"]
tRankingFunc_Info[265710]["Mail"]["Reward"][10]["Content"] = tSummerActive2020Main_Text["RankMail"]["Content"]

----------------------------------逻辑部分---------------------------------------------
--首次进入地图 播放剧情
function SummerActive2020Main_EnterMap1()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	if not User_JudgeLevelAndMetempsychosis(tSummerActive2020Main_Data["LevelJudge"]["Level"],tSummerActive2020Main_Data["LevelJudge"]["Mete"]) then
		return 
	end 
	
	--切换地图
	
	local nSummerActive2020Main_UserId = Get_UserId()
	local nSummerActive2020Main_MapId = tSummerActive2020Main_Data["ChangeMap"]["MapId"]
	local nSummerActive2020Main_PosX = tSummerActive2020Main_Data["ChangeMap"]["PosX"]
	local nSummerActive2020Main_PosY = tSummerActive2020Main_Data["ChangeMap"]["PosY"]
	
	User_UserRandBoundTrans(nSummerActive2020Main_MapId,nSummerActive2020Main_PosX,nSummerActive2020Main_PosY,1,1,1,nSummerActive2020Main_UserId)

	local nSummerActive2020Main_FirstClickEvent=tSummerActive2020Main_Data["Stc"]["FirstClickEvent"]
	local nSummerActive2020Main_FirstClickType=tSummerActive2020Main_Data["Stc"]["FirstClickType"]
	
	if Get_UserStatisticValue(nSummerActive2020Main_FirstClickEvent,nSummerActive2020Main_FirstClickType) ==0 then 
		Task_AddStatistic(nSummerActive2020Main_FirstClickEvent,nSummerActive2020Main_FirstClickType,1,1)
		Task_SetStcTimestamp(nSummerActive2020Main_FirstClickEvent,nSummerActive2020Main_FirstClickType,0)
	end 
	
	local sSummerActive2020Main_Text = tSummerActive2020Main_Text["SystemTip"]["EnterMap2"]
	-- local nSummerActive2020Main_sFindNpc = "NpcPosition_PathFind</N>26591"
	local nSummerActive2020Main_sFunc = "Sys_MsgBox</S>"..sSummerActive2020Main_Text.."</S>nil</S>nil</N>" .. nSummerActive2020Main_UserId
	User_SetTimer(69,nSummerActive2020Main_sFunc,0)
	
	-- Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["EnterMap1"])
	User_PlayPlot(66)
end 

--进入地图
function SummerActive2020Main_EnterMap2()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	if not User_JudgeLevelAndMetempsychosis(tSummerActive2020Main_Data["LevelJudge"]["Level"],tSummerActive2020Main_Data["LevelJudge"]["Mete"]) then
		return 
	end 
	
	--切换地图
	
	local nSummerActive2020Main_UserId = Get_UserId()
	local nSummerActive2020Main_MapId = tSummerActive2020Main_Data["ChangeMap"]["MapId"]
	local nSummerActive2020Main_PosX = tSummerActive2020Main_Data["ChangeMap"]["PosX"]
	local nSummerActive2020Main_PosY = tSummerActive2020Main_Data["ChangeMap"]["PosY"]
	
	User_UserRandBoundTrans(nSummerActive2020Main_MapId,nSummerActive2020Main_PosX,nSummerActive2020Main_PosY,1,1,1,nSummerActive2020Main_UserId)
	
	local sSummerActive2020Main_FindNpc="NpcPosition_PathFind</N>26591"
	
	Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["EnterMap2"],sSummerActive2020Main_FindNpc,nil,nSummerActive2020Main_UserId)
end 

--首次免费品尝
function SummerActive2020Main_FreeTaste(nSummerActive2020Main_NpcId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	if not User_JudgeLevelAndMetempsychosis(tSummerActive2020Main_Data["LevelJudge"]["Level"],tSummerActive2020Main_Data["LevelJudge"]["Mete"]) then
		return 
	end 
	
	if Get_UserMapId()~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end
	
	local nSummerActive2020Main_UserId = Get_UserId()
	local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][nSummerActive2020Main_NpcId]["Event"]
	local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][nSummerActive2020Main_NpcId]["Type"]
	
	--隔天清掩码
	Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
	
	if nSummerActive2020Main_NpcId == 26576 then
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,nSummerActive2020Main_UserId) >1 then 
			return 
		end
	else
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,nSummerActive2020Main_UserId) >0 then 
			return 
		end
	end 
	
	--背包空间判断
	local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	if not User_CheckLeftSpace(nSummerActive2020Main_Space) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		return Sys_MsgBox(sSummerActive2020Main_Text)
	end 
	
	--读条
	local nSummerActive2020Main_Secs = tSummerActive2020Main_Data["Loading"]["Secs"]
	local sSummerActive2020Main_Content = tSummerActive2020Main_Text["SystemTip"]["Taste"]
	local nSummerActive2020Main_ActionId = tSummerActive2020Main_Data["Loading"]["ActionId"]
	local sSummerActive2020Main_Func = "SummerActive2020Main_FreeLoading</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_UserId
	
	User_SetExplore(nSummerActive2020Main_Secs,sSummerActive2020Main_Content,nSummerActive2020Main_ActionId,sSummerActive2020Main_Func,nil,nSummerActive2020Main_UserId)
end

--免费品尝读条
function SummerActive2020Main_FreeLoading(nSummerActive2020Main_NpcId,nSummerActive2020Main_UserId)

	local nSummerActive2020Main_NowUserId = nSummerActive2020Main_UserId or Get_UserId()
	
	local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][nSummerActive2020Main_NpcId]["Event"]
	local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][nSummerActive2020Main_NpcId]["Type"]
	
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	
	local nSummerActive2020Main_AddTasteScore=tSummerActive2020Main_Data["TasteScore"][nSummerActive2020Main_NpcId]
	
	if Get_UserMapId(nSummerActive2020Main_NowUserId)~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end
	
	if nSummerActive2020Main_NpcId == 26576 then
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,nSummerActive2020Main_NowUserId) >1 then 
			return 
		end
	else
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,nSummerActive2020Main_NowUserId) >0 then 
			return 
		end
	end 
	--背包空间判断
	local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	if not User_CheckLeftSpace(nSummerActive2020Main_Space,nSummerActive2020Main_NowUserId) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		return Sys_MsgBox(sSummerActive2020Main_Text,nil,nil,nSummerActive2020Main_NowUserId)
	end 
	
	--增加掩码
	Task_AddStatistic(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,1,1,nSummerActive2020Main_NowUserId)
	Task_SetStcTimestamp(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,0,nSummerActive2020Main_NowUserId)	
	
	SummerActive2020Main_AfterTaste(1,nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
	
	-- LinkNpcGossipFunc_New(nSummerActive2020Main_NpcId,"2-3" ,nil, nil, nSummerActive2020Main_NowUserId)
	
end

--背包空间判断
function SummerActive2020Main_ChkSpace(nSummerActive2020Main_NpcId,nSummerActive2020Main_Time,nSummerActive2020Main_UserId)
	local nSummerActive2020Main_NowUserId =  nSummerActive2020Main_UserId or Get_UserId()
	-- 获取玩家转世
	local nSummerActive2020Main_Mete = Get_UserMetempsychosis(nSummerActive2020Main_NowUserId) 
	local nSummerActive2020Main_Index = 1 
	if nSummerActive2020Main_Mete>=2 then 
		nSummerActive2020Main_Index=2
	end 

	local nSummerActive2020Main_Space=0
	for i=1,nSummerActive2020Main_Time do 
		if nSummerActive2020Main_NpcId == 26575 or nSummerActive2020Main_NpcId== 26576 then
			local bMark,nSpace =RewardTemplate_ChkRandomSpace(tSummerActive2020Main_Data["Reward"][nSummerActive2020Main_NpcId], nSummerActive2020Main_Index,nSummerActive2020Main_NowUserId)
			nSummerActive2020Main_Space = nSummerActive2020Main_Space + nSpace
		else
			local bMark,nSpace =RewardTemplate_ChkRandomSpace(tSummerActive2020Main_Data["Reward"], nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
			nSummerActive2020Main_Space = nSummerActive2020Main_Space + nSpace
		end 
	end
	
	if not User_CheckLeftSpace(nSummerActive2020Main_Space,nSummerActive2020Main_NowUserId) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		Sys_MsgBox(sSummerActive2020Main_Text,nil,nil,nSummerActive2020Main_NowUserId)
		return false
	else
		return true
	end 
end 
		
	
--仲夏金币品尝
function SummerActive2020Main_PayTasteCheckCoin(nSummerActive2020Main_NpcId,nSummerActive2020Main_CoinNum,nSummerActive2020Main_Time)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	local nSummerActive2020Main_NowUserId =  Get_UserId()
	local nSummerActive2020Main_CPNum = tSummerActive2020Main_Data["CostCP"][nSummerActive2020Main_NpcId]*nSummerActive2020Main_Time
	if Get_UserMapId(nSummerActive2020Main_NowUserId)~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end
	
	--背包空间判断
	if not SummerActive2020Main_ChkSpace(nSummerActive2020Main_NpcId,nSummerActive2020Main_Time,nSummerActive2020Main_NowUserId) then 
		return 
	end 
	
	-- local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	-- if not User_CheckLeftSpace(nSummerActive2020Main_Space,nSummerActive2020Main_NowUserId) then
		-- local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		-- return Sys_MsgBox(sSummerActive2020Main_Text,nil,nil,nSummerActive2020Main_NowUserId)
	-- end 
	
	--判断金币是否充足
	local nSummerActive2020Main_CoinId=tSummerActive2020Main_Data["CoinId"]
	if Item_ChkMulItem(nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinNum) then 
		--读条
		local nSummerActive2020Main_Secs = tSummerActive2020Main_Data["Loading"]["Secs"]
		local sSummerActive2020Main_Content = tSummerActive2020Main_Text["SystemTip"]["Taste"]
		local nSummerActive2020Main_ActionId = tSummerActive2020Main_Data["Loading"]["ActionId"]
		local sSummerActive2020Main_Func = "SummerActive2020Main_PayLoading</N>1</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_CoinNum .. "</N>" .. nSummerActive2020Main_Time .. "</N>" .. nSummerActive2020Main_NowUserId
		
		User_SetExplore(nSummerActive2020Main_Secs,sSummerActive2020Main_Content,nSummerActive2020Main_ActionId,sSummerActive2020Main_Func,nil,nSummerActive2020Main_NowUserId)
	else
		tNpcGossip[nSummerActive2020Main_NpcId]["Option211"] = string.format(tSummerActive2020Main_Text[nSummerActive2020Main_NpcId]["Option211"],nSummerActive2020Main_CPNum)
		tNpcGossip[nSummerActive2020Main_NpcId]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>" .. nSummerActive2020Main_Time ..  "</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_CPNum
		LinkNpcGossipFunc_New(nSummerActive2020Main_NpcId,"2-1" ,0, 8, nSummerActive2020Main_NowUserId)
	end 
end 

--天石品尝
function SummerActive2020Main_PayTasteCheckCP(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_CPNum)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	local nSummerActive2020Main_NowUserId = Get_UserId()
	if Get_UserMapId()~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end

	--背包空间判断
	if not SummerActive2020Main_ChkSpace(nSummerActive2020Main_NpcId,nSummerActive2020Main_Time,nSummerActive2020Main_NowUserId) then 
		return 
	end 
	
	-- local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	-- if not User_CheckLeftSpace(nSummerActive2020Main_Space) then
		-- local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		-- return Sys_MsgBox(sSummerActive2020Main_Text)
	-- end 
	
	--判断天石是否充足
	local nSummerActive2020Main_UserEmoney = Get_UserEMoney()
	if nSummerActive2020Main_UserEmoney < nSummerActive2020Main_CPNum then
		return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoEmoney"])
	end	
	
	local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
	local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]

	--隔天清掩码
	Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)

	if Get_UserStatisticValue(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType) == 1 then 
		--读条
		local nSummerActive2020Main_Secs = tSummerActive2020Main_Data["Loading"]["Secs"]
		local sSummerActive2020Main_Content = tSummerActive2020Main_Text["SystemTip"]["Taste"]
		local nSummerActive2020Main_ActionId = tSummerActive2020Main_Data["Loading"]["ActionId"]
		local sSummerActive2020Main_Func = "SummerActive2020Main_PayLoading</N>2</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_CPNum .. "</N>" .. nSummerActive2020Main_Time .. "</N>" .. nSummerActive2020Main_NowUserId
		
		User_SetExplore(nSummerActive2020Main_Secs,sSummerActive2020Main_Content,nSummerActive2020Main_ActionId,sSummerActive2020Main_Func,nil,nSummerActive2020Main_NowUserId)
	else
		tNpcGossip[nSummerActive2020Main_NpcId]["Text222"] = string.format(tSummerActive2020Main_Text[nSummerActive2020Main_NpcId]["Text222"],nSummerActive2020Main_CPNum)
		tNpcGossip[nSummerActive2020Main_NpcId]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>" .. nSummerActive2020Main_Time .. "</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_CPNum
		LinkNpcGossipFunc_New(nSummerActive2020Main_NpcId,"2-2")
	end 
end

--天石品尝二次确认
function SummerActive2020Main_PayTaste(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_CPNum)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	local nSummerActive2020Main_NowUserId = Get_UserId()
	
	if Get_UserMapId(nSummerActive2020Main_NowUserId)~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end

	--背包空间判断
	-- local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	-- if not User_CheckLeftSpace(nSummerActive2020Main_Space,nSummerActive2020Main_NowUserId) then
		-- local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		-- return Sys_MsgBox(sSummerActive2020Main_Text,nil,nil,nSummerActive2020Main_NowUserId)
	-- end 
	
	--背包空间判断
	if not SummerActive2020Main_ChkSpace(nSummerActive2020Main_NpcId,nSummerActive2020Main_Time,nSummerActive2020Main_NowUserId) then 
		return 
	end 
	
	
	--判断天石是否充足
	local nSummerActive2020Main_UserEmoney = Get_UserEMoney(nSummerActive2020Main_NowUserId)
	if nSummerActive2020Main_UserEmoney < nSummerActive2020Main_CPNum then
		return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoEmoney"])
	end	
	
	--读条
	local nSummerActive2020Main_Secs = tSummerActive2020Main_Data["Loading"]["Secs"]
	local sSummerActive2020Main_Content = tSummerActive2020Main_Text["SystemTip"]["Taste"]
	local nSummerActive2020Main_ActionId = tSummerActive2020Main_Data["Loading"]["ActionId"]
	local sSummerActive2020Main_Func = "SummerActive2020Main_PayLoading</N>2</N>" .. nSummerActive2020Main_NpcId .. "</N>" .. nSummerActive2020Main_CPNum .. "</N>" .. nSummerActive2020Main_Time .. "</N>" .. nSummerActive2020Main_NowUserId
	
	User_SetExplore(nSummerActive2020Main_Secs,sSummerActive2020Main_Content,nSummerActive2020Main_ActionId,sSummerActive2020Main_Func,nil,nSummerActive2020Main_NowUserId)

end
	
--品尝读条
function SummerActive2020Main_PayLoading(nSummerActive2020Main_Index,nSummerActive2020Main_NpcId,nSummerActive2020Main_CostNum,nSummerActive2020Main_Time,nSummerActive2020Main_UserId)
	local nSummerActive2020Main_NowUserId = nSummerActive2020Main_UserId or Get_UserId()
	
	if Get_UserMapId(nSummerActive2020Main_NowUserId)~=tSummerActive2020Main_Data["ChangeMap"]["MapId"] then
		return
	end
	
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	
	--背包空间判断
	-- local nSummerActive2020Main_Space=tSummerActive2020Main_Data["NeedSpace"][nSummerActive2020Main_NpcId]
	-- if not User_CheckLeftSpace(nSummerActive2020Main_Space,nSummerActive2020Main_NowUserId) then
		-- local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		-- return Sys_MsgBox(sSummerActive2020Main_Text,nil,nil,nSummerActive2020Main_NowUserId)
	-- end 
	--背包空间判断
	if not SummerActive2020Main_ChkSpace(nSummerActive2020Main_NpcId,nSummerActive2020Main_Time,nSummerActive2020Main_NowUserId) then 
		return 
	end 
	
	
	if nSummerActive2020Main_Index==1 then
		--判断金币是否充足
		local nSummerActive2020Main_CoinId=tSummerActive2020Main_Data["CoinId"]
		local nSummerActive2020Main_CoinNum=tSummerActive2020Main_Data["CostCoinNum"][nSummerActive2020Main_NpcId]*nSummerActive2020Main_Time
		if Item_ChkMulItem(nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinNum,1,0,nSummerActive2020Main_NowUserId) and Item_DelMulItem(nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinId,nSummerActive2020Main_CoinNum,1,0,nSummerActive2020Main_NowUserId) then
			SummerActive2020Main_AfterTaste(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
		else
			LinkNpcGossipFunc_New(nSummerActive2020Main_NpcId,"2-1" ,0, 8, nSummerActive2020Main_NowUserId)
		end 
	else
		--判断天石是否充足
		local nSummerActive2020Main_UserEmoney = Get_UserEMoney(nSummerActive2020Main_NowUserId)
		if nSummerActive2020Main_UserEmoney < nSummerActive2020Main_CostNum then
			return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoEmoney"])
		end	
		
		--扣除天石
		if User_AddEMoney(-nSummerActive2020Main_CostNum,nSummerActive2020Main_NowUserId) then
			SummerActive2020Main_AfterTaste(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
			Sys_SaveEmoneyBuy(string.format(tSummerActive2020Main_Data["Log"]["TasteMoney"][nSummerActive2020Main_NpcId],nSummerActive2020Main_CostNum,nSummerActive2020Main_CostNum),nSummerActive2020Main_NowUserId)
		end 
	end 
end 
		
	
--品尝后续处理
function SummerActive2020Main_AfterTaste(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_UserId)
	local nSummerActive2020Main_NowUserId = nSummerActive2020Main_UserId or Get_UserId()
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	local nSummerActive2020Main_AddTasteScore=tSummerActive2020Main_Data["TasteScore"][nSummerActive2020Main_NpcId]*nSummerActive2020Main_Time
	
	--加积分
	Task_AddStatistic(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType,nSummerActive2020Main_AddTasteScore,1,nSummerActive2020Main_NowUserId)
	Task_SetStcTimestamp(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType,0,nSummerActive2020Main_NowUserId)	
	
	--给奖励
	SummerActive2020Main_Reward(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
	
	--播放光效
	User_EffectAdd("self",tSummerActive2020Main_Data["Effect"]["Taste"],nSummerActive2020Main_NowUserId)
	
	--写进排行榜
	local nSummerActive2020Main_UserTotalScore = Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent, nSummerActive2020Main_TasteScoreType,nSummerActive2020Main_NowUserId)
	local nSummerActive2020Main_RankIndex = tSummerActive2020Main_Data["RankIndex"]

	RankingFunc_SetInfo(nSummerActive2020Main_RankIndex, nSummerActive2020Main_UserTotalScore,nSummerActive2020Main_NowUserId)
end 

--给奖+提示
function SummerActive2020Main_Reward(nSummerActive2020Main_Time,nSummerActive2020Main_NpcId,nSummerActive2020Main_UserId)
	local nSummerActive2020Main_NowUserId = nSummerActive2020Main_UserId or Get_UserId()
	-- 获取玩家转世
	local nSummerActive2020Main_Mete = Get_UserMetempsychosis(nSummerActive2020Main_NowUserId) 
	local nSummerActive2020Main_Index = 1 
	if nSummerActive2020Main_Mete>=2 then 
		nSummerActive2020Main_Index=2
	end 

	local tReward = {}
	if nSummerActive2020Main_NpcId == 26575 or nSummerActive2020Main_NpcId== 26576 then
		for i=1,nSummerActive2020Main_Time do 
			tReward = RewardTemplate_NewRandom(tSummerActive2020Main_Data["Reward"][nSummerActive2020Main_NpcId], nSummerActive2020Main_Index,nSummerActive2020Main_NowUserId)
		end 
	else
		for j=1,nSummerActive2020Main_Time do 
			tReward = RewardTemplate_NewRandom(tSummerActive2020Main_Data["Reward"], nSummerActive2020Main_NpcId,nSummerActive2020Main_NowUserId)
		end 
	end 
	
	local nSummerActive2020Main_ItemNameIndex=tReward[1]["tAward"][1]["Index"]
	local nSummerActive2020Main_AddScore=tSummerActive2020Main_Data["TasteScore"][nSummerActive2020Main_NpcId]*nSummerActive2020Main_Time
	-- User_TalkChannel2005(string.format("%d",nSummerActive2020Main_ItemNameIndex),nSummerActive2020Main_NowUserId)
	if nSummerActive2020Main_Time == 1 then 
		local sSummerActive2020Main_ItemName=""
		if nSummerActive2020Main_NpcId == 26575 or nSummerActive2020Main_NpcId== 26576 then
			sSummerActive2020Main_ItemName=tSummerActive2020Main_Text["Reward"][nSummerActive2020Main_NpcId][nSummerActive2020Main_Index][nSummerActive2020Main_ItemNameIndex]
		else
			sSummerActive2020Main_ItemName=tSummerActive2020Main_Text["Reward"][nSummerActive2020Main_NpcId][nSummerActive2020Main_ItemNameIndex]
		end 
		
		local sSummerActive2020Main_LinkFunc1="LinkNpcGossipFunc_New</N>" .. nSummerActive2020Main_NpcId .. "</S>2-3</N>0</N>8</N>" .. nSummerActive2020Main_NowUserId
		Sys_MsgBox(string.format(tSummerActive2020Main_Text["SystemTip"][nSummerActive2020Main_NpcId],sSummerActive2020Main_ItemName,nSummerActive2020Main_AddScore),sSummerActive2020Main_LinkFunc1,nil,nSummerActive2020Main_NowUserId)
		
		local sSummerActive2020Main_UserName = Get_UserName(nSummerActive2020Main_NowUserId)
		
		--外套碎片出全服公告
		if nSummerActive2020Main_ItemNameIndex == 1 then
			Sys_TalkBroadcast(string.format(tSummerActive2020Main_Text["SystemTip"]["BroadCast"],sSummerActive2020Main_UserName))
		end
	else
		local sSummerActive2020Main_LinkFunc2="LinkNpcGossipFunc_New</N>" .. nSummerActive2020Main_NpcId .. "</S>2-3</N>0</N>8</N>" .. nSummerActive2020Main_NowUserId
		Sys_MsgBox(string.format(tSummerActive2020Main_Text["SystemTip"]["Ten"][nSummerActive2020Main_NpcId],nSummerActive2020Main_AddScore),sSummerActive2020Main_LinkFunc2,nil,nSummerActive2020Main_NowUserId)
	end 
end 

--查看线下排行榜
function SummerActive2020Main_Link()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	local nSummerActive2020Main_Language = User_ChkLanguage()
	User_SendWebDialog(tSummerActive2020Main_Data["Web"][nSummerActive2020Main_Language])
end 


--领取阶段奖励
function SummerActive2020Main_GetStepReward()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	--可领奖阶段
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	
	local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
	local nSummerActive2020Main_CanGet=0
	
	for i, v in ipairs(tSummerActive2020Main_Data["StepNum"]) do 
		if nSummerActive2020Main_NowScore >= v then 
			nSummerActive2020Main_CanGet=nSummerActive2020Main_CanGet+1
		end 
	end 
		
	--当前领奖阶段
	local nSummerActive2020Main_NowStepRewardEvent=tSummerActive2020Main_Data["Stc"]["NowStepRewardEvent"]
	local nSummerActive2020Main_NowStepRewardEType=tSummerActive2020Main_Data["Stc"]["NowStepRewardType"]
	local nSummerActive2020Main_Got = Get_UserStatisticValue(nSummerActive2020Main_NowStepRewardEvent, nSummerActive2020Main_NowStepRewardEType)
	
	--无可领
	if nSummerActive2020Main_CanGet <= nSummerActive2020Main_Got then 
		return 
	end
	
	--领取
	
	--背包空间判断
	local nSummerActive2020Main_GetRewardSpace = RewardTemplate_GetRewardSpace(tSummerActive2020Main_Data["Step"][nSummerActive2020Main_Got+1])
	local nSummerActive2020Main_DelRewardSpace = RewardTemplate_GetDelSpace(tSummerActive2020Main_Data["Step"][nSummerActive2020Main_Got+1])
	local nSummerActive2020Main_NeedSpace = nSummerActive2020Main_GetRewardSpace - nSummerActive2020Main_DelRewardSpace
	if not User_CheckLeftSpace(nSummerActive2020Main_NeedSpace) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_NeedSpace)
		return Sys_MsgBox(sSummerActive2020Main_Text)
	end
	
	--加掩码
	Task_AddStatistic(nSummerActive2020Main_NowStepRewardEvent,nSummerActive2020Main_NowStepRewardEType,1,1)
	Task_SetStcTimestamp(nSummerActive2020Main_NowStepRewardEvent,nSummerActive2020Main_NowStepRewardEType,0)	
	
	--给奖励
	if RewardTemplate_UseItemAndMsg(tSummerActive2020Main_Data["Step"][nSummerActive2020Main_Got+1]) then 
		return LinkNpcGossipFunc_New(26571,"2-4")
	end 
end 

--领取800分奖励
function SummerActive2020Main_Ater800Reward()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]

	local nSummerActive2020Main_Ater800Event=tSummerActive2020Main_Data["Stc"]["Ater800Event"]
	local nSummerActive2020Main_Ater800Type=tSummerActive2020Main_Data["Stc"]["Ater800Type"]
	
	local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
	local nSummerActive2020Main_Ater800Time =Get_UserStatisticValue(nSummerActive2020Main_Ater800Event,nSummerActive2020Main_Ater800Type)
	
	local nSummerActive2020Main_LeftScore =(nSummerActive2020Main_NowScore-30000) - nSummerActive2020Main_Ater800Time*800
	
	if nSummerActive2020Main_NowScore >= 30000 and nSummerActive2020Main_LeftScore < 800 then 
		return
	end 
	
	local nSummerActive2020Main_GetNum= math.floor(nSummerActive2020Main_LeftScore/800)
	local tSummerActive2020Main_Reward = CommonFunc_Copy(tSummerActive2020Main_Data["Step"][8]) 
	tSummerActive2020Main_Reward["RewardItem"][1]["Attr"]=string.format(tSummerActive2020Main_Data["Step"][8]["RewardItem"][1]["Attr"],nSummerActive2020Main_GetNum)
	
	-- 判断背包空间
	local nSummerActive2020Main_GetRewardSpace = RewardTemplate_GetRewardSpace(tSummerActive2020Main_Reward)
	local nSummerActive2020Main_DelRewardSpace = RewardTemplate_GetDelSpace(tSummerActive2020Main_Reward)
	local nSummerActive2020Main_Space = nSummerActive2020Main_GetRewardSpace - nSummerActive2020Main_DelRewardSpace
	if not User_CheckLeftSpace(nSummerActive2020Main_Space) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_Space)
		return Sys_MsgBox(sSummerActive2020Main_Text)
	end
	
	--加掩码
	Task_AddStatistic(nSummerActive2020Main_Ater800Event,nSummerActive2020Main_Ater800Type,nSummerActive2020Main_GetNum,1)
	Task_SetStcTimestamp(nSummerActive2020Main_Ater800Event,nSummerActive2020Main_Ater800Type,0)	
	
	--给奖励
	RewardTemplate_UseItemAndMsg(tSummerActive2020Main_Reward)
end


-- 碎片合成外套
function SummerActive2020Main_MakeOne(nItemId)
	--判断背包空间
	local nSummerActive2020Main_GetRewardSpace = RewardTemplate_GetRewardSpace(tSummerActive2020Main_Data[nItemId][1])
	local nSummerActive2020Main_DelRewardSpace = RewardTemplate_GetDelSpace(tSummerActive2020Main_Data[nItemId][1])
	local nSummerActive2020Main_Space = nSummerActive2020Main_GetRewardSpace - nSummerActive2020Main_DelRewardSpace
	if not User_CheckLeftSpace(nSummerActive2020Main_Space) then
		return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoFragmentSpace1"])
	end

	local nSummerActive2020Main_Num = tSummerActive2020Main_Data["Fragment"]["MakeOne"]
	if Item_ChkMulItem(nItemId,nItemId,nSummerActive2020Main_Num) and Item_DelMulItem(nItemId,nItemId,nSummerActive2020Main_Num) then
		RewardTemplate_UseItemAndMsg(tSummerActive2020Main_Data[nItemId][1])
	else
		Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoFragment1"])
	end
end 

-- 去除赠属性
function SummerActive2020Main_WashMono(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 是否有洗赠外套
	local nSummerActive2020Main_CoatId = tSummerActive2020Main_Data["Fragment"]["CoatId"]
	local nSummerActive2020Main_UserId = Get_UserId()
	if not Item_ChkMulItem(nSummerActive2020Main_CoatId,nSummerActive2020Main_CoatId,1,2,0,nSummerActive2020Main_UserId,0) then
		return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoCoat"])
	end
	
	local nSummerActive2020Main_Num = tSummerActive2020Main_Data["Fragment"]["WashMono"]
	if Item_ChkMulItem(nItemId,nItemId,nSummerActive2020Main_Num) and Item_DelMulItem(nItemId,nItemId,nSummerActive2020Main_Num) and Item_DelMulItem(nSummerActive2020Main_CoatId,nSummerActive2020Main_CoatId,1,2,0,nUserId,0) then
		RewardTemplate_UseItem(tSummerActive2020Main_Data[nItemId][2])
		return Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["WashMono"])
	end
	
	Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoFragment2"])
end

--翻倍
function SummerActive2020Main_MakeTwo(nItemId)
	local nSummerActive2020Main_UserId = Get_UserId()
	local sSummerActive2020Main_Func = "SummerActive2020Main_MakeTwo</N>"..nItemId
	
	local nSummerActive2020Main_SuccessFragmentEvent =tSummerActive2020Main_Data["Stc"]["SuccessFragmentEvent"]
	local nSummerActive2020Main_SuccessFragmentType =tSummerActive2020Main_Data["Stc"]["SuccessFragmentType"]
	
	local nSummerActive2020Main_FailFragmentEvent =tSummerActive2020Main_Data["Stc"]["FailFragmentEvent"]
	local nSummerActive2020Main_FailFragmentType =tSummerActive2020Main_Data["Stc"]["FailFragmentType"]
	
	local nSummerActive2020Main_SuccessFragmentData= Get_UserStatisticValue(nSummerActive2020Main_SuccessFragmentEvent,nSummerActive2020Main_SuccessFragmentType)
	local nSummerActive2020Main_FailFragmentData= Get_UserStatisticValue(nSummerActive2020Main_FailFragmentEvent,nSummerActive2020Main_FailFragmentType)

	local nSummerActive2020Main_FragmentData = nSummerActive2020Main_SuccessFragmentData-nSummerActive2020Main_FailFragmentData
	
	--背包空间判断
	local nSummerActive2020Main_GetRewardSpace = RewardTemplate_GetRewardSpace(tSummerActive2020Main_Data[nItemId][3])
	local nSummerActive2020Main_DelRewardSpace = RewardTemplate_GetDelSpace(tSummerActive2020Main_Data[nItemId][3])
	local nSummerActive2020Main_NeedSpace = nSummerActive2020Main_GetRewardSpace - nSummerActive2020Main_DelRewardSpace
	if not User_CheckLeftSpace(nSummerActive2020Main_NeedSpace) then
		local sSummerActive2020Main_Text=string.format(tSummerActive2020Main_Text["SystemTip"]["NoSpace"],nSummerActive2020Main_NeedSpace)
		return Sys_MsgBox(sSummerActive2020Main_Text)
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local bSummerActive2020Main_Flag = 0
		--赢累积5个必输
		if nSummerActive2020Main_FragmentData>=5 then 
			bSummerActive2020Main_Flag = 0
		--输累积10个必赢
		elseif nSummerActive2020Main_FragmentData <= -10 then 
			bSummerActive2020Main_Flag = 1
		--50%几率输赢
		elseif Sys_Random(50,100) then
			bSummerActive2020Main_Flag = 1
		else
			bSummerActive2020Main_Flag = 0
		end 
		
		if bSummerActive2020Main_Flag == 1 then 
			--加掩码
			Task_AddStatistic(nSummerActive2020Main_SuccessFragmentEvent,nSummerActive2020Main_SuccessFragmentType,1,1)
			Task_SetStcTimestamp(nSummerActive2020Main_SuccessFragmentEvent,nSummerActive2020Main_SuccessFragmentType,0)
			
			RewardTemplate_UseItemAndMsg(tSummerActive2020Main_Data[nItemId][3])
			Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["Success"],sSummerActive2020Main_Func)
		else
			--加掩码
			Task_AddStatistic(nSummerActive2020Main_FailFragmentEvent,nSummerActive2020Main_FailFragmentType,1,1)
			Task_SetStcTimestamp(nSummerActive2020Main_FailFragmentEvent,nSummerActive2020Main_FailFragmentType,0)
			Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["Fail"],sSummerActive2020Main_Func)
		end 
	else
		Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["NoFragment3"])
	end 
end 
			
function SummerActive2020Main_ChangeStength(nItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		local nSummerActive2020Main_Num = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sSummerActive2020Main_Log =string.format(tSummerActive2020Main_Data["Log"]["Overtime"],nItemId,nSummerActive2020Main_Num)
			Sys_SaveActionFestivalLog(sSummerActive2020Main_Log)
			
			--返还气力
			local tStrengthBack=CommonFunc_Copy(tSummerActive2020Main_Data["StrengthBack"]) 
			tStrengthBack["RewardStrengthValue"]["Value"]=1000*nSummerActive2020Main_Num
			RewardTemplate_UseItemAndMsg(tStrengthBack)
		end 
	end 
end 
			

--上线自动接引导任务
function SummerActive2020Main_Login()
	local nSummerActive2020Main_UserId = Get_UserId()
	local nSummerActive2020Main_TaskId = tSummerActive2020Main_Data["ActivityTaskId"]
	local nSummerActive2020Main_Level = tSummerActive2020Main_Data["LevelJudge"]["Mete"]
	local nSummerActive2020Main_Metempsychosis = tSummerActive2020Main_Data["LevelJudge"]["Level"]
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nSummerActive2020Main_TaskId,0) then
			Task_DelTaskDetail(nSummerActive2020Main_TaskId)
		end
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nSummerActive2020Main_Metempsychosis,nSummerActive2020Main_Level,nSummerActive2020Main_UserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nSummerActive2020Main_TaskId,0) then
		Task_AddTaskDetail(nSummerActive2020Main_TaskId,0)
	end
end
--引导任务完成接口
function SummerActive2020Main_TaskComplete()
	local nSummerActive2020Main_UserId = Get_UserId()
	local nSummerActive2020Main_TaskId = tSummerActive2020Main_Data["ActivityTaskId"]


	--判断是否接受任务
	if not Task_ChkTaskDetail(nSummerActive2020Main_TaskId,nSummerActive2020Main_UserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nSummerActive2020Main_TaskId,"CompleteFlag",">=",1,nSummerActive2020Main_UserId) then
		return
	end
	-- 完成任务
	Task_SetTaskDetailCompleteFlag(nSummerActive2020Main_TaskId,1, nSummerActive2020Main_UserId)
	--播放光效
	User_EffectAdd("self",tSummerActive2020Main_Data["TaskEffect"])
end

function SummerActive2020Main_GoToMainCity()
	Sys_MsgBox(tSummerActive2020Main_Text["SystemTip"]["Leave"],"SummerActive2020Main_LeaveToCity")
end

--返回双龙城
function SummerActive2020Main_LeaveToCity()
	local nFlag = 1
	
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nFlag = 2
	end
	local nMapId = tSummerActive2020Main_Data["BackMap"][nFlag]["MapId"]
	local nCellx = tSummerActive2020Main_Data["BackMap"][nFlag]["Cellx"]
	local nCelly = tSummerActive2020Main_Data["BackMap"][nFlag]["Celly"]
	local nRange = tSummerActive2020Main_Data["BackMap"][nFlag]["Range"]
	
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	
	User_EffectAdd("self",tSummerActive2020Main_Data["TaskEffect"])
end

--屏蔽二次确认
function SummerActive2020Main_NoCheck(nSummerActive2020Main_NpcId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return 
	end 
	
	local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
	local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]

	--隔天清掩码
	Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
	
	if Get_UserStatisticValue(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)>0 then 
		return 
	end 
	
	--加掩码
	Task_AddStatistic(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType,1,1)
	Task_SetStcTimestamp(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType,0)
	
	LinkNpcGossipFunc_New(nSummerActive2020Main_NpcId,"1-2")
end 
	
----------------------------------NPC部分---------------------------------------------
tNpcFace[6243] = 46
tNpcFace[5964] = 29
tNpcFace[5965] = 21
tNpcFace[5966] = 55
tNpcFace[5967] = 48
tNpcFace[5968] = 113

tNpcGossip[26571]= tNpcGossip[26571] or DefaultNpc:new{}
tNpcGossip[26571]["OptionHidden"] = 1
tNpcGossip[26571]["DialogueText"] = tSummerActive2020Main_Text[26571]

--祝融，引导对白
tNpcGossip[26571]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26571]["tOption1-1"] = {111}
tNpcGossip[26571]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		if User_JudgeLevelAndMetempsychosis(tSummerActive2020Main_Data["LevelJudge"]["Level"],tSummerActive2020Main_Data["LevelJudge"]["Mete"]) then
			tNpcGossip[26571]["Text1-1"] = {111,112}
			tNpcGossip[26571]["Option111"]=tSummerActive2020Main_Text[26571]["Option111"]
			tNpcGossip[26571]["OptionFunc111"] = "SummerActive2020Main_EnterMap1"
		else
			tNpcGossip[26571]["Text1-1"] = {111,113,114,115,116}
			tNpcGossip[26571]["Option111"]=tSummerActive2020Main_Text[26571]["Option112"]
		end 
		
		local nSummerActive2020Main_FirstClickEvent=tSummerActive2020Main_Data["Stc"]["FirstClickEvent"]
		local nSummerActive2020Main_FirstClickType=tSummerActive2020Main_Data["Stc"]["FirstClickType"]
		
		if Get_UserStatisticValue(nSummerActive2020Main_FirstClickEvent,nSummerActive2020Main_FirstClickType) ==0 then 
			SummerActive2020Main_TaskComplete()
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 


--祝融，常规对白
tNpcGossip[26571]["Text1-2"] = {121,122,123,124}
tNpcGossip[26571]["tOption1-2"] = {121,123,122,124}
tNpcGossip[26571]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) and  User_JudgeLevelAndMetempsychosis(tSummerActive2020Main_Data["LevelJudge"]["Level"],tSummerActive2020Main_Data["LevelJudge"]["Mete"]) then
		local nSummerActive2020Main_FirstClickEvent=tSummerActive2020Main_Data["Stc"]["FirstClickEvent"]
		local nSummerActive2020Main_FirstClickType=tSummerActive2020Main_Data["Stc"]["FirstClickType"]
		
		if Get_UserStatisticValue(nSummerActive2020Main_FirstClickEvent,nSummerActive2020Main_FirstClickType) >0 then 
			--可领奖阶段
			local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
			local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
			
			local nSummerActive2020Main_Ater800Event=tSummerActive2020Main_Data["Stc"]["Ater800Event"]
			local nSummerActive2020Main_Ater800Type=tSummerActive2020Main_Data["Stc"]["Ater800Type"]
			
			local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
			local nSummerActive2020Main_Ater800Time =Get_UserStatisticValue(nSummerActive2020Main_Ater800Event,nSummerActive2020Main_Ater800Type)
			local nSummerActive2020Main_CanGet=0
			
			for i, v in ipairs(tSummerActive2020Main_Data["StepNum"]) do 
				if nSummerActive2020Main_NowScore >= v then 
					nSummerActive2020Main_CanGet=nSummerActive2020Main_CanGet+1
				end 
			end 
				
			--当前领奖阶段
			local nSummerActive2020Main_NowStepRewardEvent=tSummerActive2020Main_Data["Stc"]["NowStepRewardEvent"]
			local nSummerActive2020Main_NowStepRewardEType=tSummerActive2020Main_Data["Stc"]["NowStepRewardType"]
			local nSummerActive2020Main_Got = Get_UserStatisticValue(nSummerActive2020Main_NowStepRewardEvent, nSummerActive2020Main_NowStepRewardEType)
				
			if nSummerActive2020Main_Got<nSummerActive2020Main_CanGet or (nSummerActive2020Main_NowScore >= 30000 and ((nSummerActive2020Main_NowScore-30000) - nSummerActive2020Main_Ater800Time*800) >= 800) then 
				tNpcGossip[26571]["Option123"]=tSummerActive2020Main_Text[26571]["Option125"]
			else
				tNpcGossip[26571]["Option123"]=tSummerActive2020Main_Text[26571]["Option123"]
			end 
		
			return true
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26571]["OptionFunc121"] = "SummerActive2020Main_EnterMap2"
tNpcGossip[26571]["OptionPoint122"] = "2-1"
tNpcGossip[26571]["OptionPoint123"] = "2-4"


--查看仲夏积分排行
tNpcGossip[26571]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226}
tNpcGossip[26571]["tOption2-1"] = {212,211}
tNpcGossip[26571]["ChkFunc2-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		local nSummerActive2020Main_Index =214
		local tRankData = RankingFunc_GetNowData(tSummerActive2020Main_Data["RankIndex"])
		local sSummerActive2020Main_Name = ""
		local sSummerActive2020Main_Score = ""
		for i = 1, 10 do
			if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				sSummerActive2020Main_Score = tostring(tRankData[i]["Score"])
				sSummerActive2020Main_Name = tRankData[i]["UserName"]
				
				-- 名字处理 -- 海外使用
				sSummerActive2020Main_Name = string.gsub(sSummerActive2020Main_Name, "<", " ")
				sSummerActive2020Main_Name = string.gsub(sSummerActive2020Main_Name, ">", " ")
				
			else
				sSummerActive2020Main_Score = tSummerActive2020Main_Text["Dialog"]["Score"]
				sSummerActive2020Main_Name = tSummerActive2020Main_Text["Dialog"]["Name"]
			end
			local sSummerActive2020Main_Text=Sys_CenterAline(tostring(i), 8,tostring(sSummerActive2020Main_Score), 23, tostring(sSummerActive2020Main_Name), 42)
			tNpcGossip[26571]["Text" .. nSummerActive2020Main_Index + i] = string.format(tSummerActive2020Main_Text[26571]["Text" .. nSummerActive2020Main_Index + i],sSummerActive2020Main_Text)
		end 
		return true
	else
		return false
	end 
end 

tNpcGossip[26571]["OptionFunc211"] = "SummerActive2020Main_Link"
tNpcGossip[26571]["OptionPoint212"] = "2-3"

-- 查看排名奖励
tNpcGossip[26571]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[26571]["tOption2-3"] = {231}
tNpcGossip[26571]["OptionPoint231"] = "1-2"


-- 查看仲夏积分奖励
tNpcGossip[26571]["Text2-4"] = {241,242,243,244,245,246,247,248,249,250,251,254,252,253}
tNpcGossip[26571]["tOption2-4"] = {241,242,243}
tNpcGossip[26571]["ChkFunc2-4"] = function()
if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
	local nSummerActive2020Main_NowStepRewardEvent=tSummerActive2020Main_Data["Stc"]["NowStepRewardEvent"]
	local nSummerActive2020Main_NowStepRewardEType=tSummerActive2020Main_Data["Stc"]["NowStepRewardType"]
	
	--当前已领
	local nSummerActive2020Main_NowStepReward=Get_UserStatisticValue(nSummerActive2020Main_NowStepRewardEvent,nSummerActive2020Main_NowStepRewardEType)
	local sSummerActive2020Main_Got=tSummerActive2020Main_Text["Dialog"]["GotReward"]
	local nSummerActive2020Main_Index=244
	local nSummerActive2020Main_GotIndex=254
	
	for i=1,nSummerActive2020Main_NowStepReward do 
		tNpcGossip[26571]["Text" .. nSummerActive2020Main_Index + i] = tSummerActive2020Main_Text[26571]["Text" .. nSummerActive2020Main_GotIndex + i]
	end 
	
	for j=nSummerActive2020Main_NowStepReward+1, 7 do 
		tNpcGossip[26571]["Text" .. nSummerActive2020Main_Index + j] = string.format(tSummerActive2020Main_Text[26571]["Text" .. nSummerActive2020Main_Index + j],"")
	end 
	
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	
	local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
	
	tNpcGossip[26571]["Text253"]=string.format(tSummerActive2020Main_Text[26571]["Text253"],nSummerActive2020Main_NowScore)
	return true
	
else
	return false
end 
end 

tNpcGossip[26571]["OptionChkFunc241"]= function ()

	--可领奖阶段
	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]
	
	local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
	local nSummerActive2020Main_CanGet=0
	
	for i, v in ipairs(tSummerActive2020Main_Data["StepNum"]) do 
		if nSummerActive2020Main_NowScore >= v then 
			nSummerActive2020Main_CanGet=nSummerActive2020Main_CanGet+1
		end 
	end 
		
	--当前领奖阶段
	local nSummerActive2020Main_NowStepRewardEvent=tSummerActive2020Main_Data["Stc"]["NowStepRewardEvent"]
	local nSummerActive2020Main_NowStepRewardEType=tSummerActive2020Main_Data["Stc"]["NowStepRewardType"]
	local nSummerActive2020Main_Got = Get_UserStatisticValue(nSummerActive2020Main_NowStepRewardEvent, nSummerActive2020Main_NowStepRewardEType)
		
	if nSummerActive2020Main_Got<nSummerActive2020Main_CanGet then 
		return true
	else
		return false
	end 

end 
tNpcGossip[26571]["OptionFunc241"]= "SummerActive2020Main_GetStepReward"

tNpcGossip[26571]["OptionChkFunc242"]= function ()

	local nSummerActive2020Main_TasteScoreEvent=tSummerActive2020Main_Data["Stc"]["TasteScoreEvent"]
	local nSummerActive2020Main_TasteScoreType=tSummerActive2020Main_Data["Stc"]["TasteScoreType"]

	local nSummerActive2020Main_Ater800Event=tSummerActive2020Main_Data["Stc"]["Ater800Event"]
	local nSummerActive2020Main_Ater800Type=tSummerActive2020Main_Data["Stc"]["Ater800Type"]
	
	local nSummerActive2020Main_NowScore=Get_UserStatisticValue(nSummerActive2020Main_TasteScoreEvent,nSummerActive2020Main_TasteScoreType)
	local nSummerActive2020Main_Ater800Time =Get_UserStatisticValue(nSummerActive2020Main_Ater800Event,nSummerActive2020Main_Ater800Type)
	
	
	if nSummerActive2020Main_NowScore >= 30000 and ((nSummerActive2020Main_NowScore-30000) - nSummerActive2020Main_Ater800Time*800) >= 800 then 
		return true
	else
		return false
	end 
end 

tNpcGossip[26571]["OptionFunc242"]= "SummerActive2020Main_Ater800Reward"

tNpcGossip[26571]["OptionPoint243"] = "1-2"

--章鱼哥，首次引导对白
tNpcGossip[26572]= tNpcGossip[26572] or DefaultNpc:new{}
tNpcGossip[26572]["OptionHidden"] = 1
tNpcGossip[26572]["DialogueText"] = tSummerActive2020Main_Text[26572]

tNpcGossip[26572]["Text1-1"] = {111,112,113,114}
tNpcGossip[26572]["tOption1-1"] = {111,112}
tNpcGossip[26572]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Type"]
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) ==0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26572]["OptionFunc111"] = "SummerActive2020Main_FreeTaste</N>26572"

--章鱼哥，常规对白
tNpcGossip[26572]["Text1-2"] = {131,132,133,134}
tNpcGossip[26572]["tOption1-2"] = {131,132}
tNpcGossip[26572]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26572]["Type"]
		
		local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
		local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]
	
		--隔天清掩码
		Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) > 0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26572]["OptionFunc131"] = "SummerActive2020Main_PayTasteCheckCoin</N>26572</N>10</N>1"
tNpcGossip[26572]["OptionFunc132"] = "SummerActive2020Main_PayTasteCheckCoin</N>26572</N>100</N>10"

tNpcGossip[26572]["Text2-1"] = {211,212}
tNpcGossip[26572]["tOption2-1"] = {211,212}
-- tNpcGossip[26572]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>26572"
tNpcGossip[26572]["OptionFunc212"] = "NpcPosition_PathFind</N>26591"

tNpcGossip[26572]["Text2-2"] = {221,222,223}
tNpcGossip[26572]["tOption2-2"] = {221,222,223}
-- tNpcGossip[26572]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>26572</N>25"
tNpcGossip[26572]["OptionFunc223"] = "SummerActive2020Main_NoCheck</N>26572"

tNpcGossip[26572]["Text2-3"] = {121,122}
tNpcGossip[26572]["tOption2-3"] = {121,122}
tNpcGossip[26572]["OptionFunc121"] = "SummerActive2020Main_PayTasteCheckCoin</N>26572</N>10</N>1"
tNpcGossip[26572]["OptionFunc122"] = "SummerActive2020Main_PayTasteCheckCoin</N>26572</N>100</N>10"



--约克·买买提，首次引导对白

tNpcGossip[26573]= tNpcGossip[26573] or DefaultNpc:new{}
tNpcGossip[26573]["OptionHidden"] = 1
tNpcGossip[26573]["DialogueText"] = tSummerActive2020Main_Text[26573]

tNpcGossip[26573]["Text1-1"] = {111,112,113,114}
tNpcGossip[26573]["tOption1-1"] = {111,112}
tNpcGossip[26573]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Type"]
		
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) ==0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26573]["OptionFunc111"] = "SummerActive2020Main_FreeTaste</N>26573"

--约克·买买提，常规对白
tNpcGossip[26573]["Text1-2"] = {131,132,133,134}
tNpcGossip[26573]["tOption1-2"] = {131,132}
tNpcGossip[26573]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26573]["Type"]
		
		local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
		local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]
	
		--隔天清掩码
		Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) > 0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26573]["OptionFunc131"] = "SummerActive2020Main_PayTasteCheckCoin</N>26573</N>10</N>1"
tNpcGossip[26573]["OptionFunc132"] = "SummerActive2020Main_PayTasteCheckCoin</N>26573</N>100</N>10"

tNpcGossip[26573]["Text2-1"] = {211,212}
tNpcGossip[26573]["tOption2-1"] = {211,212}
-- tNpcGossip[26573]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>26573"
tNpcGossip[26573]["OptionFunc212"] = "NpcPosition_PathFind</N>26591"

tNpcGossip[26573]["Text2-2"] = {221,222,223}
tNpcGossip[26573]["tOption2-2"] = {221,222,223}
-- tNpcGossip[26573]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>26573</N>25"
tNpcGossip[26573]["OptionFunc223"] = "SummerActive2020Main_NoCheck</N>26573"

tNpcGossip[26573]["Text2-3"] = {121,122}
tNpcGossip[26573]["tOption2-3"] = {121,122}
tNpcGossip[26573]["OptionFunc121"] = "SummerActive2020Main_PayTasteCheckCoin</N>26573</N>10</N>1"
tNpcGossip[26573]["OptionFunc122"] = "SummerActive2020Main_PayTasteCheckCoin</N>26573</N>100</N>10"

--李大嘴，首次引导对白
tNpcGossip[26574]= tNpcGossip[26574] or DefaultNpc:new{}
tNpcGossip[26574]["OptionHidden"] = 1
tNpcGossip[26574]["DialogueText"] = tSummerActive2020Main_Text[26574]

tNpcGossip[26574]["Text1-1"] = {111,112,113,114}
tNpcGossip[26574]["tOption1-1"] = {111,112}
tNpcGossip[26574]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Type"]
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) ==0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26574]["OptionFunc111"] = "SummerActive2020Main_FreeTaste</N>26574"

--李大嘴，常规对白
tNpcGossip[26574]["Text1-2"] = {131,132,133,134}
tNpcGossip[26574]["tOption1-2"] = {131,132}
tNpcGossip[26574]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26574]["Type"]
		
		local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
		local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]
	
		--隔天清掩码
		Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) > 0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26574]["OptionFunc131"] = "SummerActive2020Main_PayTasteCheckCoin</N>26574</N>10</N>1"
tNpcGossip[26574]["OptionFunc132"] = "SummerActive2020Main_PayTasteCheckCoin</N>26574</N>100</N>10"

tNpcGossip[26574]["Text2-1"] = {211,212}
tNpcGossip[26574]["tOption2-1"] = {211,212}
-- tNpcGossip[26574]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>26574"
tNpcGossip[26574]["OptionFunc212"] = "NpcPosition_PathFind</N>26591"

tNpcGossip[26574]["Text2-2"] = {221,222,223}
tNpcGossip[26574]["tOption2-2"] = {221,222,223}
-- tNpcGossip[26574]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>26574</N>25"
tNpcGossip[26574]["OptionFunc223"] = "SummerActive2020Main_NoCheck</N>26574"

tNpcGossip[26574]["Text2-3"] = {121,122}
tNpcGossip[26574]["tOption2-3"] = {121,122}
tNpcGossip[26574]["OptionFunc121"] = "SummerActive2020Main_PayTasteCheckCoin</N>26574</N>10</N>1"
tNpcGossip[26574]["OptionFunc122"] = "SummerActive2020Main_PayTasteCheckCoin</N>26574</N>100</N>10"

--陈澄呈，首次引导对白
tNpcGossip[26575]= tNpcGossip[26575] or DefaultNpc:new{}
tNpcGossip[26575]["OptionHidden"] = 1
tNpcGossip[26575]["DialogueText"] = tSummerActive2020Main_Text[26575]

tNpcGossip[26575]["Text1-1"] = {111,112,113,114}
tNpcGossip[26575]["tOption1-1"] = {111,112}
tNpcGossip[26575]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Type"]
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) ==0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26575]["OptionFunc111"] = "SummerActive2020Main_FreeTaste</N>26575"

--陈澄呈，常规对白
tNpcGossip[26575]["Text1-2"] = {131,132,133,134}
tNpcGossip[26575]["tOption1-2"] = {131,132}
tNpcGossip[26575]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26575]["Type"]
		
		local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
		local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]
	
		--隔天清掩码
		Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) > 0 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26575]["OptionFunc131"] = "SummerActive2020Main_PayTasteCheckCoin</N>26575</N>20</N>1"
tNpcGossip[26575]["OptionFunc132"] = "SummerActive2020Main_PayTasteCheckCoin</N>26575</N>200</N>10"

tNpcGossip[26575]["Text2-1"] = {211,212}
tNpcGossip[26575]["tOption2-1"] = {211,212}
-- tNpcGossip[26575]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>26575"
tNpcGossip[26575]["OptionFunc212"] = "NpcPosition_PathFind</N>26591"

tNpcGossip[26575]["Text2-2"] = {221,222,223}
tNpcGossip[26575]["tOption2-2"] = {221,222,223}
-- tNpcGossip[26575]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>26575</N>45"
tNpcGossip[26575]["OptionFunc223"] = "SummerActive2020Main_NoCheck</N>26575"

tNpcGossip[26575]["Text2-3"] = {121,122}
tNpcGossip[26575]["tOption2-3"] = {121,122}
tNpcGossip[26575]["OptionFunc121"] = "SummerActive2020Main_PayTasteCheckCoin</N>26575</N>20</N>1"
tNpcGossip[26575]["OptionFunc122"] = "SummerActive2020Main_PayTasteCheckCoin</N>26575</N>200</N>10"

--金香玉，首次引导对白
tNpcGossip[26576]= tNpcGossip[26576] or DefaultNpc:new{}
tNpcGossip[26576]["OptionHidden"] = 1
tNpcGossip[26576]["DialogueText"] = tSummerActive2020Main_Text[26576]

tNpcGossip[26576]["Text1-1"] = {111,112,113,114}
tNpcGossip[26576]["tOption1-1"] = {111,112}
tNpcGossip[26576]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Type"]
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) ==0 then 
			Task_AddStatistic(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,1,1)
			Task_SetStcTimestamp(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType,0)	
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26576]["OptionPoint111"] = "1-3"

--金香玉，常规对白
tNpcGossip[26576]["Text1-2"] = {141,142,143,144}
tNpcGossip[26576]["tOption1-2"] = {141,142}
tNpcGossip[26576]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]) then
		
		local nSummerActive2020Main_NpcEvent=tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Event"]
		local nSummerActive2020Main_NpcType=tSummerActive2020Main_Data["Stc"]["Npc"][26576]["Type"]
		
		local nSummerActive2020Main_SecondCheckEvent=tSummerActive2020Main_Data["Stc"]["SecondCheckEvent"]
		local nSummerActive2020Main_SecondCheckType=tSummerActive2020Main_Data["Stc"]["SecondCheckType"]
	
		--隔天清掩码
		Task_StcReset(nSummerActive2020Main_SecondCheckEvent,nSummerActive2020Main_SecondCheckType)
		Task_StcReset(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType)
		
		if Get_UserStatisticValue(nSummerActive2020Main_NpcEvent,nSummerActive2020Main_NpcType) > 1 then 
			return true 
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26576]["OptionFunc141"] = "SummerActive2020Main_PayTasteCheckCoin</N>26576</N>30</N>1"
tNpcGossip[26576]["OptionFunc142"] = "SummerActive2020Main_PayTasteCheckCoin</N>26576</N>300</N>10"

tNpcGossip[26576]["Text1-3"] = {121,122,123,124}
tNpcGossip[26576]["tOption1-3"] = {121,122}
tNpcGossip[26576]["OptionFunc121"] = "SummerActive2020Main_FreeTaste</N>26576"

tNpcGossip[26576]["Text2-1"] = {211,212}
tNpcGossip[26576]["tOption2-1"] = {211,212}
-- tNpcGossip[26576]["OptionFunc211"] = "SummerActive2020Main_PayTasteCheckCP</N>26576"
tNpcGossip[26576]["OptionFunc212"] = "NpcPosition_PathFind</N>26591"

tNpcGossip[26576]["Text2-2"] = {221,222,223}
tNpcGossip[26576]["tOption2-2"] = {221,222,223}
-- tNpcGossip[26576]["OptionFunc221"] = "SummerActive2020Main_PayTaste</N>26576</N>66"
tNpcGossip[26576]["OptionFunc223"] = "SummerActive2020Main_NoCheck</N>26576"

tNpcGossip[26576]["Text2-3"] = {131,132}
tNpcGossip[26576]["tOption2-3"] = {131,132}
tNpcGossip[26576]["OptionFunc131"] = "SummerActive2020Main_PayTasteCheckCoin</N>26576</N>30</N>1"
tNpcGossip[26576]["OptionFunc132"] = "SummerActive2020Main_PayTasteCheckCoin</N>26576</N>300</N>10"




---------------------------------物品部分---------------------------------------------
tItem[3331105] = tItem[3331105] or {}
tItem[3331105]["Function"] = function(nItemId,sItemName)

	local nSummerActive2020Main_UserId = Get_UserId()
	local bSummerActive2020Main_Judge = TermsOfUse_Main(nItemId,tSummerActive2020Main_Data[nItemId])
	
	if not bSummerActive2020Main_Judge then
		return
	end	
	
	RewardTemplate_UseItemAndMsg(tSummerActive2020Main_Data[nItemId],nSummerActive2020Main_UserId,bSummerActive2020Main_Judge)
end

tItem[3331106] = tItem[3331105]
tItem[3331107] = tItem[3331105]
tItem[3331108] = tItem[3331105]
tItem[3331109] = tItem[3331105]
tItem[3331110] = tItem[3331105]
tItem[3331111] = tItem[3331105]
tItem[3331112] = tItem[3331105]
tItem[3331113] = tItem[3331105]
tItem[3331114] = tItem[3331105]
tItem[3331115] = tItem[3331105]
tItem[3331116] = tItem[3331105]
tItem[3331117] = tItem[3331105]
tItem[3331118] = tItem[3331105]
tItem[3331119] = tItem[3331105]

tItem[3331934] = tItem[3331105]
tItem[3331935] = tItem[3331105]


tItemFace[3331121] = 2992
tItem[3331121] = tItem[3331121] or {}
tItem[3331121]["DialogueText"] = tSummerActive2020Main_Text[3331121]
tItem[3331121]["Text1-1"] = {111}
tItem[3331121]["tOption1-1"] = {111,112,113,114}
tItem[3331121]["OptionFunc111"] = "SummerActive2020Main_MakeOne</N>3331121"
tItem[3331121]["OptionFunc112"] = "SummerActive2020Main_MakeTwo</N>3331121"
tItem[3331121]["OptionPoint113"] = "1-2"
tItem[3331121]["OptionChkFunc114"]= function ()
	if CommonFunc_GetAfterActivityTime(tActivityTime["SummerActive"]["ActivityTime"]) then 
		return true
	else
		return false
	end 
end 
tItem[3331121]["OptionPoint114"] = "1-3"


tItem[3331121]["Text1-2"] = {121}
tItem[3331121]["tOption1-2"] = {121,122}
tItem[3331121]["OptionFunc121"] = "SummerActive2020Main_WashMono</N>3331121"

tItem[3331121]["Text1-3"] = {131}
tItem[3331121]["tOption1-3"] = {131,132}
tItem[3331121]["OptionFunc131"] = "SummerActive2020Main_ChangeStength</N>3331121"

----------------------------------------------------陷阱--------------------------------------------------------
tTrap[2599] = tTrap[2599] or {}
tTrap[2599]["Function"] = function (nTrapId,nTrapType)
	SummerActive2020Main_GoToMainCity()
end
---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SummerActive2020Main_Login)

---隔天清限量
tGlobalData_Info[54473] = {}
tGlobalData_Info[54473]["Time"] = {}
tGlobalData_Info[54473]["Time"]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
tGlobalData_Info[54473]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[54473]["Rest"] = {}
tGlobalData_Info[54473]["Rest"]["GlobalId"] = {54473}
tGlobalData_Info[54473]["Rest"]["Pos"] = {1,3,5}
