------------------------------------------------------------------------------------
--Name:		180823[英文征服][活动脚本]9月促销活动
--Purpose:	9月促销活动
--Creator: 	茅志伟
--Created:	2018/08/23
------------------------------------------------------------------------------------
--命名前缀 tFallPromotion_
--LogId = 12001148
--lua.ini = 40977
local tFallPromotion_pack = {}
--一级金秋锁妖盒
tFallPromotion_pack[3310660] = {}
tFallPromotion_pack[3310660]["ItemChanceSum"] = 100000
--30%万能神纹精粹×4
tFallPromotion_pack[3310660][1] = {}
tFallPromotion_pack[3310660][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][1]["ItemChance"] = 30000
tFallPromotion_pack[3310660][1]["DeleteItem"]= {}
tFallPromotion_pack[3310660][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][1]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][1]["RewardItem"] = {}
tFallPromotion_pack[3310660][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310660][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310660][1]["RewardItem"][1]["Attr"] = "0 4 3"
tFallPromotion_pack[3310660][1]["EmoneyLog"] = "350	21645	0	0	1	"
tFallPromotion_pack[3310660][1]["RewardEffect"] = {}
tFallPromotion_pack[3310660][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][1]["LogId"] = 12001148
--5天石
tFallPromotion_pack[3310660][2] = {}
tFallPromotion_pack[3310660][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][2]["ItemChance"] = 30000
tFallPromotion_pack[3310660][2]["DeleteItem"]= {}
tFallPromotion_pack[3310660][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][2]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310660][2]["RewardEMoney"]["Value"] = 5
tFallPromotion_pack[3310660][2]["EmoneyLog"] = "350	21644	-5	-5	1	"
tFallPromotion_pack[3310660][2]["RewardEffect"] = {}
tFallPromotion_pack[3310660][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][2]["LogId"] = 12001148
--10天石
tFallPromotion_pack[3310660][3] = {}
tFallPromotion_pack[3310660][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][3]["ItemChance"] = 12890
tFallPromotion_pack[3310660][3]["DeleteItem"]= {}
tFallPromotion_pack[3310660][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][3]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310660][3]["RewardEMoney"]["Value"] = 10
tFallPromotion_pack[3310660][3]["EmoneyLog"] = "350	21643	-10	-10	1	"
tFallPromotion_pack[3310660][3]["RewardEffect"] = {}
tFallPromotion_pack[3310660][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][3]["LogId"] = 12001148
--20天石
tFallPromotion_pack[3310660][4] = {}
tFallPromotion_pack[3310660][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][4]["ItemChance"] = 27059
tFallPromotion_pack[3310660][4]["DeleteItem"]= {}
tFallPromotion_pack[3310660][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][4]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310660][4]["RewardEMoney"]["Value"] = 20
tFallPromotion_pack[3310660][4]["EmoneyLog"] = "350	21642	-20	-20	1	"
tFallPromotion_pack[3310660][4]["RewardEffect"] = {}
tFallPromotion_pack[3310660][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][4]["LogId"] = 12001148
--270天石
tFallPromotion_pack[3310660][5] = {}
tFallPromotion_pack[3310660][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][5]["ItemChance"] = 50
tFallPromotion_pack[3310660][5]["DeleteItem"]= {}
tFallPromotion_pack[3310660][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][5]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310660][5]["RewardEMoney"]["Value"] = 270
tFallPromotion_pack[3310660][5]["EmoneyLog"] = "350	21641	-270	-270	1	"
tFallPromotion_pack[3310660][5]["RewardEffect"] = {}
tFallPromotion_pack[3310660][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][5]["LogId"] = 12001148
--1380天石
tFallPromotion_pack[3310660][6] = {}
tFallPromotion_pack[3310660][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310660][6]["ItemChance"] = 1
tFallPromotion_pack[3310660][6]["DeleteItem"]= {}
tFallPromotion_pack[3310660][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310660][6]["DeleteItem"][1]["Id"]= 3310660
tFallPromotion_pack[3310660][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310660][6]["RewardEMoney"]["Value"] = 1380
tFallPromotion_pack[3310660][6]["EmoneyLog"] = "350	21640	-1380	-1380	1	"
tFallPromotion_pack[3310660][6]["RewardEffect"] = {}
tFallPromotion_pack[3310660][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310660][6]["LogId"] = 12001148
--二级金秋锁妖盒
tFallPromotion_pack[3310661] = {}
tFallPromotion_pack[3310661]["ItemChanceSum"] = 100000
--30%万能神纹精粹×20
tFallPromotion_pack[3310661][1] = {}
tFallPromotion_pack[3310661][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][1]["ItemChance"] = 30000
tFallPromotion_pack[3310661][1]["DeleteItem"]= {}
tFallPromotion_pack[3310661][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][1]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][1]["RewardItem"] = {}
tFallPromotion_pack[3310661][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310661][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310661][1]["RewardItem"][1]["Attr"] = "0 20 3"
tFallPromotion_pack[3310661][1]["EmoneyLog"] = "350	21651	0	0	1	"
tFallPromotion_pack[3310661][1]["RewardEffect"] = {}
tFallPromotion_pack[3310661][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][1]["LogId"] = 12001148
--25天石
tFallPromotion_pack[3310661][2] = {}
tFallPromotion_pack[3310661][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][2]["ItemChance"] = 30000
tFallPromotion_pack[3310661][2]["DeleteItem"]= {}
tFallPromotion_pack[3310661][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][2]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310661][2]["RewardEMoney"]["Value"] = 25
tFallPromotion_pack[3310661][2]["EmoneyLog"] = "350	21650	-25	-25	1	"
tFallPromotion_pack[3310661][2]["RewardEffect"] = {}
tFallPromotion_pack[3310661][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][2]["LogId"] = 12001148
--50天石
tFallPromotion_pack[3310661][3] = {}
tFallPromotion_pack[3310661][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][3]["ItemChance"] = 12890
tFallPromotion_pack[3310661][3]["DeleteItem"]= {}
tFallPromotion_pack[3310661][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][3]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310661][3]["RewardEMoney"]["Value"] = 50
tFallPromotion_pack[3310661][3]["EmoneyLog"] = "350	21649	-50	-50	1	"
tFallPromotion_pack[3310661][3]["RewardEffect"] = {}
tFallPromotion_pack[3310661][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][3]["LogId"] = 12001148
--100天石
tFallPromotion_pack[3310661][4] = {}
tFallPromotion_pack[3310661][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][4]["ItemChance"] = 27059
tFallPromotion_pack[3310661][4]["DeleteItem"]= {}
tFallPromotion_pack[3310661][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][4]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310661][4]["RewardEMoney"]["Value"] = 100
tFallPromotion_pack[3310661][4]["EmoneyLog"] = "350	21648	-100	-100	1	"
tFallPromotion_pack[3310661][4]["RewardEffect"] = {}
tFallPromotion_pack[3310661][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][4]["LogId"] = 12001148
--1350天石
tFallPromotion_pack[3310661][5] = {}
tFallPromotion_pack[3310661][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][5]["ItemChance"] = 50
tFallPromotion_pack[3310661][5]["DeleteItem"]= {}
tFallPromotion_pack[3310661][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][5]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310661][5]["RewardEMoney"]["Value"] = 1350
tFallPromotion_pack[3310661][5]["EmoneyLog"] = "350	21647	-1350	-1350	1	"
tFallPromotion_pack[3310661][5]["RewardEffect"] = {}
tFallPromotion_pack[3310661][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][5]["LogId"] = 12001148
--6900天石
tFallPromotion_pack[3310661][6] = {}
tFallPromotion_pack[3310661][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310661][6]["ItemChance"] = 1
tFallPromotion_pack[3310661][6]["DeleteItem"]= {}
tFallPromotion_pack[3310661][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310661][6]["DeleteItem"][1]["Id"]= 3310661
tFallPromotion_pack[3310661][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310661][6]["RewardEMoney"]["Value"] = 6900
tFallPromotion_pack[3310661][6]["EmoneyLog"] = "350	21646	-6900	-6900	1	"
tFallPromotion_pack[3310661][6]["RewardEffect"] = {}
tFallPromotion_pack[3310661][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310661][6]["LogId"] = 12001148
--三级金秋锁妖盒
tFallPromotion_pack[3310662] = {}
tFallPromotion_pack[3310662]["ItemChanceSum"] = 100000
--30%万能神纹精粹×40
tFallPromotion_pack[3310662][1] = {}
tFallPromotion_pack[3310662][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][1]["ItemChance"] = 30000
tFallPromotion_pack[3310662][1]["DeleteItem"]= {}
tFallPromotion_pack[3310662][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][1]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][1]["RewardItem"] = {}
tFallPromotion_pack[3310662][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310662][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310662][1]["RewardItem"][1]["Attr"] = "0 40 3"
tFallPromotion_pack[3310662][1]["EmoneyLog"] = "350	21657	0	0	1	"
tFallPromotion_pack[3310662][1]["RewardEffect"] = {}
tFallPromotion_pack[3310662][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][1]["LogId"] = 12001148
--50天石
tFallPromotion_pack[3310662][2] = {}
tFallPromotion_pack[3310662][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][2]["ItemChance"] = 30000
tFallPromotion_pack[3310662][2]["DeleteItem"]= {}
tFallPromotion_pack[3310662][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][2]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310662][2]["RewardEMoney"]["Value"] = 50
tFallPromotion_pack[3310662][2]["EmoneyLog"] = "350	21656	-50	-50	1	"
tFallPromotion_pack[3310662][2]["RewardEffect"] = {}
tFallPromotion_pack[3310662][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][2]["LogId"] = 12001148
--100天石
tFallPromotion_pack[3310662][3] = {}
tFallPromotion_pack[3310662][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][3]["ItemChance"] = 12890
tFallPromotion_pack[3310662][3]["DeleteItem"]= {}
tFallPromotion_pack[3310662][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][3]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310662][3]["RewardEMoney"]["Value"] = 100
tFallPromotion_pack[3310662][3]["EmoneyLog"] = "350	21655	-100	-100	1	"
tFallPromotion_pack[3310662][3]["RewardEffect"] = {}
tFallPromotion_pack[3310662][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][3]["LogId"] = 12001148
--200天石
tFallPromotion_pack[3310662][4] = {}
tFallPromotion_pack[3310662][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][4]["ItemChance"] = 27059
tFallPromotion_pack[3310662][4]["DeleteItem"]= {}
tFallPromotion_pack[3310662][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][4]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310662][4]["RewardEMoney"]["Value"] = 200
tFallPromotion_pack[3310662][4]["EmoneyLog"] = "350	21654	-200	-200	1	"
tFallPromotion_pack[3310662][4]["RewardEffect"] = {}
tFallPromotion_pack[3310662][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][4]["LogId"] = 12001148
--2700天石
tFallPromotion_pack[3310662][5] = {}
tFallPromotion_pack[3310662][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][5]["ItemChance"] = 50
tFallPromotion_pack[3310662][5]["DeleteItem"]= {}
tFallPromotion_pack[3310662][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][5]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310662][5]["RewardEMoney"]["Value"] = 2700
tFallPromotion_pack[3310662][5]["EmoneyLog"] = "350	21653	-2700	-2700	1	"
tFallPromotion_pack[3310662][5]["RewardEffect"] = {}
tFallPromotion_pack[3310662][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][5]["LogId"] = 12001148
--13800天石
tFallPromotion_pack[3310662][6] = {}
tFallPromotion_pack[3310662][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310662][6]["ItemChance"] = 1
tFallPromotion_pack[3310662][6]["DeleteItem"]= {}
tFallPromotion_pack[3310662][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310662][6]["DeleteItem"][1]["Id"]= 3310662
tFallPromotion_pack[3310662][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310662][6]["RewardEMoney"]["Value"] = 13800
tFallPromotion_pack[3310662][6]["EmoneyLog"] = "350	21652	-13800	-13800	1	"
tFallPromotion_pack[3310662][6]["RewardEffect"] = {}
tFallPromotion_pack[3310662][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310662][6]["LogId"] = 12001148
--四级金秋锁妖盒
tFallPromotion_pack[3310663] = {}
tFallPromotion_pack[3310663]["ItemChanceSum"] = 100000
--30%万能神纹精粹×200
tFallPromotion_pack[3310663][1] = {}
tFallPromotion_pack[3310663][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][1]["ItemChance"] = 30000
tFallPromotion_pack[3310663][1]["DeleteItem"]= {}
tFallPromotion_pack[3310663][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][1]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][1]["RewardItem"] = {}
tFallPromotion_pack[3310663][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310663][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310663][1]["RewardItem"][1]["Attr"] = "0 200 3"
tFallPromotion_pack[3310663][1]["EmoneyLog"] = "350	21663	0	0	1	"
tFallPromotion_pack[3310663][1]["RewardEffect"] = {}
tFallPromotion_pack[3310663][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][1]["LogId"] = 12001148
--250天石
tFallPromotion_pack[3310663][2] = {}
tFallPromotion_pack[3310663][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][2]["ItemChance"] = 30000
tFallPromotion_pack[3310663][2]["DeleteItem"]= {}
tFallPromotion_pack[3310663][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][2]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310663][2]["RewardEMoney"]["Value"] = 250
tFallPromotion_pack[3310663][2]["EmoneyLog"] = "350	21662	-250	-250	1	"
tFallPromotion_pack[3310663][2]["RewardEffect"] = {}
tFallPromotion_pack[3310663][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][2]["LogId"] = 12001148
--500天石
tFallPromotion_pack[3310663][3] = {}
tFallPromotion_pack[3310663][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][3]["ItemChance"] = 12890
tFallPromotion_pack[3310663][3]["DeleteItem"]= {}
tFallPromotion_pack[3310663][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][3]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310663][3]["RewardEMoney"]["Value"] = 500
tFallPromotion_pack[3310663][3]["EmoneyLog"] = "350	21661	-500	-500	1	"
tFallPromotion_pack[3310663][3]["RewardEffect"] = {}
tFallPromotion_pack[3310663][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][3]["LogId"] = 12001148
--1000天石
tFallPromotion_pack[3310663][4] = {}
tFallPromotion_pack[3310663][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][4]["ItemChance"] = 27059
tFallPromotion_pack[3310663][4]["DeleteItem"]= {}
tFallPromotion_pack[3310663][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][4]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310663][4]["RewardEMoney"]["Value"] = 1000
tFallPromotion_pack[3310663][4]["EmoneyLog"] = "350	21660	-1000	-1000	1	"
tFallPromotion_pack[3310663][4]["RewardEffect"] = {}
tFallPromotion_pack[3310663][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][4]["LogId"] = 12001148
--13500天石
tFallPromotion_pack[3310663][5] = {}
tFallPromotion_pack[3310663][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][5]["ItemChance"] = 50
tFallPromotion_pack[3310663][5]["DeleteItem"]= {}
tFallPromotion_pack[3310663][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][5]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310663][5]["RewardEMoney"]["Value"] = 13500
tFallPromotion_pack[3310663][5]["EmoneyLog"] = "350	21659	-13500	-13500	1	"
tFallPromotion_pack[3310663][5]["RewardEffect"] = {}
tFallPromotion_pack[3310663][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][5]["LogId"] = 12001148
--69000天石
tFallPromotion_pack[3310663][6] = {}
tFallPromotion_pack[3310663][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310663][6]["ItemChance"] = 1
tFallPromotion_pack[3310663][6]["DeleteItem"]= {}
tFallPromotion_pack[3310663][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310663][6]["DeleteItem"][1]["Id"]= 3310663
tFallPromotion_pack[3310663][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310663][6]["RewardEMoney"]["Value"] = 69000
tFallPromotion_pack[3310663][6]["EmoneyLog"] = "350	21658	-69000	-69000	1	"
tFallPromotion_pack[3310663][6]["RewardEffect"] = {}
tFallPromotion_pack[3310663][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310663][6]["LogId"] = 12001148
--五级金秋锁妖盒
tFallPromotion_pack[3310664] = {}
tFallPromotion_pack[3310664]["ItemChanceSum"] = 100000
--30%万能神纹精粹×400
tFallPromotion_pack[3310664][1] = {}
tFallPromotion_pack[3310664][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][1]["ItemChance"] = 30000
tFallPromotion_pack[3310664][1]["DeleteItem"]= {}
tFallPromotion_pack[3310664][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][1]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][1]["RewardItem"] = {}
tFallPromotion_pack[3310664][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310664][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310664][1]["RewardItem"][1]["Attr"] = "0 400 3"
tFallPromotion_pack[3310664][1]["EmoneyLog"] = "350	21669	0	0	1	"
tFallPromotion_pack[3310664][1]["RewardEffect"] = {}
tFallPromotion_pack[3310664][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][1]["LogId"] = 12001148
--500天石
tFallPromotion_pack[3310664][2] = {}
tFallPromotion_pack[3310664][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][2]["ItemChance"] = 30000
tFallPromotion_pack[3310664][2]["DeleteItem"]= {}
tFallPromotion_pack[3310664][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][2]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310664][2]["RewardEMoney"]["Value"] = 500
tFallPromotion_pack[3310664][2]["EmoneyLog"] = "350	21668	-500	-500	1	"
tFallPromotion_pack[3310664][2]["RewardEffect"] = {}
tFallPromotion_pack[3310664][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][2]["LogId"] = 12001148
--1000天石
tFallPromotion_pack[3310664][3] = {}
tFallPromotion_pack[3310664][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][3]["ItemChance"] = 12890
tFallPromotion_pack[3310664][3]["DeleteItem"]= {}
tFallPromotion_pack[3310664][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][3]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310664][3]["RewardEMoney"]["Value"] = 1000
tFallPromotion_pack[3310664][3]["EmoneyLog"] = "350	21667	-1000	-1000	1	"
tFallPromotion_pack[3310664][3]["RewardEffect"] = {}
tFallPromotion_pack[3310664][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][3]["LogId"] = 12001148
--2000天石
tFallPromotion_pack[3310664][4] = {}
tFallPromotion_pack[3310664][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][4]["ItemChance"] = 27059
tFallPromotion_pack[3310664][4]["DeleteItem"]= {}
tFallPromotion_pack[3310664][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][4]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310664][4]["RewardEMoney"]["Value"] = 2000
tFallPromotion_pack[3310664][4]["EmoneyLog"] = "350	21666	-2000	-2000	1	"
tFallPromotion_pack[3310664][4]["RewardEffect"] = {}
tFallPromotion_pack[3310664][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][4]["LogId"] = 12001148
--27000天石
tFallPromotion_pack[3310664][5] = {}
tFallPromotion_pack[3310664][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][5]["ItemChance"] = 50
tFallPromotion_pack[3310664][5]["DeleteItem"]= {}
tFallPromotion_pack[3310664][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][5]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310664][5]["RewardEMoney"]["Value"] = 27000
tFallPromotion_pack[3310664][5]["EmoneyLog"] = "350	21665	-27000	-27000	1	"
tFallPromotion_pack[3310664][5]["RewardEffect"] = {}
tFallPromotion_pack[3310664][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][5]["LogId"] = 12001148
--138000天石
tFallPromotion_pack[3310664][6] = {}
tFallPromotion_pack[3310664][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310664][6]["ItemChance"] = 1
tFallPromotion_pack[3310664][6]["DeleteItem"]= {}
tFallPromotion_pack[3310664][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310664][6]["DeleteItem"][1]["Id"]= 3310664
tFallPromotion_pack[3310664][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310664][6]["RewardEMoney"]["Value"] = 138000
tFallPromotion_pack[3310664][6]["EmoneyLog"] = "350	21664	-138000	-138000	1	"
tFallPromotion_pack[3310664][6]["RewardEffect"] = {}
tFallPromotion_pack[3310664][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310664][6]["LogId"] = 12001148
--六级金秋锁妖盒
tFallPromotion_pack[3310665] = {}
tFallPromotion_pack[3310665]["ItemChanceSum"] = 100000
--30%万能神纹精粹×2000
tFallPromotion_pack[3310665][1] = {}
tFallPromotion_pack[3310665][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][1]["ItemChance"] = 30000
tFallPromotion_pack[3310665][1]["DeleteItem"]= {}
tFallPromotion_pack[3310665][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][1]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][1]["RewardItem"] = {}
tFallPromotion_pack[3310665][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310665][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310665][1]["RewardItem"][1]["Attr"] = "0 2000 3"
tFallPromotion_pack[3310665][1]["EmoneyLog"] = "350	21675	0	0	1	"
tFallPromotion_pack[3310665][1]["RewardEffect"] = {}
tFallPromotion_pack[3310665][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][1]["LogId"] = 12001148
--2500天石
tFallPromotion_pack[3310665][2] = {}
tFallPromotion_pack[3310665][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][2]["ItemChance"] = 30000
tFallPromotion_pack[3310665][2]["DeleteItem"]= {}
tFallPromotion_pack[3310665][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][2]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310665][2]["RewardEMoney"]["Value"] = 2500
tFallPromotion_pack[3310665][2]["EmoneyLog"] = "350	21674	-2500	-2500	1	"
tFallPromotion_pack[3310665][2]["RewardEffect"] = {}
tFallPromotion_pack[3310665][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][2]["LogId"] = 12001148
--5000天石
tFallPromotion_pack[3310665][3] = {}
tFallPromotion_pack[3310665][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][3]["ItemChance"] = 12890
tFallPromotion_pack[3310665][3]["DeleteItem"]= {}
tFallPromotion_pack[3310665][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][3]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310665][3]["RewardEMoney"]["Value"] = 5000
tFallPromotion_pack[3310665][3]["EmoneyLog"] = "350	21673	-5000	-5000	1	"
tFallPromotion_pack[3310665][3]["RewardEffect"] = {}
tFallPromotion_pack[3310665][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][3]["LogId"] = 12001148
--10000天石
tFallPromotion_pack[3310665][4] = {}
tFallPromotion_pack[3310665][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][4]["ItemChance"] = 27059
tFallPromotion_pack[3310665][4]["DeleteItem"]= {}
tFallPromotion_pack[3310665][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][4]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310665][4]["RewardEMoney"]["Value"] = 10000
tFallPromotion_pack[3310665][4]["EmoneyLog"] = "350	21672	-10000	-10000	1	"
tFallPromotion_pack[3310665][4]["RewardEffect"] = {}
tFallPromotion_pack[3310665][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][4]["LogId"] = 12001148
--135000天石
tFallPromotion_pack[3310665][5] = {}
tFallPromotion_pack[3310665][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][5]["ItemChance"] = 50
tFallPromotion_pack[3310665][5]["DeleteItem"]= {}
tFallPromotion_pack[3310665][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][5]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310665][5]["RewardEMoney"]["Value"] = 135000
tFallPromotion_pack[3310665][5]["EmoneyLog"] = "350	21671	-135000	-135000	1	"
tFallPromotion_pack[3310665][5]["RewardEffect"] = {}
tFallPromotion_pack[3310665][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][5]["LogId"] = 12001148
--690000天石
tFallPromotion_pack[3310665][6] = {}
tFallPromotion_pack[3310665][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310665][6]["ItemChance"] = 1
tFallPromotion_pack[3310665][6]["DeleteItem"]= {}
tFallPromotion_pack[3310665][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310665][6]["DeleteItem"][1]["Id"]= 3310665
tFallPromotion_pack[3310665][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310665][6]["RewardEMoney"]["Value"] = 690000
tFallPromotion_pack[3310665][6]["EmoneyLog"] = "350	21670	-690000	-690000	1	"
tFallPromotion_pack[3310665][6]["RewardEffect"] = {}
tFallPromotion_pack[3310665][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310665][6]["LogId"] = 12001148
--七级金秋锁妖盒
tFallPromotion_pack[3310666] = {}
tFallPromotion_pack[3310666]["ItemChanceSum"] = 100000
--30%万能神纹精粹×4000
tFallPromotion_pack[3310666][1] = {}
tFallPromotion_pack[3310666][1]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][1]["ItemChance"] = 30000
tFallPromotion_pack[3310666][1]["DeleteItem"]= {}
tFallPromotion_pack[3310666][1]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][1]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][1]["RewardItem"] = {}
tFallPromotion_pack[3310666][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310666][1]["RewardItem"][1]["Id"] = 4060001
tFallPromotion_pack[3310666][1]["RewardItem"][1]["Attr"] = "0 4000 3"
tFallPromotion_pack[3310666][1]["EmoneyLog"] = "350	21681	0	0	1	"
tFallPromotion_pack[3310666][1]["RewardEffect"] = {}
tFallPromotion_pack[3310666][1]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][1]["LogId"] = 12001148
--5000天石
tFallPromotion_pack[3310666][2] = {}
tFallPromotion_pack[3310666][2]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][2]["ItemChance"] = 30000
tFallPromotion_pack[3310666][2]["DeleteItem"]= {}
tFallPromotion_pack[3310666][2]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][2]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][2]["RewardEMoney"] = {}
tFallPromotion_pack[3310666][2]["RewardEMoney"]["Value"] = 5000
tFallPromotion_pack[3310666][2]["EmoneyLog"] = "350	21680	-5000	-5000	1	"
tFallPromotion_pack[3310666][2]["RewardEffect"] = {}
tFallPromotion_pack[3310666][2]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][2]["LogId"] = 12001148
--10000天石
tFallPromotion_pack[3310666][3] = {}
tFallPromotion_pack[3310666][3]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][3]["ItemChance"] = 12890
tFallPromotion_pack[3310666][3]["DeleteItem"]= {}
tFallPromotion_pack[3310666][3]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][3]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][3]["RewardEMoney"] = {}
tFallPromotion_pack[3310666][3]["RewardEMoney"]["Value"] = 10000
tFallPromotion_pack[3310666][3]["EmoneyLog"] = "350	21679	-10000	-10000	1	"
tFallPromotion_pack[3310666][3]["RewardEffect"] = {}
tFallPromotion_pack[3310666][3]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][3]["LogId"] = 12001148
--20000天石
tFallPromotion_pack[3310666][4] = {}
tFallPromotion_pack[3310666][4]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][4]["ItemChance"] = 27059
tFallPromotion_pack[3310666][4]["DeleteItem"]= {}
tFallPromotion_pack[3310666][4]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][4]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][4]["RewardEMoney"] = {}
tFallPromotion_pack[3310666][4]["RewardEMoney"]["Value"] = 20000
tFallPromotion_pack[3310666][4]["EmoneyLog"] = "350	21678	-20000	-20000	1	"
tFallPromotion_pack[3310666][4]["RewardEffect"] = {}
tFallPromotion_pack[3310666][4]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][4]["LogId"] = 12001148
--270000天石
tFallPromotion_pack[3310666][5] = {}
tFallPromotion_pack[3310666][5]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][5]["ItemChance"] = 50
tFallPromotion_pack[3310666][5]["DeleteItem"]= {}
tFallPromotion_pack[3310666][5]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][5]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][5]["RewardEMoney"] = {}
tFallPromotion_pack[3310666][5]["RewardEMoney"]["Value"] = 270000
tFallPromotion_pack[3310666][5]["EmoneyLog"] = "350	21677	-270000	-270000	1	"
tFallPromotion_pack[3310666][5]["RewardEffect"] = {}
tFallPromotion_pack[3310666][5]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][5]["LogId"] = 12001148
--1380000天石
tFallPromotion_pack[3310666][6] = {}
tFallPromotion_pack[3310666][6]["RandomItemChanceType"] = 2
tFallPromotion_pack[3310666][6]["ItemChance"] = 1
tFallPromotion_pack[3310666][6]["DeleteItem"]= {}
tFallPromotion_pack[3310666][6]["DeleteItem"][1]= {}
tFallPromotion_pack[3310666][6]["DeleteItem"][1]["Id"]= 3310666
tFallPromotion_pack[3310666][6]["RewardEMoney"] = {}
tFallPromotion_pack[3310666][6]["RewardEMoney"]["Value"] = 1380000
tFallPromotion_pack[3310666][6]["EmoneyLog"] = "350	21676	-1380000	-1380000	1	"
tFallPromotion_pack[3310666][6]["RewardEffect"] = {}
tFallPromotion_pack[3310666][6]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310666][6]["LogId"] = 12001148

--DreamGarment特惠包
tFallPromotion_pack[3310620] = {}
tFallPromotion_pack[3310620]["RewardItem"] = {}
tFallPromotion_pack[3310620]["RewardItem"][1] = {}
tFallPromotion_pack[3310620]["RewardItem"][1]["Id"] = 188265
tFallPromotion_pack[3310620]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310620]["DeleteItem"]= {}
tFallPromotion_pack[3310620]["DeleteItem"][1]= {}
tFallPromotion_pack[3310620]["DeleteItem"][1]["Id"]= 3310620
tFallPromotion_pack[3310620]["RewardEffect"] = {}
tFallPromotion_pack[3310620]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310620]["LogId"] = 12001148
--LavaCatRobe(Charm)特惠包
tFallPromotion_pack[3310621] = {}
tFallPromotion_pack[3310621]["RewardItem"] = {}
tFallPromotion_pack[3310621]["RewardItem"][1] = {}
tFallPromotion_pack[3310621]["RewardItem"][1]["Id"] = 193555
tFallPromotion_pack[3310621]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310621]["DeleteItem"]= {}
tFallPromotion_pack[3310621]["DeleteItem"][1]= {}
tFallPromotion_pack[3310621]["DeleteItem"][1]["Id"]= 3310621
tFallPromotion_pack[3310621]["RewardEffect"] = {}
tFallPromotion_pack[3310621]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310621]["LogId"] = 12001148
--FlameDance特惠包
tFallPromotion_pack[3310622] = {}
tFallPromotion_pack[3310622]["RewardItem"] = {}
tFallPromotion_pack[3310622]["RewardItem"][1] = {}
tFallPromotion_pack[3310622]["RewardItem"][1]["Id"] = 192785
tFallPromotion_pack[3310622]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310622]["DeleteItem"]= {}
tFallPromotion_pack[3310622]["DeleteItem"][1]= {}
tFallPromotion_pack[3310622]["DeleteItem"][1]["Id"]= 3310622
tFallPromotion_pack[3310622]["RewardEffect"] = {}
tFallPromotion_pack[3310622]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310622]["LogId"] = 12001148
--WindWalk特惠包
tFallPromotion_pack[3310623] = {}
tFallPromotion_pack[3310623]["RewardItem"] = {}
tFallPromotion_pack[3310623]["RewardItem"][1] = {}
tFallPromotion_pack[3310623]["RewardItem"][1]["Id"] = 192605
tFallPromotion_pack[3310623]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310623]["DeleteItem"]= {}
tFallPromotion_pack[3310623]["DeleteItem"][1]= {}
tFallPromotion_pack[3310623]["DeleteItem"][1]["Id"]= 3310623
tFallPromotion_pack[3310623]["RewardEffect"] = {}
tFallPromotion_pack[3310623]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310623]["LogId"] = 12001148
--FoxSpirit(Charm)特惠包
tFallPromotion_pack[3310624] = {}
tFallPromotion_pack[3310624]["RewardItem"] = {}
tFallPromotion_pack[3310624]["RewardItem"][1] = {}
tFallPromotion_pack[3310624]["RewardItem"][1]["Id"] = 194405
tFallPromotion_pack[3310624]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310624]["DeleteItem"]= {}
tFallPromotion_pack[3310624]["DeleteItem"][1]= {}
tFallPromotion_pack[3310624]["DeleteItem"][1]["Id"]= 3310624
tFallPromotion_pack[3310624]["RewardEffect"] = {}
tFallPromotion_pack[3310624]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310624]["LogId"] = 12001148


--新增特惠包非赠
tFallPromotion_pack[3320834] = {}
tFallPromotion_pack[3320834]["RewardItem"] = {}
tFallPromotion_pack[3320834]["RewardItem"][1] = {}
tFallPromotion_pack[3320834]["RewardItem"][1]["Id"] = 192785
tFallPromotion_pack[3320834]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3320834]["DeleteItem"]= {}
tFallPromotion_pack[3320834]["DeleteItem"][1]= {}
tFallPromotion_pack[3320834]["DeleteItem"][1]["Id"]= 3320834
tFallPromotion_pack[3320834]["RewardEffect"] = {}
tFallPromotion_pack[3320834]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3320834]["LogId"] = 12001148
--WindWalk特惠包非赠
tFallPromotion_pack[3320835] = {}
tFallPromotion_pack[3320835]["RewardItem"] = {}
tFallPromotion_pack[3320835]["RewardItem"][1] = {}
tFallPromotion_pack[3320835]["RewardItem"][1]["Id"] = 192605
tFallPromotion_pack[3320835]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3320835]["DeleteItem"]= {}
tFallPromotion_pack[3320835]["DeleteItem"][1]= {}
tFallPromotion_pack[3320835]["DeleteItem"][1]["Id"]= 3320835
tFallPromotion_pack[3320835]["RewardEffect"] = {}
tFallPromotion_pack[3320835]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3320835]["LogId"] = 12001148
--FoxSpirit(Charm)特惠包非赠
tFallPromotion_pack[3320836] = {}
tFallPromotion_pack[3320836]["RewardItem"] = {}
tFallPromotion_pack[3320836]["RewardItem"][1] = {}
tFallPromotion_pack[3320836]["RewardItem"][1]["Id"] = 194405
tFallPromotion_pack[3320836]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3320836]["DeleteItem"]= {}
tFallPromotion_pack[3320836]["DeleteItem"][1]= {}
tFallPromotion_pack[3320836]["DeleteItem"][1]["Id"]= 3320836
tFallPromotion_pack[3320836]["RewardEffect"] = {}
tFallPromotion_pack[3320836]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3320836]["LogId"] = 12001148


--LightningSnake特惠包
tFallPromotion_pack[3310625] = {}
tFallPromotion_pack[3310625]["RewardItem"] = {}
tFallPromotion_pack[3310625]["RewardItem"][1] = {}
tFallPromotion_pack[3310625]["RewardItem"][1]["Id"] = 200471
tFallPromotion_pack[3310625]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310625]["DeleteItem"]= {}
tFallPromotion_pack[3310625]["DeleteItem"][1]= {}
tFallPromotion_pack[3310625]["DeleteItem"][1]["Id"]= 3310625
tFallPromotion_pack[3310625]["RewardEffect"] = {}
tFallPromotion_pack[3310625]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310625]["LogId"] = 12001148
--GeneralCat(Charm)特惠包
tFallPromotion_pack[3310626] = {}
tFallPromotion_pack[3310626]["RewardItem"] = {}
tFallPromotion_pack[3310626]["RewardItem"][1] = {}
tFallPromotion_pack[3310626]["RewardItem"][1]["Id"] = 200543
tFallPromotion_pack[3310626]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310626]["DeleteItem"]= {}
tFallPromotion_pack[3310626]["DeleteItem"][1]= {}
tFallPromotion_pack[3310626]["DeleteItem"][1]["Id"]= 3310626
tFallPromotion_pack[3310626]["RewardEffect"] = {}
tFallPromotion_pack[3310626]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310626]["LogId"] = 12001148
--CelestialFox特惠包
tFallPromotion_pack[3310627] = {}
tFallPromotion_pack[3310627]["RewardItem"] = {}
tFallPromotion_pack[3310627]["RewardItem"][1] = {}
tFallPromotion_pack[3310627]["RewardItem"][1]["Id"] = 200595
tFallPromotion_pack[3310627]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tFallPromotion_pack[3310627]["DeleteItem"]= {}
tFallPromotion_pack[3310627]["DeleteItem"][1]= {}
tFallPromotion_pack[3310627]["DeleteItem"][1]["Id"]= 3310627
tFallPromotion_pack[3310627]["RewardEffect"] = {}
tFallPromotion_pack[3310627]["RewardEffect"]["Effect"] = "angelwing"
tFallPromotion_pack[3310627]["LogId"] = 12001148

-- -- DelicateFoxEars特惠包
	-- tFoxRidingAct_CoatPag[3302451] = {}
	-- -- DelicateFoxEars（男）
	-- tFoxRidingAct_CoatPag[3302451][1] = {}
	-- tFoxRidingAct_CoatPag[3302451][1]["LogId"] = 12000656
	-- tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"] = {}
	-- tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"][1] = {}
	-- tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"][1]["Id"] = 3302451
	-- tFoxRidingAct_CoatPag[3302451][1]["RewardItem"] = {}
	-- tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1] = {}
	-- tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1]["Id"] = 3005977
	-- tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1]["Attr"] = "0 1"
	-- -- DelicateFoxEars（女）
	-- tFoxRidingAct_CoatPag[3302451][2] = {}
	-- tFoxRidingAct_CoatPag[3302451][2]["LogId"] = 12000656
	-- tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"] = {}
	-- tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"][1] = {}
	-- tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"][1]["Id"] = 3302451
	-- tFoxRidingAct_CoatPag[3302451][2]["RewardItem"] = {}
	-- tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1] = {}
	-- tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1]["Id"] = 3005974
	-- tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1]["Attr"] = "0 1"
-- LoveHat特惠包特惠包
tFallPromotion_pack[3310629] = {}
-- LoveHat（男）
tFallPromotion_pack[3310629][1] = {}
tFallPromotion_pack[3310629][1]["LogId"] = 12001148
tFallPromotion_pack[3310629][1]["DeleteItem"] = {}
tFallPromotion_pack[3310629][1]["DeleteItem"][1] = {}
tFallPromotion_pack[3310629][1]["DeleteItem"][1]["Id"] = 3310629
tFallPromotion_pack[3310629][1]["RewardItem"] = {}
tFallPromotion_pack[3310629][1]["RewardItem"][1] = {}
tFallPromotion_pack[3310629][1]["RewardItem"][1]["Id"] = 3005978
tFallPromotion_pack[3310629][1]["RewardItem"][1]["Attr"] = "0 1"
tFallPromotion_pack[3310629][1]["RewardEffect"] = {}
tFallPromotion_pack[3310629][1]["RewardEffect"]["Effect"] = "angelwing"
-- LoveHat（女）
tFallPromotion_pack[3310629][2] = {}
tFallPromotion_pack[3310629][2]["LogId"] = 12001148
tFallPromotion_pack[3310629][2]["DeleteItem"] = {}
tFallPromotion_pack[3310629][2]["DeleteItem"][1] = {}
tFallPromotion_pack[3310629][2]["DeleteItem"][1]["Id"] = 3310629
tFallPromotion_pack[3310629][2]["RewardItem"] = {}
tFallPromotion_pack[3310629][2]["RewardItem"][1] = {}
tFallPromotion_pack[3310629][2]["RewardItem"][1]["Id"] = 3005975
tFallPromotion_pack[3310629][2]["RewardItem"][1]["Attr"] = "0 1"
tFallPromotion_pack[3310629][2]["RewardEffect"] = {}
tFallPromotion_pack[3310629][2]["RewardEffect"]["Effect"] = "angelwing"

local tFallPromotion_Monsters = {}
--一级金秋锁妖盒
tFallPromotion_Monsters[3310613] = {}
tFallPromotion_Monsters[3310613]["MonsterId"] = 3497
tFallPromotion_Monsters[3310613]["GenId"] = 25264
--二级金秋锁妖盒
tFallPromotion_Monsters[3310614] = {}
tFallPromotion_Monsters[3310614]["MonsterId"] = 3498
tFallPromotion_Monsters[3310614]["GenId"] = 25265
--三级金秋锁妖盒
tFallPromotion_Monsters[3310615] = {}
tFallPromotion_Monsters[3310615]["MonsterId"] = 3499
tFallPromotion_Monsters[3310615]["GenId"] = 25266
--四级金秋锁妖盒
tFallPromotion_Monsters[3310616] = {}
tFallPromotion_Monsters[3310616]["MonsterId"] = 3500
tFallPromotion_Monsters[3310616]["GenId"] = 25267
--五级金秋锁妖盒
tFallPromotion_Monsters[3310617] = {}
tFallPromotion_Monsters[3310617]["MonsterId"] = 3501
tFallPromotion_Monsters[3310617]["GenId"] = 25268
--六级金秋锁妖盒
tFallPromotion_Monsters[3310618] = {}
tFallPromotion_Monsters[3310618]["MonsterId"] = 3502
tFallPromotion_Monsters[3310618]["GenId"] = 25269
--七级金秋锁妖盒
tFallPromotion_Monsters[3310619] = {}
tFallPromotion_Monsters[3310619]["MonsterId"] = 3503
tFallPromotion_Monsters[3310619]["GenId"] = 25270


local tFallPromotion_MapXY = {}
tFallPromotion_MapXY[1] = {}
tFallPromotion_MapXY[1]["MapId"] = 1002
tFallPromotion_MapXY[1]["MapXmin"] = 140
tFallPromotion_MapXY[1]["MapXmax"] = 540
tFallPromotion_MapXY[1]["MapYmin"] = 150
tFallPromotion_MapXY[1]["MapYmax"] = 570

tFallPromotion_MapXY[2] = {}
tFallPromotion_MapXY[2]["MapId"] = 1011
tFallPromotion_MapXY[2]["MapXmin"] = 151
tFallPromotion_MapXY[2]["MapXmax"] = 249
tFallPromotion_MapXY[2]["MapYmin"] = 192
tFallPromotion_MapXY[2]["MapYmax"] = 298

tFallPromotion_MapXY[3] = {}
tFallPromotion_MapXY[3]["MapId"] = 1020
tFallPromotion_MapXY[3]["MapXmin"] = 514
tFallPromotion_MapXY[3]["MapXmax"] = 590
tFallPromotion_MapXY[3]["MapYmin"] = 482
tFallPromotion_MapXY[3]["MapYmax"] = 618

tFallPromotion_MapXY[4] = {}
tFallPromotion_MapXY[4]["MapId"] = 1000
tFallPromotion_MapXY[4]["MapXmin"] = 442
tFallPromotion_MapXY[4]["MapXmax"] = 547
tFallPromotion_MapXY[4]["MapYmin"] = 535
tFallPromotion_MapXY[4]["MapYmax"] = 702

tFallPromotion_MapXY[5] = {}
tFallPromotion_MapXY[5]["MapId"] = 1015
tFallPromotion_MapXY[5]["MapXmin"] = 683
tFallPromotion_MapXY[5]["MapXmax"] = 783
tFallPromotion_MapXY[5]["MapYmin"] = 499
tFallPromotion_MapXY[5]["MapYmax"] = 617

tFallPromotion_MapXY[6] = {}
tFallPromotion_MapXY[6]["MapId"] = 1039
tFallPromotion_MapXY[7] = {}
tFallPromotion_MapXY[7]["MapId"] = 1006
tFallPromotion_MapXY[8] = {}
tFallPromotion_MapXY[8]["MapId"] = 1511
tFallPromotion_MapXY[9] = {}
tFallPromotion_MapXY[9]["MapId"] = 1008
tFallPromotion_MapXY[10] = {}
tFallPromotion_MapXY[10]["MapId"] = 1858
tFallPromotion_MapXY[11] = {}
tFallPromotion_MapXY[11]["MapId"] = 3053
tFallPromotion_MapXY[12] = {}
tFallPromotion_MapXY[12]["MapId"] = 1860
tFallPromotion_MapXY[13] = {}
tFallPromotion_MapXY[13]["MapId"] = 1950




local tFallPromotion_KillMonsters = {}
tFallPromotion_KillMonsters[3497] = 3310660
tFallPromotion_KillMonsters[3498] = 3310661
tFallPromotion_KillMonsters[3499] = 3310662
tFallPromotion_KillMonsters[3500] = 3310663
tFallPromotion_KillMonsters[3501] = 3310664
tFallPromotion_KillMonsters[3502] = 3310665
tFallPromotion_KillMonsters[3503] = 3310666


--------------------------------------------逻辑
-- 发型礼包（区分男女）
function FallPromotion_CatEarHair(nItemId)
	-- 没有礼包
	if not Item_ChkItem(nItemId) then 
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	local nSex = Get_UserSex()
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItem(tFallPromotion_pack[nItemId][nSex])
		--User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end
--天石商店
function FallPromotion_OpenShop(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["FallPromotion"]["ActivityTime"]) then 
	LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["FallPromotion"]["ActivityTime"]) then 
	LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog(0,nNpcId)
end
--随机奖励礼包开启通用
function FallPromotion_RandomReward_openPack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nEMoney = tFallPromotion_pack[nItemId][6]["RewardEMoney"]["Value"]
	local nUserEMoney = Get_UserEMoney()
	if nEMoney + nUserEMoney > G_User_MaxEmoney then    ---检查天石（赠）是否达到上限
		User_TalkChannel2005(tFallPromotion_Text["EMoneyMono"])
		return
	end
	local space = RewardTemplate_GetRandomSpace(tFallPromotion_pack,nItemId)
	if not User_CheckLeftSpace(space) then
		User_TalkChannel2005(string.format(tFallPromotion_Text["TextNoSpace"],space))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--RewardTemplate_NewRandom(tFallPromotion_pack,nItemId)
		local tReward = RewardTemplate_NewRandom(tFallPromotion_pack,nItemId)
		if tReward[1]["tAward"][1]["EmoneyLog"] ~= nil then
			Sys_SaveEmoneyBuy(tReward[1]["tAward"][1]["EmoneyLog"])
		end
	end
	
end
--锁妖盒开启
function FallPromotion_MonsterBox(nItemId)
	local nUserMapId = Get_UserMapId()
	local nPlayerX = Get_UserPositionX()
	local nPlayerY = Get_UserPositionY()
	local nMapId = tFallPromotion_MapXY["MapId"]
	local nMinX = tFallPromotion_MapXY["MapXmin"]
	local nMaxX = tFallPromotion_MapXY["MapXmax"]
	local nMinY = tFallPromotion_MapXY["MapYmin"]
	local nMaxY = tFallPromotion_MapXY["MapYmax"]
	
	if nUserMapId == nMapId then 
		if nMinX < nPlayerX < nMaxX and nMinY < nPlayerY <nMaxY then 
		User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
		return
		end 
	end 
end
--二次确认后招呼怪物
function FallPromotion_MonsterCall(nItemId)
	local nUserMapId = Get_UserMapId()
	local nPlayerX = Get_UserPositionX()
	local nPlayerY = Get_UserPositionY()
	local nMapId = tFallPromotion_MapXY[1]["MapId"]
	local nMinX = tFallPromotion_MapXY[1]["MapXmin"]
	local nMaxX = tFallPromotion_MapXY[1]["MapXmax"]
	local nMinY = tFallPromotion_MapXY[1]["MapYmin"]
	local nMaxY = tFallPromotion_MapXY[1]["MapYmax"]
	
	local nMapId2 = tFallPromotion_MapXY[2]["MapId"]
	local nMinX2 = tFallPromotion_MapXY[2]["MapXmin"]
	local nMaxX2 = tFallPromotion_MapXY[2]["MapXmax"]
	local nMinY2 = tFallPromotion_MapXY[2]["MapYmin"]
	local nMaxY2 = tFallPromotion_MapXY[2]["MapYmax"]
	
	local nMapId3 = tFallPromotion_MapXY[3]["MapId"]
	local nMinX3 = tFallPromotion_MapXY[3]["MapXmin"]
	local nMaxX3 = tFallPromotion_MapXY[3]["MapXmax"]
	local nMinY3 = tFallPromotion_MapXY[3]["MapYmin"]
	local nMaxY3 = tFallPromotion_MapXY[3]["MapYmax"]
	
	local nMapId4 = tFallPromotion_MapXY[4]["MapId"]
	local nMinX4 = tFallPromotion_MapXY[4]["MapXmin"]
	local nMaxX4 = tFallPromotion_MapXY[4]["MapXmax"]
	local nMinY4 = tFallPromotion_MapXY[4]["MapYmin"]
	local nMaxY4 = tFallPromotion_MapXY[4]["MapYmax"]
	
	local nMapId5 = tFallPromotion_MapXY[5]["MapId"]
	local nMinX5 = tFallPromotion_MapXY[5]["MapXmin"]
	local nMaxX5 = tFallPromotion_MapXY[5]["MapXmax"]
	local nMinY5 = tFallPromotion_MapXY[5]["MapYmin"]
	local nMaxY5 = tFallPromotion_MapXY[5]["MapYmax"]
	
	local nMapId6 = tFallPromotion_MapXY[6]["MapId"]
	local nMapId7 = tFallPromotion_MapXY[7]["MapId"]
	local nMapId8 = tFallPromotion_MapXY[8]["MapId"]
	local nMapId9 = tFallPromotion_MapXY[9]["MapId"]
	local nMapId10 = tFallPromotion_MapXY[10]["MapId"]
	local nMapId11 = tFallPromotion_MapXY[11]["MapId"]
	local nMapId12 = tFallPromotion_MapXY[12]["MapId"]
	local nMapId13 = tFallPromotion_MapXY[13]["MapId"]
	
	local nMapDoc = Get_MapDoc(nUserMapId)
	local nMonsterId = tFallPromotion_Monsters[nItemId]["MonsterId"]
	local GenId = tFallPromotion_Monsters[nItemId]["GenId"]
--判断玩家位置信息
	if nUserMapId == nMapId then 
		if nMinX < nPlayerX and nPlayerX < nMaxX and nMinY < nPlayerY and nPlayerY <nMaxY then 
			User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId2 then 
		if nMinX2 < nPlayerX and nPlayerX < nMaxX2 and nMinY2 < nPlayerY and nPlayerY <nMaxY2 then 
			User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId3 then 
		if nMinX3 < nPlayerX and nPlayerX < nMaxX3 and nMinY3 < nPlayerY and nPlayerY <nMaxY3 then 
			User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId4 then 
		if nMinX4 < nPlayerX and nPlayerX < nMaxX4 and nMinY4 < nPlayerY and nPlayerY <nMaxY4 then 
			User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId5 then 
		if nMinX5 < nPlayerX and nPlayerX < nMaxX5 and nMinY5 < nPlayerY and nPlayerY <nMaxY5 then 
			User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
			return
		end 
	end 
	
	if nUserMapId == nMapId6 or nUserMapId == nMapId7 or nUserMapId == nMapId8 or nUserMapId == nMapId9 or nUserMapId == nMapId10 or nUserMapId == nMapId11 or nUserMapId == nMapId12 or nUserMapId == nMapId13 then 
		User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
		return
	end 
	
	if nMapDoc == 900000 then 
		User_TalkChannel2005(tFallPromotion_Text["unbelievable"])
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
--怪物死亡掉落
function FallPromotion_KillMonster(nMonsterId)
	local nItemId = tFallPromotion_KillMonsters[nMonsterId]
	local nLogText = "0,0,0,0,12001148,2," .. nItemId .. ",1"
	Monster_SysDropItem(nItemId)
	Sys_SaveActionFestivalLog(nLogText)
	
end 


------------------------------------------Npc模板
----------------------------------------Npc模板
--锁妖盒特惠大使
tNpcFace[6186] = 13
tNpcGossip[23171] = tNpcGossip[23171] or DefaultNpc:new{}
tNpcGossip[23171]["OptionHidden"] = 1
tNpcGossip[23171]["DialogueText"] = tFallPromotion_Text[23171]
--活动前
tNpcGossip[23171]["Text1-1"] = {111}
tNpcGossip[23171]["tOption1-1"] = {111}
tNpcGossip[23171]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["FallPromotion"]["ActivityTime"])
end
--活动后
tNpcGossip[23171]["Text1-2"] = {121}
tNpcGossip[23171]["tOption1-2"] = {121}
tNpcGossip[23171]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["FallPromotion"]["ActivityTime"])
end

--外套特惠大使
tNpcFace[6187] = 35
tNpcGossip[23172] = tNpcGossip[23172] or DefaultNpc:new{}
tNpcGossip[23172]["OptionHidden"] = 1
tNpcGossip[23172]["DialogueText"] = tFallPromotion_Text[23172]
--活动前
tNpcGossip[23172]["Text1-1"] = {111}
tNpcGossip[23172]["tOption1-1"] = {111}
tNpcGossip[23172]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["FallPromotion"]["ActivityTime"])
end
--活动后
tNpcGossip[23172]["Text1-2"] = {121}
tNpcGossip[23172]["tOption1-2"] = {121}
tNpcGossip[23172]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["FallPromotion"]["ActivityTime"])
end
--------------------------------------------
--发型礼包（区分男女）
tItemFace[3310629] = 406
tItem[3310629] = tItem[3310629] or {}
tItem[3310629]["DialogueText"] = tFallPromotion_Text[3310629]
-- 主对白
tItem[3310629]["Text1-1"] = {111}
tItem[3310629]["tOption1-1"] = {111,112}
tItem[3310629]["OptionFunc111"] = "FallPromotion_CatEarHair</N>3310629"
-- 没有外套
tItem[3310629]["Text1-2"] = {121}
tItem[3310629]["tOption1-2"] = {121}
--一阶金秋锁妖盒
tItemFace[3310613] = 1769
tItem[3310613] = tItem[3310613] or {}
tItem[3310613]["DialogueText"] = tFallPromotion_Text[3310613]
tItem[3310613]["Text1-1"] = {111,112}
tItem[3310613]["tOption1-1"] = {111,112}
tItem[3310613]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310613"
--二阶金秋锁妖盒
tItemFace[3310614] = 1770
tItem[3310614] = tItem[3310614] or {}
tItem[3310614]["DialogueText"] = tFallPromotion_Text[3310614]
tItem[3310614]["Text1-1"] = {111,112}
tItem[3310614]["tOption1-1"] = {111,112}
tItem[3310614]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310614"
--三阶金秋锁妖盒
tItemFace[3310615] = 1771
tItem[3310615] = tItem[3310615] or {}
tItem[3310615]["DialogueText"] = tFallPromotion_Text[3310615]
tItem[3310615]["Text1-1"] = {111,112}
tItem[3310615]["tOption1-1"] = {111,112}
tItem[3310615]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310615"
--四阶金秋锁妖盒
tItemFace[3310616] = 1772
tItem[3310616] = tItem[3310616] or {}
tItem[3310616]["DialogueText"] = tFallPromotion_Text[3310616]
tItem[3310616]["Text1-1"] = {111,112}
tItem[3310616]["tOption1-1"] = {111,112}
tItem[3310616]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310616"
--五阶金秋锁妖盒
tItemFace[3310617] = 1773
tItem[3310617] = tItem[3310617] or {}
tItem[3310617]["DialogueText"] = tFallPromotion_Text[3310617]
tItem[3310617]["Text1-1"] = {111,112}
tItem[3310617]["tOption1-1"] = {111,112}
tItem[3310617]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310617"
--六阶金秋锁妖盒
tItemFace[3310618] = 1774
tItem[3310618] = tItem[3310618] or {}
tItem[3310618]["DialogueText"] = tFallPromotion_Text[3310618]
tItem[3310618]["Text1-1"] = {111,112}
tItem[3310618]["tOption1-1"] = {111,112}
tItem[3310618]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310618"
--七阶金秋锁妖盒
tItemFace[3310619] = 1775
tItem[3310619] = tItem[3310619] or {}
tItem[3310619]["DialogueText"] = tFallPromotion_Text[3310619]
tItem[3310619]["Text1-1"] = {111,112}
tItem[3310619]["tOption1-1"] = {111,112}
tItem[3310619]["OptionFunc111"] = "FallPromotion_MonsterCall</N>3310619"



-----------------------------------------物品模板

tItem[3310660] = tItem[3310660] or {}
tItem[3310660]["Function"] = function(nItemId,sItemName)
	FallPromotion_RandomReward_openPack(nItemId)
end

tItem[3310661] = tItem[3310660] or {}
tItem[3310662] = tItem[3310660] or {}
tItem[3310663] = tItem[3310660] or {}
tItem[3310664] = tItem[3310660] or {}
tItem[3310665] = tItem[3310660] or {}
tItem[3310666] = tItem[3310660] or {}

tItem[3310620] = tItem[3310620] or {}
tItem[3310620]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tFallPromotion_pack[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tFallPromotion_pack[nItemId]) then
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
			if RewardTemplate_UseItemAndMsg(tFallPromotion_pack[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		-- 有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tFallPromotion_pack[nItemId])
			-- 给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			-- 若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				-- 给对应的天石
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
tItem[3310621] = tItem[3310620] or {}
tItem[3310622] = tItem[3310620] or {}
tItem[3310623] = tItem[3310620] or {}
tItem[3310624] = tItem[3310620] or {}

tItem[3320834] = tItem[3310620] or {}
tItem[3320835] = tItem[3310620] or {}
tItem[3320836] = tItem[3310620] or {}

tItem[3310625] = tItem[3310620] or {}
tItem[3310626] = tItem[3310620] or {}
tItem[3310627] = tItem[3310620] or {}
---------------------------------怪物模板------------------------------------
--一阶金秋礼盒怪物掉落
local tFallPromotion_KillMonster = {}
	tFallPromotion_KillMonster[1] = {}
	tFallPromotion_KillMonster[1]["Function"] = FallPromotion_KillMonster
	tFallPromotion_KillMonster[1]["MonsterId"] = {3497,3498,3499,3500,3501,3502,3503}
table.insert(tMonsterDrop_AreaLoad,tFallPromotion_KillMonster[1])






-- --一阶金秋礼盒怪物掉落
-- tMonster[3497] = tMonster[3497] or {} 
-- tMonster[3497]["tFunction"] = tMonster[3497]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --二阶金秋礼盒怪物掉落
-- tMonster[3498] = tMonster[3498] or {} 
-- tMonster[3498]["tFunction"] = tMonster[3498]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --三阶金秋礼盒怪物掉落
-- tMonster[3499] = tMonster[3499] or {} 
-- tMonster[3499]["tFunction"] = tMonster[3499]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --四阶金秋礼盒怪物掉落
-- tMonster[3500] = tMonster[3500] or {} 
-- tMonster[3500]["tFunction"] = tMonster[3500]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --五阶金秋礼盒怪物掉落
-- tMonster[3501] = tMonster[3501] or {} 
-- tMonster[3501]["tFunction"] = tMonster[3501]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --六阶金秋礼盒怪物掉落
-- tMonster[3502] = tMonster[3502] or {} 
-- tMonster[3502]["tFunction"] = tMonster[3502]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)
-- --七阶金秋礼盒怪物掉落
-- tMonster[3503] = tMonster[3503] or {} 
-- tMonster[3503]["tFunction"] = tMonster[3503]["tFunction"] or {}
-- table.insert(tMonsterDrop_AreaLoad,FallPromotion_KillMonster)










