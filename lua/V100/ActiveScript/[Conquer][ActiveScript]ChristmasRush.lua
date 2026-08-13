------------------------------------------------------------------------------------
--Name：            181123[英文征服][活动脚本]圣诞大促非赠消费（12.18）
--Creator:      杨艳
--Created:     2018/11/23
------------------------------------------------------------------------------------

--命名前缀 ChristmasRush_
--LogId: 12001227

-- 物品id
-- 3311659,'L1ChristmasDemonBox
-- 3311660,'L2ChristmasDemonBox
-- 3311661,'L3ChristmasDemonBox
-- 3311662,'L4ChristmasDemonBox
-- 3311663,'L5ChristmasDemonBox
-- 3311664,'L6ChristmasDemonBox
-- 3311665,'L7ChristmasDemonBox

-- (3311666,'L1ChristmasPack
-- (3311667,'L2ChristmasPack
-- (3311668,'L3ChristmasPack
-- (3311669,'L4ChristmasPack
-- (3311670,'L5ChristmasPack
-- (3311671,'L6ChristmasPack
-- (3311672,'L7ChristmasPack

-- 3311673,'BlossomRomance(Charm)PromoBag
-- 3311674,'PokerMaster(Legend)PromoBag',
-- 3311675,'ImmortalRobePromoBag',9,98471
-- 3311676,'AuspiciousCloudPromoBag',9,98

-- 3311677,'ChristmasPromotionLeaflet

----------------------------------------------------数据部分----------------------------------

local tChristmasRush_pack = {}
--3311666,'L1ChristmasPack
tChristmasRush_pack[3311666] = {}
tChristmasRush_pack[3311666]["ItemChanceSum"] = 100000
--30%万能神纹精粹×4
tChristmasRush_pack[3311666][1] = {}
tChristmasRush_pack[3311666][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][1]["ItemChance"] = 30000
tChristmasRush_pack[3311666][1]["DeleteItem"]= {}
tChristmasRush_pack[3311666][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][1]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][1]["RewardItem"] = {}
tChristmasRush_pack[3311666][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311666][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311666][1]["RewardItem"][1]["Attr"] = "0 4 3"
tChristmasRush_pack[3311666][1]["EmoneyLog"] = "350	21645	0	0	1	"
tChristmasRush_pack[3311666][1]["RewardEffect"] = {}
tChristmasRush_pack[3311666][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][1]["LogId"] = 12001227
--5天石             3311666
tChristmasRush_pack[3311666][2] = {}
tChristmasRush_pack[3311666][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][2]["ItemChance"] = 20000
tChristmasRush_pack[3311666][2]["DeleteItem"]= {}
tChristmasRush_pack[3311666][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][2]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311666][2]["RewardEMoney"]["Value"] = 5
tChristmasRush_pack[3311666][2]["EmoneyLog"] = "350	21644	-5	-5	1	"
tChristmasRush_pack[3311666][2]["RewardEffect"] = {}
tChristmasRush_pack[3311666][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][2]["LogId"] = 12001227
--10天石            3311666
tChristmasRush_pack[3311666][3] = {}
tChristmasRush_pack[3311666][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][3]["ItemChance"] = 25890
tChristmasRush_pack[3311666][3]["DeleteItem"]= {}
tChristmasRush_pack[3311666][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][3]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311666][3]["RewardEMoney"]["Value"] = 10
tChristmasRush_pack[3311666][3]["EmoneyLog"] = "350	21643	-10	-10	1	"
tChristmasRush_pack[3311666][3]["RewardEffect"] = {}
tChristmasRush_pack[3311666][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][3]["LogId"] = 12001227
--20天石            3311666
tChristmasRush_pack[3311666][4] = {}
tChristmasRush_pack[3311666][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][4]["ItemChance"] = 24059
tChristmasRush_pack[3311666][4]["DeleteItem"]= {}
tChristmasRush_pack[3311666][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][4]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311666][4]["RewardEMoney"]["Value"] = 20
tChristmasRush_pack[3311666][4]["EmoneyLog"] = "350	21642	-20	-20	1	"
tChristmasRush_pack[3311666][4]["RewardEffect"] = {}
tChristmasRush_pack[3311666][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][4]["LogId"] = 12001227
--270天石           3311666
tChristmasRush_pack[3311666][5] = {}
tChristmasRush_pack[3311666][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][5]["ItemChance"] = 50
tChristmasRush_pack[3311666][5]["DeleteItem"]= {}
tChristmasRush_pack[3311666][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][5]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311666][5]["RewardEMoney"]["Value"] = 270
tChristmasRush_pack[3311666][5]["EmoneyLog"] = "350	21641	-270	-270	1	"
tChristmasRush_pack[3311666][5]["RewardEffect"] = {}
tChristmasRush_pack[3311666][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][5]["LogId"] = 12001227
--1380天石          3311666
tChristmasRush_pack[3311666][6] = {}
tChristmasRush_pack[3311666][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311666][6]["ItemChance"] = 1
tChristmasRush_pack[3311666][6]["DeleteItem"]= {}
tChristmasRush_pack[3311666][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311666][6]["DeleteItem"][1]["Id"]= 3311666
tChristmasRush_pack[3311666][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311666][6]["RewardEMoney"]["Value"] = 1380
tChristmasRush_pack[3311666][6]["EmoneyLog"] = "350	21640	-1380	-1380	1	"
tChristmasRush_pack[3311666][6]["RewardEffect"] = {}
tChristmasRush_pack[3311666][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311666][6]["LogId"] = 12001227

-- 3311667,'L2ChristmasPack
tChristmasRush_pack[3311667] = {}
tChristmasRush_pack[3311667]["ItemChanceSum"] = 100000
--30%万能神纹精粹×203311667
tChristmasRush_pack[3311667][1] = {}
tChristmasRush_pack[3311667][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][1]["ItemChance"] = 30000
tChristmasRush_pack[3311667][1]["DeleteItem"]= {}
tChristmasRush_pack[3311667][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][1]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][1]["RewardItem"] = {}
tChristmasRush_pack[3311667][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311667][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311667][1]["RewardItem"][1]["Attr"] = "0 20 3"
tChristmasRush_pack[3311667][1]["EmoneyLog"] = "350	21651	0	0	1	"
tChristmasRush_pack[3311667][1]["RewardEffect"] = {}
tChristmasRush_pack[3311667][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][1]["LogId"] = 12001227
--25天石            3311667
tChristmasRush_pack[3311667][2] = {}
tChristmasRush_pack[3311667][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][2]["ItemChance"] = 20000
tChristmasRush_pack[3311667][2]["DeleteItem"]= {}
tChristmasRush_pack[3311667][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][2]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311667][2]["RewardEMoney"]["Value"] = 25
tChristmasRush_pack[3311667][2]["EmoneyLog"] = "350	21650	-25	-25	1	"
tChristmasRush_pack[3311667][2]["RewardEffect"] = {}
tChristmasRush_pack[3311667][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][2]["LogId"] = 12001227
--50天石            3311667
tChristmasRush_pack[3311667][3] = {}
tChristmasRush_pack[3311667][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][3]["ItemChance"] = 25890
tChristmasRush_pack[3311667][3]["DeleteItem"]= {}
tChristmasRush_pack[3311667][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][3]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311667][3]["RewardEMoney"]["Value"] = 50
tChristmasRush_pack[3311667][3]["EmoneyLog"] = "350	21649	-50	-50	1	"
tChristmasRush_pack[3311667][3]["RewardEffect"] = {}
tChristmasRush_pack[3311667][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][3]["LogId"] = 12001227
--100天石           3311667
tChristmasRush_pack[3311667][4] = {}
tChristmasRush_pack[3311667][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][4]["ItemChance"] = 24059
tChristmasRush_pack[3311667][4]["DeleteItem"]= {}
tChristmasRush_pack[3311667][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][4]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311667][4]["RewardEMoney"]["Value"] = 100
tChristmasRush_pack[3311667][4]["EmoneyLog"] = "350	21648	-100	-100	1	"
tChristmasRush_pack[3311667][4]["RewardEffect"] = {}
tChristmasRush_pack[3311667][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][4]["LogId"] = 12001227
--1350天石          3311667
tChristmasRush_pack[3311667][5] = {}
tChristmasRush_pack[3311667][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][5]["ItemChance"] = 50
tChristmasRush_pack[3311667][5]["DeleteItem"]= {}
tChristmasRush_pack[3311667][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][5]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311667][5]["RewardEMoney"]["Value"] = 1350
tChristmasRush_pack[3311667][5]["EmoneyLog"] = "350	21647	-1350	-1350	1	"
tChristmasRush_pack[3311667][5]["RewardEffect"] = {}
tChristmasRush_pack[3311667][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][5]["LogId"] = 12001227
--6900天石          3311667
tChristmasRush_pack[3311667][6] = {}
tChristmasRush_pack[3311667][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311667][6]["ItemChance"] = 1
tChristmasRush_pack[3311667][6]["DeleteItem"]= {}
tChristmasRush_pack[3311667][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311667][6]["DeleteItem"][1]["Id"]= 3311667
tChristmasRush_pack[3311667][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311667][6]["RewardEMoney"]["Value"] = 6900
tChristmasRush_pack[3311667][6]["EmoneyLog"] = "350	21646	-6900	-6900	1	"
tChristmasRush_pack[3311667][6]["RewardEffect"] = {}
tChristmasRush_pack[3311667][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311667][6]["LogId"] = 12001227

--3311668,'L3ChristmasPack
tChristmasRush_pack[3311668] = {}
tChristmasRush_pack[3311668]["ItemChanceSum"] = 100000
--30%万能神纹精粹×403311668
tChristmasRush_pack[3311668][1] = {}
tChristmasRush_pack[3311668][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][1]["ItemChance"] = 30000
tChristmasRush_pack[3311668][1]["DeleteItem"]= {}
tChristmasRush_pack[3311668][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][1]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][1]["RewardItem"] = {}
tChristmasRush_pack[3311668][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311668][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311668][1]["RewardItem"][1]["Attr"] = "0 40 3"
tChristmasRush_pack[3311668][1]["EmoneyLog"] = "350	21657	0	0	1	"
tChristmasRush_pack[3311668][1]["RewardEffect"] = {}
tChristmasRush_pack[3311668][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][1]["LogId"] = 12001227
--50天石            3311668
tChristmasRush_pack[3311668][2] = {}
tChristmasRush_pack[3311668][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][2]["ItemChance"] = 20000
tChristmasRush_pack[3311668][2]["DeleteItem"]= {}
tChristmasRush_pack[3311668][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][2]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311668][2]["RewardEMoney"]["Value"] = 50
tChristmasRush_pack[3311668][2]["EmoneyLog"] = "350	21656	-50	-50	1	"
tChristmasRush_pack[3311668][2]["RewardEffect"] = {}
tChristmasRush_pack[3311668][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][2]["LogId"] = 12001227
--100天石           3311668
tChristmasRush_pack[3311668][3] = {}
tChristmasRush_pack[3311668][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][3]["ItemChance"] = 25890
tChristmasRush_pack[3311668][3]["DeleteItem"]= {}
tChristmasRush_pack[3311668][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][3]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311668][3]["RewardEMoney"]["Value"] = 100
tChristmasRush_pack[3311668][3]["EmoneyLog"] = "350	21655	-100	-100	1	"
tChristmasRush_pack[3311668][3]["RewardEffect"] = {}
tChristmasRush_pack[3311668][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][3]["LogId"] = 12001227
--200天石           3311668
tChristmasRush_pack[3311668][4] = {}
tChristmasRush_pack[3311668][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][4]["ItemChance"] = 24059
tChristmasRush_pack[3311668][4]["DeleteItem"]= {}
tChristmasRush_pack[3311668][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][4]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311668][4]["RewardEMoney"]["Value"] = 200
tChristmasRush_pack[3311668][4]["EmoneyLog"] = "350	21654	-200	-200	1	"
tChristmasRush_pack[3311668][4]["RewardEffect"] = {}
tChristmasRush_pack[3311668][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][4]["LogId"] = 12001227
--2700天石          3311668
tChristmasRush_pack[3311668][5] = {}
tChristmasRush_pack[3311668][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][5]["ItemChance"] = 50
tChristmasRush_pack[3311668][5]["DeleteItem"]= {}
tChristmasRush_pack[3311668][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][5]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311668][5]["RewardEMoney"]["Value"] = 2700
tChristmasRush_pack[3311668][5]["EmoneyLog"] = "350	21653	-2700	-2700	1	"
tChristmasRush_pack[3311668][5]["RewardEffect"] = {}
tChristmasRush_pack[3311668][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][5]["LogId"] = 12001227
--13800天石         3311668
tChristmasRush_pack[3311668][6] = {}
tChristmasRush_pack[3311668][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311668][6]["ItemChance"] = 1
tChristmasRush_pack[3311668][6]["DeleteItem"]= {}
tChristmasRush_pack[3311668][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311668][6]["DeleteItem"][1]["Id"]= 3311668
tChristmasRush_pack[3311668][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311668][6]["RewardEMoney"]["Value"] = 13800
tChristmasRush_pack[3311668][6]["EmoneyLog"] = "350	21652	-13800	-13800	1	"
tChristmasRush_pack[3311668][6]["RewardEffect"] = {}
tChristmasRush_pack[3311668][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311668][6]["LogId"] = 12001227

--3311669,'L4ChristmasPack
tChristmasRush_pack[3311669] = {}
tChristmasRush_pack[3311669]["ItemChanceSum"] = 100000
--30%万能神纹精粹×203311669
tChristmasRush_pack[3311669][1] = {}
tChristmasRush_pack[3311669][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][1]["ItemChance"] = 30000
tChristmasRush_pack[3311669][1]["DeleteItem"]= {}
tChristmasRush_pack[3311669][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][1]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][1]["RewardItem"] = {}
tChristmasRush_pack[3311669][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311669][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311669][1]["RewardItem"][1]["Attr"] = "0 200 3"
tChristmasRush_pack[3311669][1]["EmoneyLog"] = "350	21663	0	0	1	"
tChristmasRush_pack[3311669][1]["RewardEffect"] = {}
tChristmasRush_pack[3311669][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][1]["LogId"] = 12001227
--250天石           3311669
tChristmasRush_pack[3311669][2] = {}
tChristmasRush_pack[3311669][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][2]["ItemChance"] = 20000
tChristmasRush_pack[3311669][2]["DeleteItem"]= {}
tChristmasRush_pack[3311669][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][2]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311669][2]["RewardEMoney"]["Value"] = 250
tChristmasRush_pack[3311669][2]["EmoneyLog"] = "350	21662	-250	-250	1	"
tChristmasRush_pack[3311669][2]["RewardEffect"] = {}
tChristmasRush_pack[3311669][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][2]["LogId"] = 12001227
--500天石           3311669
tChristmasRush_pack[3311669][3] = {}
tChristmasRush_pack[3311669][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][3]["ItemChance"] = 25890
tChristmasRush_pack[3311669][3]["DeleteItem"]= {}
tChristmasRush_pack[3311669][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][3]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311669][3]["RewardEMoney"]["Value"] = 500
tChristmasRush_pack[3311669][3]["EmoneyLog"] = "350	21661	-500	-500	1	"
tChristmasRush_pack[3311669][3]["RewardEffect"] = {}
tChristmasRush_pack[3311669][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][3]["LogId"] = 12001227
--1000天石          3311669
tChristmasRush_pack[3311669][4] = {}
tChristmasRush_pack[3311669][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][4]["ItemChance"] = 24059
tChristmasRush_pack[3311669][4]["DeleteItem"]= {}
tChristmasRush_pack[3311669][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][4]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311669][4]["RewardEMoney"]["Value"] = 1000
tChristmasRush_pack[3311669][4]["EmoneyLog"] = "350	21660	-1000	-1000	1	"
tChristmasRush_pack[3311669][4]["RewardEffect"] = {}
tChristmasRush_pack[3311669][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][4]["LogId"] = 12001227
--13500天石         3311669
tChristmasRush_pack[3311669][5] = {}
tChristmasRush_pack[3311669][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][5]["ItemChance"] = 50
tChristmasRush_pack[3311669][5]["DeleteItem"]= {}
tChristmasRush_pack[3311669][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][5]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311669][5]["RewardEMoney"]["Value"] = 13500
tChristmasRush_pack[3311669][5]["EmoneyLog"] = "350	21659	-13500	-13500	1	"
tChristmasRush_pack[3311669][5]["RewardEffect"] = {}
tChristmasRush_pack[3311669][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][5]["LogId"] = 12001227
--69000天石         3311669
tChristmasRush_pack[3311669][6] = {}
tChristmasRush_pack[3311669][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311669][6]["ItemChance"] = 1
tChristmasRush_pack[3311669][6]["DeleteItem"]= {}
tChristmasRush_pack[3311669][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311669][6]["DeleteItem"][1]["Id"]= 3311669
tChristmasRush_pack[3311669][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311669][6]["RewardEMoney"]["Value"] = 69000
tChristmasRush_pack[3311669][6]["EmoneyLog"] = "350	21658	-69000	-69000	1	"
tChristmasRush_pack[3311669][6]["RewardEffect"] = {}
tChristmasRush_pack[3311669][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311669][6]["LogId"] = 12001227

--3311670,'L5ChristmasPack
tChristmasRush_pack[3311670] = {}
tChristmasRush_pack[3311670]["ItemChanceSum"] = 100000
--30%万能神纹精粹×400
tChristmasRush_pack[3311670][1] = {}
tChristmasRush_pack[3311670][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][1]["ItemChance"] = 30000
tChristmasRush_pack[3311670][1]["DeleteItem"]= {}
tChristmasRush_pack[3311670][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][1]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][1]["RewardItem"] = {}
tChristmasRush_pack[3311670][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311670][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311670][1]["RewardItem"][1]["Attr"] = "0 400 3"
tChristmasRush_pack[3311670][1]["EmoneyLog"] = "350	21669	0	0	1	"
tChristmasRush_pack[3311670][1]["RewardEffect"] = {}
tChristmasRush_pack[3311670][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][1]["LogId"] = 12001227
--500天石           3311670
tChristmasRush_pack[3311670][2] = {}
tChristmasRush_pack[3311670][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][2]["ItemChance"] = 20000
tChristmasRush_pack[3311670][2]["DeleteItem"]= {}
tChristmasRush_pack[3311670][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][2]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311670][2]["RewardEMoney"]["Value"] = 500
tChristmasRush_pack[3311670][2]["EmoneyLog"] = "350	21668	-500	-500	1	"
tChristmasRush_pack[3311670][2]["RewardEffect"] = {}
tChristmasRush_pack[3311670][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][2]["LogId"] = 12001227
--1000天石          3311670
tChristmasRush_pack[3311670][3] = {}
tChristmasRush_pack[3311670][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][3]["ItemChance"] = 25890
tChristmasRush_pack[3311670][3]["DeleteItem"]= {}
tChristmasRush_pack[3311670][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][3]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311670][3]["RewardEMoney"]["Value"] = 1000
tChristmasRush_pack[3311670][3]["EmoneyLog"] = "350	21667	-1000	-1000	1	"
tChristmasRush_pack[3311670][3]["RewardEffect"] = {}
tChristmasRush_pack[3311670][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][3]["LogId"] = 12001227
--2000天石          3311670
tChristmasRush_pack[3311670][4] = {}
tChristmasRush_pack[3311670][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][4]["ItemChance"] = 24059
tChristmasRush_pack[3311670][4]["DeleteItem"]= {}
tChristmasRush_pack[3311670][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][4]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311670][4]["RewardEMoney"]["Value"] = 2000
tChristmasRush_pack[3311670][4]["EmoneyLog"] = "350	21666	-2000	-2000	1	"
tChristmasRush_pack[3311670][4]["RewardEffect"] = {}
tChristmasRush_pack[3311670][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][4]["LogId"] = 12001227
--27000天石         3311670
tChristmasRush_pack[3311670][5] = {}
tChristmasRush_pack[3311670][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][5]["ItemChance"] = 50
tChristmasRush_pack[3311670][5]["DeleteItem"]= {}
tChristmasRush_pack[3311670][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][5]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311670][5]["RewardEMoney"]["Value"] = 27000
tChristmasRush_pack[3311670][5]["EmoneyLog"] = "350	21665	-27000	-27000	1	"
tChristmasRush_pack[3311670][5]["RewardEffect"] = {}
tChristmasRush_pack[3311670][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][5]["LogId"] = 12001227
--138000天石        3311670
tChristmasRush_pack[3311670][6] = {}
tChristmasRush_pack[3311670][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311670][6]["ItemChance"] = 1
tChristmasRush_pack[3311670][6]["DeleteItem"]= {}
tChristmasRush_pack[3311670][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311670][6]["DeleteItem"][1]["Id"]= 3311670
tChristmasRush_pack[3311670][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311670][6]["RewardEMoney"]["Value"] = 138000
tChristmasRush_pack[3311670][6]["EmoneyLog"] = "350	21664	-138000	-138000	1	"
tChristmasRush_pack[3311670][6]["RewardEffect"] = {}
tChristmasRush_pack[3311670][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311670][6]["LogId"] = 12001227

--3311671,'L6ChristmasPack
tChristmasRush_pack[3311671] = {}
tChristmasRush_pack[3311671]["ItemChanceSum"] = 100000
--30%万能神纹精粹×2000
tChristmasRush_pack[3311671][1] = {}
tChristmasRush_pack[3311671][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][1]["ItemChance"] = 30000
tChristmasRush_pack[3311671][1]["DeleteItem"]= {}
tChristmasRush_pack[3311671][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][1]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][1]["RewardItem"] = {}
tChristmasRush_pack[3311671][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311671][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311671][1]["RewardItem"][1]["Attr"] = "0 2000 3"
tChristmasRush_pack[3311671][1]["EmoneyLog"] = "350	21675	0	0	1	"
tChristmasRush_pack[3311671][1]["RewardEffect"] = {}
tChristmasRush_pack[3311671][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][1]["LogId"] = 12001227
--2500天石          3311671
tChristmasRush_pack[3311671][2] = {}
tChristmasRush_pack[3311671][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][2]["ItemChance"] = 20000
tChristmasRush_pack[3311671][2]["DeleteItem"]= {}
tChristmasRush_pack[3311671][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][2]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311671][2]["RewardEMoney"]["Value"] = 2500
tChristmasRush_pack[3311671][2]["EmoneyLog"] = "350	21674	-2500	-2500	1	"
tChristmasRush_pack[3311671][2]["RewardEffect"] = {}
tChristmasRush_pack[3311671][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][2]["LogId"] = 12001227
--5000天石          3311671
tChristmasRush_pack[3311671][3] = {}
tChristmasRush_pack[3311671][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][3]["ItemChance"] = 25890
tChristmasRush_pack[3311671][3]["DeleteItem"]= {}
tChristmasRush_pack[3311671][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][3]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311671][3]["RewardEMoney"]["Value"] = 5000
tChristmasRush_pack[3311671][3]["EmoneyLog"] = "350	21673	-5000	-5000	1	"
tChristmasRush_pack[3311671][3]["RewardEffect"] = {}
tChristmasRush_pack[3311671][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][3]["LogId"] = 12001227
--10000天石         3311671
tChristmasRush_pack[3311671][4] = {}
tChristmasRush_pack[3311671][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][4]["ItemChance"] = 24059
tChristmasRush_pack[3311671][4]["DeleteItem"]= {}
tChristmasRush_pack[3311671][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][4]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311671][4]["RewardEMoney"]["Value"] = 10000
tChristmasRush_pack[3311671][4]["EmoneyLog"] = "350	21672	-10000	-10000	1	"
tChristmasRush_pack[3311671][4]["RewardEffect"] = {}
tChristmasRush_pack[3311671][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][4]["LogId"] = 12001227
--135000天石        3311671
tChristmasRush_pack[3311671][5] = {}
tChristmasRush_pack[3311671][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][5]["ItemChance"] = 50
tChristmasRush_pack[3311671][5]["DeleteItem"]= {}
tChristmasRush_pack[3311671][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][5]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311671][5]["RewardEMoney"]["Value"] = 135000
tChristmasRush_pack[3311671][5]["EmoneyLog"] = "350	21671	-135000	-135000	1	"
tChristmasRush_pack[3311671][5]["RewardEffect"] = {}
tChristmasRush_pack[3311671][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][5]["LogId"] = 12001227
--690000天石        3311671
tChristmasRush_pack[3311671][6] = {}
tChristmasRush_pack[3311671][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311671][6]["ItemChance"] = 1
tChristmasRush_pack[3311671][6]["DeleteItem"]= {}
tChristmasRush_pack[3311671][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311671][6]["DeleteItem"][1]["Id"]= 3311671
tChristmasRush_pack[3311671][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311671][6]["RewardEMoney"]["Value"] = 690000
tChristmasRush_pack[3311671][6]["EmoneyLog"] = "350	21670	-690000	-690000	1	"
tChristmasRush_pack[3311671][6]["RewardEffect"] = {}
tChristmasRush_pack[3311671][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311671][6]["LogId"] = 12001227

--3311672,'L7ChristmasPack
tChristmasRush_pack[3311672] = {}
tChristmasRush_pack[3311672]["ItemChanceSum"] = 100000
--30%万能神纹精粹×4000
tChristmasRush_pack[3311672][1] = {}
tChristmasRush_pack[3311672][1]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][1]["ItemChance"] = 30000
tChristmasRush_pack[3311672][1]["DeleteItem"]= {}
tChristmasRush_pack[3311672][1]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][1]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][1]["RewardItem"] = {}
tChristmasRush_pack[3311672][1]["RewardItem"][1] = {}
tChristmasRush_pack[3311672][1]["RewardItem"][1]["Id"] = 4060001
tChristmasRush_pack[3311672][1]["RewardItem"][1]["Attr"] = "0 4000 3"
tChristmasRush_pack[3311672][1]["EmoneyLog"] = "350	21681	0	0	1	"
tChristmasRush_pack[3311672][1]["RewardEffect"] = {}
tChristmasRush_pack[3311672][1]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][1]["LogId"] = 12001227
--5000天石          3311672
tChristmasRush_pack[3311672][2] = {}
tChristmasRush_pack[3311672][2]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][2]["ItemChance"] = 20000
tChristmasRush_pack[3311672][2]["DeleteItem"]= {}
tChristmasRush_pack[3311672][2]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][2]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][2]["RewardEMoney"] = {}
tChristmasRush_pack[3311672][2]["RewardEMoney"]["Value"] = 5000
tChristmasRush_pack[3311672][2]["EmoneyLog"] = "350	21680	-5000	-5000	1	"
tChristmasRush_pack[3311672][2]["RewardEffect"] = {}
tChristmasRush_pack[3311672][2]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][2]["LogId"] = 12001227
--10000天石         3311672
tChristmasRush_pack[3311672][3] = {}
tChristmasRush_pack[3311672][3]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][3]["ItemChance"] = 25890
tChristmasRush_pack[3311672][3]["DeleteItem"]= {}
tChristmasRush_pack[3311672][3]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][3]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][3]["RewardEMoney"] = {}
tChristmasRush_pack[3311672][3]["RewardEMoney"]["Value"] = 10000
tChristmasRush_pack[3311672][3]["EmoneyLog"] = "350	21679	-10000	-10000	1	"
tChristmasRush_pack[3311672][3]["RewardEffect"] = {}
tChristmasRush_pack[3311672][3]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][3]["LogId"] = 12001227
--20000天石         3311672
tChristmasRush_pack[3311672][4] = {}
tChristmasRush_pack[3311672][4]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][4]["ItemChance"] = 24059
tChristmasRush_pack[3311672][4]["DeleteItem"]= {}
tChristmasRush_pack[3311672][4]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][4]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][4]["RewardEMoney"] = {}
tChristmasRush_pack[3311672][4]["RewardEMoney"]["Value"] = 20000
tChristmasRush_pack[3311672][4]["EmoneyLog"] = "350	21678	-20000	-20000	1	"
tChristmasRush_pack[3311672][4]["RewardEffect"] = {}
tChristmasRush_pack[3311672][4]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][4]["LogId"] = 12001227
--270000天石        3311672
tChristmasRush_pack[3311672][5] = {}
tChristmasRush_pack[3311672][5]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][5]["ItemChance"] = 50
tChristmasRush_pack[3311672][5]["DeleteItem"]= {}
tChristmasRush_pack[3311672][5]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][5]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][5]["RewardEMoney"] = {}
tChristmasRush_pack[3311672][5]["RewardEMoney"]["Value"] = 270000
tChristmasRush_pack[3311672][5]["EmoneyLog"] = "350	21677	-270000	-270000	1	"
tChristmasRush_pack[3311672][5]["RewardEffect"] = {}
tChristmasRush_pack[3311672][5]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][5]["LogId"] = 12001227
--1380000天石       3311672
tChristmasRush_pack[3311672][6] = {}
tChristmasRush_pack[3311672][6]["RandomItemChanceType"] = 2
tChristmasRush_pack[3311672][6]["ItemChance"] = 1
tChristmasRush_pack[3311672][6]["DeleteItem"]= {}
tChristmasRush_pack[3311672][6]["DeleteItem"][1]= {}
tChristmasRush_pack[3311672][6]["DeleteItem"][1]["Id"]= 3311672
tChristmasRush_pack[3311672][6]["RewardEMoney"] = {}
tChristmasRush_pack[3311672][6]["RewardEMoney"]["Value"] = 1380000
tChristmasRush_pack[3311672][6]["EmoneyLog"] = "350	21676	-1380000	-1380000	1	"
tChristmasRush_pack[3311672][6]["RewardEffect"] = {}
tChristmasRush_pack[3311672][6]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311672][6]["LogId"] = 12001227

-- 海之心*1          	3311681      3307449
tChristmasRush_pack[3311681] = {}
tChristmasRush_pack[3311681]["RewardItem"] = {}
tChristmasRush_pack[3311681]["RewardItem"][1] = {}
tChristmasRush_pack[3311681]["RewardItem"][1]["Id"] = 3307449
tChristmasRush_pack[3311681]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311681]["DeleteItem"]= {}
tChristmasRush_pack[3311681]["DeleteItem"][1]= {}
tChristmasRush_pack[3311681]["DeleteItem"][1]["Id"]= 3311681
tChristmasRush_pack[3311681]["RewardEffect"] = {}
tChristmasRush_pack[3311681]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311681]["LogId"] = 12001227

-- 圣灵神木*1        	3311682      3003660
tChristmasRush_pack[3311682] = {}
tChristmasRush_pack[3311682]["RewardItem"] = {}
tChristmasRush_pack[3311682]["RewardItem"][1] = {}
tChristmasRush_pack[3311682]["RewardItem"][1]["Id"] = 3003660
tChristmasRush_pack[3311682]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311682]["DeleteItem"]= {}
tChristmasRush_pack[3311682]["DeleteItem"][1]= {}
tChristmasRush_pack[3311682]["DeleteItem"][1]["Id"]= 3311682
tChristmasRush_pack[3311682]["RewardEffect"] = {}
tChristmasRush_pack[3311682]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311682]["LogId"] = 12001227

-- 轮回之眼*1        	3311683      3004464
tChristmasRush_pack[3311683] = {}
tChristmasRush_pack[3311683]["RewardItem"] = {}
tChristmasRush_pack[3311683]["RewardItem"][1] = {}
tChristmasRush_pack[3311683]["RewardItem"][1]["Id"] = 3004464
tChristmasRush_pack[3311683]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311683]["DeleteItem"]= {}
tChristmasRush_pack[3311683]["DeleteItem"][1]= {}
tChristmasRush_pack[3311683]["DeleteItem"][1]["Id"]= 3311683
tChristmasRush_pack[3311683]["RewardEffect"] = {}
tChristmasRush_pack[3311683]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311683]["LogId"] = 12001227

-- 神宝仙丹*1        	3311684      3006016
tChristmasRush_pack[3311684] = {}
tChristmasRush_pack[3311684]["RewardItem"] = {}
tChristmasRush_pack[3311684]["RewardItem"][1] = {}
tChristmasRush_pack[3311684]["RewardItem"][1]["Id"] = 3006016
tChristmasRush_pack[3311684]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311684]["DeleteItem"]= {}
tChristmasRush_pack[3311684]["DeleteItem"][1]= {}
tChristmasRush_pack[3311684]["DeleteItem"][1]["Id"]= 3311684
tChristmasRush_pack[3311684]["RewardEffect"] = {}
tChristmasRush_pack[3311684]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311684]["LogId"] = 12001227

-- 空灵佛心*1        	3311685      3007564
tChristmasRush_pack[3311685] = {}
tChristmasRush_pack[3311685]["RewardItem"] = {}
tChristmasRush_pack[3311685]["RewardItem"][1] = {}
tChristmasRush_pack[3311685]["RewardItem"][1]["Id"] = 3007564
tChristmasRush_pack[3311685]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311685]["DeleteItem"]= {}
tChristmasRush_pack[3311685]["DeleteItem"][1]= {}
tChristmasRush_pack[3311685]["DeleteItem"][1]["Id"]= 3311685
tChristmasRush_pack[3311685]["RewardEffect"] = {}
tChristmasRush_pack[3311685]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311685]["LogId"] = 12001227

-- 优质玄元宝石*1    	3311686      700073
tChristmasRush_pack[3311686] = {}
tChristmasRush_pack[3311686]["RewardItem"] = {}
tChristmasRush_pack[3311686]["RewardItem"][1] = {}
tChristmasRush_pack[3311686]["RewardItem"][1]["Id"] = 700073
tChristmasRush_pack[3311686]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311686]["DeleteItem"]= {}
tChristmasRush_pack[3311686]["DeleteItem"][1]= {}
tChristmasRush_pack[3311686]["DeleteItem"][1]["Id"]= 3311686
tChristmasRush_pack[3311686]["RewardEffect"] = {}
tChristmasRush_pack[3311686]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311686]["LogId"] = 12001227

-- +3赤练石          	3311687      730003
tChristmasRush_pack[3311687] = {}
tChristmasRush_pack[3311687]["RewardItem"] = {}
tChristmasRush_pack[3311687]["RewardItem"][1] = {}
tChristmasRush_pack[3311687]["RewardItem"][1]["Id"] = 730003
tChristmasRush_pack[3311687]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311687]["DeleteItem"]= {}
tChristmasRush_pack[3311687]["DeleteItem"][1]= {}
tChristmasRush_pack[3311687]["DeleteItem"][1]["Id"]= 3311687
tChristmasRush_pack[3311687]["RewardEffect"] = {}
tChristmasRush_pack[3311687]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311687]["LogId"] = 12001227

-- +6赤练石          	3311688      730006
tChristmasRush_pack[3311688] = {}
tChristmasRush_pack[3311688]["RewardItem"] = {}
tChristmasRush_pack[3311688]["RewardItem"][1] = {}
tChristmasRush_pack[3311688]["RewardItem"][1]["Id"] = 730006
tChristmasRush_pack[3311688]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311688]["DeleteItem"]= {}
tChristmasRush_pack[3311688]["DeleteItem"][1]= {}
tChristmasRush_pack[3311688]["DeleteItem"][1]["Id"]= 3311688
tChristmasRush_pack[3311688]["RewardEffect"] = {}
tChristmasRush_pack[3311688]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311688]["LogId"] = 12001227

-- +6马匹            	3311689      723864
tChristmasRush_pack[3311689] = {}
tChristmasRush_pack[3311689]["RewardItem"] = {}
tChristmasRush_pack[3311689]["RewardItem"][1] = {}
tChristmasRush_pack[3311689]["RewardItem"][1]["Id"] = 723864
tChristmasRush_pack[3311689]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311689]["DeleteItem"]= {}
tChristmasRush_pack[3311689]["DeleteItem"][1]= {}
tChristmasRush_pack[3311689]["DeleteItem"][1]["Id"]= 3311689
tChristmasRush_pack[3311689]["RewardEffect"] = {}
tChristmasRush_pack[3311689]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311689]["LogId"] = 12001227

-- +8赤练石          	3311690      730008
tChristmasRush_pack[3311690] = {}
tChristmasRush_pack[3311690]["RewardItem"] = {}
tChristmasRush_pack[3311690]["RewardItem"][1] = {}
tChristmasRush_pack[3311690]["RewardItem"][1]["Id"] = 730008
tChristmasRush_pack[3311690]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311690]["DeleteItem"]= {}
tChristmasRush_pack[3311690]["DeleteItem"][1]= {}
tChristmasRush_pack[3311690]["DeleteItem"][1]["Id"]= 3311690
tChristmasRush_pack[3311690]["RewardEffect"] = {}
tChristmasRush_pack[3311690]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311690]["LogId"] = 12001227

-- 小固化石          	3311691      723694
tChristmasRush_pack[3311691] = {}
tChristmasRush_pack[3311691]["RewardItem"] = {}
tChristmasRush_pack[3311691]["RewardItem"][1] = {}
tChristmasRush_pack[3311691]["RewardItem"][1]["Id"] = 723694
tChristmasRush_pack[3311691]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311691]["DeleteItem"]= {}
tChristmasRush_pack[3311691]["DeleteItem"][1]= {}
tChristmasRush_pack[3311691]["DeleteItem"][1]["Id"]= 3311691
tChristmasRush_pack[3311691]["RewardEffect"] = {}
tChristmasRush_pack[3311691]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311691]["LogId"] = 12001227

-- 大固化石          	3311692      723695
tChristmasRush_pack[3311692] = {}
tChristmasRush_pack[3311692]["RewardItem"] = {}
tChristmasRush_pack[3311692]["RewardItem"][1] = {}
tChristmasRush_pack[3311692]["RewardItem"][1]["Id"] = 723695
tChristmasRush_pack[3311692]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311692]["DeleteItem"]= {}
tChristmasRush_pack[3311692]["DeleteItem"][1]= {}
tChristmasRush_pack[3311692]["DeleteItem"][1]["Id"]= 3311692
tChristmasRush_pack[3311692]["RewardEffect"] = {}
tChristmasRush_pack[3311692]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311692]["LogId"] = 12001227

-- 极品天怒/地灵     	3311693      3306163
tChristmasRush_pack[3311693] = {}
tChristmasRush_pack[3311693]["RewardItem"] = {}
tChristmasRush_pack[3311693]["RewardItem"][1] = {}
tChristmasRush_pack[3311693]["RewardItem"][1]["Id"] = 3306163
tChristmasRush_pack[3311693]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311693]["DeleteItem"]= {}
tChristmasRush_pack[3311693]["DeleteItem"][1]= {}
tChristmasRush_pack[3311693]["DeleteItem"][1]["Id"]= 3311693
tChristmasRush_pack[3311693]["RewardEffect"] = {}
tChristmasRush_pack[3311693]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311693]["LogId"] = 12001227

-- 金刚尖钻          	3311694      1200005
tChristmasRush_pack[3311694] = {}
tChristmasRush_pack[3311694]["RewardItem"] = {}
tChristmasRush_pack[3311694]["RewardItem"][1] = {}
tChristmasRush_pack[3311694]["RewardItem"][1]["Id"] = 1200005
tChristmasRush_pack[3311694]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311694]["DeleteItem"]= {}
tChristmasRush_pack[3311694]["DeleteItem"][1]= {}
tChristmasRush_pack[3311694]["DeleteItem"][1]["Id"]= 3311694
tChristmasRush_pack[3311694]["RewardEffect"] = {}
tChristmasRush_pack[3311694]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311694]["LogId"] = 12001227

-- 龙珠卷            	3311695      720028
tChristmasRush_pack[3311695] = {}
tChristmasRush_pack[3311695]["RewardItem"] = {}
tChristmasRush_pack[3311695]["RewardItem"][1] = {}
tChristmasRush_pack[3311695]["RewardItem"][1]["Id"] = 720028
tChristmasRush_pack[3311695]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311695]["DeleteItem"]= {}
tChristmasRush_pack[3311695]["DeleteItem"][1]= {}
tChristmasRush_pack[3311695]["DeleteItem"][1]["Id"]= 3311695
tChristmasRush_pack[3311695]["RewardEffect"] = {}
tChristmasRush_pack[3311695]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311695]["LogId"] = 12001227

-- P7武器神魂可选包  	3311696      3004247
tChristmasRush_pack[3311696] = {}
tChristmasRush_pack[3311696]["RewardItem"] = {}
tChristmasRush_pack[3311696]["RewardItem"][1] = {}
tChristmasRush_pack[3311696]["RewardItem"][1]["Id"] = 3004247
tChristmasRush_pack[3311696]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311696]["DeleteItem"]= {}
tChristmasRush_pack[3311696]["DeleteItem"][1]= {}
tChristmasRush_pack[3311696]["DeleteItem"][1]["Id"]= 3311696
tChristmasRush_pack[3311696]["RewardEffect"] = {}
tChristmasRush_pack[3311696]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311696]["LogId"] = 12001227

-- P7防具神魂可选包  	3311697      3004248
tChristmasRush_pack[3311697] = {}
tChristmasRush_pack[3311697]["RewardItem"] = {}
tChristmasRush_pack[3311697]["RewardItem"][1] = {}
tChristmasRush_pack[3311697]["RewardItem"][1]["Id"] = 3004248
tChristmasRush_pack[3311697]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311697]["DeleteItem"]= {}
tChristmasRush_pack[3311697]["DeleteItem"][1]= {}
tChristmasRush_pack[3311697]["DeleteItem"][1]["Id"]= 3311697
tChristmasRush_pack[3311697]["RewardEffect"] = {}
tChristmasRush_pack[3311697]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311697]["LogId"] = 12001227

-- 究极通神丹100颗   	3311698      3003152
tChristmasRush_pack[3311698] = {}
tChristmasRush_pack[3311698]["RewardItem"] = {}
tChristmasRush_pack[3311698]["RewardItem"][1] = {}
tChristmasRush_pack[3311698]["RewardItem"][1]["Id"] = 3003126
tChristmasRush_pack[3311698]["RewardItem"][1]["Attr"] = "0 100"
tChristmasRush_pack[3311698]["DeleteItem"]= {}
tChristmasRush_pack[3311698]["DeleteItem"][1]= {}
tChristmasRush_pack[3311698]["DeleteItem"][1]["Id"]= 3311698
tChristmasRush_pack[3311698]["RewardEffect"] = {}
tChristmasRush_pack[3311698]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311698]["LogId"] = 12001227

-- 免费强练丹500颗   	3311699      3003124
tChristmasRush_pack[3311699] = {}
tChristmasRush_pack[3311699]["RewardItem"] = {}
tChristmasRush_pack[3311699]["RewardItem"][1] = {}
tChristmasRush_pack[3311699]["RewardItem"][1]["Id"] = 3003124
tChristmasRush_pack[3311699]["RewardItem"][1]["Attr"] = "0 500"
tChristmasRush_pack[3311699]["DeleteItem"]= {}
tChristmasRush_pack[3311699]["DeleteItem"][1]= {}
tChristmasRush_pack[3311699]["DeleteItem"][1]["Id"]= 3311699
tChristmasRush_pack[3311699]["RewardEffect"] = {}
tChristmasRush_pack[3311699]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311699]["LogId"] = 12001227

-- 强效护心丹500颗   	3311700      3002030
tChristmasRush_pack[3311700] = {}
tChristmasRush_pack[3311700]["RewardItem"] = {}
tChristmasRush_pack[3311700]["RewardItem"][1] = {}
tChristmasRush_pack[3311700]["RewardItem"][1]["Id"] = 3002030
tChristmasRush_pack[3311700]["RewardItem"][1]["Attr"] = "0 500"
tChristmasRush_pack[3311700]["DeleteItem"]= {}
tChristmasRush_pack[3311700]["DeleteItem"][1]= {}
tChristmasRush_pack[3311700]["DeleteItem"][1]["Id"]= 3311700
tChristmasRush_pack[3311700]["RewardEffect"] = {}
tChristmasRush_pack[3311700]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311700]["LogId"] = 12001227

-- 散功丹1颗         	3311701      3005412
tChristmasRush_pack[3311701] = {}
tChristmasRush_pack[3311701]["RewardItem"] = {}
tChristmasRush_pack[3311701]["RewardItem"][1] = {}
tChristmasRush_pack[3311701]["RewardItem"][1]["Id"] = 3005412
tChristmasRush_pack[3311701]["RewardItem"][1]["Attr"] = "0 1"
tChristmasRush_pack[3311701]["DeleteItem"]= {}
tChristmasRush_pack[3311701]["DeleteItem"][1]= {}
tChristmasRush_pack[3311701]["DeleteItem"][1]["Id"]= 3311701
tChristmasRush_pack[3311701]["RewardEffect"] = {}
tChristmasRush_pack[3311701]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311701]["LogId"] = 12001227

-- 3311673,'BlossomRomance(Charm)PromoBag
tChristmasRush_pack[3311673] = {}
tChristmasRush_pack[3311673]["RewardItem"] = {}
tChristmasRush_pack[3311673]["RewardItem"][1] = {}
tChristmasRush_pack[3311673]["RewardItem"][1]["Id"] = 195405
tChristmasRush_pack[3311673]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3311673]["DeleteItem"]= {}
tChristmasRush_pack[3311673]["DeleteItem"][1]= {}
tChristmasRush_pack[3311673]["DeleteItem"][1]["Id"]= 3311673
tChristmasRush_pack[3311673]["RewardEffect"] = {}
tChristmasRush_pack[3311673]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311673]["LogId"] = 12001227

-- 3320837,'BlossomRomance(Charm)PromoBag非赠
tChristmasRush_pack[3320837] = {}
tChristmasRush_pack[3320837]["RewardItem"] = {}
tChristmasRush_pack[3320837]["RewardItem"][1] = {}
tChristmasRush_pack[3320837]["RewardItem"][1]["Id"] = 195405
tChristmasRush_pack[3320837]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3320837]["DeleteItem"]= {}
tChristmasRush_pack[3320837]["DeleteItem"][1]= {}
tChristmasRush_pack[3320837]["DeleteItem"][1]["Id"]= 3320837
tChristmasRush_pack[3320837]["RewardEffect"] = {}
tChristmasRush_pack[3320837]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3320837]["LogId"] = 12001227

-- 3311674,'PokerMaster(Legend)PromoBag',
tChristmasRush_pack[3311674] = {}
tChristmasRush_pack[3311674]["RewardItem"] = {}
tChristmasRush_pack[3311674]["RewardItem"][1] = {}
tChristmasRush_pack[3311674]["RewardItem"][1]["Id"] = 195225
tChristmasRush_pack[3311674]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3311674]["DeleteItem"]= {}
tChristmasRush_pack[3311674]["DeleteItem"][1]= {}
tChristmasRush_pack[3311674]["DeleteItem"][1]["Id"]= 3311674
tChristmasRush_pack[3311674]["RewardEffect"] = {}
tChristmasRush_pack[3311674]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311674]["LogId"] = 12001227


-- 3311675,'ImmortalRobePromoBag',9,98471
tChristmasRush_pack[3311675] = {}
tChristmasRush_pack[3311675]["RewardItem"] = {}
tChristmasRush_pack[3311675]["RewardItem"][1] = {}
tChristmasRush_pack[3311675]["RewardItem"][1]["Id"] = 193725
tChristmasRush_pack[3311675]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3311675]["DeleteItem"]= {}
tChristmasRush_pack[3311675]["DeleteItem"][1]= {}
tChristmasRush_pack[3311675]["DeleteItem"][1]["Id"]= 3311675
tChristmasRush_pack[3311675]["RewardEffect"] = {}
tChristmasRush_pack[3311675]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311675]["LogId"] = 12001227

-- 3311676,'AuspiciousCloudPromoBag',9,98
tChristmasRush_pack[3311676] = {}
tChristmasRush_pack[3311676]["RewardItem"] = {}
tChristmasRush_pack[3311676]["RewardItem"][1] = {}
tChristmasRush_pack[3311676]["RewardItem"][1]["Id"] = 200629
tChristmasRush_pack[3311676]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3311676]["DeleteItem"]= {}
tChristmasRush_pack[3311676]["DeleteItem"][1]= {}
tChristmasRush_pack[3311676]["DeleteItem"][1]["Id"]= 3311676
tChristmasRush_pack[3311676]["RewardEffect"] = {}
tChristmasRush_pack[3311676]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3311676]["LogId"] = 12001227

-- 3320838,'AuspiciousCloudPromoBag',9,98
tChristmasRush_pack[3320838] = {}
tChristmasRush_pack[3320838]["RewardItem"] = {}
tChristmasRush_pack[3320838]["RewardItem"][1] = {}
tChristmasRush_pack[3320838]["RewardItem"][1]["Id"] = 200629
tChristmasRush_pack[3320838]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tChristmasRush_pack[3320838]["DeleteItem"]= {}
tChristmasRush_pack[3320838]["DeleteItem"][1]= {}
tChristmasRush_pack[3320838]["DeleteItem"][1]["Id"]= 3320838
tChristmasRush_pack[3320838]["RewardEffect"] = {}
tChristmasRush_pack[3320838]["RewardEffect"]["Effect"] = "angelwing"
tChristmasRush_pack[3320838]["LogId"] = 12001227



local tChristmasRush_Monsters = {}
--一级金秋锁妖盒
tChristmasRush_Monsters[3311659] = {}
tChristmasRush_Monsters[3311659]["MonsterId"] = 4928
tChristmasRush_Monsters[3311659]["GenId"] = 26503
--二级金秋锁妖盒
tChristmasRush_Monsters[3311660] = {}
tChristmasRush_Monsters[3311660]["MonsterId"] = 4929
tChristmasRush_Monsters[3311660]["GenId"] = 26504
--三级金秋锁妖盒
tChristmasRush_Monsters[3311661] = {}
tChristmasRush_Monsters[3311661]["MonsterId"] = 4930
tChristmasRush_Monsters[3311661]["GenId"] = 26505
--四级金秋锁妖盒
tChristmasRush_Monsters[3311662] = {}
tChristmasRush_Monsters[3311662]["MonsterId"] = 4931
tChristmasRush_Monsters[3311662]["GenId"] = 26506
--五级金秋锁妖盒
tChristmasRush_Monsters[3311663] = {}
tChristmasRush_Monsters[3311663]["MonsterId"] = 4932
tChristmasRush_Monsters[3311663]["GenId"] = 26507
--六级金秋锁妖盒
tChristmasRush_Monsters[3311664] = {}
tChristmasRush_Monsters[3311664]["MonsterId"] = 4933
tChristmasRush_Monsters[3311664]["GenId"] = 26508
--七级金秋锁妖盒
tChristmasRush_Monsters[3311665] = {}
tChristmasRush_Monsters[3311665]["MonsterId"] = 4934
tChristmasRush_Monsters[3311665]["GenId"] = 26509


local tChristmasRush_MapXY = {}
tChristmasRush_MapXY[1] = {}
tChristmasRush_MapXY[1]["MapId"] = 1002
tChristmasRush_MapXY[1]["MapXmin"] = 140
tChristmasRush_MapXY[1]["MapXmax"] = 540
tChristmasRush_MapXY[1]["MapYmin"] = 150
tChristmasRush_MapXY[1]["MapYmax"] = 570

tChristmasRush_MapXY[2] = {}
tChristmasRush_MapXY[2]["MapId"] = 1011
tChristmasRush_MapXY[2]["MapXmin"] = 151
tChristmasRush_MapXY[2]["MapXmax"] = 249
tChristmasRush_MapXY[2]["MapYmin"] = 192
tChristmasRush_MapXY[2]["MapYmax"] = 298

tChristmasRush_MapXY[3] = {}
tChristmasRush_MapXY[3]["MapId"] = 1020
tChristmasRush_MapXY[3]["MapXmin"] = 514
tChristmasRush_MapXY[3]["MapXmax"] = 590
tChristmasRush_MapXY[3]["MapYmin"] = 482
tChristmasRush_MapXY[3]["MapYmax"] = 618

tChristmasRush_MapXY[4] = {}
tChristmasRush_MapXY[4]["MapId"] = 1000
tChristmasRush_MapXY[4]["MapXmin"] = 442
tChristmasRush_MapXY[4]["MapXmax"] = 547
tChristmasRush_MapXY[4]["MapYmin"] = 535
tChristmasRush_MapXY[4]["MapYmax"] = 702

tChristmasRush_MapXY[5] = {}
tChristmasRush_MapXY[5]["MapId"] = 1015
tChristmasRush_MapXY[5]["MapXmin"] = 683
tChristmasRush_MapXY[5]["MapXmax"] = 783
tChristmasRush_MapXY[5]["MapYmin"] = 499
tChristmasRush_MapXY[5]["MapYmax"] = 617

tChristmasRush_MapXY[6] = {}
tChristmasRush_MapXY[6]["MapId"] = 1039
tChristmasRush_MapXY[7] = {}
tChristmasRush_MapXY[7]["MapId"] = 1006
tChristmasRush_MapXY[8] = {}
tChristmasRush_MapXY[8]["MapId"] = 1511
tChristmasRush_MapXY[9] = {}
tChristmasRush_MapXY[9]["MapId"] = 1008
tChristmasRush_MapXY[10] = {}
tChristmasRush_MapXY[10]["MapId"] = 1858
tChristmasRush_MapXY[11] = {}
tChristmasRush_MapXY[11]["MapId"] = 3053
tChristmasRush_MapXY[12] = {}
tChristmasRush_MapXY[12]["MapId"] = 1860
tChristmasRush_MapXY[13] = {}
tChristmasRush_MapXY[13]["MapId"] = 1950

local tChristmasRush_KillMonsters = {}
tChristmasRush_KillMonsters[4928] = 3311666
tChristmasRush_KillMonsters[4929] = 3311667
tChristmasRush_KillMonsters[4930] = 3311668
tChristmasRush_KillMonsters[4931] = 3311669
tChristmasRush_KillMonsters[4932] = 3311670
tChristmasRush_KillMonsters[4933] = 3311671
tChristmasRush_KillMonsters[4934] = 3311672


--------------------------------------------逻辑--------------------------------------------
--天石商店
function ChristmasRush_OpenShop(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then 
	LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then 
	LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog(0,nNpcId)
end

--二次确认后招呼怪物
function ChristmasRush_MonsterCall(nItemId)
	local nUserMapId = Get_UserMapId()
	local nPlayerX = Get_UserPositionX()
	local nPlayerY = Get_UserPositionY()
	local nMapId = tChristmasRush_MapXY[1]["MapId"]
	local nMinX = tChristmasRush_MapXY[1]["MapXmin"]
	local nMaxX = tChristmasRush_MapXY[1]["MapXmax"]
	local nMinY = tChristmasRush_MapXY[1]["MapYmin"]
	local nMaxY = tChristmasRush_MapXY[1]["MapYmax"]
	
	local nMapId2 = tChristmasRush_MapXY[2]["MapId"]
	local nMinX2 = tChristmasRush_MapXY[2]["MapXmin"]
	local nMaxX2 = tChristmasRush_MapXY[2]["MapXmax"]
	local nMinY2 = tChristmasRush_MapXY[2]["MapYmin"]
	local nMaxY2 = tChristmasRush_MapXY[2]["MapYmax"]
	
	local nMapId3 = tChristmasRush_MapXY[3]["MapId"]
	local nMinX3 = tChristmasRush_MapXY[3]["MapXmin"]
	local nMaxX3 = tChristmasRush_MapXY[3]["MapXmax"]
	local nMinY3 = tChristmasRush_MapXY[3]["MapYmin"]
	local nMaxY3 = tChristmasRush_MapXY[3]["MapYmax"]
	
	local nMapId4 = tChristmasRush_MapXY[4]["MapId"]
	local nMinX4 = tChristmasRush_MapXY[4]["MapXmin"]
	local nMaxX4 = tChristmasRush_MapXY[4]["MapXmax"]
	local nMinY4 = tChristmasRush_MapXY[4]["MapYmin"]
	local nMaxY4 = tChristmasRush_MapXY[4]["MapYmax"]
	
	local nMapId5 = tChristmasRush_MapXY[5]["MapId"]
	local nMinX5 = tChristmasRush_MapXY[5]["MapXmin"]
	local nMaxX5 = tChristmasRush_MapXY[5]["MapXmax"]
	local nMinY5 = tChristmasRush_MapXY[5]["MapYmin"]
	local nMaxY5 = tChristmasRush_MapXY[5]["MapYmax"]
	
	local nMapId6 = tChristmasRush_MapXY[6]["MapId"]
	local nMapId7 = tChristmasRush_MapXY[7]["MapId"]
	local nMapId8 = tChristmasRush_MapXY[8]["MapId"]
	local nMapId9 = tChristmasRush_MapXY[9]["MapId"]
	local nMapId10 = tChristmasRush_MapXY[10]["MapId"]
	local nMapId11 = tChristmasRush_MapXY[11]["MapId"]
	local nMapId12 = tChristmasRush_MapXY[12]["MapId"]
	local nMapId13 = tChristmasRush_MapXY[13]["MapId"]
	
	local nMapDoc = Get_MapDoc(nUserMapId)
	local nMonsterId = tChristmasRush_Monsters[nItemId]["MonsterId"]
	local GenId = tChristmasRush_Monsters[nItemId]["GenId"]
--判断玩家位置信息
	if nUserMapId == nMapId then 
		if nMinX < nPlayerX and nPlayerX < nMaxX and nMinY < nPlayerY and nPlayerY <nMaxY then 
			User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId2 then 
		if nMinX2 < nPlayerX and nPlayerX < nMaxX2 and nMinY2 < nPlayerY and nPlayerY <nMaxY2 then 
			User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId3 then 
		if nMinX3 < nPlayerX and nPlayerX < nMaxX3 and nMinY3 < nPlayerY and nPlayerY <nMaxY3 then 
			User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId4 then 
		if nMinX4 < nPlayerX and nPlayerX < nMaxX4 and nMinY4 < nPlayerY and nPlayerY <nMaxY4 then 
			User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId5 then 
		if nMinX5 < nPlayerX and nPlayerX < nMaxX5 and nMinY5 < nPlayerY and nPlayerY <nMaxY5 then 
			User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId6 or nUserMapId == nMapId7 or nUserMapId == nMapId8 or nUserMapId == nMapId9 or nUserMapId == nMapId10 or nUserMapId == nMapId11 or nUserMapId == nMapId12 or nUserMapId == nMapId13 then 
		User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
		return
	end 
	
	if nMapDoc == 900000 then 
		User_TalkChannel2005(tChristmasRush_Text["unbelievable"])
		return
	end 
--刷怪
	if Item_ChkItem(nItemId) then 
		if Item_DelItem(nItemId) then
			Monster_AddMonster(nUserMapId,nPlayerX,nPlayerY,GenId,nMonsterId)
		end 
	else
		return
	end
	
end 

--随机奖励礼包开启通用
function ChristmasRush_RandomReward_openPack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nEMoney = tChristmasRush_pack[nItemId][6]["RewardEMoney"]["Value"]
	local nUserEMoney = Get_UserEMoney()
	if nEMoney + nUserEMoney > G_User_MaxEmoney then    ---检查天石（赠）是否达到上限
		User_TalkChannel2005(tChristmasRush_Text["EMoneyMono"])
		return
	end
	local space = RewardTemplate_GetRandomSpace(tChristmasRush_pack,nItemId) -1
	if not User_CheckLeftSpace(space) then
		User_TalkChannel2005(tChristmasRush_Text["TextNoSpace"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--RewardTemplate_NewRandom(tFallPromotion_pack,nItemId)
		local tReward = RewardTemplate_NewRandom(tChristmasRush_pack,nItemId)
		if tReward[1]["tAward"][1]["EmoneyLog"] ~= nil then
			Sys_SaveEmoneyBuy(tReward[1]["tAward"][1]["EmoneyLog"])
		end
	end
	
end

--怪物死亡掉落
function ChristmasRush_KillMonster(nMonsterId)
	local nItemId = tChristmasRush_KillMonsters[nMonsterId]
	local nLogText = "0,0,0,0,12001227,2," .. nItemId .. ",1"
	Monster_SysDropItem(nItemId)
	Sys_SaveActionFestivalLog(nLogText)
	
end 

----------------------------------------Npc模板----------------------------------------------------
--锁妖盒特惠大使
tNpcFace[6402] = 13
tNpcGossip[23559] = tNpcGossip[23559] or DefaultNpc:new{}
tNpcGossip[23559]["OptionHidden"] = 1
tNpcGossip[23559]["DialogueText"] = tChristmasRush_Text[23559]
--活动前
tNpcGossip[23559]["Text1-1"] = {111}
tNpcGossip[23559]["tOption1-1"] = {111}
tNpcGossip[23559]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChristmasRush"]["ActivityTime"])
end
--活动后
tNpcGossip[23559]["Text1-2"] = {121}
tNpcGossip[23559]["tOption1-2"] = {121}
tNpcGossip[23559]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChristmasRush"]["ActivityTime"])
end

--外套特惠大使
tNpcFace[6403] = 35
tNpcGossip[23560] = tNpcGossip[23560] or DefaultNpc:new{}
tNpcGossip[23560]["OptionHidden"] = 1
tNpcGossip[23560]["DialogueText"] = tChristmasRush_Text[23560]
--活动前   
tNpcGossip[23560]["Text1-1"] = {111}
tNpcGossip[23560]["tOption1-1"] = {111}
tNpcGossip[23560]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChristmasRush"]["ActivityTime"])
end
--活动后
tNpcGossip[23560]["Text1-2"] = {121}
tNpcGossip[23560]["tOption1-2"] = {121}
tNpcGossip[23560]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChristmasRush"]["ActivityTime"])
end

--23561,'珍宝销售员
tNpcFace[6404] = 112
tNpcGossip[23561] = tNpcGossip[23561] or DefaultNpc:new{}
tNpcGossip[23561]["OptionHidden"] = 1
tNpcGossip[23561]["DialogueText"] = tChristmasRush_Text[23561]
--活动前   
tNpcGossip[23561]["Text1-1"] = {111}
tNpcGossip[23561]["tOption1-1"] = {111}
tNpcGossip[23561]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end
--活动后
tNpcGossip[23561]["Text1-2"] = {121}
tNpcGossip[23561]["tOption1-2"] = {121}
tNpcGossip[23561]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end

--------------------------------------------物品模板有对白-------------------------

-- 3311659,'L1ChristmasDemonBox'
-- 3311660,'L2ChristmasDemonBox'
-- 3311661,'L3ChristmasDemonBox'
-- 3311662,'L4ChristmasDemonBox'
-- 3311663,'L5ChristmasDemonBox'
-- 3311664,'L6ChristmasDemonBox'
-- 3311665,'L7ChristmasDemonBox'

--一阶金秋锁妖盒
tItemFace[3311659] = 1769
tItem[3311659] = tItem[3311659] or {}
tItem[3311659]["DialogueText"] = tChristmasRush_Text[3311659]
tItem[3311659]["Text1-1"] = {111,112}
tItem[3311659]["tOption1-1"] = {111,112}
tItem[3311659]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311659"
--二阶金秋锁妖盒
tItemFace[3311660] = 1770
tItem[3311660] = tItem[3311660] or {}
tItem[3311660]["DialogueText"] = tChristmasRush_Text[3311660]
tItem[3311660]["Text1-1"] = {111,112}
tItem[3311660]["tOption1-1"] = {111,112}
tItem[3311660]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311660"
--三阶金秋锁妖盒
tItemFace[3311661] = 1771
tItem[3311661] = tItem[3311661] or {}
tItem[3311661]["DialogueText"] = tChristmasRush_Text[3311661]
tItem[3311661]["Text1-1"] = {111,112}
tItem[3311661]["tOption1-1"] = {111,112}
tItem[3311661]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311661"
--四阶金秋锁妖盒
tItemFace[3311662] = 1772
tItem[3311662] = tItem[3311662] or {}
tItem[3311662]["DialogueText"] = tChristmasRush_Text[3311662]
tItem[3311662]["Text1-1"] = {111,112}
tItem[3311662]["tOption1-1"] = {111,112}
tItem[3311662]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311662"
--五阶金秋锁妖盒
tItemFace[3311663] = 1773
tItem[3311663] = tItem[3311663] or {}
tItem[3311663]["DialogueText"] = tChristmasRush_Text[3311663]
tItem[3311663]["Text1-1"] = {111,112}
tItem[3311663]["tOption1-1"] = {111,112}
tItem[3311663]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311663"
--六阶金秋锁妖盒
tItemFace[3311664] = 1774
tItem[3311664] = tItem[3311664] or {}
tItem[3311664]["DialogueText"] = tChristmasRush_Text[3311664]
tItem[3311664]["Text1-1"] = {111,112}
tItem[3311664]["tOption1-1"] = {111,112}
tItem[3311664]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311664"
--七阶金秋锁妖盒
tItemFace[3311665] = 1775
tItem[3311665] = tItem[3311665] or {}
tItem[3311665]["DialogueText"] = tChristmasRush_Text[3311665]
tItem[3311665]["Text1-1"] = {111,112}
tItem[3311665]["tOption1-1"] = {111,112}
tItem[3311665]["OptionFunc111"] = "ChristmasRush_MonsterCall</N>3311665"



-----------------------------------------物品模板无对白--------------------------------------------
-- 3311666,'L1ChristmasPack
-- 3311667,'L2ChristmasPack
-- 3311668,'L3ChristmasPack
-- 3311669,'L4ChristmasPack
-- 3311670,'L5ChristmasPack
-- 3311671,'L6ChristmasPack
-- 3311672,'L7ChristmasPack

tItem[3311666] = tItem[3311666] or {}
tItem[3311666]["Function"] = function(nItemId,sItemName)
	ChristmasRush_RandomReward_openPack(nItemId)
end

tItem[3311667] = tItem[3311666] or {}
tItem[3311668] = tItem[3311666] or {}
tItem[3311669] = tItem[3311666] or {}
tItem[3311670] = tItem[3311666] or {}
tItem[3311671] = tItem[3311666] or {}
tItem[3311672] = tItem[3311666] or {}

tItem[3311681] = tItem[3311681] or {}
tItem[3311681]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tChristmasRush_pack[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tChristmasRush_pack[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tChristmasRush_pack[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tChristmasRush_pack[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
			--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
end

tItem[3311682] = tItem[3311681] or {}
tItem[3311683] = tItem[3311681] or {}
tItem[3311684] = tItem[3311681] or {}
tItem[3311685] = tItem[3311681] or {}
tItem[3311686] = tItem[3311681] or {}
tItem[3311687] = tItem[3311681] or {}
tItem[3311688] = tItem[3311681] or {}
tItem[3311689] = tItem[3311681] or {}
tItem[3311690] = tItem[3311681] or {}
tItem[3311691] = tItem[3311681] or {}
tItem[3311692] = tItem[3311681] or {}
tItem[3311693] = tItem[3311681] or {}
tItem[3311694] = tItem[3311681] or {}
tItem[3311695] = tItem[3311681] or {}
tItem[3311696] = tItem[3311681] or {}
tItem[3311697] = tItem[3311681] or {}
tItem[3311698] = tItem[3311681] or {}
tItem[3311699] = tItem[3311681] or {}
tItem[3311700] = tItem[3311681] or {}
tItem[3311701] = tItem[3311681] or {}

-- 3311673,'BlossomRomance(Charm)PromoBag
-- 3311674,'PokerMaster(Legend)PromoBag',
-- 3311675,'ImmortalRobePromoBag',9,98471
-- 3311676,'AuspiciousCloudPromoBag',9,98
tItem[3311673] = tItem[3311681] or {}
tItem[3320837] = tItem[3311681] or {}
tItem[3311674] = tItem[3311681] or {}
tItem[3311675] = tItem[3311681] or {}
tItem[3311676] = tItem[3311681] or {}
tItem[3320838] = tItem[3311681] or {}

---------------------------------怪物模板------------------------------------
--一阶金秋礼盒怪物掉落
local tChristmasRush_KillMonster = {}
	tChristmasRush_KillMonster[1] = {}
	tChristmasRush_KillMonster[1]["Function"] = ChristmasRush_KillMonster
	tChristmasRush_KillMonster[1]["MonsterId"] = {4928,4929,4930,4931,4932,4933,4934}
table.insert(tMonsterDrop_AreaLoad,tChristmasRush_KillMonster[1])











