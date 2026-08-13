------------------------------------------------------------------------------------
--Name：       190211[英文征服][活动脚本]3月普天同庆活动
--Creator:      茅志伟
--Created:     2019/02/11
------------------------------------------------------------------------------------
--命名前缀 tMarchSpringGiftBag_

--lua.ini 41133
--41133 = V100\ActiveScript\[Conquer][ActiveScript]MarchSpringGiftBag.lua
--41133 = V100\活动脚本\[征服][活动脚本]3月普天同庆活动.lua

--LogId 12001289

--glocal 
-- 53229 记录0转礼包全服限量奖励数量
-- 53230 记录1转礼包全服限量奖励数量
-- 53231 记录2转礼包全服限量奖励数量
-- 53233 判断新老服，新服不发礼包

--stc掩码
--190 34 记录全职业免费开启礼包次数
--190 35 记录斗士额外免费开启礼包次数
--190 36 记录是否领取过普天同庆礼盒
--190 37 记录是否打开过普天同庆礼盒



--掩码表
local tMarchSpringGiftBag_Stc = {}
--记录全职业免费开启礼包次数
tMarchSpringGiftBag_Stc[1] = {}
tMarchSpringGiftBag_Stc[1]["EventType"] = 190
tMarchSpringGiftBag_Stc[1]["DataType"] = 34
--记录斗士额外免费开启礼包次数
tMarchSpringGiftBag_Stc[2] = {}
tMarchSpringGiftBag_Stc[2]["EventType"] = 190
tMarchSpringGiftBag_Stc[2]["DataType"] = 35
--记录是否领取过普天同庆礼盒
tMarchSpringGiftBag_Stc[3] = {}
tMarchSpringGiftBag_Stc[3]["EventType"] = 190
tMarchSpringGiftBag_Stc[3]["DataType"] = 36
--记录是否打开过普天同庆礼盒
tMarchSpringGiftBag_Stc[4] = {}
tMarchSpringGiftBag_Stc[4]["EventType"] = 190
tMarchSpringGiftBag_Stc[4]["DataType"] = 37

--常量表
local tMarchSpringGiftBag_Data = {}
tMarchSpringGiftBag_Data["Pro"] = {}
tMarchSpringGiftBag_Data["Pro"][1] = {90,95}
-- tMarchSpringGiftBag_Data["Pro"][1] = {160,165}

tMarchSpringGiftBag_Data["GlobalId"] = {}
tMarchSpringGiftBag_Data["GlobalId"][1] = 53233
tMarchSpringGiftBag_Data["GlobalId"][2] = 53229
tMarchSpringGiftBag_Data["GlobalId"][3] = 53230
tMarchSpringGiftBag_Data["GlobalId"][4] = 53231

tMarchSpringGiftBag_Data["Metempsychosis0"] = 0
tMarchSpringGiftBag_Data["Metempsychosis1"] = 1
tMarchSpringGiftBag_Data["Metempsychosis2"] = 2
tMarchSpringGiftBag_Data["Level1"] = 15
tMarchSpringGiftBag_Data["Level2"] = 80

local tMarchSpringGiftBag_Item = {}
tMarchSpringGiftBag_Item[3320128] = {}
tMarchSpringGiftBag_Item[3320128]["Id"] = 3320128

tMarchSpringGiftBag_Item[3320129] = {}
tMarchSpringGiftBag_Item[3320129]["Id"] = 3320129

tMarchSpringGiftBag_Item[3320130] = {}
tMarchSpringGiftBag_Item[3320130]["Id"] = 3320130
tMarchSpringGiftBag_Item["Attr"] = "0 1 3"

tMarchSpringGiftBag_Item[3320131] = {}
tMarchSpringGiftBag_Item[3320131]["Id"] = 3320131

local tMarchSpringGiftBag_Money = {}
tMarchSpringGiftBag_Money[3320128] = {130,0}
tMarchSpringGiftBag_Money[3320129] = {200,100}
tMarchSpringGiftBag_Money[3320130] = {300,200}



local tMarchSpringGiftBag_Pack = {}
--0转礼包
tMarchSpringGiftBag_Pack[3320128] = {}
tMarchSpringGiftBag_Pack[3320128]["ItemChanceSum"] = 10000
--100赠点
tMarchSpringGiftBag_Pack[3320128][1] = {}
tMarchSpringGiftBag_Pack[3320128][1]["RandomItemChanceType"] = 1
tMarchSpringGiftBag_Pack[3320128][1]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320128][1]["RewardEMoneyMono"]["Value"] = 100
-- tMarchSpringGiftBag_Pack[3320128][1]["EmoneyLog"] = "350	22020	0	0	1	"
-- tMarchSpringGiftBag_Pack[3320128][1]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320128][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][1]["LogId"] = 12001289
--经验球赠*1
tMarchSpringGiftBag_Pack[3320128][2] = {}
tMarchSpringGiftBag_Pack[3320128][2]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][2]["ItemChance"] = 2000
tMarchSpringGiftBag_Pack[3320128][2]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][2]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][2]["RewardItem"][1]["Id"] = 723700
tMarchSpringGiftBag_Pack[3320128][2]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320128][2]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][2]["LogId"] = 12001289
--流星卷赠
tMarchSpringGiftBag_Pack[3320128][3] = {}
tMarchSpringGiftBag_Pack[3320128][3]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][3]["ItemChance"] = 2000
tMarchSpringGiftBag_Pack[3320128][3]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][3]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][3]["RewardItem"][1]["Id"] = 720027
tMarchSpringGiftBag_Pack[3320128][3]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320128][3]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][3]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][3]["LogId"] = 12001289
--100点修行值
tMarchSpringGiftBag_Pack[3320128][4] = {}
tMarchSpringGiftBag_Pack[3320128][4]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][4]["ItemChance"] = 2500
tMarchSpringGiftBag_Pack[3320128][4]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][4]["RewardCultivation"] = {}
tMarchSpringGiftBag_Pack[3320128][4]["RewardCultivation"]["Value"] = 100
tMarchSpringGiftBag_Pack[3320128][4]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][4]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][4]["LogId"] = 12001289
--微光星陨石*1
tMarchSpringGiftBag_Pack[3320128][5] = {}
tMarchSpringGiftBag_Pack[3320128][5]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][5]["ItemChance"] = 1500
tMarchSpringGiftBag_Pack[3320128][5]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][5]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][5]["RewardItem"][1]["Id"] = 3009000
tMarchSpringGiftBag_Pack[3320128][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tMarchSpringGiftBag_Pack[3320128][5]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][5]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][5]["LogId"] = 12001289
--黄色神纹精粹赠*2
tMarchSpringGiftBag_Pack[3320128][6] = {}
tMarchSpringGiftBag_Pack[3320128][6]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][6]["ItemChance"] = 500
tMarchSpringGiftBag_Pack[3320128][6]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][6]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][6]["RewardItem"][1]["Id"] = 3309000
tMarchSpringGiftBag_Pack[3320128][6]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320128][6]["GlobalId"] = 53229
tMarchSpringGiftBag_Pack[3320128][6]["Pos"] = 0
tMarchSpringGiftBag_Pack[3320128][6]["MaxData"] = 1000
tMarchSpringGiftBag_Pack[3320128][6]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320128][6]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][6]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][6]["LogId"] = 12001289
--龙珠赠
tMarchSpringGiftBag_Pack[3320128][7] = {}
tMarchSpringGiftBag_Pack[3320128][7]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][7]["ItemChance"] = 500
tMarchSpringGiftBag_Pack[3320128][7]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][7]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][7]["RewardItem"][1]["Id"] = 1088000
tMarchSpringGiftBag_Pack[3320128][7]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320128][7]["GlobalId"] = 53229
tMarchSpringGiftBag_Pack[3320128][7]["Pos"] = 1
tMarchSpringGiftBag_Pack[3320128][7]["MaxData"] = 100
tMarchSpringGiftBag_Pack[3320128][7]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320128][7]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][7]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][7]["LogId"] = 12001289
--30点赠点
tMarchSpringGiftBag_Pack[3320128][8] = {}
tMarchSpringGiftBag_Pack[3320128][8]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][8]["ItemChance"] = 800
tMarchSpringGiftBag_Pack[3320128][8]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320128][8]["RewardEMoneyMono"]["Value"] = 30
tMarchSpringGiftBag_Pack[3320128][8]["EmoneyLog"] = "10000	0176	0	0	30	"
tMarchSpringGiftBag_Pack[3320128][8]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][8]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][8]["LogId"] = 12001289
--赤练石+2赠
tMarchSpringGiftBag_Pack[3320128][9] = {}
tMarchSpringGiftBag_Pack[3320128][9]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320128][9]["ItemChance"] = 200
tMarchSpringGiftBag_Pack[3320128][9]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320128][9]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320128][9]["RewardItem"][1]["Id"] = 730002
tMarchSpringGiftBag_Pack[3320128][9]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320128][9]["GlobalId"] = 53229
tMarchSpringGiftBag_Pack[3320128][9]["Pos"] = 2
tMarchSpringGiftBag_Pack[3320128][9]["MaxData"] = 30
tMarchSpringGiftBag_Pack[3320128][9]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320128][9]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320128][9]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320128][9]["LogId"] = 12001289
--1转礼包
tMarchSpringGiftBag_Pack[3320129] = {}
tMarchSpringGiftBag_Pack[3320129]["ItemChanceSum"] = 10000
--150赠点
tMarchSpringGiftBag_Pack[3320129][1] = {}
tMarchSpringGiftBag_Pack[3320129][1]["RandomItemChanceType"] = 1
tMarchSpringGiftBag_Pack[3320129][1]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320129][1]["RewardEMoneyMono"]["Value"] = 150
-- tMarchSpringGiftBag_Pack[3320129][1]["EmoneyLog"] = "350	22021	0	0	1	"
-- tMarchSpringGiftBag_Pack[3320129][1]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320129][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][1]["LogId"] = 12001289
-- --50点修行值
-- tMarchSpringGiftBag_Pack[3320129][2] = {}
-- tMarchSpringGiftBag_Pack[3320129][2]["RandomItemChanceType"] = 1
-- tMarchSpringGiftBag_Pack[3320129][2]["RewardCultivation"] = {}
-- tMarchSpringGiftBag_Pack[3320129][2]["RewardCultivation"]["Value"] = 50
-- tMarchSpringGiftBag_Pack[3320129][2]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320129][2]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320129][2]["LogId"] = 12001289
--流星卷赠
tMarchSpringGiftBag_Pack[3320129][2] = {}
tMarchSpringGiftBag_Pack[3320129][2]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][2]["ItemChance"] = 2300
tMarchSpringGiftBag_Pack[3320129][2]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][2]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][2]["RewardItem"][1]["Id"] = 720027
tMarchSpringGiftBag_Pack[3320129][2]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320129][2]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][2]["LogId"] = 12001289
--P5神魂赠可选包（含雷神神魂）
tMarchSpringGiftBag_Pack[3320129][3] = {}
tMarchSpringGiftBag_Pack[3320129][3]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][3]["ItemChance"] = 2300
tMarchSpringGiftBag_Pack[3320129][3]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][3]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][3]["RewardItem"][1]["Id"] = 3303395
tMarchSpringGiftBag_Pack[3320129][3]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320129][3]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][3]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][3]["LogId"] = 12001289
--微光星陨石*2
tMarchSpringGiftBag_Pack[3320129][4] = {}
tMarchSpringGiftBag_Pack[3320129][4]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][4]["ItemChance"] = 1800
tMarchSpringGiftBag_Pack[3320129][4]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][4]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][4]["RewardItem"][1]["Id"] = 3009000
tMarchSpringGiftBag_Pack[3320129][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
-- tMarchSpringGiftBag_Pack[3320129][4]["GlobalId"] = 53230
-- tMarchSpringGiftBag_Pack[3320129][4]["Pos"] = 0
-- tMarchSpringGiftBag_Pack[3320129][4]["MaxData"] = 100
-- tMarchSpringGiftBag_Pack[3320129][4]["FullIndex"] = 8
tMarchSpringGiftBag_Pack[3320129][4]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][4]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][4]["LogId"] = 12001289
--50点赠品天石
tMarchSpringGiftBag_Pack[3320129][5] = {}
tMarchSpringGiftBag_Pack[3320129][5]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][5]["ItemChance"] = 1200
tMarchSpringGiftBag_Pack[3320129][5]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320129][5]["RewardEMoneyMono"]["Value"] = 50
tMarchSpringGiftBag_Pack[3320129][5]["EmoneyLog"] = "10000	0177	0	0	50	"
tMarchSpringGiftBag_Pack[3320129][5]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][5]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][5]["LogId"] = 12001289
--赤炼石+3赠
tMarchSpringGiftBag_Pack[3320129][6] = {}
tMarchSpringGiftBag_Pack[3320129][6]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][6]["ItemChance"] = 1000
tMarchSpringGiftBag_Pack[3320129][6]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][6]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][6]["RewardItem"][1]["Id"] = 730003
tMarchSpringGiftBag_Pack[3320129][6]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320129][6]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][6]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][6]["LogId"] = 12001289
--龙珠赠
tMarchSpringGiftBag_Pack[3320129][7] = {}
tMarchSpringGiftBag_Pack[3320129][7]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][7]["ItemChance"] = 800
tMarchSpringGiftBag_Pack[3320129][7]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][7]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][7]["RewardItem"][1]["Id"] = 1088000
tMarchSpringGiftBag_Pack[3320129][7]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320129][7]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][7]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][7]["LogId"] = 12001289
--赤炼石+3赠*2
tMarchSpringGiftBag_Pack[3320129][8] = {}
tMarchSpringGiftBag_Pack[3320129][8]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][8]["ItemChance"] = 500
tMarchSpringGiftBag_Pack[3320129][8]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320129][8]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320129][8]["RewardItem"][1]["Id"] = 730003
tMarchSpringGiftBag_Pack[3320129][8]["RewardItem"][1]["Attr"] = "0 2 3"
tMarchSpringGiftBag_Pack[3320129][8]["GlobalId"] = 53230
tMarchSpringGiftBag_Pack[3320129][8]["Pos"] = 1
tMarchSpringGiftBag_Pack[3320129][8]["MaxData"] = 50
tMarchSpringGiftBag_Pack[3320129][8]["FullIndex"] = 3
tMarchSpringGiftBag_Pack[3320129][8]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][8]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][8]["LogId"] = 12001289
--100点非赠
tMarchSpringGiftBag_Pack[3320129][9] = {}
tMarchSpringGiftBag_Pack[3320129][9]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320129][9]["ItemChance"] = 100
tMarchSpringGiftBag_Pack[3320129][9]["RewardEMoney"] = {} -- 给天石
tMarchSpringGiftBag_Pack[3320129][9]["RewardEMoney"]["Value"] = 100
tMarchSpringGiftBag_Pack[3320129][9]["GlobalId"] = 53230
tMarchSpringGiftBag_Pack[3320129][9]["Pos"] = 2
tMarchSpringGiftBag_Pack[3320129][9]["MaxData"] = 10
tMarchSpringGiftBag_Pack[3320129][9]["FullIndex"] = 3
tMarchSpringGiftBag_Pack[3320129][9]["EmoneyLog"] = "10000	0178	-100	-100	1	"
tMarchSpringGiftBag_Pack[3320129][9]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320129][9]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320129][9]["LogId"] = 12001289
--2转礼包
tMarchSpringGiftBag_Pack[3320130] = {}
tMarchSpringGiftBag_Pack[3320130]["ItemChanceSum"] = 10000
--200赠点
tMarchSpringGiftBag_Pack[3320130][1] = {}
tMarchSpringGiftBag_Pack[3320130][1]["RandomItemChanceType"] = 1
tMarchSpringGiftBag_Pack[3320130][1]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320130][1]["RewardEMoneyMono"]["Value"] = 200
-- tMarchSpringGiftBag_Pack[3320130][1]["EmoneyLog"] = "350	22022	0	0	1	"
-- tMarchSpringGiftBag_Pack[3320130][1]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320130][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][1]["LogId"] = 12001289
--微光星陨石*4
tMarchSpringGiftBag_Pack[3320130][2] = {}
tMarchSpringGiftBag_Pack[3320130][2]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][2]["ItemChance"] = 5000
tMarchSpringGiftBag_Pack[3320130][2]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][2]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][2]["RewardItem"][1]["Id"] = 3009000
tMarchSpringGiftBag_Pack[3320130][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
tMarchSpringGiftBag_Pack[3320130][2]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][2]["LogId"] = 12001289
--强炼丹*4赠
tMarchSpringGiftBag_Pack[3320130][3] = {}
tMarchSpringGiftBag_Pack[3320130][3]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][3]["ItemChance"] = 1100
tMarchSpringGiftBag_Pack[3320130][3]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][3]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][3]["RewardItem"][1]["Id"] = 3003124
tMarchSpringGiftBag_Pack[3320130][3]["RewardItem"][1]["Attr"] = "0 4 3"
tMarchSpringGiftBag_Pack[3320130][3]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][3]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][3]["LogId"] = 12001289
--大爆丹*4赠
tMarchSpringGiftBag_Pack[3320130][4] = {}
tMarchSpringGiftBag_Pack[3320130][4]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][4]["ItemChance"] = 1100
tMarchSpringGiftBag_Pack[3320130][4]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][4]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][4]["RewardItem"][1]["Id"] = 3003126
tMarchSpringGiftBag_Pack[3320130][4]["RewardItem"][1]["Attr"] = "0 4 3"
tMarchSpringGiftBag_Pack[3320130][4]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][4]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][4]["LogId"] = 12001289
--P6神魂赠可选包（含雷神神魂）
tMarchSpringGiftBag_Pack[3320130][5] = {}
tMarchSpringGiftBag_Pack[3320130][5]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][5]["ItemChance"] = 1000
tMarchSpringGiftBag_Pack[3320130][5]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][5]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][5]["RewardItem"][1]["Id"] = 3304221
tMarchSpringGiftBag_Pack[3320130][5]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320130][5]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][5]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][5]["LogId"] = 12001289
--明亮星陨石*1
tMarchSpringGiftBag_Pack[3320130][6] = {}
tMarchSpringGiftBag_Pack[3320130][6]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][6]["ItemChance"] = 800
tMarchSpringGiftBag_Pack[3320130][6]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][6]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][6]["RewardItem"][1]["Id"] = 3009001
tMarchSpringGiftBag_Pack[3320130][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tMarchSpringGiftBag_Pack[3320130][6]["GlobalId"] = 53231
tMarchSpringGiftBag_Pack[3320130][6]["Pos"] = 0
tMarchSpringGiftBag_Pack[3320130][6]["MaxData"] = 1000
tMarchSpringGiftBag_Pack[3320130][6]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320130][6]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][6]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][6]["LogId"] = 12001289
--100点赠品天石
tMarchSpringGiftBag_Pack[3320130][7] = {}
tMarchSpringGiftBag_Pack[3320130][7]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][7]["ItemChance"] = 700
tMarchSpringGiftBag_Pack[3320130][7]["RewardEMoneyMono"] = {} -- 给赠点天石
tMarchSpringGiftBag_Pack[3320130][7]["RewardEMoneyMono"]["Value"] = 100
tMarchSpringGiftBag_Pack[3320130][7]["EmoneyLog"] = "10000	0179	0	0	100	"
tMarchSpringGiftBag_Pack[3320130][7]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][7]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][7]["LogId"] = 12001289
--龙珠
tMarchSpringGiftBag_Pack[3320130][8] = {}
tMarchSpringGiftBag_Pack[3320130][8]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][8]["ItemChance"] = 200
tMarchSpringGiftBag_Pack[3320130][8]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320130][8]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320130][8]["RewardItem"][1]["Id"] = 1088000
tMarchSpringGiftBag_Pack[3320130][8]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320130][8]["GlobalId"] = 53231
tMarchSpringGiftBag_Pack[3320130][8]["Pos"] = 1
tMarchSpringGiftBag_Pack[3320130][8]["MaxData"] = 100
tMarchSpringGiftBag_Pack[3320130][8]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320130][8]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][8]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][8]["LogId"] = 12001289
--200点非赠
tMarchSpringGiftBag_Pack[3320130][9] = {}
tMarchSpringGiftBag_Pack[3320130][9]["RandomItemChanceType"] = 2
tMarchSpringGiftBag_Pack[3320130][9]["ItemChance"] = 100
tMarchSpringGiftBag_Pack[3320130][9]["RewardEMoney"] = {} -- 给天石
tMarchSpringGiftBag_Pack[3320130][9]["RewardEMoney"]["Value"] = 200
tMarchSpringGiftBag_Pack[3320130][9]["GlobalId"] = 53231
tMarchSpringGiftBag_Pack[3320130][9]["Pos"] = 2
tMarchSpringGiftBag_Pack[3320130][9]["MaxData"] = 10
tMarchSpringGiftBag_Pack[3320130][9]["FullIndex"] = 4
tMarchSpringGiftBag_Pack[3320130][9]["EmoneyLog"] = "10000	0180	-200	-200	1	"
tMarchSpringGiftBag_Pack[3320130][9]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320130][9]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320130][9]["LogId"] = 12001289

-- --199CP礼包
-- tMarchSpringGiftBag_Pack[3320134] = {}
-- tMarchSpringGiftBag_Pack[3320134]["ItemChanceSum"] = 10000
-- --500赠点
-- tMarchSpringGiftBag_Pack[3320134][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][1]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][1]["ItemChance"] = 2400
-- tMarchSpringGiftBag_Pack[3320134][1]["RewardEMoneyMono"] = {} -- 给赠点天石
-- tMarchSpringGiftBag_Pack[3320134][1]["RewardEMoneyMono"]["Value"] = 500
-- tMarchSpringGiftBag_Pack[3320134][1]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][1]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][1]["LogId"] = 12001289
-- --明亮星陨石*6
-- tMarchSpringGiftBag_Pack[3320134][2] = {}
-- tMarchSpringGiftBag_Pack[3320134][2]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][2]["ItemChance"] = 2400
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardItem"][1]["Id"] = 3009001
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][2]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][2]["LogId"] = 12001289
-- --P7武器神魂可选包（含雷神神魂）*2
-- tMarchSpringGiftBag_Pack[3320134][3] = {}
-- tMarchSpringGiftBag_Pack[3320134][3]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][3]["ItemChance"] = 2000
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardItem"][1]["Id"] = 0000000
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardItem"][1]["Attr"] = "0 2"
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][3]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][3]["LogId"] = 12001289
-- --回气丹*5
-- tMarchSpringGiftBag_Pack[3320134][4] = {}
-- tMarchSpringGiftBag_Pack[3320134][4]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][4]["ItemChance"] = 2000
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardItem"][1]["Id"] = 729481
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardItem"][1]["Attr"] = "0 5"
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][4]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][4]["LogId"] = 12001289
-- --小抽奖券*20
-- tMarchSpringGiftBag_Pack[3320134][5] = {}
-- tMarchSpringGiftBag_Pack[3320134][5]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][5]["ItemChance"] = 1000
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardItem"][1]["Id"] = 710212
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardItem"][1]["Attr"] = "0 20"
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][5]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][5]["LogId"] = 12001289
-- --晶莹星陨石*2
-- tMarchSpringGiftBag_Pack[3320134][6] = {}
-- tMarchSpringGiftBag_Pack[3320134][6]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320134][6]["ItemChance"] = 200
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardItem"][1]["Id"] = 3009002
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardItem"][1]["Attr"] = "0 2"
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320134][6]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320134][6]["LogId"] = 12001289
-- --499CP礼包
-- tMarchSpringGiftBag_Pack[3320135] = {}
-- tMarchSpringGiftBag_Pack[3320135]["ItemChanceSum"] = 10000
-- --500点锁妖盒(乾坤锁妖盒)
-- tMarchSpringGiftBag_Pack[3320135][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][1]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][1]["ItemChance"] = 2300
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardItem"][1]["Id"] = 720671
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardItem"][1]["Attr"] = "0 1"
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][1]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][1]["LogId"] = 12001289
-- --回气丹*10
-- tMarchSpringGiftBag_Pack[3320135][2] = {}
-- tMarchSpringGiftBag_Pack[3320135][2]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][2]["ItemChance"] = 4000
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardItem"][1]["Id"] = 729481
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardItem"][1]["Attr"] = "0 10"
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][2]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][2]["LogId"] = 12001289
-- --+4赤练石*2
-- tMarchSpringGiftBag_Pack[3320135][3] = {}
-- tMarchSpringGiftBag_Pack[3320135][3]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][3]["ItemChance"] = 1600
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardItem"][1]["Id"] = 730004
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardItem"][1]["Attr"] = "0 2"
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][3]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][3]["LogId"] = 12001289
-- --良品神纹源晶*4
-- tMarchSpringGiftBag_Pack[3320135][4] = {}
-- tMarchSpringGiftBag_Pack[3320135][4]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][4]["ItemChance"] = 1400
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardItem"][1]["Id"] = 0000
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardItem"][1]["Attr"] = "0 4"
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][4]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][4]["LogId"] = 12001289
-- --小固化石*2
-- tMarchSpringGiftBag_Pack[3320135][5] = {}
-- tMarchSpringGiftBag_Pack[3320135][5]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][5]["ItemChance"] = 500
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardItem"][1]["Id"] = 723694
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardItem"][1]["Attr"] = "0 2"
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][5]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][5]["LogId"] = 12001289
-- --晶莹星陨石*2
-- tMarchSpringGiftBag_Pack[3320135][6] = {}
-- tMarchSpringGiftBag_Pack[3320135][6]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][6]["ItemChance"] = 100
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardItem"][1]["Id"] = 3009002
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][6]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][6]["LogId"] = 12001289
-- --小抽奖券*30
-- tMarchSpringGiftBag_Pack[3320135][7] = {}
-- tMarchSpringGiftBag_Pack[3320135][7]["RandomItemChanceType"] = 2
-- tMarchSpringGiftBag_Pack[3320135][7]["ItemChance"] = 100
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardItem"] = {}
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardItem"][1] = {}
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardItem"][1]["Id"] = 710212
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardItem"][1]["Attr"] = "0 30"
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardEffect"] = {}
-- tMarchSpringGiftBag_Pack[3320135][7]["RewardEffect"]["Effect"] = "angelwing"
-- tMarchSpringGiftBag_Pack[3320135][7]["LogId"] = 12001289

--普天同庆礼盒
tMarchSpringGiftBag_Pack[3320131] = {}
--0转80级
tMarchSpringGiftBag_Pack[3320131][3320128] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["DeleteItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["DeleteItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["DeleteItem"][1]["Id"] = 3320131
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardItem"][1]["Id"] = 3320128
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320131][3320128]["EmoneyLog"] = "350	22019	0	0	1	"
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320131][3320128]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320131][3320128]["LogId"] = 12001289
--1转15级
tMarchSpringGiftBag_Pack[3320131][3320129] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["DeleteItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["DeleteItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["DeleteItem"][1]["Id"] = 3320131
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardItem"][1]["Id"] = 3320129
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320131][3320129]["EmoneyLog"] = "350	22019	0	0	1	"
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320131][3320129]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320131][3320129]["LogId"] = 12001289
--2转15级
tMarchSpringGiftBag_Pack[3320131][3320130] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["DeleteItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["DeleteItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["DeleteItem"][1]["Id"] = 3320131
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardItem"] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardItem"][1] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardItem"][1]["Id"] = 3320130
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_Pack[3320131][3320130]["EmoneyLog"] = "350	22019	0	0	1	"
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardEffect"] = {}
tMarchSpringGiftBag_Pack[3320131][3320130]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_Pack[3320131][3320130]["LogId"] = 12001289

local tMarchSpringGiftBag_RewardPack = {}
tMarchSpringGiftBag_RewardPack[3320131] = {}
tMarchSpringGiftBag_RewardPack[3320131]["RewardItem"] = {}
tMarchSpringGiftBag_RewardPack[3320131]["RewardItem"][1] = {}
tMarchSpringGiftBag_RewardPack[3320131]["RewardItem"][1]["Id"] = 3320131
tMarchSpringGiftBag_RewardPack[3320131]["RewardItem"][1]["Attr"] = "0 1 3"
tMarchSpringGiftBag_RewardPack[3320131]["RewardEffect"] = {}
tMarchSpringGiftBag_RewardPack[3320131]["RewardEffect"]["Effect"] = "angelwing"
tMarchSpringGiftBag_RewardPack[3320131]["LogId"] = 12001289


local tMarchSpringGiftBag_Log = {}
tMarchSpringGiftBag_Log["DeleteItem"] = "0,0,%d,%d,0,12001289,2,0,0"

local tMarchSpringGiftBag_EmoneyBuyLog = {}
tMarchSpringGiftBag_EmoneyBuyLog["EmoneyBuyLog"] = {}
tMarchSpringGiftBag_EmoneyBuyLog["EmoneyBuyLog"][3320128] = "350	22020	0	0	1	"
tMarchSpringGiftBag_EmoneyBuyLog["EmoneyBuyLog"][3320129] = "350	22021	0	0	1	"
tMarchSpringGiftBag_EmoneyBuyLog["EmoneyBuyLog"][3320130] = "350	22022	0	0	1	"

------------------------------------------------------物品逻辑
function MarchSpringGiftBag_AfterTime(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then
		return false
	elseif Sys_ChkFullTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then 
		return true
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			--删除礼包log
			local nLogText = string.format(tMarchSpringGiftBag_Log["DeleteItem"],nItemId,1)
			Sys_SaveActionFestivalLog(nLogText)
		end
		return false
	end 
end 
--签到礼包使用逻辑
function MarchSpringGiftBag_UseItem(nItemId,nNum)
--过期删除
	if CommonFunc_GetBeforeActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then
		return
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			--删除礼包log
			local nLogText = string.format(tMarchSpringGiftBag_Log["DeleteItem"],nItemId,1)
			Sys_SaveActionFestivalLog(nLogText)
		end
		return 
	end 
	
	if nNum == 2 then 
		local nPro = Get_UserProfession()
		local nNeedPro1 = tMarchSpringGiftBag_Data["Pro"][1][1]
		local nNeedPro2 = tMarchSpringGiftBag_Data["Pro"][1][2]
		if not (nPro >= nNeedPro1 and nPro <= nNeedPro2) then
			Sys_MsgBox(tMarchSpringGiftBag_Text["Sys_MsgBox"]["NotDouShi"])
			return
		end
	end 
--使用逻辑
	local nTextLog = tMarchSpringGiftBag_EmoneyBuyLog["EmoneyBuyLog"][nItemId]
	if Item_ChkItem(nItemId) then 
		local nSpace = RewardTemplate_GetRandomSpace(tMarchSpringGiftBag_Pack,nItemId)
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tMarchSpringGiftBag_Text["NoSpace"],nSpace))
			return
		end
		--赠点、天石上限
		local nMonoEMoney = tMarchSpringGiftBag_Money[nItemId][1]
		local nEMoney = tMarchSpringGiftBag_Money[nItemId][2]
		if Get_UserMonoEMoney() + nMonoEMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tMarchSpringGiftBag_Text["NotEMoneyMono"])
			return
		end 
		if Get_UserEMoney() + nEMoney > G_User_MaxEmoney then 
			User_TalkChannel2005(tMarchSpringGiftBag_Text["NotEMoney"])
			return
		end 
		
		local nEventType1 = tMarchSpringGiftBag_Stc[nNum]["EventType"]
		local nDataType1 = tMarchSpringGiftBag_Stc[nNum]["DataType"]
		
		if Task_StcInterval(nEventType1,nDataType1,1,4) then 
			Task_SetStatistic(nEventType1,nDataType1,0,1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
		end
		
		if Task_ChkStcValue(nEventType1,nDataType1,">=",1) then
			MarchSpringGiftBag_Rewarded(nNum)
			return
		end
		
		Task_SetStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		-- RewardTemplate_NewRandom(tMarchSpringGiftBag_Pack,nItemId)
		local tReward = RewardTemplate_NewRandom(tMarchSpringGiftBag_Pack,nItemId)
		if tReward[1]["tAward"][1]["EmoneyLog"] ~= nil then
			Sys_SaveEmoneyBuy(tReward[1]["tAward"][1]["EmoneyLog"])
		end
		Sys_SaveEmoneyBuy(nTextLog)
	end
end

--领取选项显示
function MarchSpringGiftBag_RewardDisplay(nNum)
	local nEventType1 = tMarchSpringGiftBag_Stc[nNum]["EventType"]
	local nDataType1 = tMarchSpringGiftBag_Stc[nNum]["DataType"]	
	if Task_StcInterval(nEventType1,nDataType1,1,4) then 
		Task_SetStatistic(nEventType1,nDataType1,0,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		return true
	end
		
	if Task_ChkStcValue(nEventType1,nDataType1,">=",1) then
		return false
	else
		return true
	end
	
end 

--已领取选项显示
function MarchSpringGiftBag_RewardedDisplay(nNum)
	local nEventType1 = tMarchSpringGiftBag_Stc[nNum]["EventType"]
	local nDataType1 = tMarchSpringGiftBag_Stc[nNum]["DataType"]
	if Task_StcInterval(nEventType1,nDataType1,1,4) then 
		Task_SetStatistic(nEventType1,nDataType1,0,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		return false
	end
		
	if Task_ChkStcValue(nEventType1,nDataType1,">=",1) then
		return true
	else
		return false
	end
end 

--已领取提示
function MarchSpringGiftBag_Rewarded(nNum)
	if nNum == 1 then 
		Sys_MsgBox(tMarchSpringGiftBag_Text["Sys_MsgBox"]["Once"])
	elseif nNum == 2 then 
		Sys_MsgBox(tMarchSpringGiftBag_Text["Sys_MsgBox"]["DouShiOnce"])
	end 
end 

--上线触发 发礼包
function MarchSpringGiftBag_GrantPack()
	if not Sys_ChkFullTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then 
		return
	end 
	
	-- local nGlobalId = tMarchSpringGiftBag_Data["GlobalId"][1]
	-- local nGlobalData0 = Get_SysDynaGlobalData0(nGlobalId)
	-- if nGlobalData0 ~= 1 then 
		-- return
	-- end
	
	local nEventType1 = tMarchSpringGiftBag_Stc[3]["EventType"]
	local nDataType1 = tMarchSpringGiftBag_Stc[3]["DataType"]
	local nItemId = tMarchSpringGiftBag_Item[3320131]["Id"]
	local nAttr = tMarchSpringGiftBag_Item["Attr"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nSpace = RewardTemplate_GetRewardSpace(tMarchSpringGiftBag_RewardPack[nItemId])
	if nData1 > 0 then 
		return
	end
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tMarchSpringGiftBag_Text["RewardPack"])
		return
	else
		Task_SetStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		RewardTemplate_UseItemAndMsg(tMarchSpringGiftBag_RewardPack[nItemId])
	end


	
end 
--普天同庆礼包开启逻辑
function MarchSpringGiftBag_OpenPack(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then
		return
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["MarchSpringGiftBag"]["ActionTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			--删除礼包log
			local nLogText = string.format(tMarchSpringGiftBag_Log["DeleteItem"],nItemId,1)
			Sys_SaveActionFestivalLog(nLogText)
		end
		return
	end
	
	-- local nGlobalId = tMarchSpringGiftBag_Data["GlobalId"][1]
	-- local nGlobalData0 = Get_SysDynaGlobalData0(nGlobalId)
	-- if nGlobalData0 ~= 1 then 
		-- return
	-- end 
	
	local nItemId1 = tMarchSpringGiftBag_Item[3320128]["Id"]
	local nItemId2 = tMarchSpringGiftBag_Item[3320129]["Id"]
	local nItemId3 = tMarchSpringGiftBag_Item[3320130]["Id"]

	local nLevel1 = tMarchSpringGiftBag_Data["Level1"]
	local nLevel2 = tMarchSpringGiftBag_Data["Level2"]
	local nMetempsychosis0 = tMarchSpringGiftBag_Data["Metempsychosis0"]
	local nMetempsychosis1 = tMarchSpringGiftBag_Data["Metempsychosis1"]
	local nMetempsychosis2 = tMarchSpringGiftBag_Data["Metempsychosis2"]
	
	local nEventType1 = tMarchSpringGiftBag_Stc[4]["EventType"]
	local nDataType1 = tMarchSpringGiftBag_Stc[4]["DataType"]		
	if Task_ChkStcValue(nEventType1,nDataType1,">=",1) then
		Sys_MsgBox(tMarchSpringGiftBag_Text["Sys_MsgBox"]["Once1"])
		return
	end
	
	-- 0转80级不能领取
	if not User_JudgeLevelAndMetempsychosis(nLevel2,nMetempsychosis0) then 
		User_TalkChannel2005(tMarchSpringGiftBag_Text["OpenPack"])
		return
	end
	
	Task_SetStatistic(nEventType1,nDataType1,1,1)
	Task_SetStcTimestamp(nEventType1,nDataType1,0)
	
	if User_JudgeLevelAndMetempsychosis(nLevel1,nMetempsychosis2) then 
		RewardTemplate_UseItemAndMsg(tMarchSpringGiftBag_Pack[nItemId][nItemId3])
	elseif User_JudgeLevelAndMetempsychosis(nLevel1,nMetempsychosis1) then 
		RewardTemplate_UseItemAndMsg(tMarchSpringGiftBag_Pack[nItemId][nItemId2])
	elseif User_JudgeLevelAndMetempsychosis(nLevel2,nMetempsychosis0) then
		RewardTemplate_UseItemAndMsg(tMarchSpringGiftBag_Pack[nItemId][nItemId1])
	end
end 

--每日清理动态码
function MarchSpringGiftBag_ClearGlobal()
	local GolobalId1 = tMarchSpringGiftBag_Data["GlobalId"][2]
	local GolobalId2 = tMarchSpringGiftBag_Data["GlobalId"][3]
	local GolobalId3 = tMarchSpringGiftBag_Data["GlobalId"][4]
	local data3 = Get_SysDynaGlobalData3(GolobalId3)
	if data3 == 0 then 
		--重置0转礼包每日全服数量
		Sys_SetSynaGlobalData0(GolobalId1,0)
		Sys_SetSynaGlobalData1(GolobalId1,0)
		Sys_SetSynaGlobalData2(GolobalId1,0)
		--重置1转礼包每日全服数量
		Sys_SetSynaGlobalData0(GolobalId2,0)
		Sys_SetSynaGlobalData1(GolobalId2,0)
		Sys_SetSynaGlobalData2(GolobalId2,0)
		--重置2转礼包每日全服数量
		Sys_SetSynaGlobalData0(GolobalId3,0)
		Sys_SetSynaGlobalData1(GolobalId3,0)
		Sys_SetSynaGlobalData2(GolobalId3,0)
		--设置重置动态码表示位，data3 = 1 表示已经重置
		Sys_SetSynaGlobalData3(GolobalId3,1)
	end 
end 
--重置 动态码表示为
function MarchSpringGiftBag_ClearGlobalIdentification()
	local GolobalId3 = tMarchSpringGiftBag_Data["GlobalId"][4]
	local data3 = Get_SysDynaGlobalData3(GolobalId3)
	if data3 == 1 then 
		Sys_SetSynaGlobalData3(GolobalId3,0)
	end 
end 



----------------------------------------------------对白逻辑
--0转礼包
tItemFace[3320128] = 429
tItem[3320128] = tItem[3320128] or {}
tItem[3320128]["DialogueText"] = tMarchSpringGiftBag_Text[3320128]
tItem[3320128]["Text1-1"] = {111,112,113,114,119}
tItem[3320128]["tOption1-1"] = {111,112,113,114,117}
-- tItem[3320128]["ChkFunc1-1"] = function ()
	-- return MarchSpringGiftBag_AfterTime(nItemId)
-- end
tItem[3320128]["OptionChkFunc111"] = function ()  ---未领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320128]["OptionFunc111"] = "MarchSpringGiftBag_UseItem</N>3320128</N>1"
tItem[3320128]["OptionChkFunc112"] = function ()  ---已领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320128]["OptionFunc112"] = "MarchSpringGiftBag_Rewarded</N>1"

tItem[3320128]["OptionChkFunc113"] = function ()  ---未领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320128]["OptionFunc113"] = "MarchSpringGiftBag_UseItem</N>3320128</N>2"
tItem[3320128]["OptionChkFunc114"] = function ()  ---已领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320128]["OptionFunc114"] = "MarchSpringGiftBag_Rewarded</N>2"
--1转礼包
tItemFace[3320129] = 429
tItem[3320129] = tItem[3320129] or {}
tItem[3320129]["DialogueText"] = tMarchSpringGiftBag_Text[3320129]
tItem[3320129]["Text1-1"] = {111,112,113,114,119}
tItem[3320129]["tOption1-1"] = {111,112,113,114,117}
-- tItem[3320129]["ChkFunc1-1"] = function ()
	-- return MarchSpringGiftBag_AfterTime(nItemId)
-- end
tItem[3320129]["OptionChkFunc111"] = function ()  ---未领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320129]["OptionFunc111"] = "MarchSpringGiftBag_UseItem</N>3320129</N>1"
tItem[3320129]["OptionChkFunc112"] = function ()  ---已领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320129]["OptionFunc112"] = "MarchSpringGiftBag_Rewarded</N>1"

tItem[3320129]["OptionChkFunc113"] = function ()  ---未领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320129]["OptionFunc113"] = "MarchSpringGiftBag_UseItem</N>3320129</N>2"
tItem[3320129]["OptionChkFunc114"] = function ()  ---已领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320129]["OptionFunc114"] = "MarchSpringGiftBag_Rewarded</N>2"
--2转礼包
tItemFace[3320130] = 429
tItem[3320130] = tItem[3320130] or {}
tItem[3320130]["DialogueText"] = tMarchSpringGiftBag_Text[3320130]
tItem[3320130]["Text1-1"] = {111,112,113,114,119}
tItem[3320130]["tOption1-1"] = {111,112,113,114,117}
-- tItem[3320130]["ChkFunc1-1"] = function ()
	-- return MarchSpringGiftBag_AfterTime(nItemId)
-- end
tItem[3320130]["OptionChkFunc111"] = function ()  ---未领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320130]["OptionFunc111"] = "MarchSpringGiftBag_UseItem</N>3320130</N>1"
tItem[3320130]["OptionChkFunc112"] = function ()  ---已领取选项
	local nNum = 1
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320130]["OptionFunc112"] = "MarchSpringGiftBag_Rewarded</N>1"

tItem[3320130]["OptionChkFunc113"] = function ()  ---未领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardDisplay(nNum)
end 
tItem[3320130]["OptionFunc113"] = "MarchSpringGiftBag_UseItem</N>3320130</N>2"
tItem[3320130]["OptionChkFunc114"] = function ()  ---已领取选项
	local nNum = 2
	return MarchSpringGiftBag_RewardedDisplay(nNum)
end
tItem[3320130]["OptionFunc114"] = "MarchSpringGiftBag_Rewarded</N>2"


tItem[3320131] = tItem[3320131] or {}
tItem[3320131]["Function"] = function(nItemId,sItemName)
	MarchSpringGiftBag_OpenPack(nItemId)
end
--------------------------------------时间自检--------------------------------------------
--每日清理动态码
local tMarchSpringGiftBag_ClearGlobal = {}
	tMarchSpringGiftBag_ClearGlobal["Type"] = 6
	tMarchSpringGiftBag_ClearGlobal["TimeType"] = 4
	tMarchSpringGiftBag_ClearGlobal["Multiple"] = {}
	tMarchSpringGiftBag_ClearGlobal["Multiple"][1] = "00:00 00:05"
	tMarchSpringGiftBag_ClearGlobal["Func"] = MarchSpringGiftBag_ClearGlobal
table.insert(tSystemTime_InitialData,tMarchSpringGiftBag_ClearGlobal)

--重置动态码标识
--每日清理动态表
local tMarchSpringGiftBag_ClearGlobalIdentification = {}
	tMarchSpringGiftBag_ClearGlobalIdentification["Type"] = 6
	tMarchSpringGiftBag_ClearGlobalIdentification["TimeType"] = 4
	tMarchSpringGiftBag_ClearGlobalIdentification["Multiple"] = {}
	tMarchSpringGiftBag_ClearGlobalIdentification["Multiple"][1] = "00:06 00:10"
	tMarchSpringGiftBag_ClearGlobalIdentification["Func"] = MarchSpringGiftBag_ClearGlobalIdentification
table.insert(tSystemTime_InitialData,tMarchSpringGiftBag_ClearGlobalIdentification)

--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,MarchSpringGiftBag_GrantPack)


