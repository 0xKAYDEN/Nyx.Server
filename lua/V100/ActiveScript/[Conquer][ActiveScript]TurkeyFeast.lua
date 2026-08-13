------------------------------------------------------------------------------------
--Name：            191105[英文征服][活动脚本]11月火鸡盛宴(11.26-12.2)
--Creator:      周洋
--Created:     2019/11/05
------------------------------------------------------------------------------------
-- 命名前缀
-- TurkeyFeast

-- stc掩码
-- 209 61 当天食用烤火鸡次数
-- 209 62 当天击杀妖匪获得的火鸡肉数量
-- 209 63 背包信
-- 209 80 计算附近队员数量stc

-- 动态存储表说明
-- [53890]
	--data0	全服限量，最多10个龙鸣和凤鸣宝石赠
	--data1	全服限量，最多10个豪华神器宝箱赠
	--data2	全服限量，最多1个+8赤炼石赠
-- [53887]
	--data0	全服限量，最多50个散功丹
	--data1	全服限量，最多100个+3赤炼石
-- [53888]
	--data0	全服限量，最多100个万能神纹精粹
	--data1	全服限量，最多30个良品玄元宝石
	--data2	全服限量，最多10个龙鸣和凤鸣宝石
	--data3	全服限量，最多10个豪华神器宝箱
	--data4	全服限量，最多1个+8赤炼石

--logid： 12001727
------------------------------------------------------------------------------------数据部分-------------------------------------------
local tTurkeyFeast_Data = {}
	tTurkeyFeast_Data["Item"] = {}
	tTurkeyFeast_Data["Item"]["TurkeyMeat"] = 3314460
	tTurkeyFeast_Data["Item"]["NormalRoastTurkey"] = 3326600
	tTurkeyFeast_Data["Item"]["FineRoastTurkey"] = 3314462
	tTurkeyFeast_Data["DropChance"] = {}
	tTurkeyFeast_Data["DropChance"]["Num"] = 2
	tTurkeyFeast_Data["DropChance"]["Sum"] = 100
	--计算人员回应的增量
	tTurkeyFeast_Data["CalcAddValue"] = 1
	--计算附近人员的增量
	tTurkeyFeast_Data["NearAddValue"] = 100
	--延迟时间
	tTurkeyFeast_Data["Delay"] = 2
	--读条时间
	tTurkeyFeast_Data["Explore"] = 1
	--触发的范围
	tTurkeyFeast_Data["Range"] =3
	-- 最少组队人数
	tTurkeyFeast_Data["Team"] = 3
	-- 烤火鸡所需火鸡肉数量
	tTurkeyFeast_Data["NeedTurkeyNum"] = 100

local tTurkeyFeast_Stc = {}
	-- 当天食用烤火鸡次数
	tTurkeyFeast_Stc[1] = {}
	tTurkeyFeast_Stc[1]["EventType"] = 209
	tTurkeyFeast_Stc[1]["DataType"] = 61
	tTurkeyFeast_Stc[1]["Limit"] = 5
	-- 当天击杀妖匪获得的火鸡肉数量
	tTurkeyFeast_Stc[2] = {}
	tTurkeyFeast_Stc[2]["EventType"] = 209
	tTurkeyFeast_Stc[2]["DataType"] = 62
	tTurkeyFeast_Stc[2]["Limit"] = 300
	-- 背包信
	tTurkeyFeast_Stc[3] = {}
	tTurkeyFeast_Stc[3]["EventType"] = 209
	tTurkeyFeast_Stc[3]["DataType"] = 63
	--计算附近队员数量stc
	tTurkeyFeast_Stc[4] ={}
	tTurkeyFeast_Stc[4]["EventType"] = 209
	tTurkeyFeast_Stc[4]["DataType"] = 80

local tTurkeyFeast_Map = {}
	tTurkeyFeast_Map[1] = {}
	tTurkeyFeast_Map[1]["Id"] = 1002
	tTurkeyFeast_Map[1]["PosX"] = 340
	tTurkeyFeast_Map[1]["PosY"] = 455
	tTurkeyFeast_Map[1]["Range"] = 8
	tTurkeyFeast_Map[2] = {}
	tTurkeyFeast_Map[2]["Id"] = 1036
	tTurkeyFeast_Map[2]["PosX"] = 188
	tTurkeyFeast_Map[2]["PosY"] = 184
	tTurkeyFeast_Map[2]["Range"] = 8

local tTurkeyFeast_Log = {}
	tTurkeyFeast_Log["DeleteItem"] = "0,0,%d,1,12001727,2,0,0"
	tTurkeyFeast_Log["DeleteAllItem"] = "0,0,%d,%d,12001727,2,0,0"

-- 光效
local tTurkeyFeast_Effect = {}
	tTurkeyFeast_Effect[1] = "angelwing"

local tTurkeyFeast_Reward = {}
	-- ===火鸡盛宴礼包
	-- ===索引: tTurkeyFeast_Reward[3314463][1]
	-- ===删除: 3314463,1
	-- ===LogStep: 2[1]
	tTurkeyFeast_Reward[3314463] = {}
	tTurkeyFeast_Reward[3314463][1] = {}
	tTurkeyFeast_Reward[3314463][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tTurkeyFeast_Reward[3314463][1]["DeleteItem"] = {}
	tTurkeyFeast_Reward[3314463][1]["DeleteItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1]["DeleteItem"][1]["Id"] = 3314463 -- 【库】TurkeyFeastPack[属性:11]
	tTurkeyFeast_Reward[3314463][1]["LogId"] = 12001727
	tTurkeyFeast_Reward[3314463][1]["LogStep"] = " 2[1]"
	-- 八折券*5 - 34%
	tTurkeyFeast_Reward[3314463][1][1] = {}
	tTurkeyFeast_Reward[3314463][1][1]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][1]["ItemChance"] = 3400
	tTurkeyFeast_Reward[3314463][1][1]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][1]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][1]["RewardItem"][1]["Id"] = 3314012 -- SalesDiscountCoupon[3314012][属性:9][叠加:0][金币:0], 【表格】八折券*5
	tTurkeyFeast_Reward[3314463][1][1]["RewardItem"][1]["Attr"] = "0 5" -- SalesDiscountCoupon*5
	-- +3赤炼石赠*1 - 29%
	tTurkeyFeast_Reward[3314463][1][2] = {}
	tTurkeyFeast_Reward[3314463][1][2]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][2]["ItemChance"] = 2900
	tTurkeyFeast_Reward[3314463][1][2]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][2]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石赠*1
	tTurkeyFeast_Reward[3314463][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	-- 明亮星陨石*1 - 29%
	tTurkeyFeast_Reward[3314463][1][3] = {}
	tTurkeyFeast_Reward[3314463][1][3]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][3]["ItemChance"] = 2900
	tTurkeyFeast_Reward[3314463][1][3]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][3]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tTurkeyFeast_Reward[3314463][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	-- 万能神纹精粹赠*10 - 4.9%
	tTurkeyFeast_Reward[3314463][1][4] = {}
	tTurkeyFeast_Reward[3314463][1][4]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][4]["ItemChance"] = 490
	tTurkeyFeast_Reward[3314463][1][4]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][4]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][4]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*10
	tTurkeyFeast_Reward[3314463][1][4]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	-- 良品玄元宝石赠*1 - 1%
	tTurkeyFeast_Reward[3314463][1][5] = {}
	tTurkeyFeast_Reward[3314463][1][5]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][5]["ItemChance"] = 100
	tTurkeyFeast_Reward[3314463][1][5]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][5]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][5]["RewardItem"][1]["Id"] = 700072 -- TortoiseGem[700072][属性:0][叠加:0][金币:0], 【表格】良品玄元宝石赠*1
	tTurkeyFeast_Reward[3314463][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseGem（赠）*1
	-- OptionalSuperGemPack - 1.8%
	tTurkeyFeast_Reward[3314463][1][6] = {}
	tTurkeyFeast_Reward[3314463][1][6]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][6]["ItemChance"] = 180
	tTurkeyFeast_Reward[3314463][1][6]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][6]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][6]["RewardItem"][1]["Id"] = 3300722 -- OptionalSuperGemPack[3300722][属性:11][叠加:0][金币:0], 【表格】OptionalSuperGemPack
	tTurkeyFeast_Reward[3314463][1][6]["RewardItem"][1]["Attr"] = "0 1" -- OptionalSuperGemPack*1
			-- 【动态掩码（53890, data0）】全服限量:（10）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][1][6]["GlobalId"] = 53890
	tTurkeyFeast_Reward[3314463][1][6]["Pos"] = 0
	tTurkeyFeast_Reward[3314463][1][6]["MaxData"] = 10
	tTurkeyFeast_Reward[3314463][1][6]["FullIndex"] = 3
	-- 豪华神器宝箱赠 - 0.2%
	tTurkeyFeast_Reward[3314463][1][7] = {}
	tTurkeyFeast_Reward[3314463][1][7]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][7]["ItemChance"] = 20
	tTurkeyFeast_Reward[3314463][1][7]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][7]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][7]["RewardItem"][1]["Id"] = 3322219 -- LuxuryRelicChest[3322219][属性:9][叠加:1][金币:0], 【表格】豪华神器宝箱赠
	tTurkeyFeast_Reward[3314463][1][7]["RewardItem"][1]["Attr"] = "0 1" -- LuxuryRelicChest*1
			-- 【动态掩码（53890, data1）】全服限量:（10）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][1][7]["GlobalId"] = 53890
	tTurkeyFeast_Reward[3314463][1][7]["Pos"] = 1
	tTurkeyFeast_Reward[3314463][1][7]["MaxData"] = 10
	tTurkeyFeast_Reward[3314463][1][7]["FullIndex"] = 3
	-- +8赤炼石赠 - 0.1%
	tTurkeyFeast_Reward[3314463][1][8] = {}
	tTurkeyFeast_Reward[3314463][1][8]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][1][8]["ItemChance"] = 10
	tTurkeyFeast_Reward[3314463][1][8]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][1][8]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][1][8]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石赠
	tTurkeyFeast_Reward[3314463][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
			-- 【动态掩码（53890, data2）】全服限量:（1）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][1][8]["GlobalId"] = 53890
	tTurkeyFeast_Reward[3314463][1][8]["Pos"] = 2
	tTurkeyFeast_Reward[3314463][1][8]["MaxData"] = 1
	tTurkeyFeast_Reward[3314463][1][8]["FullIndex"] = 3


	tTurkeyFeast_Reward[3314463][2] = {}
	-- ===火鸡盛宴礼包
	-- ===索引: tTurkeyFeast_Reward[3314463][2]
	-- ===删除: 3314463,1
	-- ===LogStep: 2[1]
	tTurkeyFeast_Reward[3314463][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tTurkeyFeast_Reward[3314463][2]["DeleteItem"] = {}
	tTurkeyFeast_Reward[3314463][2]["DeleteItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2]["DeleteItem"][1]["Id"] = 3314463 -- 【库】TurkeyFeastPack[属性:11]
	tTurkeyFeast_Reward[3314463][2]["LogId"] = 12001727
	tTurkeyFeast_Reward[3314463][2]["LogStep"] = " 2[1]"
	-- 非赠散功丹*1（激情服） - 34%
	tTurkeyFeast_Reward[3314463][2][1] = {}
	tTurkeyFeast_Reward[3314463][2][1]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][1]["ItemChance"] = 3400
	tTurkeyFeast_Reward[3314463][2][1]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][1]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][1]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】非赠散功丹*1（激情服）
	tTurkeyFeast_Reward[3314463][2][1]["RewardItem"][1]["Attr"] = "0 1" -- PowerEraser*1
			-- 【动态掩码（53887, data0）】全服限量:（50）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][1]["GlobalId"] = 53887
	tTurkeyFeast_Reward[3314463][2][1]["Pos"] = 0
	tTurkeyFeast_Reward[3314463][2][1]["MaxData"] = 50
	tTurkeyFeast_Reward[3314463][2][1]["FullIndex"] = 3
	-- +3赤炼石赠*1 - 29%
	tTurkeyFeast_Reward[3314463][2][2] = {}
	tTurkeyFeast_Reward[3314463][2][2]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][2]["ItemChance"] = 2900
	tTurkeyFeast_Reward[3314463][2][2]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][2]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石赠*1
	tTurkeyFeast_Reward[3314463][2][2]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone*1
			-- 【动态掩码（53887, data1）】全服限量:（100）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][2]["GlobalId"] = 53887
	tTurkeyFeast_Reward[3314463][2][2]["Pos"] = 1
	tTurkeyFeast_Reward[3314463][2][2]["MaxData"] = 100
	tTurkeyFeast_Reward[3314463][2][2]["FullIndex"] = 3
	-- 明亮星陨石*1 - 29%
	tTurkeyFeast_Reward[3314463][2][3] = {}
	tTurkeyFeast_Reward[3314463][2][3]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][3]["ItemChance"] = 2900
	tTurkeyFeast_Reward[3314463][2][3]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][3]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tTurkeyFeast_Reward[3314463][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	-- 万能神纹精粹赠*10 - 4.9%
	tTurkeyFeast_Reward[3314463][2][4] = {}
	tTurkeyFeast_Reward[3314463][2][4]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][4]["ItemChance"] = 490
	tTurkeyFeast_Reward[3314463][2][4]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][4]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][4]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*10
	tTurkeyFeast_Reward[3314463][2][4]["RewardItem"][1]["Attr"] = "0 10" -- UniversalRuneEssence*10
			-- 【动态掩码（53888, data0）】全服限量:（100）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][4]["GlobalId"] = 53888
	tTurkeyFeast_Reward[3314463][2][4]["Pos"] = 0
	tTurkeyFeast_Reward[3314463][2][4]["MaxData"] = 100
	tTurkeyFeast_Reward[3314463][2][4]["FullIndex"] = 3
	-- 良品玄元宝石赠*1 - 1%
	tTurkeyFeast_Reward[3314463][2][5] = {}
	tTurkeyFeast_Reward[3314463][2][5]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][5]["ItemChance"] = 100
	tTurkeyFeast_Reward[3314463][2][5]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][5]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][5]["RewardItem"][1]["Id"] = 700072 -- TortoiseGem[700072][属性:0][叠加:0][金币:0], 【表格】良品玄元宝石赠*1
	tTurkeyFeast_Reward[3314463][2][5]["RewardItem"][1]["Attr"] = "0 1" -- TortoiseGem*1
			-- 【动态掩码（53888, data1）】全服限量:（30）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][5]["GlobalId"] = 53888
	tTurkeyFeast_Reward[3314463][2][5]["Pos"] = 1
	tTurkeyFeast_Reward[3314463][2][5]["MaxData"] = 30
	tTurkeyFeast_Reward[3314463][2][5]["FullIndex"] = 3
	-- OptionalSuperGemPack - 1.8%
	tTurkeyFeast_Reward[3314463][2][6] = {}
	tTurkeyFeast_Reward[3314463][2][6]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][6]["ItemChance"] = 180
	tTurkeyFeast_Reward[3314463][2][6]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][6]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][6]["RewardItem"][1]["Id"] = 3300722 -- OptionalSuperGemPack[3300722][属性:11][叠加:0][金币:0], 【表格】OptionalSuperGemPack
	tTurkeyFeast_Reward[3314463][2][6]["RewardItem"][1]["Attr"] = "0 1" -- OptionalSuperGemPack*1
			-- 【动态掩码（53888, data2）】全服限量:（10）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][6]["GlobalId"] = 53888
	tTurkeyFeast_Reward[3314463][2][6]["Pos"] = 2
	tTurkeyFeast_Reward[3314463][2][6]["MaxData"] = 10
	tTurkeyFeast_Reward[3314463][2][6]["FullIndex"] = 3
	-- 豪华神器宝箱赠 - 0.2%
	tTurkeyFeast_Reward[3314463][2][7] = {}
	tTurkeyFeast_Reward[3314463][2][7]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][7]["ItemChance"] = 20
	tTurkeyFeast_Reward[3314463][2][7]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][7]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][7]["RewardItem"][1]["Id"] = 3322219 -- LuxuryRelicChest[3322219][属性:9][叠加:1][金币:0], 【表格】豪华神器宝箱赠
	tTurkeyFeast_Reward[3314463][2][7]["RewardItem"][1]["Attr"] = "0 1" -- LuxuryRelicChest*1
			-- 【动态掩码（53888, data3）】全服限量:（10）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][7]["GlobalId"] = 53888
	tTurkeyFeast_Reward[3314463][2][7]["Pos"] = 3
	tTurkeyFeast_Reward[3314463][2][7]["MaxData"] = 10
	tTurkeyFeast_Reward[3314463][2][7]["FullIndex"] = 3
	-- +8赤炼石赠 - 0.1%
	tTurkeyFeast_Reward[3314463][2][8] = {}
	tTurkeyFeast_Reward[3314463][2][8]["RandomItemChanceType"] = 2
	tTurkeyFeast_Reward[3314463][2][8]["ItemChance"] = 10
	tTurkeyFeast_Reward[3314463][2][8]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314463][2][8]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314463][2][8]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石赠
	tTurkeyFeast_Reward[3314463][2][8]["RewardItem"][1]["Attr"] = "0 1" -- +8Stone*1
			-- 【动态掩码（53888, data4）】全服限量:（1）, 超限给编号（3）-
	tTurkeyFeast_Reward[3314463][2][8]["GlobalId"] = 53888
	tTurkeyFeast_Reward[3314463][2][8]["Pos"] = 4
	tTurkeyFeast_Reward[3314463][2][8]["MaxData"] = 1
	tTurkeyFeast_Reward[3314463][2][8]["FullIndex"] = 3


	tTurkeyFeast_Reward[3314460] = {}
	-- ===火鸡肉
	-- ===索引: tTurkeyFeast_Reward[3314460]
	-- ===删除: 3314460,100
	-- ===LogStep: 2[1]
	tTurkeyFeast_Reward[3314460]["LogId"] = 12001727
	tTurkeyFeast_Reward[3314460]["LogStep"] = "2[1]"
	tTurkeyFeast_Reward[3314460]["DeleteItem"] = {}
	tTurkeyFeast_Reward[3314460]["DeleteItem"][1] = {}
	tTurkeyFeast_Reward[3314460]["DeleteItem"][1]["Id"] = 3314460 -- 【库】TurkeyMeat[属性:11]
	tTurkeyFeast_Reward[3314460]["DeleteItem"][1]["ItemNum"] = 100
	tTurkeyFeast_Reward[3314460]["RewardItem"] = {}
	tTurkeyFeast_Reward[3314460]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3314460]["RewardItem"][1]["Id"] = 3326600 -- NormalRoastTurkey[3326600][属性:11][叠加:10000][金币:0], 【表格】普通烤火鸡
	tTurkeyFeast_Reward[3314460]["RewardItem"][1]["Attr"] = "0 1" -- NormalRoastTurkey*1


	tTurkeyFeast_Reward[3326600] = {}
	-- ===普通烤火鸡
	-- ===索引: tTurkeyFeast_Reward[3326600]
	-- ===删除: 3326600,1
	-- ===LogStep: 2[1]
	tTurkeyFeast_Reward[3326600]["LogId"] = 12001727
	tTurkeyFeast_Reward[3326600]["LogStep"] = "2[1]"
	tTurkeyFeast_Reward[3326600]["DeleteItem"] = {}
	tTurkeyFeast_Reward[3326600]["DeleteItem"][1] = {}
	tTurkeyFeast_Reward[3326600]["DeleteItem"][1]["Id"] = 3326600 -- 【库】NormalRoastTurkey[属性:11]
	tTurkeyFeast_Reward[3326600]["RewardItem"] = {}
	tTurkeyFeast_Reward[3326600]["RewardItem"][1] = {}
	tTurkeyFeast_Reward[3326600]["RewardItem"][1]["Id"] = 3314463 -- TurkeyFeastPack[3314463][属性:11][叠加:1][金币:0], 【表格】火鸡盛宴礼包
	tTurkeyFeast_Reward[3326600]["RewardItem"][1]["Attr"] = "0 1" -- TurkeyFeastPack*1


local tTurkeyFeast_MonsterDrop = {}
	-- ===杀怪掉火鸡肉
	-- ===索引: tTurkeyFeast_MonsterDrop["Reward"][1]
	-- ===LogStep: 2[1]
	tTurkeyFeast_MonsterDrop["Reward"] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1]["ItemChanceSum"] = 10000
	tTurkeyFeast_MonsterDrop["Reward"][1]["LogId"] = 12001727
	tTurkeyFeast_MonsterDrop["Reward"][1]["LogStep"] = " 2[1]"
	-- 火鸡肉 - 2%
	tTurkeyFeast_MonsterDrop["Reward"][1][1] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["RandomItemChanceType"] = 2
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["ItemChance"] = 200
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["RewardItem"] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["RewardItem"][1] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["RewardItem"][1]["Id"] = 3314460 -- TurkeyMeat[3314460][属性:11][叠加:10000][金币:0], 【表格】火鸡肉
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- TurkeyMeat*1
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["LogId"] = 12001727
	tTurkeyFeast_MonsterDrop["Reward"][1][1]["Sign"] = 1
	tTurkeyFeast_MonsterDrop["Reward"][1][2] = {}
	tTurkeyFeast_MonsterDrop["Reward"][1][2]["RandomItemChanceType"] = 2
	tTurkeyFeast_MonsterDrop["Reward"][1][2]["ItemChance"] = 9800
	tTurkeyFeast_MonsterDrop["Reward"][1][2]["Sign"] = 2

------------------------------------------------------------------------------------逻辑部分-------------------------------------------
function TurkeyFeast_Cooking(nItemId)
	local nUserId = Get_UserId()
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tTurkeyFeast_Log["DeleteAllItem"],nItemId,nCount),nUserId)
			User_TalkChannel2005(tTurkeyFeast_Text[3314460]["Expired"],nUserId)
		end
		return
	end
	-- 检查物品
	if not Item_ChkMulItem(nItemId,nItemId,tTurkeyFeast_Data["NeedTurkeyNum"]) then
		User_TalkChannel2005(tTurkeyFeast_Text[3314460]["NotEnough"],nUserId)
		return
	end
	-- 背包空间判断
	local nRewardSpace = RewardTemplate_GetRewardSpace(tTurkeyFeast_Reward[nItemId],nUserId)
	local nDelSpace = RewardTemplate_GetDelSpace(tTurkeyFeast_Reward[nItemId],nUserId)
	local nNeedSpace = nRewardSpace-nDelSpace
	if not User_CheckLeftSpace(nNeedSpace,nUserId) then
		User_TalkChannel2005(string.format(tTurkeyFeast_Text[3314460]["NotSpace"],nNeedSpace),nUserId)
		return
	end
	RewardTemplate_UseItemAndMsg(tTurkeyFeast_Reward[nItemId],nUserId)
	User_TalkChannel2005(string.format(tTurkeyFeast_Text[3314460]["CookingSucc"],1),nUserId)
end

function TurkeyFeast_OpenPkg(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["EffectiveTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tTurkeyFeast_Log["DeleteAllItem"],nItemId,nCount))
			User_TalkChannel2005(tTurkeyFeast_Text[3314463]["Expired"])
		end
		return
	end
	-- 检查物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nIndex = 1
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	-- 背包空间判断
	local nRewardSpace = RewardTemplate_GetRandomSpace(tTurkeyFeast_Reward[nItemId],nIndex)
	local nDelSpace = RewardTemplate_GetDelSpace(tTurkeyFeast_Reward[nItemId][nIndex])
	local nNeedSpace = nRewardSpace-nDelSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		User_TalkChannel2005(string.format(tTurkeyFeast_Text[3314463]["NotSpace"],nNeedSpace))
		return
	end
	-- 给奖励
	RewardTemplate_RandomReward(tTurkeyFeast_Reward[nItemId],nIndex)
	-- 加光效
	User_EffectAdd("self",tTurkeyFeast_Effect[1],Get_UserId())
end

function TurkeyFeast_JudgeDistance(nUserId)
	local nUserId = nUserId or Get_UserId()
	--非指定位置使用
	local nNowPosX = Get_UserPositionX(nUserId)
	local nNowPosY = Get_UserPositionY(nUserId)
	local nIndex = 1
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	local nBound = tTurkeyFeast_Map[nIndex]["Range"]
	local nPosX = tTurkeyFeast_Map[nIndex]["PosX"]
	local nPosY = tTurkeyFeast_Map[nIndex]["PosY"]
	if (nNowPosX >= nPosX - nBound and nNowPosX <= nPosX + nBound) and (nNowPosY >= nPosY - nBound and nNowPosY <= nPosY + nBound) then
		return true
	else
		return false
	end
end

function TurkeyFeast_CalcTeamCount(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tTurkeyFeast_Log["DeleteAllItem"],nItemId,nCount),nUserId)
			User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["Expired"],nUserId)
		end
		return
	end
	local nUserId = Get_UserId()
	local nTeamCount=Get_UserTeamNumbers()
	if nTeamCount < tTurkeyFeast_Data["Team"] then
		User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["NoTeam"],nUserId)
		return
	end
	-- 位置判断
	if not TurkeyFeast_JudgeDistance(nUserId) then
		User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["EatFail"],nUserId)
		return
	end
	Task_SetStatistic(tTurkeyFeast_Stc[4]["EventType"],tTurkeyFeast_Stc[4]["DataType"],0,1,nUserId)
	--全员全地图触发
	User_TeamExeFuncByTeamer(tTurkeyFeast_Data["Range"],string.format("TurkeyFeast_TeamFunc1</N>%d</N>%d",nTeamCount,nUserId),nUserId)
	TurkeyFeast_TeamCheck(nTeamCount,nItemId,nUserId)
end

--第一次全队触发函数
function TurkeyFeast_TeamFunc1(nSelectCount,nOnwerId,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- 位置判断
	if not TurkeyFeast_JudgeDistance(nUserId) then
		User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["EatFail1"],Get_UserId())
		return
	end
	local nIndex = 1
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	--判断是否在指定位置
	if Get_UserMapId(nUserId) == tTurkeyFeast_Map[nIndex]["Id"] then
		--附近的触发
		User_TeamExeFuncByTeamer(tTurkeyFeast_Data["Range"],string.format("TurkeyFeast_TeamFuncNear</N>%d</N>%d",nSelectCount,nOnwerId),nUserId)
	else
		--全地图触发
		User_TeamExeFuncByTeamer(tTurkeyFeast_Data["Range"],string.format("TurkeyFeast_TeamFuncNotNear</N>%d</N>%d",nSelectCount,nOnwerId),nUserId)
	end
end

--第二次全队触发函数（附近）
function TurkeyFeast_TeamFuncNear(nSelectCount,nOnwerId,nUserId)
	local nUserId=nUserId or Get_UserId()
	if nOnwerId==nUserId then
		Task_AddStatistic(tTurkeyFeast_Stc[4]["EventType"],tTurkeyFeast_Stc[4]["DataType"],tTurkeyFeast_Data["CalcAddValue"],1,nUserId)
		Task_AddStatistic(tTurkeyFeast_Stc[4]["EventType"],tTurkeyFeast_Stc[4]["DataType"],tTurkeyFeast_Data["NearAddValue"],1,nUserId)
	end
end

--第二次全队触发函数（不在附近）
function TurkeyFeast_TeamFuncNotNear(nSelectCount,nOnwerId,nUserId)
	local nUserId=nUserId or Get_UserId()
	if nOnwerId==nUserId then
		Task_AddStatistic(tTurkeyFeast_Stc[4]["EventType"],tTurkeyFeast_Stc[4]["DataType"],tTurkeyFeast_Data["CalcAddValue"],1,nUserId)
	end
end

--全队执行完的回返检测是否全部回返
function TurkeyFeast_TeamCheck(nSelectCount,nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nValue=Get_UserStatisticValue(tTurkeyFeast_Stc[4]["EventType"],tTurkeyFeast_Stc[4]["DataType"],nUserId)
	local nCount=nValue%tTurkeyFeast_Data["NearAddValue"]
	if nCount==Get_UserTeamNumbers(nUserId) then
		local nTeamCount=(nValue-nCount)/tTurkeyFeast_Data["NearAddValue"]
		if nTeamCount >= nSelectCount then
			TurkeyFeast_EatTurkey(nItemId,nUserId)
			return
		else
			User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["NoTeam"],nUserId)
			return
		end
	end
end

function TurkeyFeast_EatTurkey(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tTurkeyFeast_Log["DeleteAllItem"],nItemId,nCount),nUserId)
			User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["Expired"],nUserId)
		end
		return
	end
	local nEvent = tTurkeyFeast_Stc[1]["EventType"]
	local nType = tTurkeyFeast_Stc[1]["DataType"]
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 检查物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 上限判断
	if Task_ChkStcValue(nEvent,nType,">=",tTurkeyFeast_Stc[1]["Limit"],nUserId) then
		User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["EatTooMuch"],nUserId)
		return
	end
	-- 背包空间判断
	local nRewardSpace = RewardTemplate_GetRewardSpace(tTurkeyFeast_Reward[nItemId],nUserId)
	local nDelSpace = RewardTemplate_GetDelSpace(tTurkeyFeast_Reward[nItemId],nUserId)
	local nNeedSpace = nRewardSpace-nDelSpace
	if not User_CheckLeftSpace(nNeedSpace,nUserId) then
		User_TalkChannel2005(tTurkeyFeast_Text["Eat"]["NotSpace"],nUserId)
		return
	end
	-- 置掩码
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0,nUserId) then
		-- 给奖励
		RewardTemplate_UseItemAndMsg(tTurkeyFeast_Reward[nItemId],nUserId)
		User_TalkChannel2005(string.format(tTurkeyFeast_Text["Eat"]["EatSucc"],1),nUserId)
	end
end

function TurkeyFeast_KillReward(nMonsterId)
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["ActivityTime"]) then
		return
	end
	local nEvent = tTurkeyFeast_Stc[2]["EventType"]
	local nType = tTurkeyFeast_Stc[2]["DataType"]
	-- 隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	-- 上限判断
	if Task_ChkStcValue(nEvent,nType,"==",tTurkeyFeast_Stc[2]["Limit"]) then
		Sys_MsgBox(tTurkeyFeast_Text["Killmonster"]["GotEnough"])
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return
	end
	if Task_ChkStcValue(nEvent,nType,">=",tTurkeyFeast_Stc[2]["Limit"]) then
		User_TalkChannel2005(tTurkeyFeast_Text["Killmonster"]["GotEnough"])
		return
	end
	-- 背包空间判断
	if not User_CheckLeftSpace(RewardTemplate_GetRandomSpace(tTurkeyFeast_MonsterDrop["Reward"],1)) then
		User_TalkChannel2005(tTurkeyFeast_Text["Killmonster"]["NotSpace"])
		return
	end
	-- 概率掉落
	local tReward = RewardTemplate_NewRandom(tTurkeyFeast_MonsterDrop["Reward"],1)
	local nSign = tReward[1]["tAward"][1]["Sign"]
	if nSign == 1 then
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

------------------------------------------------------------------------------------NPC部分-------------------------------------------
-- 食神派瑞
tNpcFace[5859] = 12
tNpcGossip[25497] = tNpcGossip[25497] or DefaultNpc:new{}
tNpcGossip[25497]["OptionHidden"] = 1
tNpcGossip[25497]["DialogueText"] = tTurkeyFeast_Text[25497]
-- 活动前
tNpcGossip[25497]["Text1-1"] = {111,112,113}
tNpcGossip[25497]["tOption1-1"] = {111}
tNpcGossip[25497]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TurkeyFeast"]["ActivityTime"])
end
-- 活动后
tNpcGossip[25497]["Text1-2"] = {121}
tNpcGossip[25497]["tOption1-2"] = {121}
tNpcGossip[25497]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["TurkeyFeast"]["ActivityTime"])
end
-- 活动中
tNpcGossip[25497]["Text1-3"] = {131,132,133,134}
tNpcGossip[25497]["tOption1-3"] = {131,132}
tNpcGossip[25497]["OptionPoint131"]="2-1"
tNpcGossip[25497]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["TurkeyFeast"]["ActivityTime"])
end
-- 接1
tNpcGossip[25497]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25497]["tOption2-1"] = {211}

------------------------------------------------------------------------------------物品部分-------------------------------------------
-- 火鸡肉
tItemFace[3314460] = 2632
tItem[3314460] = tItem[3314460] or {}
tItem[3314460]["DialogueText"] = tTurkeyFeast_Text[3314460]
tItem[3314460]["Text1-1"] = {111}
tItem[3314460]["tOption1-1"] = {111}
tItem[3314460]["OptionFunc111"] = "TurkeyFeast_Cooking</N>3314460"

-- 普通烤火鸡
tItem[3326600] = tItem[3326600] or {}
tItem[3326600]["Function"] = function(nItemId,sItemName)
	TurkeyFeast_CalcTeamCount(nItemId)
end

-- 火鸡盛宴礼包
tItem[3314463] = tItem[3314463] or {}
tItem[3314463]["Function"] = function(nItemId,sItemName)
	TurkeyFeast_OpenPkg(nItemId)
end

------------------------------------------------------------------------------------怪物掉落-------------------------------------------
--全区全服全片区怪物掉落
local tTurkeyFeast_KillReward = {}
	tTurkeyFeast_KillReward["ActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
	tTurkeyFeast_KillReward["Function"]=TurkeyFeast_KillReward
	table.insert(tMonsterDrop_AreaLoad,tTurkeyFeast_KillReward)
	
local tTurkeyFeast_KillReward_NoGift = {}
tTurkeyFeast_KillReward_NoGift["ActivityTime"] = tActivityTime["TurkeyFeast"]["ActivityTime"]
tTurkeyFeast_KillReward_NoGift["Function"] = TurkeyFeast_KillReward
tTurkeyFeast_KillReward_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tTurkeyFeast_KillReward_NoGift)

